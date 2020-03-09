package com.kh.homeplus.board.model.vo;

import java.sql.Date;

public class Board_Reply {
	private String r_code;// 댓글 번호 
	private String b_code; // 게시판 글 번호 
	private String m_id; // 유저 아이디 
	private String r_content; //댓글 내용 
	private char r_status; // 댓글 삭제 여부 
	private Date r_create_date; //댓글 작성일 
	private Date r_modify_date; // 댓글 수정일 
	
	public Board_Reply() {}

	public Board_Reply(String r_code, String b_code, String m_id, String r_content, char r_status, Date r_create_date,
			Date r_modify_date) {
		super();
		this.r_code = r_code;
		this.b_code = b_code;
		this.m_id = m_id;
		this.r_content = r_content;
		this.r_status = r_status;
		this.r_create_date = r_create_date;
		this.r_modify_date = r_modify_date;
	}

	public String getR_code() {
		return r_code;
	}

	public void setR_code(String r_code) {
		this.r_code = r_code;
	}

	public String getB_code() {
		return b_code;
	}

	public void setB_code(String b_code) {
		this.b_code = b_code;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public char getR_status() {
		return r_status;
	}

	public void setR_status(char r_status) {
		this.r_status = r_status;
	}

	public Date getR_create_date() {
		return r_create_date;
	}

	public void setR_create_date(Date r_create_date) {
		this.r_create_date = r_create_date;
	}

	public Date getR_modify_date() {
		return r_modify_date;
	}

	public void setR_modify_date(Date r_modify_date) {
		this.r_modify_date = r_modify_date;
	}

	@Override
	public String toString() {
		return "Reply [r_code=" + r_code + ", b_code=" + b_code + ", m_id=" + m_id + ", r_content=" + r_content
				+ ", r_status=" + r_status + ", r_create_date=" + r_create_date + ", r_modify_date=" + r_modify_date
				+ "]";
	}

}