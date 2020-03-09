package com.kh.homeplus.practitioners.model.vo;

public class PatrolMain {
	
	private String pmCode;
	private String apCode;
	private String pmFileName;
	private String pmPlace;
	private String pmEtc;
	private String pmStatus;
	
	public PatrolMain() {}

	public PatrolMain(String pmCode, String apCode, String pmFileName, String pmPlace, String pmEtc, String pmStatus) {
		super();
		this.pmCode = pmCode;
		this.apCode = apCode;
		this.pmFileName = pmFileName;
		this.pmPlace = pmPlace;
		this.pmEtc = pmEtc;
		this.pmStatus = pmStatus;
	}

	public String getPmCode() {
		return pmCode;
	}

	public void setPmCode(String pmCode) {
		this.pmCode = pmCode;
	}

	public String getApCode() {
		return apCode;
	}

	public void setApCode(String apCode) {
		this.apCode = apCode;
	}

	public String getPmFileName() {
		return pmFileName;
	}

	public void setPmFileName(String pmFileName) {
		this.pmFileName = pmFileName;
	}

	public String getPmPlace() {
		return pmPlace;
	}

	public void setPmPlace(String pmPlace) {
		this.pmPlace = pmPlace;
	}

	public String getPmEtc() {
		return pmEtc;
	}

	public void setPmEtc(String pmEtc) {
		this.pmEtc = pmEtc;
	}

	public String getPmStatus() {
		return pmStatus;
	}

	public void setPmStatus(String pmStatus) {
		this.pmStatus = pmStatus;
	}

	@Override
	public String toString() {
		return "PatrolMain [pmCode=" + pmCode + ", apCode=" + apCode + ", pmFileName=" + pmFileName + ", pmPlace="
				+ pmPlace + ", pmEtc=" + pmEtc + ", pmStatus=" + pmStatus + "]";
	}
	
	
}
