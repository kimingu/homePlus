package com.kh.homeplus.readingRoom.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.readingRoom.model.vo.ReadingRoom;

@Repository("rDao")
public class ReadingRoomDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public int checkMcode(String mCode) {
		System.out.println("mDao");
		return sqlSession.selectOne("readingMapper.searchReading",mCode);
	}


	public int insertRea(ReadingRoom r) {
		return sqlSession.insert("readingMapper.insertReading",r);
	}


	public ArrayList<ReadingRoom> selectList() {
		return (ArrayList)sqlSession.selectList("readingMapper.selectList");
	}


	public int cancelAdRea(int reaSeat) {
		return sqlSession.update("readingMapper.cancelAdReading",reaSeat);
	}


	public ArrayList<ReadingRoom> adSearchM(String mName) {
		return (ArrayList)sqlSession.selectList("readingMapper.adSearchReMember",mName);
	}
	
	
}
