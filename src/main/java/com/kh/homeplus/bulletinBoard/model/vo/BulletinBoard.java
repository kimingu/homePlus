package com.kh.homeplus.bulletinBoard.model.vo;

import java.util.Date;

public class BulletinBoard {
private String bbCode;
private String mCode;
private int bbCategory;
private String bbTitle;
private String bbContent;
private String bbDcategory;
private String bbAnswer;
private char bbStatus;
private String bbOriginName;
private String bbReName;
private Date bbCreateDate;
private Date bbAnwDate;
	
public BulletinBoard() {}

public BulletinBoard(String bbCode, String mCode, int bbCategory, String bbTitle, String bbContent,
		String bbDcategory, String bbAnswer, char bbStatus, String bbOriginName, String bbReName, Date bbCreateDate,
		Date bbAnwDate) {
	super();
	this.bbCode = bbCode;
	this.mCode = mCode;
	this.bbCategory = bbCategory;
	this.bbTitle = bbTitle;
	this.bbContent = bbContent;
	this.bbDcategory = bbDcategory;
	this.bbAnswer = bbAnswer;
	this.bbStatus = bbStatus;
	this.bbOriginName = bbOriginName;
	this.bbReName = bbReName;
	this.bbCreateDate = bbCreateDate;
	this.bbAnwDate = bbAnwDate;
}

public String getBbCode() {
	return bbCode;
}

public void setBbCode(String bbCode) {
	this.bbCode = bbCode;
}

public String getmCode() {
	return mCode;
}

public void setmCode(String mCode) {
	this.mCode = mCode;
}

public int getBbCategory() {
	return bbCategory;
}

public void setBbCategory(int bbCategory) {
	this.bbCategory = bbCategory;
}

public String getBbTitle() {
	return bbTitle;
}

public void setBbTitle(String bbTitle) {
	this.bbTitle = bbTitle;
}

public String getBbContent() {
	return bbContent;
}

public void setBbContent(String bbContent) {
	this.bbContent = bbContent;
}

public String getBbDcategory() {
	return bbDcategory;
}

public void setBbDcategory(String bbDcategory) {
	this.bbDcategory = bbDcategory;
}

public String getBbAnswer() {
	return bbAnswer;
}

public void setBbAnswer(String bbAnswer) {
	this.bbAnswer = bbAnswer;
}

public char getBbStatus() {
	return bbStatus;
}

public void setBbStatus(char bbStatus) {
	this.bbStatus = bbStatus;
}

public String getBbOriginName() {
	return bbOriginName;
}

public void setBbOriginName(String bbOriginName) {
	this.bbOriginName = bbOriginName;
}

public String getBbReName() {
	return bbReName;
}

public void setBbReName(String bbReName) {
	this.bbReName = bbReName;
}

public Date getBbCreateDate() {
	return bbCreateDate;
}

public void setBbCreateDate(Date bbCreateDate) {
	this.bbCreateDate = bbCreateDate;
}

public Date getBbAnwDate() {
	return bbAnwDate;
}

public void setBbAnwDate(Date bbAnwDate) {
	this.bbAnwDate = bbAnwDate;
}

@Override
public String toString() {
	return "BulletinBoard [bbCode=" + bbCode + ", mCode=" + mCode + ", bbCategory=" + bbCategory + ", bbTitle="
			+ bbTitle + ", bbContent=" + bbContent + ", bbDcategory=" + bbDcategory + ", bbAnswer=" + bbAnswer
			+ ", bbStatus=" + bbStatus + ", bbOriginName=" + bbOriginName + ", bbReName=" + bbReName + ", bbCreateDate="
			+ bbCreateDate + ", bbAnwDate=" + bbAnwDate + "]";
};


}
