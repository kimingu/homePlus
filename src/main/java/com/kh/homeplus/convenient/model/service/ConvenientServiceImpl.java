package com.kh.homeplus.convenient.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.common.vo.PageInfo;
import com.kh.homeplus.convenient.model.dao.ConvenientDao;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportWorker;

@Service("conService")
public class ConvenientServiceImpl implements ConvenientService {
	@Autowired
private ConvenientDao conDao;
	
	@Override
	public ArrayList<BulletinBoard> selectConList(int currentPage) {
		int listCount = conDao.getConListCount();
		
		// 페이지 정보 저장
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
				
		// 리스트 조회
		return conDao.selectConList(pi);
	}
	@Override
	public ArrayList selectCountBulletinBoard() {
		return conDao.selectCountBulletinBoard();
	}
	@Override
	public BulletinBoard selectBulletinBoard(String bbCode) {
		BulletinBoard bib = conDao.selectBulletinBoard(bbCode);
		return bib;
	}
	@Override
	public ArrayList<BulletinBoard> reportBulletinBoardSearch(int currentPage, SearchConditionReportWorker sc) {
		int listCount = conDao.reportBulletinBoardSearchCount(sc);		
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return conDao.reportBulletinBoardSearch(pi, sc);
	}
	@Override
	public int updateBulletinBoard1(String bbCode) {
		return conDao.updateBulletinBoard1(bbCode);
	}

	@Override
	public int updateBulletinBoard2(String bbCode) {
		return conDao.updateBulletinBoard2(bbCode);
	}

	

}
