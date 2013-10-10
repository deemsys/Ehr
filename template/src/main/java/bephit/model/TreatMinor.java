package bephit.model;

public class TreatMinor
{
	private String guardian;
	private String age;
	private String Drname;
	private String signed;
	private String pdate;
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
	public String getDrname() {
		return Drname;
	}
	public void setDrname(String drname) {
		Drname = drname;
	}
	public String getPwitness() {
		return pwitness;
	}
	public void setPwitness(String pwitness) {
		this.pwitness = pwitness;
	}
	public TreatMinor(String guardian,
			String age,
			String Drname,
			String signed,
			String pdate,
			String pwitness
			)
	{
	this.guardian=guardian;
	this.age=age;
	this.Drname=Drname;
	this.signed=signed;
	this.pdate=pdate;
	this.pwitness=pwitness;
	
	}
	
	
}