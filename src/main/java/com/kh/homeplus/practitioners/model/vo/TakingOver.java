package com.kh.homeplus.practitioners.model.vo;

import java.util.Date;

public class TakingOver {
	
	private String taCode;
	private String apCode;
	private String taWriter;
	private String taPwd;
	private String taContent;
	private Date taCreateDate;
	private Date taModifyDate;
	private String taStatus;
	
	public TakingOver() {}

	public TakingOver(String taCode, String apCode, String taWriter, String taPwd, String taContent, Date taCreateDate,
			Date taModifyDate, String taStatus) {
		super();
		this.taCode = taCode;
		this.apCode = apCode;
		this.taWriter = taWriter;
		this.taPwd = taPwd;
		this.taContent = taContent;
		this.taCreateDate = taCreateDate;
		this.taModifyDate = taModifyDate;
		this.taStatus = taStatus;
	}

	public String getTaCode() {
		return taCode;
	}

	public void setTaCode(String taCode) {
		this.taCode = taCode;
	}

	public String getApCode() {
		return apCode;
	}

	public void setApCode(String apCode) {
		this.apCode = apCode;
	}

	public String getTaWriter() {
		return taWriter;
	}

	public void setTaWriter(String taWriter) {
		this.taWriter = taWriter;
	}

	public String getTaPwd() {
		return taPwd;
	}

	public void setTaPwd(String taPwd) {
		this.taPwd = taPwd;
	}

	public String getTaContent() {
		return taContent;
	}

	public void setTaContent(String taContent) {
		this.taContent = taContent;
	}

	public Date getTaCreateDate() {
		return taCreateDate;
	}

	public void setTaCreateDate(Date taCreateDate) {
		this.taCreateDate = taCreateDate;
	}

	public Date getTaModifyDate() {
		return taModifyDate;
	}

	public void setTaModifyDate(Date taModifyDate) {
		this.taModifyDate = taModifyDate;
	}

	public String getTaStatus() {
		return taStatus;
	}

	public void setTaStatus(String taStatus) {
		this.taStatus = taStatus;
	}

	@Override
	public String toString() {
		return "TakingOver [taCode=" + taCode + ", apCode=" + apCode + ", taWriter=" + taWriter + ", taPwd=" + taPwd
				+ ", taContent=" + taContent + ", taCreateDate=" + taCreateDate + ", taModifyDate=" + taModifyDate
				+ ", taStatus=" + taStatus + "]";
	}
	
	

}
