package com.kh.homeplus.readingRoom.model.service;

import java.util.ArrayList;

import com.kh.homeplus.readingRoom.model.vo.ReadingRoom;

public interface ReadingRoomService {



	public int checkMcode(String mCode);

	public int insertRea(ReadingRoom r);

	public ArrayList<ReadingRoom> selectList();

	public int cancelAdRea(int reaSeat);

	public ArrayList<ReadingRoom> adSearchM(String mName);
	
}
