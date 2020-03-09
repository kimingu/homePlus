package com.kh.homeplus.practitioners.model.service;

import java.util.ArrayList;

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.member.model.vo.Member;
import com.kh.homeplus.practitioners.model.vo.Annual;
import com.kh.homeplus.practitioners.model.vo.CarDb;
import com.kh.homeplus.practitioners.model.vo.Commute;
import com.kh.homeplus.practitioners.model.vo.Delivery;
import com.kh.homeplus.practitioners.model.vo.Hometax;
import com.kh.homeplus.practitioners.model.vo.PatrolJournal;
import com.kh.homeplus.practitioners.model.vo.PatrolMain;
import com.kh.homeplus.practitioners.model.vo.TakingOver;



public interface PractitionersService {

		
	//====================================================== 실무자 메인=============================================
	
	ArrayList<Admin> praAdSelectList(Admin loginUser);

	ArrayList<Annual> praAnSelectList(String apCode);

	ArrayList<TakingOver> praTaSelectList(String apCode);


	
	//====================================================== 연가 =============================================
	
	//연가 리스트 출력
	ArrayList<Annual> annualSelectList(int currentPage, String apCode);

	//연가 입력
	int annualInsert(Annual an);
	
	//연가 수정
	int annualUpdate(Annual an);
	
	//연가 삭제
	int annualDelete(Annual an);

	//====================================================== 출근 =============================================
	
	//출근일지 리스트 출력
	ArrayList<Commute> commuteSelectList(int currentPage, String apCode);

	//출근 도장찍기
	int commuteInsert(Commute co);

	//퇴근도장찍기
	int commuteUpdate(Commute co);

	//====================================================== 택배물 =============================================
	
	//택배물 리스트 출력
	ArrayList<Delivery> deliverySelectList(int currentPage, String apCode);
	
	//택배물 등록
	int deliveryInsert(Delivery de);

	//택배물 수령확인
	int deliveryUpdate(Delivery de);

	//====================================================== 사용량 관리 =============================================
	
	//사용량 리스트 출력
	ArrayList<Hometax> hometaxSelectList(int currentPage, String apCode);

	//사용량 입력
	int hometaxInsert(Hometax ht);

	//사용량 수정
	int hometaxUpdate(Hometax ht);

	//사용량 삭제
	int hometaxDelete(Hometax ht);

	//====================================================== 순찰 =============================================
	
	ArrayList<PatrolMain> patrolMainSelectList(String apCode);

	int patrolMainInsert(PatrolMain pm);

	int patrolMainUpdate(PatrolMain pm);

	int patrolMainDelete(String pmCode);
	
	//==============일지구분선

	ArrayList<PatrolJournal> patrolJournalSelectList(int currentPage, String apCode);

	int patrolJournalInsert(PatrolJournal pj);

	int patrolJournalUpdate(PatrolJournal pj);
	
	int patrolJournalDelete(PatrolJournal pj);

	
	//====================================================== 인수인계 =============================================
	
	ArrayList<TakingOver> takingOverSelectList(int currentPage, String apCode);

	int takingOverInsert(TakingOver to);

	int takingOverUpdate(TakingOver to);

	int takingOverDelete(TakingOver to);

	
	
	
	//====================================================== 차량 =============================================

	ArrayList<Member> carDbSelectList(int currentPage, String apCode);






	



	
}
