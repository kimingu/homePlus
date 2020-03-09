package com.kh.homeplus.master.model.vo;

import java.util.Date;

public class Income {

	private String iCode;
	private String comCode;
	private Date iDate;
	private String iMoney;
	private char iStatus;
	
	public Income() {}
	
	public Income(String iCode, String comCode, Date iDate, String iMoney, char iStatus) {
		super();
		this.iCode = iCode;
		this.comCode = comCode;
		this.iDate = iDate;
		this.iMoney = iMoney;
		this.iStatus = iStatus;
	}

	public String getiCode() {
		return iCode;
	}

	public void setiCode(String iCode) {
		this.iCode = iCode;
	}

	public String getComCode() {
		return comCode;
	}

	public void setComCode(String comCode) {
		this.comCode = comCode;
	}

	public Date getiDate() {
		return iDate;
	}

	public void setiDate(Date iDate) {
		this.iDate = iDate;
	}

	public String getiMoney() {
		return iMoney;
	}

	public void setiMoney(String iMoney) {
		this.iMoney = iMoney;
	}

	public char getiStatus() {
		return iStatus;
	}

	public void setiStatus(char iStatus) {
		this.iStatus = iStatus;
	}

	@Override
	public String toString() {
		return "Income [iCode=" + iCode + ", comCode=" + comCode + ", iDate=" + iDate + ", iMoney=" + iMoney
				+ ", iStatus=" + iStatus + "]";
	}
	
	
	
	
}
