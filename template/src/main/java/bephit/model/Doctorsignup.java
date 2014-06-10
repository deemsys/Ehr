package bephit.model;

import javax.validation.GroupSequence;
import javax.validation.constraints.Pattern;

import org.aspectj.bridge.Message;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
@GroupSequence({Doctorsignup.class})
public class Doctorsignup{
	
	
	@NotEmpty
	private String doctorusername;
	
	@NotEmpty
	private String doctorpassword;
	
	@NotEmpty
	private String doctorconfirm;
	
	@NotEmpty
	@Email (message="Invalid Email Id")
	@Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$",message="Please Enter a valid mail id",groups=Doctorsignup.class)
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