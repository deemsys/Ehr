package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Doctorsearch
{   
	private String emailid;
	private String patientname;
     
  
public Doctorsearch()
{
	
}

public Doctorsearch(String emailid,String patientname) {
	super();
	this.emailid=emailid;
	this.patientname = patientname;
}

public String getEmailid() {
	return emailid;
}

public void setEmailid(String emailid) {
	this.emailid = emailid;
}

public String getPatientname() {
	return patientname;
}

public void setPatientname(String patientname) {
	this.patientname = patientname;
}



}