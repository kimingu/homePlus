package com.kh.homeplus.member.model.service;

import java.util.ArrayList;
import java.util.Date;

import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.vo.SearchCondition;
import com.kh.homeplus.member.model.vo.Member;
import com.kh.homeplus.member.model.vo.MemberCost;
import com.kh.homeplus.member.model.vo.MemberMemo;
import com.kh.homeplus.member.model.vo.MemberMessage;
import com.kh.homeplus.member.model.vo.MemberNotice;
import com.kh.homeplus.member.model.vo.MemberReply;
import com.kh.homeplus.member.model.vo.MemberReserve;
import com.kh.homeplus.practitioners.model.vo.Delivery;

public interface MemberService {

	public int insertMember(Member m);

	public Member loginMember(Member m);

	public int checkIdDup(String id);

	public int updateMyPwd2(Member m);
	

	// 20200113 13:00 김상인 작업
			ArrayList<MemberMessage> getMyMsg(String mCode);
			
			ArrayList<MemberMessage> getWriteMsg(String mCode, int currentPage);

			ArrayList<MemberMessage> getReceiveMsg(String mCode, int currentPage);

			int updateMyPwd(Member m);

			int deleteMember(String mCode);

			ArrayList<MemberMessage> searchReceiveMsg(String mCode, int currentPage, SearchCondition sc);

			ArrayList<MemberMessage> searchWriteMsg(String mCode, int currentPage, SearchCondition sc);

			public ArrayList<MemberMemo> getMemoList(String mCode);
			
			public int insertMemo(String mCode, String memoContent);

			public int deleteMemo(String mmeCode);

			public int updateMemo(MemberMemo mme);
			
			String getMyAddress(String apCode);


			String chekMember(String mmReceiver);

			int insertMsg(MemberMessage mms);

			MemberMessage getMemberMessage(String mmCode);

			int deleteMsg(String mmCode, int check);

			public int updateMember(Member m);

			public ArrayList<Board> getMyBoard(String mId);

			public ArrayList<Board> getMyBoardList(String mId, int currentPage);

			public ArrayList<MemberMemo> getMyMemo(String mCode);

			public ArrayList<Board> searchMyBoard(int currentPage, String m_id, SearchCondition sc);

			public ArrayList<MemberReply> getMyReply(String mId);

			public ArrayList<MemberReply> getMyReplyList(String mId, int currentPage);

			public ArrayList<MemberReply> searchMyReply(int currentPage, String mId, SearchCondition sc);

			public ArrayList<MemberReserve> getMyReserveList(String mCode);

			public void insertMyReserve(String cvName);

			public MemberReserve getMemberReserve(String mrCode);

			public int cancelReserve(MemberReserve mr);

			public ArrayList<MemberReserve> getReserveList(String mCode, int currentPage);

			public ArrayList<MemberReserve> categoryReserveList(String mCode, int currentPage, String category);

			public ArrayList<BulletinBoard> getMyQuesList(String mCode);

			public BulletinBoard getQuestion(String bbCode);

			public ArrayList<BulletinBoard> getQuestionList(String mCode, int currentPage);

			public ArrayList<MemberReply> searchMyQues(int currentPage, String mCode, SearchCondition sc);

			public int getMyApCost(Member loginUser, Date toDay);

			public ArrayList<MemberCost> getMemberCostList(Member loginUser);

			public void insertMyDelivery(String categoryName);

			public int getMyNoticeCount(Member loginUser);

			public ArrayList<MemberNotice> getMyNotice(Member loginUser, int currentPage);

			public int checkNotice(String mncCode);

}
