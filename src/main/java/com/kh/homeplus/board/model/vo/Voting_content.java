package com.kh.homeplus.board.model.vo;

import java.sql.Date;

public class Voting_content {
	private String voc_code;
	private String vo_code;
	private String m_code;
	private Date voc_create_date;
	
	public Voting_content() {}

	public Voting_content(String voc_code, String vo_code, String m_code, Date voc_create_date) {
		super();
		this.voc_code = voc_code;
		this.vo_code = vo_code;
		this.m_code = m_code;
		this.voc_create_date = voc_create_date;
	}

	public String getVoc_code() {
		return voc_code;
	}

	public void setVoc_code(String voc_code) {
		this.voc_code = voc_code;
	}

	public String getVo_code() {
		return vo_code;
	}

	public void setVo_code(String vo_code) {
		this.vo_code = vo_code;
	}

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	public Date getVoc_create_date() {
		return voc_create_date;
	}

	public void setVoc_create_date(Date voc_create_date) {
		this.voc_create_date = voc_create_date;
	}

	@Override
	public String toString() {
		return "Voting_content [voc_code=" + voc_code + ", vo_code=" + vo_code + ", m_code=" + m_code
				+ ", voc_create_date=" + voc_create_date + "]";
	}
	
	

}
