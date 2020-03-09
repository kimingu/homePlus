package com.kh.homeplus.manpower.controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.common.Pagination;
import com.kh.homeplus.manpower.model.exception.ManpowerException;
import com.kh.homeplus.manpower.model.service.ManpowerService;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.manpower.model.vo.Search;
import com.kh.homeplus.manpower.model.vo.SearchConditionCompany;


@Controller
public class CompanyController {
	
	@Autowired
	public ManpowerService mpService;
	
	@RequestMapping("clist.do")
	public ModelAndView companyList(ModelAndView mav, @RequestParam(value = "page", required=false) Integer page) {
		int currentPage = page != null? page:1;
		ArrayList<Company> list = mpService.selectCList(currentPage);
		
		ArrayList count = mpService.selectCountList();
		
		if(list != null) {
			mav.addObject("list", list);
			mav.addObject("count", count);
			mav.addObject("pi", MemberPagination.getPageInfo());
			mav.setViewName("manpower/companyInformation");
		}
		return mav;
	}
	
	@RequestMapping("cinsertView.do") // 업체 정보 등록 페이지로 이동
	public String companyInsertView() {
		return "manpower/companyInsertForm";
	}
	
	@RequestMapping("cinsert.do")
	public String companyInsert(HttpServletRequest request, @ModelAttribute Company c) {
		int result = mpService.insertCompany(c);
		
		if(result > 0) {
			return "redirect:clist.do";
		} else {
			throw new ManpowerException("업체 정보 등록 실패!");
		}
	}
	
	@RequestMapping("cdetail.do")
	public ModelAndView companyDetail(@RequestParam(value="comCode") String comCode, @RequestParam(value="page", required=false) Integer page, ModelAndView mav, HttpServletRequest request, HttpServletResponse response) {
		
		int currentPage = page != null? page : 1;
		
		Company company = null;
		
		ArrayList count = mpService.selectCountList();
	
		company = mpService.selectCompany(comCode);

		if(company != null) {
			mav.addObject("company", company);
			mav.addObject("count", count)
			.addObject("currentPage", currentPage)
			.setViewName("manpower/companyDetailForm");
		}else {
			throw new ManpowerException("게시글 상세조회 실패");
		}
		
		return mav;
	
	}
	
	@RequestMapping("cupView.do")
	public String companyUpdateView(Model model, @RequestParam("comCode") String comCode ) {
		
		Company c = mpService.selectCompany(comCode);
		
		if(c != null) {
			model.addAttribute("company", c);
			
			return "manpower/companyUpdateForm";			
		} else {
			throw new ManpowerException("수정페이지 조회 실패!");
		}
		
	}
	
	@RequestMapping("cupdate.do")
	public String companyUpdate(@ModelAttribute Company c, Model model, HttpServletRequest request) {
		int result = mpService.updateCompany(c);

		if(result > 0) {
			model.addAttribute("comCode", c.getComCode());
			
			return "redirect:cdetail.do";			
		} else {
			throw new ManpowerException("업체 정보 게시판 수정 실패!");
		}
		
	}
	
	@RequestMapping("cdelete.do")
	public String companyDelete(@RequestParam("comCode") String comCode, HttpServletRequest request) {
		Company c = mpService.selectCompany(comCode);
		
		int result = mpService.deleteCompany(comCode);
		
		System.out.println(result);
		System.out.println(comCode);
		
		if(result > 0) {
			return "redirect:clist.do";
		} else {
			throw new ManpowerException("업체 정보 삭제 실패!");
		}
	}
	
	@RequestMapping("csearch.do")
	public String companySearch(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="Page", required=false) Integer Page) throws ManpowerException {
		SearchConditionCompany sc = new SearchConditionCompany();
		int currentPage = Page != null? Page : 1;
		
		if(con.equals("all")) {
			sc.setAll(sv);
		} else if(con.equals("comDivision")) {
			sc.setComDivision(sv);
		} else if(con.equals("comName")) {
			sc.setComName(sv);
		} else {
			sc.setComCeo(sv);
		}
		
		ArrayList<Company> list = mpService.companySearch(currentPage, sc);
		
		ArrayList count = mpService.selectCountList();
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		} else {
			throw new ManpowerException("업체 정보 검색 실패!");
		}
		
		return "manpower/companyInformation";
	}
	
	
}
