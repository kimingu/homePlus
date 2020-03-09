package com.kh.homeplus.guestRoom.model.vo;

import java.util.Date;

public class GeustRoom {

private String guerReCode;
private String mCode;
private Number guerRoom;
private Date guerReDate;
private Date guerReSt;
private Date guerReEnd;
private char guerReStatus;

public GeustRoom() {}

public GeustRoom(String guerReCode, String mCode, Number guerRoom, Date guerReDate, Date guerReSt, Date guerReEnd,
		char guerReStatus) {
	super();
	this.guerReCode = guerReCode;
	this.mCode = mCode;
	this.guerRoom = guerRoom;
	this.guerReDate = guerReDate;
	this.guerReSt = guerReSt;
	this.guerReEnd = guerReEnd;
	this.guerReStatus = guerReStatus;
}

public String getGuerReCode() {
	return guerReCode;
}

public void setGuerReCode(String guerReCode) {
	this.guerReCode = guerReCode;
}

public String getmCode() {
	return mCode;
}

public void setmCode(String mCode) {
	this.mCode = mCode;
}

public Number getGuerRoom() {
	return guerRoom;
}

public void setGuerRoom(Number guerRoom) {
	this.guerRoom = guerRoom;
}

public Date getGuerReDate() {
	return guerReDate;
}

public void setGuerReDate(Date guerReDate) {
	this.guerReDate = guerReDate;
}

public Date getGuerReSt() {
	return guerReSt;
}

public void setGuerReSt(Date guerReSt) {
	this.guerReSt = guerReSt;
}

public Date getGuerReEnd() {
	return guerReEnd;
}

public void setGuerReEnd(Date guerReEnd) {
	this.guerReEnd = guerReEnd;
}

public char getGuerReStatus() {
	return guerReStatus;
}

public void setGuerReStatus(char guerReStatus) {
	this.guerReStatus = guerReStatus;
}

@Override
public String toString() {
	return "GeustRoom [guerReCode=" + guerReCode + ", mCode=" + mCode + ", guerRoom=" + guerRoom + ", guerReDate="
			+ guerReDate + ", guerReSt=" + guerReSt + ", guerReEnd=" + guerReEnd + ", guerReStatus=" + guerReStatus
			+ "]";
}




	
}
