package com.kh.homeplus.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.board.model.vo.Board_Declaration;
import com.kh.homeplus.board.model.vo.Board_Reply;
import com.kh.homeplus.common.vo.PageInfo;
import com.kh.homeplus.common.vo.SearchCondition;

@Repository("bDao")
public class boardDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 글작성
	public int insertBoard(Board b) { 
		return sqlSession.insert("boardMapper.insertBoard",b);
	}
	
	// 커뮤니티 리스트 카운터(페이징바)
	public int getListCount(String category) {
		Map<String, Object> map = new HashMap<>();
		map.put("category", category);
		
		return sqlSession.selectOne("boardMapper.getListCount",map);

	}
	// 마켓 리스트 카운터(페이징바)
	public int getListCount2(String category) {
		Map<String, Object> map = new HashMap<>();
		map.put("category", category);
		
		return sqlSession.selectOne("boardMapper.getListCount2",map);

	}
	
	// 공지사항 리스트 카운터(페이징바)
	public int getListCount3(String category) {
		Map<String, Object> map = new HashMap<>();
		map.put("category", category);
		
		return sqlSession.selectOne("boardMapper.getListCount3",map);
	}


	// 커뮤니티 리스트
	public ArrayList<Board> commList(PageInfo pi, String category) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		Map<String, Object> map = new HashMap<>();
		map.put("category", category);
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		ArrayList list = (ArrayList)sqlSession.selectList("boardMapper.commList",map,rowBounds);
		
		return list;
	}
	// 마켓 리스트 
	public ArrayList<Board> maList(PageInfo pi, String category) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		Map<String, Object> map = new HashMap<>();
		map.put("category", category);
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("boardMapper.maList",map,rowBounds);
	}
	
	// 공지사항 리스트 
	public ArrayList<Board> noList(PageInfo pi,String category) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		Map<String, Object> map = new HashMap<>();
		map.put("category", category);
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("boardMapper.noList",map,rowBounds);
	}
	
	// 커뮤니티 검색 리스트
	public int searchCommunityCount(SearchCondition sc) {
		Map<String, Object> map = new HashMap<>();
		map.put("sc",sc);
		return sqlSession.selectOne("boardMapper.searchCommunityCount",map);
	}
	
	// 커뮤니티 검색 
	public ArrayList<Board> searchCommunity(PageInfo pi, SearchCondition sc) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		Map<String, Object> map = new HashMap<>();
		map.put("sc", sc);

		
		return (ArrayList)sqlSession.selectList("boardMapper.searchCommunity", map, rb);
	}
	
	// 공지사항 검색 리스트 
	public int searchNoticeCount(SearchCondition sc) {
		Map<String, Object>map = new HashMap<>();
		map.put("sc", sc);
		return sqlSession.selectOne("boardMapper.searchNoticeCount",map);
	}
	
	// 공지사항 검색
	public ArrayList<Board> searchNotice(PageInfo pi, SearchCondition sc) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		Map<String, Object> map = new HashMap<>();
		map.put("sc", sc);

		return (ArrayList)sqlSession.selectList("boardMapper.searchNotice", map, rb);
	}
	
	// 마켓 검색 리스트 
	public int searchMarketCount(SearchCondition sc) {
		Map<String, Object>map = new HashMap<>();
		map.put("sc", sc);
		return sqlSession.selectOne("boardMapper.searchMarketCount",map);
	}
		
	// 마켓 검색 
	public ArrayList<Board> searchMarket(PageInfo pi, SearchCondition sc) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rb = new RowBounds(offset, pi.getBoardLimit());
		
		Map<String, Object> map = new HashMap<>();
		map.put("sc", sc);
			
		return (ArrayList)sqlSession.selectList("boardMapper.searchMarket", map, rb);
	}
	// 게시글 조회수 
	public void addReadCount(int b_code) {
		sqlSession.update("boardMapper.addReadCount",b_code);
		
	}
	
	// 커뮤니티 상세보기 
	public Board commDetail(int b_code) {
		return sqlSession.selectOne("boardMapper.commDetail",b_code);
	}
	
	// 공지사항 상세보기
	public Board noDetail(int b_code) {
		return sqlSession.selectOne("boardMapper.noDetail",b_code);
	}
	
	// 마켓 상세보기
	public Board maDetail(int b_code) {
		return sqlSession.selectOne("boardMapper.maDetail",b_code);
	}
	
	// 게시글 삭제
	public int deleteBoard(int b_code) {
		return sqlSession.update("boardMapper.deleteBoard",b_code);
	}
	// 게시글 수정 뷰 
	public Board selectBoardOne(String b_code) {
		return sqlSession.selectOne("boardMapper.selectBoardOne", b_code);
	}
	
	// 게시글 수정 
	public int updateBoard(Board b) {
		System.out.println(b);
		return sqlSession.update("boardMapper.updateBoard",b);
	}
	// 신고글 작성
	public int bdInsert(Board_Declaration bd) {
		return sqlSession.insert("boardMapper.insertDeclaratio",bd);
	}
	// 댓글 작성
	public int insertReply(Board_Reply r) {
		return sqlSession.insert("boardMapper.insertReply",r);
	}
	
	// 댓글 리스트
	public ArrayList<Board_Reply> selectReplyList(int b_code) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList", b_code);
	}
	
	// 댓글 삭제
	public int deleteReply(int r_code) {
		return sqlSession.update("boardMapper.deleteReply",r_code);
	}

	

	
	
	
	

	

	

	

	

}
