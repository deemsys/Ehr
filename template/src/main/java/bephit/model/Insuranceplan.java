package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Insuranceplan {
	
	private String no;
	@NotEmpty 
	private String insure_comp;
	
	@NotEmpty
	private String addr;
	
	@NotEmpty
	private String pat_name;
	
	@NotEmpty
	private String accident_date;
	
	@NotEmpty
	private String enrollee;
	
	
	private String no_objection;
	
	@NotEmpty
	private String agentname;
	
	@NotEmpty
	private String fax;
	
	@NotEmpty
	private String name_of_clinic;
	
	@NotEmpty
	private String pat;
	
	@NotEmpty
	private String authorized;
	
	
	
public Insuranceplan(){
}

public Insuranceplan(String no,String insure_comp,
		String addr,
		String pat_name,
		String accident_date,
		String enrollee,
		String no_objection,
		String agentname,
		String fax,
		String name_of_clinic,
		String pat,
		String authorized){
	this.no=no;
	this.insure_comp=insure_comp;
	this.addr=addr;
	this.pat_name=pat_name;
	this.accident_date=accident_date;
	this.enrollee=enrollee;
	this.no_objection=no_objection;
	this.agentname=agentname;
	this.fax=fax;
	this.name_of_clinic=name_of_clinic;
	this.pat=pat;
	this.authorized=authorized;
}

public String getNo() {
	return no;
}

public void setNo(String no) {
	this.no = no;
}

public String getInsure_comp() {
	return insure_comp;
}

public void setInsure_comp(String insure_comp) {
	this.insure_comp = insure_comp;
}

public String getAddr() {
	return addr;
}

public void setAddr(String addr) {
	this.addr = addr;
}

public String getPat_name() {
	return pat_name;
}

public void setPat_name(String pat_name) {
	this.pat_name = pat_name;
}

public String getAccident_date() {
	return accident_date;
}

public void setAccident_date(String accident_date) {
	this.accident_date = accident_date;
}

public String getEnrollee() {
	return enrollee;
}

public void setEnrollee(String enrollee) {
	this.enrollee = enrollee;
}

public String getNo_objection() {
	return no_objection;
}

public void setNo_objection(String no_objection) {
	this.no_objection = no_objection;
}

public String getAgentname() {
	return agentname;
}

public void setAgentname(String agentname) {
	this.agentname = agentname;
}

public String getFax() {
	return fax;
}

public void setFax(String fax) {
	this.fax = fax;
}

public String getName_of_clinic() {
	return name_of_clinic;
}

public void setName_of_clinic(String name_of_clinic) {
	this.name_of_clinic = name_of_clinic;
}

public String getPat() {
	return pat;
}

public void setPat(String pat) {
	this.pat = pat;
}

public String getAuthorized() {
	return authorized;
}

public void setAuthorized(String authorized) {
	this.authorized = authorized;
}

}