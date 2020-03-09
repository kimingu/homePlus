package com.kh.homeplus.member.model.vo;

import java.sql.Date;

public class MemberMessage {
	
	private String mmCode;
	private String mmTitle;
	private String mmWriter;
	private String mmReceiver;
	private String mmContent;
	private Date mmDate;
	private char  receiverStatus;
	private char  writerStatus;
	
	public MemberMessage() {
		
	}

	public MemberMessage(String mmCode, String mmTitle, String mmWriter, String mmReceiver, String mmContent,
			Date mmDate, char receiverStatus, char writerStatus) {
		super();
		this.mmCode = mmCode;
		this.mmTitle = mmTitle;
		this.mmWriter = mmWriter;
		this.mmReceiver = mmReceiver;
		this.mmContent = mmContent;
		this.mmDate = mmDate;
		this.receiverStatus = receiverStatus;
		this.writerStatus = writerStatus;
	}

	public String getMmCode() {
		return mmCode;
	}

	public void setMmCode(String mmCode) {
		this.mmCode = mmCode;
	}

	public String getMmTitle() {
		return mmTitle;
	}

	public void setMmTitle(String mmTitle) {
		this.mmTitle = mmTitle;
	}

	public String getMmWriter() {
		return mmWriter;
	}

	public void setMmWriter(String mmWriter) {
		this.mmWriter = mmWriter;
	}

	public String getMmReceiver() {
		return mmReceiver;
	}

	public void setMmReceiver(String mmReceiver) {
		this.mmReceiver = mmReceiver;
	}

	public String getMmContent() {
		return mmContent;
	}

	public void setMmContent(String mmContent) {
		this.mmContent = mmContent;
	}

	public Date getMmDate() {
		return mmDate;
	}

	public void setMmDate(Date mmDate) {
		this.mmDate = mmDate;
	}

	public char getReceiverStatus() {
		return receiverStatus;
	}

	public void setReceiverStatus(char receiverStatus) {
		this.receiverStatus = receiverStatus;
	}

	public char getWriterStatus() {
		return writerStatus;
	}

	public void setWriterStatus(char writerStatus) {
		this.writerStatus = writerStatus;
	}

	@Override
	public String toString() {
		return "MemberMessage [mmCode=" + mmCode + ", mmTitle=" + mmTitle + ", mmWriter=" + mmWriter + ", mmReceiver="
				+ mmReceiver + ", mmContent=" + mmContent + ", mmDate=" + mmDate + ", receiverStatus=" + receiverStatus
				+ ", writerStatus=" + writerStatus + "]";
	}



	
	
}
