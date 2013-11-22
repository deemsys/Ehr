package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Treatform
{
	
	private String treat_no;
	
	@NotEmpty
	
	private String patientsname;
	
	
	@NotEmpty
	
	private String patientssign;
	
	@NotEmpty
	private String todaydate;
	@NotEmpty
	
	private String witness;
	
	
	
	
	public String getTreat_no() {
		return treat_no;
	}
	public void setTreat_no(String treat_no) {
		this.treat_no = treat_no;
	}
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
	public Treatform(String treat_no,String patientsname,
			String patientssign,
			String todaydate,
			String witness
			)
	{
		this.treat_no=treat_no;
	this.patientsname=patientsname;
	this.patientssign=patientssign;
	this.todaydate=todaydate;
	this.witness=witness;
	}
	
	
}