package com.kh.homeplus.master.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.board.model.vo.Board_Declaration;
import com.kh.homeplus.common.Pagination;
import com.kh.homeplus.master.model.exception.MasterException;
import com.kh.homeplus.master.model.service.MasterService;
import com.kh.homeplus.master.model.vo.Apartment;
import com.kh.homeplus.master.model.vo.Apply;
import com.kh.homeplus.master.model.vo.BoardChart;
import com.kh.homeplus.master.model.vo.EnrollCount;
import com.kh.homeplus.master.model.vo.Income;
import com.kh.homeplus.master.model.vo.IncomeMoney;
import com.kh.homeplus.master.model.vo.LookAround;
import com.kh.homeplus.master.model.vo.Master;
import com.kh.homeplus.master.model.vo.MasterMap;
import com.kh.homeplus.master.model.vo.MemberChart;
import com.kh.homeplus.master.model.vo.Message;
import com.kh.homeplus.master.model.vo.PageInfo;
import com.kh.homeplus.master.model.vo.SearchPageInfo;
import com.kh.homeplus.member.model.vo.Member;


@Controller
public class MasterController {

	@Autowired
	private MasterService maService;
	 
	@RequestMapping("master.do")
	public String goMasterLoginPage() {
		return "master/masterLoginPage";
	}
	
	@RequestMapping("masterMain.do")
	public String mainPage(HttpSession session) {
		Master master = (Master) session.getAttribute("loginMaster");
		if(master != null) {
			return "redirect:masterMainPage.do";			
		}else {
			return "master/masterLoginPage";
		}
	}
	
	@RequestMapping(value="masterLogin.do")
	public String goMasterMain(Master m, Model model, HttpSession session) {
		Master loginMaster = maService.loginMaster(m);
		if(loginMaster != null) {			
			session.setAttribute("loginMaster", loginMaster);
			return "redirect:masterMainPage.do";
		}else {
			model.addAttribute("msg", "마스터 로그인의 실패하였습니다.");
			return "master/masterLoginPage";
		}
	}
	
	@RequestMapping("masterMainPage.do")
	public ModelAndView masterMainPage(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Member> memList = maService.mainPageMemList();
		ArrayList<Apply> appList = maService.mainPageAppList();
		int memCount = maService.mainPageMemCount();
		int appCount = maService.mainPageAppCount();
		EnrollCount ec = maService.mainPageEcCount();
		IncomeMoney im = maService.mainPageIncomeMoney();
		int allMember = maService.mainPageAllMemberCount();
		for(int i = 0; i < appList.size(); i++) {
			if(appList.get(i).getAppStatus().equals("J")) {
				appList.get(i).setAppStatus("문의 요청 중");
			}
		}
		for(int i = 0; i < memList.size(); i++) {
			if(memList.get(i).getmStatus().equals("J")) {
				memList.get(i).setmStatus("승인 대기 중");
			}
		}
		
		if(memList != null && appList != null) {
			mv.addObject("appList", appList);
			mv.addObject("memList", memList);
			mv.addObject("appCount", appCount);
			mv.addObject("memCount", memCount);
			mv.addObject("ec", ec);
			mv.addObject("im", im);
			mv.addObject("allMember", allMember);
			mv.setViewName("master/masterMain");
		}else {
			throw new MasterException("목록을 불러오는데 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("masterMap.do")
	public String goMasterMapPage() {
		return "master/masterMap";
	}
	
	@RequestMapping("masterInsertPicture.do")
	public String goPictureInsertPage() {
		return "master/masterInsertPicutre";
	}
	
	@RequestMapping(value="masterchangePicture.do", method=RequestMethod.POST)
	public String changePicture(HttpServletRequest request, Master master, @RequestParam(value="uploadFile") MultipartFile file, HttpSession session) {
		
		if(!file.getOriginalFilename().equals("")) {
			   String renameFileName = saveFile(file, request);
			   
			   if(renameFileName != null) {
				   master.setMaOriginalFilename(file.getOriginalFilename());
				   master.setMaRenameFilename(renameFileName);
			   }
		   }
		   
		   int result = maService.changePicture(master);
		   
		   if(result > 0) {
			   Master loginMaster = maService.loginMaster(master);
			   if(loginMaster != null) {			
					session.setAttribute("loginMaster", loginMaster);
				}
		   }
			return "master/masterInsertPicutre";
	   }

	private String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\maUploadFiles";
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
	
	@RequestMapping("masterLogout.do")
	public String masterLogout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@RequestMapping("masterMessageForm.do")
	public ModelAndView goMessageForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="maName") String maName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setReceiver(maName);
		
		ArrayList<Message> meList = maService.selectReceiveList(pageInfo);;
		for(int i = 0; i < meList.size(); i++) {
			if(meList.get(i).getMeStatus().equals("Y")) {
				meList.get(i).setMeStatus("안 읽음");
			}else {
				meList.get(i).setMeStatus("읽음");
			}
		}

		if(meList != null) {
			mv.addObject("meList", meList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("master/masterMessageForm");
		}else {
			throw new MasterException("메세지 조회를 실패하였습니다");
		}
		return mv;
	}
	
	@RequestMapping("masterSendedForm.do")
	public ModelAndView goSendedForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="maName") String maName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(maName);
		
		ArrayList<Message> meList = maService.selectSendedList(pageInfo);;
		for(int i = 0; i < meList.size(); i++) {
			if(meList.get(i).getMeStatus().equals("Y")) {
				meList.get(i).setMeStatus("안 읽음");
			}else {
				meList.get(i).setMeStatus("읽음");
			}
		}

		if(meList != null) {
			mv.addObject("meList", meList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("master/masterSendedForm");
		}else {
			throw new MasterException("메세지 조회를 실패하였습니다");
		}
		return mv;
	}
	
	@RequestMapping("masterLockerForm.do")
	public ModelAndView goTrashForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="maName") String maName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(maName);
		pageInfo.setReceiver(maName);
		
		ArrayList<Message> meList = maService.selectLockerList(pageInfo);;
		for(int i = 0; i < meList.size(); i++) {
			if(meList.get(i).getMeStatus().equals("Y")) {
				meList.get(i).setMeStatus("안 읽음");
			}else if(meList.get(i).getMeStatus().equals("N")) {
				meList.get(i).setMeStatus("읽음");
			}
		}

		if(meList != null) {
			mv.addObject("meList", meList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("master/masterLockerForm");
		}else {
			throw new MasterException("메세지 조회를 실패하였습니다");
		}
		return mv;
	}
	
	@RequestMapping("masterMsgSendForm")
	public String goWritieForm() {
		return "master/masterWriteForm";
	}
	
	@RequestMapping("messageWrite.do")
	public String writeMessage(Message message, RedirectAttributes redirect) {
		int result = maService.messageWrite(message);
		if(result > 0) {
			redirect.addAttribute("maName", message.getMeWriter()); 
			return "redirect:masterSendedForm.do";
		}else {
			throw new MasterException("메세지 전송을 실패하였습니다.");
		}
	}
	
	
	@RequestMapping("meReceiveDetail.do")
	public ModelAndView messageReceiveDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = maService.messageDetailView(meCode);
		
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("master/masterReceiveDetail");
		}else {
			throw new MasterException("메세지 상세 조회를 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("meSendedDetail.do")
	public ModelAndView messageSendedDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = maService.messageDetailView(meCode);
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("master/masterSendedDetail");
		}else {
			throw new MasterException("메세지 상세조회를 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("meLockDetail.do")
	public ModelAndView messageLockDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = maService.messageDetailView(meCode);
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("master/masterLockerDetail");
		}else {
			throw new MasterException("메시지 상세조회를 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("resendMessage.do")
	public ModelAndView resendMessage(String forWho, ModelAndView mv) {
		mv.addObject("forWho", forWho);
		mv.setViewName("master/resendMessage");
		return mv;
	}
	
	@RequestMapping("messageLock.do")
	public String messageLock(String meReceiver, String meCode, RedirectAttributes redirect) {
		int result = maService.messageLock(meCode);
		if(result > 0) {
			redirect.addAttribute("maName", meReceiver);
			return "redirect:masterLockerForm.do";
		}else {
			throw new MasterException("메세지 보관에 실패하였습니다.");
		}
	}
	
	@RequestMapping("messageDelete.do")
	public String messageDelete(String meReceiver, String meCode, RedirectAttributes redirect) {
		int result = maService.messageDelete(meCode);
		if(result > 0) {
			redirect.addAttribute("maName", meReceiver);
			return "redirect:masterMessageForm.do";
		}else {
			throw new MasterException("메세지 삭제에 실패하였습니다.");
		}
	}
	
	@RequestMapping("messageCancelLock.do")
	public String messageCancelLock(String meReceiver, String meCode, RedirectAttributes redirect) {
		int result = maService.messageCancelLock(meCode);
		if(result > 0) {
			redirect.addAttribute("maName", meReceiver);
			return "redirect:masterMessageForm.do";
		}else {
			throw new MasterException("메세지 보관 취소에 실패하였습니다.");
		}
	}
	
	@RequestMapping("messageReceiveSearch.do")
	public ModelAndView messageReceiveSearch(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, String category, String keyword, String maName) {
		SearchPageInfo pageInfo = new SearchPageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setReceiver(maName);
		pageInfo.setKeyword(keyword);
		pageInfo.setCategory(category);
		ArrayList<Message> meList = maService.messageReceiveSearch(pageInfo);;

		for(int i = 0; i < meList.size(); i++) {
			if(meList.get(i).getMeStatus().equals("Y")) {
				meList.get(i).setMeStatus("안 읽음");
			}else {
				meList.get(i).setMeStatus("읽음");
			}
		}
		if(meList != null) {
			mv.addObject("keyword", keyword);
			mv.addObject("category", category);
			mv.addObject("meList", meList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("master/masterMessageForm");
		}else {
			throw new MasterException("메세지 조회를 실패하였습니다");
		}
		return mv;
	}
	
	@RequestMapping("messageSendedSearch.do")
	public ModelAndView messageSendedSearch(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, String category, String keyword, String maName) {
		SearchPageInfo pageInfo = new SearchPageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(maName);
		pageInfo.setKeyword(keyword);
		pageInfo.setCategory(category);
		ArrayList<Message> meList = maService.messageSendedSearch(pageInfo);
		for(int i = 0; i < meList.size(); i++) {
			if(meList.get(i).getMeStatus().equals("Y")) {
				meList.get(i).setMeStatus("안 읽음");
			}else {
				meList.get(i).setMeStatus("읽음");
			}
		}
		if(meList != null) {
			mv.addObject("keyword", keyword);
			mv.addObject("category", category);
			mv.addObject("meList", meList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("master/masterSendedForm");
		}else {
			throw new MasterException("메세지 조회를 실패하였습니다");
		}
		return mv;
	}
	
	@RequestMapping("messageLockerSearch.do")
	public ModelAndView messageLockerSearch(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, String category, String keyword, String maName) {
		SearchPageInfo pageInfo = new SearchPageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(maName);
		pageInfo.setKeyword(keyword);
		pageInfo.setCategory(category);
		ArrayList<Message> meList = maService.messageLockerSearch(pageInfo);
		for(int i = 0; i < meList.size(); i++) {
			if(meList.get(i).getMeStatus().equals("Y")) {
				meList.get(i).setMeStatus("안 읽음");
			}else {
				meList.get(i).setMeStatus("읽음");
			}
		}
		if(meList != null) {
			mv.addObject("keyword", keyword);
			mv.addObject("category", category);
			mv.addObject("meList", meList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("master/masterLockerForm");
		}else {
			throw new MasterException("메세지 조회를 실패하였습니다");
		}
		return mv;
	}
	
	@RequestMapping("userInsertCheck.do")
	public ModelAndView goUserInsertCheck(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Member> mcList = maService.selectUserCheckList();
		ArrayList<Member> mfList = maService.selectUserFailList();
		
		for(int i = 0; i < mcList.size(); i++) {
			if(mcList.get(i).getmStatus().equals("J")) {
				mcList.get(i).setmStatus("승인 대기 중");
			}
		}
		for(int i = 0; i < mfList.size(); i++) {
			if(mfList.get(i).getmStatus().equals("F")) {
				mfList.get(i).setmStatus("승인 거절");
			}
		}
		
		
		if(mcList != null && mfList != null) {
			mv.addObject("mcList", mcList);
			mv.addObject("mfList", mfList);
			mv.setViewName("master/userJoinCheck");
		}else {
			throw new MasterException("승인요청된 입주자리스트 출력에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("deleteFailList.do")
	public String deleteFailList(String mCode, RedirectAttributes redirect) {
		int result = maService.deleteFailList(mCode);
		if(result > 0) {
			redirect.addAttribute("mCode", mCode);
			return "redirect:userCheckDetail.do";
		}else {
			throw new MasterException("거절된 회원을 목록에서 제거하는데 실패하였습니다.");
		}
	}
	
	@RequestMapping("userCheckDetail.do")
	public ModelAndView userCheckDetail(ModelAndView mv, String mCode, HttpServletRequest request, HttpServletResponse response) {
		Member m = maService.userCheckDetail(mCode);
		if(m != null) {
			mv.addObject("m", m);
			mv.setViewName("master/userCheckDetail");
		}else{
			throw new MasterException("회원 정보 출력에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("userJoinOk.do")
	public String userJoinOk(String mCode, RedirectAttributes redirect) {
		int result = maService.userJoinOk(mCode);
		if(result > 0) {
			redirect.addAttribute("mCode", mCode);
			return "redirect:userCheckDetail.do";
		}else {
			throw new MasterException("회원가입 승인에 실패하였습니다.");
		}
	}
	
	@RequestMapping("userJoinFail.do")
	public String userJoinFail(String mCode, RedirectAttributes redirect) {
		int result = maService.userJoinFail(mCode);
		if(result > 0) {
			redirect.addAttribute("mCode", mCode);
			return "redirect:userCheckDetail.do";
		}else {
			throw new MasterException("회원가입 거절에 실패하였습니다.");
		}
	}
	
	@RequestMapping("masterChangeYoutube.do")
	public ModelAndView goChangeYoutubeForm(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		LookAround la = maService.selectLookAround();
		if(la != null) {
			mv.addObject("la", la);
			mv.setViewName("master/masterChangeYoutube");
		}else {
			throw new MasterException("둘러보기 정보를 불러오는데에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("masterUpdateYoutube.do")
	public String updateYoutube(String newAddress) {
		int result = maService.updateYoutube(newAddress);
		if(result > 0) {
			return "redirect:intro.do";
		}else {
			throw new MasterException("광고 영상 변경에 실패하였습니다.");
		}
	}
	
	@RequestMapping("masterChangeLaPicture.do")
	public ModelAndView goChangePictureForm(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		LookAround la = maService.selectLookAround();
		if(la != null) {
			mv.addObject("la", la);
			mv.setViewName("master/masterChangePicture");
		}
		return mv;
	}
	
	@RequestMapping("masterChangeLaPicture2.do")
	public ModelAndView goChangePictureForm2(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		LookAround la = maService.selectLookAround();
		if(la != null) {
			mv.addObject("la", la);
			mv.setViewName("master/masterChangePicture2");
		}
		return mv;
	}
	
	@RequestMapping(value="masterUpdateLaPicture.do", method=RequestMethod.POST)
	public String updateLaPicture(HttpServletRequest request, LookAround la, @RequestParam(value="uploadFile") MultipartFile file, HttpSession session) {
		if(!file.getOriginalFilename().equals("")) {
			   String renameFileName = saveFile(file, request);
			   if(renameFileName != null) {
				   la.setLaPicture1(renameFileName);
			   }
		   }
		   
		   int result = maService.changeLaPicture(la);
		   if(result > 0) {
			   return "redirect:intro.do";
		   }else {
				throw new MasterException("광고 이미지 변경에 실패하였습니다.");
			}
		}
	
	@RequestMapping(value="masterUpdateLaPicture2.do", method=RequestMethod.POST)
	public String updateLaPicture2(HttpServletRequest request, LookAround la, @RequestParam(value="uploadFile") MultipartFile file, HttpSession session) {
		if(!file.getOriginalFilename().equals("")) {
			   String renameFileName = saveFile(file, request);
			   if(renameFileName != null) {
				   la.setLaPicture2(renameFileName);
			   }
		   }
		   
		   int result = maService.changeLaPicture2(la);
		   if(result > 0) {
			   return "redirect:intro.do";
		   }else {
				throw new MasterException("광고 이미지 변경에 실패하였습니다.");
			}
		}
	
	@RequestMapping("masterMapChange.do")
	public ModelAndView masterMapChange(String mmName, ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		MasterMap mm = new MasterMap();
		mm = maService.masterMapChange(mmName);
		if(mm != null) {
			mv.addObject("mm", mm);
			mv.setViewName("master/masterMapChange");
		}else {
			throw new MasterException("카카오 맵 좌표를 뽑아오는데 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("masterApply.do")
	public String masterApply(Apply apply) {
		int result = maService.masterApply(apply);
		if(result > 0) {
			return "intro/introduce";
		}else {
			throw new MasterException("문의요청에 실패하였습니다.");
		}
	}
	
	@RequestMapping("masterApplyList.do")
	public ModelAndView masterApply(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Apply> appYList = maService.masterApplyYList();
		ArrayList<Apply> appNList = maService.masterApplyNList();
		for(int i = 0; i < appYList.size(); i++) {
			if(appYList.get(i).getAppStatus().equals("J")) {
				appYList.get(i).setAppStatus("문의 요청 중");
			}
		}
		for(int i = 0; i < appNList.size(); i++) {
			if(appNList.get(i).getAppStatus().equals("N")) {
				appNList.get(i).setAppStatus("문의 거절");
			}
		}
		

		if(appYList != null && appNList != null) {
			mv.addObject("appYList", appYList);
			mv.addObject("appNList", appNList);
			mv.setViewName("master/masterApplyList");
		}else {
			throw new MasterException("문의요청 내역을 불러오는데 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("deleteApplyNList.do")
	public String deleteApplyNList(String appCode) {
		int result = maService.deleteApplyNList(appCode);
		if(result > 0) {
			
			return "redirect:masterApplyList.do";
		}else {
			throw new MasterException("거절된 요청을 삭제하는데 실패하였습니다.");
		}
	}
	
	@RequestMapping("selectOneApplyY.do")
	public ModelAndView goApplyDetail(String appCode, ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		Apply app = new Apply();
		app = maService.selectOneApplyY(appCode);
		if(app != null) {
			mv.addObject("app", app);
			mv.setViewName("master/masterApplyDetail");
		}else {
			throw new MasterException("요청의 상세정보를 불러오는데에 실패하였습니다.");
		}
		
		return mv;
	}
	
	@RequestMapping("applyOk.do")
	public String applyOk(String appCode) {
		int result = maService.applyOk(appCode);
		if(result > 0) {
			return "redirect:masterApplyList.do";
		}else {
			throw new MasterException("요청처리에 실패하였습니다.");
		}
	}
	
	@RequestMapping("applyNo.do")
	public String applyNo(String appCode) {
		int result = maService.applyNo(appCode);
		if(result > 0) {
			return "redirect:masterApplyList.do";
		}else {
			throw new MasterException("요청처리에 실패하였습니다.");
		}	
	}
	
	@RequestMapping("adminInsertCheck.do")
	public ModelAndView adminInsertCheck(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Admin> adYList = maService.selectAdminYList();
		ArrayList<Admin> adNList = maService.selectAdminNList();
		for(int i = 0; i < adYList.size(); i++) {
			if(adYList.get(i).getaStatus().equals("J")) {
				adYList.get(i).setaStatus("승인 대기 중");
			}
		}
		for(int i = 0; i < adNList.size(); i++) {
			if(adNList.get(i).getaStatus().equals("F")) {
				adNList.get(i).setaStatus("승인 거절");
			}
		}
		if(adYList != null && adNList != null) {
			mv.addObject("adYList", adYList);
			mv.addObject("adNList", adNList);
			mv.setViewName("master/masterAdminList");
		}else {
			throw new MasterException("가입 요청된 관리자 리스트 출력에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("deleteAdminNList.do")
	public String deleteAdminNList(String aCode, RedirectAttributes redirect) {
		int result = maService.deleteAdminNList(aCode);
		if(result > 0) {
			redirect.addAttribute("aCode", aCode);
			return "redirect:selectOneAdminY.do";
		}else {
			throw new MasterException("거절된 요청을 목록에서 제거하는데 실패하였습니다.");
		}
	}
	
	@RequestMapping("selectOneAdminY.do")
	public ModelAndView selectOneAdmin(String aCode, ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		Admin admin = new Admin();
		admin = maService.selectOneAdmin(aCode);
		if(admin != null) {
			mv.addObject("a", admin);
			mv.setViewName("master/masterAdminDetail");
		}else {
			throw new MasterException("관리자 세부정보를 뽑아오는데 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("adminJoinOk.do")
	public String adminJoinOk(String aCode, RedirectAttributes redirect) {
		int result = maService.adminJoinOk(aCode);
		if(result > 0) {
			redirect.addAttribute("aCode", aCode);
			return "redirect:selectOneAdminY.do";
		}else {
			throw new MasterException("요청 처리에 실패하였습니다.");
		}
	}
	
	@RequestMapping("adminJoinNo.do")
	public String adminJoinNo(String aCode, RedirectAttributes redirect) {
		int result = maService.adminJoinNo(aCode);
		if(result > 0) {
			redirect.addAttribute("aCode", aCode);
			return "redirect:selectOneAdminY.do";
		}else {
			throw new MasterException("요청 처리에 실패하였습니다.");
		}
	}
	
	@RequestMapping("goApartmentInsertForm.do")
	public String goApartmentInsertForm() {
		return "master/apartmentInsertForm";
	}
	
	@RequestMapping("apartmentInsert.do")
	public String apartmentInsert(Apartment apt, String apAddress1, String apAddress2) {
		String apAddress = apAddress1 + " " + apAddress2;
		apt.setApAddress(apAddress);
		int result = maService.apartmentInsert(apt);
		if(result > 0) {
			return "redirect:masterMainPage.do";
		}else {
			throw new MasterException("아파트 등록에 실패하였습니다.");
		}
	}
	
	@RequestMapping("apartmentList.do")
	public ModelAndView apartmentList(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Apartment> aptList = maService.apartmentList();
		if(aptList != null) {
			mv.addObject("aptList", aptList);
			mv.setViewName("master/apartmentList");
		}else {
			throw new MasterException("아파트 목록을 출력하는데 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("deleteApt.do")
	public String deleteApt(String apCode) {
		int result = maService.deleteApt(apCode);
		if(result > 0) {
			return "redirect:apartmentList.do";
		}else {
			throw new MasterException("아파트 삭제에 실패하였습니다.");
		}
	}
	
	@RequestMapping("incomeChart.do")
	public ModelAndView IncomeChart(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		IncomeMoney im = maService.mainPageIncomeMoney();
		ArrayList<Income> icList = maService.IncomeAllList();
		mv.addObject("im", im);
		mv.addObject("icList", icList);
		mv.setViewName("master/incomeChart");
		return mv;
	}
	
	@RequestMapping("boardChart.do")
	public ModelAndView boardChart(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		BoardChart bc = maService.boardChart();
		ArrayList<Board> bList = maService.boardAllList();
		mv.setViewName("master/boardChart");
		mv.addObject("bList", bList);
		mv.addObject("bc", bc);
		mv.setViewName("master/boardChart");
		return mv;
	}
	
	@RequestMapping("memberChart.do")
	public ModelAndView memberChart(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		MemberChart mc = maService.memberChart();
		ArrayList<Member> mList = maService.memberAllList();
		ArrayList<Admin> aList = maService.adminAllList();
		mv.addObject("mList", mList);
		mv.addObject("aList", aList);
		mv.addObject("mc", mc);
		mv.setViewName("master/memberChart");
		return mv;
	}
	
	@RequestMapping("adminManage.do")
	public ModelAndView adminManageForm(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Admin> aList = maService.adminAllList();
		for(int i = 0; i < aList.size(); i++) {
			if(aList.get(i).getaStatus().equals("Y")) {
				aList.get(i).setaStatus("활동 중 회원");
			}else if(aList.get(i).getaStatus().equals("J")) {
				aList.get(i).setaStatus("가입 요청 중");
			}else if(aList.get(i).getaStatus().equals("N")) {
				aList.get(i).setaStatus("탈퇴한 회원");
			}else if(aList.get(i).getaStatus().equals("B")) {
				aList.get(i).setaStatus("정지 중 회원");
			}else if(aList.get(i).getaStatus().equals("F")) {
				aList.get(i).setaStatus("가입 거절된 회원");
			}else if(aList.get(i).getaStatus().equals("X")) {
				aList.get(i).setaStatus("삭제된 회원");
			}
		}
		if(aList != null) {
			mv.addObject("aList", aList);
			mv.setViewName("master/adminManageForm");
		}else {
			throw new MasterException("관리자 정보를 출력하는데 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("memberManage.do")
	public ModelAndView memberManageForm(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		/*
			(ADMIN, MEMBER 테이블 STATUS 값 설명)
			J => 가입 요청 중
			Y => 가입 승인 / 활동 중 회원
			F => 가입 거절된 회원
			N => 탈퇴한 회원
			B => 블랙리스트 / 정지된 회원
			X => 가업 거절되어 목록에서 삭제된 회원
			
			(APPLY 테이블 STATUS 값 설명)
			J => 문의 요청 접수 중(미해결)
			O => 문의 요청 완료
			N => 문의 요청 거절 
		 */
		ArrayList<Member> mList = maService.memberAllList();
		for(int i = 0; i < mList.size(); i++) {
			if(mList.get(i).getmStatus().equals("Y")) {
				mList.get(i).setmStatus("활동 중 회원");
			}else if(mList.get(i).getmStatus().equals("J")) {
				mList.get(i).setmStatus("가입 요청 중");
			}else if(mList.get(i).getmStatus().equals("N")) {
				mList.get(i).setmStatus("탈퇴한 회원");
			}else if(mList.get(i).getmStatus().equals("B")) {
				mList.get(i).setmStatus("정지 중 회원");
			}else if(mList.get(i).getmStatus().equals("F")) {
				mList.get(i).setmStatus("가입 거절된 회원");
			}else if(mList.get(i).getmStatus().equals("X")) {
				mList.get(i).setmStatus("삭제된 회원");
			}
		}
		if(mList != null) {
			mv.addObject("mList", mList);
			mv.setViewName("master/memberManageForm");
		}else {
			throw new MasterException("유저 정보를 출력하는데 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("userManageStop.do")
	public String userManageStrop(String mCode, RedirectAttributes redirect) {
		int result = maService.userManageStop(mCode);
		if(result > 0) {
			redirect.addAttribute("mCode", mCode);
			return "redirect:userCheckDetail.do";
		}else {
			throw new MasterException("정지 처리에 실패하였습니다.");
		}
	}
	
	@RequestMapping("adminManageStop.do")
	public String adminManageStrop(String aCode, RedirectAttributes redirect) {
		int result = maService.adminManageStop(aCode);
		if(result > 0) {
			redirect.addAttribute("aCode", aCode);
			return "redirect:selectOneAdminY.do";
		}else {
			throw new MasterException("정지 처리에 실패하였습니다.");
		}
	}
	
	@RequestMapping("masterSendMail.do")
	public ModelAndView masterSendMail(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		mv.setViewName("master/masterSendMailForm");
		return mv;
	}
	
	@RequestMapping("masterCalendar.do")
	public ModelAndView masterCalendar(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		mv.setViewName("master/masterCalendar");
		return mv;
	}

	
	@RequestMapping("masterChooseMail.do")	
	public ModelAndView masterChooseMail(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		mv.setViewName("master/masterChooseMail");
		return mv;
	}
	
	@RequestMapping("masterCalendarSave.do")
	public ModelAndView masterCalendarSave(ModelAndView mv) {
		return mv;
	}
	
	@RequestMapping("masterReceiverList.do")
	public ModelAndView masterReceiverList(ModelAndView mv) {
		ArrayList<Member> mList = maService.selectAllMember();
		mv.addObject("mList", mList);
		mv.setViewName("master/masterReceiverList");
		return mv;
	}
	
	@RequestMapping("siteAdminList.do")
	public ModelAndView siteAdminList(ModelAndView mv) {
		ArrayList<Master> maList = maService.selectAllMaster();
		mv.addObject("maList", maList);
		mv.setViewName("master/siteAdminList");
		return mv;
	}
	
	@RequestMapping("reportMaster.do")
	public ModelAndView reportMaster(ModelAndView mv) {
		ArrayList<Board_Declaration> rList = maService.selectAllReport();
		for(int i = 0; i < rList.size(); i++) {
			if(rList.get(i).getBd_status().equals("Y")) {
				rList.get(i).setBd_status("접수된 신고");
			}else if(rList.get(i).getBd_status().equals("N")){
				rList.get(i).setBd_status("삭제된 신고");
			}else {
				rList.get(i).setBd_status("처리된 신고");
			}
		}
		mv.addObject("rList", rList);
		mv.setViewName("master/reportMaster");
		return mv;
	}
	
	@RequestMapping("boardMaster.do")
	public ModelAndView boardMaster(ModelAndView mv) {
		ArrayList<Board> bList = maService.boardAllList();
		for(int i = 0; i < bList.size(); i++) {
			if(bList.get(i).getB_status().equals("Y")) {
				bList.get(i).setB_status("등록된 게시글");
			}else {
				bList.get(i).setB_status("삭제된 게시글");
			}
		}
		mv.addObject("bList", bList);
		mv.setViewName("master/boardMaster");
		
		return mv;
	}
	
	@RequestMapping("selectOneBoard.do")
	public ModelAndView selectOneBoard(String bCode, ModelAndView mv) {
		Board board = maService.selectOneBoard(bCode);
		mv.addObject("b", board);
		mv.setViewName("master/boardDetailForm");
		return mv;
	}
	@RequestMapping("masterBoardDelete.do")
	public ModelAndView masterBoardDelete(String b_code, ModelAndView mv) {
		int result = maService.masterBoardDelete(b_code);
		if(result > 0) {
			mv.addObject("result", result);
			mv.setViewName("master/boardDetailForm");
		}else {
			throw new MasterException("게시글 삭제에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("selectOneReport.do")
	public ModelAndView masterOneReport(String rCode, ModelAndView mv) {
		Board_Declaration bd = maService.selectOneReport(rCode);
		Board b = maService.selectOneBoard(bd.getB_code());
		mv.addObject("bd", bd);
		mv.addObject("b", b);
		mv.setViewName("master/reportDetailForm");
		return mv;
	}
	
	@RequestMapping("masterReportDelete.do")
	public ModelAndView masterReportNo(ModelAndView mv, Board_Declaration bd) {
		int result = maService.masterReportDelete(bd);
		if(result > 0) {
			mv.addObject("result", result);
			mv.setViewName("master/reportDetailForm");
		}else {
			throw new MasterException("허위 신고처리에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("masterReportClear.do")
	public ModelAndView masterReportClear(ModelAndView mv, String bd_code, String reMid, String bMid) {
		int result = maService.masterReportClear(bd_code, reMid, bMid);
		if(result > 0) {
			mv.addObject("result", result);
			mv.setViewName("master/reportDetailForm");
		}else {
			throw new MasterException("신고 처리에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("LocationList.do")
	public ModelAndView locationList(ModelAndView mv) {
		ArrayList<MasterMap> mmList = maService.selectMMList();
		if(mmList != null) {
			mv.addObject("mm", mmList);
			mv.setViewName("master/selectLocation");
		}else {
			throw new MasterException("협력 업체 위치정보 출력에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping("LocationList2.do")
	public ModelAndView locationList2(ModelAndView mv) {
		ArrayList<MasterMap> mmList = maService.selectMMList();
		if(mmList != null) {
			mv.addObject("mm", mmList);
			mv.setViewName("master/selectLocation2");
		}else {
			throw new MasterException("협력 업체 위치정보 출력에 실패하였습니다.");
		}
		return mv;
	}
}

