package com.kh.homeplus.convenient.model.vo;

import java.util.Date;

public class ConvenientAdmin {
	
private String conCode;
private String bbCode;
private String mCode;
private String conContent;
private Date conEndDate;
private char conStatus;

public ConvenientAdmin() {}

public ConvenientAdmin(String conCode, String bbCode, String mCode, String conContent, Date conEndDate,
		char conStatus) {
	super();
	this.conCode = conCode;
	this.bbCode = bbCode;
	this.mCode = mCode;
	this.conContent = conContent;
	this.conEndDate = conEndDate;
	this.conStatus = conStatus;
}

public String getConCode() {
	return conCode;
}

public void setConCode(String conCode) {
	this.conCode = conCode;
}

public String getBbCode() {
	return bbCode;
}

public void setBbCode(String bbCode) {
	this.bbCode = bbCode;
}

public String getmCode() {
	return mCode;
}

public void setmCode(String mCode) {
	this.mCode = mCode;
}

public String getConContent() {
	return conContent;
}

public void setConContent(String conContent) {
	this.conContent = conContent;
}

public Date getConEndDate() {
	return conEndDate;
}

public void setConEndDate(Date conEndDate) {
	this.conEndDate = conEndDate;
}

public char getConStatus() {
	return conStatus;
}

public void setConStatus(char conStatus) {
	this.conStatus = conStatus;
}

@Override
public String toString() {
	return "ConvenientAdmin [conCode=" + conCode + ", bbCode=" + bbCode + ", mCode=" + mCode + ", conContent="
			+ conContent + ", conEndDate=" + conEndDate + ", conStatus=" + conStatus + "]";
}



}