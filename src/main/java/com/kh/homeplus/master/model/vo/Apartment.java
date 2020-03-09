package com.kh.homeplus.master.model.vo;

public class Apartment {
	private String apCode;
	private String apAddress;
	
	public Apartment() {}
	
	public Apartment(String apCode, String apAddress) {
		super();
		this.apCode = apCode;
		this.apAddress = apAddress;
	}

	public String getApCode() {
		return apCode;
	}

	public void setApCode(String apCode) {
		this.apCode = apCode;
	}

	public String getApAddress() {
		return apAddress;
	}

	public void setApAddress(String apAddress) {
		this.apAddress = apAddress;
	}

	@Override
	public String toString() {
		return "Apartment [apCode=" + apCode + ", apAddress=" + apAddress + "]";
	}
	
}
