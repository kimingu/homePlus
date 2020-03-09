package com.kh.homeplus.intro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.master.model.exception.MasterException;
import com.kh.homeplus.master.model.service.MasterService;
import com.kh.homeplus.master.model.vo.LookAround;

@Controller
public class IntroController {

	@Autowired
	private MasterService maService;
	
	@RequestMapping(value="intro.do", method = RequestMethod.GET)
	public ModelAndView introduce(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		LookAround la = maService.selectLookAround();
		if(la != null) {
			mv.addObject("la", la);
			mv.setViewName("intro/introduce");
		}else {
			throw new MasterException("둘러보기 정보를 불러오는데에 실패하였습니다.");
		}
		return mv;
	}
	
	@RequestMapping(value="loginPage.do", method = RequestMethod.GET)
	public String goLoginPage() {
		return "login";
	}
}
