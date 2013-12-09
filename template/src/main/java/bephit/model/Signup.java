package bephit.model;

import javax.validation.GroupSequence;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
@GroupSequence({Signup.class})
public class Signup{
	@NotEmpty
	private String username;
	
	@NotEmpty
	private String password;
	
	@NotEmpty
	private String confirm;
	
	@NotEmpty
	@Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$",message="Please Enter a valid mail id",groups=Signup.class)
	private String email;
	
public Signup(){
}

public Signup(String username,
		String password,
		String confirm,
		String email){
	this.username=username;
	this.password=password;
	this.confirm=confirm;
	this.email=email;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getConfirm() {
	return confirm;
}

public void setConfirm(String confirm) {
	this.confirm = confirm;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}


}
			
