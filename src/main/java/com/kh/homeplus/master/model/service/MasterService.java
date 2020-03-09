package com.kh.homeplus.master.model.service;

import java.util.ArrayList;

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.board.model.vo.Board_Declaration;
import com.kh.homeplus.master.model.vo.MemberChart;
import com.kh.homeplus.master.model.vo.Apartment;
import com.kh.homeplus.master.model.vo.Apply;
import com.kh.homeplus.master.model.vo.BoardChart;
import com.kh.homeplus.master.model.vo.EnrollCount;
import com.kh.homeplus.master.model.vo.Income;
import com.kh.homeplus.master.model.vo.IncomeMoney;
import com.kh.homeplus.master.model.vo.LookAround;
import com.kh.homeplus.master.model.vo.Master;
import com.kh.homeplus.master.model.vo.MasterMap;
import com.kh.homeplus.master.model.vo.Message;
import com.kh.homeplus.master.model.vo.PageInfo;
import com.kh.homeplus.master.model.vo.SearchPageInfo;
import com.kh.homeplus.member.model.vo.Member;

public interface MasterService {

	Master loginMaster(Master m);

	int changePicture(Master master);

	int messageWrite(Message msg);

	ArrayList<Message> selectReceiveList(PageInfo pageInfo);

	ArrayList<Message> selectSendedList(PageInfo pageInfo);

	ArrayList<Message> selectLockerList(PageInfo pageInfo);

	Message messageDetailView(String meCode);

	int messageLock(String meCode);

	int messageDelete(String meCode);

	int messageCancelLock(String meCode);

	ArrayList<Message> messageReceiveSearch(SearchPageInfo pageInfo);

	ArrayList<Message> messageSendedSearch(SearchPageInfo pageInfo);

	ArrayList<Message> messageLockerSearch(SearchPageInfo pageInfo);

	ArrayList<Member> selectUserCheckList();

	ArrayList<Member> selectUserFailList();

	int deleteFailList(String mCode);

	Member userCheckDetail(String mCode);

	int userJoinOk(String mCode);

	int userJoinFail(String mCode);

	LookAround selectLookAround();

	int updateYoutube(String newAddress);

	int changeLaPicture(LookAround la);

	int changeLaPicture2(LookAround la);

	MasterMap masterMapChange(String mmName);

	int masterApply(Apply apply);

	ArrayList<Apply> masterApplyYList();

	ArrayList<Apply> masterApplyNList();

	int deleteApplyNList(String appCode);

	Apply selectOneApplyY(String appCode);

	int applyOk(String appCode);

	int applyNo(String appCode);

	ArrayList<Admin> selectAdminYList();

	ArrayList<Admin> selectAdminNList();

	int deleteAdminNList(String aCode);

	Admin selectOneAdmin(String aCode);

	int adminJoinOk(String aCode);

	int adminJoinNo(String aCode);

	ArrayList<Member> mainPageMemList();

	ArrayList<Apply> mainPageAppList();

	int mainPageMemCount();

	int mainPageAppCount();

	EnrollCount mainPageEcCount();

	IncomeMoney mainPageIncomeMoney();

	int mainPageAllMemberCount();

	int apartmentInsert(Apartment apt);

	ArrayList<Apartment> apartmentList();

	int deleteApt(String apCode);

	ArrayList<Income> IncomeAllList();

	ArrayList<Board> boardAllList();

	BoardChart boardChart();


	ArrayList<Member> memberAllList();

	ArrayList<Admin> adminAllList();

	MemberChart memberChart();

	int userManageStop(String mCode);

	int adminManageStop(String aCode);

	ArrayList<Member> selectMemberEmail();

	ArrayList<Member> selectAllMember();

	ArrayList<Master> selectAllMaster();

	ArrayList<Board_Declaration> selectAllReport();

	Board selectOneBoard(String bCode);

	int masterBoardDelete(String bCode);

	Board_Declaration selectOneReport(String rCode);

	int masterReportDelete(Board_Declaration bd);

	int masterReportClear(String bd_code, String reMid, String bMid);

	ArrayList<MasterMap> selectMMList();

}
