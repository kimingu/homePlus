package com.kh.homeplus.manpower.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.kh.homeplus.admin.model.service.AdminService;
import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.facility.controller.Pagination;
import com.kh.homeplus.facility.model.exception.FacilityException;
import com.kh.homeplus.facility.model.service.facilityService;
import com.kh.homeplus.facility.model.vo.PageInfo;
import com.kh.homeplus.master.model.exception.MasterException;
import com.kh.homeplus.master.model.vo.Message;


@Controller
public class mpController {
	@Autowired
	private facilityService facService;
	@Autowired
	private AdminService adService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@RequestMapping("mpMessageForm.do")
	public ModelAndView goMessageForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="aName") String aName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setReceiver(aName);
		System.out.println("message");
		ArrayList<Message> meList = facService.selectReceiveList(pageInfo);
		for(Message m : meList) {
			System.out.println(m);
		}
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
			mv.setViewName("manpower/facMessageForm");
		}
		return mv;
	}
	@RequestMapping("mpReceiveDetail.do")
	public ModelAndView messageReceiveDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("manpower/facReceiveDetail");
		}else {
			throw new MasterException("메세지 상세 조회를 실패하였습니다.");
		}
		return mv;
	}
	@RequestMapping("mpSendedForm.do")
	public ModelAndView goSendedForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="aName") String aName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(aName);
		
		ArrayList<Message> meList = facService.selectSendedList(pageInfo);
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
			mv.setViewName("manpower/facSendedForm");
		}
		return mv;
	}
	
	@RequestMapping("mpMsgSendForm.do")
	public String goWritieForm() {
		return "manpower/facWriterForm";
	}
	@RequestMapping("mpmessageWrite.do")
	public String writeMessage(Message message, RedirectAttributes redirect) {
		int result = facService.messageWrite(message);
		if(result > 0) {
			redirect.addAttribute("maName", message.getMeWriter()); 
			return "redirect:mpMsgSendForm.do";
		}else {
			throw new MasterException("메세지 전송을 실패하였습니다.");
		}
	}
	@RequestMapping("mpmessageLock.do")
	public String messageLock(String meReceiver, String meCode, RedirectAttributes redirect) {
		int result = facService.messageLock(meCode);
		if(result > 0) {
			redirect.addAttribute("aName", meReceiver);
			return "redirect:mpLockerForm.do";
		}else {
			throw new MasterException("메세지 보관에 실패하였습니다.");
		}
	}
	@RequestMapping("mpLockerForm.do")
	public ModelAndView goTrashForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="aName") String maName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(maName);
		pageInfo.setReceiver(maName);
		
		ArrayList<Message> meList = facService.selectLockerList(pageInfo);;
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
			mv.setViewName("manpower/facLockerForm");
		}
		return mv;
	}
	@RequestMapping("mpSendedDetail.do")
	public ModelAndView messageSendedDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("manpower/facSendedDetail");
		}else {
			throw new MasterException("메세지 상세조회를 실패하였습니다.");
		}
		return mv;
	}
	@RequestMapping("mpmessageDelete.do")
	public String messageDelete(String meReceiver, String meCode, RedirectAttributes redirect) {
		int result = facService.messageDelete(meCode);
		if(result > 0) {
			redirect.addAttribute("maName", meReceiver);
			redirect.addAttribute("aName", meReceiver);
			return "redirect:facMessageForm.do";
		}else {
			throw new MasterException("메세지 삭제에 실패하였습니다.");
		}
	}
	@RequestMapping("mpmeLockDetail.do")
	public ModelAndView messageLockDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("manpower/facLockerDetail");
		}else {
			throw new MasterException("메시지 상세조회를 실패하였습니다.");
		}
		return mv;
	}
	
	// 개인정보 수정 이동
	@RequestMapping("mpdetailadmin.do")
	public String toUpdateMyInfo() {
		
		return "manpower/admindetail";
	}
	

	@RequestMapping("mpupdateadmin.do")
	public String updateMember(HttpSession session, Model model, @ModelAttribute Admin a) {
		Admin loginUser = (Admin)session.getAttribute("loginUser");
		a.setaCode(loginUser.getaCode());
		System.out.println(a);
		int result = adService.updateAdmin(a);		

		Admin updateMember = adService.loginAdmin(a);
		
		if(result > 0) {
			model.addAttribute("msg", "개인정보가 수정되었습니다");
			model.addAttribute("loginUser", updateMember);
			
			return "manpower/admindetail";
		}else {
			throw new FacilityException("개인정보 수정 실패");
		}
	}
	@RequestMapping("mpupdateform.do")
	public String facupdateform(HttpSession session,String pwd) {
		Admin loginUser = (Admin)session.getAttribute("loginUser");
		Admin ck = new Admin();
		ck.setaCode(loginUser.getaCode());
		ck.setaPwd(pwd);
		if(bcryptPasswordEncoder.matches(pwd, loginUser.getaPwd())) {
			return "manpower/updateac";
		}else {
			throw new FacilityException("비밀번호 입력 실패");
		}
	}
}
