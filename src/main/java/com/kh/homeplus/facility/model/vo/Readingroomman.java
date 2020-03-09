package com.kh.homeplus.facility.model.vo;

public class Readingroomman {
	private String rm_code;
	private String bb_code;
	public Readingroomman() {
		
	}
	public Readingroomman(String rm_code, String bb_code) {
		super();
		this.rm_code = rm_code;
		this.bb_code = bb_code;
	}
	public String getRm_code() {
		return rm_code;
	}
	public void setRm_code(String rm_code) {
		this.rm_code = rm_code;
	}
	public String getBb_code() {
		return bb_code;
	}
	public void setBb_code(String bb_code) {
		this.bb_code = bb_code;
	}
	@Override
	public String toString() {
		return "Readingroomman [rm_code=" + rm_code + ", bb_code=" + bb_code + "]";
	}
	
	
}
