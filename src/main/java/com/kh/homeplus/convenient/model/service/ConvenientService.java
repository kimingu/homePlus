package com.kh.homeplus.convenient.model.service;

import java.util.ArrayList;

import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportWorker;

public interface ConvenientService {
	
	ArrayList<BulletinBoard> selectConList(int currentPage);
	
	ArrayList selectCountBulletinBoard();

	BulletinBoard selectBulletinBoard(String bbCode);

	ArrayList<BulletinBoard> reportBulletinBoardSearch(int currentPage, SearchConditionReportWorker sc);

	int updateBulletinBoard1(String bbCode);

	int updateBulletinBoard2(String bbCode);

	

}
