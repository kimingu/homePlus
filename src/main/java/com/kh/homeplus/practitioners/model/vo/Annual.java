package com.kh.homeplus.practitioners.model.vo;

public class Annual {
	
	private String anCode;
	private String apCode; 
	private String anName; 
	private String anWriter; 
	private String anPwd; 
	private String anStart; 
	private String anEnd;
	private String anEtc;
	private String anStatus; 
	
	public Annual() {}

	public Annual(String anCode, String apCode, String anName, String anWriter, String anPwd, String anStart,
			String anEnd, String anEtc, String anStatus) {
		super();
		this.anCode = anCode;
		this.apCode = apCode;
		this.anName = anName;
		this.anWriter = anWriter;
		this.anPwd = anPwd;
		this.anStart = anStart;
		this.anEnd = anEnd;
		this.anEtc = anEtc;
		this.anStatus = anStatus;
	}

	public String getAnCode() {
		return anCode;
	}

	public void setAnCode(String anCode) {
		this.anCode = anCode;
	}

	public String getApCode() {
		return apCode;
	}

	public void setApCode(String apCode) {
		this.apCode = apCode;
	}

	public String getAnName() {
		return anName;
	}

	public void setAnName(String anName) {
		this.anName = anName;
	}

	public String getAnWriter() {
		return anWriter;
	}

	public void setAnWriter(String anWriter) {
		this.anWriter = anWriter;
	}

	public String getAnPwd() {
		return anPwd;
	}

	public void setAnPwd(String anPwd) {
		this.anPwd = anPwd;
	}

	public String getAnStart() {
		return anStart;
	}

	public void setAnStart(String anStart) {
		this.anStart = anStart;
	}

	public String getAnEnd() {
		return anEnd;
	}

	public void setAnEnd(String anEnd) {
		this.anEnd = anEnd;
	}

	public String getAnEtc() {
		return anEtc;
	}

	public void setAnEtc(String anEtc) {
		this.anEtc = anEtc;
	}

	public String getAnStatus() {
		return anStatus;
	}

	public void setAnStatus(String anStatus) {
		this.anStatus = anStatus;
	}

	@Override
	public String toString() {
		return "Anuual [anCode=" + anCode + ", apCode=" + apCode + ", anName=" + anName + ", anWriter=" + anWriter
				+ ", anPwd=" + anPwd + ", anStart=" + anStart + ", anEnd=" + anEnd + ", anEtc=" + anEtc + ", anStatus="
				+ anStatus + "]";
	}
	
	
			
			
	

}
