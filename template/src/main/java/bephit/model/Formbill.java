package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Formbill
{
	private String formid;
	@NotEmpty
	private String date;
	@NotEmpty
	private String insurance;
	@NotEmpty
	private String address1;
	@NotEmpty
	private String address2;
	@NotEmpty
	private String name;	
	@NotEmpty
	private String address3;
	@NotEmpty
	private String address4;
	@NotEmpty
	private String patientsname;
	@NotEmpty
	private String address5;
	@NotEmpty
	private String address6;
	@NotEmpty
	private String medicalfee;
	@NotEmpty
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

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
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

	public String getAddress4() {
		return address4;
	}

	public void setAddress4(String address4) {
		this.address4 = address4;
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

	public String getAddress6() {
		return address6;
	}

	public void setAddress6(String address6) {
		this.address6 = address6;
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
			String address1, String address2, String name, String address3,
			String address4, String patientsname, String address5,
			String address6, String medicalfee, String amount) {
		super();
		this.formid = formid;
		this.date = date;
		this.insurance = insurance;
		this.address1 = address1;
		this.address2 = address2;
		this.name = name;
		this.address3 = address3;
		this.address4 = address4;
		this.patientsname = patientsname;
		this.address5 = address5;
		this.address6 = address6;
		this.medicalfee = medicalfee;
		this.amount = amount;
	}
	
	
}