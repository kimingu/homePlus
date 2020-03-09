package com.kh.homeplus.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.board.model.vo.Board_Declaration;
import com.kh.homeplus.board.model.vo.Board_Reply;
import com.kh.homeplus.common.vo.SearchCondition;

public interface boardService {
	
	// 게시글 작성 
	int insertBoard(Board b);
	
	// 커뮤니티 리스트
	ArrayList<Board> commList(int currentPage, String category);
	
	// 공지사항 리스트
	ArrayList<Board> noList(int currentPage, String category);

	// 마켓 리스트 
	ArrayList<Board> maList(int currentPage, String category);
	
	// 커뮤니티 검색 
	ArrayList<Board> searchCommunity(int currentPage, SearchCondition sc);
	
	// 공지사항 검색
	ArrayList<Board> searchNotice(int currentPage, SearchCondition sc);

	//마켓 검색
	ArrayList<Board> searchMarket(int currentPage, SearchCondition sc);
	
	// 커뮤니티 상세보기 서비스 
	Board commDetail(int b_code, boolean flag);
	
	// 공지사항 상세보기 서비스 
	Board noDetail(int b_code, boolean flag);
	
	// 마켓 상세보기 서비스
	Board maDetail(int b_code, boolean flag);
	
	// 게시글 삭제 
	int deleteBoard(int b_code);

	// 게시글 수정 뷰
	Board selectBoardOne(String b_code);
	
	// 게시글 수정 
	int updateBoard(Board b);
	
	// 신고 작성
	int bdInsert(Board_Declaration bd);
	
	// 댓글 추가
	int insertReply(Board_Reply r);
	
	// 댓글 리스트
	ArrayList<Board_Reply> selectReplyList(int b_code);

	int deleteReply(int r_code);


	

	
	
	
}
