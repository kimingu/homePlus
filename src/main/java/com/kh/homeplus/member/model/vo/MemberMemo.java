package com.kh.homeplus.member.model.vo;

import java.sql.Date;

public class MemberMemo {
	private String mmeCode;
	private String mmeWriter;
	private String mmeContent;
	private Date mmeDate;
	private char mmeStatus;
	
	public MemberMemo() {
		
	}

	public String getMmeCode() {
		return mmeCode;
	}

	public void setMmeCode(String mmeCode) {
		this.mmeCode = mmeCode;
	}

	public String getMmeWriter() {
		return mmeWriter;
	}

	public void setMmeWriter(String mmeWriter) {
		this.mmeWriter = mmeWriter;
	}

	public String getMmeContent() {
		return mmeContent;
	}

	public void setMmeContent(String mmeContent) {
		this.mmeContent = mmeContent;
	}

	public Date getMmeDate() {
		return mmeDate;
	}

	public void setMmeDate(Date mmeDate) {
		this.mmeDate = mmeDate;
	}

	public char getMmeStatus() {
		return mmeStatus;
	}

	public void setMmeStatus(char mmeStatus) {
		this.mmeStatus = mmeStatus;
	}

	@Override
	public String toString() {
		return "MemberMemo [mmeCode=" + mmeCode + ", mmeWriter=" + mmeWriter + ", mmeContent=" + mmeContent
				+ ", mmeDate=" + mmeDate + ", mmeStatus=" + mmeStatus + "]";
	}
	
	
}
