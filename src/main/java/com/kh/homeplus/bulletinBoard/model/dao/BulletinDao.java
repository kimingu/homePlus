package com.kh.homeplus.bulletinBoard.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;

@Repository("Buldao")
public class BulletinDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertBulletin(BulletinBoard bb) {
		return sqlSession.insert("bulletinMapper.insertbulletin",bb);
	}

}