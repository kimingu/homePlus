package com.kh.homeplus.bulletinBoard.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.bulletinBoard.model.dao.BulletinDao;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;

@Service("BulletinService")
public class BulletinServiceImpl implements  BulletinService{
	@Autowired BulletinDao bd;


	@Override
	public int insertBulletin(BulletinBoard bb) {
		return bd.insertBulletin(bb);
	}
	
	
	
	
	
}
