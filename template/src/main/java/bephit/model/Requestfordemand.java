package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Requestfordemand
{
	private String requestid;
	
	private String username; 
	
	private String faultinsurer;
	
	private String medpayinsurer;
	
	private String paidbenefits;
	
	private String bankrupt;
	
	private String treatment;
	
	private String other;
	
	private String txtare;
	@NotEmpty
	private String copymedpay;
	@NotEmpty
	private String copyform;
	@NotEmpty
	private String copyassign;
	@NotEmpty
	private String  greencard;
	@NotEmpty
	private String defaultattorney;
	@NotEmpty
	private String clinicrep;
	public Requestfordemand() {
		super();
	}
	public String getRequestid() {
		return requestid;
	}
	public void setRequestid(String requestid) {
		this.requestid = requestid;
	}
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFaultinsurer() {
		return faultinsurer;
	}
	public void setFaultinsurer(String faultinsurer) {
		this.faultinsurer = faultinsurer;
	}
	public String getMedpayinsurer() {
		return medpayinsurer;
	}
	public void setMedpayinsurer(String medpayinsurer) {
		this.medpayinsurer = medpayinsurer;
	}
	public String getPaidbenefits() {
		return paidbenefits;
	}
	public void setPaidbenefits(String paidbenefits) {
		this.paidbenefits = paidbenefits;
	}
	public String getBankrupt() {
		return bankrupt;
	}
	public void setBankrupt(String bankrupt) {
		this.bankrupt = bankrupt;
	}
	public String getTreatment() {
		return treatment;
	}
	public void setTreatment(String treatment) {
		this.treatment = treatment;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getTxtare() {
		return txtare;
	}
	public void setTxtare(String txtare) {
		this.txtare = txtare;
	}
	public String getCopymedpay() {
		return copymedpay;
	}
	public void setCopymedpay(String copymedpay) {
		this.copymedpay = copymedpay;
	}
	public String getCopyform() {
		return copyform;
	}
	public void setCopyform(String copyform) {
		this.copyform = copyform;
	}
	public String getCopyassign() {
		return copyassign;
	}
	public void setCopyassign(String copyassign) {
		this.copyassign = copyassign;
	}
	public String getGreencard() {
		return greencard;
	}
	public void setGreencard(String greencard) {
		this.greencard = greencard;
	}
	public String getDefaultattorney() {
		return defaultattorney;
	}
	public void setDefaultattorney(String defaultattorney) {
		this.defaultattorney = defaultattorney;
	}
	public String getClinicrep() {
		return clinicrep;
	}
	public void setClinicrep(String clinicrep) {
		this.clinicrep = clinicrep;
	}
	public Requestfordemand(String requestid, String faultinsurer,
			String medpayinsurer, String paidbenefits, String bankrupt,
			String treatment, String other, String txtare, String copymedpay,
			String copyform, String copyassign, String greencard,
			String defaultattorney, String clinicrep) {
		super();
		this.requestid = requestid;
		this.faultinsurer = faultinsurer;
		this.medpayinsurer = medpayinsurer;
		this.paidbenefits = paidbenefits;
		this.bankrupt = bankrupt;
		this.treatment = treatment;
		this.other = other;
		this.txtare = txtare;
		this.copymedpay = copymedpay;
		this.copyform = copyform;
		this.copyassign = copyassign;
		this.greencard = greencard;
		this.defaultattorney = defaultattorney;
		this.clinicrep = clinicrep;
	}
	
	
	
	
	
	
	
}



