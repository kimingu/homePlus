package com.kh.homeplus.member.model.vo;


public class MemberCost {
	private String insertDate;
	private int gasTax;
	private int waterTax;
	private int electTax;
	private int apCost;
	
	public MemberCost() {
		
	}

	public MemberCost(String insertDate, int gasTax, int waterTax, int electTax, int apCost) {
		super();
		this.insertDate = insertDate;
		this.gasTax = gasTax;
		this.waterTax = waterTax;
		this.electTax = electTax;
		this.apCost = apCost;
	}

	public String getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(String insertDate) {
		this.insertDate = insertDate;
	}

	public int getGasTax() {
		return gasTax;
	}

	public void setGasTax(int gasTax) {
		this.gasTax = gasTax;
	}

	public int getWaterTax() {
		return waterTax;
	}

	public void setWaterTax(int waterTax) {
		this.waterTax = waterTax;
	}

	public int getElectTax() {
		return electTax;
	}

	public void setElectTax(int electTax) {
		this.electTax = electTax;
	}

	public int getApCost() {
		return apCost;
	}

	public void setApCost(int apCost) {
		this.apCost = apCost;
	}

	@Override
	public String toString() {
		return "MemberCost [insertDate=" + insertDate + ", gasTax=" + gasTax + ", waterTax=" + waterTax + ", electTax="
				+ electTax + ", apCost=" + apCost + "]";
	}

	
	
}
