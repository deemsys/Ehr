package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;


public class Quadraplevisual
{
	private String quadrapleno;
	private String name;
	private String number;
	private String date;
	private String painscale;
	private String painscale1;
	private String painscale2;
	private String painscale3;
	private String awakehours;
	
	public Quadraplevisual()
	{

	}

	public Quadraplevisual(String quadrapleno, String name, String number,
			String date, String painscale, String painscale1,
			String painscale2, String painscale3, String awakehours) {
		super();
		this.quadrapleno = quadrapleno;
		this.name = name;
		this.number = number;
		this.date = date;
		this.painscale = painscale;
		this.painscale1 = painscale1;
		this.painscale2 = painscale2;
		this.painscale3 = painscale3;
		this.awakehours = awakehours;
	}

	public String getQuadrapleno() {
		return quadrapleno;
	}

	public void setQuadrapleno(String quadrapleno) {
		this.quadrapleno = quadrapleno;
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
	


	
}
