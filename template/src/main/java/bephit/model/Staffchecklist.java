package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Staffchecklist{
	@NotEmpty
	
	private String patinfo;
	@NotEmpty
	private String screening;
	@NotEmpty
	private String aob;
	@NotEmpty
	private String history;
	@NotEmpty
	private String xray_sheet;
	@NotEmpty
	private String consent;
	@NotEmpty
	private String report;
	@NotEmpty
	@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
	private String pat_name;
	@NotEmpty
	@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
	private String insure;
	@NotEmpty
	@Pattern(regexp="(^$|[0-9]{10})",message="Should be a number")
	private String damage_amount;
	@NotEmpty
	private String fault_insure;
	@NotEmpty
	private String med_pay;
	@NotEmpty
	private String other_attorney;
	@NotEmpty
	private String protect_received;
	@NotEmpty
	private String bill;
	@NotEmpty
	private String re_date;
	
public Staffchecklist(){
}

public Staffchecklist(String patinfo,
		String screening,
		String aob,
		String history,
		String xray_sheet,
		String consent,
		String report,
		String pat_name,
		String insure,
		String damage_amount,
		String fault_insure,
		String med_pay,
		String other_attorney,
		String protect_received,
		String bill,
		String re_date){
	this.patinfo=patinfo;
	this.screening=screening;
	this.aob=aob;
	this.history=history;
	this.xray_sheet=xray_sheet;
	this.consent=consent;
	this.report=report;
	this.pat_name=pat_name;
	this.insure=insure;
	this.damage_amount=damage_amount;
	this.fault_insure=fault_insure;
	this.med_pay=med_pay;
	this.other_attorney=other_attorney;
	this.protect_received=protect_received;
	this.bill=bill;
	this.re_date=re_date;
}

public String getPatinfo() {
	return patinfo;
}

public void setPatinfo(String patinfo) {
	this.patinfo = patinfo;
}

public String getScreening() {
	return screening;
}

public void setScreening(String screening) {
	this.screening = screening;
}

public String getAob() {
	return aob;
}

public void setAob(String aob) {
	this.aob = aob;
}

public String getHistory() {
	return history;
}

public void setHistory(String history) {
	this.history = history;
}

public String getXray_sheet() {
	return xray_sheet;
}

public void setXray_sheet(String xray_sheet) {
	this.xray_sheet = xray_sheet;
}

public String getConsent() {
	return consent;
}

public void setConsent(String consent) {
	this.consent = consent;
}

public String getReport() {
	return report;
}

public void setReport(String report) {
	this.report = report;
}

public String getPat_name() {
	return pat_name;
}

public void setPat_name(String pat_name) {
	this.pat_name = pat_name;
}

public String getInsure() {
	return insure;
}

public void setInsure(String insure) {
	this.insure = insure;
}

public String getDamage_amount() {
	return damage_amount;
}

public void setDamage_amount(String damage_amount) {
	this.damage_amount = damage_amount;
}

public String getFault_insure() {
	return fault_insure;
}

public void setFault_insure(String fault_insure) {
	this.fault_insure = fault_insure;
}

public String getMed_pay() {
	return med_pay;
}

public void setMed_pay(String med_pay) {
	this.med_pay = med_pay;
}

public String getOther_attorney() {
	return other_attorney;
}

public void setOther_attorney(String other_attorney) {
	this.other_attorney = other_attorney;
}

public String getProtect_received() {
	return protect_received;
}

public void setProtect_received(String protect_received) {
	this.protect_received = protect_received;
}

public String getBill() {
	return bill;
}

public void setBill(String bill) {
	this.bill = bill;
}

public String getRe_date() {
	return re_date;
}

public void setRe_date(String re_date) {
	this.re_date = re_date;
}

}

		