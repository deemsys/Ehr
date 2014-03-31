package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Perrychiropractic
{
	private String perryid;
	@NotEmpty
	private String insurance;
	@NotEmpty
	private String address;
	
	private String address1;
	@NotEmpty
	private String reg;	
	@NotEmpty
	private String nameofperson;
	
	private String dateofaccident;
	
	private String subject;
	
	public Perrychiropractic() {
		super();
	}
	public String getPerryid() {
		return perryid;
	}
	public void setPerryid(String perryid) {
		this.perryid = perryid;
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
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
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
	public Perrychiropractic(String perryid, String insurance, String address,
			String address1, String reg, String nameofperson,
			String dateofaccident, String subject) {
		super();
		this.perryid = perryid;
		this.insurance = insurance;
		this.address = address;
		this.address1 = address1;
		this.reg = reg;
		this.nameofperson = nameofperson;
		this.dateofaccident = dateofaccident;
		this.subject = subject;
	}
	
	
	
}