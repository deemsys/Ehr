package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Length;
public class Hardshipagreement{
	
	private String agreement_no;
	
	
	private String date;
	
	@NotEmpty
	@Length(min=4,max=32,message="Required Field should between 4 to 32 characters!!!")
	private String print_pat_name;
	
	@NotEmpty
	@Length(min=4,max=32,message="Required Field should between 4 to 32 characters!!!")
	private String pat_sign;
	
	@NotEmpty
	@Length(min=4,max=32,message="Required Field should between 4 to 32 characters!!!")
	private String witness_sign;
	
public Hardshipagreement(){
}

public Hardshipagreement(String agreement_no,String date,
		String print_pat_name,
		String pat_sign,
		String witness_sign){
	this.agreement_no=agreement_no;
	this.date=date;
	this.print_pat_name=print_pat_name;
	this.pat_sign=pat_sign;
	this.witness_sign=witness_sign;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

public String getPrint_pat_name() {
	return print_pat_name;
}

public void setPrint_pat_name(String print_pat_name) {
	this.print_pat_name = print_pat_name;
}

public String getPat_sign() {
	return pat_sign;
}

public void setPat_sign(String pat_sign) {
	this.pat_sign = pat_sign;
}

public String getWitness_sign() {
	return witness_sign;
}

public void setWitness_sign(String witness_sign) {
	this.witness_sign = witness_sign;
}

public String getAgreement_no() {
	return agreement_no;
}

public void setAgreement_no(String agreement_no) {
	this.agreement_no = agreement_no;
}
	
}