package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class HippaPrivacy
{
	
	
	@NotEmpty
	private String date;
	
	@NotEmpty
	private String printpname;
	
	@NotEmpty
	private String printpdate;
	
	@NotEmpty
	private String legalguardian;
	
	@NotEmpty
	private String staffwitness;
	

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPrintpname() {
		return printpname;
	}

	public void setPrintpname(String printpname) {
		this.printpname = printpname;
	}

	public String getPrintpdate() {
		return printpdate;
	}

	public void setPrintpdate(String printpdate) {
		this.printpdate = printpdate;
	}

	public String getLegalguardian() {
		return legalguardian;
	}

	public void setLegalguardian(String legalguardian) {
		this.legalguardian = legalguardian;
	}

	public String getStaffwitness() {
		return staffwitness;
	}

	public void setStaffwitness(String staffwitness) {
		this.staffwitness = staffwitness;
	}

	public HippaPrivacy()
	{
		
	}
	
	public HippaPrivacy(String date,
			String printpname,
			String printpdate,
			String legalguardian,
			String staffwitness
			)
	{
	this.date=date;
	this.printpname=printpname;
	this.printpdate=printpdate;
	this.legalguardian=legalguardian;
	this.staffwitness=staffwitness;
	
	}
	
	
}