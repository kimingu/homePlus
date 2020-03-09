package com.kh.homeplus.gym.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.gym.model.service.GymService;
import com.kh.homeplus.gym.model.vo.Gym;
import com.kh.homeplus.member.model.exception.MemberException;
import com.kh.homeplus.member.model.service.MemberService;

@Controller
public class GymController {
	@Autowired
	private GymService gService;
	
	
	// 상인
	@Autowired
	private MemberService mService;
	
	@RequestMapping("mGym.do")
	public String mGymList(Model model) {
		
		int result = gService.mGymList();
		/*int result1 =30;*/
		model.addAttribute("result",result );
		
			return "gym/mGym";
		
	}
	
	@RequestMapping("searchGym.do")
	public ModelAndView searchRea(String mCode,Gym g ,ModelAndView mv,Model model,HttpServletRequest request,@RequestParam(value="gymReSt1", required=false) String gymReSt1,@RequestParam(value="gymReEnd1", required=false) String gymReEnd1) {
		System.out.println(mCode);
		System.out.println(gymReSt1);
		System.out.println(gymReEnd1);
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMddHHmm");
		
		try {
			Date stHour = transFormat.parse(gymReSt1);
			Date endHour = transFormat.parse(gymReEnd1);
			g.setGymReSt(stHour);
			g.setGymReEnd(endHour);
			g.setmCode(mCode);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		boolean isUsable = gService.checkMcode(mCode) == 0 ? true : false;
		System.out.println(isUsable);
		Map map = new HashMap();
		map.put("isUsable", isUsable);
		mv.addAllObjects(map);
		mv.setViewName("jsonView");
		if(isUsable == true) {
			mGymInsert(g, model, request);
		}
		return mv;
	}
	
	@RequestMapping("insertMgym.do")
	public String mGymInsert(Gym g,Model model,HttpServletRequest request) {
		System.out.println(g);
		
		int result = gService.insertGym(g);
	
		if(result > 0) {
			
			// 상인
			mService.insertMyReserve("hr");
			
			return "gym/mGym";
		}else {
			throw new MemberException("회원가입 실패!");
		}
	
	}
	
	
}
