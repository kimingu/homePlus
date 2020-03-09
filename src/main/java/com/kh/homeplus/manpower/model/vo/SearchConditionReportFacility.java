package com.kh.homeplus.manpower.model.vo;

public class SearchConditionReportFacility {
	private String all;
	private String ft_cate;
	private String ft_detail;
	private String ft_need;

	public SearchConditionReportFacility() {}

	public SearchConditionReportFacility(String all, String ft_cate, String ft_detail, String ft_need) {
		super();
		this.all = all;
		this.ft_cate = ft_cate;
		this.ft_detail = ft_detail;
		this.ft_need = ft_need;
	}

	public String getAll() {
		return all;
	}

	public void setAll(String all) {
		this.all = all;
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

	@Override
	public String toString() {
		return "SearchConditionReportFacility [all=" + all + ", ft_cate=" + ft_cate + ", ft_detail=" + ft_detail
				+ ", ft_need=" + ft_need + "]";
	}
	
	
}
