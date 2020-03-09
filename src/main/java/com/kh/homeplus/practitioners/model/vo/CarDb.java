package com.kh.homeplus.practitioners.model.vo;

public class CarDb {
	
	private String mCode;
	private String apCode;
	private String carNum;
	private String carOwner;
	private String carAddress;

	public CarDb() {}

	public CarDb(String mCode, String apCode, String carNum, String carOwner, String carAddress) {
		super();
		this.mCode = mCode;
		this.apCode = apCode;
		this.carNum = carNum;
		this.carOwner = carOwner;
		this.carAddress = carAddress;
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

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public String getCarOwner() {
		return carOwner;
	}

	public void setCarOwner(String carOwner) {
		this.carOwner = carOwner;
	}

	public String getCarAddress() {
		return carAddress;
	}

	public void setCarAddress(String carAddress) {
		this.carAddress = carAddress;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((apCode == null) ? 0 : apCode.hashCode());
		result = prime * result + ((carAddress == null) ? 0 : carAddress.hashCode());
		result = prime * result + ((carNum == null) ? 0 : carNum.hashCode());
		result = prime * result + ((carOwner == null) ? 0 : carOwner.hashCode());
		result = prime * result + ((mCode == null) ? 0 : mCode.hashCode());
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
		CarDb other = (CarDb) obj;
		if (apCode == null) {
			if (other.apCode != null)
				return false;
		} else if (!apCode.equals(other.apCode))
			return false;
		if (carAddress == null) {
			if (other.carAddress != null)
				return false;
		} else if (!carAddress.equals(other.carAddress))
			return false;
		if (carNum == null) {
			if (other.carNum != null)
				return false;
		} else if (!carNum.equals(other.carNum))
			return false;
		if (carOwner == null) {
			if (other.carOwner != null)
				return false;
		} else if (!carOwner.equals(other.carOwner))
			return false;
		if (mCode == null) {
			if (other.mCode != null)
				return false;
		} else if (!mCode.equals(other.mCode))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CarDb [mCode=" + mCode + ", apCode=" + apCode + ", carNum=" + carNum + ", carOwner=" + carOwner
				+ ", carAddress=" + carAddress + "]";
	}

	

	
	
	
}
