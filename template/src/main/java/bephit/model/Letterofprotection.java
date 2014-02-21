package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;
 public class Letterofprotection
 {
	 public Letterofprotection(String letterid, String date, String myclient,
			String dateofaccident, String dear, String truly) {
		super();
		this.letterid = letterid;
		this.date = date;
		this.myclient = myclient;
		this.dateofaccident = dateofaccident;
		this.dear = dear;
		this.truly = truly;
	}
		 private String letterid;
	
	 private String date;
	 @NotEmpty
	 private String myclient;
	 private String dateofaccident;
	 private String dear;
	 @NotEmpty
	 private String truly;
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
	public String getDear() {
		return dear;
	}
	public void setDear(String dear) {
		this.dear = dear;
	}
	public String getTruly() {
		return truly;
	}
	public void setTruly(String truly) {
		this.truly = truly;
	}
 }