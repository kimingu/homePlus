package com.kh.homeplus.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.board.model.dao.boardDao;
import com.kh.homeplus.board.model.vo.Board;
import com.kh.homeplus.board.model.vo.Board_Declaration;
import com.kh.homeplus.board.model.vo.Board_Reply;
import com.kh.homeplus.common.MemberPagination;
import com.kh.homeplus.common.vo.PageInfo;
import com.kh.homeplus.common.vo.SearchCondition;

@Service("bService")
public class boardServiceimpl implements boardService{

	@Autowired
	private boardDao bDao;
	
	// 글 작성
	@Override
	public int insertBoard(Board b) {
		int result = 0;
	     	
			result=bDao.insertBoard(b);
			
		return result;
	}
	
	// 커뮤니티 리스트 
	@Override
	public ArrayList<Board> commList(int currentPage, String category){
		int listCount = bDao.getListCount(category);
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return bDao.commList(pi,category);
	}
	
	// 마켓 리스트 
	@Override
	public ArrayList<Board> maList(int currentPage, String category) {
		int listCount = bDao.getListCount2(category);
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return bDao.maList(pi,category);
	}

	// 공지사항 리스트
	@Override
	public ArrayList<Board> noList(int currentPage, String category) {
		int listCount = bDao.getListCount3(category);
		
		PageInfo pi = MemberPagination.getPageInfo(currentPage, listCount);
		
		return bDao.noList(pi,category);
	}
	
	// 커뮤니티 검색 
	@Override
	public ArrayList<Board> searchCommunity(int currentPage, SearchCondition sc) {
		int listCount = bDao.searchCommunityCount(sc);		
		
		PageInfo pi =MemberPagination.getPageInfo(currentPage, listCount);
		
//		System.out.println(pi);
//		System.out.println(listCount);
	
		
		return bDao.searchCommunity(pi, sc);
	}
	
	// 마켓 검색 
	@Override
	public ArrayList<Board> searchMarket(int currentPage, SearchCondition sc) {
		int listCount = bDao.searchMarketCount(sc);		
		
		PageInfo pi =MemberPagination.getPageInfo(currentPage, listCount);
		
		return bDao.searchMarket(pi,sc);
	}
	
	// 공지사항 검색
	@Override
	public ArrayList<Board> searchNotice(int currentPage, SearchCondition sc) {
		int listCount = bDao.searchNoticeCount(sc);
		
		PageInfo pi =MemberPagination.getPageInfo(currentPage, listCount);
		
		return bDao.searchNotice(pi, sc);
	}
	
	// 커뮤니티 상세보기
	@Override
	public Board commDetail(int b_code, boolean flag) {
		if(!flag) {
			bDao.addReadCount(b_code);
		}
		return bDao.commDetail(b_code);
	}
	
	// 공지사항 상세보기
	@Override
	public Board noDetail(int b_code, boolean flag) {
		if(!flag) {
			bDao.addReadCount(b_code);
		}
		return bDao.noDetail(b_code);
	}

	// 마켓 상세보기
	@Override
	public Board maDetail(int b_code, boolean flag) {
		if(!flag) {
			bDao.addReadCount(b_code);
		}
		return bDao.maDetail(b_code);
	}
	
	// 게시글 삭제 
	@Override
	public int deleteBoard(int b_code) {
		return bDao.deleteBoard(b_code);
	}
	// 게시글 수정 뷰 
	@Override
	public Board selectBoardOne(String b_code) {
		return bDao.selectBoardOne(b_code);
	}
	
	// 게시글 수정
	@Override
	public int updateBoard(Board b) {
		return bDao.updateBoard(b);
	}
	
	// 신고 작성
	@Override
	public int bdInsert(Board_Declaration bd) {
		int result = 0;
     	
		result=bDao.bdInsert(bd);
		
	return result;
	}
	
	// 댓글 작성
	@Override
	public int insertReply(Board_Reply r) {
		return bDao.insertReply(r);
	}
	
	// 댓글 리스트
	@Override
	public ArrayList<Board_Reply> selectReplyList(int b_code) {
		return bDao.selectReplyList(b_code);
	}
	
	// 댓글 삭제
	@Override
	public int deleteReply(int r_code) {
		return bDao.deleteReply(r_code);
	}

	
	

	
	
	


	

	

	
}
