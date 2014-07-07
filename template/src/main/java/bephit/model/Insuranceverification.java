package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Insuranceverification{
	
	private String form_no;
	
	private String patusername;
	
	
	private String verify_name;
	
	private String spoke_with;
	
	private String date;
	
	//@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Fax No(kindly enter a 13 digit FAX number)")
	private String fax;
	
	
	private String amount_deduct;
	

	private String amount_deduct_met;
	
	private String max_visit;
	
	private String is_chiropractic;
	
	
	private String at_what;
	
	
	private String xray_cover;
	
	
	private String atwhat;
	
	private String subject_deduct;
	
	private String benefits_honored;
	
	private String network_benefits;
	
	private String deductible;
		
	private String covered;
	
	private String cm;
	
	private String pt;
	
	private String ov;
	
	private String xray_deduct;
	
	private String doctors_assign;
	
	private String mail_claims;
	
	public Insuranceverification(){
	}

	public String getForm_no() {
		return form_no;
	}

	public void setForm_no(String form_no) {
		this.form_no = form_no;
	}

	public String getPatusername() {
		return patusername;
	}

	public void setPatusername(String patusername) {
		this.patusername = patusername;
	}

	public String getVerify_name() {
		return verify_name;
	}

	public void setVerify_name(String verify_name) {
		this.verify_name = verify_name;
	}

	public String getSpoke_with() {
		return spoke_with;
	}

	public void setSpoke_with(String spoke_with) {
		this.spoke_with = spoke_with;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getAmount_deduct() {
		return amount_deduct;
	}

	public void setAmount_deduct(String amount_deduct) {
		this.amount_deduct = amount_deduct;
	}

	public String getAmount_deduct_met() {
		return amount_deduct_met;
	}

	public void setAmount_deduct_met(String amount_deduct_met) {
		this.amount_deduct_met = amount_deduct_met;
	}

	public String getMax_visit() {
		return max_visit;
	}

	public void setMax_visit(String max_visit) {
		this.max_visit = max_visit;
	}

	public String getIs_chiropractic() {
		return is_chiropractic;
	}

	public void setIs_chiropractic(String is_chiropractic) {
		this.is_chiropractic = is_chiropractic;
	}

	public String getAt_what() {
		return at_what;
	}

	public void setAt_what(String at_what) {
		this.at_what = at_what;
	}

	public String getXray_cover() {
		return xray_cover;
	}

	public void setXray_cover(String xray_cover) {
		this.xray_cover = xray_cover;
	}

	public String getAtwhat() {
		return atwhat;
	}

	public void setAtwhat(String atwhat) {
		this.atwhat = atwhat;
	}

	public String getSubject_deduct() {
		return subject_deduct;
	}

	public void setSubject_deduct(String subject_deduct) {
		this.subject_deduct = subject_deduct;
	}

	public String getBenefits_honored() {
		return benefits_honored;
	}

	public void setBenefits_honored(String benefits_honored) {
		this.benefits_honored = benefits_honored;
	}

	public String getNetwork_benefits() {
		return network_benefits;
	}

	public void setNetwork_benefits(String network_benefits) {
		this.network_benefits = network_benefits;
	}

	public String getDeductible() {
		return deductible;
	}

	public void setDeductible(String deductible) {
		this.deductible = deductible;
	}

	public String getCovered() {
		return covered;
	}

	public void setCovered(String covered) {
		this.covered = covered;
	}

	public String getCm() {
		return cm;
	}

	public void setCm(String cm) {
		this.cm = cm;
	}

	public String getPt() {
		return pt;
	}

	public void setPt(String pt) {
		this.pt = pt;
	}

	public String getOv() {
		return ov;
	}

	public void setOv(String ov) {
		this.ov = ov;
	}

	public String getXray_deduct() {
		return xray_deduct;
	}

	public void setXray_deduct(String xray_deduct) {
		this.xray_deduct = xray_deduct;
	}

	public String getDoctors_assign() {
		return doctors_assign;
	}

	public void setDoctors_assign(String doctors_assign) {
		this.doctors_assign = doctors_assign;
	}

	public String getMail_claims() {
		return mail_claims;
	}

	public void setMail_claims(String mail_claims) {
		this.mail_claims = mail_claims;
	}

	public Insuranceverification(String form_no, String patusername,
			String verify_name, String spoke_with, String date, String fax,
			String amount_deduct, String amount_deduct_met, String max_visit,
			String is_chiropractic, String at_what, String xray_cover,
			String atwhat, String subject_deduct, String benefits_honored,
			String network_benefits, String deductible, String covered,
			String cm, String pt, String ov, String xray_deduct,
			String doctors_assign, String mail_claims) {
		super();
		this.form_no = form_no;
		this.patusername = patusername;
		this.verify_name = verify_name;
		this.spoke_with = spoke_with;
		this.date = date;
		this.fax = fax;
		this.amount_deduct = amount_deduct;
		this.amount_deduct_met = amount_deduct_met;
		this.max_visit = max_visit;
		this.is_chiropractic = is_chiropractic;
		this.at_what = at_what;
		this.xray_cover = xray_cover;
		this.atwhat = atwhat;
		this.subject_deduct = subject_deduct;
		this.benefits_honored = benefits_honored;
		this.network_benefits = network_benefits;
		this.deductible = deductible;
		this.covered = covered;
		this.cm = cm;
		this.pt = pt;
		this.ov = ov;
		this.xray_deduct = xray_deduct;
		this.doctors_assign = doctors_assign;
		this.mail_claims = mail_claims;
	}

	
	
	
}