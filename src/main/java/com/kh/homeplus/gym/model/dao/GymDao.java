package com.kh.homeplus.gym.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.gym.model.vo.Gym;

@Repository("gymDao")
public class GymDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int insertGym(Gym g) {
		return sqlSession.insert("gymMapper.insertGym",g);
	}


	public int checkMcode(String mCode) {
		return sqlSession.selectOne("gymMapper.searchGym",mCode);
	}


	public int mGymList() {
		return sqlSession.selectOne("gymMapper.listGym");
	}

}
