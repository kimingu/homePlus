package com.kh.homeplus.member.model.vo;

import java.util.Date;

public class Member {

private String mCode;
private String apCode;
private String mId;
private String mPwd;
private String mName;
private String mBirth;
private String mEmail;
private String mPhone;
private String mAddress;
private String mArea;
private String mRelation;
private String mCar;
private String mAccount;
private Date mEnrollDate;
private String mRefidCard;// 음식물 쓰레기 코드
private String mOriginalFilename;
private String mRenameFilename;
private String mStatus;
private String kCode; // 카드키 번호
private char mEmailStatus; // 이메일 광고 쿠폰 수신동의
private String mAddressCode;// 주민코드

public Member() {}


public Member(String mCode, String apCode, String mId, String mPwd, String mName, String mBirth, String mEmail,
		String mPhone, String mAddress, String mArea, String mRelation, String mCar, String mAccount, Date mEnrollDate,
		String mRefidCard, String mOriginalFilename, String mRenameFilename, String mStatus, String kCode,
		char mEmailStatus, String mAddressCode) {
	super();
	this.mCode = mCode;
	this.apCode = apCode;
	this.mId = mId;
	this.mPwd = mPwd;
	this.mName = mName;
	this.mBirth = mBirth;
	this.mEmail = mEmail;
	this.mPhone = mPhone;
	this.mAddress = mAddress;
	this.mArea = mArea;
	this.mRelation = mRelation;
	this.mCar = mCar;
	this.mAccount = mAccount;
	this.mEnrollDate = mEnrollDate;
	this.mRefidCard = mRefidCard;
	this.mOriginalFilename = mOriginalFilename;
	this.mRenameFilename = mRenameFilename;
	this.mStatus = mStatus;
	this.kCode = kCode;
	this.mEmailStatus = mEmailStatus;
	this.mAddressCode = mAddressCode;
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


public String getmBirth() {
	return mBirth;
}


public void setmBirth(String mBirth) {
	this.mBirth = mBirth;
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


public String getmAddress() {
	return mAddress;
}


public void setmAddress(String mAddress) {
	this.mAddress = mAddress;
}


public String getmArea() {
	return mArea;
}


public void setmArea(String mArea) {
	this.mArea = mArea;
}


public String getmRelation() {
	return mRelation;
}


public void setmRelation(String mRelation) {
	this.mRelation = mRelation;
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


public String getkCode() {
	return kCode;
}


public void setkCode(String kCode) {
	this.kCode = kCode;
}


public char getmEmailStatus() {
	return mEmailStatus;
}


public void setmEmailStatus(char mEmailStatus) {
	this.mEmailStatus = mEmailStatus;
}


public String getmAddressCode() {
	return mAddressCode;
}


public void setmAddressCode(String mAddressCode) {
	this.mAddressCode = mAddressCode;
}


@Override
public String toString() {
	return "Member [mCode=" + mCode + ", apCode=" + apCode + ", mId=" + mId + ", mPwd=" + mPwd + ", mName=" + mName
			+ ", mBirth=" + mBirth + ", mEmail=" + mEmail + ", mPhone=" + mPhone + ", mAddress=" + mAddress + ", mArea="
			+ mArea + ", mRelation=" + mRelation + ", mCar=" + mCar + ", mAccount=" + mAccount + ", mEnrollDate="
			+ mEnrollDate + ", mRefidCard=" + mRefidCard + ", mOriginalFilename=" + mOriginalFilename
			+ ", mRenameFilename=" + mRenameFilename + ", mStatus=" + mStatus + ", kCode=" + kCode + ", mEmailStatus="
			+ mEmailStatus + ", mAddressCode=" + mAddressCode + "]";
}

// mAge -> mBirth로 바꿨습니다.
// gender 지웠습니다.


}



