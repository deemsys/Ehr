package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Doctorsignup{
	
	private String doctorusername;
	
	
	private String doctorpassword;
	
	
	private String doctorconfirm;
	
	
	private String doctoremail;
	
public Doctorsignup(){
}

public Doctorsignup(String doctorusername, String doctorpassword,
		String doctorconfirm, String doctoremail) {
	super();
	this.doctorusername = doctorusername;
	this.doctorpassword = doctorpassword;
	this.doctorconfirm = doctorconfirm;
	this.doctoremail = doctoremail;
}

public String getDoctorusername() {
	return doctorusername;
}

public void setDoctorusername(String doctorusername) {
	this.doctorusername = doctorusername;
}

public String getDoctorpassword() {
	return doctorpassword;
}

public void setDoctorpassword(String doctorpassword) {
	this.doctorpassword = doctorpassword;
}

public String getDoctorconfirm() {
	return doctorconfirm;
}

public void setDoctorconfirm(String doctorconfirm) {
	this.doctorconfirm = doctorconfirm;
}

public String getDoctoremail() {
	return doctoremail;
}

public void setDoctoremail(String doctoremail) {
	this.doctoremail = doctoremail;
}

}