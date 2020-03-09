package com.kh.homeplus.manpower.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManpowerController {
	
	@RequestMapping("manpowerMain.do")
	public String toManPowerMain() {
		
		return "manpower/manpowerMain";
	}
	
	
	
	
	
	
	
	

}
