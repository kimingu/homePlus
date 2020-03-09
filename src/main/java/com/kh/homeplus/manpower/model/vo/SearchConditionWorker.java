package com.kh.homeplus.manpower.model.vo;

public class SearchConditionWorker {
	private String all;
	private String comName;
	private String aDepartment;
	private String aName;
	private String aId;
	
	public SearchConditionWorker() {}

	public SearchConditionWorker(String all, String comName, String aDepartment, String aName, String aId) {
		super();
		this.all = all;
		this.comName = comName;
		this.aDepartment = aDepartment;
		this.aName = aName;
		this.aId = aId;
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

	public String getaDepartment() {
		return aDepartment;
	}

	public void setaDepartment(String aDepartment) {
		this.aDepartment = aDepartment;
	}

	public String getaName() {
		return aName;
	}

	public void setaName(String aName) {
		this.aName = aName;
	}

	public String getaId() {
		return aId;
	}

	public void setaId(String aId) {
		this.aId = aId;
	}

	@Override
	public String toString() {
		return "SearchConditionWorker [all=" + all + ", comName=" + comName + ", aDepartment=" + aDepartment
				+ ", aName=" + aName + ", aId=" + aId + "]";
	}
	
	
}
