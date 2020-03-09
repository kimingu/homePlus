package com.kh.homeplus.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.homeplus.board.model.exception.BoardException;
import com.kh.homeplus.board.model.service.boardService;
import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.board.model.vo.Board_Declaration;
import com.kh.homeplus.board.model.vo.Board_Reply;
import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.common.vo.SearchCondition;
import com.kh.homeplus.member.model.exception.MemberException;
import com.kh.homeplus.member.model.vo.Member;


@Controller
public class BoardController {
	@Autowired
	private boardService bService;
	
	// 커뮤니티 게시판 리스트
	@RequestMapping("boardList.do")
	public ModelAndView boardList(ModelAndView mv,@RequestParam(value="b_category",required=false) String category,@RequestParam(value="curPage", required=false) Integer curPage) { 
		
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<Board> commList = bService.commList(currentPage,category);
		
	    if(commList != null) {
	    	mv.addObject("commList", commList);
	    	mv.addObject("category",category);
			mv.addObject("pi",MemberPagination.getPageInfo());
			mv.setViewName("board/communityBoard");
			
	    }else {
			throw new BoardException("커뮤니티 게시글 목록 조회 실패!!");
		}
		
		return mv;
	}
	
	// 공지사항 게시판 리스트 
	@RequestMapping("noticeList.do")
	public ModelAndView noticeList(ModelAndView mv,@RequestParam(value="b_category",required=false) String category,@RequestParam(value="curPage", required=false) Integer curPage) { 
		
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<Board> noList = bService.noList(currentPage,category);
		
	    if(noList != null) {
	    	mv.addObject("noList", noList);
	    	mv.addObject("category",category);
			mv.addObject("pi",MemberPagination.getPageInfo());
			mv.setViewName("board/noticeBoard");
	    }else {
			throw new BoardException("공지사항,이벤트 게시글 목록 조회 실패!!");
		}
		
		return mv;
	}
	
	// 마켓 게시판 리스트 
	@RequestMapping("marketList.do")
	public ModelAndView marketList(ModelAndView mv,@RequestParam(value="b_category",required=false)String category,@RequestParam(value="curPage",required=false)Integer curPage ) {
		
		int currentPage = curPage != null? curPage:1;
		
		ArrayList<Board> maList = bService.maList(currentPage,category);
		
		if(maList != null) {
			mv.addObject("maList",maList);
			mv.addObject("category",category);
			mv.addObject("pi",MemberPagination.getPageInfo());
			mv.setViewName("board/marketBoard");
		}else {
			throw new BoardException("마켓 게시글 목록 조회 실패!!");
		}
		
		return mv;
	}
	
    // 글작성 폼 
    @RequestMapping("binsertView.do")
   	public String insertBoard() {
       	return "board/boardInsert";
       }
    
    
    // 실시간 채팅 폼
    @RequestMapping("bchattingLogin.do")
    public String chatting() {
    	return "board/chattingLogin";
    }
    
    // 신고창 폼
    @RequestMapping("deInsertView.do")
    public ModelAndView declarationBoard(String b_code,ModelAndView mv) {
    		mv.addObject("b_code",b_code);
    		mv.setViewName("board/declarationBoard");
    	return mv;
    }
    
    // 글수정 폼 
    @RequestMapping("boardUpdateView.do")
    public ModelAndView boardUpdateView(ModelAndView mv,String b_code) {
    	Board b = new Board();
    	b = bService.selectBoardOne(b_code);
    	if(b != null) {
    		mv.addObject("b", b);
    		mv.setViewName("board/boardUpdate");
    	}else {
    		throw new BoardException("게시글 정보 출력에 실패하였습니다.");
    	}
    	
    	return mv;
    }
	
    // 글작성
	@RequestMapping(value="binsert.do")
	public String insertBoard(HttpServletRequest request, @ModelAttribute Board b, @RequestParam(value="uploadFile", required=false) MultipartFile file) {
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");

		b.setM_id(m.getmId());
		//System.out.println(b);
		if(!file.getOriginalFilename().equals("")) {
//			System.out.println("file확인");
//			System.out.println(b.getOrignal_filename());
//			System.out.println(file.getOriginalFilename());
	         String renameFileName = saveFile(file, request);
	         
	         if(renameFileName != null) {
	           b.setOrignal_filename(file.getOriginalFilename());
	           b.setRename_filename(renameFileName);
	           
	         }
	         
	      }
		 
		 int result = bService.insertBoard(b);
		 
		 if(result > 0 && b.getB_name().equals("커뮤니티")) {
			 
			 return "redirect:boardList.do" ; 
			 
		 }else if(result > 0 &&b.getB_name().equals("아파트장터")){
			 return "redirect:marketList.do" ; 
		 }else if(result > 0 &&b.getB_name().equals("공지사항,이벤트")) {
			 return "redirect:noticeList.do" ; 
		 }else {
			 throw new BoardException("실패");
		 }
	}
	
	// 신고 작성
	@RequestMapping("bdInsert.do")
	public String insertDeclaration(HttpServletRequest request,ModelAndView mv, Board_Declaration bd,RedirectAttributes redirect) {
		System.out.println("bd1 : " + bd);
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		 bd.setM_id(m.getmId());
		
		 int result = bService.bdInsert(bd);
		
//		 Board b = new Board();
//		 
//		 b = bService.selectBoardOne(bd.getB_code());
//				 
//		 redirect.addAttribute("b_code", bd.getB_code());
		 
//		 if(result > 0 && b.getB_name().equals("커뮤니티")) {
//			 mv.addObject(b);
//			 return "redirect:communityDetail.do" ; 
//		 }else if(result > 0 &&b.getB_name().equals("아파트장터")){
//			 mv.addObject(b);
//			 return "redirect:maDetail.do" ; 
//		 }else if(result > 0 &&b.getB_name().equals("공지사항,이벤트")) {
//			 mv.addObject(b);
//			 return "redirect:noticeDetail.do" ; 
//		 }else {
//			 throw new BoardException("신고 실패");
//		 }
		 
		 if(result > 0) {
			 return "board/end";
		 }else {
			 throw new BoardException("신고 실패");
		 }
		
	}
	
	// 게시글 삭제
		@RequestMapping("boardDelete.do")
		public String deleteBoard(@ModelAttribute Board b,String b_name,int b_code,HttpServletRequest request) {
			 
			 int result = bService.deleteBoard(b_code);
			 
			 if(result > 0 && b.getB_name().equals("커뮤니티")) {
				 return "redirect:boardList.do" ; 
			 }else if(result > 0 &&b.getB_name().equals("아파트장터")){
				 return "redirect:marketList.do" ; 
			 }else if(result > 0 &&b.getB_name().equals("공지사항,이벤트")) {
				 return "redirect:noticeList.do" ; 
			 }else {
				 throw new BoardException("삭제 실패");
			 }
			
		}
	
	   // 파일저장
	   public String saveFile(MultipartFile file, HttpServletRequest request) {
		      String root = request.getSession().getServletContext().getRealPath("resources");
		      
		      String savePath = root + "/buploadFiles";
		      
		      File folder = new File(savePath);
		      
		      if(!folder.exists()) {
		         folder.mkdir();
		      }
		      
		      
		      // 공지사항의 경우 rename없이 저장
		      // 게시판은 회워들이 업로드 하는 공간이므로 파일명이 겹칠 우려가 있음
		      // rename과정을 걸쳐 저장
		      
		      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		      String originFileName = file.getOriginalFilename();
		      
		      
		      String renameFileName = sdf.format(new java.util.Date()) + "." + originFileName.substring(originFileName.lastIndexOf(".") + 1);
		      String renamePath = folder + "/" + renameFileName;
		      
		      try {
		         file.transferTo(new File(renamePath));
		      } catch (IllegalStateException | IOException e) {
		         //System.out.println("파일 저장 오류 : " + e.getMessage());
		      }
		      
		      return renameFileName;
		   }
	   
	   // 파일 삭제
	   public void deleteFile(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "//nuploadFiles";
			
			File deleteFile = new File(savePath + "//" + fileName);
			
			if(deleteFile.exists()) {
				deleteFile.delete();
			}
			
		}
	   
	// 커뮤니티 검색 
	@RequestMapping("cmmSearch.do")
	public String searchCommunity(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="curPage", required=false) Integer curPage) throws MemberException {		
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
		
//		System.out.println(con);
//		System.out.println(sv);
//		System.out.println(sc);
		
		ArrayList<Board> cmmList = bService.searchCommunity(currentPage, sc);
		
		if(cmmList != null) {
			model.addAttribute("commList", cmmList);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
			System.out.println(cmmList);
		}else {
			throw new BoardException("커뮤니티 검색 실패");
		}
		
		return "board/communityBoard";
	}
	
	// 공지사항 검색
	@RequestMapping("noSearch.do")
	public String searcNotice(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="curPage", required=false) Integer curPage) throws MemberException {		
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
		
		ArrayList<Board> noList = bService.searchNotice(currentPage, sc);
		
		if(noList != null) {
			model.addAttribute("noList", noList);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		
		}else {
			throw new BoardException("커뮤니티 검색 실패");
		}
		
		return "board/noticeBoard";
	}
	
	// 마켓 검색
	@RequestMapping("maSearch.do")
	public String searchMarket(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="curPage", required=false) Integer curPage) throws MemberException {		
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
		
		ArrayList<Board> maList = bService.searchMarket(currentPage, sc);
		
		if(maList != null) {
			model.addAttribute("maList", maList);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		
		}else {
			throw new BoardException("커뮤니티 검색 실패");
		}
		
		return "board/marketBoard";
	}
	
		   
	// 커뮤니티 게시판 디테일
	@RequestMapping("communityDetail.do")
	public ModelAndView communityDetail(ModelAndView mv,int b_code,
			HttpServletRequest request,HttpServletResponse response) {
		
		
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
			 
			  .setViewName("board/boardDetail");
		}else {
			throw new  BoardException("커뮤니티 게시글 상세보기 실패!");
		
		}
		return mv;
	}
	
	// 공지사항 디테일 
	@RequestMapping("noticeDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv,int b_code,
			HttpServletRequest request,HttpServletResponse response) {
		
		
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
		board = bService.noDetail(b_code,flag);
		
		if(board != null) {
			mv.addObject("board",board)
			  .setViewName("board/boardDetail");
			
		}else {
			throw new  BoardException("커뮤니티 게시글 상세보기 실패!");
		
		}
		
		return mv;
	}
	// 마켓 디테일 
	@RequestMapping("maDetail.do")
	public ModelAndView marketDetail(ModelAndView mv,int b_code,
			HttpServletRequest request,HttpServletResponse response) {
		
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
		board = bService.maDetail(b_code,flag);
		
		if(board != null) {
			mv.addObject("board",board)
			  .setViewName("board/boardDetail");
			
		}else {
			throw new  BoardException("커뮤니티 게시글 상세보기 실패!");
		
		}
		
		return mv;
	}
	
	// 게시글 업데이트
	@RequestMapping("boardUpdate.do")
	private String boardUpdate(HttpServletRequest request,ModelAndView mv,@ModelAttribute Board b,RedirectAttributes redirect,
																		  @RequestParam(value="reloadFile",required=false) MultipartFile reloadFile) {
		if(reloadFile != null && !reloadFile.isEmpty()) {
			if(b.getRename_filename()!= null) {
				deleteFile(b.getRename_filename(),request);
			}
			String renameFileName = saveFile(reloadFile,request);
			
			if(renameFileName != null) {
				b.setOrignal_filename(reloadFile.getOriginalFilename());
				b.setRename_filename(renameFileName);
			}
		}
		
		 int result = bService.updateBoard(b);
		
		 redirect.addAttribute("b_code", b.getB_code());
		
		 if(result > 0 && b.getB_name().equals("커뮤니티")) {
			 mv.addObject(b);
			 return "redirect:communityDetail.do" ; 
		 }else if(result > 0 &&b.getB_name().equals("아파트장터")){
			 mv.addObject(b);
			 return "redirect:maDetail.do" ; 
		 }else if(result > 0 &&b.getB_name().equals("공지사항,이벤트")) {
			 mv.addObject(b);
			 return "redirect:noticeDetail.do" ; 
		 }else {
			 throw new BoardException("수정 실패");
		 }
		
	}
	
	// 댓글 추가
	@RequestMapping("addReply.do")
	@ResponseBody
	public String addReply(Board_Reply r, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		r.setM_id(loginUser.getmId());
		int result = bService.insertReply(r);
		// 성공했을 경우 "success"라는 문자열 보내고
		// 실패시 "댓글 등록 실패!" 라는 Exception 발생 시키기
		// jsp에서는 리턴 된 값과 일치 여부 확인 후
		// 작성했던 textarea 비워주기, DB에 잘 들어갔는지 확인하기
		if(result > 0) {
			return "success";
		}else {
			throw new BoardException("댓글 등록실패!");
		}
	}
	// 댓글 리스트 
	@RequestMapping(value="rList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String getReplyList(int b_code, HttpServletResponse response) {
		ArrayList<Board_Reply> rList = bService.selectReplyList(b_code);
		System.out.println(rList);
		// 날짜 관련 포맷을 지정하기 위해 new Gson이 아닌 GsonBuilder() 메소드를 사용
		Gson gson = new GsonBuilder().setDateFormat("MM-dd").create();
		
		// gson을 json으로 바꿔 보내기 떄문에 string 리턴으로 인식 (실제로 스트링값으로 보내줌)
		return gson.toJson(rList);
	}
	
	@RequestMapping("rDelete.do")
	@ResponseBody
	public String deleteReply(int r_code,HttpServletResponse response) {
		
		int result = bService.deleteReply(r_code);
		
		if(result > 0) {
			return "success";
		}else {
			throw new BoardException("삭제 실패");
		}
		
	}
	
	
	
	

}
