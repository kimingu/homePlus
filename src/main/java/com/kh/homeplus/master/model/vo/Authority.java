package com.kh.homeplus.master.model.vo;

public class Authority {

	private String auCode;
	private String auName;
	
	public Authority() {}
	
	
	public Authority(String auCode, String auName) {
		super();
		this.auCode = auCode;
		this.auName = auName;
	}


	public String getAuCode() {
		return auCode;
	}
	public void setAuCode(String auCode) {
		this.auCode = auCode;
	}
	public String getAuName() {
		return auName;
	}
	public void setAuName(String auName) {
		this.auName = auName;
	}


	@Override
	public String toString() {
		return "Authority [auCode=" + auCode + ", auName=" + auName + "]";
	}
	
	
}
