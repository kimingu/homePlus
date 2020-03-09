package com.kh.homeplus.manpower.model.vo;

public class SearchConditionCompany {
	private String all;
	private String comDivision;
	private String comName;
	private String comCeo;
	
	public SearchConditionCompany() {}

	public SearchConditionCompany(String all, String comDivision, String comName, String comCeo) {
		super();
		this.all = all;
		this.comDivision = comDivision;
		this.comName = comName;
		this.comCeo = comCeo;
	}

	public String getAll() {
		return all;
	}

	public void setAll(String all) {
		this.all = all;
	}

	public String getComDivision() {
		return comDivision;
	}

	public void setComDivision(String comDivision) {
		this.comDivision = comDivision;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getComCeo() {
		return comCeo;
	}

	public void setComCeo(String comCeo) {
		this.comCeo = comCeo;
	}

	@Override
	public String toString() {
		return "SearchConditionCompany [all=" + all + ", comDivision=" + comDivision + ", comName=" + comName
				+ ", comCeo=" + comCeo + "]";
	}
	
	

}
