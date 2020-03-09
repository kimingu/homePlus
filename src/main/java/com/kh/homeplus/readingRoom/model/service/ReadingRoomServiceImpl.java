package com.kh.homeplus.readingRoom.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.readingRoom.model.dao.ReadingRoomDao;
import com.kh.homeplus.readingRoom.model.vo.ReadingRoom;
@Service("rService")
public class ReadingRoomServiceImpl implements ReadingRoomService {
	@Autowired
	private ReadingRoomDao rDao;

	@Override
	public int checkMcode(String mCode) {
		System.out.println("rService");
		return rDao.checkMcode(mCode);
	}

	@Override
	public int insertRea(ReadingRoom r) {
		return rDao.insertRea(r);
	}

	@Override
	public ArrayList<ReadingRoom> selectList() {
		return rDao.selectList();
	}

	@Override
	public int cancelAdRea(int reaSeat) {
		return rDao.cancelAdRea(reaSeat);
	}

	@Override
	public ArrayList<ReadingRoom> adSearchM(String mName) {
		return rDao.adSearchM(mName);
	}
	


}
