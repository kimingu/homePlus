package com.kh.homeplus.practitioners.model.vo;

public class Hometax {
	
	private String htCode;
	private String apCode;
	private String htAddress;
	private String htTarget;
	private String htName;
	private String htCreateDate;
	private int htUsage;
	private String htStatus;
	
	public Hometax() {}

	public Hometax(String htCode, String apCode, String htAddress, String htTarget, String htName, String htCreateDate,
			int htUsage, String htStatus) {
		super();
		this.htCode = htCode;
		this.apCode = apCode;
		this.htAddress = htAddress;
		this.htTarget = htTarget;
		this.htName = htName;
		this.htCreateDate = htCreateDate;
		this.htUsage = htUsage;
		this.htStatus = htStatus;
	}

	public String getHtCode() {
		return htCode;
	}

	public void setHtCode(String htCode) {
		this.htCode = htCode;
	}

	public String getApCode() {
		return apCode;
	}

	public void setApCode(String apCode) {
		this.apCode = apCode;
	}

	public String getHtAddress() {
		return htAddress;
	}

	public void setHtAddress(String htAddress) {
		this.htAddress = htAddress;
	}

	public String getHtTarget() {
		return htTarget;
	}

	public void setHtTarget(String htTarget) {
		this.htTarget = htTarget;
	}

	public String getHtName() {
		return htName;
	}

	public void setHtName(String htName) {
		this.htName = htName;
	}

	public String getHtCreateDate() {
		return htCreateDate;
	}

	public void setHtCreateDate(String htCreateDate) {
		this.htCreateDate = htCreateDate;
	}

	public int getHtUsage() {
		return htUsage;
	}

	public void setHtUsage(int htUsage) {
		this.htUsage = htUsage;
	}

	public String getHtStatus() {
		return htStatus;
	}

	public void setHtStatus(String htStatus) {
		this.htStatus = htStatus;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((apCode == null) ? 0 : apCode.hashCode());
		result = prime * result + ((htAddress == null) ? 0 : htAddress.hashCode());
		result = prime * result + ((htCode == null) ? 0 : htCode.hashCode());
		result = prime * result + ((htCreateDate == null) ? 0 : htCreateDate.hashCode());
		result = prime * result + ((htName == null) ? 0 : htName.hashCode());
		result = prime * result + ((htStatus == null) ? 0 : htStatus.hashCode());
		result = prime * result + ((htTarget == null) ? 0 : htTarget.hashCode());
		result = prime * result + htUsage;
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
		Hometax other = (Hometax) obj;
		if (apCode == null) {
			if (other.apCode != null)
				return false;
		} else if (!apCode.equals(other.apCode))
			return false;
		if (htAddress == null) {
			if (other.htAddress != null)
				return false;
		} else if (!htAddress.equals(other.htAddress))
			return false;
		if (htCode == null) {
			if (other.htCode != null)
				return false;
		} else if (!htCode.equals(other.htCode))
			return false;
		if (htCreateDate == null) {
			if (other.htCreateDate != null)
				return false;
		} else if (!htCreateDate.equals(other.htCreateDate))
			return false;
		if (htName == null) {
			if (other.htName != null)
				return false;
		} else if (!htName.equals(other.htName))
			return false;
		if (htStatus == null) {
			if (other.htStatus != null)
				return false;
		} else if (!htStatus.equals(other.htStatus))
			return false;
		if (htTarget == null) {
			if (other.htTarget != null)
				return false;
		} else if (!htTarget.equals(other.htTarget))
			return false;
		if (htUsage != other.htUsage)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Hometax [htCode=" + htCode + ", apCode=" + apCode + ", htAddress=" + htAddress + ", htTarget="
				+ htTarget + ", htName=" + htName + ", htCreateDate=" + htCreateDate + ", htUsage=" + htUsage
				+ ", htStatus=" + htStatus + "]";
	}
	
	

}