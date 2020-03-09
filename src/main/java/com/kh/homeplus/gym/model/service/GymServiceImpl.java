package com.kh.homeplus.gym.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.gym.model.dao.GymDao;
import com.kh.homeplus.gym.model.vo.Gym;

@Service("gymService")
public class GymServiceImpl implements GymService {
	@Autowired
	private GymDao gymDao;
	
	@Override
	public int checkMcode(String mCode) {
		
		return gymDao.checkMcode(mCode);
	}

	@Override
	public int insertGym(Gym g) {
		return gymDao.insertGym(g);
	}

	@Override
	public int mGymList() {
		return gymDao.mGymList();
	}
	
	

	

}
