package com.kh.homeplus.master.model.vo;

import java.util.Date;

public class Master {

	private String maCode;
	private String maId;
	private String maPwd;
	private String maName;
	private String maDept;
	private String maLevel;
	private String maHireDate;
	private String maLeaveDate;
	private String maOriginalFilename;
	private String maRenameFilename;
	private String maMessage;
	private char maStatus;
	
	public Master() {}

	public Master(String maCode, String maId, String maPwd, String maName, String maDept, String maLevel,
			String maHireDate, String maLeaveDate, String maOriginalFilename, String maRenameFilename, String maMessage,
			char maStatus) {
		super();
		this.maCode = maCode;
		this.maId = maId;
		this.maPwd = maPwd;
		this.maName = maName;
		this.maDept = maDept;
		this.maLevel = maLevel;
		this.maHireDate = maHireDate;
		this.maLeaveDate = maLeaveDate;
		this.maOriginalFilename = maOriginalFilename;
		this.maRenameFilename = maRenameFilename;
		this.maMessage = maMessage;
		this.maStatus = maStatus;
	}

	public String getMaCode() {
		return maCode;
	}

	public void setMaCode(String maCode) {
		this.maCode = maCode;
	}

	public String getMaId() {
		return maId;
	}

	public void setMaId(String maId) {
		this.maId = maId;
	}

	public String getMaPwd() {
		return maPwd;
	}

	public void setMaPwd(String maPwd) {
		this.maPwd = maPwd;
	}

	public String getMaName() {
		return maName;
	}

	public void setMaName(String maName) {
		this.maName = maName;
	}

	public String getMaDept() {
		return maDept;
	}

	public void setMaDept(String maDept) {
		this.maDept = maDept;
	}

	public String getMaLevel() {
		return maLevel;
	}

	public void setMaLevel(String maLevel) {
		this.maLevel = maLevel;
	}

	public String getMaHireDate() {
		return maHireDate;
	}

	public void setMaHireDate(String maHireDate) {
		this.maHireDate = maHireDate;
	}

	public String getMaLeaveDate() {
		return maLeaveDate;
	}

	public void setMaLeaveDate(String maLeaveDate) {
		this.maLeaveDate = maLeaveDate;
	}

	public String getMaOriginalFilename() {
		return maOriginalFilename;
	}

	public void setMaOriginalFilename(String maOriginalFilename) {
		this.maOriginalFilename = maOriginalFilename;
	}

	public String getMaRenameFilename() {
		return maRenameFilename;
	}

	public void setMaRenameFilename(String maRenameFilename) {
		this.maRenameFilename = maRenameFilename;
	}

	public String getMaMessage() {
		return maMessage;
	}

	public void setMaMessage(String maMessage) {
		this.maMessage = maMessage;
	}

	public char getMaStatus() {
		return maStatus;
	}

	public void setMaStatus(char maStatus) {
		this.maStatus = maStatus;
	}

	@Override
	public String toString() {
		return "Master [maCode=" + maCode + ", maId=" + maId + ", maPwd=" + maPwd + ", maName=" + maName + ", maDept="
				+ maDept + ", maLevel=" + maLevel + ", maHireDate=" + maHireDate + ", maLeaveDate=" + maLeaveDate
				+ ", maOriginalFilename=" + maOriginalFilename + ", maRenameFilename=" + maRenameFilename
				+ ", maMessage=" + maMessage + ", maStatus=" + maStatus + "]";
	}
	
}