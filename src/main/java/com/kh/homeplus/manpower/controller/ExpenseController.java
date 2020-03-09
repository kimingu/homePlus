package com.kh.homeplus.manpower.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.manpower.model.exception.ManpowerException;
import com.kh.homeplus.manpower.model.service.ManpowerService;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.manpower.model.vo.Expense;
import com.kh.homeplus.manpower.model.vo.ManpowerExpense;

@Controller
public class ExpenseController {
	
	@Autowired
	public ManpowerService mpService;
	
	@RequestMapping("elist.do")
	public ModelAndView expenseList(ModelAndView mav, @RequestParam(value = "page", required=false) Integer page) {
		int currentPage = page != null ? page : 1;
		ArrayList<Expense> list = mpService.selectEList(currentPage);
		ManpowerExpense me = mpService.ExpenseMainExpense();
		
		if(list != null) {
			mav.addObject("list", list);
			mav.addObject("pi", MemberPagination.getPageInfo());
			mav.addObject("me", me);
			mav.setViewName("manpower/expenseInformation");
		} else {
			throw new ManpowerException("목록을 불러오는데 실패!");
		}
		
		return mav;
	}
	
	@RequestMapping("cclist.do")
	public ModelAndView companyList(ModelAndView mav, @RequestParam(value = "page", required=false) Integer page) {
		int currentPage = page != null? page:1;
		ArrayList<Company> list = mpService.selectCCList(currentPage);
		
		System.out.println("list : " + list);
		
		if(list != null) {
			mav.addObject("list", list);
			mav.addObject("pi", MemberPagination.getPageInfo());
			mav.setViewName("manpower/companyInformation2");
		}
		return mav;
	}
	
	@RequestMapping("ccadlist.do")
	public ModelAndView companyList2(ModelAndView mav, @RequestParam(value = "page", required=false) Integer page) {
		int currentPage = page != null? page:1;
		ArrayList<Company> list = mpService.selectCList(currentPage);
		
		if(list != null) {
			mav.addObject("list", list);
			mav.addObject("pi", MemberPagination.getPageInfo());
			mav.setViewName("admin/companyInformation");
		}
		return mav;
	}
	
	@RequestMapping("einsertView.do") // 업체 정보 등록 페이지로 이동
	public String expenseInsertView() {
		return "manpower/expenseInsertForm";
	}
	
	@RequestMapping("einsert.do")
	public String companyInsert(HttpServletRequest request, @ModelAttribute Expense e, @RequestParam(value="comCode") String comCode) {
		Map<String, Object> map = new HashMap<>();
		map.put("e", e);
		map.put("comCode", comCode);
		
		int result = mpService.insertExpense(map);
		
		if(result > 0) {
			return "redirect:elist.do";
		} else {
			throw new ManpowerException("재무 정보 등록 실패!");
		}
	}
	
	@RequestMapping("edetail.do")
	public ModelAndView expenseeDetail(@RequestParam(value="exCode") String exCode, @RequestParam(value="page", required=false) Integer page, ModelAndView mav, HttpServletRequest request, HttpServletResponse response) {
		
		int currentPage = page != null? page : 1;
		
		Expense expense = null;
	
		expense = mpService.selectExpense(exCode);
		
		System.out.println("expense : " + expense);

		if(expense != null) {
			mav.addObject("expense", expense)
			.addObject("currentPage", currentPage)
			.setViewName("manpower/expenseDetailForm");
		}else {
			throw new ManpowerException("게시글 상세조회 실패");
		}
		
		return mav;
	
	}
	
	@RequestMapping("eupView.do")
	public String expenseUpdateView(Model model, @RequestParam("exCode") String exCode) {
		Expense e = mpService.selectExpense(exCode);
		
		
		
		if(e != null) {
			model.addAttribute("expense", e);
			
			return "manpower/expenseUpdateForm";
		} else {
			throw new ManpowerException("수정페이지 조회 실패!");
		}
	}
	
	@RequestMapping("eupdate.do")
	public String expenseUpdate(@ModelAttribute Expense e, Model model, HttpServletRequest request) {
		int result = mpService.updateExpense(e);
		
		if(result > 0) {
			model.addAttribute("exCode", e.getExCode());
			
			return "redirect:edetail.do";
		} else {
			throw new ManpowerException("재무 게시판 수정 실패!");
		}
		
	}
	
	@RequestMapping("edelete.do")
	public String expenseDelete(@RequestParam("exCode") String exCode, HttpServletRequest request) {
		Expense e = mpService.selectExpense(exCode);
		
		int result = mpService.deleteExpense(exCode);
		
		if(result > 0) {
			return "redirect:elist.do";
		} else {
			throw new ManpowerException("재무 정보 삭제 실패!");
		}

	}

}
