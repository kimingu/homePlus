package com.kh.homeplus.master.model.vo;

public class LookAround {
	private String laYoutube;
	private String laPicture1;
	private String laPicture2;
	
	public LookAround() {}

	public LookAround(String laYoutube, String laPicture1, String laPicture2) {
		super();
		this.laYoutube = laYoutube;
		this.laPicture1 = laPicture1;
		this.laPicture2 = laPicture2;
	}

	public String getLaYoutube() {
		return laYoutube;
	}

	public void setLaYoutube(String laYoutube) {
		this.laYoutube = laYoutube;
	}

	public String getLaPicture1() {
		return laPicture1;
	}

	public void setLaPicture1(String laPicture1) {
		this.laPicture1 = laPicture1;
	}

	public String getLaPicture2() {
		return laPicture2;
	}

	public void setLaPicture2(String laPicture2) {
		this.laPicture2 = laPicture2;
	}

	@Override
	public String toString() {
		return "LookAround [laYoutube=" + laYoutube + ", laPicture1=" + laPicture1 + ", laPicture2=" + laPicture2 + "]";
	}
	
	
}