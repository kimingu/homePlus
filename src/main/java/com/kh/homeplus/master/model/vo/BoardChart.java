package com.kh.homeplus.master.model.vo;

public class BoardChart {
	private String bcBoard17;
	private String bcBoard18;
	private String bcBoard19;
	private String bcBoard20;
	
	public BoardChart() {}

	public BoardChart(String bcBoard17, String bcBoard18, String bcBoard19, String bcBoard20) {
		super();
		this.bcBoard17 = bcBoard17;
		this.bcBoard18 = bcBoard18;
		this.bcBoard19 = bcBoard19;
		this.bcBoard20 = bcBoard20;
	}

	public String getBcBoard17() {
		return bcBoard17;
	}

	public void setBcBoard17(String bcBoard17) {
		this.bcBoard17 = bcBoard17;
	}

	public String getBcBoard18() {
		return bcBoard18;
	}

	public void setBcBoard18(String bcBoard18) {
		this.bcBoard18 = bcBoard18;
	}

	public String getBcBoard19() {
		return bcBoard19;
	}

	public void setBcBoard19(String bcBoard19) {
		this.bcBoard19 = bcBoard19;
	}

	public String getBcBoard20() {
		return bcBoard20;
	}

	public void setBcBoard20(String bcBoard20) {
		this.bcBoard20 = bcBoard20;
	}

	@Override
	public String toString() {
		return "BoardChart [bcBoard17=" + bcBoard17 + ", bcBoard18=" + bcBoard18 + ", bcBoard19=" + bcBoard19
				+ ", bcBoard20=" + bcBoard20 + "]";
	}
	
	
}
