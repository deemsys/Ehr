package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Patientattorney
{
	private String patientid;
	@NotEmpty
	private String name;
	@NotEmpty
	private String address;
	@NotEmpty
	private String patientname;
	@NotEmpty
	private String date;	
	@NotEmpty
	private String dearsir;
			public Patientattorney() {
		super();
	}
	public String getPatientid() {
		return patientid;
	}
	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDearsir() {
		return dearsir;
	}
	public void setDearsir(String dearsir) {
		this.dearsir = dearsir;
	}
	
	
	public Patientattorney(String patientid, String name, String address,
			String patientname, String date, String dearsir
			) {
		super();
		this.patientid = patientid;
		this.name = name;
		this.address = address;
		this.patientname = patientname;
		this.date = date;
		this.dearsir = dearsir;
		
		
	}
	
	
	
	
	
	
}