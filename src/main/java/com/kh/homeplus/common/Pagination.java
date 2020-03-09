package com.kh.homeplus.common;

import com.kh.homeplus.master.model.vo.PageInfo;
import com.kh.homeplus.master.model.vo.SearchPageInfo;

public class Pagination {
	
	// 페이지 정보를 담아 줄 PageInfo 참조 변수 선언
	private static PageInfo pi = null;
	
	private static SearchPageInfo spi = null;
	
	public static PageInfo getPageInfo() {
		return pi;
	}
	
	public static SearchPageInfo getSearchPageInfo() {
		return spi;
	}
	
	// PageInfo 객체를 리턴하는 static 메소드 추가
	public static PageInfo getPageInfo(int currentPage, int listCount) {
		
		// 페이징 처리에 필요한 나머지 변수만 선언함
		int pageLimit = 5;	// 한 페이지에 보여질 페이징 수
		int maxPage;		// 전체 페이지 중 가장 마지막 페이지
		int startPage;		// 현재 페이지에서 보여질 페이징 버튼의 시작 페이지
		int endPage;		// 현재 페이지에서 보여질 페이징 버튼의 끝 페이지
		
		int boardLimit = 10;	// 한 페이지에 보여질 게시글 개수
		
		// * maxPage : 총 페이지 개수
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		// * startPage : 현재 페이지에서 보여질 시작 페이지 수
		startPage = (currentPage -1) / pageLimit * pageLimit + 1;
		
		// * endPage : 현재 페이지에서 보여질 마지막 페이지 수
		endPage = startPage + pageLimit - 1;
		
		// * 만약 maxPage가 endPage 보다 작다면
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit, null, null);
		
		return pi;
	}
	
	// PageInfo 객체를 리턴하는 static 메소드 추가
		public static SearchPageInfo getSearchPageInfo(int currentPage, int listCount) {
			
			// 페이징 처리에 필요한 나머지 변수만 선언함
			int pageLimit = 5;	// 한 페이지에 보여질 페이징 수
			int maxPage;		// 전체 페이지 중 가장 마지막 페이지
			int startPage;		// 현재 페이지에서 보여질 페이징 버튼의 시작 페이지
			int endPage;		// 현재 페이지에서 보여질 페이징 버튼의 끝 페이지
			
			int boardLimit = 10;	// 한 페이지에 보여질 게시글 개수
			
			// * maxPage : 총 페이지 개수
			maxPage = (int)Math.ceil((double)listCount / boardLimit);
			
			// * startPage : 현재 페이지에서 보여질 시작 페이지 수
			startPage = (currentPage -1) / pageLimit * pageLimit + 1;
			
			// * endPage : 현재 페이지에서 보여질 마지막 페이지 수
			endPage = startPage + pageLimit - 1;
			
			// * 만약 maxPage가 endPage 보다 작다면
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			
			spi = new SearchPageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit, null, null, null, null);
			
			return spi;
		}
	
}
