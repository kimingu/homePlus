package com.kh.homeplus.master.model.vo;

import java.util.Date;

public class Member {

private String mCode;
private String apCode;
private String mId;
private String mPwd;
private String mName;
private String mAge;
private String mEmail;
private String mPhone;
private String mGender;
private String mAddress;
private String mRealation;
private String mCar;
private String mAccount;
private Date mEnrollDate;
private String mRefidCard;
private String mOriginalFilename;
private String mRenameFilename;
private String mStatus;
private String mArea;
private String kCode; // 카드키 번호

public Member() {}

public Member(String mCode, String apCode, String mId, String mPwd, String mName, String mAge, String mEmail,
		String mPhone, String mGender, String mAddress, String mRealation, String mCar, String mAccount,
		Date mEnrollDate, String mRefidCard, String mOriginalFilename, String mRenameFilename, String mStatus,
		String mArea, String kCode) {
	super();
	this.mCode = mCode;
	this.apCode = apCode;
	this.mId = mId;
	this.mPwd = mPwd;
	this.mName = mName;
	this.mAge = mAge;
	this.mEmail = mEmail;
	this.mPhone = mPhone;
	this.mGender = mGender;
	this.mAddress = mAddress;
	this.mRealation = mRealation;
	this.mCar = mCar;
	this.mAccount = mAccount;
	this.mEnrollDate = mEnrollDate;
	this.mRefidCard = mRefidCard;
	this.mOriginalFilename = mOriginalFilename;
	this.mRenameFilename = mRenameFilename;
	this.mStatus = mStatus;
	this.mArea = mArea;
	this.kCode = kCode;
}

public String getmCode() {
	return mCode;
}

public void setmCode(String mCode) {
	this.mCode = mCode;
}

public String getApCode() {
	return apCode;
}

public void setApCode(String apCode) {
	this.apCode = apCode;
}

public String getmId() {
	return mId;
}

public void setmId(String mId) {
	this.mId = mId;
}

public String getmPwd() {
	return mPwd;
}

public void setmPwd(String mPwd) {
	this.mPwd = mPwd;
}

public String getmName() {
	return mName;
}

public void setmName(String mName) {
	this.mName = mName;
}

public String getmAge() {
	return mAge;
}

public void setmAge(String mAge) {
	this.mAge = mAge;
}

public String getmEmail() {
	return mEmail;
}

public void setmEmail(String mEmail) {
	this.mEmail = mEmail;
}

public String getmPhone() {
	return mPhone;
}

public void setmPhone(String mPhone) {
	this.mPhone = mPhone;
}

public String getmGender() {
	return mGender;
}

public void setmGender(String mGender) {
	this.mGender = mGender;
}

public String getmAddress() {
	return mAddress;
}

public void setmAddress(String mAddress) {
	this.mAddress = mAddress;
}

public String getmRealation() {
	return mRealation;
}

public void setmRealation(String mRealation) {
	this.mRealation = mRealation;
}

public String getmCar() {
	return mCar;
}

public void setmCar(String mCar) {
	this.mCar = mCar;
}

public String getmAccount() {
	return mAccount;
}

public void setmAccount(String mAccount) {
	this.mAccount = mAccount;
}

public Date getmEnrollDate() {
	return mEnrollDate;
}

public void setmEnrollDate(Date mEnrollDate) {
	this.mEnrollDate = mEnrollDate;
}

public String getmRefidCard() {
	return mRefidCard;
}

public void setmRefidCard(String mRefidCard) {
	this.mRefidCard = mRefidCard;
}

public String getmOriginalFilename() {
	return mOriginalFilename;
}

public void setmOriginalFilename(String mOriginalFilename) {
	this.mOriginalFilename = mOriginalFilename;
}

public String getmRenameFilename() {
	return mRenameFilename;
}

public void setmRenameFilename(String mRenameFilename) {
	this.mRenameFilename = mRenameFilename;
}

public String getmStatus() {
	return mStatus;
}

public void setmStatus(String mStatus) {
	this.mStatus = mStatus;
}

public String getmArea() {
	return mArea;
}

public void setmArea(String mArea) {
	this.mArea = mArea;
}

public String getkCode() {
	return kCode;
}

public void setkCode(String kCode) {
	this.kCode = kCode;
}

@Override
public String toString() {
	return "Member [mCode=" + mCode + ", apCode=" + apCode + ", mId=" + mId + ", mPwd=" + mPwd + ", mName=" + mName
			+ ", mAge=" + mAge + ", mEmail=" + mEmail + ", mPhone=" + mPhone + ", mGender=" + mGender + ", mAddress="
			+ mAddress + ", mRealation=" + mRealation + ", mCar=" + mCar + ", mAccount=" + mAccount + ", mEnrollDate="
			+ mEnrollDate + ", mRefidCard=" + mRefidCard + ", mOriginalFilename=" + mOriginalFilename
			+ ", mRenameFilename=" + mRenameFilename + ", mStatus=" + mStatus + ", mArea=" + mArea + ", kCode=" + kCode
			+ "]";
}


}
