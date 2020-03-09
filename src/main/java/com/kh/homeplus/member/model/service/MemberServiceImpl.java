package com.kh.homeplus.member.model.service;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.common.vo.PageInfo;
import com.kh.homeplus.common.vo.SearchCondition;
import com.kh.homeplus.guestRoom.model.vo.GuestRoom;
import com.kh.homeplus.gym.model.vo.Gym;
import com.kh.homeplus.member.model.dao.MemberDao;
import com.kh.homeplus.member.model.vo.Member;
import com.kh.homeplus.member.model.vo.MemberCost;
import com.kh.homeplus.member.model.vo.MemberMemo;
import com.kh.homeplus.member.model.vo.MemberMessage;
import com.kh.homeplus.member.model.vo.MemberNotice;
import com.kh.homeplus.member.model.vo.MemberReply;
import com.kh.homeplus.member.model.vo.MemberReserve;
import com.kh.homeplus.practitioners.model.vo.Delivery;
import com.kh.homeplus.readingRoom.model.dao.ReadingRoomDao;
import com.kh.homeplus.readingRoom.model.vo.ReadingRoom;

@Service("mService")
public class MemberServiceImpl implements MemberService  {
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private ReadingRoomDao rDao;

	
	@Override
	public int checkIdDup(String id) {
		return mDao.checkIdDup(id);
	}

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(m);
	}

	@Override
	public Member loginMember(Member m) {
		return mDao.selectMember(m);
	}

	@Override
	public int updateMyPwd2(Member m) {
		return mDao.updateMyPwd2(m);
	}

	
	
	
	
	
	
	

	// 20200113 13:00 김상인 작업
	@Override
	public int updateMyPwd(Member m) {

		return mDao.updateMyPwd(m);
	}

	@Override
	public int deleteMember(String mCode) {

		return mDao.deleteMember(mCode);
	}

	// 쪽지 관련 서비스
	@Override
	public ArrayList<MemberMessage> getMyMsg(String mCode) {

		return mDao.getMyMsg(mCode);
	}

	@Override
	public ArrayList<MemberMessage> getWriteMsg(String mCode, int currentPage) {

		int listCount = mDao.getWriteMsgCount(mCode);
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);

		return mDao.getWriteMsg(mCode, pi);
	}

	@Override
	public ArrayList<MemberMessage> getReceiveMsg(String mCode, int currentPage) {

		int listCount = mDao.getReceiveMsgCount(mCode);
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);

		return mDao.getReceiveMsg(mCode, pi);
	}

	@Override
	public ArrayList<MemberMessage> searchReceiveMsg(String mCode, int currentPage, SearchCondition sc) {

		int listCount = mDao.searchReceiveMsgCount(mCode, sc);

		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);

		return mDao.searchReceiveMsg(mCode, pi, sc);
	}

	@Override
	public ArrayList<MemberMessage> searchWriteMsg(String mCode, int currentPage, SearchCondition sc) {

		int listCount = mDao.searchWriteMsgCount(mCode, sc);

		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);

		return mDao.searchWriteMsg(mCode, pi, sc);
	}

	
	
	// 200115 김상인 추가
	@Override
	public int insertMemo(String mCode, String memoContent) {

		return mDao.insertMemo(mCode, memoContent);
	}

	@Override
	public ArrayList<MemberMemo> getMemoList(String mCode) {

		return mDao.getMemoList(mCode);
	}
	
	
	
	// 200117 김상인 추가
	@Override
	public int deleteMemo(String mmeCode) {

		return mDao.deleteMemo(mmeCode);
	}

	@Override
	public int updateMemo(MemberMemo mme) {

		return mDao.updateMemo(mme);
	}

	@Override
	public String chekMember(String mmReceiver) {

		return mDao.checkMember(mmReceiver);
	}

	@Override
	public int insertMsg(MemberMessage mms) {

		return mDao.insertMsg(mms);
	}

	@Override
	public MemberMessage getMemberMessage(String mmCode) {

		return mDao.getMemberMessage(mmCode);
	}

	@Override
	public int deleteMsg(String mmCode, int check) {

		return mDao.deleteMsg(mmCode, check);
	}

	@Override
	public String getMyAddress(String apCode) {

		return mDao.getMyAddress(apCode);
	}

	@Override
	public int updateMember(Member m) {

		return mDao.updateMember(m);
	}

	@Override
	public ArrayList<Board> getMyBoard(String mId) {

		return mDao.getMyBoard(mId);
	}

	@Override
	public ArrayList<Board> getMyBoardList(String mId, int currentPage) {
		
		int listCount = mDao.getMyBoardCount(mId);
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mDao.getMyBoardList(mId, pi);
	}

	@Override
	public ArrayList<MemberMemo> getMyMemo(String mCode) {
		
		return mDao.getMyMemo(mCode);
	}

	@Override
	public ArrayList<Board> searchMyBoard(int currentPage, String m_id, SearchCondition sc) {
		
		int listCount = mDao.searchMyBoardCount(sc, m_id);
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mDao.searchMyBoard(pi, m_id, sc);
	}

	@Override
	public ArrayList<MemberReply> getMyReply(String mId) {

		return mDao.getMyReply(mId);
	}

	@Override
	public ArrayList<MemberReply> getMyReplyList(String mId, int currentPage) {
		
		int listCount = mDao.getMyReplyCount(mId);
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mDao.geyMaReplyList(mId, pi);
	}

	@Override
	public ArrayList<MemberReply> searchMyReply(int currentPage, String mId, SearchCondition sc) {
		
		int listCount = mDao.searchMyReplyCount(mId, sc);
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mDao.searchMyReply(mId, sc, pi);
	}

	
	
	
	// 200126 상인
	@Override
	public ArrayList<MemberReserve> getMyReserveList(String mCode) {
		
		return mDao.getMyReserveList(mCode);
	}

	@Override
	public void insertMyReserve(String cvName) {
		
		MemberReserve mr = null;
		
		if(cvName.equals("rr")) {
			ReadingRoom rr = mDao.getReadingRoom();
			
			mr = new MemberReserve(rr, "rr");		
		}else if(cvName.equals("hr")) {
			Gym g = mDao.getGym();
			
			mr = new MemberReserve(g, "hr");
		}else if(cvName.equals("gr")) {
			GuestRoom gr = mDao.getGuestRoom();
			
			System.out.println("Ser : " + gr);
			
			mr = new MemberReserve(gr, "gr");
			
			System.out.println("se1 : " + mr);
		}
		

		mDao.insertMyReserve(mr);
		
	}

	@Override
	public MemberReserve getMemberReserve(String mrCode) {

		return mDao.getMemberReserve(mrCode);
	}

	@Override
	public int cancelReserve(MemberReserve mr) {
		
		int result = 0;
		
		if(mr.getCvName().equals("rr")) {
			result = mDao.cancelReadingRoom(mr.getCvCode());
		}else if(mr.getCvName().equals("hr")) {
			result = mDao.cancelGym(mr.getCvCode());
		}else if(mr.getCvName().equals("gr")) {
			result = mDao.cancelGuestRoom(mr.getCvCode());
		}
		
		
		
		if(result > 0) {
			result = mDao.cancelReserve(mr.getMrCode());
		}
		
		return result;
	}

	@Override
	public ArrayList<MemberReserve> getReserveList(String mCode, int currentPage) {

		int listCount = mDao.getReserveCount(mCode);
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mDao.getReserveList(mCode, pi);
	}

	@Override
	public ArrayList<MemberReserve> categoryReserveList(String mCode, int currentPage, String category) {
		
		int listCount = mDao.getCateogryReserveCount(mCode, category);
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		
		return mDao.categoryReserveList(mCode, category, pi);
	}

	@Override
	public ArrayList<BulletinBoard> getMyQuesList(String mCode) {
		
		return mDao.getMyQuesList(mCode);
	}

	@Override
	public BulletinBoard getQuestion(String bbCode) {

		return mDao.getQuestion(bbCode);
	}

	@Override
	public ArrayList<BulletinBoard> getQuestionList(String mCode, int currentPage) {

		int listCount = mDao.getQuestionListCount(mCode);
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mDao.getQuestionList(mCode, pi);
	}

	@Override
	public ArrayList<MemberReply> searchMyQues(int currentPage, String mCode, SearchCondition sc) {

		int listCount = mDao.searchMyQuesCount(mCode, sc);
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mDao.searchMyQues(mCode, sc, pi);
	}

	@Override
	public int getMyApCost(Member loginUser, Date toDay) { 
		
		return mDao.getMyApCost(loginUser, toDay);
	}

	@Override
	public ArrayList<MemberCost> getMemberCostList(Member loginUser) {

		return mDao.getMemberCostList(loginUser);
	}

	@Override
	public void insertMyDelivery(String categoryName) {
		
		Delivery de = mDao.getDelivery();
		
		int result = mDao.insertMyDelivery(de, categoryName);
		
		System.out.println(result);
	}

	@Override
	public int getMyNoticeCount(Member loginUser) {
		
		return mDao.getMyNoticeCount(loginUser);
	}

	@Override
	public ArrayList<MemberNotice> getMyNotice(Member loginUser, int currentPage) { 
		
		int listCount = mDao.getMyNoticeListCount(loginUser);
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return mDao.getMyNotice(loginUser, pi);
	}

	@Override
	public int checkNotice(String mncCode) {

		return mDao.checkNotice(mncCode);
	}




}