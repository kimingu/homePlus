package com.kh.homeplus.board.model.vo;

import java.sql.Date;

public class Board_Declaration {
	private String bd_code; // 신고 번호
	private String m_id; // 유저 아이디 
	private String b_code; // 게시판 번호
	private String bd_content; // 신고 내용 
	private String bd_category; // 신고 카테고리 (음란물,광고,욕설 등)
	private String bd_status; // 삭제 여부 
	private Date bd_create_date; // 만든 날짜 
	
	public Board_Declaration() {}

	public Board_Declaration(String bd_code, String m_id, String b_code, String bd_content, String bd_category,
			String bd_status, Date bd_create_date) {
		super();
		this.bd_code = bd_code;
		this.m_id = m_id;
		this.b_code = b_code;
		this.bd_content = bd_content;
		this.bd_category = bd_category;
		this.bd_status = bd_status;
		this.bd_create_date = bd_create_date;
	}

	public String getBd_code() {
		return bd_code;
	}

	public void setBd_code(String bd_code) {
		this.bd_code = bd_code;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getB_code() {
		return b_code;
	}

	public void setB_code(String b_code) {
		this.b_code = b_code;
	}

	public String getBd_content() {
		return bd_content;
	}

	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}

	public String getBd_category() {
		return bd_category;
	}

	public void setBd_category(String bd_category) {
		this.bd_category = bd_category;
	}

	public String getBd_status() {
		return bd_status;
	}

	public void setBd_status(String bd_status) {
		this.bd_status = bd_status;
	}

	public Date getBd_create_date() {
		return bd_create_date;
	}

	public void setBd_create_date(Date bd_create_date) {
		this.bd_create_date = bd_create_date;
	}

	@Override
	public String toString() {
		return "Board_Declaration [bd_code=" + bd_code + ", m_id=" + m_id + ", b_code=" + b_code + ", bd_content="
				+ bd_content + ", bd_category=" + bd_category + ", bd_status=" + bd_status + ", bd_create_date="
				+ bd_create_date + "]";
	}

	
}
