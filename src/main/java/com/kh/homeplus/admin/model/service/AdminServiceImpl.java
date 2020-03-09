package com.kh.homeplus.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.admin.model.dao.AdminDao;
import com.kh.homeplus.admin.model.vo.Admin;

@Service("adService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao adDao;
	


	@Override
	public int checkIadDup(String id) {
		return adDao.checkIdDup(id);
	}

	@Override
	public int insertAdmin(Admin a) {
		
		return adDao.insertAdmin(a);
	}

	@Override
	public Admin loginAdmin(Admin a) {
		return adDao.loginAdmin(a);
	}

	@Override
	public int updateMyPwd3(Admin a) {
		return adDao.updateMyPwd3(a);
	}

	@Override
	public int updateAdmin(Admin a) {
		return adDao.updateAdmin(a);
	}

	@Override
	public Admin ckpwd(Admin ck) {
		return adDao.ckpwd(ck);
	}



}
