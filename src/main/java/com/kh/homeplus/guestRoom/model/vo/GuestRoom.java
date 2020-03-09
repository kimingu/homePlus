package com.kh.homeplus.guestRoom.model.vo;

import java.util.Date;

public class GuestRoom {

private String guerReCode;
private String mCode;
private int guerRoom;
private Date guerReDate;
private char guerReStatus;
private String mName;



public GuestRoom() {}


public GuestRoom(String guerReCode, String mCode, int guerRoom, Date guerReDate, char guerReStatus) {
	super();
	this.guerReCode = guerReCode;
	this.mCode = mCode;
	this.guerRoom = guerRoom;
	this.guerReDate = guerReDate;
	this.guerReStatus = guerReStatus;
}

public GuestRoom(String guerReCode, String mCode, int guerRoom, Date guerReDate, char guerReStatus, String mName) {
	super();
	this.guerReCode = guerReCode;
	this.mCode = mCode;
	this.guerRoom = guerRoom;
	this.guerReDate = guerReDate;
	this.guerReStatus = guerReStatus;
	this.mName = mName;
}



public String getmName() {
	return mName;
}


public void setmName(String mName) {
	this.mName = mName;
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

public int getGuerRoom() {
	return guerRoom;
}

public void setGuerRoom(int guerRoom) {
	this.guerRoom = guerRoom;
}

public Date getGuerReDate() {
	return guerReDate;
}

public void setGuerReDate(Date guerReDate) {
	this.guerReDate = guerReDate;
}

public char getGuerReStatus() {
	return guerReStatus;
}

public void setGuerReStatus(char guerReStatus) {
	this.guerReStatus = guerReStatus;
}


@Override
public String toString() {
	return "GuestRoom [guerReCode=" + guerReCode + ", mCode=" + mCode + ", guerRoom=" + guerRoom + ", guerReDate="
			+ guerReDate + ", guerReStatus=" + guerReStatus + ", mName=" + mName + "]";
}




	
}
