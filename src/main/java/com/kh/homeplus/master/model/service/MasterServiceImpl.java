package com.kh.homeplus.master.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.board.model.vo.Board_Declaration;
import com.kh.homeplus.common.Pagination;
import com.kh.homeplus.master.model.dao.MasterDao;
import com.kh.homeplus.master.model.vo.Apartment;
import com.kh.homeplus.master.model.vo.Apply;
import com.kh.homeplus.master.model.vo.BoardChart;
import com.kh.homeplus.master.model.vo.EnrollCount;
import com.kh.homeplus.master.model.vo.Income;
import com.kh.homeplus.master.model.vo.IncomeMoney;
import com.kh.homeplus.master.model.vo.LookAround;
import com.kh.homeplus.master.model.vo.Master;
import com.kh.homeplus.master.model.vo.MasterMap;
import com.kh.homeplus.master.model.vo.MemberChart;
import com.kh.homeplus.master.model.vo.Message;
import com.kh.homeplus.master.model.vo.PageInfo;
import com.kh.homeplus.master.model.vo.SearchPageInfo;
import com.kh.homeplus.member.model.vo.Member;

@Service("maService")
public class MasterServiceImpl implements MasterService{

	@Autowired
	private MasterDao maDao;

	@Override
	public Master loginMaster(Master m) {
		return maDao.loginMaster(m);
	}

	@Override
	public int changePicture(Master m) {
		return maDao.changePicture(m);
	}

	@Override
	public int messageWrite(Message msg) {
		return maDao.messageWrite(msg);
	}

	@Override
	public ArrayList<Message> selectReceiveList(PageInfo pageInfo) {
		int listCount = maDao.getReceiveListCount(pageInfo.getReceiver());
		
		PageInfo pi = Pagination.getPageInfo(pageInfo.getCurrentPage(), listCount);
		pi.setReceiver(pageInfo.getReceiver());
		
		return maDao.selectReceiveList(pi);
	}

	@Override
	public ArrayList<Message> selectSendedList(PageInfo pageInfo) {
		int listCount = maDao.getSendedListCount(pageInfo.getWriter());
		
		PageInfo pi = Pagination.getPageInfo(pageInfo.getCurrentPage(), listCount);
		pi.setWriter(pageInfo.getWriter());
		
		return maDao.selectSendedList(pi);
	}

	@Override
	public ArrayList<Message> selectLockerList(PageInfo pageInfo) {
		int listCount = maDao.getLockerListCount(pageInfo.getWriter());
		
		PageInfo pi = Pagination.getPageInfo(pageInfo.getCurrentPage(), listCount);
		pi.setWriter(pageInfo.getWriter());
		pi.setReceiver(pageInfo.getReceiver());
		
		return maDao.selectLockerList(pi);
	}

	@Override
	public Message messageDetailView(String meCode) {
		int result = maDao.messageStatusChange(meCode);
		
		return maDao.messageDetailView(meCode);
	}

	@Override
	public int messageLock(String meCode) {
		return maDao.messageLock(meCode);
	}

	@Override
	public int messageDelete(String meCode) {
		return maDao.messageDelete(meCode);
	}

	@Override
	public int messageCancelLock(String meCode) {
		return maDao.messageCancelLock(meCode);
	}

	@Override
	public ArrayList<Message> messageReceiveSearch(SearchPageInfo pageInfo) {
		int listCount = maDao.getReceiveSearchListCount(pageInfo);
		SearchPageInfo spi = Pagination.getSearchPageInfo(pageInfo.getCurrentPage(), listCount);
		spi.setWriter(pageInfo.getWriter());
		spi.setReceiver(pageInfo.getReceiver());
		spi.setCategory(pageInfo.getCategory());
		spi.setKeyword(pageInfo.getKeyword());
		
		return maDao.selectReceiveSearchList(spi);
	}

	@Override
	public ArrayList<Message> messageSendedSearch(SearchPageInfo pageInfo) {
		int listCount = maDao.getSendedSearchListCount(pageInfo);
		SearchPageInfo spi = Pagination.getSearchPageInfo(pageInfo.getCurrentPage(), listCount);
		spi.setWriter(pageInfo.getWriter());
		spi.setReceiver(pageInfo.getReceiver());
		spi.setCategory(pageInfo.getCategory());
		spi.setKeyword(pageInfo.getKeyword());
		
		return maDao.selectSendedSearchList(spi);
	}

	@Override
	public ArrayList<Message> messageLockerSearch(SearchPageInfo pageInfo) {
		int listCount = maDao.getLockerSearchListCount(pageInfo);
		SearchPageInfo spi = Pagination.getSearchPageInfo(pageInfo.getCurrentPage(), listCount);
		spi.setWriter(pageInfo.getWriter());
		spi.setReceiver(pageInfo.getReceiver());
		spi.setCategory(pageInfo.getCategory());
		spi.setKeyword(pageInfo.getKeyword());
		
		return maDao.selectLockerSearchList(spi);
	}

	@Override
	public ArrayList<Member> selectUserCheckList() {
		return maDao.selectUserCheckList();
	}

	@Override
	public ArrayList<Member> selectUserFailList() {
		return maDao.selectUserFailList();
	}

	@Override
	public int deleteFailList(String mCode) {
		return maDao.deleteFailList(mCode);
	}

	@Override
	public Member userCheckDetail(String mCode) {
		return maDao.userCheckDetail(mCode);
	}

	@Override
	public int userJoinOk(String mCode) {
		return maDao.userJoinOk(mCode);
	}

	@Override
	public int userJoinFail(String mCode) {
		return maDao.userJoinFail(mCode);
	}

	@Override
	public LookAround selectLookAround() {
		return maDao.selectLookAround();
	}

	@Override
	public int updateYoutube(String newAddress) {
		return maDao.updateYoutube(newAddress);
	}

	@Override
	public int changeLaPicture(LookAround la) {
		return maDao.changeLaPicture(la);
	}
	
	@Override
	public int changeLaPicture2(LookAround la) {
		return maDao.changeLaPicture2(la);
	}

	@Override
	public MasterMap masterMapChange(String mmName) {
		return maDao.masterMapChange(mmName);
	}

	@Override
	public int masterApply(Apply apply) {
		return maDao.masterApply(apply);
	}

	@Override
	public ArrayList<Apply> masterApplyYList() {
		return maDao.masterApplyYList();
	}

	@Override
	public ArrayList<Apply> masterApplyNList() {
		return maDao.masterApplyNList();
	}

	@Override
	public int deleteApplyNList(String appCode) {
		return maDao.deleteApplyNList(appCode);
	}

	@Override
	public Apply selectOneApplyY(String appCode) {
		return maDao.selectOneApplyY(appCode);
	}

	@Override
	public int applyOk(String appCode) {
		return maDao.applyOk(appCode);
	}

	@Override
	public int applyNo(String appCode) {
		return maDao.applyNo(appCode);
	}

	@Override
	public ArrayList<Admin> selectAdminYList() {
		return maDao.selectAdminYList();
	}

	@Override
	public ArrayList<Admin> selectAdminNList() {
		return maDao.selectAdminNList();
	}

	@Override
	public int deleteAdminNList(String aCode) {
		return maDao.deleteAdminNList(aCode);
	}

	@Override
	public Admin selectOneAdmin(String aCode) {
		return maDao.selectOneAdmin(aCode);
	}

	@Override
	public int adminJoinOk(String aCode) {
		return maDao.adminJoinOk(aCode);
	}

	@Override
	public int adminJoinNo(String aCode) {
		return maDao.adminJoinNo(aCode);
	}

	@Override
	public ArrayList<Member> mainPageMemList() {
		return maDao.mainPageMemList();
	}

	@Override
	public ArrayList<Apply> mainPageAppList() {
		return maDao.mainPageAppList();
	}

	@Override
	public int mainPageMemCount() {
		return maDao.mainPageMemCount();
	}

	@Override
	public int mainPageAppCount() {
		return maDao.mainPageAppCount();
	}

	@Override
	public EnrollCount mainPageEcCount() {
		return maDao.mainPageEcCount();
	}

	@Override
	public IncomeMoney mainPageIncomeMoney() {
		return maDao.mainPageIncomeMoney();
	}

	@Override
	public int mainPageAllMemberCount() {
		return maDao.mainPageAllMemberCount();
	}

	@Override
	public int apartmentInsert(Apartment apt) {
		return maDao.apartmentInsert(apt);
	}

	@Override
	public ArrayList<Apartment> apartmentList() {
		return maDao.apartmentList();
	}

	@Override
	public int deleteApt(String apCode) {
		return maDao.deleteApt(apCode);
	}

	@Override
	public ArrayList<Income> IncomeAllList() {
		return maDao.incomeAllList();
	}

	@Override
	public ArrayList<Board> boardAllList() {
		return maDao.boardAllList();
	}

	@Override
	public BoardChart boardChart() {
		return maDao.boardChart();
	}

	@Override
	public ArrayList<Member> memberAllList() {
		return maDao.memberAllList();
	}

	@Override
	public ArrayList<Admin> adminAllList() {
		return maDao.adminAllList();
	}

	@Override
	public MemberChart memberChart() {
		return maDao.memberChart();
	}

	@Override
	public int userManageStop(String mCode) {
		return maDao.userManageStop(mCode);
	}

	@Override
	public int adminManageStop(String aCode) {
		return maDao.adminManageStop(aCode);
	}

	@Override
	public ArrayList<Member> selectMemberEmail() {
		return maDao.selectMemberEmail();
	}

	@Override
	public ArrayList<Member> selectAllMember() {
		return maDao.selectAllMember();
	}

	@Override
	public ArrayList<Master> selectAllMaster() {
		return maDao.selectAllMaster();
	}

	@Override
	public ArrayList<Board_Declaration> selectAllReport() {
		return maDao.selectAllReport();
	}

	@Override
	public Board selectOneBoard(String bCode) {
		return maDao.selectOneBoard(bCode);
	}

	@Override
	public int masterBoardDelete(String b_code) {
		return maDao.masterBoardDelete(b_code);
	}

	@Override
	public Board_Declaration selectOneReport(String rCode) {
		return maDao.selectOneReport(rCode);
	}

	@Override
	public int masterReportDelete(Board_Declaration bd) {
		int first = maDao.masterReportDelete(bd);
		String mCode = maDao.selectOneMember(bd.getM_id());
		int result = 0;
		if(first > 0) {
			result = maDao.sendMessageForMember(mCode);
		}
		return result;
	}

	@Override
	public int masterReportClear(String bd_code, String reMid, String bMid) {
		int first = maDao.masterReportClear(bd_code);
		String mCode = maDao.selectOneMember(reMid);
		int result = 0;
		if(first > 0) {
			maDao.sendMessageForMember2(mCode);
			maDao.deleteBoard(bMid);
			result = maDao.memberBlack(bMid);
		}
		return result;
	}

	@Override
	public ArrayList<MasterMap> selectMMList() {
		return maDao.selectMMList();
	}
	

}
