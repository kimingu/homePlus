package com.kh.homeplus.practitioners.model.vo;

import java.util.Date;

public class Commute {
	
	private String coCode;
	private String apName;
	private String coWorker;
	private Date coDate;
	private Date coStart;
	private Date coEnd;
	private String coStatus;

	public Commute() {}

	public Commute(String coCode, String apName, String coWorker, Date coDate, Date coStart, Date coEnd,
			String coStatus) {
		super();
		this.coCode = coCode;
		this.apName = apName;
		this.coWorker = coWorker;
		this.coDate = coDate;
		this.coStart = coStart;
		this.coEnd = coEnd;
		this.coStatus = coStatus;
	}

	public String getCoCode() {
		return coCode;
	}

	public void setCoCode(String coCode) {
		this.coCode = coCode;
	}

	public String getApName() {
		return apName;
	}

	public void setApName(String apName) {
		this.apName = apName;
	}

	public String getCoWorker() {
		return coWorker;
	}

	public void setCoWorker(String coWorker) {
		this.coWorker = coWorker;
	}

	public Date getCoDate() {
		return coDate;
	}

	public void setCoDate(Date coDate) {
		this.coDate = coDate;
	}

	public Date getCoStart() {
		return coStart;
	}

	public void setCoStart(Date coStart) {
		this.coStart = coStart;
	}

	public Date getCoEnd() {
		return coEnd;
	}

	public void setCoEnd(Date coEnd) {
		this.coEnd = coEnd;
	}

	public String getCoStatus() {
		return coStatus;
	}

	public void setCoStatus(String coStatus) {
		this.coStatus = coStatus;
	}
	
	
	
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((apName == null) ? 0 : apName.hashCode());
		result = prime * result + ((coCode == null) ? 0 : coCode.hashCode());
		result = prime * result + ((coDate == null) ? 0 : coDate.hashCode());
		result = prime * result + ((coEnd == null) ? 0 : coEnd.hashCode());
		result = prime * result + ((coStart == null) ? 0 : coStart.hashCode());
		result = prime * result + ((coStatus == null) ? 0 : coStatus.hashCode());
		result = prime * result + ((coWorker == null) ? 0 : coWorker.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Commute other = (Commute) obj;
		if (apName == null) {
			if (other.apName != null)
				return false;
		} else if (!apName.equals(other.apName))
			return false;
		if (coCode == null) {
			if (other.coCode != null)
				return false;
		} else if (!coCode.equals(other.coCode))
			return false;
		if (coDate == null) {
			if (other.coDate != null)
				return false;
		} else if (!coDate.equals(other.coDate))
			return false;
		if (coEnd == null) {
			if (other.coEnd != null)
				return false;
		} else if (!coEnd.equals(other.coEnd))
			return false;
		if (coStart == null) {
			if (other.coStart != null)
				return false;
		} else if (!coStart.equals(other.coStart))
			return false;
		if (coStatus == null) {
			if (other.coStatus != null)
				return false;
		} else if (!coStatus.equals(other.coStatus))
			return false;
		if (coWorker == null) {
			if (other.coWorker != null)
				return false;
		} else if (!coWorker.equals(other.coWorker))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Commute [coCode=" + coCode + ", apName=" + apName + ", coWorker=" + coWorker + ", coDate=" + coDate
				+ ", coStart=" + coStart + ", coEnd=" + coEnd + ", coStatus=" + coStatus + "]";
	}
	
}
	
	

	