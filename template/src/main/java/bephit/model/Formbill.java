package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Formbill
{
	private String formid;
	
	private String username;
	private String date;
	@NotEmpty
	private String insurance;
	
	private String address1;
	
	@NotEmpty
	private String name;	
	
	private String address3;
	
	@NotEmpty
	private String patientsname;
	
	private String address5;
	
	
	private String medicalfee;
	
	private String amount;
	
	public Formbill() {
		super();
	}

	public String getFormid() {
		return formid;
	}

	public void setFormid(String formid) {
		this.formid = formid;
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getInsurance() {
		return insurance;
	}

	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public String getPatientsname() {
		return patientsname;
	}

	public void setPatientsname(String patientsname) {
		this.patientsname = patientsname;
	}

	public String getAddress5() {
		return address5;
	}

	public void setAddress5(String address5) {
		this.address5 = address5;
	}

	public String getMedicalfee() {
		return medicalfee;
	}

	public void setMedicalfee(String medicalfee) {
		this.medicalfee = medicalfee;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public Formbill(String formid, String date, String insurance,
			String address1, String name, String address3, String patientsname,
			String address5, String medicalfee, String amount) {
		super();
		this.formid = formid;
		this.date = date;
		this.insurance = insurance;
		this.address1 = address1;
		this.name = name;
		this.address3 = address3;
		this.patientsname = patientsname;
		this.address5 = address5;
		this.medicalfee = medicalfee;
		this.amount = amount;
	}

	
	
	
}