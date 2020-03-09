package com.kh.homeplus.guestRoom.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.guestRoom.model.vo.GuestRoom;

@Repository("grDao")
public class GuestRoomDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int checkMcode(GuestRoom gr) {
		return sqlSession.selectOne("guestMapper.searchGuest",gr);
	}

	public int insertGue(GuestRoom gr) {
		System.out.println(gr);
		return sqlSession.insert("guestMapper.insertGuest",gr);
		
	}

	public ArrayList<GuestRoom> selectList(int guerRoom) {
		return (ArrayList)sqlSession.selectList("guestMapper.guestList",guerRoom);	
	}

	public ArrayList<GuestRoom> adGuestList() {
		return (ArrayList)sqlSession.selectList("guestMapper.adGuestList");
	}

	public ArrayList<GuestRoom> adSearchGMem(String mName) {
		return (ArrayList)sqlSession.selectList("guestMapper.adSearchReGMember",mName);
	}

}
