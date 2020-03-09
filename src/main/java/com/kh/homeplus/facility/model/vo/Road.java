package com.kh.homeplus.facility.model.vo;

public class Road {
	private String road_code;
	private String bb_code;
	private String bb_status;
	public Road() {
		
	}
	public Road(String road_code, String bb_code, String bb_status) {
		super();
		this.road_code = road_code;
		this.bb_code = bb_code;
		this.bb_status = bb_status;
	}
	public String getRoad_code() {
		return road_code;
	}
	public void setRoad_code(String road_code) {
		this.road_code = road_code;
	}
	public String getBb_code() {
		return bb_code;
	}
	public void setBb_code(String bb_code) {
		this.bb_code = bb_code;
	}
	public String getBb_status() {
		return bb_status;
	}
	public void setBb_status(String bb_status) {
		this.bb_status = bb_status;
	}
	@Override
	public String toString() {
		return "Road [road_code=" + road_code + ", bb_code=" + bb_code + ", bb_status=" + bb_status + "]";
	}
	


}
