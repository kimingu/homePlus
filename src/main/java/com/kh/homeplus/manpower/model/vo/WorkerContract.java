package com.kh.homeplus.manpower.model.vo;

public class WorkerContract {
	private int contracta;
	private int contractb;
	private int contractc;
	private int contractd;
	private int contracte;
	
	public WorkerContract() {}

	public WorkerContract(int contracta, int contractb, int contractc, int contractd, int contracte) {
		super();
		this.contracta = contracta;
		this.contractb = contractb;
		this.contractc = contractc;
		this.contractd = contractd;
		this.contracte = contracte;
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

	public int getContracte() {
		return contracte;
	}

	public void setContracte(int contracte) {
		this.contracte = contracte;
	}

	@Override
	public String toString() {
		return "WorkerContract [contracta=" + contracta + ", contractb=" + contractb + ", contractc=" + contractc
				+ ", contractd=" + contractd + ", contracte=" + contracte + "]";
	}
	
	
}
