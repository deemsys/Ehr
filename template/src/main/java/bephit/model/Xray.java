package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Xray
{   
	
	private String xrayid;
	private String username;
	
	@NotEmpty
	private String name;
	
	private String date;
	
	private String date1;
	@NotEmpty
	private String sign;
	@NotEmpty
	private String date2;
	

	public Xray() {
		super();
	}


	public String getXrayid() {
		return xrayid;
	}


	public void setXrayid(String xrayid) {
		this.xrayid = xrayid;
	}
    
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
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


	public String getSign() {
		return sign;
	}


	public void setSign(String sign) {
		this.sign = sign;
	}


	public String getDate2() {
		return date2;
	}


	public void setDate2(String date2) {
		this.date2 = date2;
	}


	public Xray(String xrayid, String name, String date, String date1,
			String sign, String date2) {
		super();
		this.xrayid = xrayid;
		this.name = name;
		this.date = date;
		this.date1 = date1;
		this.sign = sign;
		this.date2 = date2;
	}

	
	



}

