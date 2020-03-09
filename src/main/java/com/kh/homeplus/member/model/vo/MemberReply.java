package com.kh.homeplus.member.model.vo;

import java.sql.Date;

public class MemberReply {
	
	private String rCode;
	private String bCode;
	private String mId;
	private String rContent;
	private char rStatus;
	private Date rCreateDate;
	private Date rModifyDate;
	private String bContent;
	private String bName;
	private String bTitle;
	

	public MemberReply() {
		
	}


	public MemberReply(String rCode, String bCode, String mId, String rContent, char rStatus, Date rCreateDate,
			Date rModifyDate, String bContent, String bName, String bTitle) {
		super();
		this.rCode = rCode;
		this.bCode = bCode;
		this.mId = mId;
		this.rContent = rContent;
		this.rStatus = rStatus;
		this.rCreateDate = rCreateDate;
		this.rModifyDate = rModifyDate;
		this.bContent = bContent;
		this.bName = bName;
		this.bTitle = bTitle;
	}


	public String getrCode() {
		return rCode;
	}


	public void setrCode(String rCode) {
		this.rCode = rCode;
	}


	public String getbCode() {
		return bCode;
	}


	public void setbCode(String bCode) {
		this.bCode = bCode;
	}


	public String getmId() {
		return mId;
	}


	public void setmId(String mId) {
		this.mId = mId;
	}


	public String getrContent() {
		return rContent;
	}


	public void setrContent(String rContent) {
		this.rContent = rContent;
	}


	public char getrStatus() {
		return rStatus;
	}


	public void setrStatus(char rStatus) {
		this.rStatus = rStatus;
	}


	public Date getrCreateDate() {
		return rCreateDate;
	}


	public void setrCreateDate(Date rCreateDate) {
		this.rCreateDate = rCreateDate;
	}


	public Date getrModifyDate() {
		return rModifyDate;
	}


	public void setrModifyDate(Date rModifyDate) {
		this.rModifyDate = rModifyDate;
	}


	public String getbContent() {
		return bContent;
	}


	public void setbContent(String bContent) {
		this.bContent = bContent;
	}


	public String getbName() {
		return bName;
	}


	public void setbName(String bName) {
		this.bName = bName;
	}


	public String getbTitle() {
		return bTitle;
	}


	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}


	@Override
	public String toString() {
		return "MemberReply [rCode=" + rCode + ", bCode=" + bCode + ", mId=" + mId + ", rContent=" + rContent
				+ ", rStatus=" + rStatus + ", rCreateDate=" + rCreateDate + ", rModifyDate=" + rModifyDate
				+ ", bContent=" + bContent + ", bName=" + bName + ", bTitle=" + bTitle + "]";
	}

	
}
