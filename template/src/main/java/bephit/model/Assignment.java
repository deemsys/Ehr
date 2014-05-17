package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Assignment
{   private String assignment_no;

	
	private String day;
	
	private String month;
	
	private String year;
	
	
	private String day1;
	
	private String month1;
	
	
	private String patientname;
	
	
	private String patientsign;
	
	private String patientdate;
	
	
	private String parentname;
	
	
	private String parentsign;
	
	private String parentdate;
	
	
	private String representative;
	
	private String representativedate;
	
	public Assignment()
	{
		
	}
	public Assignment(String assignment_no,String day,
			String month,
			String year,
			String day1,
			String month1,
			String patientname,
			String patientsign,
			String patientdate,
			String parentname,
			String parentsign,
			String parentdate,
			String representative,
			String representativedate)
	{
	this.assignment_no=assignment_no;
	this.day=day;
	this.month=month;
	this.year=year;
	
	this.day1=day1;
	this.month1=month1;
	this.patientname=patientname;
	this.patientsign=patientsign;
	this.patientdate=patientdate;
	this.parentname=parentname;
	this.parentsign=parentsign;
	this.parentdate=parentdate;
	this.representative=representative;
	this.representativedate=representativedate;
	}
	public String getAssignment_no() {
		
		return assignment_no;
	}
	public void setAssignment_no(String assignment_no) {
		this.assignment_no = assignment_no;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getDay1() {
		return day1;
	}
	public void setDay1(String day1) {
		this.day1 = day1;
	}
	public String getMonth1() {
		return month1;
	}
	public void setMonth1(String month1) {
		this.month1 = month1;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getPatientsign() {
		return patientsign;
	}
	public void setPatientsign(String patientsign) {
		this.patientsign = patientsign;
	}
	public String getPatientdate() {
		return patientdate;
	}
	public void setPatientdate(String patientdate) {
		this.patientdate = patientdate;
	}
	public String getParentname() {
		return parentname;
	}
	public void setParentname(String parentname) {
		this.parentname = parentname;
	}
	public String getParentsign() {
		return parentsign;
	}
	public void setParentsign(String parentsign) {
		this.parentsign = parentsign;
	}
	public String getParentdate() {
		return parentdate;
	}
	public void setParentdate(String parentdate) {
		this.parentdate = parentdate;
	}
	public String getRepresentative() {
		return representative;
	}
	public void setRepresentative(String representative) {
		this.representative = representative;
	}
	public String getRepresentativedate() {
		return representativedate;
	}
	public void setRepresentativedate(String representativedate) {
		this.representativedate = representativedate;
	}
	

	
			
}