package com.kh.homeplus.manpower.model.vo;

import java.sql.Date;

public class Company {
	private String comCode;
	private String comDivision;
	private String comName;
	private String comCeo;
	private Date comStartDate;
	private Date comEndDate;
	private Date comEsDate;
	private String comScale;
	private int comNw;
	private String comCapital;
	private String comMajor;
	private String comTel;
	private int comPay;
	private String comStatus;
	
	public Company() {}

	public Company(String comCode, String comDivision, String comName, String comCeo, Date comStartDate, Date comEndDate,
			Date comEsDate, String comScale, int comNw, String comCapital, String comMajor, String comTel, int comPay,
			String comStatus) {
		super();
		this.comCode = comCode;
		this.comDivision = comDivision;
		this.comName = comName;
		this.comCeo = comCeo;
		this.comStartDate = comStartDate;
		this.comEndDate = comEndDate;
		this.comEsDate = comEsDate;
		this.comScale = comScale;
		this.comNw = comNw;
		this.comCapital = comCapital;
		this.comMajor = comMajor;
		this.comTel = comTel;
		this.comPay = comPay;
		this.comStatus = comStatus;
	}

	public String getComCode() {
		return comCode;
	}

	public void setComCode(String comCode) {
		this.comCode = comCode;
	}

	public String getComDivision() {
		return comDivision;
	}

	public void setComDivision(String comDivision) {
		this.comDivision = comDivision;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getComCeo() {
		return comCeo;
	}

	public void setComCeo(String comCeo) {
		this.comCeo = comCeo;
	}

	public Date getComStartDate() {
		return comStartDate;
	}

	public void setComStartDate(Date comStartDate) {
		this.comStartDate = comStartDate;
	}

	public Date getComEndDate() {
		return comEndDate;
	}

	public void setComEndDate(Date comEndDate) {
		this.comEndDate = comEndDate;
	}

	public Date getComEsDate() {
		return comEsDate;
	}

	public void setComEsDate(Date comEsDate) {
		this.comEsDate = comEsDate;
	}

	public String getComScale() {
		return comScale;
	}

	public void setComScale(String comScale) {
		this.comScale = comScale;
	}

	public int getComNw() {
		return comNw;
	}

	public void setComNw(int comNw) {
		this.comNw = comNw;
	}

	public String getComCapital() {
		return comCapital;
	}

	public void setComCapital(String comCapital) {
		this.comCapital = comCapital;
	}

	public String getComMajor() {
		return comMajor;
	}

	public void setComMajor(String comMajor) {
		this.comMajor = comMajor;
	}

	public String getComTel() {
		return comTel;
	}

	public void setComTel(String comTel) {
		this.comTel = comTel;
	}

	public int getComPay() {
		return comPay;
	}

	public void setComPay(int comPay) {
		this.comPay = comPay;
	}

	public String getComStatus() {
		return comStatus;
	}

	public void setComStatus(String comStatus) {
		this.comStatus = comStatus;
	}

	@Override
	public String toString() {
		return "Company [comCode=" + comCode + ", comDivision=" + comDivision + ", comName=" + comName + ", comCeo="
				+ comCeo + ", comStartDate=" + comStartDate + ", comEndDate=" + comEndDate + ", comEsDate=" + comEsDate
				+ ", comScale=" + comScale + ", comNw=" + comNw + ", comCapital=" + comCapital + ", comMajor="
				+ comMajor + ", comTel=" + comTel + ", comPay=" + comPay + ", comStatus=" + comStatus + "]";
	}

}
