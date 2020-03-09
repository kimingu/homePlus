package com.kh.homeplus.bulletinBoard.cotroller;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.homeplus.bulletinBoard.model.service.BulletinService;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.member.model.exception.MemberException;



@Controller
public class BulletinController {
	@Autowired
	private BulletinService bs;
	
	@RequestMapping("bulletin.do")
	public String bulletin() {
		
		return "bulletinBoard/bulletinBoard";
	}
	
	@RequestMapping("bulinsert.do")
	public String bulinsert(HttpServletRequest request,BulletinBoard bb, 
			@RequestParam(value="bbDcategory1")String bbDcategory1,@RequestParam(value="bbDcategory2")String bbDcategory2,@RequestParam(value="bbDcategory3")String bbDcategory3,@RequestParam(value="bbDcategory4")String bbDcategory4
			, @RequestParam(value="file", required=false) MultipartFile file, Model model) {
		if(bbDcategory4 !=null) {
		bb.setBbDcategory(bbDcategory1+"/"+bbDcategory2 +"/"+bbDcategory3+"/"+bbDcategory4);
		}else {
			bb.setBbDcategory(bbDcategory1+"/"+bbDcategory2 +"/"+bbDcategory3);
		}
		
		System.out.println(bb);
		
		if(!file.getOriginalFilename().equals("")) {
			
	         String renameFileName = saveFile(file, request);
	         
	         if(renameFileName != null) {
	           bb.setBbOriginName(file.getOriginalFilename());
	           bb.setBbReName(renameFileName);
	         }
	      }
		
		int result = bs.insertBulletin(bb);
		
		if(result > 0) {
			model.addAttribute("msg", "작성이 완료되었습니다.");
			return "bulletinBoard/bulletinBoard";
		}else {
			throw new MemberException("회원가입 실패!");
		}
	}
	
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\bulloadFiles";
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new java.util.Date()) + "." + originFileName.substring(originFileName.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + renameFileName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		
		return renameFileName;
	}
	
	
	

	
}
