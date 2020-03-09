package com.kh.homeplus.manpower.model.vo;

public class ContractFacility {
	private int contracta;
	private int contractb;
	private int contractc;
	private int contractd;
	
	public ContractFacility() {}

	public ContractFacility(int contracta, int contractb, int contractc, int contractd) {
		super();
		this.contracta = contracta;
		this.contractb = contractb;
		this.contractc = contractc;
		this.contractd = contractd;
	}

	public int getContracta() {
		return contracta;
	}

	public void setContracta(int contracta) {
		this.contracta = contracta;
	}

	public int getContractb() {
		return contractb;
	}

	public void setContractb(int contractb) {
		this.contractb = contractb;
	}

	public int getContractc() {
		return contractc;
	}

	public void setContractc(int contractc) {
		this.contractc = contractc;
	}

	public int getContractd() {
		return contractd;
	}

	public void setContractd(int contractd) {
		this.contractd = contractd;
	}

	@Override
	public String toString() {
		return "ContractFacility [contracta=" + contracta + ", contractb=" + contractb + ", contractc=" + contractc
				+ ", contractd=" + contractd + "]";
	}
	
	

}
