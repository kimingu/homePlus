package com.kh.homeplus.gym.model.vo;

import java.util.Date;

public class Gym {

private String gymReCode;
private String mCode;
private Date gymReSt;
private Date gymReEnd;
private char gymStatus;

public Gym() {}

public Gym(String gymReCode, String mCode, Date gymReSt, Date gymReEnd, char gymStatus) {
	super();
	this.gymReCode = gymReCode;
	this.mCode = mCode;
	this.gymReSt = gymReSt;
	this.gymReEnd = gymReEnd;
	this.gymStatus = gymStatus;
	
}





public String getGymReCode() {
	return gymReCode;
}

public void setGymReCode(String gymReCode) {
	this.gymReCode = gymReCode;
}

public String getmCode() {
	return mCode;
}

public void setmCode(String mCode) {
	this.mCode = mCode;
}

public Date getGymReSt() {
	return gymReSt;
}

public void setGymReSt(Date gymReSt) {
	this.gymReSt = gymReSt;
}

public Date getGymReEnd() {
	return gymReEnd;
}

public void setGymReEnd(Date gymReEnd) {
	this.gymReEnd = gymReEnd;
}

public char getGymStatus() {
	return gymStatus;
}

public void setGymStatus(char gymStatus) {
	this.gymStatus = gymStatus;
}

@Override
public String toString() {
	return "Gym [gymReCode=" + gymReCode + ", mCode=" + mCode + ", gymReSt=" + gymReSt + ", gymReEnd=" + gymReEnd
			+ ", gymStatus=" + gymStatus + "]";
}






}
