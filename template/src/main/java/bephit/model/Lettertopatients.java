package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Lettertopatients
{
	private String letterid;
	private String re;
	private String ssn;
	private String claim;
	private String doi;
	private String adjuster;
	private String date1;
	private String date2;
	private String letter;
	private String sign;
	public Lettertopatients() {
		super();
	}
	public Lettertopatients(String letterid, String re, String ssn,
			String claim, String doi, String adjuster, String date1,
			String date2, String letter, String sign) {
		super();
		this.letterid = letterid;
		this.re = re;
		this.ssn = ssn;
		this.claim = claim;
		this.doi = doi;
		this.adjuster = adjuster;
		this.date1 = date1;
		this.date2 = date2;
		this.letter = letter;
		this.sign = sign;
	}
	public String getLetterid() {
		return letterid;
	}
	public void setLetterid(String letterid) {
		this.letterid = letterid;
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
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
}