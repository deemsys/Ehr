package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Patientattorney
{
	private String patientid;
	@NotEmpty
	private String name;
	@NotEmpty
	private String address;
	
	private String reg;
	@NotEmpty
	private String patientname;
	@NotEmpty
	private String date;	
	
	private String dearsir;
	@NotEmpty
	private String nameofclinic;
	@NotEmpty
	private String treat;
	
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
			public String getReg() {
				return reg;
			}
			public void setReg(String reg) {
				this.reg = reg;
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
			public String getNameofclinic() {
				return nameofclinic;
			}
			public void setNameofclinic(String nameofclinic) {
				this.nameofclinic = nameofclinic;
			}
			public String getTreat() {
				return treat;
			}
			public void setTreat(String treat) {
				this.treat = treat;
			}
			public Patientattorney(String patientid, String name,
					String address, String reg, String patientname,
					String date, String dearsir, String nameofclinic,
					String treat) {
				super();
				this.patientid = patientid;
				this.name = name;
				this.address = address;
				this.reg = reg;
				this.patientname = patientname;
				this.date = date;
				this.dearsir = dearsir;
				this.nameofclinic = nameofclinic;
				this.treat = treat;
			}
	
}