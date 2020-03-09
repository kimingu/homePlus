package com.kh.homeplus.manpower.model.vo;

import java.sql.Date;

public class Expense {
	private String exCode;
	private String comCode;
	private String comName;
	private Date exDate;
	private String exExpend;
	private int exPrice;
	private String exStatus;
	
	public Expense() {}

	public Expense(String exCode, String comCode, String comName, Date exDate, String exExpend, int exPrice,
			String exStatus) {
		super();
		this.exCode = exCode;
		this.comCode = comCode;
		this.comName = comName;
		this.exDate = exDate;
		this.exExpend = exExpend;
		this.exPrice = exPrice;
		this.exStatus = exStatus;
	}

	public String getExCode() {
		return exCode;
	}

	public void setExCode(String exCode) {
		this.exCode = exCode;
	}

	public String getComCode() {
		return comCode;
	}

	public void setComCode(String comCode) {
		this.comCode = comCode;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public Date getExDate() {
		return exDate;
	}

	public void setExDate(Date exDate) {
		this.exDate = exDate;
	}

	public String getExExpend() {
		return exExpend;
	}

	public void setExExpend(String exExpend) {
		this.exExpend = exExpend;
	}

	public int getExPrice() {
		return exPrice;
	}

	public void setExPrice(int exPrice) {
		this.exPrice = exPrice;
	}

	public String getExStatus() {
		return exStatus;
	}

	public void setExStatus(String exStatus) {
		this.exStatus = exStatus;
	}

	@Override
	public String toString() {
		return "Expense [exCode=" + exCode + ", comCode=" + comCode + ", comName=" + comName + ", exDate=" + exDate
				+ ", exExpend=" + exExpend + ", exPrice=" + exPrice + ", exStatus=" + exStatus + "]";
	}

	

	
	
	

}
