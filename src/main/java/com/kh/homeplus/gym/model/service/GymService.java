package com.kh.homeplus.gym.model.service;

import com.kh.homeplus.gym.model.vo.Gym;

public interface GymService {

	public int insertGym(Gym g);

	public int checkMcode(String mCode);

	public int mGymList();

}
