package com.kh.homeplus.manpower.model.vo;

public class SearchConditionReportWorker {
	private String all;
	private String bbTitle;
	private String bbContent;
	private String bbDcategory;
	
	public SearchConditionReportWorker() {}

	public SearchConditionReportWorker(String all, String bbTitle, String bbContent, String bbDcategory) {
		super();
		this.all = all;
		this.bbTitle = bbTitle;
		this.bbContent = bbContent;
		this.bbDcategory = bbDcategory;
	}

	public String getAll() {
		return all;
	}

	public void setAll(String all) {
		this.all = all;
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

	@Override
	public String toString() {
		return "SearchConditionReportWorker [all=" + all + ", bbTitle=" + bbTitle + ", bbContent=" + bbContent
				+ ", bbDcategory=" + bbDcategory + "]";
	}
	
	
}
