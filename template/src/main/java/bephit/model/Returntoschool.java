package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Returntoschool
{
	private String schoolid;
	private String date;
	private String name;
	private String from;
	private String to;	
	private String capability;
	private String force;
	private String distance;
	private String sittime;
	private String standtime;
	private String repetitive;
	private String cause;
	private String recreate;
	private String fromdate;
	private String todate;
	private String returnto;
	private String ondate;
	private String diagnosis;
	public Returntoschool() {
		super();
	}
	public String getSchoolid() {
		return schoolid;
	}
	public void setSchoolid(String schoolid) {
		this.schoolid = schoolid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getCapability() {
		return capability;
	}
	public void setCapability(String capability) {
		this.capability = capability;
	}
	public String getForce() {
		return force;
	}
	public void setForce(String force) {
		this.force = force;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getSittime() {
		return sittime;
	}
	public void setSittime(String sittime) {
		this.sittime = sittime;
	}
	public String getStandtime() {
		return standtime;
	}
	public void setStandtime(String standtime) {
		this.standtime = standtime;
	}
	public String getRepetitive() {
		return repetitive;
	}
	public void setRepetitive(String repetitive) {
		this.repetitive = repetitive;
	}
	public String getCause() {
		return cause;
	}
	public void setCause(String cause) {
		this.cause = cause;
	}
	public String getRecreate() {
		return recreate;
	}
	public void setRecreate(String recreate) {
		this.recreate = recreate;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public String getReturnto() {
		return returnto;
	}
	public void setReturnto(String returnto) {
		this.returnto = returnto;
	}
	public String getOndate() {
		return ondate;
	}
	public void setOndate(String ondate) {
		this.ondate = ondate;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	public Returntoschool(String schoolid, String date, String name,
			String from, String to, String capability, String force,
			String distance, String sittime, String standtime,
			String repetitive, String cause, String recreate, String fromdate,
			String todate, String returnto, String ondate, String diagnosis) {
		super();
		this.schoolid = schoolid;
		this.date = date;
		this.name = name;
		this.from = from;
		this.to = to;
		this.capability = capability;
		this.force = force;
		this.distance = distance;
		this.sittime = sittime;
		this.standtime = standtime;
		this.repetitive = repetitive;
		this.cause = cause;
		this.recreate = recreate;
		this.fromdate = fromdate;
		this.todate = todate;
		this.returnto = returnto;
		this.ondate = ondate;
		this.diagnosis = diagnosis;
	}
	
	
	
	
	
}
	