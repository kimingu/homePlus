package com.kh.homeplus.facility.model.vo;

public class Facilities {
	private String fac_code;
	private String fac_cate;
	private String fac_area;
	private int fac_darea;
	private char fac_status;
	
	public Facilities() {
		
	}

	public Facilities(String fac_code, String fac_cate, String fac_area, int fac_darea, char fac_status) {
		super();
		this.fac_code = fac_code;
		this.fac_cate = fac_cate;
		this.fac_area = fac_area;
		this.fac_darea = fac_darea;
		this.fac_status = fac_status;
	}

	
	public String getFac_code() {
		return fac_code;
	}

	public void setFac_code(String fac_code) {
		this.fac_code = fac_code;
	}

	public String getFac_cate() {
		return fac_cate;
	}

	public void setFac_cate(String fac_cate) {
		this.fac_cate = fac_cate;
	}

	public String getFac_area() {
		return fac_area;
	}

	public void setFac_area(String fac_area) {
		this.fac_area = fac_area;
	}

	public int getFac_darea() {
		return fac_darea;
	}

	public void setFac_darea(int fac_darea) {
		this.fac_darea = fac_darea;
	}

	public char getFac_status() {
		return fac_status;
	}

	public void setFac_status(char fac_status) {
		this.fac_status = fac_status;
	}

	@Override
	public String toString() {
		return "Facilities [fac_code=" + fac_code + ", fac_cate=" + fac_cate + ", fac_area=" + fac_area + ", fac_darea="
				+ fac_darea + ", fac_status=" + fac_status + "]";
	}
	
}
