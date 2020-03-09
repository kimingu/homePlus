package com.kh.homeplus.practitioners.model.vo;

import java.util.Date;

public class Delivery {
	
	private String deCode;
	private String apName;
	private String deWriter; //작성자
	private String deHousehold; //세대번호
	private String reciever; //수취인
	private Date deCreateDate; //작성일자
	private Date deRecieveDate; // 수령일자
	private String deStatus; // 수령여부
	
	public Delivery() {}

	public Delivery(String deCode, String apName, String deWriter, String deHousehold, String reciever,
			Date deCreateDate, Date deRecieveDate, String deStatus) {
		super();
		this.deCode = deCode;
		this.apName = apName;
		this.deWriter = deWriter;
		this.deHousehold = deHousehold;
		this.reciever = reciever;
		this.deCreateDate = deCreateDate;
		this.deRecieveDate = deRecieveDate;
		this.deStatus = deStatus;
	}

	public String getDeCode() {
		return deCode;
	}

	public void setDeCode(String deCode) {
		this.deCode = deCode;
	}

	public String getApName() {
		return apName;
	}

	public void setApName(String apName) {
		this.apName = apName;
	}

	public String getDeWriter() {
		return deWriter;
	}

	public void setDeWriter(String deWriter) {
		this.deWriter = deWriter;
	}

	public String getDeHousehold() {
		return deHousehold;
	}

	public void setDeHousehold(String deHousehold) {
		this.deHousehold = deHousehold;
	}

	public String getReciever() {
		return reciever;
	}

	public void setReciever(String reciever) {
		this.reciever = reciever;
	}

	public Date getDeCreateDate() {
		return deCreateDate;
	}

	public void setDeCreateDate(Date deCreateDate) {
		this.deCreateDate = deCreateDate;
	}

	public Date getDeRecieveDate() {
		return deRecieveDate;
	}

	public void setDeRecieveDate(Date deRecieveDate) {
		this.deRecieveDate = deRecieveDate;
	}

	public String getDeStatus() {
		return deStatus;
	}

	public void setDeStatus(String deStatus) {
		this.deStatus = deStatus;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((apName == null) ? 0 : apName.hashCode());
		result = prime * result + ((deCode == null) ? 0 : deCode.hashCode());
		result = prime * result + ((deCreateDate == null) ? 0 : deCreateDate.hashCode());
		result = prime * result + ((deHousehold == null) ? 0 : deHousehold.hashCode());
		result = prime * result + ((deRecieveDate == null) ? 0 : deRecieveDate.hashCode());
		result = prime * result + ((deStatus == null) ? 0 : deStatus.hashCode());
		result = prime * result + ((deWriter == null) ? 0 : deWriter.hashCode());
		result = prime * result + ((reciever == null) ? 0 : reciever.hashCode());
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
		Delivery other = (Delivery) obj;
		if (apName == null) {
			if (other.apName != null)
				return false;
		} else if (!apName.equals(other.apName))
			return false;
		if (deCode == null) {
			if (other.deCode != null)
				return false;
		} else if (!deCode.equals(other.deCode))
			return false;
		if (deCreateDate == null) {
			if (other.deCreateDate != null)
				return false;
		} else if (!deCreateDate.equals(other.deCreateDate))
			return false;
		if (deHousehold == null) {
			if (other.deHousehold != null)
				return false;
		} else if (!deHousehold.equals(other.deHousehold))
			return false;
		if (deRecieveDate == null) {
			if (other.deRecieveDate != null)
				return false;
		} else if (!deRecieveDate.equals(other.deRecieveDate))
			return false;
		if (deStatus == null) {
			if (other.deStatus != null)
				return false;
		} else if (!deStatus.equals(other.deStatus))
			return false;
		if (deWriter == null) {
			if (other.deWriter != null)
				return false;
		} else if (!deWriter.equals(other.deWriter))
			return false;
		if (reciever == null) {
			if (other.reciever != null)
				return false;
		} else if (!reciever.equals(other.reciever))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Delivery [deCode=" + deCode + ", apName=" + apName + ", deWriter=" + deWriter + ", deHousehold="
				+ deHousehold + ", reciever=" + reciever + ", deCreateDate=" + deCreateDate + ", deRecieveDate="
				+ deRecieveDate + ", deStatus=" + deStatus + "]";
	}

		
}