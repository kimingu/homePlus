package com.kh.homeplus.manpower.model.vo;

public class CompanyContract {
	private String contracting;
	private String contractend;
	private String contractall;
	
	public CompanyContract() {}
	
	public CompanyContract(String contracting, String contractend, String contractall) {
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
		return "CompanyContract [contracting=" + contracting + ", contractend=" + contractend + ", contractall="
				+ contractall + "]";
	}
	
	
}
