package com.kh.homeplus.member.model.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.common.vo.PageInfo;
import com.kh.homeplus.common.vo.SearchCondition;
import com.kh.homeplus.guestRoom.model.vo.GuestRoom;
import com.kh.homeplus.gym.model.vo.Gym;
import com.kh.homeplus.member.model.vo.Member;
import com.kh.homeplus.member.model.vo.MemberCost;
import com.kh.homeplus.member.model.vo.MemberMemo;
import com.kh.homeplus.member.model.vo.MemberMessage;
import com.kh.homeplus.member.model.vo.MemberNotice;
import com.kh.homeplus.member.model.vo.MemberReply;
import com.kh.homeplus.member.model.vo.MemberReserve;
import com.kh.homeplus.practitioners.model.vo.Delivery;
import com.kh.homeplus.readingRoom.model.vo.ReadingRoom;
@Repository("mDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public int checkIdDup(String id) {
		return sqlSession.selectOne("memberMapper.checkIdDup", id);
	}

	public Member selectMember(Member m) {
		return sqlSession.selectOne("memberMapper.memberLogin", m);
	}
	
	public int updateMyPwd2(Member m) {
		return sqlSession.update("memberMapper.updatePwd2",m);
	}

	
	
	
	// 20200113 13:00 김상인 작업
	public int updateMyPwd(Member m) {
		
		return sqlSession.update("memberMapper.updatePwd", m);
	}

	public int deleteMember(String mCode) {

		return sqlSession.delete("memberMapper.deleteMember", mCode);
	}
	
	
	// 쪽지 관련 dao
	public int getWriteMsgCount(String mCode) {
		
		return sqlSession.selectOne("memberMapper.getWriteMsgCount", mCode);
	}
	
	public int getReceiveMsgCount(String mCode) {
		
		return sqlSession.selectOne("memberMapper.getReceiveMsgCount", mCode);
	}
	
	public int searchReceiveMsgCount(String mCode, SearchCondition sc) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("sc", sc);
		
		return sqlSession.selectOne("memberMapper.searchReceiveMsgCount", map);
	}
	
	public int searchWriteMsgCount(String mCode, SearchCondition sc) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("sc", sc);
		
		return sqlSession.selectOne("memberMapper.searchWriteMsgCount", map);
	}
	
	public ArrayList<MemberMessage> getMyMsg(String mCode) {
			
		return (ArrayList)sqlSession.selectList("memberMapper.getMyMsg", mCode);
	}
	
	public ArrayList<MemberMessage> getWriteMsg(String mCode, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.getWriteMsg", mCode, rb);
	}

	public ArrayList<MemberMessage> getReceiveMsg(String mCode, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.getReceiveMsg", mCode, rb);
	}

	public ArrayList<MemberMessage> searchReceiveMsg(String mCode, PageInfo pi, SearchCondition sc) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("sc", sc);
		
		return (ArrayList)sqlSession.selectList("memberMapper.searchReceiveMsg", map, rb);
	}

	public ArrayList<MemberMessage> searchWriteMsg(String mCode, PageInfo pi, SearchCondition sc) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("sc", sc);
		
		return (ArrayList)sqlSession.selectList("memberMapper.searchWriteMsg", map, rb);
	}
	
	
	// 200115 김상인 추가
	public int insertMemo(String mCode, String memoContent) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("memoContent", memoContent);
		
		return sqlSession.insert("memberMapper.insertMemo", map);
	}

	public ArrayList<MemberMemo> getMemoList(String mCode) {
		
		return (ArrayList)sqlSession.selectList("memberMapper.getMemoList", mCode);
	}
	


	// 200117
	public int deleteMemo(String mmeCode) {
		
		return sqlSession.delete("memberMapper.deleteMemo", mmeCode);
	}

	public int updateMemo(MemberMemo mme) {
		
		return sqlSession.update("memberMapper.updateMemo", mme);
	}

	public String checkMember(String mmReceiver) {
		
		return sqlSession.selectOne("memberMapper.checkMember", mmReceiver);
	}

	public int insertMsg(MemberMessage mms) {

		System.out.println(mms);
		
		return sqlSession.insert("memberMapper.insertMsg", mms);
	}

	public MemberMessage getMemberMessage(String mmCode) {
		
		return sqlSession.selectOne("memberMapper.getMemberMsg", mmCode);
	}

	public int deleteMsg(String mmCode, int check) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("mmCode", mmCode);
		map.put("check", check);
		
		return sqlSession.delete("memberMapper.deleteMsg", map);
	}

	public String getMyAddress(String apCode) {
		
		return sqlSession.selectOne("memberMapper.getMyAddress", apCode);
	}

	public int updateMember(Member m) {
		
		return sqlSession.update("memberMapper.updateMember", m);
	}

	public ArrayList<Board> getMyBoard(String mId) {

		return (ArrayList)sqlSession.selectList("memberMapper.getMyBoard", mId);
	}

	public int getMyBoardCount(String mId) {					
		
		return sqlSession.selectOne("memberMapper.getMyBoardCount", mId);
	}
	
	public ArrayList<Board> getMyBoardList(String mId, PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.getMyBoardList", mId, rb);
	}

	public ArrayList<MemberMemo> getMyMemo(String mCode) {
		
		return (ArrayList)sqlSession.selectList("memberMapper.getMyMemo", mCode);
	}

	public int searchMyBoardCount(SearchCondition sc, String m_id) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("m_id", m_id);
		map.put("sc", sc);
		
		
		return sqlSession.selectOne("memberMapper.serachMyBoardCount", map);
	}

	public ArrayList<Board> searchMyBoard(PageInfo pi, String m_id, SearchCondition sc) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		Map<String, Object> map = new HashMap<>();
		map.put("m_id", m_id);
		map.put("sc", sc);
		
		return (ArrayList)sqlSession.selectList("memberMapper.searchMyBoard", map, rb);
	}

	public ArrayList<MemberReply> getMyReply(String mId) {
		
		return (ArrayList)sqlSession.selectList("memberMapper.getMyReply", mId);
	}

	public int getMyReplyCount(String mId) {
	
		return sqlSession.selectOne("memberMapper.getMyReplyCount", mId);
	}

	public ArrayList<MemberReply> geyMaReplyList(String mId, PageInfo pi) {

		Map<String, Object> map = new HashMap<>();
		map.put("mId", mId);
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.getMyReplyList", map, rb);
	}

	public int searchMyReplyCount(String mId, SearchCondition sc) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("mId", mId);
		map.put("sc", sc);
		
		return sqlSession.selectOne("memberMapper.searchMyReplyCount", map);
	}

	public ArrayList<MemberReply> searchMyReply(String mId, SearchCondition sc, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		Map<String, Object> map = new HashMap<>();
		map.put("mId", mId);
		map.put("sc", sc);
		
		return (ArrayList)sqlSession.selectList("memberMapper.searchMyReply", map, rb);
	}



	
	
	
	
	
	// 200126 상인 추가
	public ReadingRoom getReadingRoom() {
		
		return sqlSession.selectOne("memberMapper.getReadingRoom");
	}

	public Gym getGym() {

		return sqlSession.selectOne("memberMapper.getGym");
	}

	
	public void insertMyReserve(MemberReserve mr) {
		
		sqlSession.insert("memberMapper.insertMyReserve", mr);
	}

	
	public ArrayList<MemberReserve> getMyReserveList(String mCode) {
		
		return (ArrayList)sqlSession.selectList("memberMapper.getMyReserveList", mCode);
	}

	public MemberReserve getMemberReserve(String mrCode) {

		return sqlSession.selectOne("memberMapper.getMemberReserve", mrCode);
	}
	
	public int cancelReserve(String mrCode) {
		
		return sqlSession.delete("memberMapper.cancelReserve", mrCode);
	}

	public int cancelReadingRoom(String cvCode) {
		
		return sqlSession.delete("memberMapper.cancelReadingRoom", cvCode);
	}
	public int cancelGym(String cvCode) {
		
		return sqlSession.delete("memberMapper.cancelGym", cvCode);
	}	

	public int cancelGuestRoom(String cvCode) {

		return sqlSession.delete("memberMapper.cancelGuestRoom", cvCode);
	}

	public ArrayList<MemberReserve> getReserveList(String mCode, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.getReserveList", mCode, rb);
	}

	public int getReserveCount(String mCode) {
		
		return sqlSession.selectOne("memberMapper.getReserveCount", mCode);
	}

	public int getCateogryReserveCount(String mCode, String category) {

		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("category", category);
		
		return sqlSession.selectOne("memberMapper.getCetegoryReserveCount", map);
	}

	public ArrayList<MemberReserve> categoryReserveList(String mCode, String category, PageInfo pi) {

		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("category", category);
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.categoryReserveList", map, rb);
	}

	public ArrayList<BulletinBoard> getMyQuesList(String mCode) {

		return (ArrayList)sqlSession.selectList("memberMapper.getMyQuesList", mCode);
	}

	public BulletinBoard getQuestion(String bbCode) {

		return sqlSession.selectOne("memberMapper.getQuestion", bbCode);
	}

	public int getQuestionListCount(String mCode) {
		
		return sqlSession.selectOne("memberMapper.getQuestionListCount", mCode);
	}

	public ArrayList<BulletinBoard> getQuestionList(String mCode, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.getQuestionList", mCode, rb);
	}

	public int searchMyQuesCount(String mCode, SearchCondition sc) {
		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("sc", sc);
		
		
		return sqlSession.selectOne("memberMapper.searchMyQuesCount", map);
	}

	public ArrayList<MemberReply> searchMyQues(String mCode, SearchCondition sc, PageInfo pi) {
		Map<String, Object> map = new HashMap<>();
		map.put("mCode", mCode);
		map.put("sc", sc);

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		

		
		return (ArrayList)sqlSession.selectList("memberMapper.searchMyQues", map, rb);
	}

	public int getMyApCost(Member loginUser, Date toDay) {

		Map<String, Object> map = new HashMap<>();
		map.put("loginUser", loginUser);
		map.put("toDay", toDay);
		
		
		return sqlSession.selectOne("memberMapper.getMyApCost", map);
	}

	public ArrayList<MemberCost> getMemberCostList(Member loginUser) {

		return (ArrayList)sqlSession.selectList("memberMapper.getMemberCostList", loginUser);
	}

	public int insertMyDelivery(Delivery de, String categoryName) {

		Map<String, Object> map = new HashMap<>();
		map.put("de", de);
		map.put("categoryName", categoryName);
		
		System.out.println(de);
		System.out.println(categoryName);
		
		return sqlSession.insert("memberMapper.insertMyDelivery", map);
	}

	public Delivery getDelivery() {
		
		return sqlSession.selectOne("memberMapper.getDelivery");
	}

	public int getMyNoticeCount(Member loginUser) {
		
		return sqlSession.selectOne("memberMapper.getMyNoticeCount", loginUser);
	}


	public int getMyNoticeListCount(Member loginUser) {
		
		return sqlSession.selectOne("memberMapper.getMyNoticeListCount", loginUser);
	}
	
	public ArrayList<MemberNotice> getMyNotice(Member loginUser, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.getMyNotice", loginUser, rb);
	}

	public int checkNotice(String mncCode) {

		return sqlSession.update("memberMapper.checkNotice", mncCode);
	}

	public GuestRoom getGuestRoom() {

		return sqlSession.selectOne("memberMapper.getGuestRoom");
	}

	
}
