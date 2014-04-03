package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Insuranceinformation {
	
	private String number;
	
	@NotEmpty
	private String patient_name;
	@NotEmpty
	private String date_of_accident;
	@NotEmpty
	private String have_insurance;
	@NotEmpty
	private String employers_name;
	@NotEmpty
	private String insurance_company;
	@NotEmpty
	@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Phone number")
	private String phone;
	@NotEmpty
	private String policy;
	@NotEmpty
	private String infono;
	@NotEmpty
	private String supplemental_company;
	@NotEmpty
	@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Phone number")
	private String sup_phone;
	@NotEmpty
	private String patient_sign;
	@NotEmpty
	private String date;
	@NotEmpty
	private String spouse_sign;
	@NotEmpty
	private String date1;
	
	
public Insuranceinformation(){
}

public Insuranceinformation(String number,String patient_name,
		String date_of_accident,
		String have_insurance,
		String employers_name,
		String insurance_company,
		String phone,
		String policy,
		String infono,
		String supplemental_company,
		String sup_phone,
		String patient_sign,
		String date,
		String spouse_sign,
		String date1){
	this.number=number;
	this.patient_name=patient_name;
	this.date_of_accident=date_of_accident;
	this.have_insurance=have_insurance;
	this.employers_name=employers_name;
	this.insurance_company=insurance_company;
	this.phone=phone;
	this.policy=policy;
	this.infono=infono;
	this.supplemental_company=supplemental_company;
	this.sup_phone=sup_phone;
	this.patient_sign=patient_sign;
	this.date=date;
	this.spouse_sign=spouse_sign;
	this.date1=date1;
}


public String getNumber() {
	return number;
}

public void setNumber(String number) {
	this.number = number;
}

public String getPatient_name() {
	return patient_name;
}

public void setPatient_name(String patient_name) {
	this.patient_name = patient_name;
}

public String getDate_of_accident() {
	return date_of_accident;
}

public void setDate_of_accident(String date_of_accident) {
	this.date_of_accident = date_of_accident;
}

public String getHave_insurance() {
	return have_insurance;
}

public void setHave_insurance(String have_insurance) {
	this.have_insurance = have_insurance;
}

public String getEmployers_name() {
	return employers_name;
}

public void setEmployers_name(String employers_name) {
	this.employers_name = employers_name;
}

public String getInsurance_company() {
	return insurance_company;
}

public void setInsurance_company(String insurance_company) {
	this.insurance_company = insurance_company;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getPolicy() {
	return policy;
}

public void setPolicy(String policy) {
	this.policy = policy;
}

public String getInfono() {
	return infono;
}

public void setInfono(String infono) {
	this.infono = infono;
}

public String getSupplemental_company() {
	return supplemental_company;
}

public void setSupplemental_company(String supplemental_company) {
	this.supplemental_company = supplemental_company;
}

public String getSup_phone() {
	return sup_phone;
}

public void setSup_phone(String sup_phone) {
	this.sup_phone = sup_phone;
}

public String getPatient_sign() {
	return patient_sign;
}

public void setPatient_sign(String patient_sign) {
	this.patient_sign = patient_sign;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

public String getSpouse_sign() {
	return spouse_sign;
}

public void setSpouse_sign(String spouse_sign) {
	this.spouse_sign = spouse_sign;
}

public String getDate1() {
	return date1;
}

public void setDate1(String date1) {
	this.date1 = date1;
}

}

	
