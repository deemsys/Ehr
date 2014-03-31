package bephit.model;

import java.util.List;

import org.hibernate.validator.constraints.NotEmpty;

public class Copyofrequest{
	private String copyofrequestno;
	@NotEmpty
	private String patient;
	@NotEmpty
	private String address;
	private String regarding;
	@NotEmpty
	private String dateofaccident;
	@NotEmpty
	private String claimnumber;
	private String todaydate;
	
	private String dear;
	@NotEmpty
	private String sign;
	
	public Copyofrequest()
	{
		
	}

	public Copyofrequest(String copyofrequestno,String patient, String address, String regarding,
			String dateofaccident, String claimnumber, String todaydate,
			String dear, String sign) {
		super();
		this.copyofrequestno= copyofrequestno;
		this.patient = patient;
		this.address = address;
		this.regarding = regarding;
		this.dateofaccident = dateofaccident;
		this.claimnumber = claimnumber;
		this.todaydate = todaydate;
		this.dear = dear;
		this.sign = sign;
	}

	
	
	public String getCopyofrequestno() {
		return copyofrequestno;
	}

	public void setCopyofrequestno(String copyofrequestno) {
		this.copyofrequestno = copyofrequestno;
	}

	public String getPatient() {
		return patient;
	}

	public void setPatient(String patient) {
		this.patient = patient;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRegarding() {
		return regarding;
	}

	public void setRegarding(String regarding) {
		this.regarding = regarding;
	}

	public String getDateofaccident() {
		return dateofaccident;
	}

	public void setDateofaccident(String dateofaccident) {
		this.dateofaccident = dateofaccident;
	}

	public String getClaimnumber() {
		return claimnumber;
	}

	public void setClaimnumber(String claimnumber) {
		this.claimnumber = claimnumber;
	}

	public String getTodaydate() {
		return todaydate;
	}

	public void setTodaydate(String todaydate) {
		this.todaydate = todaydate;
	}

	public String getDear() {
		return dear;
	}

	public void setDear(String dear) {
		this.dear = dear;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	}