package com.kh.homeplus.board.model.vo;

import java.sql.Date;

public class Survey {
	private String su_code; // 설문 번호 
	private String su_title; // 설문 제목 
	private Date su_create_date; // 작성일
	private String su_content; // 설문 내용 
	private String su_writer; // 작성자
	private char su_status; // 종료여부 

	public Survey() {}

	public Survey(String su_code, String su_title, Date su_create_date, String su_content, String su_writer,
			char su_status) {
		super();
		this.su_code = su_code;
		this.su_title = su_title;
		this.su_create_date = su_create_date;
		this.su_content = su_content;
		this.su_writer = su_writer;
		this.su_status = su_status;
	}

	public String getSu_code() {
		return su_code;
	}

	public void setSu_code(String su_code) {
		this.su_code = su_code;
	}

	public String getSu_title() {
		return su_title;
	}

	public void setSu_title(String su_title) {
		this.su_title = su_title;
	}

	public Date getSu_create_date() {
		return su_create_date;
	}

	public void setSu_create_date(Date su_create_date) {
		this.su_create_date = su_create_date;
	}

	public String getSu_content() {
		return su_content;
	}

	public void setSu_content(String su_content) {
		this.su_content = su_content;
	}

	public String getSu_writer() {
		return su_writer;
	}

	public void setSu_writer(String su_writer) {
		this.su_writer = su_writer;
	}

	public char getSu_status() {
		return su_status;
	}

	public void setSu_status(char su_status) {
		this.su_status = su_status;
	}

	@Override
	public String toString() {
		return "Survey [su_code=" + su_code + ", su_title=" + su_title + ", su_create_date=" + su_create_date
				+ ", su_content=" + su_content + ", su_writer=" + su_writer + ", su_status=" + su_status + "]";
	}
	
	
}
