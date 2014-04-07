package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Letterofprotection
{
	private String letterid;
	@NotEmpty	
	private String date;
	@NotEmpty
	private String dc;
	@NotEmpty
	private String clinicname;
	
	private String address1;	
	
	private String myclient;
	@NotEmpty
	private String dateofaccident;
	@NotEmpty
	private String dearsir;
	@NotEmpty
	private String esq;
	
	public Letterofprotection() {
		super();
	}

	public String getLetterid() {
		return letterid;
	}

	public void setLetterid(String letterid) {
		this.letterid = letterid;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDc() {
		return dc;
	}

	public void setDc(String dc) {
		this.dc = dc;
	}

	public String getClinicname() {
		return clinicname;
	}

	public void setClinicname(String clinicname) {
		this.clinicname = clinicname;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getMyclient() {
		return myclient;
	}

	public void setMyclient(String myclient) {
		this.myclient = myclient;
	}

	public String getDateofaccident() {
		return dateofaccident;
	}

	public void setDateofaccident(String dateofaccident) {
		this.dateofaccident = dateofaccident;
	}

	public String getDearsir() {
		return dearsir;
	}

	public void setDearsir(String dearsir) {
		this.dearsir = dearsir;
	}

	public String getEsq() {
		return esq;
	}

	public void setEsq(String esq) {
		this.esq = esq;
	}

	public Letterofprotection(String letterid, String date, String dc,
			String clinicname, String address1, String myclient,
			String dateofaccident, String dearsir, String esq) {
		super();
		this.letterid = letterid;
		this.date = date;
		this.dc = dc;
		this.clinicname = clinicname;
		this.address1 = address1;
		this.myclient = myclient;
		this.dateofaccident = dateofaccident;
		this.dearsir = dearsir;
		this.esq = esq;
	}


}

