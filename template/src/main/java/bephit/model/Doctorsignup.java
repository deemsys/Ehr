package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Doctorsignup{
	
	@NotEmpty
	private String doctorusername;
	
	@NotEmpty
	private String doctorpassword;
	
	@NotEmpty
	private String doctorconfirm;
	
	@NotEmpty
	@Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$",message="Please Enetr a valid mail id")
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