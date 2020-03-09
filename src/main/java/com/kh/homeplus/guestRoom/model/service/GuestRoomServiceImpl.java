package com.kh.homeplus.guestRoom.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.guestRoom.model.dao.GuestRoomDao;
import com.kh.homeplus.guestRoom.model.vo.GuestRoom;

@Service("grService")
public class GuestRoomServiceImpl implements GuestRoomService {
	@Autowired
	private GuestRoomDao grDao;

	@Override
	public int checkMcode(GuestRoom gr) {
		return grDao.checkMcode(gr);
	}


	@Override
	public int insertGue(GuestRoom gr) {
		System.out.println(gr);
		return grDao.insertGue(gr);
	}


	@Override
	public ArrayList<GuestRoom> selectList(int guerRoom) {
	
		return grDao.selectList(guerRoom);
	}


	@Override
	public ArrayList<GuestRoom> adGuestList() {
		return grDao.adGuestList();
	}


	@Override
	public ArrayList<GuestRoom> adSearchGMem(String mName) {
		return grDao.adSearchGMem(mName);
	}


	



	
	
	
}
