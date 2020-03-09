package com.kh.homeplus.facility.model.vo;

public class ApartmentMan {
	private String apm_code;
	private String pre_num;
	private String aft_num;
	private String r_room;
	private String s_room;
	private String living_room;
	private String kitchen;
	private String bathroom;
	private String ap_code;
	public ApartmentMan() {
		
	}
	public ApartmentMan(String apm_code, String pre_num, String aft_num, String r_room, String s_room,
			String living_room, String kitchen, String bathroom, String ap_code) {
		super();
		this.apm_code = apm_code;
		this.pre_num = pre_num;
		this.aft_num = aft_num;
		this.r_room = r_room;
		this.s_room = s_room;
		this.living_room = living_room;
		this.kitchen = kitchen;
		this.bathroom = bathroom;
		this.ap_code = ap_code;
	}
	public String getApm_code() {
		return apm_code;
	}
	public void setApm_code(String apm_code) {
		this.apm_code = apm_code;
	}
	public String getPre_num() {
		return pre_num;
	}
	public void setPre_num(String pre_num) {
		this.pre_num = pre_num;
	}
	public String getAft_num() {
		return aft_num;
	}
	public void setAft_num(String aft_num) {
		this.aft_num = aft_num;
	}
	public String getR_room() {
		return r_room;
	}
	public void setR_room(String r_room) {
		this.r_room = r_room;
	}
	public String getS_room() {
		return s_room;
	}
	public void setS_room(String s_room) {
		this.s_room = s_room;
	}
	public String getLiving_room() {
		return living_room;
	}
	public void setLiving_room(String living_room) {
		this.living_room = living_room;
	}
	public String getKitchen() {
		return kitchen;
	}
	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}
	public String getBathroom() {
		return bathroom;
	}
	public void setBathroom(String bathroom) {
		this.bathroom = bathroom;
	}
	public String getAp_code() {
		return ap_code;
	}
	public void setAp_code(String ap_code) {
		this.ap_code = ap_code;
	}
	@Override
	public String toString() {
		return "ApartmentMan [apm_code=" + apm_code + ", pre_num=" + pre_num + ", aft_num=" + aft_num + ", r_room="
				+ r_room + ", s_room=" + s_room + ", living_room=" + living_room + ", kitchen=" + kitchen
				+ ", bathroom=" + bathroom + ", ap_code=" + ap_code + "]";
	}
	
}
