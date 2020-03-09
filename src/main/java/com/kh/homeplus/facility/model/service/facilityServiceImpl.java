package com.kh.homeplus.facility.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.homeplus.facility.controller.Pagination;
import com.kh.homeplus.facility.model.dao.facilityDao;
import com.kh.homeplus.facility.model.vo.Apsemidetail;
import com.kh.homeplus.facility.model.vo.Category;
import com.kh.homeplus.facility.model.vo.FacAnswer;
import com.kh.homeplus.facility.model.vo.Fac_List;
import com.kh.homeplus.facility.model.vo.Fac_Persent;
import com.kh.homeplus.facility.model.vo.FacilityTask;
import com.kh.homeplus.facility.model.vo.facPageInfo;
import com.kh.homeplus.facility.model.vo.PageInfo;
import com.kh.homeplus.facility.model.vo.ParkArea;
import com.kh.homeplus.facility.model.vo.Readingroomman;
import com.kh.homeplus.facility.model.vo.Road;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.master.model.vo.Message;
import com.kh.homeplus.master.model.vo.SearchPageInfo;
import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;

@Service("fService")
public class facilityServiceImpl implements facilityService {
	@Autowired
	private facilityDao fDao;

	@Override
	public int insertFT(FacilityTask ft) {
		return fDao.insertFT(ft);
	}

	@Override
	public FacilityTask selectFT(Category cate) {
		return fDao.selectFT(cate);
	}

	@Override
	public ArrayList<FacilityTask> selectFTList() {
		return fDao.selectFTList();
	}

	@Override
	public ArrayList<Fac_Persent> getPersent() {
		return fDao.getPersent();
	}

	@Override
	public ArrayList<Fac_List> selectApList() {
		return fDao.selectAPList();
	}

	@Override
	public ArrayList<Fac_List> selectApCateList(String sel) {
		return fDao.selectApCateList(sel);
	}

	@Override
	public ArrayList<Apsemidetail> apartsemi(String code) {
		return fDao.apartsemi(code);
	}

	@Override
	public ArrayList<Fac_List> selectList(int currentPage) {
		int listCount = fDao.getListCount();
		facPageInfo pi = Pagination.getfacPageInfo(currentPage, listCount);

		return fDao.selectList(pi);
	}

	@Override
	public ArrayList<Fac_List> selectConvList(int currentPage) {
		int listCount = fDao.getCListCount();
		facPageInfo pi = Pagination.getfacPageInfo(currentPage, listCount);
		return fDao.selectConvList(pi);
	}

	@Override
	public ArrayList<Fac_Persent> getConvPersent() {
		return fDao.getConvPersent();
	}

	@Override
	public ArrayList<Fac_List> selectTrafList(int currentPage) {
		int listCount = fDao.getTListCount();
		facPageInfo pi = Pagination.getfacPageInfo(currentPage, listCount);
		return fDao.selectTrafvList(pi);
	}

	@Override
	public ArrayList<Fac_Persent> getTrafPersent() {
		return fDao.getTrafPersent();
	}

	@Override
	public ArrayList<Fac_List> selectgrList(String code) {
		return fDao.selectgrList(code);
	}

	@Override
	public Fac_List facdetail(String code) {
		return fDao.facdetail(code);
	}

	@Override
	public ArrayList<Company> comlist() {
		return fDao.comlist();
	}

	@Override
	public int facanswer(FacAnswer a) {

		return fDao.facanswer(a);
	}

	@Override
	public int facwork(FacilityTask ft) {
		return fDao.facwork(ft);
	}

	@Override
	public ArrayList<Fac_List> selectft() {
		return fDao.selectft();
	}

	@Override
	public ArrayList<Fac_List> trafficenter() {
		return fDao.trafficenter();
	}

	@Override
	public ArrayList<Fac_List> selecttraffic(String sel) {
		return fDao.selecttraffic(sel);
	}

	@Override
	public ArrayList<Road> roadlist() {
		return fDao.roadlist();
	}

	@Override
	public int facend(FacAnswer a) {
		return fDao.facend(a);
	}

	@Override
	public ArrayList<Readingroomman> readlist() {
		return fDao.readlist();
	}

	@Override
	public ArrayList<ParkArea> pklist(String code) {
		return fDao.pklist(code);
	}

	@Override
	public ArrayList<Fac_List> apdetail(String code) {
		return fDao.apdetail(code);
	}

	@Override
	public ArrayList<Message> selectReceiveList(PageInfo pageInfo) {
		int listCount = fDao.getReceiveListCount(pageInfo.getReceiver());

		PageInfo pi = Pagination.getPageInfo(pageInfo.getCurrentPage(), listCount);
		pi.setReceiver(pageInfo.getReceiver());

		return fDao.selectReceiveList(pi);
	}
	@Override
	public Message messageDetailView(String meCode) {
		int result = fDao.messageStatusChange(meCode);
		
		return fDao.messageDetailView(meCode);
	}

	@Override
	public ArrayList<Message> selectSendedList(PageInfo pageInfo) {
		int listCount = fDao.getSendedListCount(pageInfo.getWriter());
		
		PageInfo pi = Pagination.getPageInfo(pageInfo.getCurrentPage(), listCount);
		pi.setWriter(pageInfo.getWriter());
		
		return fDao.selectSendedList(pi);
	}

	@Override
	public int messageWrite(Message message) {
		return fDao.messageWrite(message);
	}

	@Override
	public int messageLock(String meCode) {
		return fDao.messageLock(meCode);
	}

	@Override
	public ArrayList<Message> selectLockerList(PageInfo pageInfo) {
		int listCount = fDao.getLockerListCount(pageInfo.getWriter());
		
		PageInfo pi = Pagination.getPageInfo(pageInfo.getCurrentPage(), listCount);
		pi.setWriter(pageInfo.getWriter());
		pi.setReceiver(pageInfo.getReceiver());
		
		return fDao.selectLockerList(pi);
	}

	@Override
	public int messageDelete(String meCode) {
		return fDao.messageDelete(meCode);
	}

	@Override
	public int messageCancelLock(String meCode) {
		return fDao.messageCancelLock(meCode);
	}

}
