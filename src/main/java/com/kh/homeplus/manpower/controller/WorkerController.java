package com.kh.homeplus.manpower.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.manpower.model.vo.Admin;
import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.manpower.model.exception.ManpowerException;
import com.kh.homeplus.manpower.model.service.ManpowerService;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.manpower.model.vo.SearchConditionCompany;
import com.kh.homeplus.manpower.model.vo.SearchConditionWorker;

@Controller
public class WorkerController {
	
	@Autowired
	public ManpowerService mpService;
	
	@RequestMapping("wlist.do")
	public ModelAndView workerList(ModelAndView mav, @RequestParam(value = "page", required=false) Integer page) {
		int currentPage = page != null? page:1;
		ArrayList<Admin> list = mpService.selectWList(currentPage);
		
		ArrayList count = mpService.selectCountWorker();
		
		if(list != null) {
			mav.addObject("list", list);
			mav.addObject("count", count);
			mav.addObject("pi", MemberPagination.getPageInfo());
			mav.setViewName("manpower/workerInformation");
		}
		return mav;
	}
	
	@RequestMapping("wdetail.do")
	public ModelAndView workerDetail(@RequestParam(value="aCode") String aCode, @RequestParam(value="page", required=false) Integer page, ModelAndView mav, HttpServletRequest request, HttpServletResponse response) {
		
		int currentPage = page != null? page : 1;
		
		Admin admin = null;
		
		ArrayList count = mpService.selectCountWorker();
	
		admin = mpService.selectWorker(aCode);

		if(admin != null) {
			mav.addObject("admin", admin);
			mav.addObject("count", count)
			.addObject("currentPage", currentPage)
			.setViewName("manpower/workerDetailForm");
		}else {
			throw new ManpowerException("게시글 상세조회 실패");
		}
		
		return mav;
	
	}
	
	@RequestMapping("wsearch.do")
	public String workerSearch(HttpSession session, Model model, @RequestParam(value="searchCondition") String con, @RequestParam(value="searchValue", required=false) String sv, @RequestParam(value="Page", required=false) Integer Page) throws ManpowerException {
		SearchConditionWorker sc = new SearchConditionWorker();
		int currentPage = Page != null? Page : 1;
		
		if(con.equals("all")) {
			sc.setAll(sv);
		} else if(con.equals("comName")) {
			sc.setComName(sv);
		} else if(con.equals("aDepartment")) {
			sc.setaDepartment(sv);
		} else if(con.equals("aName")){
			sc.setaName(sv);
		} else {
			sc.setaId(sv);
		}
		
		ArrayList<Admin> list = mpService.workerSearch(currentPage, sc);
		System.out.println("검색 되니 : " + sc);
		ArrayList count = mpService.selectCountWorker();
		
		if(list != null) {
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("pi", MemberPagination.getPageInfo());
			model.addAttribute("searchValue", sv);
			model.addAttribute("searchCondition", con);
		} else {
			throw new ManpowerException("근무자 정보 검색 실패!");
		}
		
		return "manpower/workerInformation";
	}

}
