package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;


public class Quadraplevisual
{
	
	private String quadrapleno;	
	private String username;
	private String symptom;
	private String name;
	private String number;
	private String date;
	private String painname;
	private String otherpainname;
	private String painscale;
	private String painscale1;
	private String painscale2;
	private String painscale3;
	private String awakehours;
	
	public Quadraplevisual()
	{

	}

	public String getQuadrapleno() {
		return quadrapleno;
	}

	public void setQuadrapleno(String quadrapleno) {
		this.quadrapleno = quadrapleno;
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPainname() {
		return painname;
	}

	public void setPainname(String painname) {
		this.painname = painname;
	}

	public String getOtherpainname() {
		return otherpainname;
	}

	public void setOtherpainname(String otherpainname) {
		this.otherpainname = otherpainname;
	}

	public String getPainscale() {
		return painscale;
	}

	public void setPainscale(String painscale) {
		this.painscale = painscale;
	}

	public String getPainscale1() {
		return painscale1;
	}

	public void setPainscale1(String painscale1) {
		this.painscale1 = painscale1;
	}

	public String getPainscale2() {
		return painscale2;
	}

	public void setPainscale2(String painscale2) {
		this.painscale2 = painscale2;
	}

	public String getPainscale3() {
		return painscale3;
	}

	public void setPainscale3(String painscale3) {
		this.painscale3 = painscale3;
	}

	public String getAwakehours() {
		return awakehours;
	}

	public void setAwakehours(String awakehours) {
		this.awakehours = awakehours;
	}

	public Quadraplevisual(String quadrapleno, String username, String symptom,
			String name, String number, String date, String painname,
			String otherpainname, String painscale, String painscale1,
			String painscale2, String painscale3, String awakehours) {
		super();
		this.quadrapleno = quadrapleno;
		this.username = username;
		this.symptom = symptom;
		this.name = name;
		this.number = number;
		this.date = date;
		this.painname = painname;
		this.otherpainname = otherpainname;
		this.painscale = painscale;
		this.painscale1 = painscale1;
		this.painscale2 = painscale2;
		this.painscale3 = painscale3;
		this.awakehours = awakehours;
	}

	
	
	
	

	
}
