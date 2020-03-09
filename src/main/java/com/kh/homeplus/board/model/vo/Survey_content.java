package com.kh.homeplus.board.model.vo;

import java.sql.Date;

public class Survey_content {
	private String suc_code;
	private String m_code;
	private String su_code;
	private String suc_content;
	private Date suc_create_date;
	
	public Survey_content() {}

	public Survey_content(String suc_code, String m_code, String su_code, String suc_content, Date suc_create_date) {
		super();
		this.suc_code = suc_code;
		this.m_code = m_code;
		this.su_code = su_code;
		this.suc_content = suc_content;
		this.suc_create_date = suc_create_date;
	}

	public String getSuc_code() {
		return suc_code;
	}

	public void setSuc_code(String suc_code) {
		this.suc_code = suc_code;
	}

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	public String getSu_code() {
		return su_code;
	}

	public void setSu_code(String su_code) {
		this.su_code = su_code;
	}

	public String getSuc_content() {
		return suc_content;
	}

	public void setSuc_content(String suc_content) {
		this.suc_content = suc_content;
	}

	public Date getSuc_create_date() {
		return suc_create_date;
	}

	public void setSuc_create_date(Date suc_create_date) {
		this.suc_create_date = suc_create_date;
	}

	@Override
	public String toString() {
		return "Survey_content [suc_code=" + suc_code + ", m_code=" + m_code + ", su_code=" + su_code + ", suc_content="
				+ suc_content + ", suc_create_date=" + suc_create_date + "]";
	}
	
	

}
