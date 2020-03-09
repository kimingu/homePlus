package com.kh.homeplus.member.model.vo;



import java.util.Calendar;
import java.util.Date;

import com.kh.homeplus.guestRoom.model.vo.GuestRoom;
import com.kh.homeplus.gym.model.vo.Gym;
import com.kh.homeplus.readingRoom.model.vo.ReadingRoom;

public class MemberReserve {
	private String mrCode;
	private String mrReserver;
	private String cvCode;
	private String cvName;
	private String mrContent;
	private Date startDate;
	private Date endDate;
	private char mrStatus;
	
	public MemberReserve() {
		
	}

	public MemberReserve(String mrCode, String mrReserver, String cvCode, String cvName, String mrContent,
			Date startDate, Date endDate, char mrStatus) {
		super();
		this.mrCode = mrCode;
		this.mrReserver = mrReserver;
		this.cvCode = cvCode;
		this.cvName = cvName;
		this.mrContent = mrContent;
		this.startDate = startDate;
		this.endDate = endDate;
		this.mrStatus = mrStatus;
	}
	
	
	public MemberReserve(ReadingRoom rr, String cvName) {
		this.mrReserver = rr.getmCode();
		this.cvCode = rr.getReaReCode();
		this.cvName = cvName;		
		this.mrContent = Integer.toString(rr.getReaSeat());
		this.startDate = rr.getReaReDate();
		this.endDate = rr.getReaEndDate();
	}
	
	public MemberReserve(Gym g, String cvName) {
		this.mrReserver = g.getmCode();
		this.cvCode = g.getGymReCode();
		this.cvName = cvName;
		this.mrContent = "";
		this.startDate = g.getGymReSt();
		this.endDate = g.getGymReEnd();
	}
	
	public MemberReserve(GuestRoom gr, String cvName) {
		this.mrReserver = gr.getmCode();
		this.cvCode = gr.getGuerReCode();
		this.cvName = cvName;
		this.mrContent = Integer.toString(gr.getGuerRoom());
		this.startDate = gr.getGuerReDate();
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(gr.getGuerReDate());
		cal.add(Calendar.HOUR, +3);
		
		Date nextTime = new Date(cal.getTimeInMillis());
		
		this.endDate = nextTime;
	}

	public String getMrCode() {
		return mrCode;
	}

	public void setMrCode(String mrCode) {
		this.mrCode = mrCode;
	}

	public String getMrReserver() {
		return mrReserver;
	}

	public void setMrReserver(String mrReserver) {
		this.mrReserver = mrReserver;
	}

	public String getCvCode() {
		return cvCode;
	}

	public void setCvCode(String cvCode) {
		this.cvCode = cvCode;
	}

	public String getCvName() {
		return cvName;
	}

	public void setCvName(String cvName) {
		this.cvName = cvName;
	}

	public String getMrContent() {
		return mrContent;
	}

	public void setMrContent(String mrContent) {
		this.mrContent = mrContent;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public char getMrStatus() {
		return mrStatus;
	}

	public void setMrStatus(char mrStatus) {
		this.mrStatus = mrStatus;
	}

	@Override
	public String toString() {
		return "MemberReserve [mrCode=" + mrCode + ", mrReserver=" + mrReserver + ", cvCode=" + cvCode + ", cvName="
				+ cvName + ", mrContent=" + mrContent + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", mrStatus=" + mrStatus + "]";
	}

}
