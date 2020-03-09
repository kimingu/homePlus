package com.kh.homeplus.master.model.vo;

public class MasterMap {

	private String mmName;
	private String mmXLocation;
	private String mmYLocation;
	
	public MasterMap() {}

	public MasterMap(String mmName, String mmXLocation, String mmYLocation) {
		super();
		this.mmName = mmName;
		this.mmXLocation = mmXLocation;
		this.mmYLocation = mmYLocation;
	}

	public String getMmName() {
		return mmName;
	}

	public void setMmName(String mmName) {
		this.mmName = mmName;
	}

	public String getMmXLocation() {
		return mmXLocation;
	}

	public void setMmXLocation(String mmXLocation) {
		this.mmXLocation = mmXLocation;
	}

	public String getMmYLocation() {
		return mmYLocation;
	}

	public void setMmYLocation(String mmYLocation) {
		this.mmYLocation = mmYLocation;
	}

	@Override
	public String toString() {
		return "MasterMap [mmName=" + mmName + ", mmXLocation=" + mmXLocation + ", mmYLocation=" + mmYLocation + "]";
	}
	
	
}
