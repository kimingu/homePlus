package com.kh.homeplus.facility.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.facility.controller.Pagination;
import com.kh.homeplus.facility.model.exception.FacilityException;
import com.kh.homeplus.facility.model.service.facilityService;
import com.kh.homeplus.facility.model.vo.Apartments;
import com.kh.homeplus.facility.model.vo.Apsemidetail;
import com.kh.homeplus.facility.model.vo.Counter;
import com.kh.homeplus.facility.model.vo.FacAnswer;
import com.kh.homeplus.facility.model.vo.Fac_List;
import com.kh.homeplus.facility.model.vo.Fac_Persent;
import com.kh.homeplus.facility.model.vo.FacilityTask;
import com.kh.homeplus.facility.model.vo.Fitnesscenter;
import com.kh.homeplus.facility.model.vo.Guestroomman;
import com.kh.homeplus.facility.model.vo.PageInfo;
import com.kh.homeplus.facility.model.vo.ParkArea;
import com.kh.homeplus.facility.model.vo.Readingroomman;
import com.kh.homeplus.facility.model.vo.Road;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.master.model.exception.MasterException;
import com.kh.homeplus.master.model.vo.Message;
import com.kh.homeplus.admin.model.service.AdminService;


@Controller
public class facilityController {
	@Autowired
	private facilityService facService;
	@Autowired
	private AdminService adService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@RequestMapping(value = "facilitymain.do", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		System.out.println("facmain");
		int currentPage = page != null ? page : 1;
		ArrayList<Fac_List> list = facService.selectList(currentPage);
		ArrayList<Fac_Persent> persent = facService.getPersent();
		int a = 0;
		int b = 0;
		int c = 0;
		int d = 0;
		for (Fac_Persent fp : persent) {
			a = a + 1;
			if (fp.getCate1().equals("1")) {
				b = b + 1;
			} else if (fp.getCate2().equals("1")) {
				c = c + 1;
			} else if (fp.getCate3().equals("1")) {
				d = d + 1;
			} else if (fp.getCate4().equals("1")) {
				d = d + 1;
			}
		}
		Counter cont = new Counter(a, b, c, d);
		if (list != null && persent != null) {
			mv.addObject("list", list);
			mv.addObject("cont", cont);
			mv.addObject("pi", Pagination.getfacPageInfo());
			mv.setViewName("facility/facilitymain");
		} else {
			mv.setViewName("facility/facilitymain");
		}
		return mv;
	}

	@RequestMapping(value = "convreport.do", method = RequestMethod.GET)
	public ModelAndView conmain(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		System.out.println("convmain");
		int currentPage = page != null ? page : 1;
		ArrayList<Fac_List> list = facService.selectConvList(currentPage);
		ArrayList<Fac_Persent> persent = facService.getConvPersent();
		int a = 0;
		int b = 0;
		int c = 0;
		int d = 0;
		for (Fac_Persent fp : persent) {
			if (fp.getCate1().equals("1")) {
				a = a + 1;
				b = b + 1;
			} else if (fp.getCate2().equals("1")) {
				a = a + 1;
				c = c + 1;
			} else if (fp.getCate3().equals("1")) {
				a = a + 1;
				d = d + 1;
			}
		}
		Counter cont = new Counter(a, b, c, d);
		if (list != null && persent != null) {
			mv.addObject("list", list);
			mv.addObject("cont", cont);
			mv.addObject("pi", Pagination.getfacPageInfo());
			mv.setViewName("facility/convientmain");
		} else {
			mv.setViewName("facility/convientmain");
		}
		return mv;
	}

	@RequestMapping(value = "trafreport.do", method = RequestMethod.GET)
	public ModelAndView trafmain(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		System.out.println("trafmain");
		int currentPage = page != null ? page : 1;
		ArrayList<Fac_List> list = facService.selectTrafList(currentPage);
		ArrayList<Fac_Persent> persent = facService.getTrafPersent();
		int a = 0;
		int b = 0;
		int c = 0;
		int d = 0;
		for (Fac_Persent fp : persent) {
			System.out.println(fp);
			if (fp.getCate1().equals("1")) {
				a = a + 1;
				b = b + 1;
			} else if (fp.getCate2().equals("1")) {
				a = a + 1;
				c = c + 1;
			} else if (fp.getCate3().equals("1")) {
				a = a + 1;
				d = d + 1;
			}
		}
		Counter cont = new Counter(a, b, c, d);
		if (list != null && persent != null) {
			mv.addObject("list", list);
			mv.addObject("cont", cont);
			mv.addObject("pi", Pagination.getfacPageInfo());
			mv.setViewName("facility/trafficmain");
		} else {
			mv.setViewName("facility/trafficmain");
		}
		return mv;
	}

	@RequestMapping(value = "apartmentmain.do", method = RequestMethod.GET)
	public ModelAndView apartmentmain(ModelAndView mv) {
		System.out.println("apartmentmain");
		ArrayList<Fac_List> list = facService.selectApList();
		Apartments ap = new Apartments();
		for (Fac_List fl : list) {
			if (fl.getBb_dcategory().substring(2, 5).equals("101")) {
				ap.setA1(ap.getA1() + 1);
			}
			if (fl.getBb_dcategory().substring(2, 5).equals("102")) {
				ap.setA2(ap.getA2() + 1);
			}
			if (fl.getBb_dcategory().substring(2, 5).equals("103")) {
				ap.setA3(ap.getA3() + 1);
			}
			if (fl.getBb_dcategory().substring(2, 5).equals("104")) {
				ap.setA4(ap.getA4() + 1);
			}
			if (fl.getBb_dcategory().substring(2, 5).equals("105")) {
				ap.setA5(ap.getA5() + 1);
			}
			if (fl.getBb_dcategory().substring(2, 5).equals("106")) {
				ap.setA6(ap.getA6() + 1);
			}
			if (fl.getBb_dcategory().substring(2, 5).equals("107")) {
				ap.setA7(ap.getA7() + 1);
			}
			if (fl.getBb_dcategory().substring(2, 5).equals("108")) {
				ap.setA8(ap.getA8() + 1);
			}
		}
		mv.addObject("ap", ap);
		mv.setViewName("facility/apartmain");
		return mv;
	}

	@RequestMapping(value = "apartreport.do", method = RequestMethod.GET)
	public ModelAndView apartmentreport(ModelAndView mv) {
		System.out.println("apartreport");
		ArrayList<Fac_List> list = facService.selectApList();
		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("facility/apartreports");
		} else {
			mv.setViewName("facility/apartreports");
		}
		return mv;
	}

	@RequestMapping(value = "apartsemidetail.do")
	public ModelAndView apartsemidetail(String code, ModelAndView mv, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println(code);
		System.out.println("apartsemidetail");
		ArrayList<Apsemidetail> alist = facService.apartsemi(code);
		ArrayList<Apsemidetail> list = new ArrayList<Apsemidetail>();
		String acode = "";
		for (Apsemidetail a : alist) {
			if (acode.equals(a.getApm_dcode())) {
				System.out.println("중복하나제거");
			} else {
				list.add(a);
				acode = a.getApm_dcode();
			}
		}
		System.out.println(list);
		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("code", code);
			mv.setViewName("facility/apartsemidetail");
		}
		return mv;
	}



	@RequestMapping(value = "fitman.do", method = RequestMethod.GET)
	public ModelAndView fitnessmain(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("fitness");
		ArrayList<Fac_List> list = facService.selectft();
		Fitnesscenter fs = new Fitnesscenter();
		for (Fac_List f : list) {
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 1 || fs.getF1() == "") {
					fs.setF1(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 2 || fs.getF2() == "") {
					fs.setF2(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 3 || fs.getF3() == "") {
					fs.setF3(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 4 || fs.getF4() == "") {
					fs.setF4(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 5 || fs.getF5() == "") {
					fs.setF5(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 6 || fs.getF6() == "") {
					fs.setF6(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 7 || fs.getF7() == "") {
					fs.setF7(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 8 || fs.getF8() == "") {
					fs.setF8(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 9 || fs.getF9() == "") {
					fs.setF9(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 10 || fs.getF10() == "") {
					fs.setF10(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 11 || fs.getF11() == "") {
					fs.setF11(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 12 || fs.getF12() == "") {
					fs.setF12(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 13 || fs.getF13() == "") {
					fs.setF13(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 14 || fs.getF14() == "") {
					fs.setF14(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 15 || fs.getF15() == "") {
					fs.setF15(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 16 || fs.getF16() == "") {
					fs.setF16(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 17 || fs.getF17() == "") {
					fs.setF17(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 18 || fs.getF18() == "") {
					fs.setF18(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 19 || fs.getF19() == "") {
					fs.setF19(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 20 || fs.getF20() == "") {
					fs.setF20(f.getBb_code());
				}
				if (Integer.parseInt(f.getBb_dcategory().substring(4)) == 21 || fs.getF21() == "") {
					fs.setF21(f.getBb_code());
			}
		}
		System.out.println(fs);
		mv.addObject("fs", fs);
		mv.setViewName("facility/fitcenterman");
		return mv;
	}

	@RequestMapping(value = "guestrman.do")
	public ModelAndView guestrmain(String code, ModelAndView mv, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println(code);
		System.out.println("guestrman");
		ArrayList<Fac_List> list = facService.selectgrList(code);
		System.out.println(list);
		Guestroomman grm = new Guestroomman(code, "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g");
		for (Fac_List f : list) {
			System.out.println(Integer.parseInt(f.getBb_dcategory().substring(8)));
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 1) {
				grm.setR1(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 2) {
				grm.setR2(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 3) {
				grm.setR3(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 4) {
				grm.setR4(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 5) {
				grm.setR5(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 6) {
				grm.setR6(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 7) {
				grm.setR7(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 8) {
				grm.setR8(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 9) {
				grm.setR9(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 10) {
				grm.setR10(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 11) {
				grm.setR11(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(8)) == 12) {
				grm.setR12(f.getBb_code());
			}
		}
		System.out.println(grm);
		mv.addObject("grm", grm);
		mv.addObject("code", code);
		mv.setViewName("facility/guestrmain");

		return mv;
	}

	@RequestMapping(value = "parking.do", method = RequestMethod.GET)
	public ModelAndView parkingmain(ModelAndView mv,@RequestParam(value = "code", required=false) String code) {
		System.out.println("parking");
		if(code==null) {
			code = "101";
		}
		ArrayList<ParkArea> rlist = facService.pklist(code);
		ArrayList<ParkArea> list = new ArrayList<ParkArea>();
		String pa = "";
		for (ParkArea r : rlist) {
			if (pa.equals(r.getPk_code())) {
				System.out.println("중복하나 제거");
			} else {
				list.add(r);
				pa = r.getPk_code();
			}
		}
		if(list!= null) {
			mv.addObject("code",code);
			mv.addObject("list",list);
			mv.setViewName("facility/parkingmain");
		}
		return mv;
	}

	@RequestMapping(value = "readingman.do")
	public ModelAndView readingmain(ModelAndView mv) {
		System.out.println("reading");
		ArrayList<Readingroomman> list = facService.readlist();
		System.out.println(list);
		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("facility/readingRoom");
		}
		return mv;
	}

	@RequestMapping(value = "roadman.do")
	public ModelAndView roadmain(ModelAndView mv) {
		System.out.println("road");
		ArrayList<Road> rlist = facService.roadlist();
		System.out.println(rlist);
		ArrayList<Road> list = new ArrayList<Road>();
		String rc = "";
		for (Road r : rlist) {
			System.out.println(r);
			if (rc.equals(r.getRoad_code())) {
				System.out.println("중복하나 제거");
			} else {
				list.add(r);
				rc = r.getRoad_code();
			}
		}
		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("facility/roadmain");
		}
		return mv;
	}


	@RequestMapping(value = "facdetail.do")
	public ModelAndView facdetail(String code, ModelAndView mv, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println(code);
		System.out.println("facdetail");
		Fac_List bib = facService.facdetail(code);
		ArrayList<Company> comlist = facService.comlist();
		System.out.println(comlist);
		if (bib != null) {
			mv.addObject("list", bib);
			mv.addObject("comlist", comlist);
			mv.setViewName("facility/facilitydetail");
		}
		return mv;
	}

	@RequestMapping(value = "facanswer.do")
	public ModelAndView facanswer(ModelAndView mv, HttpServletRequest request, FacAnswer a) {
		System.out.println(a);

		int ans = facService.facanswer(a);
		String cate = "";
		String dcate = "";
		if (a.getDcate().substring(0, 1).equals("1")) {
			cate = "아파트";
			dcate = a.getDcate().substring(2, 5) + "동" + a.getDcate().substring(6, 10) + "호 "
					+ a.getDcate().substring(11) + "구역";
		} else if (a.getDcate().substring(0, 1).equals("2")) {
			cate = "편의시설";
			if (a.getDcate().substring(2, 3).equals("1")) {
				dcate = "피트니스센터 " + a.getDcate().substring(4, 5) + "번 기구";
			} else if (a.getDcate().substring(2, 3).equals("2")) {
				dcate = "독서실";
			} else if (a.getDcate().substring(2, 3).equals("3")) {
				dcate = "게스트룸 " + a.getDcate().substring(4, 7) + "호 " + a.getDcate().substring(8) + "구역";
			}
		} else if (a.getDcate().substring(0, 1).equals("3")) {
			cate = "교통시설";
			if (a.getDcate().substring(2, 3).equals("6")) {
				if(a.getDcate().substring(4,5).equals("1")) {
					dcate = "교통시설 탄력봉";
				}else if(a.getDcate().substring(4).equals("2")) {
					dcate = "교통시설 델리네이터";
				}else if(a.getDcate().substring(4).equals("3")) {
					dcate = "교통시설 볼라드";
				}else if(a.getDcate().substring(4).equals("4")) {
					dcate = "교통시설 도로표시병";
				}
				dcate = "교통시설";
			} else if (a.getDcate().substring(2, 3).equals("4")) {
				dcate = "주차장";
			} else if (a.getDcate().substring(2, 3).equals("5")) {
				dcate = "도로" + a.getDcate().substring(4) + "번 구역";
			}
		}
		FacilityTask ft = new FacilityTask(cate, dcate, a.getCompany(), 'N');
		System.out.println(ft);
		int facwork = facService.facwork(ft);
		if (ans != 0 || facwork != 0) {
			facService.facend(a);
			mv.setViewName("facility/facworkend");
			System.out.println("성공");
		} else {
			mv.setViewName("facility/facworkwrong");
		}
		return mv;
	}

	@RequestMapping(value = "selAP.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String selAp(String sel, HttpServletResponse response) {
		System.out.println("sel = " + sel);
		ArrayList<Fac_List> list = facService.selectApCateList(sel);
		System.out.println("list =" + list);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		return gson.toJson(list);
	}

	@RequestMapping(value = "trafficenter.do")
	public ModelAndView trafficenter(ModelAndView mv) {
		System.out.println("trafficenter");
		ArrayList<Fac_List> list = facService.trafficenter();
		System.out.println(list);
		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("facility/trafficenter");
		}
		return mv;
	}

	@RequestMapping(value = "seltraffic.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String seltraffic(String sel, HttpServletResponse response) {
		System.out.println("sel = " + sel);
		ArrayList<Fac_List> list = facService.selecttraffic(sel);
		System.out.println("list =" + list);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		return gson.toJson(list);
	}
	@RequestMapping(value = "apdetail.do")
	@ResponseBody
	public ModelAndView apdetail(String code, ModelAndView mv) {
		String add = code.substring(0,10);
		String fadd = code.substring(2,5);
		String sadd = code.substring(6,10);
		ArrayList<Fac_List> list = facService.apdetail(add);
		Guestroomman apt = new Guestroomman(code, "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g", "g");
		for (Fac_List f : list) {
			System.out.println(Integer.parseInt(f.getBb_dcategory().substring(11)));
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 1) {
				apt.setR1(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 2) {
				apt.setR2(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 3) {
				apt.setR3(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 4) {
				apt.setR4(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 5) {
				apt.setR5(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 6) {
				apt.setR6(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 7) {
				apt.setR7(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 8) {
				apt.setR8(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 9) {
				apt.setR9(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 10) {
				apt.setR10(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 11) {
				apt.setR11(f.getBb_code());
			}
			if (Integer.parseInt(f.getBb_dcategory().substring(11)) == 12) {
				apt.setR12(f.getBb_code());
			}
		}
		System.out.println(apt);
		mv.addObject("apt", apt);
		mv.addObject("fadd", fadd);
		mv.addObject("sadd", sadd);
		mv.setViewName("facility/apartdetail");

		return mv;
	}
	
	@RequestMapping("facMessageForm.do")
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
			mv.setViewName("facility/facMessageForm");
		}
		return mv;
	}
	@RequestMapping("aReceiveDetail.do")
	public ModelAndView messageReceiveDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("facility/facReceiveDetail");
		}else {
			throw new MasterException("메세지 상세 조회를 실패하였습니다.");
		}
		return mv;
	}
	@RequestMapping("facSendedForm.do")
	public ModelAndView goSendedForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="aName") String aName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(aName);
		
		ArrayList<Message> meList = facService.selectSendedList(pageInfo);
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
			mv.setViewName("facility/facSendedForm");
		}
		return mv;
	}
	
	@RequestMapping("facMsgSendForm.do")
	public String goWritieForm() {
		return "facility/facWriterForm";
	}
	@RequestMapping("facmessageWrite.do")
	public String writeMessage(Message message, RedirectAttributes redirect) {
		int result = facService.messageWrite(message);
		if(result > 0) {
			redirect.addAttribute("maName", message.getMeWriter()); 
			return "redirect:facMsgSendForm.do";
		}else {
			throw new MasterException("메세지 전송을 실패하였습니다.");
		}
	}
	@RequestMapping("facmessageLock.do")
	public String messageLock(String meReceiver, String meCode, RedirectAttributes redirect) {
		int result = facService.messageLock(meCode);
		if(result > 0) {
			redirect.addAttribute("aName", meReceiver);
			return "redirect:facLockerForm.do";
		}else {
			throw new MasterException("메세지 보관에 실패하였습니다.");
		}
	}
	@RequestMapping("facLockerForm.do")
	public ModelAndView goTrashForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="aName") String maName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(maName);
		pageInfo.setReceiver(maName);
		
		ArrayList<Message> meList = facService.selectLockerList(pageInfo);;
		for(int i = 0; i < meList.size(); i++) {
			if(meList.get(i).getMeStatus().equals("Y")) {
				meList.get(i).setMeStatus("안 읽음");
			}else if(meList.get(i).getMeStatus().equals("N")) {
				meList.get(i).setMeStatus("읽음");
			}
		}
		if(meList != null) {
			mv.addObject("meList", meList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("facility/facLockerForm");
		}
		return mv;
	}
	@RequestMapping("facSendedDetail.do")
	public ModelAndView messageSendedDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("facility/facSendedDetail");
		}else {
			throw new MasterException("메세지 상세조회를 실패하였습니다.");
		}
		return mv;
	}
	@RequestMapping("facmessageDelete.do")
	public String messageDelete(String meReceiver, String meCode, RedirectAttributes redirect) {
		int result = facService.messageDelete(meCode);
		if(result > 0) {
			redirect.addAttribute("maName", meReceiver);
			redirect.addAttribute("aName", meReceiver);
			return "redirect:facMessageForm.do";
		}else {
			throw new MasterException("메세지 삭제에 실패하였습니다.");
		}
	}
	@RequestMapping("facmeLockDetail.do")
	public ModelAndView messageLockDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("facility/facLockerDetail");
		}else {
			throw new MasterException("메시지 상세조회를 실패하였습니다.");
		}
		return mv;
	}
	
	// 개인정보 수정 이동
	@RequestMapping("facdetailadmin.do")
	public String toUpdateMyInfo() {
		
		return "facility/admindetail";
	}
	

	@RequestMapping("facupdateadmin.do")
	public String updateMember(HttpSession session, Model model, @ModelAttribute Admin a) {
		Admin loginUser = (Admin)session.getAttribute("loginUser");
		a.setaCode(loginUser.getaCode());
		System.out.println(a);
		int result = adService.updateAdmin(a);		

		Admin updateMember = adService.loginAdmin(a);
		
		if(result > 0) {
			model.addAttribute("msg", "개인정보가 수정되었습니다");
			model.addAttribute("loginUser", updateMember);
			
			return "facility/admindetail";
		}else {
			throw new FacilityException("개인정보 수정 실패");
		}
	}
	@RequestMapping("facupdateform.do")
	public String facupdateform(HttpSession session,String pwd) {
		Admin loginUser = (Admin)session.getAttribute("loginUser");
		Admin ck = new Admin();
		ck.setaCode(loginUser.getaCode());
		ck.setaPwd(pwd);
		Admin ad = adService.ckpwd(ck);
		System.out.println(ad);

		if(bcryptPasswordEncoder.matches(pwd, loginUser.getaPwd())) {
			return "facility/updateac";
		}else {
			throw new FacilityException("비밀번호 입력 실패");
		}
	}
}

