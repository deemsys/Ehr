package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class TreatMinor
{
	private String minor_no;
	
	
	private String guardian;
	
	
	private String age;
	

	private String drname;
	
	
	private String signed;
	
	
	private String pdate;
	
	
	private String pwitness;

	public TreatMinor()
	{
		
	}
	
	public String getMinor_no() {
		return minor_no;
	}

	public void setMinor_no(String minor_no) {
		this.minor_no = minor_no;
	}

	public String getDrname() {
		return drname;
	}

	public void setDrname(String drname) {
		this.drname = drname;
	}

	public String getSigned() {
		return signed;
	}
	public void setSigned(String signed) {
		this.signed = signed;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getGuardian() {
		return guardian;
	}
	public void setGuardian(String guardian) {
		this.guardian = guardian;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	

	public String getPwitness() {
		return pwitness;
	}
	public void setPwitness(String pwitness) {
		this.pwitness = pwitness;
	}
	public TreatMinor(String minor_no,String guardian,
			String age,
			String drname,
			String signed,
			String pdate,
			String pwitness
			)
	{
	this.minor_no=minor_no;
	this.guardian=guardian;
	this.age=age;
	this.drname=drname;
	this.signed=signed;
	this.pdate=pdate;
	this.pwitness=pwitness;
	
	}
	
	
}