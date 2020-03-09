package com.kh.homeplus.facility.model.service;

import java.util.ArrayList;

import com.kh.homeplus.bulletinBoard.model.vo.BulletinBoard;
import com.kh.homeplus.facility.model.vo.Apsemidetail;
import com.kh.homeplus.facility.model.vo.Category;
import com.kh.homeplus.facility.model.vo.FacAnswer;
import com.kh.homeplus.facility.model.vo.Fac_List;
import com.kh.homeplus.facility.model.vo.Fac_Persent;
import com.kh.homeplus.facility.model.vo.FacilityTask;
import com.kh.homeplus.facility.model.vo.PageInfo;
import com.kh.homeplus.facility.model.vo.ParkArea;
import com.kh.homeplus.facility.model.vo.Readingroomman;
import com.kh.homeplus.facility.model.vo.Road;
import com.kh.homeplus.manpower.model.vo.Company;
import com.kh.homeplus.master.model.vo.Message;
import com.kh.homeplus.master.model.vo.SearchPageInfo;

public interface facilityService {

	public ArrayList<Fac_List> selectList(int currentPage);

	public int insertFT(FacilityTask ft);

	public FacilityTask selectFT(Category cate);

	public ArrayList<FacilityTask> selectFTList();

	public ArrayList<Fac_Persent> getPersent();

	public ArrayList<Fac_List> selectApList();

	public ArrayList<Fac_List> selectApCateList(String sel);

	public ArrayList<Apsemidetail> apartsemi(String code);

	public ArrayList<Fac_List> selectConvList(int currentPage);

	public ArrayList<Fac_Persent> getConvPersent();

	public ArrayList<Fac_List> selectTrafList(int currentPage);

	public ArrayList<Fac_Persent> getTrafPersent();

	public ArrayList<Fac_List> selectgrList(String code);

	public Fac_List facdetail(String code);

	public ArrayList<Company> comlist();

	public int facanswer(FacAnswer a);

	public int facwork(FacilityTask ft);

	public ArrayList<Fac_List> selectft();

	public ArrayList<Fac_List> trafficenter();

	public ArrayList<Fac_List> selecttraffic(String sel);

	public ArrayList<Road> roadlist();

	public int facend(FacAnswer a);

	public ArrayList<Readingroomman> readlist();

	public ArrayList<ParkArea> pklist(String code);

	public ArrayList<Fac_List> apdetail(String code);

	public ArrayList<Message> selectReceiveList(PageInfo pageInfo);

	public Message messageDetailView(String meCode);

	public ArrayList<Message> selectSendedList(PageInfo pageInfo);

	public int messageWrite(Message message);

	public int messageLock(String meCode);

	public ArrayList<Message> selectLockerList(PageInfo pageInfo);

	public int messageDelete(String meCode);

	public int messageCancelLock(String meCode);


}
