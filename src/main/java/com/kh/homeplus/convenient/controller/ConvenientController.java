package com.kh.homeplus.convenient.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.homeplus.admin.model.service.AdminService;
import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.convenient.model.service.ConvenientService;
import com.kh.homeplus.facility.controller.Pagination;
import com.kh.homeplus.facility.model.exception.FacilityException;
import com.kh.homeplus.facility.model.service.facilityService;
import com.kh.homeplus.facility.model.vo.PageInfo;
import com.kh.homeplus.manpower.model.exception.ManpowerException;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportWorker;
import com.kh.homeplus.master.model.vo.Message;

@Controller
public class ConvenientController {
	@Autowired
	public ConvenientService conService;
	@Autowired
	public AdminService adService;
	@Autowired
	public facilityService facService;
	
	@RequestMapping("rclist.do")
	public ModelAndView adBulletinList(ModelAndView mav, @RequestParam(value = "page", required=false) Integer page) {
		int currentPage = page != null? page:1;
		ArrayList<BulletinBoard> list = conService.selectConList(currentPage);
		System.out.println(list);
		
		
		ArrayList count = conService.selectCountBulletinBoard();
		
		if(list != null) {
			mav.addObject("list", list);
			mav.addObject("count", count);
			mav.addObject("pi", MemberPagination.getPageInfo());
			mav.setViewName("convenient/convenientMain");
		}
		
		
		return mav;
	}
	
	@RequestMapping("rcdetail.do")
	public ModelAndView reportConDetail(@RequestParam(value="bbCode") String bbCode, String msg, @RequestParam(value="page", required=false) Integer page, ModelAndView mav, HttpServletRequest request, HttpServletResponse response) {
		
		int currentPage = page != null? page : 1;
		
		BulletinBoard bib = null;
	
		bib = conService.selectBulletinBoard(bbCode);
		
		System.out.println("bib : " + bib);

		if(bib != null) {
			mav.addObject("bib", bib)
			.addObject("currentPage", currentPage)
			.addObject("msg", msg)
			.setViewName("convenient/reportConDetailForm");
		}else {
			throw new ManpowerException("편의 건의/신고 상세조회 실패");
		}
		
		return mav;
	
	}
	
	@RequestMapping("rcsearch.do")
	public String reportBulletinBoardSearch(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="Page", required=false) Integer Page) throws ManpowerException {
		SearchConditionReportWorker sc = new SearchConditionReportWorker();
		int currentPage = Page != null? Page : 1;
		
		if(con.equals("all")) {
			sc.setAll(sv);
		} else if(con.equals("bbTitle")) {
			sc.setBbTitle(sv);
		} else if(con.equals("bbContent")) {
			sc.setBbContent(sv);
		} else {
			sc.setBbDcategory(sv);
		}
		
		ArrayList<BulletinBoard> list = conService.reportBulletinBoardSearch(currentPage, sc);
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		} else {
			throw new ManpowerException("편의 건의/신고 정보 검색 실패!");
		}
		
		return "convenient/convenientMain";
	}
	
	@RequestMapping("rcupdate1.do")
	public String reportBulletinBoardUpdate1(RedirectAttributes redirect, @RequestParam(value="bbCode") String bbCode, Model model, HttpServletRequest request) {
		
		int result = conService.updateBulletinBoard1(bbCode);
		if(result > 0) {
			redirect.addAttribute("bbCode", bbCode);
			return "redirect:rwdetail.do";
		} else {
			redirect.addAttribute("bbCode", bbCode);
			redirect.addAttribute("msg", "이미 처리중입니다!");
			return "redirect:rwdetail.do";
		}
	}
	
	@RequestMapping("rcupdate2.do")
	public String reportBulletinBoardUpdate2(RedirectAttributes redirect, @RequestParam(value="bbCode") String bbCode, Model model, HttpServletRequest request) {
		
		int result = conService.updateBulletinBoard2(bbCode);
		
		if(result > 0) {
			redirect.addAttribute("bbCode", bbCode);
			return "redirect:rcdetail.do";
		} else {
			redirect.addAttribute("bbCode", bbCode);
			redirect.addAttribute("msg", "이미 처리완료입니다!");
			return "redirect:rcdetail.do";
		}
	}
	
	@RequestMapping("conMessageForm.do")
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
			mv.setViewName("convenient/conMessageForm");
		}
		return mv;
	}
	
	
	
	@RequestMapping("conupdateadmin.do")
	public String updateMember(HttpSession session, Model model, @ModelAttribute Admin a) {
		Admin loginUser = (Admin)session.getAttribute("loginUser");
		a.setaCode(loginUser.getaCode());
		System.out.println(a);
		int result = adService.updateAdmin(a);		

		Admin updateMember = adService.loginAdmin(a);
		
		if(result > 0) {
			model.addAttribute("msg", "개인정보가 수정되었습니다");
			model.addAttribute("loginUser", updateMember);
			
			return "convenient/conAdminDetail";
		}else {
			throw new FacilityException("개인정보 수정 실패");
		}
	}
	

}
