package com.kh.homeplus.master.model.vo;

import java.util.Date;

public class Message {
	private String meCode;
	private String meWriter;
	private String meReceiver;
	private String meContent;
	private Date meWriteDate;
	private String meStatus;
	
	public Message() {}

	public Message(String meCode, String meWriter, String meReceiver, String meContent, Date meWriteDate,
			String meStatus) {
		super();
		this.meCode = meCode;
		this.meWriter = meWriter;
		this.meReceiver = meReceiver;
		this.meContent = meContent;
		this.meWriteDate = meWriteDate;
		this.meStatus = meStatus;
	}

	public String getMeCode() {
		return meCode;
	}

	public void setMeCode(String meCode) {
		this.meCode = meCode;
	}

	public String getMeWriter() {
		return meWriter;
	}

	public void setMeWriter(String meWriter) {
		this.meWriter = meWriter;
	}

	public String getMeReceiver() {
		return meReceiver;
	}

	public void setMeReceiver(String meReceiver) {
		this.meReceiver = meReceiver;
	}

	public String getMeContent() {
		return meContent;
	}

	public void setMeContent(String meContent) {
		this.meContent = meContent;
	}

	public Date getMeWriteDate() {
		return meWriteDate;
	}

	public void setMeWriteDate(Date meWriteDate) {
		this.meWriteDate = meWriteDate;
	}

	public String getMeStatus() {
		return meStatus;
	}

	public void setMeStatus(String meStatus) {
		this.meStatus = meStatus;
	}

	@Override
	public String toString() {
		return "Message [meCode=" + meCode + ", meWriter=" + meWriter + ", meReceiver=" + meReceiver + ", meContent="
				+ meContent + ", meWriteDate=" + meWriteDate + ", meStatus=" + meStatus + "]";
	}
	
	
}
