package com.kh.homeplus.facility.model.vo;

public class ParkArea {
	private String pk_code;
	private String bb_code;
	public ParkArea() {
		
	}
	public ParkArea(String pk_code, String bb_code) {
		super();
		this.pk_code = pk_code;
		this.bb_code = bb_code;
	}
	public String getPk_code() {
		return pk_code;
	}
	public void setPk_code(String pk_code) {
		this.pk_code = pk_code;
	}
	public String getBb_code() {
		return bb_code;
	}
	public void setBb_code(String bb_code) {
		this.bb_code = bb_code;
	}
	@Override
	public String toString() {
		return "ParkArea [pk_code=" + pk_code + ", bb_code=" + bb_code + "]";
	}
	
	
}
