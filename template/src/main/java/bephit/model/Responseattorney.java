package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Responseattorney
{
	private String responseid;
	
	private String username;
	private String name;
	private String address;
	private String regarding;
	@NotEmpty
	private String patientname;
	@NotEmpty
	private String dateofaccident;
	private String dearname;
	
	@NotEmpty
	private String nameofclinic;
	@NotEmpty
	private String treatingphysician;
	
	public Responseattorney() {
		super();
	}

	public String getResponseid() {
		return responseid;
	}

	public void setResponseid(String responseid) {
		this.responseid = responseid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getRegarding() {
		return regarding;
	}

	public void setRegarding(String regarding) {
		this.regarding = regarding;
	}

	public String getPatientname() {
		return patientname;
	}

	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}

	public String getDateofaccident() {
		return dateofaccident;
	}

	public void setDateofaccident(String dateofaccident) {
		this.dateofaccident = dateofaccident;
	}

	public String getDearname() {
		return dearname;
	}

	public void setDearname(String dearname) {
		this.dearname = dearname;
	}

	public String getNameofclinic() {
		return nameofclinic;
	}

	public void setNameofclinic(String nameofclinic) {
		this.nameofclinic = nameofclinic;
	}

	public String getTreatingphysician() {
		return treatingphysician;
	}

	public void setTreatingphysician(String treatingphysician) {
		this.treatingphysician = treatingphysician;
	}

	public Responseattorney(String responseid, String name,
			String address, String regarding, String patientname,
			String dateofaccident, String dearname, String nameofclinic,
			String treatingphysician) {
		super();
		this.responseid = responseid;
		this.username = username;
		this.name = name;
		this.address = address;
		this.regarding = regarding;
		this.patientname = patientname;
		this.dateofaccident = dateofaccident;
		this.dearname = dearname;
		this.nameofclinic = nameofclinic;
		this.treatingphysician = treatingphysician;
	}
	
}