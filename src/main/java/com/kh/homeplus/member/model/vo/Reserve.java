package com.kh.homeplus.member.model.vo;

import java.sql.Date;

public class Reserve {
	private String reCode;
	private String coType;
	private Date reDate;
	
	public Reserve() {
		
	}

	public Reserve(String reCode, String coType, Date reDate) {
		super();
		this.reCode = reCode;
		this.coType = coType;
		this.reDate = reDate;
	}

	public String getReCode() {
		return reCode;
	}

	public void setReCode(String reCode) {
		this.reCode = reCode;
	}

	public String getCoType() {
		return coType;
	}

	public void setCoType(String coType) {
		this.coType = coType;
	}

	public Date getReDate() {
		return reDate;
	}

	public void setReDate(Date reDate) {
		this.reDate = reDate;
	}

	@Override
	public String toString() {
		return "Reserve [reCode=" + reCode + ", coType=" + coType + "]";
	}
	
	
	

}
