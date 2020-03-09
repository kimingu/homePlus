package com.kh.homeplus.facility.model.vo;

public class FacilityTask {
	private String ft_code;
	private String ft_cate;
	private String ft_detail;
	private String ft_need;
	private char ft_status;
	
	public FacilityTask() {
		
	}
	public FacilityTask(String ft_cate, String ft_detail, String ft_need, char ft_status) {
		super();
		this.ft_cate = ft_cate;
		this.ft_detail = ft_detail;
		this.ft_need = ft_need;
		this.ft_status = ft_status;
	}
	public FacilityTask(String ft_code, String ft_cate, String ft_detail, String ft_need, char ft_status) {
		super();
		this.ft_code = ft_code;
		this.ft_cate = ft_cate;
		this.ft_detail = ft_detail;
		this.ft_need = ft_need;
		this.ft_status = ft_status;
	}

	public String getFt_code() {
		return ft_code;
	}

	public void setFt_code(String ft_code) {
		this.ft_code = ft_code;
	}

	public String getFt_cate() {
		return ft_cate;
	}

	public void setFt_cate(String ft_cate) {
		this.ft_cate = ft_cate;
	}

	public String getFt_detail() {
		return ft_detail;
	}

	public void setFt_detail(String ft_detail) {
		this.ft_detail = ft_detail;
	}

	public String getFt_need() {
		return ft_need;
	}

	public void setFt_need(String ft_need) {
		this.ft_need = ft_need;
	}

	public char getFt_status() {
		return ft_status;
	}

	public void setFt_status(char ft_status) {
		this.ft_status = ft_status;
	}

	@Override
	public String toString() {
		return "FacilityTask [ft_code=" + ft_code + ", ft_cate=" + ft_cate + ", ft_detail=" + ft_detail + ", ft_need="
				+ ft_need + ", ft_status=" + ft_status + "]";
	}
	
}
