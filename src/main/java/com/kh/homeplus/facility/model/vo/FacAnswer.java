package com.kh.homeplus.facility.model.vo;

public class FacAnswer {
	private String bb_code;
	private String dcate;
	private String answer;
	private String company;
	public FacAnswer() {
		
	}
	public FacAnswer(String bb_code, String dcate, String answer, String company) {
		super();
		this.bb_code = bb_code;
		this.dcate = dcate;
		this.answer = answer;
		this.company = company;
	}
	public String getBb_code() {
		return bb_code;
	}
	public void setBb_code(String bb_code) {
		this.bb_code = bb_code;
	}
	public String getDcate() {
		return dcate;
	}
	public void setDcate(String dcate) {
		this.dcate = dcate;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	@Override
	public String toString() {
		return "FacAnswer [bb_code=" + bb_code + ", dcate=" + dcate + ", answer=" + answer + ", company=" + company
				+ "]";
	}
	
}
