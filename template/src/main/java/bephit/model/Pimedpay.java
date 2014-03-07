package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Pimedpay
{
	private String medpayid;
	
	@NotEmpty
	private String insurance;
	
	@NotEmpty
	private String address;
	
	@NotEmpty
	private String reg;
	
	@NotEmpty
	private String nameofperson;
	
	@NotEmpty
	private String dateofaccident;
	
	@NotEmpty
	private String subject;
	
	public Pimedpay() {
		super();
	}

	public String getMedpayid() {
		return medpayid;
	}

	public void setMedpayid(String medpayid) {
		this.medpayid = medpayid;
	}

	public String getInsurance() {
		return insurance;
	}

	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getReg() {
		return reg;
	}

	public void setReg(String reg) {
		this.reg = reg;
	}

	public String getNameofperson() {
		return nameofperson;
	}

	public void setNameofperson(String nameofperson) {
		this.nameofperson = nameofperson;
	}

	public String getDateofaccident() {
		return dateofaccident;
	}

	public void setDateofaccident(String dateofaccident) {
		this.dateofaccident = dateofaccident;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Pimedpay(String medpayid, String insurance, String address,
			String reg, String nameofperson, String dateofaccident,
			String subject) {
		super();
		this.medpayid = medpayid;
		this.insurance = insurance;
		this.address = address;
		this.reg = reg;
		this.nameofperson = nameofperson;
		this.dateofaccident = dateofaccident;
		this.subject = subject;
	}
	
	
	
	
	
	
	
	
	
}






