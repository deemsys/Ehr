package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Signup{
	@NotEmpty
	private String username;
	
	@NotEmpty
	private String password;
	
	@NotEmpty
	private String confirm;
	
	@NotEmpty
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
			
