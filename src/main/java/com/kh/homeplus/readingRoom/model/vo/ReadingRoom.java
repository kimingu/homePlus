package com.kh.homeplus.readingRoom.model.vo;

import java.util.Date;

public class ReadingRoom {
private String reaReCode;
private String mCode;
private Date reaReDate;
private Date reaEndDate;
private int reaSeat;
private char reaStatus;
private String mName;

public ReadingRoom() {}

public ReadingRoom(String reaReCode, String mCode, Date reaReDate, Date reaEndDate, int reaSeat, char reaStatus) {
	super();
	this.reaReCode = reaReCode;
	this.mCode = mCode;
	this.reaReDate = reaReDate;
	this.reaEndDate = reaEndDate;
	this.reaSeat = reaSeat;
	this.reaStatus = reaStatus;
}

public ReadingRoom(String reaReCode, String mCode, Date reaReDate, Date reaEndDate, int reaSeat, char reaStatus,
		String mName) {
	super();
	this.reaReCode = reaReCode;
	this.mCode = mCode;
	this.reaReDate = reaReDate;
	this.reaEndDate = reaEndDate;
	this.reaSeat = reaSeat;
	this.reaStatus = reaStatus;
	this.mName = mName;
}



public String getmName() {
	return mName;
}

public void setmName(String mName) {
	this.mName = mName;
}

public Date getReaEndDate() {
	return reaEndDate;
}

public void setReaEndDate(Date reaEndDate) {
	this.reaEndDate = reaEndDate;
}

public String getReaReCode() {
	return reaReCode;
}

public void setReaReCode(String reaReCode) {
	this.reaReCode = reaReCode;
}

public String getmCode() {
	return mCode;
}

public void setmCode(String mCode) {
	this.mCode = mCode;
}

public Date getReaReDate() {
	return reaReDate;
}

public void setReaReDate(Date reaReDate) {
	this.reaReDate = reaReDate;
}

public int getReaSeat() {
	return reaSeat;
}

public void setReaSeat(int reaSeat) {
	this.reaSeat = reaSeat;
}

public char getReaStatus() {
	return reaStatus;
}

public void setReaStatus(char reaStatus) {
	this.reaStatus = reaStatus;
}

@Override
public String toString() {
	return "ReadingRoom [reaReCode=" + reaReCode + ", mCode=" + mCode + ", reaReDate=" + reaReDate + ", reaEndDate="
			+ reaEndDate + ", reaSeat=" + reaSeat + ", reaStatus=" + reaStatus + ", mName=" + mName + "]";
}


}
