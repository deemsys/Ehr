package bephit.model;
public class Responseattorney
{
	private String responseid;
	private String name;
	private String address;
	private String address1;
	private String address2;
	private String regarding;
	private String patientname;
	private String dateofaccident;
	public Responseattorney() {
		super();
	}
	private String nameofclinic;
	private String treatingphysician;
	public Responseattorney(String responseid, String name, String address,
			String address1, String address2, String regarding,
			String patientname, String dateofaccident, String nameofclinic,
			String treatingphysician) {
		super();
		this.responseid = responseid;
		this.name = name;
		this.address = address;
		this.address1 = address1;
		this.address2 = address2;
		this.regarding = regarding;
		this.patientname = patientname;
		this.dateofaccident = dateofaccident;
		this.nameofclinic = nameofclinic;
		this.treatingphysician = treatingphysician;
	}
	public String getResponseid() {
		return responseid;
	}
	public void setResponseid(String responseid) {
		this.responseid = responseid;
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
}