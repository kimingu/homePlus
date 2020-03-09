package com.kh.homeplus.admin.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.homeplus.admin.model.service.AdminService;
import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.member.model.exception.MemberException;

@SessionAttributes("loginUser")
@Controller
public class AdminController {
	@Autowired
	private AdminService adService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 회원가입 폼
		@RequestMapping("admininsert.do")
		public String insertMember() {
			return "admin/insertAdminPage";
		}
		// 아이디 중복확인
		@RequestMapping("adupid.do")
		public ModelAndView idDuplicateCheck(String id, ModelAndView mv) {
			boolean isUsable = adService.checkIadDup(id) == 0 ? true : false;
			Map map = new HashMap();
			map.put("isUsable", isUsable);
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
			return mv;
		}
		// 관리자 회원가입
		@RequestMapping("adinsert.do")
		public String memberInsert(Admin a,
								Model model,
								HttpServletRequest request,
								@RequestParam("post") String post,
								@RequestParam("address1") String address1,
								@RequestParam("address2") String address2) {
			String encPwd = bcryptPasswordEncoder.encode(a.getaPwd());
			
			a.setaPwd(encPwd);
			a.setaAddress(post + "/" + address1 + "/" + address2);
			

			System.out.println(a);
			int result = adService.insertAdmin(a);
			System.out.println(a);
			if(result > 0) {
				
				model.addAttribute("msg", "회원가입이 완료되었습니다.");
				return "login";
			}else {
				throw new MemberException("회원가입 실패!");
			}
		}
		// 로그인 회원가입 안돼서 가라로 로그인하려고 주석처리했으니까 회원가입 정상적으로 되시면 주석 해제해주세요
				@RequestMapping(value="alogin.do", method = {RequestMethod.GET, RequestMethod.POST})
				public String memberLogin(Admin a,Model model, HttpServletRequest request) { 
					Admin loginUser = adService.loginAdmin(a);
					HttpSession session = request.getSession();
					session.setAttribute("loginUser", loginUser);
					System.out.println(loginUser);
					if(loginUser != null && bcryptPasswordEncoder.matches(a.getaPwd(), loginUser.getaPwd())) {
						model.addAttribute("loginUser", loginUser);
						if(loginUser.getaDepartment().equals("시설")) {
							return "redirect:facilitymain.do";
						}else if(loginUser.getaDepartment().equals("미화") || loginUser.getaDepartment().equals("인력")) {
							return "redirect:clist.do";
						}else if(loginUser.getaDepartment().equals("보안")) {
							return "redirect:praMain.do";
						}else if(loginUser.getaDepartment().equals("편의시설")) {
							return"redirect:rclist.do";
						}else if(loginUser.getaId().equals("master")) {
							return"redirect:master.do";
						}else {
							model.addAttribute("msg", "아이디 또는 비밀번호가 틀렸습니다.");
							return "login";
						}
					}else {
						model.addAttribute("msg", "아이디 또는 비밀번호가 틀렸습니다.");
						return "login";
					}
				}
				
				
				// 로그아웃
				@RequestMapping("alogout.do")
				public String logout(SessionStatus status) {			
					status.setComplete();
					return "login";
				}
				
				// 비밀번호 찾기(폼)
				@RequestMapping("findmPwd2.do")
				public String findmPwd() {
					return "admin/findAdminPwd";
				}
				
				// 임시비밀번호 변경
				@RequestMapping("updateMyPwd3.do")
				public String updateMyPwd3(Admin a) throws MemberException {
					;
					System.out.println(a);
					String newPwd = bcryptPasswordEncoder.encode(a.getaPwd());
					a.setaPwd(newPwd);
					System.out.println(a);
					int result = adService.updateMyPwd3(a);
					
					if(result < 1) {
						throw new MemberException("비밀번호 변경 실패 에러");
					}else {
						return "";
					}
				}
				
				
	
}
