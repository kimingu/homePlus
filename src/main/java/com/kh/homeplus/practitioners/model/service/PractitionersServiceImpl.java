package com.kh.homeplus.practitioners.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.member.model.vo.Member;
import com.kh.homeplus.practitioners.controller.Pagination;
import com.kh.homeplus.practitioners.model.dao.PractitionersDao;
import com.kh.homeplus.practitioners.model.vo.Annual;
import com.kh.homeplus.practitioners.model.vo.CarDb;
import com.kh.homeplus.practitioners.model.vo.Commute;
import com.kh.homeplus.practitioners.model.vo.Delivery;
import com.kh.homeplus.practitioners.model.vo.Hometax;
import com.kh.homeplus.practitioners.model.vo.PageInfo;
import com.kh.homeplus.practitioners.model.vo.PatrolJournal;
import com.kh.homeplus.practitioners.model.vo.PatrolMain;
import com.kh.homeplus.practitioners.model.vo.TakingOver;


@Service("praService")
public class PractitionersServiceImpl implements PractitionersService{
	
	@Autowired
	PractitionersDao praDao;
	
	//====================================================== 실무자 메인=============================================
	
	@Override
	public ArrayList<Admin> praAdSelectList(Admin loginUser) {
		// TODO Auto-generated method stub
		return praDao.praAdSelectList(loginUser);
	}

	@Override
	public ArrayList<Annual> praAnSelectList(String apCode) {
		// TODO Auto-generated method stub
		return praDao.praAnSelectList(apCode);
	}

	@Override
	public ArrayList<TakingOver> praTaSelectList(String apCode) {
		// TODO Auto-generated method stub
		return praDao.praTaSelectList(apCode);
	}

	
	//====================================================== 연가 =============================================
	
	@Override // 연가 리스트 출력(페이지네이션 포함)
	public ArrayList<Annual> annualSelectList(int currentPage, String apCode) {
		//전체 게시글 수 조회
		int listCount = praDao.annualListCount();
				
		//페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return praDao.annualSelectList(pi, apCode);
	}

	@Override // 연가 입력
	public int annualInsert(Annual an) {
		// TODO Auto-generated method stub
		return praDao.annualInsert(an);
	}

	@Override // 연가 수정
	public int annualUpdate(Annual an) {
		// TODO Auto-generated method stub
		return praDao.annualUpdate(an);
	}
	
	@Override // 연가 삭제
	public int annualDelete(Annual an) {
		// TODO Auto-generated method stub
		return praDao.annualDelete(an);
	}
	

	
	//====================================================== 출근 =============================================
	
	@Override  // 출근일지 리스트 출력(페이지네이션 포함)
	public ArrayList<Commute> commuteSelectList(int currentPage, String apCode) {
		//전체 게시글 수 조회
		int listCount = praDao.commuteListCount();
						
		//페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return praDao.commuteSelectList(pi, apCode);
	}

	@Override
	public int commuteInsert(Commute co) {
		// TODO Auto-generated method stub
		return praDao.commuteInsert(co);
	}

	@Override
	public int commuteUpdate(Commute co) {
		// TODO Auto-generated method stub
		return praDao.commuteUpdate(co);
	}

	//====================================================== 택배물 =============================================

	@Override //택배물 리스트 출력(페이지네이션 포함)
	public ArrayList<Delivery> deliverySelectList(int currentPage, String apCode) {
		
		//전체 게시글 수 조회
		int listCount = praDao.deliveryListCount();
								
		//페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
		return praDao.deliverySelectList(pi, apCode);
	}

	@Override // 택배물 입력
	public int deliveryInsert(Delivery de) {
		// TODO Auto-generated method stub
		return praDao.deliveryInsert(de);
	}

	@Override // 택배물 수령확인
	public int deliveryUpdate(Delivery de) {
		// TODO Auto-generated method stub
		return praDao.deliveryUpdate(de);
	}


	//====================================================== 사용량 관리 =============================================
	
	@Override //사용량 전체 리스트 출력
	public ArrayList<Hometax> hometaxSelectList(int currentPage, String apCode) {

		//전체 게시글 수 조회
		int listCount = praDao.hometaxListCount();
								
		//페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
		return praDao.hometaxSelectList(pi, apCode);
	}

	@Override // 사용량 입력
	public int hometaxInsert(Hometax ht) {
		// TODO Auto-generated method stub
		return praDao.hometaxInsert(ht);
	}

	@Override // 사용량 수정
	public int hometaxUpdate(Hometax ht) {
		// TODO Auto-generated method stub
		return praDao.hometaxUpdate(ht);
	}
	
	@Override //사용량 삭제
	public int hometaxDelete(Hometax ht) {
		// TODO Auto-generated method stub
		return praDao.hometaxDelete(ht);
	}

	//====================================================== 순찰 =============================================
	
	@Override
	public ArrayList<PatrolMain> patrolMainSelectList(String apCode) {
		// TODO Auto-generated method stub
		return praDao.patrolMainSelectList(apCode);
	}

	@Override
	public int patrolMainInsert(PatrolMain pm) {
		// TODO Auto-generated method stub
		return praDao.patrolMainInsert(pm);
	}

	@Override
	public int patrolMainUpdate(PatrolMain pm) {
		// TODO Auto-generated method stub
		return praDao.patrolMainUpdate(pm);
	}

	@Override
	public int patrolMainDelete(String pmCode) {
		// TODO Auto-generated method stub
		return praDao.patrolMainDelete(pmCode);
	}
	
	//=================저널 구분선====================

	@Override
	public ArrayList<PatrolJournal> patrolJournalSelectList(int currentPage, String apCode) {

		//전체 게시글 수 조회
		int listCount = praDao.patrolJournalListCount();
								
		//페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
		return praDao.patrolJournalSelectList(pi, apCode);
	}

	@Override
	public int patrolJournalInsert(PatrolJournal pj) {
		// TODO Auto-generated method stub
		return praDao.patrolJournalInsert(pj);
	}

	@Override
	public int patrolJournalUpdate(PatrolJournal pj) {
		// TODO Auto-generated method stub
		return praDao.patrolJournalUpdate(pj);
	}
	
	@Override
	public int patrolJournalDelete(PatrolJournal pj) {
		// TODO Auto-generated method stub
		return praDao.patrolJournalDelete(pj);
	}




	//====================================================== 인수인계 =============================================
	
	@Override
	public ArrayList<TakingOver> takingOverSelectList(int currentPage, String apCode) {

		//전체 게시글 수 조회
		int listCount = praDao.annualListCount();
								
		//페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
		return praDao.takingOverSelectList(pi, apCode);
	}

	@Override
	public int takingOverInsert(TakingOver to) {
		// TODO Auto-generated method stub
		return praDao.takingOverInsert(to);
	}

	@Override
	public int takingOverUpdate(TakingOver to) {
		// TODO Auto-generated method stub
		return praDao.takingOverUpdate(to);
	}

	@Override
	public int takingOverDelete(TakingOver to) {
		// TODO Auto-generated method stub
		return praDao.takingOverDelete(to);
	}
	
	//====================================================== 차량 =============================================
	
	@Override
	public ArrayList<Member> carDbSelectList(int currentPage, String apCode) {

		//전체 게시글 수 조회
		int listCount = praDao.carDbGetListCount();
				
		//페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return praDao.carDbSelectList(pi, apCode);
	}

	






	


}
