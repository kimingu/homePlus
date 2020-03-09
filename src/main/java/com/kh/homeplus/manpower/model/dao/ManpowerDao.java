package com.kh.homeplus.manpower.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.manpower.model.vo.Admin;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.vo.PageInfo;
import com.kh.homeplus.manpower.model.vo.FacilityTask;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.manpower.model.vo.Expense;
import com.kh.homeplus.manpower.model.vo.ManpowerExpense;
import com.kh.homeplus.manpower.model.vo.Search;
import com.kh.homeplus.manpower.model.vo.SearchConditionCompany;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportFacility;
import com.kh.homeplus.manpower.model.vo.SearchConditionReportWorker;
import com.kh.homeplus.manpower.model.vo.SearchConditionWorker;

@Repository("mpDao")
public class ManpowerDao {
	
	@Autowired
	private SqlSession sqlSession;

	public int getCListCount() {
		
		return sqlSession.selectOne("man-mapper.getCListCount");
	}
	
	public int getCCListCount() {
		return sqlSession.selectOne("man-mapper.getCCListCount");
	}
	
	public ArrayList<Company> selectCList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.selectCList", null, rowBounds);
	}

	public Company selectCompany(String comCode) {
		return sqlSession.selectOne("man-mapper.selectCompany", comCode);
	}

	public int updateCompany(Company c) {
		
		return sqlSession.update("man-mapper.updateCompany", c);
	}

	public int insertCompany(Company c) {
		return sqlSession.insert("man-mapper.insertCompany", c);
	}

	public int deleteCompany(String comCode) {
		return sqlSession.delete("man-mapper.deleteCompany", comCode);
	}

	public ArrayList<Company> searchCList(Search search) {
		return (ArrayList)sqlSession.selectList("man-mapper.searchCList", search);
	}

	public int getEListCount() {
		return sqlSession.selectOne("man-mapper.getEListCount");
	}

	public ArrayList<Expense> selectEList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("man-mapper.selectEList", null, rowBounds);
	}

	public int insertExpense(Map<String, Object> map) {		
		return sqlSession.insert("man-mapper.insertExpense", map);
	}

	public Expense selectExpense(String exCode) {
		return sqlSession.selectOne("man-mapper.selectExpense", exCode);
	}

	public int updateExpense(Expense e) {
		return sqlSession.update("man-mapper.updateExpense", e);
	}

	public int companySearchCount(SearchConditionCompany sc) {
		return sqlSession.selectOne("man-mapper.companySearchCount", sc);
	}

	public ArrayList<Company> companySearch(PageInfo pi, SearchConditionCompany sc) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.companySearch", sc, rb);
	}

	public int deleteExpense(String exCode) {
		return sqlSession.delete("man-mapper.deleteExpense", exCode);
	}

	public ManpowerExpense ExpenseMainExpense() {
		return sqlSession.selectOne("man-mapper.ExpenseMainExpense");
	}

	public ArrayList<Company> selectCCList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.selectCCList", null, rowBounds);
	}

	public int getWListCount() {
		return sqlSession.selectOne("man-mapper.getWListCount");
	}

	public ArrayList<Admin> selectWList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.selectWList", null, rowBounds);
	}

	public Admin selectWorker(String aCode) {
		return sqlSession.selectOne("man-mapper.selectWorker", aCode);
	}

	public int workerSearchCount(SearchConditionWorker sc) {
		return sqlSession.selectOne("man-mapper.workerSearchCount", sc);
	}

	public ArrayList<Admin> workerSearch(PageInfo pi, SearchConditionWorker sc) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.workerSearch", sc, rb);
	}

	public int getRFListCount() {
		return sqlSession.selectOne("man-mapper.getRFListCount");
	}

	public ArrayList<FacilityTask> selectRFList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.selectRFList", null, rowBounds);
	}

	public FacilityTask selectFacility(String ft_code) {
		return sqlSession.selectOne("man-mapper.selectFacility", ft_code);
	}

	public int reportFacilitySearchCount(SearchConditionReportFacility sc) {
		return sqlSession.selectOne("man-mapper.reportFacilitySearchCount", sc);
	}

	public ArrayList<FacilityTask> reportFacilitySearch(PageInfo pi, SearchConditionReportFacility sc) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.reportFacilitySearch", sc, rb);
	}
	
	public int updateFacility0(String ft_code) {
		return sqlSession.update("man-mapper.updateFacility0", ft_code);
	}

	public int updateFacility1(String ft_code) {
		/*Map<String, Object> map = new HashMap<>();
		map.put("f", f);
		map.put("ft_code", ft_code);*/
		
		return sqlSession.update("man-mapper.updateFacility1", ft_code);
	}

	public int updateFacility2(String ft_code) {
		/*Map<String, Object> map = new HashMap<>();
		map.put("f", f);
		map.put("ft_code", ft_code);*/
		
		return sqlSession.update("man-mapper.updateFacility2", ft_code);
	}

	public int getRWListCount() {
		return sqlSession.selectOne("man-mapper.getRWListCount");
	}

	public ArrayList<BulletinBoard> selectRWList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.selectRWList", null, rowBounds);
	}

	public BulletinBoard selectBulletinBoard(String bbCode) {
		return sqlSession.selectOne("man-mapper.selectBulletinBoard", bbCode);
	}

	public int reportBulletinBoardSearchCount(SearchConditionReportWorker sc) {
		return sqlSession.selectOne("man-mapper.reportBulletinBoardSearchCount", sc);
	}

	public ArrayList<BulletinBoard> reportBulletinBoardSearch(PageInfo pi, SearchConditionReportWorker sc) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("man-mapper.reportBulletinBoardSearch", sc, rb);
	}
	
	public int updateBulletinBoard0(String bbCode) {
		return sqlSession.update("man-mapper.updateBulletinBoard0", bbCode);
	}

	public int updateBulletinBoard1(String bbCode) {
		return sqlSession.update("man-mapper.updateBulletinBoard1", bbCode);
	}

	public int updateBulletinBoard2(String bbCode) {
		return sqlSession.update("man-mapper.updateBulletinBoard2", bbCode);
	}

	public ArrayList selectCountList() {
		return (ArrayList)sqlSession.selectList("man-mapper.selectCountList");
	}

	public ArrayList selectCountWorker() {
		return (ArrayList)sqlSession.selectList("man-mapper.selectCountWorker");
	}

	public ArrayList selectCountBulletinBoard() {
		return (ArrayList)sqlSession.selectList("man-mapper.selectCountBulletinBoard");
	}
	
	public ArrayList selectCountFacility() {
		return (ArrayList)sqlSession.selectList("man-mapper.selectCountFacility");
	}



	

	

	


	
	
	

}
