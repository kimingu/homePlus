package com.kh.homeplus.facility.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kh.homeplus.facility.model.vo.Apsemidetail;
import com.kh.homeplus.facility.model.vo.Category;
import com.kh.homeplus.facility.model.vo.FacAnswer;
import com.kh.homeplus.facility.model.vo.Fac_List;
import com.kh.homeplus.facility.model.vo.Fac_Persent;
import com.kh.homeplus.facility.model.vo.FacilityTask;
import com.kh.homeplus.facility.model.vo.PageInfo;
import com.kh.homeplus.facility.model.vo.facPageInfo;
import com.kh.homeplus.facility.model.vo.ParkArea;
import com.kh.homeplus.facility.model.vo.Readingroomman;
import com.kh.homeplus.facility.model.vo.Road;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.master.model.vo.Message;


@Repository("fDao")
public class facilityDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	public ArrayList<Fac_List> selectAPList(){
		
		return (ArrayList)sqlSession.selectList("fac.selectAPList");	
	};

	public ArrayList<Fac_List> selectList(facPageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("fac.selectList", null, rowBounds);
	}

	public int insertFT(FacilityTask ft) {
		return sqlSession.insert("fac.insertFT",ft);
	}


	public FacilityTask selectFT(Category cate) {
		return sqlSession.selectOne("fac.selectFT",cate);
	}


	public ArrayList<FacilityTask> selectFTList() {
		return (ArrayList)sqlSession.selectList("fac.selectFTList");
	}


	public ArrayList<Fac_Persent> getPersent() {
		return (ArrayList)sqlSession.selectList("fac.getPersent");
	}

	public ArrayList<Fac_List> selectApCateList(String sel) {
		return (ArrayList)sqlSession.selectList("fac.ApcateList",sel);
	}

	public ArrayList<Apsemidetail> apartsemi(String code) {
		return (ArrayList)sqlSession.selectList("fac.apartsemi",code);
	}

	public int getListCount() {
		return sqlSession.selectOne("fac.getListCount");
	}

	public ArrayList<Fac_List> selectConvList(facPageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("fac.selectConvList", null, rowBounds);
	}

	public ArrayList<Fac_Persent> getConvPersent() {
		return (ArrayList)sqlSession.selectList("fac.getConvPersent");
	}

	public ArrayList<Fac_List> selectTrafvList(facPageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("fac.selectTrafList", null, rowBounds);
	}

	public ArrayList<Fac_Persent> getTrafPersent() {
		return (ArrayList)sqlSession.selectList("fac.getTrafPersent");
	}

	public ArrayList<Fac_List> selectgrList(String code) {
		return (ArrayList)sqlSession.selectList("fac.grList",code);
	}

	public Fac_List facdetail(String code) {
		return sqlSession.selectOne("fac.facdetail",code);
	}

	public ArrayList<Company> comlist() {
		return (ArrayList)sqlSession.selectList("fac.comlist");
	}

	public int facanswer(FacAnswer a) {
		return sqlSession.update("fac.facanswer",a);
	}

	public int facwork(FacilityTask ft) {
		return sqlSession.insert("fac.facwork",ft);
	}

	public ArrayList<Fac_List> selectft() {
		return (ArrayList)sqlSession.selectList("fac.selectft");
	}

	public ArrayList<Fac_List> trafficenter() {
		return (ArrayList)sqlSession.selectList("fac.trafficenter");
	}

	public ArrayList<Fac_List> selecttraffic(String sel) {
		return (ArrayList)sqlSession.selectList("fac.selecttraffic",sel);
	}

	public ArrayList<Road> roadlist() {
		return (ArrayList)sqlSession.selectList("fac.roadlist");
	}

	public int facend(FacAnswer a) {
		return sqlSession.update("fac.facend",a);
	}

	public ArrayList<Readingroomman> readlist() {
		return (ArrayList)sqlSession.selectList("fac.readlist");
	}

	public int getCListCount() {
		return sqlSession.selectOne("fac.getCListCount");
	}

	public int getTListCount() {
		return sqlSession.selectOne("fac.getTListCount");
	}

	public ArrayList<ParkArea> pklist(String code) {
		return (ArrayList)sqlSession.selectList("fac.pklist",code);
	}

	public ArrayList<Fac_List> apdetail(String code) {
		return (ArrayList)sqlSession.selectList("fac.apdetail",code);
	}

	public int getReceiveListCount(String receiver) {
		return sqlSession.selectOne("masterMapper.receiveListCount", receiver);
	}

	public ArrayList<Message> selectReceiveList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectReceiveList", pi, rowBounds);
	}

	public int messageStatusChange(String meCode) {
		return sqlSession.update("masterMapper.messageStatusChange", meCode);
	}

	public Message messageDetailView(String meCode) {
		return sqlSession.selectOne("masterMapper.messageDetail", meCode);
	}

	public int getSendedListCount(String writer) {
		return sqlSession.selectOne("masterMapper.sendedListCount", writer);
	}

	public ArrayList<Message> selectSendedList(PageInfo pi) {
		int offset = (pi.getCurrentPage()- 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectSendedList", pi, rowBounds);
	}

	public int messageWrite(Message message) {
		return sqlSession.insert("masterMapper.messageWrite", message);
	}

	public int messageLock(String meCode) {
		return sqlSession.update("masterMapper.messageLock", meCode);
	}

	public int getLockerListCount(String writer) {
		return sqlSession.selectOne("masterMapper.LockerListCount", writer);
	}

	public ArrayList<Message> selectLockerList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("masterMapper.selectLockerList", pi, rowBounds) ;
	}

	public int messageDelete(String meCode) {
		return sqlSession.update("masterMapper.messageDelete", meCode);
	}

	public int messageCancelLock(String meCode) {
		return sqlSession.update("masterMapper.messageCancelLock", meCode);
	}


}
