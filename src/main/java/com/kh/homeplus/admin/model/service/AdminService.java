package com.kh.homeplus.admin.model.service;

import java.util.ArrayList;

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.master.model.vo.Message;
import com.kh.homeplus.master.model.vo.PageInfo;

public interface AdminService {


	public int checkIadDup(String id);

	public int insertAdmin(Admin a);

	public Admin loginAdmin(Admin a);

	public int updateMyPwd3(Admin a);

	public int updateAdmin(Admin a);
	
	public Admin ckpwd(Admin ck);

	

}
