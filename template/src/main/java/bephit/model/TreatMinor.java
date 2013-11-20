package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class TreatMinor
{
	@NotEmpty
	
	private String guardian;
	@NotEmpty
	
	private String age;
	
	@NotEmpty
	private String drname;
	
	@NotEmpty
	private String signed;
	
	@NotEmpty
	private String pdate;
	
	@NotEmpty
	private String pwitness;

	public TreatMinor()
	{
		
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
	public String getdrname() {
		return drname;
	}
	public void setdrname(String drname) {
		this.drname = drname;
	}
	public String getPwitness() {
		return pwitness;
	}
	public void setPwitness(String pwitness) {
		this.pwitness = pwitness;
	}
	public TreatMinor(String guardian,
			String age,
			String drname,
			String signed,
			String pdate,
			String pwitness
			)
	{
	this.guardian=guardian;
	this.age=age;
	this.drname=drname;
	this.signed=signed;
	this.pdate=pdate;
	this.pwitness=pwitness;
	
	}
	
	
}