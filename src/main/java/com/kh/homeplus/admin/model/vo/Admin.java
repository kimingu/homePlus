package com.kh.homeplus.admin.model.vo;

import java.util.Date;

public class Admin {
private String aCode;
private String comCode;
private String aId;
private String aPwd;
private String aName;
private String aBirth;
private String aEmail;
private String aPhone;
private String aAddress;
private String aDepartment;
private Date aEnrollDate;
private String aStatus;
private String apCode;

public Admin() {}

public Admin(String aCode, String comCode, String aId, String aPwd, String aName, String aBirth, String aEmail,
		String aPhone, String aAddress, String aDepartment, Date aEnrollDate, String aStatus, String apCode) {
	super();
	this.aCode = aCode;
	this.comCode = comCode;
	this.aId = aId;
	this.aPwd = aPwd;
	this.aName = aName;
	this.aBirth = aBirth;
	this.aEmail = aEmail;
	this.aPhone = aPhone;
	this.aAddress = aAddress;
	this.aDepartment = aDepartment;
	this.aEnrollDate = aEnrollDate;
	this.aStatus = aStatus;
	this.apCode = apCode;
}

public String getaCode() {
	return aCode;
}

public void setaCode(String aCode) {
	this.aCode = aCode;
}

public String getComCode() {
	return comCode;
}

public void setComCode(String comCode) {
	this.comCode = comCode;
}

public String getaId() {
	return aId;
}

public void setaId(String aId) {
	this.aId = aId;
}

public String getaPwd() {
	return aPwd;
}

public void setaPwd(String aPwd) {
	this.aPwd = aPwd;
}

public String getaName() {
	return aName;
}

public void setaName(String aName) {
	this.aName = aName;
}

public String getaBirth() {
	return aBirth;
}

public void setaBirth(String aBirth) {
	this.aBirth = aBirth;
}

public String getaEmail() {
	return aEmail;
}

public void setaEmail(String aEmail) {
	this.aEmail = aEmail;
}

public String getaPhone() {
	return aPhone;
}

public void setaPhone(String aPhone) {
	this.aPhone = aPhone;
}

public String getaAddress() {
	return aAddress;
}

public void setaAddress(String aAddress) {
	this.aAddress = aAddress;
}

public String getaDepartment() {
	return aDepartment;
}

public void setaDepartment(String aDepartment) {
	this.aDepartment = aDepartment;
}

public Date getaEnrollDate() {
	return aEnrollDate;
}

public void setaEnrollDate(Date aEnrollDate) {
	this.aEnrollDate = aEnrollDate;
}

public String getaStatus() {
	return aStatus;
}

public void setaStatus(String aStatus) {
	this.aStatus = aStatus;
}

public String getApCode() {
	return apCode;
}

public void setApCode(String apCode) {
	this.apCode = apCode;
}

@Override
public String toString() {
	return "Admin [aCode=" + aCode + ", comCode=" + comCode + ", aId=" + aId + ", aPwd=" + aPwd + ", aName=" + aName
			+ ", aBirth=" + aBirth + ", aEmail=" + aEmail + ", aPhone=" + aPhone + ", aAddress=" + aAddress
			+ ", aDepartment=" + aDepartment + ", aEnrollDate=" + aEnrollDate + ", aStatus=" + aStatus + ", apCode="
			+ apCode + "]";
}


}