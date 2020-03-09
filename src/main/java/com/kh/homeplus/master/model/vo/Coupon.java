package com.kh.homeplus.master.model.vo;

import java.util.Date;

public class Coupon {
	private String cCode;
	private String cName;
	private String cPrice;
	private String cGrage;
	private Date cStartday;
	private Date cEndday;
	private char cStatus;
	
	public Coupon() {}

	public Coupon(String cCode, String cName, String cPrice, String cGrage, Date cStartday, Date cEndday,
			char cStatus) {
		super();
		this.cCode = cCode;
		this.cName = cName;
		this.cPrice = cPrice;
		this.cGrage = cGrage;
		this.cStartday = cStartday;
		this.cEndday = cEndday;
		this.cStatus = cStatus;
	}

	public String getcCode() {
		return cCode;
	}

	public void setcCode(String cCode) {
		this.cCode = cCode;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcPrice() {
		return cPrice;
	}

	public void setcPrice(String cPrice) {
		this.cPrice = cPrice;
	}

	public String getcGrage() {
		return cGrage;
	}

	public void setcGrage(String cGrage) {
		this.cGrage = cGrage;
	}

	public Date getcStartday() {
		return cStartday;
	}

	public void setcStartday(Date cStartday) {
		this.cStartday = cStartday;
	}

	public Date getcEndday() {
		return cEndday;
	}

	public void setcEndday(Date cEndday) {
		this.cEndday = cEndday;
	}

	public char getcStatus() {
		return cStatus;
	}

	public void setcStatus(char cStatus) {
		this.cStatus = cStatus;
	}

	@Override
	public String toString() {
		return "Coupon [cCode=" + cCode + ", cName=" + cName + ", cPrice=" + cPrice + ", cGrage=" + cGrage
				+ ", cStartday=" + cStartday + ", cEndday=" + cEndday + ", cStatus=" + cStatus + "]";
	}
	
}
