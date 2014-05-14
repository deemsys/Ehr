package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Perrychiropractic
{
	private String perryid;
	
	private String username;
	
	@NotEmpty
	private String insurance;
	
	private String address;
	
	
	@NotEmpty
	private String reg;	
	@NotEmpty
	private String nameofperson;
	
	private String dateofaccident;
	@NotEmpty
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public Perrychiropractic(String perryid, String insurance, String address,
	 String reg, String nameofperson,
			String dateofaccident, String subject) {
		super();
		this.perryid = perryid;
		this.insurance = insurance;
		this.address = address;	
		this.reg = reg;
		this.nameofperson = nameofperson;
		this.dateofaccident = dateofaccident;
		this.subject = subject;
	}
	
	
	
}