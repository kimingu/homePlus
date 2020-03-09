package com.kh.homeplus.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.member.model.vo.Member;

@Repository("adDao")
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertAdmin(Admin a) {
		return sqlSession.insert("adminMapper.insertAdmin",a);
	}

	public int checkIdDup(String id) {
		return sqlSession.selectOne("adminMapper.checkIdaDup", id);
	}

	public Admin loginAdmin(Admin a) {
			return sqlSession.selectOne("adminMapper.adminLogin", a);
		}

	public int updateMyPwd3(Admin a) {
		return sqlSession.update("adminMapper.updatePwd3",a);
	}

	public int updateAdmin(Admin a) {
		return sqlSession.update("adminMapper.updateAdmin", a);
	}


	public Admin ckpwd(Admin ck) {
		return sqlSession.selectOne("adminMapper.ckpwd",ck);
	}
	

}
