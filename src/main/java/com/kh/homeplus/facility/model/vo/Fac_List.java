package com.kh.homeplus.facility.model.vo;

public class Fac_List {
	private String bb_code;
	private String m_name;
	private String bb_category;
	private String bb_title;
	private String bb_content;
	private String bb_dcategory;
	private String bb_answer;
	private String bb_status;
	private String bb_originname;
	private String bb_rename;
	private String bb_createdate;
	private String bb_anwdate;
	
	public Fac_List() {
		
	}

	public Fac_List(String bb_code, String m_name, String bb_category, String bb_title, String bb_content,
			String bb_dcategory, String bb_answer, String bb_status, String bb_originname, String bb_rename,
			String bb_createdate, String bb_anwdate) {
		super();
		this.bb_code = bb_code;
		this.m_name = m_name;
		this.bb_category = bb_category;
		this.bb_title = bb_title;
		this.bb_content = bb_content;
		this.bb_dcategory = bb_dcategory;
		this.bb_answer = bb_answer;
		this.bb_status = bb_status;
		this.bb_originname = bb_originname;
		this.bb_rename = bb_rename;
		this.bb_createdate = bb_createdate;
		this.bb_anwdate = bb_anwdate;
	}

	public String getBb_code() {
		return bb_code;
	}

	public void setBb_code(String bb_code) {
		this.bb_code = bb_code;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getBb_category() {
		return bb_category;
	}

	public void setBb_category(String bb_category) {
		this.bb_category = bb_category;
	}

	public String getBb_title() {
		return bb_title;
	}

	public void setBb_title(String bb_title) {
		this.bb_title = bb_title;
	}

	public String getBb_content() {
		return bb_content;
	}

	public void setBb_content(String bb_content) {
		this.bb_content = bb_content;
	}

	public String getBb_dcategory() {
		return bb_dcategory;
	}

	public void setBb_dcategory(String bb_dcategory) {
		this.bb_dcategory = bb_dcategory;
	}

	public String getBb_answer() {
		return bb_answer;
	}

	public void setBb_answer(String bb_answer) {
		this.bb_answer = bb_answer;
	}

	public String getBb_status() {
		return bb_status;
	}

	public void setBb_status(String bb_status) {
		this.bb_status = bb_status;
	}

	public String getBb_originname() {
		return bb_originname;
	}

	public void setBb_originname(String bb_originname) {
		this.bb_originname = bb_originname;
	}

	public String getBb_rename() {
		return bb_rename;
	}

	public void setBb_rename(String bb_rename) {
		this.bb_rename = bb_rename;
	}

	public String getBb_createdate() {
		return bb_createdate;
	}

	public void setBb_createdate(String bb_createdate) {
		this.bb_createdate = bb_createdate;
	}

	public String getBb_anwdate() {
		return bb_anwdate;
	}

	public void setBb_anwdate(String bb_anwdate) {
		this.bb_anwdate = bb_anwdate;
	}

	@Override
	public String toString() {
		return "Fac_List [bb_code=" + bb_code + ", m_name=" + m_name + ", bb_category=" + bb_category + ", bb_title="
				+ bb_title + ", bb_content=" + bb_content + ", bb_dcategory=" + bb_dcategory + ", bb_answer="
				+ bb_answer + ", bb_status=" + bb_status + ", bb_originname=" + bb_originname + ", bb_rename="
				+ bb_rename + ", bb_createdate=" + bb_createdate + ", bb_anwdate=" + bb_anwdate + "]";
	}
	
}
