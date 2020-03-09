package com.kh.homeplus.readingRoom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.member.model.exception.MemberException;
import com.kh.homeplus.member.model.service.MemberService;
import com.kh.homeplus.readingRoom.model.service.ReadingRoomService;
import com.kh.homeplus.readingRoom.model.vo.ReadingRoom;

	
	@Controller
	public class ReadingRoomController {
	@Autowired
		private ReadingRoomService rService;
	
	@Autowired
	private MemberService mService;

		// mcode 중복 확인
		@RequestMapping("searchRea.do")
		public ModelAndView searchRea(String mCode,int reaSeat,ReadingRoom r ,ModelAndView mv,Model model,HttpServletRequest request) {
			System.out.println(mCode);
			r.setmCode(mCode);
			r.setReaSeat(reaSeat);
			boolean isUsable = rService.checkMcode(mCode) == 0 ? true : false;
			System.out.println(isUsable);
			Map map = new HashMap();
			map.put("isUsable", isUsable);
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
			if(isUsable == true) {
				reaInsert(r, model, request);
			}
			return mv;
		}
		// 예약
		@RequestMapping("reainsert.do")
		public String reaInsert(ReadingRoom r,
								Model model,
								HttpServletRequest request) {
			

			System.out.println(r);
			int result = rService.insertRea(r);
			
			if(result > 0) {
				model.addAttribute("msg", "예약이 완료되었습니다.");
				
				// 상인
				mService.insertMyReserve("rr");
				
				return "readingRoom/readingRoom";
			}else {
				throw new MemberException("회원가입 실패!");
			}
		}
		
		@RequestMapping("reading.do")
		public ModelAndView readingList(ModelAndView mv) {
			ArrayList<ReadingRoom> list = rService.selectList();
			System.out.println(list);
			if(list != null) {
				System.out.println(list);
				mv.addObject("list", list);
				mv.setViewName("readingRoom/readingRoom");
			} else {
				
			}
			return mv;
		}
		
		@RequestMapping("adReading.do")
		public ModelAndView adReadingList(ModelAndView mv) {
			ArrayList<ReadingRoom> list = rService.selectList();
			System.out.println(list);
			if(list != null) {
				System.out.println(list);
				mv.addObject("list", list);
				mv.setViewName("readingRoom/adReadingMain");
			} else {
				
			}
			return mv;
		}
		
		@RequestMapping("cancelAdRea.do")
		public ModelAndView cancelRea(int reaSeat ,ModelAndView mv,Model model,HttpServletRequest request) {
			boolean isUsable = rService.cancelAdRea(reaSeat) == 1 ? true : false;
			System.out.println(isUsable);
			Map map = new HashMap();
			map.put("isUsable", isUsable);
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
			
			return mv;
		}
		@RequestMapping("adReMember.do")
		public ModelAndView adSearchM(String mName ,ModelAndView mv,Model model,HttpServletRequest request) {
			ArrayList<ReadingRoom> list = rService.adSearchM(mName);
			System.out.println(list);
			Map map = new HashMap();
			map.put("list", list);
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
			
			return mv;
		}
		
		
		
		
/*		public String insertReading() {
			int result = readingService.insertReading();
			return null;
		}
		public String cancelReading() {
			int result = readingService.cancelReading();
			return null;
		}*/
		
		
	}

