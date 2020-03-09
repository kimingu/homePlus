package com.kh.homeplus.master.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.board.model.vo.Board_Declaration;
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

@Repository("maDao")
public class MasterDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Master loginMaster(Master m) {
		return sqlSession.selectOne("masterMapper.loginMaster", m);
	}

	public int changePicture(Master m) {
		return sqlSession.update("masterMapper.changePicture", m);
	}

	public int messageWrite(Message msg) {
		return sqlSession.insert("masterMapper.messageWrite", msg);
	}

	public int getReceiveListCount(String receiver) {
		return sqlSession.selectOne("masterMapper.receiveListCount", receiver);
	}
	
	public ArrayList<Message> selectReceiveList(PageInfo pageInfo) {
		
		int offset = (pageInfo.getCurrentPage() -1) * pageInfo.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectReceiveList", pageInfo, rowBounds);
	}

	public int getSendedListCount(String writer) {
		return sqlSession.selectOne("masterMapper.sendedListCount", writer);
	}

	public ArrayList<Message> selectSendedList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage()- 1) * pageInfo.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectSendedList", pageInfo, rowBounds);
	}

	public int getLockerListCount(String writer) {
		return sqlSession.selectOne("masterMapper.LockerListCount", writer);
	}

	public ArrayList<Message> selectLockerList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() -1) * pageInfo.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectLockerList", pageInfo, rowBounds) ;
	}

	public int messageStatusChange(String meCode) {
		return sqlSession.update("masterMapper.messageStatusChange", meCode);
	}

	public Message messageDetailView(String meCode) {
		return sqlSession.selectOne("masterMapper.messageDetail", meCode);
	}

	public int messageLock(String meCode) {
		return sqlSession.update("masterMapper.messageLock", meCode);
	}

	public int messageDelete(String meCode) {
		return sqlSession.update("masterMapper.messageDelete", meCode);
	}

	public int messageCancelLock(String meCode) {
		return sqlSession.update("masterMapper.messageCancelLock", meCode);
	}

	public int getReceiveSearchListCount(PageInfo pageInfo) {
		return sqlSession.selectOne("masterMapper.selectReceiveSearchCount", pageInfo);
	}

	public int getReceiveSearchListCount(SearchPageInfo pageInfo) {
		return sqlSession.selectOne("masterMapper.selectReceiveSearchCount", pageInfo);
	}

	public ArrayList<Message> selectReceiveSearchList(SearchPageInfo spi) {
		int offset = (spi.getCurrentPage() -1) * spi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, spi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectReceiveSearchList", spi, rowBounds) ;
	}

	public int getSendedSearchListCount(SearchPageInfo pageInfo) {
		return sqlSession.selectOne("masterMapper.selectSendedSearchCount", pageInfo);
	}

	public ArrayList<Message> selectSendedSearchList(SearchPageInfo spi) {
		int offset = (spi.getCurrentPage() -1) * spi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, spi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectSendedSearchList", spi, rowBounds) ;
	}

	public int getLockerSearchListCount(SearchPageInfo pageInfo) {
		return sqlSession.selectOne("masterMapper.selectLockerSearchCount", pageInfo);
	}

	public ArrayList<Message> selectLockerSearchList(SearchPageInfo spi) {
		int offset = (spi.getCurrentPage() -1) * spi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, spi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectLockerSearchList", spi, rowBounds) ;
	}

	public ArrayList<Member> selectUserCheckList() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectUserCheckList");
	}

	public ArrayList<Member> selectUserFailList() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectUserFailList");
	}

	public int deleteFailList(String mCode) {
		return sqlSession.delete("masterMapper.deleteFailList", mCode);
	}

	public Member userCheckDetail(String mCode) {
		return sqlSession.selectOne("masterMapper.userCheckDetail", mCode);
	}

	public int userJoinOk(String mCode) {
		return sqlSession.update("masterMapper.userJoinOk", mCode);
	}

	public int userJoinFail(String mCode) {
		return sqlSession.update("masterMapper.userJoinFail", mCode);
	}

	public LookAround selectLookAround() {
		return sqlSession.selectOne("masterMapper.selectLookAround");
	}

	public int updateYoutube(String newAddress) {
		return sqlSession.update("masterMapper.updateYoutube", newAddress);
	}

	public int changeLaPicture(LookAround la) {
		return sqlSession.update("masterMapper.changeLaPicture", la);
	}

	public int changeLaPicture2(LookAround la) {
		return sqlSession.update("masterMapper.changeLaPicture2", la);

	}

	public MasterMap masterMapChange(String mmName) {
		return sqlSession.selectOne("masterMapper.masterMapChange", mmName);
	}

	public int masterApply(Apply apply) {
		return sqlSession.insert("masterMapper.masterApply", apply);
	}

	public ArrayList<Apply> masterApplyList() {
		return (ArrayList)sqlSession.selectList("masterMapper.masterApplyList");
	}

	public ArrayList<Apply> masterApplyYList() {
		return (ArrayList)sqlSession.selectList("masterMapper.masterApplyYList");
	}

	public ArrayList<Apply> masterApplyNList() {
		return (ArrayList)sqlSession.selectList("masterMapper.masterApplyNList");
	}

	public int deleteApplyNList(String appCode) {
		return sqlSession.update("masterMapper.deleteApplyNList", appCode);
	}

	public Apply selectOneApplyY(String appCode) {
		return sqlSession.selectOne("masterMapper.selectOneApplyY",appCode);
	}

	public int applyOk(String appCode) {
		return sqlSession.update("masterMapper.applyOk", appCode);
	}

	public int applyNo(String appCode) {
		return sqlSession.update("masterMapper.applyNo", appCode);
	}

	public ArrayList<Admin> selectAdminYList() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectAdminYList");
	}

	public ArrayList<Admin> selectAdminNList() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectAdminNList");
	}

	public int deleteAdminNList(String aCode) {
		return sqlSession.update("masterMapper.deleteAdminNList", aCode);
	}

	public Admin selectOneAdmin(String aCode) {
		return sqlSession.selectOne("masterMapper.selectOneAdmin", aCode);
	}

	public int adminJoinOk(String aCode) {
		return sqlSession.update("masterMapper.adminJoinOk", aCode);
	}

	public int adminJoinNo(String aCode) {
		return sqlSession.update("masterMapper.adminJoinNo", aCode);
	}

	public ArrayList<Member> mainPageMemList() {
		return (ArrayList)sqlSession.selectList("masterMapper.mainPageMemList");
	}

	public ArrayList<Apply> mainPageAppList() {
		return (ArrayList)sqlSession.selectList("masterMapper.mainPageAppList");
	}

	public int mainPageMemCount() {
		return sqlSession.selectOne("masterMapper.mainPageMemCount");
	}

	public int mainPageAppCount() {
		return sqlSession.selectOne("masterMapper.mainPageAppCount");
	}

	public EnrollCount mainPageEcCount() {
		return sqlSession.selectOne("masterMapper.mainPageEcCount");
	}

	public IncomeMoney mainPageIncomeMoney() {
		return sqlSession.selectOne("masterMapper.mainPageIncomeMoney");
	}

	public int mainPageAllMemberCount() {
		return sqlSession.selectOne("masterMapper.mainPageAllMemberCount");
	}

	public int apartmentInsert(Apartment apt) {
		return sqlSession.insert("masterMapper.apartmentInsert", apt);
	}

	public ArrayList<Apartment> apartmentList() {
		return (ArrayList)sqlSession.selectList("masterMapper.apartmentList");
	}

	public int deleteApt(String apCode) {
		return sqlSession.delete("masterMapper.deleteApt", apCode);
	}

	public ArrayList<Income> incomeAllList() {
		return (ArrayList)sqlSession.selectList("masterMapper.incomeAllList");
	}

	public BoardChart boardChart() {
		return sqlSession.selectOne("masterMapper.boardChart");
	}

	public ArrayList<Board> boardAllList() {
		return (ArrayList)sqlSession.selectList("masterMapper.boardAllList");
	}

	public MemberChart memberChart() {
		return sqlSession.selectOne("masterMapper.memberChart");
	}

	public ArrayList<Admin> adminAllList() {
		return (ArrayList)sqlSession.selectList("masterMapper.adminAllList");
	}

	public ArrayList<Member> memberAllList() {
		return (ArrayList)sqlSession.selectList("masterMapper.memberAllList");
	}

	public int userManageStop(String mCode) {
		return sqlSession.update("masterMapper.userManageStop", mCode);
	}

	public int adminManageStop(String aCode) {
		return sqlSession.update("masterMapper.adminManageStop", aCode);
	}

	public ArrayList<Member> selectMemberEmail() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectMemberEmail");
	}

	public ArrayList<Member> selectAllMember() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectAllMember");
	}

	public ArrayList<Master> selectAllMaster() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectAllMaster");
	}

	public ArrayList<Board_Declaration> selectAllReport() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectAllReport");
	}

	public Board selectOneBoard(String bCode) {
		return sqlSession.selectOne("masterMapper.selectOneBoard", bCode);
	}

	public int masterBoardDelete(String b_code) {
		return sqlSession.update("masterMapper.boardDelete", b_code);
	}

	public Board_Declaration selectOneReport(String rCode) {
		return sqlSession.selectOne("masterMapper.selectOneReport", rCode);
	}

	public int masterReportDelete(Board_Declaration bd) {
		return sqlSession.update("masterMapper.masterReportDelete", bd);
	}

	public int sendMessageForMember(String mCode) {
		return sqlSession.insert("masterMapper.sendMessageForMember", mCode);
	}

	public String selectOneMember(String m_id) {
		return sqlSession.selectOne("masterMapper.selectOneMember", m_id);
	}

	public int masterReportClear(String bd_code) {
		return sqlSession.update("masterMapper.masterReportClear", bd_code);
	}

	public void sendMessageForMember2(String mCode) {
		sqlSession.insert("masterMapper.sendMessageForMember2", mCode);
	}

	public void deleteBoard(String bMid) {
		System.out.println("신고된 게시글 작성자 : " + bMid);
		sqlSession.update("masterMapper.deleteBoard", bMid);
	}

	public int memberBlack(String bMid) {
		return sqlSession.update("masterMapper.memberBlack", bMid);
	}

	public ArrayList<MasterMap> selectMMList() {
		return (ArrayList)sqlSession.selectList("masterMapper.selectMMList");
	}

}
