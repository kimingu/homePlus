package com.kh.homeplus.master.model.vo;

import java.util.Date;

public class Apply {
	
	private String appCode;
	private String appName;
	private String appPhone;
	private String appManager;
	private String appContent;
	private Date appDate;
	private String appStatus;
	
	public Apply() {}

	public Apply(String appCode, String appName, String appPhone, String appManager, String appContent, Date appDate,
			String appStatus) {
		super();
		this.appCode = appCode;
		this.appName = appName;
		this.appPhone = appPhone;
		this.appManager = appManager;
		this.appContent = appContent;
		this.appDate = appDate;
		this.appStatus = appStatus;
	}

	public String getAppCode() {
		return appCode;
	}

	public void setAppCode(String appCode) {
		this.appCode = appCode;
	}

	public String getAppName() {
		return appName;
	}

	public void setAppName(String appName) {
		this.appName = appName;
	}

	public String getAppPhone() {
		return appPhone;
	}

	public void setAppPhone(String appPhone) {
		this.appPhone = appPhone;
	}

	public String getAppManager() {
		return appManager;
	}

	public void setAppManager(String appManager) {
		this.appManager = appManager;
	}

	public String getAppContent() {
		return appContent;
	}

	public void setAppContent(String appContent) {
		this.appContent = appContent;
	}

	public Date getAppDate() {
		return appDate;
	}

	public void setAppDate(Date appDate) {
		this.appDate = appDate;
	}

	public String getAppStatus() {
		return appStatus;
	}

	public void setAppStatus(String appStatus) {
		this.appStatus = appStatus;
	}

	@Override
	public String toString() {
		return "Apply [appCode=" + appCode + ", appName=" + appName + ", appPhone=" + appPhone + ", appManager="
				+ appManager + ", appContent=" + appContent + ", appDate=" + appDate + ", appStatus=" + appStatus + "]";
	}

	
	
}
