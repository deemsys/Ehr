package bephit.model;

public class Treatform
{
	private String patientsname;
	private String patientssign;
	private String todaydate;
	private String witness;
	
	
	
	
	public String getPatientsname() {
		return patientsname;
	}
	public void setPatientsname(String patientsname) {
		this.patientsname = patientsname;
	}
	public String getPatientssign() {
		return patientssign;
	}
	public void setPatientssign(String patientssign) {
		this.patientssign = patientssign;
	}
	public String getTodaydate() {
		return todaydate;
	}
	public void setTodaydate(String todaydate) {
		this.todaydate = todaydate;
	}
	public String getWitness() {
		return witness;
	}
	public void setWitness(String witness) {
		this.witness = witness;
	}
	public Treatform()
	{
		
	}
	public Treatform(String patientsname,
			String patientssign,
			String todaydate,
			String witness
			)
	{
	this.patientsname=patientsname;
	this.patientssign=patientssign;
	this.todaydate=todaydate;
	this.witness=witness;
	}
	
	
}