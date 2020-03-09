package com.kh.homeplus.practitioners.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.homeplus.admin.model.vo.Admin;
import com.kh.homeplus.member.model.vo.Member;
import com.kh.homeplus.practitioners.model.vo.Annual;
import com.kh.homeplus.practitioners.model.vo.CarDb;
import com.kh.homeplus.practitioners.model.vo.Commute;
import com.kh.homeplus.practitioners.model.vo.Delivery;
import com.kh.homeplus.practitioners.model.vo.Hometax;
import com.kh.homeplus.practitioners.model.vo.PageInfo;
import com.kh.homeplus.practitioners.model.vo.PatrolJournal;
import com.kh.homeplus.practitioners.model.vo.PatrolMain;
import com.kh.homeplus.practitioners.model.vo.TakingOver;





@Repository("praDao")
public class PractitionersDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	//====================================================== 실무자 메인=============================================
	
	public ArrayList<Admin> praAdSelectList(Admin loginUser) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("pra.AdSelectList", loginUser);
	}

	public ArrayList<Annual> praAnSelectList(String apCode) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("pra.AnSelectList", apCode);
	}

	public ArrayList<TakingOver> praTaSelectList(String apCode) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("pra.TaSelectList", apCode);
	}

	//====================================================== 연가 =============================================
	
	public int annualListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("pra.annualGetListCount");
	}
	
	public ArrayList<Annual> annualSelectList(PageInfo pi, String apCode) {	

		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("pra.annualSelect", apCode, rowBounds);
	}
	
	public int annualInsert(Annual an) {
		// TODO Auto-generated method stub
		return sqlSession.insert("pra.annualInsert", an);
	}

	public int annualUpdate(Annual an) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.annualUpdate", an);
	}
	
	public int annualDelete(Annual an) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.annualDelete", an);
	}
	
	
	
	//====================================================== 출근 =============================================
	
	public int commuteListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("pra.commuteGetListCount");
	}
	
	public ArrayList<Commute> commuteSelectList(PageInfo pi, String apCode) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("pra.commuteJounalSelect", apCode, rowBounds);
	}

	public int commuteInsert(Commute co) {
		// TODO Auto-generated method stub
		return sqlSession.insert("pra.commuteTowork", co);
	}

	public int commuteUpdate(Commute co) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.commuteOffwork", co);
	}
	
	//====================================================== 택배물 =============================================
	
	public int deliveryListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("pra.deliveryGetListCount");
	}
	
	public ArrayList<Delivery> deliverySelectList(PageInfo pi, String apCode) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("pra.deliverySelect", apCode, rowBounds);
	}

	public int deliveryInsert(Delivery de) {
		// TODO Auto-generated method stub
		return sqlSession.insert("pra.deliveryInsert", de);
	}

	public int deliveryUpdate(Delivery de) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.deliveryUpdate", de);
	}

	
	
	//====================================================== 사용량 관리 =============================================
	
	public int hometaxListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("pra.hometaxGetListCount");
	}
	
	public ArrayList<Hometax> hometaxSelectList(PageInfo pi, String apCode) {

		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("pra.hometaxSelect", apCode, rowBounds);
	}

	public int hometaxInsert(Hometax ht) {
		// TODO Auto-generated method stub
		return sqlSession.insert("pra.hometaxInsert", ht);
	}

	public int hometaxUpdate(Hometax ht) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.hometaxUpdate", ht);
	}
	
	public int hometaxDelete(Hometax ht) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.hometaxDelete", ht);
	}


	
	//====================================================== 순찰 =============================================
	
	public ArrayList<PatrolMain> patrolMainSelectList(String apCode) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("pra.patrolMainSelect", apCode);
	}

	public int patrolMainInsert(PatrolMain pm) {
		// TODO Auto-generated method stub
		return sqlSession.insert("pra.patrolMainInsert", pm);
	}

	public int patrolMainUpdate(PatrolMain pm) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra. Update", pm);
	}

	public int patrolMainDelete(String pmCode) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.patrolMainDelete", pmCode);
	}

	//================= 순찰일지 경계선 =========
	
	public int patrolJournalListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("pra.patrolJournalGetListCount");
	}
	
	public ArrayList<PatrolJournal> patrolJournalSelectList(PageInfo pi, String apCode) {

		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("pra.patrolJournalSelect", apCode, rowBounds);
	}

	public int patrolJournalInsert(PatrolJournal pj) {
		// TODO Auto-generated method stub
		return sqlSession.insert("pra.patrolJournalInsert", pj);
	}

	public int patrolJournalUpdate(PatrolJournal pj) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.patrolJournalUpdate", pj);
	}
	
	public int patrolJournalDelete(PatrolJournal pj) {
		// TODO Auto-generated method stub
		return sqlSession.update("pra.patrolJournalDelete", pj);
	}


	
		
	//====================================================== 인수인계 =============================================
	
		public int takingOverListCount() {
			// TODO Auto-generated method stub
			return sqlSession.selectOne("pra.takingOverGetListCount");
		}
		
		public ArrayList<TakingOver> takingOverSelectList(PageInfo pi, String apCode) {

			int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			
			return (ArrayList)sqlSession.selectList("pra.takingOverSelect", apCode, rowBounds);
		}

		public int takingOverInsert(TakingOver to) {
			// TODO Auto-generated method stub
			return sqlSession.insert("pra.takingOverInsert", to);
		}

		public int takingOverUpdate(TakingOver to) {
			// TODO Auto-generated method stub
			return sqlSession.update("pra.takingOverUpdate", to);
		}

		public int takingOverDelete(TakingOver to) {
			// TODO Auto-generated method stub
			return sqlSession.update("pra.takingOverDelete", to);
		}

	
	//====================================================== 차량 =============================================
	
	public int carDbGetListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("pra.carDbGetListCount");
	}
	
	public ArrayList<Member> carDbSelectList(PageInfo pi, String apCode) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("pra.carDbSelect", apCode, rowBounds);
	}

	







	
	

}
