package com.kh.homeplus.guestRoom.model.service;

import java.util.ArrayList;

import com.kh.homeplus.guestRoom.model.vo.GuestRoom;

public interface GuestRoomService {

	public int checkMcode(GuestRoom gr);

	public int insertGue(GuestRoom gr);

	public ArrayList<GuestRoom> selectList(int guerRoom);

	public ArrayList<GuestRoom> adGuestList();

	public ArrayList<GuestRoom> adSearchGMem(String mName);

}
