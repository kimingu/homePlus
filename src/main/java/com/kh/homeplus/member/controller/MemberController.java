package com.kh.homeplus.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.board.model.exception.BoardException;
import com.kh.homeplus.board.model.service.boardService;
import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.common.vo.SearchCondition;
import com.kh.homeplus.member.model.exception.MemberException;
import com.kh.homeplus.member.model.service.MemberService;
import com.kh.homeplus.member.model.vo.Member;
import com.kh.homeplus.member.model.vo.MemberCost;
import com.kh.homeplus.member.model.vo.MemberMemo;
import com.kh.homeplus.member.model.vo.MemberMessage;
import com.kh.homeplus.member.model.vo.MemberNotice;
import com.kh.homeplus.member.model.vo.MemberReply;
import com.kh.homeplus.member.model.vo.MemberReserve;



@SessionAttributes("loginUser")
@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	
	@Autowired
	private boardService bService;
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
		
	
	// 회원가입(폼)
		@RequestMapping("memberinsert.do")
		public String insertMember() {
			return "member/insertMemberPage";
		}
		// 중복확인(아이디)
		@RequestMapping("dupid.do")
		public ModelAndView idDuplicateCheck(String id, ModelAndView mv) {
			boolean isUsable = mService.checkIdDup(id) == 0 ? true : false;
			Map map = new HashMap();
			map.put("isUsable", isUsable);
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
			return mv;
		}
		//회원가입
		@RequestMapping("minsert.do")
		public String memberInsert(Member m,
								Model model,
								HttpServletRequest request, @RequestParam(value="muploadFile", required=false) MultipartFile file) {
			
			String encPwd = bcryptPasswordEncoder.encode(m.getmPwd());
			
			m.setmPwd(encPwd);
			
			if(!file.getOriginalFilename().equals("")) {
				   String mrenameFileName = saveFile(file, request);
				   
				   if(mrenameFileName != null) {
					   m.setmOriginalFilename(file.getOriginalFilename());
					   m.setmRenameFilename(mrenameFileName);
				   }
			   }
			

			System.out.println(m);
			int result = mService.insertMember(m);
			
			if(result > 0) {
				model.addAttribute("msg", "회원가입이 완료되었습니다.");
				return "login";
			}else {
				throw new MemberException("회원가입 실패!");
			}
		}
		
		// fileRename()
		private String saveFile(MultipartFile file, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			
			String savePath = root + "\\muploadFiles";
			File folder = new File(savePath);
			
			if(!folder.exists()) {
				folder.mkdir();
			}

			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String originFileName = file.getOriginalFilename();
			String renameFileName = sdf.format(new java.util.Date()) + "." + originFileName.substring(originFileName.lastIndexOf(".") + 1);
			
			String renamePath = folder + "\\" + renameFileName;
			
			try {
				file.transferTo(new File(renamePath));
			} catch (Exception e) {
				System.out.println("파일 전송 에러 : " + e.getMessage());
			}
			
			return renameFileName;
		}
		// 로그인
		@RequestMapping(value="mlogin.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String memberLogin(Member m,Model model) { 
			Member loginUser = mService.loginMember(m);
			
			if(loginUser != null && bcryptPasswordEncoder.matches(m.getmPwd(), loginUser.getmPwd())) {
				
				System.out.println(loginUser);
				if(loginUser.getmStatus().contains("J")) {
					model.addAttribute("msg", "가입 심사중인 아이디 입니다. 기다려주세요!");
					return "login";
				}else {
					model.addAttribute("loginUser", loginUser);
					return "userhome";
				}
			}else {
				model.addAttribute("msg", "아이디 또는 비밀번호가 틀렸습니다.");
				return "login";
			}
		}
		
		// 로그아웃
		@RequestMapping("logout.do")
		public String logout(SessionStatus status) {
		
			status.setComplete();

			return "login";
		}
		
		// 비밀번호 찾기(폼)
		@RequestMapping("findmPwd.do")
		public String findmPwd() {
			return "member/findMemberPwd";
		}
		
		// 임시비밀번호 변경
		@RequestMapping("updateMyPwd2.do")
		public String updateMyPwd2(Member m) throws MemberException {
			;
			System.out.println(m);
			String newPwd = bcryptPasswordEncoder.encode(m.getmPwd());
			m.setmPwd(newPwd);
			System.out.println(m);
			int result = mService.updateMyPwd2(m);
			
			if(result < 1) {
				throw new MemberException("비밀번호 변경 실패 에러");
			}else {
				return "";
			}
		}
	

		
		
		
		

	// 20200113 13:00 김상인 작업
	// 마이페이지 이동 
	@RequestMapping("myPage.do")
	public String toMyPage(Model model, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		String mCode = loginUser.getmCode();
		System.out.println(loginUser);
		
		ArrayList<MemberMessage> mmsList = mService.getMyMsg(mCode);
		ArrayList<MemberMemo> mmeList = mService.getMyMemo(mCode);	
		ArrayList<Board> bList = mService.getMyBoard(loginUser.getmId());
		ArrayList<MemberReply> brList = mService.getMyReply(loginUser.getmId());
		ArrayList<MemberReserve> rList = mService.getMyReserveList(mCode);
		ArrayList<BulletinBoard> bbList = mService.getMyQuesList(mCode);
		String memberAddress = mService.getMyAddress(loginUser.getApCode());
		
		
		Date toDay = new Date();
		int myCost = mService.getMyApCost(loginUser, toDay);
		int myNoticeCount = mService.getMyNoticeCount(loginUser);
		
		System.out.println(rList);
		System.out.println(myNoticeCount);
		
		model.addAttribute("mmsList", mmsList);
		model.addAttribute("mmeList", mmeList);
		model.addAttribute("bList", bList);
		model.addAttribute("brList", brList);	
		model.addAttribute("rList", rList);
		model.addAttribute("bbList", bbList);
		model.addAttribute("myCost", myCost);
		model.addAttribute("myNoticeCount", myNoticeCount);
		model.addAttribute("memberAddress", memberAddress);
		
		return "member/myPage";
	}

	// 개인정보 상세 이동
	@RequestMapping("myInfo.do")
	public String toMyInfo() {
		
		return "member/myInfo";
	}
	
	// 개인정보 수정 이동
	@RequestMapping("updateMyInfo.do")
	public String toUpdateMyInfo() {
		
		return "member/updateMyInfoForm";
	}
	
	// 개인정보 수정()
	@RequestMapping("updateMember.do")
	public String updateMember(HttpSession session, Model model, @ModelAttribute Member m, @RequestParam(value="bank", required=false) String bank, @RequestParam(value="account", required=false) String account) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		String userAccount = null;
		if(account != "") {
			userAccount = bank + "/" + account;
		}
		
		
		m.setmAccount(userAccount);
		m.setmCode(loginUser.getmCode());
		m.setmId(loginUser.getmId());
		
		int result = mService.updateMember(m);		
		
		Member updateMember = mService.loginMember(m);
		
		
		String memberAddress = mService.getMyAddress(loginUser.getApCode());
		updateMember.setmAddress(memberAddress + " " + loginUser.getmAddress());
		
		
		
		if(result > 0) {
			model.addAttribute("msg", "개인정보가 수정되었습니다");
			model.addAttribute("loginUser", updateMember);
			
			return "member/myInfo";
		}else {
			throw new MemberException("개인정보 수정 실패");
		}
	}
	
	// 회원삭제
	@RequestMapping("deleteMember.do")
	public String deleteMember(HttpSession session, @RequestParam(value="curPwd") String curPwd) throws MemberException {
		Member m = (Member)session.getAttribute("loginUser");		
		
		if(bcryptPasswordEncoder.matches(curPwd, m.getmPwd())) {
			int result = mService.deleteMember(m.getmCode());
					
				if(result > 0) {
					
					return "login";
				}else {
					throw new MemberException("회원 탈퇴 실패 에러");
				}
				
			}else {
				session.setAttribute("msg", "잘못된 비밀번호입니다");
				return "redirect:updateMyInfo.do";
			}
	}
	
	// 비밀번호 변경
	@RequestMapping("updateMyPwd.do")
	public String updateMyPwd(HttpSession session, @RequestParam(value="changePwd") String changePwd) throws MemberException {
		Member m = (Member)session.getAttribute("loginUser");
		
		String newPwd = bcryptPasswordEncoder.encode(changePwd);
		m.setmPwd(newPwd);
		
		int result = mService.updateMyPwd(m);
		
		if(result < 1) {
			throw new MemberException("비밀번호 변경 실패 에러");
		}else {
			session.setAttribute("msg", "비밀번호가 변경되었습니다");
			return "redirect:myInfo.do";
		}
	}
	
	// 비밀번호 확인
	@RequestMapping(value="pwdCheck.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String pwdCheck(@RequestParam(value="userPwd") String userPwd, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		String curPwd = loginUser.getmPwd();
		
		JSONObject job = new JSONObject();
		
		if(bcryptPasswordEncoder.matches(userPwd, curPwd)) {
			job.put("result", true);
		}
		
		return job.toJSONString();
	}
	
	
	
	// 쪽지 관련
	@RequestMapping("writeMsg.do")
	public String toWriterMsg(HttpSession session, Model model, @RequestParam(value="curPage", required=false) Integer curPage) throws MemberException {
		Member m = (Member)session.getAttribute("loginUser");
		
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<MemberMessage> mmsList = mService.getWriteMsg(m.getmCode(), currentPage);
		
		
		if(mmsList != null) {
			model.addAttribute("msgList", mmsList);		
			model.addAttribute("pi", MemberPagination.getPageInfo());
		}else {
			throw new MemberException("보낸 쪽지 리스트 조회 실패");
		}
		
		return "member/messageWrite";
	}
	
	@RequestMapping("receiveMsg.do")
	public String toReceiveMsg(HttpSession session, Model model, @RequestParam(value="curPage", required=false) Integer curPage) throws MemberException {
		Member m = (Member)session.getAttribute("loginUser");
		
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<MemberMessage> mmsList = mService.getReceiveMsg(m.getmCode(), currentPage);

		
		if(mmsList != null) {
			model.addAttribute("msgList", mmsList);
			model.addAttribute("pi", MemberPagination.getPageInfo());
		}else {
			throw new MemberException("받은 쪽지 리스트 조회 실패");
		}
		
		return "member/messageReceive";
	}
	
	@RequestMapping("searchReceiveMsg.do")
	public String searchReceiveMsg(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="curPage", required=false) Integer curPage) throws MemberException {		
		Member m =(Member)session.getAttribute("loginUser");
		SearchCondition sc = new SearchCondition();
		int currentPage = curPage != null? curPage:1;
		
		if(con.equals("all")) {
			sc.setAll(sv);
		}else if(con.equals("writer")) {
			sc.setWriter(sv);
		}else if(con.equals("title")) {
			sc.setTitle(sv);
		}else {
			sc.setContent(sv);
		}
		
		
		ArrayList<MemberMessage> mmsList = mService.searchReceiveMsg(m.getmCode(),currentPage, sc);
		
		if(mmsList != null) {
			model.addAttribute("msgList", mmsList);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		}else {
			throw new MemberException("받은 쪽지 검색 실패");
		}
		
		return "member/messageReceive";
	}
	
	@RequestMapping("searchWriteMsg.do")
	public String searchWriteMsg(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="curPage", required=false) Integer curPage) throws MemberException {		
		Member m =(Member)session.getAttribute("loginUser");
		SearchCondition sc = new SearchCondition();
		int currentPage = curPage != null? curPage:1;

		if(con.equals("all")) {
			sc.setAll(sv);
		}else if(con.equals("writer")) {
			sc.setWriter(sv);
		}else if(con.equals("title")) {
			sc.setTitle(sv);
		}else {
			sc.setContent(sv);
		}
		
		
		ArrayList<MemberMessage> mmsList = mService.searchWriteMsg(m.getmCode(),currentPage, sc);
		
		if(mmsList != null) {
			model.addAttribute("msgList", mmsList);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		}else {
			throw new MemberException("보낸 쪽지 검색 실패");
		}
		
		return "member/messageWrite";
	}

	
	@RequestMapping("myMemo.do")
	public String toMyMemo(HttpSession session, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		String mCode = loginUser.getmCode();
		
		ArrayList<MemberMemo> list = mService.getMemoList(mCode);		
		
		if(!list.isEmpty()) {
			model.addAttribute("memoList", list);
		
		}else {
			model.addAttribute("msg", "등록된 메모가 없습니다");
		}	

		return "member/myMemo";
	}	
	
	
	
		

		// 200117 김상인 추가
		@RequestMapping(value="insertMyMemo.do")
		public String insertMemo(HttpSession session, @RequestParam(value="memoContent") String memoContent) throws IOException {
			Member loginUser = (Member)session.getAttribute("loginUser");
			String mCode = loginUser.getmCode();
			
			int result =  mService.insertMemo(mCode, memoContent);
			
			
			if(result > 0) {
				return "redirect:myMemo.do";
			}else {
				throw new MemberException("메모 입력 실패");
			}
			
		}
		
		@RequestMapping("deleteMemo.do")
		public String deleteMemo(@RequestParam("mmeCode") String mmeCode) {
			
			int result = mService.deleteMemo(mmeCode);
			
			if(result > 0) {
				return "redirect:myMemo.do";
			}else {
				throw new MemberException("메모 삭제 실패");
			}
		}
		
		@RequestMapping("updateMemo.do")
		public String updateMemo(@ModelAttribute MemberMemo mme) {
					
			int result = mService.updateMemo(mme);
			
			if(result > 0) {
				return "redirect:myMemo.do";
			}else {
				throw new MemberException("메모 수정 실패");
			}
		}
	
		
		// 200117 23:00 김상인 추가
		@RequestMapping("receiveMsgForm.do")
		public String toReceiveMsgForm() {
			
			return "member/receiveMsgForm";
		}
		
		@RequestMapping("checkMember.do")
		public ModelAndView checkMember(ModelAndView mav, @RequestParam(value="mmReceiver") String mmReceiver) {
			
			String receiverCode = mService.chekMember(mmReceiver);
			
			if(receiverCode == null) {
				mav.addObject("result", false);				
			}else {
				mav.addObject("result", true);
				mav.addObject("mmReceiverCode", receiverCode);
			}
			mav.setViewName("jsonView");
			
			return mav;
		}
		
		
		
	// 200118 김상인 추가
	@RequestMapping("insertMsg.do")
	public String insertMsg(@ModelAttribute MemberMessage mms) {
		
		mms.setMmContent(mms.getMmContent().replace("\n", "<br>"));
		mms.setMmContent(mms.getMmContent().replace("<br>", "\n"));
		
		int result = mService.insertMsg(mms);
		
		if(result > 0) {
			return "redirect:writeMsg.do";
		}else {
			throw new MemberException("쪽지 작성 실패");
		}
	}
	
	@RequestMapping("mmsDetail.do")
	public ModelAndView deteilMsg(ModelAndView mav, 
									@RequestParam(value="mmCode") String mmCode, 
									@RequestParam(value="curPage", required=false) Integer curPage, 
									@RequestParam(value="check", required=false) Integer check,
									@RequestParam(value="searchCondition", required=false) String con, 
									@RequestParam(value="searchValue", required=false) String sv) {
		
		MemberMessage mms = mService.getMemberMessage(mmCode);

		mms.setMmContent(mms.getMmContent().replace("\n", "<br>"));
		
		if(curPage == null) {
			curPage = 1;
		}
		if(check == null) {
			check = 0;
		}
		
		if(mms != null) {
			mav.addObject("msgDetail", mms);
			mav.addObject("curPage", curPage);
			mav.addObject("check", check);
			
			if(sv != null) {
				mav.addObject("searchValue", sv);
				mav.addObject("searchCondition", con);
			}
			
			mav.setViewName("member/messageDetail");
			
			
			return mav;
		}else {
			throw new MemberException("쪽지 상세보기 실패");
		}
		
	}
	
	@RequestMapping("deleteMsg.do")
	public String deleteMsg(@RequestParam(value="mmCode") String mmCode, @RequestParam(value="check") int check) {
		int deleteCheck = check;
		if(check == 0) {
			deleteCheck = 1;
		}
		
		int result = mService.deleteMsg(mmCode, deleteCheck);
		
		if(result > 0) {
			if(check == 1) {
				return "redirect:receiveMsg.do";
			}else if(check == 2){
				return "redirect:writeMsg.do";
			}else {
				return "redirect:myPage.do";
			}
		}else {
			throw new MemberException("쪽지 삭제 실패");
		}
	}
	
	
	@RequestMapping("myBoard.do")
	public String myBoardList(HttpSession session, @RequestParam(value="curPage", required=false) Integer curPage, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<Board> bList = mService.getMyBoardList(loginUser.getmId(), currentPage);
		
		if(bList != null) {
			model.addAttribute("bList", bList);				
			model.addAttribute("pi", MemberPagination.getPageInfo());
		}else {
			throw new MemberException("내 게시글 조회 실패");
		}
		

		return "member/myBoard";
	}
	
	@RequestMapping("mySearchBoard.do")
	public String searchMyBoard(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="curPage", required=false) Integer curPage) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		SearchCondition sc = new SearchCondition();
		int currentPage = curPage != null? curPage:1;

		if(con.equals("all")) {
			sc.setAll(sv);
		}else if(con.equals("writer")) {
			sc.setWriter(sv);
		}else if(con.equals("title")) {
			sc.setTitle(sv);
		}else {
			sc.setContent(sv);
		}
		
		ArrayList<Board> bList = mService.searchMyBoard(currentPage, loginUser.getmId(), sc);
		
		if(bList != null) {
			model.addAttribute("bList", bList);				
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		}else {
			throw new MemberException("내 게시글 검색 실패");
		}
		
		return "member/myBoard";
	}
	
	
	@RequestMapping("myBoardDetail.do")
	public ModelAndView communityDetail(ModelAndView mv,int b_code,
			HttpServletRequest request,HttpServletResponse response, Integer check) {
		
		
		Board board = null;
		
		boolean flag = false;
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(Cookie c: cookies) {
				if(c.getName().equals("b_code" + b_code)) {
					flag = true;
				}
			}
		}
		
		if(!flag) {
			Cookie c = new Cookie("b_code"+ b_code,String.valueOf(b_code));
			c.setMaxAge(1*24*60*60);
			response.addCookie(c);
		}
		board = bService.commDetail(b_code,flag);
	
		if(board != null) {				
			mv.addObject("board",board)
				.addObject("check", check)
				.setViewName("board/boardDetail");
			
		}else {
			throw new  BoardException("커뮤니티 게시글 상세보기 실패!");
		
		}
		return mv;
	}
		
	@RequestMapping("myReply.do")
	public String myReplyList(HttpSession session, @RequestParam(value="curPage", required=false) Integer curPage, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<MemberReply> brList = mService.getMyReplyList(loginUser.getmId(), currentPage);
		
		if(brList != null) {
			model.addAttribute("brList", brList);				
			model.addAttribute("pi", MemberPagination.getPageInfo());
		}else {
			throw new MemberException("내 댓글 조회 실패");
		}
		

		return "member/myReply";
	}
	
	@RequestMapping("searchMyReply.do")
	public String searchMyReply(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="curPage", required=false) Integer curPage) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		SearchCondition sc = new SearchCondition();
		int currentPage = curPage != null? curPage:1;
		
		if(con.equals("all")) {
			sc.setAll(sv);
		}else if(con.equals("writer")) {
			sc.setWriter(sv);
		}else if(con.equals("title")) {
			sc.setTitle(sv);
		}else {
			sc.setContent(sv);
		}
		
		ArrayList<MemberReply> brList = mService.searchMyReply(currentPage, loginUser.getmId(), sc);
		
		if(brList != null) {
			model.addAttribute("brList", brList);				
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		}else {
			throw new MemberException("내 댓글 검색 실패");
		}
		
		return "member/myReply";
	}
	
	@RequestMapping("cancelReserve.do")
	@ResponseBody
	public String cancelReserve(HttpSession session, Model model, @RequestBody String param) throws ParseException {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		JSONParser parser = new JSONParser();
		JSONObject job = (JSONObject)parser.parse(param);

		MemberReserve mr = new MemberReserve();
		mr.setCvCode((String)job.get("cvCode"));
		mr.setCvName((String)job.get("cvName"));
		mr.setMrCode((String)job.get("mrCode"));
		
		int result = mService.cancelReserve(mr);
		

		
		if(result > 0) {
			return "true";
		}else {
			return "false";
		}
	}
	
	@RequestMapping("myReserve.do")
	public String myReserve(HttpSession session, @RequestParam(value="curPage", required=false) Integer curPage, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<MemberReserve> mrList = mService.getReserveList(loginUser.getmCode(), currentPage);
		
		if(mrList != null) {
			model.addAttribute("mrList", mrList);
			model.addAttribute("pi", MemberPagination.getPageInfo());				
		}else {				throw new MemberException("시설 이용 내역 조회 실패");
		}
		
		return "member/myReserve";
	}
	
	@RequestMapping("categoryReserve.do")
	public String categoryReserve(HttpSession session, @RequestParam(value="curPage", required=false) Integer curPage, Model model, @RequestParam(value="category") String category) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<MemberReserve> mrList = mService.categoryReserveList(loginUser.getmCode(), currentPage, category);			

		if(mrList != null) {
			model.addAttribute("mrList", mrList);
			model.addAttribute("pi", MemberPagination.getPageInfo());		
			model.addAttribute("category", category);			
		}else {
			throw new MemberException("시설 이용 내역 조회 실패");
		}
	
		return "member/myReserve";
	}
	
	
	@RequestMapping("myQuesDetail.do")
	public String quesDetail(String bbCode, int check, Model model, @RequestParam(value="curPage", required=false) Integer curPage) {
		
		BulletinBoard bb = mService.getQuestion(bbCode);
		int currentPage = curPage != null? curPage:1;
		
		if(bb != null) {
			model.addAttribute("bb", bb);
			model.addAttribute("check", check);
			model.addAttribute("curPage", curPage);
			
			return "member/quesDetail";
		}else {
			throw new MemberException("내 건의 상세보기 실패");
		}
		
	}

	@RequestMapping("myQues.do")
	public String myQuesList(HttpSession session, Model model, @RequestParam(value="curPage", required=false) Integer curPage) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<BulletinBoard> bbList = mService.getQuestionList(loginUser.getmCode(), currentPage);
		
		if(bbList != null) {
			model.addAttribute("bbList", bbList);
			model.addAttribute("pi", MemberPagination.getPageInfo());
		}else {
			throw new MemberException("건의 내역 조회 실패");
		}
		
		return "member/myQues";
	}
	
	@RequestMapping("mySearchQues.do")
	public String searchMyQues(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="curPage", required=false) Integer curPage) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		SearchCondition sc = new SearchCondition();
		int currentPage = curPage != null? curPage:1;
		
		if(con.equals("all")) {
			sc.setAll(sv);
		}else if(con.equals("writer")) {
			sc.setWriter(sv);
		}else if(con.equals("title")) {
			sc.setTitle(sv);
		}else {
			sc.setContent(sv);
		}
		
		ArrayList<MemberReply> bbList = mService.searchMyQues(currentPage, loginUser.getmCode(), sc);
		
		if(bbList != null) {
			model.addAttribute("bbList", bbList);				
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		}else {
			throw new MemberException("내 건의 검색 실패");
		}
		
		return "member/myQues";
	}
	

	@RequestMapping("myCost.do")
	public String myCostPage(HttpSession session, Model model) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<MemberCost> apCostList = mService.getMemberCostList(loginUser);
		
		Date toDay = new Date();
		int myCost = mService.getMyApCost(loginUser, toDay);
		
		model.addAttribute("apCostList", apCostList);
		model.addAttribute("myCost", myCost);
		
		System.out.println(apCostList);
		
		return "member/myCost";
	}
	
	@RequestMapping("myNotice.do")
	public String getMyNotice(HttpSession session, Model model, @RequestParam(value="curPage", required=false) Integer curPage) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<MemberNotice> mnList = mService.getMyNotice(loginUser, currentPage);
		
		if(mnList != null) {
			model.addAttribute("mnList", mnList);
		}else {
			throw new MemberException("알림 리스트 조회 실패");
		}
		
		return "member/myNotice";
	}
	
	@RequestMapping("checkNotice.do")
	public ModelAndView checkNotice(ModelAndView mav, String mncCode) throws ParseException {

		int result = mService.checkNotice(mncCode); 
		
		if(result > 0) {
			mav.addObject("result", true);
		}else {
			mav.addObject("result", false);
		}
		
		mav.setViewName("jsonView");
		
		return mav;
	}		
		
}
