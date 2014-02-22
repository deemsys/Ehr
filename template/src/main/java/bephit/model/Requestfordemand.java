package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Requestfordemand
{
	private String requestid;
	@NotEmpty
	private String other1;
	@NotEmpty
	private String other2;
	@NotEmpty
	private String other3;
	@NotEmpty
	private String other4;	
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
	public String getOther1() {
		return other1;
	}
	public void setOther1(String other1) {
		this.other1 = other1;
	}
	public String getOther2() {
		return other2;
	}
	public void setOther2(String other2) {
		this.other2 = other2;
	}
	public String getOther3() {
		return other3;
	}
	public void setOther3(String other3) {
		this.other3 = other3;
	}
	public String getOther4() {
		return other4;
	}
	public void setOther4(String other4) {
		this.other4 = other4;
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
	public Requestfordemand(String requestid, String other1, String other2,
			String other3, String other4, String copymedpay, String copyform,
			String copyassign, String greencard, String defaultattorney,
			String clinicrep) {
		super();
		this.requestid = requestid;
		this.other1 = other1;
		this.other2 = other2;
		this.other3 = other3;
		this.other4 = other4;
		this.copymedpay = copymedpay;
		this.copyform = copyform;
		this.copyassign = copyassign;
		this.greencard = greencard;
		this.defaultattorney = defaultattorney;
		this.clinicrep = clinicrep;
	}
	
	
}