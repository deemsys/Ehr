package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Doctorsearch
{   
	private String username;
     
  
public Doctorsearch()
{
	
}


public String getUsername() {
	return username;
}


public void setUsername(String username) {
	this.username = username;
}




}