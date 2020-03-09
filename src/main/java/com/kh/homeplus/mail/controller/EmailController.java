package com.kh.homeplus.mail.controller;

import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.homeplus.admin.controller.AdminController;
import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.master.model.service.MasterService;
import com.kh.homeplus.member.controller.MemberController;
import com.kh.homeplus.member.model.vo.Member;

@Controller
public class EmailController {
	@Autowired
	private AdminController aController;
	@Autowired
	private MemberController mController;
	@Autowired
	private MasterService maService;

	@RequestMapping("navermailtest.do")
	public String navermailtest(HttpServletRequest request, Member m, final ModelMap mo, String mId, String mName,
			String mEmail) throws Exception {
		// 메일 관련 정보
		String host = "smtp.naver.com";
		final String username = "homeplus30"; // 네이버 이메일 주소중 @ naver.com앞주소만 기재합니다.
		final String password = "homeplus2631"; // 네이버 이메일 비밀번호를 기재합니다.
		int port = 465;
		// 메일 내용
		String recipient = mEmail;
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		String AuthenticationKey = temp.toString();
		// 메일을 발송할 이메일 주소를 기재해 줍니다.
		String subject = "* 안녕하세요 HOMEPLUS " + mName + "님의 임시 비밀번호 입니다 *";
		String body = "귀하의 임시 비밀번호는 " + AuthenticationKey + "입니다. 로그인 후 비밀번호 변경을 통해 변경하여 사용해주시기 바랍니다.";

		Properties props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un = username;
			String pw = password;

			protected PasswordAuthentication getPasswordAuthentication() {
				mo.addAttribute("msg", "임시비밀번호가 전송되었습니다.");
				return new PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); // for debug
		Message mimeMessage = new MimeMessage(session);
		mimeMessage.setFrom(new InternetAddress("homeplus30@naver.com"));
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
		mimeMessage.setSubject(subject);
		mimeMessage.setText(body);
		Transport.send(mimeMessage);

		m.setmId(mId);
		m.setmPwd(AuthenticationKey);

		mController.updateMyPwd2(m);

		return "member/findMemberPwd";
	}

	@RequestMapping("navermailtest2.do")
	public String navermailtest(HttpServletRequest request, Admin a, final ModelMap mo, String aId, String aName,
			String aEmail) throws Exception {
		// 메일 관련 정보
		String host = "smtp.naver.com";
		final String username = "homeplus30"; // 네이버 이메일 주소중 @ naver.com앞주소만 기재합니다.
		final String password = "homeplus2631"; // 네이버 이메일 비밀번호를 기재합니다.
		int port = 465;
		// 메일 내용
		String recipient = aEmail;
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		String AuthenticationKey = temp.toString();
		// 메일을 발송할 이메일 주소를 기재해 줍니다.
		String subject = "* 안녕하세요 HOMEPLUS " + aName + "님의 임시 비밀번호 입니다 *";
		String body = "귀하의 임시 비밀번호는 " + AuthenticationKey + "입니다. 로그인 후 비밀번호 변경을 통해 변경하여 사용해주시기 바랍니다.";

		Properties props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un = username;
			String pw = password;

			protected PasswordAuthentication getPasswordAuthentication() {
				mo.addAttribute("msg", "임시비밀번호가 전송되었습니다.");
				return new PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); // for debug
		Message mimeMessage = new MimeMessage(session);
		mimeMessage.setFrom(new InternetAddress("homeplus30@naver.com"));
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
		mimeMessage.setSubject(subject);
		mimeMessage.setText(body);
		Transport.send(mimeMessage);

		a.setaId(aId);
		a.setaPwd(AuthenticationKey);

		aController.updateMyPwd3(a);

		return "admin/findAdminPwd";
	}

	@RequestMapping("masterMailWrite.do")
	public String masterMailWrite(HttpServletRequest request, Member m, final ModelMap mo, String meReceiver, String selectRadio, String meTitle, String meContent) throws AddressException, MessagingException {
		// 메일 관련 정보
		String host = "smtp.naver.com";
		final String username = "homeplus30"; // 네이버 이메일 주소중 @ naver.com앞주소만 기재합니다.
		final String password = "homeplus2631"; // 네이버 이메일 비밀번호를 기재합니다.
		int port = 465;
		Properties props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		
		System.out.println("한글나오니: " + meContent);
		if(selectRadio.equals("selectPersonal")) {			
			String[] receiver = meReceiver.split(", ");
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				String un = username;
				String pw = password;
				protected PasswordAuthentication getPasswordAuthentication() {
					mo.addAttribute("msg", "메일 전송이 완료되었습니다.");
					return new PasswordAuthentication(un, pw);
				}
			});
			String[] meContents = new String[receiver.length];
			for(int i = 0; i < receiver.length; i++) {
			meContents[i] =
					"<link href=\"https://fonts.googleapis.com/css?family=Do+Hyeon|Jua|Nanum+Gothic+Coding|Noto+Serif+KR&display=swap\" rel=\"stylesheet\">\r\n" + 
					"<div style=\"width: 100%; background: lightgrey; text-align: center;\">\r\n" + 
					"<div style=\"height:50px;background: #28629e;width: 800px; display: inline-block;\">\r\n" + 
					"    <img style=\"height: 70%; padding-top:10px\" src=\"https://postfiles.pstatic.net/MjAyMDAxMjhfNjYg/MDAxNTgwMTkxMjM5NjY0.T4xjokbeOsBw5zqTLu-X8lyMnvqvFtVd-oOarYYDkhYg.nNXiK68oS1l7CoFACgzk9JKcWRxojxOcZG2th2htyTIg.PNG.nbg8110/logo.png?type=w966\">\r\n" + 
					"</div>\r\n" + 
					"<div style=\"background: white;width: 800px;overflow:hidden; display: inline-block;\">\r\n" + 
					"    <br>\r\n" + 
					"    <h3 style=\"font-family: 'Do Hyeon', sans-serif;\">" +
					receiver[i]
							+"님 안녕하세요!</h3>\r\n"+ 
							"    <h3 style=\"color:#28629e;font-size: 250%;font-family: 'Do Hyeon', sans-serif;\">스마트 홈라이프의 시작, 홈플러스입니다</h3>" + meContent +
							"    <br><hr>\r\n" + 
							"    <pre style=\"font-family: 'Do Hyeon', sans-serif;\">\r\n" + 
							"\r\n" + 
							"이 메일은 발신전용으로 회신이 되지 않습니다.\r\n" + 
							"더 궁금하신 사항은 홈플러스 고객센터로 문의해 주시기 바랍니다.\r\n" + 
							"    </pre>\r\n" + 
							"    <a href=\"http://192.168.10.8:8800/homeplus/intro.do\" target=\"_blank\">\r\n" + 
							"        <img style=\"width: 650px\" src=\"https://postfiles.pstatic.net/MjAyMDAxMjhfNjAg/MDAxNTgwMTk4MzQzOTE4.qpaVXkIRZB604VjE7L_EvivzB50ybkpN19mHHglH92Eg.cQ8AODhYJMCiKkn_LNRXFC3Z1EdS98NJaqqSD0NXTtMg.JPEG.nbg8110/logoLook.jpg?type=w966\">\r\n" + 
							"    </a>\r\n" + 
							"    <a href=\"http://pf.kakao.com/_XxhLMxb\" target=\"_blank\">\r\n" + 
							"    <img style=\"width: 650px\" src=\"https://postfiles.pstatic.net/MjAyMDAxMjhfMTIy/MDAxNTgwMTk2Mzc0ODEy.3QtZ_sLyt4hp--JVs0yGMfNWmzmxGroDIYbb6tMhpj0g.aver6qWSOuptCD0Ibhfn0hVhW0spath0qNcT_0y_8dog.PNG.nbg8110/kakao.png?type=w966\">\r\n" + 
							"    </a>\r\n" + 
							"    <br><br>\r\n" + 
							"    <img style=\"width:800px;height:50px\" src=\"https://postfiles.pstatic.net/MjAyMDAyMDZfMTg5/MDAxNTgwOTU5NDM3MzQ2.UGk7Aa894K3k0QIm20zNEkFhafJ9aUIrY3n0-EQi8Lkg.3hTDpeJqX4428DjBrwEgqexvtwC9A3P2F-hoGb02SzMg.PNG.nbg8110/111.png?type=w966\">\r\n" + 
							"</div>\r\n" + 
							"</div>";
			}
			for(int i = 0; i < receiver.length; i++) {
				session.setDebug(true); // for debug
				Message mimeMessage = new MimeMessage(session);
				mimeMessage.setFrom(new InternetAddress("homeplus30@naver.com"));
				mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(receiver[i]));
				mimeMessage.setSubject(meTitle);
				mimeMessage.setContent(meContents[i], "text/html; charset=EUC-KR");

				Transport.send(mimeMessage);
			}
		}else if(selectRadio.equals("selectAll")) {
			ArrayList<Member> mList = maService.selectMemberEmail();
			String[] allReceiver = new String[mList.size()];
			for(int i = 0; i < mList.size(); i++) {
				allReceiver[i] = mList.get(i).getmEmail();
			}
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				String un = username;
				String pw = password;
				protected PasswordAuthentication getPasswordAuthentication() {
					mo.addAttribute("msg", "메일 전송이 완료되었습니다.");
					return new PasswordAuthentication(un, pw);
				}
			});
			String[] meContents = new String[allReceiver.length];
			for(int i = 0; i < allReceiver.length; i++) {
			meContents[i] =
					"<link href=\"https://fonts.googleapis.com/css?family=Do+Hyeon|Jua|Nanum+Gothic+Coding|Noto+Serif+KR&display=swap\" rel=\"stylesheet\">\r\n" + 
					"<div style=\"width: 100%; background: lightgrey; text-align: center;\">\r\n" + 
					"<div style=\"height:50px;background: #28629e;width: 800px; display: inline-block;\">\r\n" + 
					"    <img style=\"height: 70%; padding-top:10px\" src=\"https://postfiles.pstatic.net/MjAyMDAxMjhfNjYg/MDAxNTgwMTkxMjM5NjY0.T4xjokbeOsBw5zqTLu-X8lyMnvqvFtVd-oOarYYDkhYg.nNXiK68oS1l7CoFACgzk9JKcWRxojxOcZG2th2htyTIg.PNG.nbg8110/logo.png?type=w966\">\r\n" + 
					"</div>\r\n" + 
					"<div style=\"background: white;width: 800px;overflow:hidden; display: inline-block;\">\r\n" + 
					"    <br>\r\n" + 
					"    <h3 style=\"font-family: 'Do Hyeon', sans-serif;\">" +
					allReceiver[i]
					+"님 안녕하세요!</h3>\r\n"+ 
							"    <h3 style=\"color:#28629e;font-size: 250%;font-family: 'Do Hyeon', sans-serif;\">스마트 홈라이프의 시작, 홈플러스입니다</h3>" + meContent +
							"    <br><hr>\r\n" + 
							"    <pre style=\"font-family: 'Do Hyeon', sans-serif;\">\r\n" + 
							"\r\n" + 
							"이 메일은 발신전용으로 회신이 되지 않습니다.\r\n" + 
							"더 궁금하신 사항은 홈플러스 고객센터로 문의해 주시기 바랍니다.\r\n" + 
							"    </pre>\r\n" + 
							"    <a href=\"http://192.168.10.8:8800/homeplus/intro.do\" target=\"_blank\">\r\n" + 
							"        <img style=\"width: 650px\" src=\"https://postfiles.pstatic.net/MjAyMDAxMjhfNjAg/MDAxNTgwMTk4MzQzOTE4.qpaVXkIRZB604VjE7L_EvivzB50ybkpN19mHHglH92Eg.cQ8AODhYJMCiKkn_LNRXFC3Z1EdS98NJaqqSD0NXTtMg.JPEG.nbg8110/logoLook.jpg?type=w966\">\r\n" + 
							"    </a>\r\n" + 
							"    <a href=\"http://pf.kakao.com/_XxhLMxb\" target=\"_blank\">\r\n" + 
							"    <img style=\"width: 650px\" src=\"https://postfiles.pstatic.net/MjAyMDAxMjhfMTIy/MDAxNTgwMTk2Mzc0ODEy.3QtZ_sLyt4hp--JVs0yGMfNWmzmxGroDIYbb6tMhpj0g.aver6qWSOuptCD0Ibhfn0hVhW0spath0qNcT_0y_8dog.PNG.nbg8110/kakao.png?type=w966\">\r\n" + 
							"    </a>\r\n" + 
							"    <br><br>\r\n" + 
							"    <img style=\"width:800px;height:50px\" src=\"https://postfiles.pstatic.net/MjAyMDAyMDZfMTg5/MDAxNTgwOTU5NDM3MzQ2.UGk7Aa894K3k0QIm20zNEkFhafJ9aUIrY3n0-EQi8Lkg.3hTDpeJqX4428DjBrwEgqexvtwC9A3P2F-hoGb02SzMg.PNG.nbg8110/111.png?type=w966\">\r\n" + 
							"</div>\r\n" + 
							"</div>";
			}
			
			for(int i = 0; i < allReceiver.length; i++) {
				session.setDebug(true); // for debug
				Message mimeMessage = new MimeMessage(session);
				mimeMessage.setFrom(new InternetAddress("homeplus30@naver.com"));
				mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(allReceiver[i]));
				mimeMessage.setSubject(meTitle);
				mimeMessage.setContent(meContents[i], "text/html");

				Transport.send(mimeMessage);
			}
		} 
		return "master/masterSendMailForm";
	}

}