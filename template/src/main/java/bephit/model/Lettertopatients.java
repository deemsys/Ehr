package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Lettertopatients
{
	private String letterid;
	private String letter;
	
	
	public Lettertopatients() {
		super();
	}


	public String getLetterid() {
		return letterid;
	}


	public void setLetterid(String letterid) {
		this.letterid = letterid;
	}


	public String getLetter() {
		return letter;
	}


	public void setLetter(String letter) {
		this.letter = letter;
	}


	public Lettertopatients(String letterid, String letter) {
		super();
		this.letterid = letterid;
		this.letter = letter;
	}
	
	
}