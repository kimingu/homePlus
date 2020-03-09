package com.kh.homeplus.facility.model.vo;

public class Apsemidetail {
	private String apm_code;
	private String apm_dcode;
	private String bb_code;
	private String bb_dcategory;
	private String bb_status;
	
	public Apsemidetail() {
		
	}

	public Apsemidetail(String apm_code, String apm_dcode, String bb_code, String bb_dcategory, String bb_status) {
		super();
		this.apm_code = apm_code;
		this.apm_dcode = apm_dcode;
		this.bb_code = bb_code;
		this.bb_dcategory = bb_dcategory;
		this.bb_status = bb_status;
	}

	public String getApm_code() {
		return apm_code;
	}

	public void setApm_code(String apm_code) {
		this.apm_code = apm_code;
	}

	public String getApm_dcode() {
		return apm_dcode;
	}

	public void setApm_dcode(String apm_dcode) {
		this.apm_dcode = apm_dcode;
	}

	public String getBb_code() {
		return bb_code;
	}

	public void setBb_code(String bb_code) {
		this.bb_code = bb_code;
	}

	public String getBb_dcategory() {
		return bb_dcategory;
	}

	public void setBb_dcategory(String bb_dcategory) {
		this.bb_dcategory = bb_dcategory;
	}

	public String getBb_status() {
		return bb_status;
	}

	public void setBb_status(String bb_status) {
		this.bb_status = bb_status;
	}

	@Override
	public String toString() {
		return "Apsemidetail [apm_code=" + apm_code + ", apm_dcode=" + apm_dcode + ", bb_code=" + bb_code
				+ ", bb_dcategory=" + bb_dcategory + ", bb_status=" + bb_status + "]";
	}

	
	
}
