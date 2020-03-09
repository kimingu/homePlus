package com.kh.homeplus.manpower.model.vo;

public class SearchConditionExpense {
	private String all;
	private String comName;
	private String exExpend;
	
	public SearchConditionExpense() {}

	public SearchConditionExpense(String all, String comName, String exExpend) {
		super();
		this.all = all;
		this.comName = comName;
		this.exExpend = exExpend;
	}

	public String getAll() {
		return all;
	}

	public void setAll(String all) {
		this.all = all;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getExExpend() {
		return exExpend;
	}

	public void setExExpend(String exExpend) {
		this.exExpend = exExpend;
	}

	@Override
	public String toString() {
		return "SearchConditionExpense [all=" + all + ", comName=" + comName + ", exExpend=" + exExpend + "]";
	}
	
	

}
