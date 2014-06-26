package bephit.model;

import javax.validation.GroupSequence;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
@GroupSequence({Signup.class})
public class Signup{
	@NotEmpty

     @Length(min=4,max=32,message="Username  should between 4 to 32 characters!!!")
	
	private String username;
	
	@NotEmpty
	@Length(min=3,max=32,message="Password  should between 3 to 32 characters!!!")
	private String password;
	
	@NotEmpty
	private String confirm;
	
	@Email(message="Invalid Email Id")
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
			
