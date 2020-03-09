package com.kh.homeplus.board.model.vo;

import java.sql.Date;

public class Voting {
	private String vo_code; // 투표 번호 
	private String vo_title; // 투표 제목 
	private Date vo_create_date; // 작성일 
	private String vo_content; // 작성 내용
	private String field1; // 항목1
	private String field2; // 항목2
	private String field3; // 항목3
	private String field4; // 항목4
	private String vo_writer; // 작성자 
	private char vo_status; // 종료여부 
	
	public Voting() {}

	public Voting(String vo_code, String vo_title, Date vo_create_date, String vo_content, String field1, String field2,
			String field3, String field4, String vo_writer, char vo_status) {
		super();
		this.vo_code = vo_code;
		this.vo_title = vo_title;
		this.vo_create_date = vo_create_date;
		this.vo_content = vo_content;
		this.field1 = field1;
		this.field2 = field2;
		this.field3 = field3;
		this.field4 = field4;
		this.vo_writer = vo_writer;
		this.vo_status = vo_status;
	}

	public String getVo_code() {
		return vo_code;
	}

	public void setVo_code(String vo_code) {
		this.vo_code = vo_code;
	}

	public String getVo_title() {
		return vo_title;
	}

	public void setVo_title(String vo_title) {
		this.vo_title = vo_title;
	}

	public Date getVo_create_date() {
		return vo_create_date;
	}

	public void setVo_create_date(Date vo_create_date) {
		this.vo_create_date = vo_create_date;
	}

	public String getVo_content() {
		return vo_content;
	}

	public void setVo_content(String vo_content) {
		this.vo_content = vo_content;
	}

	public String getField1() {
		return field1;
	}

	public void setField1(String field1) {
		this.field1 = field1;
	}

	public String getField2() {
		return field2;
	}

	public void setField2(String field2) {
		this.field2 = field2;
	}

	public String getField3() {
		return field3;
	}

	public void setField3(String field3) {
		this.field3 = field3;
	}

	public String getField4() {
		return field4;
	}

	public void setField4(String field4) {
		this.field4 = field4;
	}

	public String getVo_writer() {
		return vo_writer;
	}

	public void setVo_writer(String vo_writer) {
		this.vo_writer = vo_writer;
	}

	public char getVo_status() {
		return vo_status;
	}

	public void setVo_status(char vo_status) {
		this.vo_status = vo_status;
	}

	@Override
	public String toString() {
		return "Voting [vo_code=" + vo_code + ", vo_title=" + vo_title + ", vo_create_date=" + vo_create_date
				+ ", vo_content=" + vo_content + ", field1=" + field1 + ", field2=" + field2 + ", field3=" + field3
				+ ", field4=" + field4 + ", vo_writer=" + vo_writer + ", vo_status=" + vo_status + "]";
	} 
	
	
}
