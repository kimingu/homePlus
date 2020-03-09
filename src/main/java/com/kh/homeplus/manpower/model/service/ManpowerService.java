package com.kh.homeplus.manpower.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.homeplus.manpower.model.vo.Admin;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.manpower.model.vo.FacilityTask;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.manpower.model.vo.Expense;
import com.kh.homeplus.manpower.model.vo.ManpowerExpense;
import com.kh.homeplus.manpower.model.vo.Search;
import com.kh.homeplus.manpower.model.vo.SearchConditionCompany;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportFacility;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportWorker;
import com.kh.homeplus.manpower.model.vo.SearchConditionWorker;

public interface ManpowerService {

	ArrayList<Company> selectCList(int currentPage);

	Company selectCompany(String comCode);

	int updateCompany(Company c);

	int insertCompany(Company c);

	int deleteCompany(String comCode);

	/*ArrayList<Company> searchCList(Search search);*/

	ArrayList<Expense> selectEList(int currentPage);

	int insertExpense(Map<String, Object> map);

	Expense selectExpense(String exCode);

	int updateExpense(Expense e);

	ArrayList<Company> companySearch(int currentPage, SearchConditionCompany sc);

	int deleteExpense(String exCode);

	ManpowerExpense ExpenseMainExpense();

	ArrayList<Company> selectCCList(int currentPage);

	ArrayList<Admin> selectWList(int currentPage);

	Admin selectWorker(String aCode);

	ArrayList<Admin> workerSearch(int currentPage, SearchConditionWorker sc);

	ArrayList<FacilityTask> selectRFList(int currentPage);

	FacilityTask selectFacility(String ft_code);

	ArrayList<FacilityTask> reportFacilitySearch(int currentPage, SearchConditionReportFacility sc);

	int updateFacility0(String ft_code);
	
	int updateFacility1(String ft_code);
	
	int updateFacility2(String ft_code);

	ArrayList<BulletinBoard> selectRWList(int currentPage);

	BulletinBoard selectBulletinBoard(String bbCode);

	ArrayList<BulletinBoard> reportBulletinBoardSearch(int currentPage, SearchConditionReportWorker sc);

	int updateBulletinBoard1(String bbCode);

	int updateBulletinBoard2(String bbCode);

	ArrayList selectCountList();

	ArrayList selectCountWorker();
	
	ArrayList selectCountBulletinBoard();

	ArrayList selectCountFacility();

	int updateBulletinBoard0(String bbCode);

	


}
