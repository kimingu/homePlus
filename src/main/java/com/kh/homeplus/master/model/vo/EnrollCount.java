package com.kh.homeplus.master.model.vo;

public class EnrollCount {
	private int ecMember18;
	private int ecMember19;
	private int ecMember20;
	private int ecAdmin18;
	private int ecAdmin19;
	private int ecAdmin20;
	private int ecApply18;
	private int ecApply19;
	private int ecApply20;
	
	public EnrollCount() {}

	public EnrollCount(int ecMember18, int ecMember19, int ecMember20, int ecAdmin18, int ecAdmin19, int ecAdmin20,
			int ecApply18, int ecApply19, int ecApply20) {
		super();
		this.ecMember18 = ecMember18;
		this.ecMember19 = ecMember19;
		this.ecMember20 = ecMember20;
		this.ecAdmin18 = ecAdmin18;
		this.ecAdmin19 = ecAdmin19;
		this.ecAdmin20 = ecAdmin20;
		this.ecApply18 = ecApply18;
		this.ecApply19 = ecApply19;
		this.ecApply20 = ecApply20;
	}

	public int getEcMember18() {
		return ecMember18;
	}

	public void setEcMember18(int ecMember18) {
		this.ecMember18 = ecMember18;
	}

	public int getEcMember19() {
		return ecMember19;
	}

	public void setEcMember19(int ecMember19) {
		this.ecMember19 = ecMember19;
	}

	public int getEcMember20() {
		return ecMember20;
	}

	public void setEcMember20(int ecMember20) {
		this.ecMember20 = ecMember20;
	}

	public int getEcAdmin18() {
		return ecAdmin18;
	}

	public void setEcAdmin18(int ecAdmin18) {
		this.ecAdmin18 = ecAdmin18;
	}

	public int getEcAdmin19() {
		return ecAdmin19;
	}

	public void setEcAdmin19(int ecAdmin19) {
		this.ecAdmin19 = ecAdmin19;
	}

	public int getEcAdmin20() {
		return ecAdmin20;
	}

	public void setEcAdmin20(int ecAdmin20) {
		this.ecAdmin20 = ecAdmin20;
	}

	public int getEcApply18() {
		return ecApply18;
	}

	public void setEcApply18(int ecApply18) {
		this.ecApply18 = ecApply18;
	}

	public int getEcApply19() {
		return ecApply19;
	}

	public void setEcApply19(int ecApply19) {
		this.ecApply19 = ecApply19;
	}

	public int getEcApply20() {
		return ecApply20;
	}

	public void setEcApply20(int ecApply20) {
		this.ecApply20 = ecApply20;
	}

	@Override
	public String toString() {
		return "EnrollCount [ecMember18=" + ecMember18 + ", ecMember19=" + ecMember19 + ", ecMember20=" + ecMember20
				+ ", ecAdmin18=" + ecAdmin18 + ", ecAdmin19=" + ecAdmin19 + ", ecAdmin20=" + ecAdmin20 + ", ecApply18="
				+ ecApply18 + ", ecApply19=" + ecApply19 + ", ecApply20=" + ecApply20 + "]";
	}

	
	
}
