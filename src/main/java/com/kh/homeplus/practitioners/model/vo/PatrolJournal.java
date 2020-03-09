package com.kh.homeplus.practitioners.model.vo;

import java.util.Date;

public class PatrolJournal {

	private String pjCode;
	private String apCode;
	private String pjWriter;
	private String pjPwd;
	private Date pjCreateDate;
	private String pjStart;
	private String pjEnd;
	private String pjEtc;
	private String pjStatus;
	
	public PatrolJournal() {}

	public PatrolJournal(String pjCode, String apCode, String pjWriter, String pjPwd, Date pjCreateDate, String pjStart,
			String pjEnd, String pjEtc, String pjStatus) {
		super();
		this.pjCode = pjCode;
		this.apCode = apCode;
		this.pjWriter = pjWriter;
		this.pjPwd = pjPwd;
		this.pjCreateDate = pjCreateDate;
		this.pjStart = pjStart;
		this.pjEnd = pjEnd;
		this.pjEtc = pjEtc;
		this.pjStatus = pjStatus;
	}

	public String getPjCode() {
		return pjCode;
	}

	public void setPjCode(String pjCode) {
		this.pjCode = pjCode;
	}

	public String getApCode() {
		return apCode;
	}

	public void setApCode(String apCode) {
		this.apCode = apCode;
	}

	public String getPjWriter() {
		return pjWriter;
	}

	public void setPjWriter(String pjWriter) {
		this.pjWriter = pjWriter;
	}

	public String getPjPwd() {
		return pjPwd;
	}

	public void setPjPwd(String pjPwd) {
		this.pjPwd = pjPwd;
	}

	public Date getPjCreateDate() {
		return pjCreateDate;
	}

	public void setPjCreateDate(Date pjCreateDate) {
		this.pjCreateDate = pjCreateDate;
	}

	public String getPjStart() {
		return pjStart;
	}

	public void setPjStart(String pjStart) {
		this.pjStart = pjStart;
	}

	public String getPjEnd() {
		return pjEnd;
	}

	public void setPjEnd(String pjEnd) {
		this.pjEnd = pjEnd;
	}

	public String getPjEtc() {
		return pjEtc;
	}

	public void setPjEtc(String pjEtc) {
		this.pjEtc = pjEtc;
	}

	public String getPjStatus() {
		return pjStatus;
	}

	public void setPjStatus(String pjStatus) {
		this.pjStatus = pjStatus;
	}

	@Override
	public String toString() {
		return "PatrolJournal [pjCode=" + pjCode + ", apCode=" + apCode + ", pjWriter=" + pjWriter + ", pjPwd=" + pjPwd
				+ ", pjCreateDate=" + pjCreateDate + ", pjStart=" + pjStart + ", pjEnd=" + pjEnd + ", pjEtc=" + pjEtc
				+ ", pjStatus=" + pjStatus + "]";
	}
	
	

}
