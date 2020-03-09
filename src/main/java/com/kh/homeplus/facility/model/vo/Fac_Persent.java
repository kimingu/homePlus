package com.kh.homeplus.facility.model.vo;

public class Fac_Persent {
	private String bb_code;
	private String cate1;
	private String cate2;
	private String cate3;
	private String cate4;

	public Fac_Persent() {
		
	}

	public Fac_Persent(String bb_code, String cate1, String cate2, String cate3, String cate4) {
		super();
		this.bb_code = bb_code;
		this.cate1 = cate1;
		this.cate2 = cate2;
		this.cate3 = cate3;
		this.cate4 = cate4;
	}

	public String getBb_code() {
		return bb_code;
	}

	public void setBb_code(String bb_code) {
		this.bb_code = bb_code;
	}

	public String getCate1() {
		return cate1;
	}

	public void setCate1(String cate1) {
		this.cate1 = cate1;
	}

	public String getCate2() {
		return cate2;
	}

	public void setCate2(String cate2) {
		this.cate2 = cate2;
	}

	public String getCate3() {
		return cate3;
	}

	public void setCate3(String cate3) {
		this.cate3 = cate3;
	}

	public String getCate4() {
		return cate4;
	}

	public void setCate4(String cate4) {
		this.cate4 = cate4;
	}

	@Override
	public String toString() {
		return "Fac_Persent [bb_code=" + bb_code + ", cate1=" + cate1 + ", cate2=" + cate2 + ", cate3=" + cate3
				+ ", cate4=" + cate4 + "]";
	}
	
	
}
