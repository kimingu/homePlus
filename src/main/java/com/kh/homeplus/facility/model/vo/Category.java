package com.kh.homeplus.facility.model.vo;

public class Category {
	private int fcate;
	private int scate;
	private int tcate;
	private int focate;
	public Category() {
		
	}
	public Category(int fcate, int scate) {
		super();
		this.fcate = fcate;
		this.scate = scate;
	}
	
	public Category(int fcate, int scate, int tcate, int focate) {
		super();
		this.fcate = fcate;
		this.scate = scate;
		this.tcate = tcate;
		this.focate = focate;
	}
	public int getFcate() {
		return fcate;
	}
	public void setFcate(int fcate) {
		this.fcate = fcate;
	}
	public int getScate() {
		return scate;
	}
	public void setScate(int scate) {
		this.scate = scate;
	}
	
	public int getTcate() {
		return tcate;
	}
	public void setTcate(int tcate) {
		this.tcate = tcate;
	}
	public int getFocate() {
		return focate;
	}
	public void setFocate(int focate) {
		this.focate = focate;
	}
	@Override
	public String toString() {
		return "Category [fcate=" + fcate + ", scate=" + scate + ", tcate=" + tcate + ", focate=" + focate + "]";
	}
	
	
}
