package com.kh.homeplus.master.model.vo;

public class MemberChart {

	private String mcMember17;
	private String mcMember18;
	private String mcMember19;
	private String mcMember20;
	private String mcAdmin17;
	private String mcAdmin18;
	private String mcAdmin19;
	private String mcAdmin20;
	public MemberChart(String mcMember17, String mcMember18, String mcMember19, String mcMember20, String mcAdmin17,
			String mcAdmin18, String mcAdmin19, String mcAdmin20) {
		super();
		this.mcMember17 = mcMember17;
		this.mcMember18 = mcMember18;
		this.mcMember19 = mcMember19;
		this.mcMember20 = mcMember20;
		this.mcAdmin17 = mcAdmin17;
		this.mcAdmin18 = mcAdmin18;
		this.mcAdmin19 = mcAdmin19;
		this.mcAdmin20 = mcAdmin20;
	}
	
	public MemberChart() {}

	public String getMcMember17() {
		return mcMember17;
	}

	public void setMcMember17(String mcMember17) {
		this.mcMember17 = mcMember17;
	}

	public String getMcMember18() {
		return mcMember18;
	}

	public void setMcMember18(String mcMember18) {
		this.mcMember18 = mcMember18;
	}

	public String getMcMember19() {
		return mcMember19;
	}

	public void setMcMember19(String mcMember19) {
		this.mcMember19 = mcMember19;
	}

	public String getMcMember20() {
		return mcMember20;
	}

	public void setMcMember20(String mcMember20) {
		this.mcMember20 = mcMember20;
	}

	public String getMcAdmin17() {
		return mcAdmin17;
	}

	public void setMcAdmin17(String mcAdmin17) {
		this.mcAdmin17 = mcAdmin17;
	}

	public String getMcAdmin18() {
		return mcAdmin18;
	}

	public void setMcAdmin18(String mcAdmin18) {
		this.mcAdmin18 = mcAdmin18;
	}

	public String getMcAdmin19() {
		return mcAdmin19;
	}

	public void setMcAdmin19(String mcAdmin19) {
		this.mcAdmin19 = mcAdmin19;
	}

	public String getMcAdmin20() {
		return mcAdmin20;
	}

	public void setMcAdmin20(String mcAdmin20) {
		this.mcAdmin20 = mcAdmin20;
	}

	@Override
	public String toString() {
		return "MemberChart [mcMember17=" + mcMember17 + ", mcMember18=" + mcMember18 + ", mcMember19=" + mcMember19
				+ ", mcMember20=" + mcMember20 + ", mcAdmin17=" + mcAdmin17 + ", mcAdmin18=" + mcAdmin18
				+ ", mcAdmin19=" + mcAdmin19 + ", mcAdmin20=" + mcAdmin20 + "]";
	}
	
	
}
