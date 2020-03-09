package com.kh.homeplus.guestRoom.cotroller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.guestRoom.model.service.GuestRoomService;
import com.kh.homeplus.guestRoom.model.vo.GuestRoom;
import com.kh.homeplus.member.model.exception.MemberException;
import com.kh.homeplus.member.model.service.MemberService;
import com.kh.homeplus.readingRoom.model.vo.ReadingRoom;


@Controller
public class GuestRoomController {
	@Autowired
	private GuestRoomService grService;
	@Autowired
	private MemberService mService;
	
	@RequestMapping("mGuestRoom.do")
	public String mGymList() {
		return "guestRoom/mGuestRoom";
	}
	@RequestMapping("searchGuest.do")
	public ModelAndView searchGue(String mCode,int guerRoom, @RequestParam(value="guerReDate1", required=false)String guerReDate1,GuestRoom gr ,ModelAndView mv,Model model,HttpServletRequest request) {
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date guerReDate;
		try {
			guerReDate = transFormat.parse(guerReDate1);
			gr.setGuerRoom(guerRoom);
			gr.setGuerReDate(guerReDate);
			gr.setmCode(mCode);
			System.out.println(gr);
			System.out.println(mCode);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		boolean isUsable = grService.checkMcode(gr) == 0 ? true : false;
		System.out.println(isUsable);
		Map map = new HashMap();
		map.put("isUsable", isUsable);
		mv.addAllObjects(map);
		mv.setViewName("jsonView");
		if(isUsable == true) {
			gueInsert(gr, model, request);
		}
		
		
		return mv;
		
		
	}
	@RequestMapping("gueinsert.do")
		public String gueInsert(GuestRoom gr,
								Model model,
								HttpServletRequest request) {
			

			System.out.println(gr);
			int result = grService.insertGue(gr);
			
			if(result > 0) {
				
				mService.insertMyReserve("gr");
				
				model.addAttribute("msg", "예약이 완료되었습니다.");
				return "guestRoom/mGuestRoom";
			}else {
				throw new MemberException("회원가입 실패!");
			}
		}
	@RequestMapping("guestList.do")
public ModelAndView GuestList(int guerRoom ,ModelAndView mv) {
		
	ArrayList<GuestRoom> list = grService.selectList(guerRoom);
	System.out.println(list);
	
	List<String> geurReDate = new ArrayList<>();
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	
	if(list != null) {
		for(int i=0; i<list.size(); i++){
			 geurReDate.add(sdf.format(list.get(i).getGuerReDate()));
		}
		Map map = new HashMap();
		map.put("guerReDate", geurReDate);
		mv.addAllObjects(map);
		mv.setViewName("jsonView");
	} else {
		
	}
	return mv;
	
	}
	
	@RequestMapping("adGuestRoom.do")
	public ModelAndView adGuestList(ModelAndView mv) {
		ArrayList<GuestRoom> list = grService.adGuestList();
		System.out.println(list);
		/*SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		List<String> list2= new ArrayList<>();
		for(int i=0; i<list.size(); i++){
			 list2.add(sdf.format(list.get(i).getGuerReDate()));
		}*/
		
		if(list != null) {
			/*for(int i=0; i<list.size(); i++){
				 list.set(0,sdf.parse(list2.get(i)));
				
			}*/
			System.out.println(list);
			mv.addObject("list", list);
			mv.setViewName("guestRoom/adGuestMain");
		} else {
			
		}
		return mv;
	}
	
	@RequestMapping("adReGMember.do")
	public ModelAndView adSearchGMem(String mName ,ModelAndView mv,Model model,HttpServletRequest request) {
		ArrayList<GuestRoom> list = grService.adSearchGMem(mName);
		System.out.println(list);
		Map map = new HashMap();
		map.put("list", list);
		mv.addAllObjects(map);
		mv.setViewName("jsonView");
		
		
		return mv;
	}

	
}
