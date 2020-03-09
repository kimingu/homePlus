package com.kh.homeplus.member.model.vo;

import java.sql.Date;

public class MemberNotice {

	private String mncCode;
	private String categoryCode;
	private String categoryName;
	private Date mncCreateDate;
	private char mncStatus;
	
	public MemberNotice() {
		
	}

	public MemberNotice(String mncCode, String categoryCode, String categoryName, Date mncCreateDate,
			char mncStatus) {
		super();
		this.mncCode = mncCode;
		this.categoryCode = categoryCode;
		this.categoryName = categoryName;
		this.mncCreateDate = mncCreateDate;
		this.mncStatus = mncStatus;
	}

	public String getMncCode() {
		return mncCode;
	}

	public void setMncCode(String mncCode) {
		this.mncCode = mncCode;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getcategoryName() {
		return categoryName;
	}

	public void setcategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Date getmncCreateDate() {
		return mncCreateDate;
	}

	public void setmncCreateDate(Date mncCreateDate) {
		this.mncCreateDate = mncCreateDate;
	}

	public char getMncStatus() {
		return mncStatus;
	}

	public void setMncStatus(char mncStatus) {
		this.mncStatus = mncStatus;
	}

	@Override
	public String toString() {
		return "MemberNotice [mncCode=" + mncCode + ", categoryCode=" + categoryCode + ", categoryName=" + categoryName
				+ ", mncCreateDate=" + mncCreateDate + ", mncStatus=" + mncStatus + "]";
	}
	
	
	
	
}
