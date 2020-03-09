package com.kh.homeplus.manpower.controller;

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

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.MemberPagination;

import com.kh.homeplus.manpower.model.exception.ManpowerException;
import com.kh.homeplus.manpower.model.service.ManpowerService;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.manpower.model.vo.FacilityTask;
import com.kh.homeplus.manpower.model.vo.SearchConditionCompany;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportFacility;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportWorker;

@Controller
public class ReportController {
	
	@Autowired
	public ManpowerService mpService;
	
	@RequestMapping("rwlist.do")
	public ModelAndView reportWorkerList(ModelAndView mav, @RequestParam(value = "page", required=false) Integer page) {
		int currentPage = page != null? page:1;
		ArrayList<BulletinBoard> list = mpService.selectRWList(currentPage);
		
		ArrayList count = mpService.selectCountBulletinBoard();
		
		if(list != null) {
			mav.addObject("list", list);
			mav.addObject("count", count);
			mav.addObject("pi", MemberPagination.getPageInfo());
			mav.setViewName("manpower/reportWorker");
		}
		return mav;
	}
	
	@RequestMapping("rflist.do")
	public ModelAndView reportFacilityList(ModelAndView mav, @RequestParam(value = "page", required=false) Integer page) {
		int currentPage = page != null? page:1;
		ArrayList<FacilityTask> list = mpService.selectRFList(currentPage);
		
		ArrayList count = mpService.selectCountFacility();
		
		if(list != null) {
			mav.addObject("list", list);
			mav.addObject("count", count);
			mav.addObject("pi", MemberPagination.getPageInfo());
			mav.setViewName("manpower/reportFacility");
		}
		return mav;
	}
	
	@RequestMapping("rwdetail.do")
	public ModelAndView reportWorkerDetail(@RequestParam(value="bbCode") String bbCode, String msg, @RequestParam(value="page", required=false) Integer page, ModelAndView mav, HttpServletRequest request, HttpServletResponse response) {
		
		int currentPage = page != null? page : 1;
		
		BulletinBoard bib = null;
		
		ArrayList count = mpService.selectCountBulletinBoard();
	
		bib = mpService.selectBulletinBoard(bbCode);
		
		System.out.println("bib : " + bib);

		if(bib != null) {
			mav.addObject("bib", bib);
			mav.addObject("count", count)
			.addObject("currentPage", currentPage)
			.addObject("msg", msg)
			.setViewName("manpower/reportWorkerDetailForm");
		}else {
			throw new ManpowerException("인력 신고 상세조회 실패");
		}
		
		return mav;
	
	}
	
	@RequestMapping("rfdetail.do")
	public ModelAndView reportFacilityDetail(@RequestParam(value="ft_code") String ft_code, String msg, @RequestParam(value="page", required=false) Integer page, ModelAndView mav, HttpServletRequest request, HttpServletResponse response) {
		
		int currentPage = page != null? page : 1;
		
		FacilityTask facility = null;
		
		ArrayList count = mpService.selectCountFacility();
	
		facility = mpService.selectFacility(ft_code);

		if(facility != null) {
			mav.addObject("facility", facility);
			mav.addObject("count", count)
			.addObject("currentPage", currentPage)
			.addObject("msg", msg)
			.setViewName("manpower/reportFacilityDetailForm");
		}else {
			throw new ManpowerException("시설 신고 상세조회 실패");
		}
		
		return mav;
	
	}
	
	@RequestMapping("rwsearch.do")
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
		
		ArrayList<BulletinBoard> list = mpService.reportBulletinBoardSearch(currentPage, sc);
		
		ArrayList count = mpService.selectCountBulletinBoard();
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		} else {
			throw new ManpowerException("인력 신고 정보 검색 실패!");
		}
		
		return "manpower/reportWorker";
	}
	
	@RequestMapping("rfsearch.do")
	public String reportFacilitySearch(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="Page", required=false) Integer Page) throws ManpowerException {
		SearchConditionReportFacility sc = new SearchConditionReportFacility();
		int currentPage = Page != null? Page : 1;
		
		if(con.equals("all")) {
			sc.setAll(sv);
		} else if(con.equals("ft_cate")) {
			sc.setFt_cate(sv);
		} else if(con.equals("ft_detail")) {
			sc.setFt_detail(sv);
		} else {
			sc.setFt_need(sv);
		}
		
		ArrayList<FacilityTask> list = mpService.reportFacilitySearch(currentPage, sc);
		
		ArrayList count = mpService.selectCountFacility();
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		} else {
			throw new ManpowerException("업체 신고 정보 검색 실패!");
		}
		
		return "manpower/reportFacility";
	}
	
	@RequestMapping("rwupdate0.do")
	public String reportBulletinBoardUpdate0(RedirectAttributes redirect, @RequestParam(value="bbCode") String bbCode, Model model, HttpServletRequest request) {
		
		int result = mpService.updateBulletinBoard0(bbCode);
		if(result > 0) {
			redirect.addAttribute("bbCode", bbCode);
			return "redirect:rwdetail.do";
		} else {
			redirect.addAttribute("bbCode", bbCode);
			redirect.addAttribute("msg", "이미 처리전입니다!");
			return "redirect:rwdetail.do";
		}
	}
	
	@RequestMapping("rwupdate1.do")
	public String reportBulletinBoardUpdate1(RedirectAttributes redirect, @RequestParam(value="bbCode") String bbCode, Model model, HttpServletRequest request) {
		
		int result = mpService.updateBulletinBoard1(bbCode);
		if(result > 0) {
			redirect.addAttribute("bbCode", bbCode);
			return "redirect:rwdetail.do";
		} else {
			redirect.addAttribute("bbCode", bbCode);
			redirect.addAttribute("msg", "이미 처리중입니다!");
			return "redirect:rwdetail.do";
		}
	}
	
	@RequestMapping("rwupdate2.do")
	public String reportBulletinBoardUpdate2(RedirectAttributes redirect, @RequestParam(value="bbCode") String bbCode, Model model, HttpServletRequest request) {
		
		int result = mpService.updateBulletinBoard2(bbCode);
		
		if(result > 0) {
			redirect.addAttribute("bbCode", bbCode);
			return "redirect:rwdetail.do";
		} else {
			redirect.addAttribute("bbCode", bbCode);
			redirect.addAttribute("msg", "이미 처리완료입니다!");
			return "redirect:rwdetail.do";
		}
	}
	
	@RequestMapping("rfupdate0.do")
	public String reportFacilityUpdate0(RedirectAttributes redirect, @RequestParam(value="ft_code") String ft_code, Model model, HttpServletRequest request) {
		
		int result = mpService.updateFacility0(ft_code);
		if(result > 0) {
			/*model.addAttribute("ft_code", ft_code);*/
			redirect.addAttribute("ft_code", ft_code);
			return "redirect:rfdetail.do";
		} else {
			/*throw new ManpowerException("시설 신고 게시판 수정 실패!");*/
			redirect.addAttribute("ft_code", ft_code);
			redirect.addAttribute("msg", "이미 처리전입니다!");
			return "redirect:rfdetail.do";
		}
	}
	
	@RequestMapping("rfupdate1.do")
	public String reportFacilityUpdate1(RedirectAttributes redirect, @RequestParam(value="ft_code") String ft_code, Model model, HttpServletRequest request) {
		
		int result = mpService.updateFacility1(ft_code);
		if(result > 0) {
			/*model.addAttribute("ft_code", ft_code);*/
			redirect.addAttribute("ft_code", ft_code);
			return "redirect:rfdetail.do";
		} else {
			/*throw new ManpowerException("시설 신고 게시판 수정 실패!");*/
			redirect.addAttribute("ft_code", ft_code);
			redirect.addAttribute("msg", "이미 처리중입니다!");
			return "redirect:rfdetail.do";
		}
	}
	
	@RequestMapping("rfupdate2.do")
	public String reportFacilityUpdate2(RedirectAttributes redirect, @RequestParam(value="ft_code") String ft_code, Model model, HttpServletRequest request) {
		
		int result = mpService.updateFacility2(ft_code);
		
		System.out.println("rfupdate2 : " + result);
		
		if(result > 0) {
			redirect.addAttribute("ft_code", ft_code);
			return "redirect:rfdetail.do";
		} else {
			redirect.addAttribute("ft_code", ft_code);
			redirect.addAttribute("msg", "이미 처리완료입니다!");
			return "redirect:rfdetail.do";
		}
	}
	

}
