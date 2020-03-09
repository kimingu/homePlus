package com.kh.homeplus.master.model.vo;

public class IncomeMoney {

	private int iMoney17;
	private int iMoney18;
	private int iMoney19;
	private int iMoney20;
	
	public IncomeMoney() {}

	public IncomeMoney(int iMoney17, int iMoney18, int iMoney19, int iMoney20) {
		super();
		this.iMoney17 = iMoney17;
		this.iMoney18 = iMoney18;
		this.iMoney19 = iMoney19;
		this.iMoney20 = iMoney20;
	}

	public int getiMoney17() {
		return iMoney17;
	}

	public void setiMoney17(int iMoney17) {
		this.iMoney17 = iMoney17;
	}

	public int getiMoney18() {
		return iMoney18;
	}

	public void setiMoney18(int iMoney18) {
		this.iMoney18 = iMoney18;
	}

	public int getiMoney19() {
		return iMoney19;
	}

	public void setiMoney19(int iMoney19) {
		this.iMoney19 = iMoney19;
	}

	public int getiMoney20() {
		return iMoney20;
	}

	public void setiMoney20(int iMoney20) {
		this.iMoney20 = iMoney20;
	}

	@Override
	public String toString() {
		return "IncomeMoney [iMoney17=" + iMoney17 + ", iMoney18=" + iMoney18 + ", iMoney19=" + iMoney19 + ", iMoney20="
				+ iMoney20 + "]";
	}
	
	
}
