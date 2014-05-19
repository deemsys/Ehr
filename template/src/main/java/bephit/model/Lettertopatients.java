package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Lettertopatients
{
	private String letterid;
	
	private String username;
	private String re;
	
	private String ssn;

	private String claim;

	private String doi;
	private String adjuster;
	private String date;
	private String date1;
	private String date2;
	
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRe() {
		return re;
	}

	public void setRe(String re) {
		this.re = re;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getClaim() {
		return claim;
	}

	public void setClaim(String claim) {
		this.claim = claim;
	}

	public String getDoi() {
		return doi;
	}

	public void setDoi(String doi) {
		this.doi = doi;
	}

	public String getAdjuster() {
		return adjuster;
	}

	public void setAdjuster(String adjuster) {
		this.adjuster = adjuster;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public String getLetter() {
		return letter;
	}

	public void setLetter(String letter) {
		this.letter = letter;
	}

	public Lettertopatients(String letterid, String username, String re,
			String ssn, String claim, String doi, String adjuster, String date,
			String date1, String date2, String letter) {
		super();
		this.letterid = letterid;
		this.username = username;
		this.re = re;
		this.ssn = ssn;
		this.claim = claim;
		this.doi = doi;
		this.adjuster = adjuster;
		this.date = date;
		this.date1 = date1;
		this.date2 = date2;
		this.letter = letter;
	}
	
	
	
	
}