package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Hardshipagreement{
	@NotEmpty
	private String date;
	
	@NotEmpty
	private String print_pat_name;
	
	@NotEmpty
	private String pat_sign;
	
	@NotEmpty
	private String witness_sign;
	
public Hardshipagreement(){
}

public Hardshipagreement(String date,
		String print_pat_name,
		String pat_sign,
		String witness_sign){
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
	
}