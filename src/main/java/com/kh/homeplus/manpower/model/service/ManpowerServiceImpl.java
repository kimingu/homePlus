package com.kh.homeplus.manpower.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.manpower.model.vo.Admin;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.common.vo.PageInfo;
import com.kh.homeplus.manpower.model.vo.FacilityTask;
import com.kh.homeplus.manpower.model.dao.ManpowerDao;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.manpower.model.vo.Expense;
import com.kh.homeplus.manpower.model.vo.ManpowerExpense;
import com.kh.homeplus.manpower.model.vo.Search;
import com.kh.homeplus.manpower.model.vo.SearchConditionCompany;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportFacility;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportWorker;
import com.kh.homeplus.manpower.model.vo.SearchConditionWorker;

@Service("mpService")
public class ManpowerServiceImpl implements ManpowerService{

	@Autowired
	private ManpowerDao mpDao;
	

	@Override
	public ArrayList<Company> selectCList(int currentPage) {
		// 전체 게시글 조회
		int listCount = mpDao.getCListCount();
				
		// 페이지 정보 저장
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
				
		// 리스트 조회
		return mpDao.selectCList(pi);
	}

	@Override
	public Company selectCompany(String comCode) {
		
		Company c = mpDao.selectCompany(comCode);
		
		return c;
	}
	
	@Override
	public int insertCompany(Company c) {
		return mpDao.insertCompany(c);
	}

	@Override
	public int updateCompany(Company c) {
		
		return mpDao.updateCompany(c);
	}

	@Override
	public int deleteCompany(String comCode) {
		return mpDao.deleteCompany(comCode);
	}

	/*@Override
	public ArrayList<Company> searchCList(Search search) {
		return mpDao.searchCList(search);
	}*/

	@Override
	public ArrayList<Expense> selectEList(int currentPage) {
		int listCount = mpDao.getEListCount();
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		return mpDao.selectEList(pi);
	}

	@Override
	public int insertExpense(Map<String, Object> map) {
		return mpDao.insertExpense(map);
	}

	@Override
	public Expense selectExpense(String exCode) {
		
		Expense e = mpDao.selectExpense(exCode);
		
		return e;
	}

	@Override
	public int updateExpense(Expense e) {
		return mpDao.updateExpense(e);
	}

	@Override
	public ArrayList<Company> companySearch(int currentPage, SearchConditionCompany sc) {
		int listCount = mpDao.companySearchCount(sc);		
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mpDao.companySearch(pi, sc);
	}

	@Override
	public int deleteExpense(String exCode) {
		return mpDao.deleteExpense(exCode);
	}

	@Override
	public ManpowerExpense ExpenseMainExpense() {
		return mpDao.ExpenseMainExpense();
	}

	@Override
	public ArrayList<Company> selectCCList(int currentPage) {
		int listCount = mpDao.getCCListCount();
		
		// 페이지 정보 저장
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
				
		// 리스트 조회
		return mpDao.selectCCList(pi);
	}

	@Override
	public ArrayList<Admin> selectWList(int currentPage) {
		int listCount = mpDao.getWListCount();
		
		// 페이지 정보 저장
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
				
		// 리스트 조회
		return mpDao.selectWList(pi);
	}

	@Override
	public Admin selectWorker(String aCode) {
		Admin a = mpDao.selectWorker(aCode);
		return a;
	}

	@Override
	public ArrayList<Admin> workerSearch(int currentPage, SearchConditionWorker sc) {
		int listCount = mpDao.workerSearchCount(sc);		
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mpDao.workerSearch(pi, sc);
	}

	@Override
	public ArrayList<FacilityTask> selectRFList(int currentPage) {
		int listCount = mpDao.getRFListCount();
		
		// 페이지 정보 저장
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
				
		// 리스트 조회
		return mpDao.selectRFList(pi);
	}

	@Override
	public FacilityTask selectFacility(String ft_code) {
		FacilityTask ft = mpDao.selectFacility(ft_code);
		return ft;
	}

	@Override
	public ArrayList<FacilityTask> reportFacilitySearch(int currentPage, SearchConditionReportFacility sc) {
		int listCount = mpDao.reportFacilitySearchCount(sc);		
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mpDao.reportFacilitySearch(pi, sc);
	}
	
	@Override
	public int updateFacility0(String ft_code) {
		return mpDao.updateFacility0(ft_code);
	}

	@Override
	public int updateFacility1(String ft_code) {
		return mpDao.updateFacility1(ft_code);
	}

	@Override
	public int updateFacility2(String ft_code) {
		return mpDao.updateFacility2(ft_code);
	}

	@Override
	public ArrayList<BulletinBoard> selectRWList(int currentPage) {
		int listCount = mpDao.getRWListCount();
		
		// 페이지 정보 저장
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
				
		// 리스트 조회
		return mpDao.selectRWList(pi);
	}

	@Override
	public BulletinBoard selectBulletinBoard(String bbCode) {
		BulletinBoard bib = mpDao.selectBulletinBoard(bbCode);
		return bib;
	}

	@Override
	public ArrayList<BulletinBoard> reportBulletinBoardSearch(int currentPage, SearchConditionReportWorker sc) {
		int listCount = mpDao.reportBulletinBoardSearchCount(sc);		
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mpDao.reportBulletinBoardSearch(pi, sc);
	}
	
	@Override
	public int updateBulletinBoard0(String bbCode) {
		return mpDao.updateBulletinBoard0(bbCode);
	}

	@Override
	public int updateBulletinBoard1(String bbCode) {
		return mpDao.updateBulletinBoard1(bbCode);
	}

	@Override
	public int updateBulletinBoard2(String bbCode) {
		return mpDao.updateBulletinBoard2(bbCode);
	}

	@Override
	public ArrayList selectCountList() {
		return mpDao.selectCountList();
	}

	@Override
	public ArrayList selectCountWorker() {
		return mpDao.selectCountWorker();
	}

	@Override
	public ArrayList selectCountBulletinBoard() {
		return mpDao.selectCountBulletinBoard();
	}
	
	@Override
	public ArrayList selectCountFacility() {
		return mpDao.selectCountFacility();
	}

	

	




}
