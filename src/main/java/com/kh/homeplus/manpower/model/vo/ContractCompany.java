package com.kh.homeplus.manpower.model.vo;

public class ContractCompany {
	private String contracting;
	private String contractend;
	private String contractall;
	
	public ContractCompany() {}
	
	public ContractCompany(String contracting, String contractend, String contractall) {
		super();
		this.contracting = contracting;
		this.contractend = contractend;
		this.contractall = contractall;
	}

	public String getContracting() {
		return contracting;
	}

	public void setContracting(String contracting) {
		this.contracting = contracting;
	}

	public String getContractend() {
		return contractend;
	}

	public void setContractend(String contractend) {
		this.contractend = contractend;
	}

	public String getContractall() {
		return contractall;
	}

	public void setContractall(String contractall) {
		this.contractall = contractall;
	}

	@Override
	public String toString() {
		return "ContractCompany [contracting=" + contracting + ", contractend=" + contractend + ", contractall="
				+ contractall + "]";
	}
	
	
}
