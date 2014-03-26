package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Hipquestionnaire
{
	
	private String hipquestionno;
	private String stiff;
	private String swollen;
	private String flatrighthip;
	private String flatlefthip;
	private String flatrightknee;
	private String flatleftknee;	
	private String stairsrighthip;
	private String stairslefthip;	
	private String stairsrightknee;
	private String stairsleftknee;
	private String bedrighthip;
	private String bedlefthip;	
	private String bedrightknee;
	private String bedleftknee;
	private String best;
	private String socks;
	
	@NotEmpty
	private String date;
	private String birthdate;
	@NotEmpty
	@Pattern(regexp="(^$|[0-9]{11})",message="Not a valid Social Security number")
	private String security;
	public String getHipquestionno() {
		return hipquestionno;
	}
	public void setHipquestionno(String hipquestionno) {
		this.hipquestionno = hipquestionno;
	}
	public String getStiff() {
		return stiff;
	}
	public void setStiff(String stiff) {
		this.stiff = stiff;
	}
	public String getSwollen() {
		return swollen;
	}
	public void setSwollen(String swollen) {
		this.swollen = swollen;
	}
	public String getFlatrighthip() {
		return flatrighthip;
	}
	public void setFlatrighthip(String flatrighthip) {
		this.flatrighthip = flatrighthip;
	}
	public String getFlatlefthip() {
		return flatlefthip;
	}
	public void setFlatlefthip(String flatlefthip) {
		this.flatlefthip = flatlefthip;
	}
	public String getFlatrightknee() {
		return flatrightknee;
	}
	public void setFlatrightknee(String flatrightknee) {
		this.flatrightknee = flatrightknee;
	}
	public String getFlatleftknee() {
		return flatleftknee;
	}
	public void setFlatleftknee(String flatleftknee) {
		this.flatleftknee = flatleftknee;
	}
	public String getStairsrighthip() {
		return stairsrighthip;
	}
	public void setStairsrighthip(String stairsrighthip) {
		this.stairsrighthip = stairsrighthip;
	}
	public String getStairslefthip() {
		return stairslefthip;
	}
	public void setStairslefthip(String stairslefthip) {
		this.stairslefthip = stairslefthip;
	}
	public String getStairsrightknee() {
		return stairsrightknee;
	}
	public void setStairsrightknee(String stairsrightknee) {
		this.stairsrightknee = stairsrightknee;
	}
	public String getStairsleftknee() {
		return stairsleftknee;
	}
	public void setStairsleftknee(String stairsleftknee) {
		this.stairsleftknee = stairsleftknee;
	}
	public String getBedrighthip() {
		return bedrighthip;
	}
	public void setBedrighthip(String bedrighthip) {
		this.bedrighthip = bedrighthip;
	}
	public String getBedlefthip() {
		return bedlefthip;
	}
	public void setBedlefthip(String bedlefthip) {
		this.bedlefthip = bedlefthip;
	}
	public String getBedrightknee() {
		return bedrightknee;
	}
	public void setBedrightknee(String bedrightknee) {
		this.bedrightknee = bedrightknee;
	}
	public String getBedleftknee() {
		return bedleftknee;
	}
	public void setBedleftknee(String bedleftknee) {
		this.bedleftknee = bedleftknee;
	}
	public String getBest() {
		return best;
	}
	public void setBest(String best) {
		this.best = best;
	}
	public String getSocks() {
		return socks;
	}
	public void setSocks(String socks) {
		this.socks = socks;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getSecurity() {
		return security;
	}
	public void setSecurity(String security) {
		this.security = security;
	}
	public Hipquestionnaire(String hipquestionno, String stiff, String swollen,
			String flatrighthip, String flatlefthip, String flatrightknee,
			String flatleftknee, String stairsrighthip, String stairslefthip,
			String stairsrightknee, String stairsleftknee, String bedrighthip,
			String bedlefthip, String bedrightknee, String bedleftknee,
			String best, String socks, String date, String birthdate,
			String security) {
		super();
		this.hipquestionno = hipquestionno;
		this.stiff = stiff;
		this.swollen = swollen;
		this.flatrighthip = flatrighthip;
		this.flatlefthip = flatlefthip;
		this.flatrightknee = flatrightknee;
		this.flatleftknee = flatleftknee;
		this.stairsrighthip = stairsrighthip;
		this.stairslefthip = stairslefthip;
		this.stairsrightknee = stairsrightknee;
		this.stairsleftknee = stairsleftknee;
		this.bedrighthip = bedrighthip;
		this.bedlefthip = bedlefthip;
		this.bedrightknee = bedrightknee;
		this.bedleftknee = bedleftknee;
		this.best = best;
		this.socks = socks;
		this.date = date;
		this.birthdate = birthdate;
		this.security = security;
	}
	public Hipquestionnaire() {
		super();
	}
	
	
	
	
}
