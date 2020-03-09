package com.kh.homeplus.practitioners.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.homeplus.practitioners.model.vo.Hometax;
import com.kh.homeplus.practitioners.model.vo.PatrolMain;
import com.kh.homeplus.practitioners.model.vo.TakingOver;
import com.kh.homeplus.practitioners.model.vo.PatrolJournal;
import com.kh.homeplus.admin.model.service.AdminService;
import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.facility.model.exception.FacilityException;
import com.kh.homeplus.facility.model.service.facilityService;
import com.kh.homeplus.facility.model.vo.PageInfo;
import com.kh.homeplus.master.model.exception.MasterException;
import com.kh.homeplus.master.model.vo.Message;
import com.kh.homeplus.member.model.service.MemberService;
import com.kh.homeplus.member.model.vo.Member;
import com.kh.homeplus.practitioners.controller.Pagination;
import com.kh.homeplus.practitioners.model.exception.PractitionersException;
import com.kh.homeplus.practitioners.model.service.PractitionersService;
import com.kh.homeplus.practitioners.model.vo.Annual;
import com.kh.homeplus.practitioners.model.vo.CarDb;
import com.kh.homeplus.practitioners.model.vo.Commute;
import com.kh.homeplus.practitioners.model.vo.Delivery;


@Controller
public class PractitionersController {
	@Autowired
	private facilityService facService;
	@Autowired
	PractitionersService praService;
	@Autowired
	private AdminService adService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberService mService;
	//====================================================== 실무자 메인=============================================
	

			//실무자 메인
			@RequestMapping(value="praMain.do", method= {RequestMethod.GET, RequestMethod.POST})
			public ModelAndView praMain(@ModelAttribute Admin a, ModelAndView mv, HttpServletRequest request, HttpSession session) {
				
				
				Admin loginUser = (Admin)session.getAttribute("loginUser");
				a.setApCode(loginUser.getApCode());
				System.out.println("업자컨트롤러 a" +a);
				System.out.println("업자컨트롤러 loginUser" +loginUser);
				System.out.println("업자컨트롤러 loginUser.getApCode()" +loginUser.getApCode());
				System.out.println("업자컨트롤러 loginUser.getaDepartment()" +loginUser.getaDepartment());
				/*System.out.println("업자컨트롤러 a" + a);
				Admin loginUser = adService.loginAdmin(a);
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginUser);
				System.out.println("업자컨트롤러 로그인유저" +loginUser);
				System.out.println("업자컨트롤러 로그인유저의 아파트 코드" +loginUser.getApCode());*/
				
				
				ArrayList<Admin> adlist = praService.praAdSelectList(loginUser);
				ArrayList<Annual> anlist = praService.praAnSelectList(loginUser.getApCode());
				ArrayList<TakingOver> talist = praService.praTaSelectList(loginUser.getApCode());
				
				if(adlist != null && anlist != null && talist != null) {
					mv.addObject("adlist", adlist);
					mv.addObject("anlist", anlist);
					mv.addObject("talist", talist);
					mv.setViewName("Practitioners/praMain");
				} else {
					throw new PractitionersException("메인뷰 출력 실패");
				}
				return mv;
				/*"Practitioners/praMain"*/
			}

	
		//====================================================== 연가 =============================================
		
		
		//연가 리스트 출력(페이지네이션 포함)
		@RequestMapping(value= "praAnnual.do", method= RequestMethod.GET)
		public ModelAndView annualList(@ModelAttribute Admin a, ModelAndView mv, HttpSession session, @RequestParam(value = "page", required = false) Integer page) {
			
			Admin loginUser = (Admin)session.getAttribute("loginUser");
			a.setApCode(loginUser.getApCode());
			
			int currentPage = page != null ? page : 1;
			ArrayList<Annual> list = praService.annualSelectList(currentPage, loginUser.getApCode());
			
			
			if(list != null) {
				mv.addObject("list", list);
				mv.addObject("pi", Pagination.getPageInfo());
				mv.setViewName("Practitioners/praAnnual");
			} else {
				throw new PractitionersException("연가 리스트 출력 실패");
			}
			
			return mv;
		}
		
		//연가 입력
		@RequestMapping("praAninsert.do")
		public String annualInsert(Annual an , HttpServletRequest request){
			
			
			int result = praService.annualInsert(an);

			if(result > 0) {
				return "redirect:praAnnual.do";
			} else {
				throw new PractitionersException("연가 입력 실패");
			}
		}
		
		//연가 수정
		@RequestMapping("anupdate.do")
		public String annualUpdate(ModelAndView mv, @ModelAttribute Annual an, HttpServletRequest request) {
			
			int result = praService.annualUpdate(an);
			
			if(result > 0) {		
				mv.addObject("an", an);
				return "redirect:praAnnual.do";
			} else {
				throw new PractitionersException("연가 수정 실패");
			}
		}
		
		//연가 삭제
		@RequestMapping("andelete.do")
		public String annualDelete(ModelAndView mv, @ModelAttribute Annual an, HttpServletRequest request) {
			
			int result = praService.annualDelete(an);
			
			if(result > 0) {			
				return "redirect:praAnnual.do";
			} else {
				throw new PractitionersException("연가 삭제 실패");
			}
		}
		

		
		//====================================================== 출근 =============================================
		
		//실무자 출근일지 셀렉트
			@RequestMapping(value= "praComJounal.do", method= RequestMethod.GET)
			public ModelAndView commuteList(@ModelAttribute Admin a, HttpSession session, ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
				
				Admin loginUser = (Admin)session.getAttribute("loginUser");
				a.setApCode(loginUser.getApCode());
				
				int currentPage = page != null ? page : 1;
				ArrayList<Commute> list = praService.commuteSelectList(currentPage, loginUser.getApCode());
				
				if(list != null) {
					mv.addObject("list", list);
					mv.addObject("pi", Pagination.getPageInfo());
					mv.setViewName("Practitioners/praCommuteJounal");
				} else {
					throw new PractitionersException("출근일지 출력 실패");
				}
				
				return mv;
			}
			
			//실무자 출근 인설트
			@RequestMapping("towork.do")
			public String commuteInsert(Commute co, HttpServletRequest request){

				int result = praService.commuteInsert(co);

				if(result > 0) {
					return "redirect:praMain.do";
				} else {
					throw new PractitionersException("출근 실패");
				}
			}
			
			//실무자 퇴근 업데이트
			@RequestMapping("offwork.do")
			public String commuteUpdate(Commute co, HttpServletRequest request) {

				int result = praService.commuteUpdate(co);
				
				if(result > 0) {			
					return "redirect:praMain.do";
				} else {
					throw new PractitionersException("퇴근 실패");
				}
			}
		
		
		
		
		//====================================================== 택배물 =============================================
			
			//관리실 택배리스트 셀렉트
			@RequestMapping(value="praDeliveryDb.do", method= RequestMethod.GET)
			public ModelAndView deliveryList(@ModelAttribute Admin a, HttpSession session, ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
				
				Admin loginUser = (Admin)session.getAttribute("loginUser");
				a.setApCode(loginUser.getApCode());

				int currentPage = page != null ? page : 1;
				ArrayList<Delivery> list = praService.deliverySelectList(currentPage, loginUser.getApCode());
				
				for(int i = 0; i < list.size(); i++) {
					if(list.get(i).getDeStatus().equals("Y")) {
						list.get(i).setDeStatus("미수령");
					}else {
						list.get(i).setDeStatus("수령");
					}
				}
				if(list != null) {
					mv.addObject("list", list);
					mv.addObject("pi", Pagination.getPageInfo());
					mv.setViewName("Practitioners/praDelivery");
				} else {
					throw new PractitionersException("택배목록 조회 실패");
				}
				return mv;
			}
			
			//관리실 택배물 등록
			@RequestMapping("dereceipt.do")
			public String deliveryInsert(Delivery de, HttpServletRequest request){
				
				int result = praService.deliveryInsert(de);

				if(result > 0) {

					mService.insertMyDelivery("de");
					
					return "redirect:praDeliveryDb.do";
				} else {
					throw new PractitionersException("택배물 등록 실패");
				}
			}
			
			//관리실 택배물 수령확인
			@RequestMapping("derecieve.do")
			public String deliveryUpdate(Delivery de, HttpServletRequest request) {
				
				int result = praService.deliveryUpdate(de);
				
				System.out.println(de);
				
				if(result > 0) {			
					return "redirect:praDeliveryDb.do";
				} else {
					throw new PractitionersException("택배물 수령 실패");
				}
			}
			

		
		
		//====================================================== 사용량 관리 =============================================
			
			//사용량 리스트 출력(페이지네이션 포함)
			@RequestMapping(value = "praHometax.do", method = RequestMethod.GET)
			public ModelAndView List(@ModelAttribute Admin a, HttpSession session, ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
				
				Admin loginUser = (Admin)session.getAttribute("loginUser");
				a.setApCode(loginUser.getApCode());
				
				int currentPage = page != null ? page : 1;
				ArrayList<Hometax> list = praService.hometaxSelectList(currentPage, loginUser.getApCode());
				
				if(list != null) {
					mv.addObject("list", list);
					mv.addObject("pi", Pagination.getPageInfo());
					mv.setViewName("Practitioners/praHometax");
				} else {
					throw new PractitionersException("사용량 출력 실패");
				}
				
				return mv;
			}
			
			//사용량 입력
			@RequestMapping("htinsert.do")
			public String Insert(Hometax ht, HttpServletRequest request){
				
				int result = praService.hometaxInsert(ht);

				if(result > 0) {
					return "redirect:praHometax.do";
				} else {
					throw new PractitionersException("사용량 입력 실패");
				}
			}
			
			//사용량 수정
			@RequestMapping("htupdate.do")
			public String Update(Hometax ht, HttpServletRequest request) {
				
				int result = praService.hometaxUpdate(ht);
				
				if(result > 0) {	
					return "redirect:praHometax.do";
				} else {
					throw new PractitionersException("사용량 수정 실패");
				}
			}
			
			//사용량 삭제
			@RequestMapping("htdelete.do")
			public String hometaxDelete(ModelAndView mv, @ModelAttribute Hometax ht, HttpServletRequest request) {
				
				int result = praService.hometaxDelete(ht);
				
				if(result > 0) {			
					return "redirect:praHometax.do";
				} else {
					throw new PractitionersException("사용량 삭제 실패");
				}
			}
			
		//====================================================== 순찰 =============================================
		
				
				@RequestMapping(value="praPatrolDb.do", method= RequestMethod.GET)
				public ModelAndView patrolMainList(@ModelAttribute Admin a, HttpSession session, ModelAndView mv) {
					
					Admin loginUser = (Admin)session.getAttribute("loginUser");
					a.setApCode(loginUser.getApCode());
					
					ArrayList<PatrolMain> list = praService.patrolMainSelectList(loginUser.getApCode());
					
					if(list != null) {
						mv.addObject("list", list);
						mv.setViewName("Practitioners/praPatrolMain");
					} else {
						throw new PractitionersException("순찰지역 입력 실패");
					}
					
					return mv;
				}
				
				
				@RequestMapping("pminsert.do")
				public String  patrolMainInsert(PatrolMain pm, HttpServletRequest request, @RequestParam(name="pmFile", required=false) MultipartFile file){

					if(!file.getOriginalFilename().equals("")) {
						String savePath = saveFile(file, request); //saveFile() 메소드로
						
						//파일이 잘 저장된 경우 파일명 DB에 저장
						if(savePath !=  null) {
							pm.setPmFileName(file.getOriginalFilename());
						}
						
					}
					
					int result = praService.patrolMainInsert(pm);
					
					//textarea의 개행문자를 <br>로 변경해 처리
					pm.setPmEtc(pm.getPmEtc().replace("\n", "<br>"));

					if(result > 0) {
						return "redirect:praPatrolDb.do";
					} else {
						throw new PractitionersException("순찰DB 입력 실패");
					}
				}
				
				
				public String saveFile(MultipartFile file, HttpServletRequest request) {
					//파일이 저장될 경로 설정
					//해당 resources는 webapp하위의 resources이다 -> 이미지, js, css 등을 보관
					
					String root = request.getSession().getServletContext().getRealPath("/resources/Practitioners");
					
					//파일의 경로는 root의 하위의 nuploadFiles이다
					String savePath = root+ "\\pmImg";
					
					System.out.println(savePath);
					
					File folder = new File(savePath); //savePath 의 폴더를 불러와서
					
					//해당 폴더위치가 존재하지 않는다면
					if(!folder.exists()) {
						folder.mkdirs(); //해당 디렉토리들을 만든다
					}
					
					//공지사항은 보통 관리자가 규칙을 가지고 업로드한다고 생각하고
					//파일명 바꾸어 주는 작업은 생략 -> 게시판에서 해보겠음
					
					String filePath = folder + "\\" + file.getOriginalFilename();
					//실제 저자될파일경로+넘어온 파일명
					System.out.println(filePath);
					
					try {
						file.transferTo(new File(filePath));
					} catch (Exception e) {
						System.out.println("파일 전송 에러: " + e.getMessage());
					}
					
					return filePath;
				}
				
				/*@RequestMapping("pmupdate.do")
				public String patrolMainUpdate(PatrolMain pm, HttpServletRequest request) {

					int result = praService.patrolMainUpdate(pm);
					
					if(result > 0) {			
						return "redirect:praPatrolDb.do";
					} else {
						throw new PractitionersException("##");
					}
				}
				 */
				@RequestMapping("pmdelete.do")
				public String patrolMainDelete(@RequestParam("pmCode") String pmCode, HttpServletRequest request) {
					
					//파일을 가져오기위한 셀렉트 원
					/*PatrolMain pm = praService.selectOne(pmCode);*/
					int result = praService.patrolMainDelete(pmCode);
					
					//해당 공지사항에 파일이 존재할경우
					/*if(pm.getPmFileName() != null) {
						//파일 삭제
						deleteFile(pm.getPmFileName(), request);
					}
					 */

					if(result > 0) {			
						return "redirect:praPatrolDb.do";
					} else {
						throw new PractitionersException("순찰지역 삭제 실패");
					}
				}


			private void deleteFile(String pmFileName, HttpServletRequest request) {
					String root = request.getSession().getServletContext().getRealPath("resources/Practitioners");
					String savePath = root + "\\pmImg";
				
					File deleteFile = new File(savePath + "\\" + pmFileName);
				
					if(deleteFile.exists()) {
						deleteFile.delete();
					}
					
				}


			//=========================================================================================

				// 순찰일지
				@RequestMapping(value = "praPatrolJournal.do", method = RequestMethod.GET)
				public ModelAndView patrolJournalList(@ModelAttribute Admin a, HttpSession session,ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
					
					Admin loginUser = (Admin)session.getAttribute("loginUser");
					a.setApCode(loginUser.getApCode());

					int currentPage = page != null ? page : 1;
					ArrayList<PatrolJournal> list = praService.patrolJournalSelectList(currentPage, loginUser.getApCode());
					
					if(list != null) {
						mv.addObject("list", list);
						mv.addObject("pi", Pagination.getPageInfo());
						mv.setViewName("Practitioners/praPatrolJournal");
					} else {
						throw new PractitionersException("순찰일지 수정 실패");
					}
					
					return mv;
				}
				
				
				@RequestMapping("pjinsert.do")
				public String patrolJournalInsert(PatrolJournal pj, HttpServletRequest request){
					
					int result = praService.patrolJournalInsert(pj);

					if(result > 0) {
						return "redirect:praPatrolJournal.do";
					} else {
						throw new PractitionersException("순찰일지 작성 실패");
					}
				}
				
				@RequestMapping("pjupdate.do")
				public String patrolJournalUpdate(PatrolJournal pj, HttpServletRequest request) {

					int result = praService.patrolJournalUpdate(pj);
					
					if(result > 0) {			
						return "redirect:praPatrolJournal.do";
					} else {
						throw new PractitionersException("순찰일지 수정 실패");
					}
				}
				
				//순찰일지 삭제
				@RequestMapping("pjdelete.do")
				public String patrolJournalDelete(ModelAndView mv, @ModelAttribute PatrolJournal pj, HttpServletRequest request) {
					
					int result = praService.patrolJournalDelete(pj);
					
					if(result > 0) {			
						return "redirect:praPatrolJournal.do";
					} else {
						throw new PractitionersException("순찰일지 삭제 실패");
					}
				}
		
				//====================================================== 인수인계 =============================================
				
				@RequestMapping(value = "praTakingOver.do", method = RequestMethod.GET)
				public ModelAndView takingOverList(@ModelAttribute Admin a, HttpSession session, ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
					
					Admin loginUser = (Admin)session.getAttribute("loginUser");
					a.setApCode(loginUser.getApCode());
			
					int currentPage = page != null ? page : 1;
					ArrayList<TakingOver> list = praService.takingOverSelectList(currentPage, loginUser.getApCode());
					
					if(list != null) {
						mv.addObject("list", list);
						mv.addObject("pi", Pagination.getPageInfo());
						mv.setViewName("Practitioners/praTakingOver");
					} else {
						throw new PractitionersException("인수인계사항 출력 실패");
					}
					
					return mv;
				}
				
				
				@RequestMapping("tainsert.do")
				public String takingOverInsert(TakingOver to, HttpServletRequest request){
					
					
					int result = praService.takingOverInsert(to);

					if(result > 0) {
						return "redirect:praTakingOver.do";
					} else {
						throw new PractitionersException("인수인계 입력 실패");
					}
				}
				
				@RequestMapping("taupdate.do")
				public String takingOverUpdate(TakingOver to, HttpServletRequest request) {

					int result = praService.takingOverUpdate(to);
					
					if(result > 0) {			
						return "redirect:praTakingOver.do";
					} else {
						throw new PractitionersException("인수인계 수정 실패");
					}
				}
				
				@RequestMapping("tadelete.do")
				public String takingOverDelete(TakingOver to, HttpServletRequest request) {

					int result = praService.takingOverDelete(to);
					
					if(result > 0) {			
						return "redirect:praTakingOver.do";
					} else {
						throw new PractitionersException("인수인계 삭제 실패");
					}
				}
		
		//====================================================== 차량 =============================================
		
				@RequestMapping("praCarDb.do")
				public ModelAndView carDbList(@ModelAttribute Admin a, HttpSession session, ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
					
					Admin loginUser = (Admin)session.getAttribute("loginUser");
					a.setApCode(loginUser.getApCode());
					
					int currentPage = page != null ? page : 1;
					ArrayList<Member> list = praService.carDbSelectList(currentPage, loginUser.getApCode());				
			
					if(list != null) {
						mv.addObject("list", list);
						mv.addObject("pi", Pagination.getPageInfo());
						mv.setViewName("Practitioners/praCarDb");
					} else {
						throw new PractitionersException("차량정보 조회 실패");
					}
			
					return mv;
				}

				
				
				
				
				
				
	
	
	
	@RequestMapping("pMessageForm.do")
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
			mv.setViewName("Practitioners/facMessageForm");
		}
		return mv;
	}
	@RequestMapping("pReceiveDetail.do")
	public ModelAndView messageReceiveDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("Practitioners/facReceiveDetail");
		}else {
			throw new MasterException("메세지 상세 조회를 실패하였습니다.");
		}
		return mv;
	}
	@RequestMapping("pSendedForm.do")
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
			mv.setViewName("Practitioners/facSendedForm");
		}
		return mv;
	}
	
	@RequestMapping("pMsgSendForm.do")
	public String goWritieForm() {
		return "Practitioners/facWriterForm";
	}
	@RequestMapping("pmessageWrite.do")
	public String writeMessage(Message message, RedirectAttributes redirect) {
		int result = facService.messageWrite(message);
		if(result > 0) {
			redirect.addAttribute("maName", message.getMeWriter()); 
			return "redirect:pMsgSendForm.do";
		}else {
			throw new MasterException("메세지 전송을 실패하였습니다.");
		}
	}
	@RequestMapping("pmessageLock.do")
	public String messageLock(String meReceiver, String meCode, RedirectAttributes redirect) {
		int result = facService.messageLock(meCode);
		if(result > 0) {
			redirect.addAttribute("aName", meReceiver);
			return "redirect:pLockerForm.do";
		}else {
			throw new MasterException("메세지 보관에 실패하였습니다.");
		}
	}
	@RequestMapping("pLockerForm.do")
	public ModelAndView goTrashForm(ModelAndView mv, @RequestParam(value="page", required=false) Integer page, @RequestParam(name="aName") String maName) {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setCurrentPage(page != null ? page : 1);
		pageInfo.setWriter(maName);
		pageInfo.setReceiver(maName);
		
		ArrayList<Message> meList = facService.selectLockerList(pageInfo);
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
			mv.setViewName("Practitioners/facLockerForm");
		}
		return mv;
	}
	@RequestMapping("pSendedDetail.do")
	public ModelAndView messageSendedDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("Practitioners/facSendedDetail");
		}else {
			throw new MasterException("메세지 상세조회를 실패하였습니다.");
		}
		return mv;
	}
	@RequestMapping("pmessageDelete.do")
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
	@RequestMapping("pmeLockDetail.do")
	public ModelAndView messageLockDetail(ModelAndView mv, String meCode, HttpServletRequest request, HttpServletResponse response) {
		Message message = null;
		message = facService.messageDetailView(meCode);
		if(message != null) {
			mv.addObject("message", message);
			mv.setViewName("Practitioners/facLockerDetail");
		}else {
			throw new MasterException("메시지 상세조회를 실패하였습니다.");
		}
		return mv;
	}
	
	// 개인정보 수정 이동
	@RequestMapping("pdetailadmin.do")
	public String toUpdateMyInfo() {
		
		return "Practitioners/admindetail";
	}
	

	@RequestMapping("pupdateadmin.do")
	public String updateMember(HttpSession session, Model model, @ModelAttribute Admin a) {
		Admin loginUser = (Admin)session.getAttribute("loginUser");
		a.setaCode(loginUser.getaCode());
		System.out.println(a);
		int result = adService.updateAdmin(a);		

		Admin updateMember = adService.loginAdmin(a);
		
		if(result > 0) {
			model.addAttribute("msg", "개인정보가 수정되었습니다");
			model.addAttribute("loginUser", updateMember);
			
			return "Practitioners/admindetail";
		}else {
			throw new FacilityException("개인정보 수정 실패");
		}
	}
	@RequestMapping("pupdateform.do")
	public String facupdateform(HttpSession session,String pwd) {
		Admin loginUser = (Admin)session.getAttribute("loginUser");
		Admin ck = new Admin();
		ck.setaCode(loginUser.getaCode());
		ck.setaPwd(pwd);
		if(bcryptPasswordEncoder.matches(pwd, loginUser.getaPwd())) {
			return "Practitioners/updateac";
		}else {
			throw new FacilityException("비밀번호 입력 실패");
		}
	}

}


