package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Workschool
{
	private String workid;
	
	private String username;
	
	@NotEmpty
	private String date;
	@NotEmpty
	private String letter;
	
	private String beexcused;
	private String excused;
	private String beconfined;
	private String confined;
	private String lifting;
	private String lift;
	private String pushing;
	private String push;
	private String drive;
	private String sitting;
	private String sit;
	private String standing;
	private String stand;
	private String bend;
	private String entry;
	private String light;
	@NotEmpty
	private String froms;
	@NotEmpty
	private String tos;
	
	private String returns;
	public Workschool() {
		super();
	}
	public Workschool(String workid, String date, String letter,
			String beexcused, String excused, String beconfined,
			String confined, String lifting, String lift, String pushing,
			String push, String drive, String sitting, String sit,
			String standing, String stand, String bend, String entry,
			String light, String froms, String tos, String returns,
			String returndate, String diagnosis) {
		super();
		this.workid = workid;
		this.date = date;
		this.letter = letter;
		this.beexcused = beexcused;
		this.excused = excused;
		this.beconfined = beconfined;
		this.confined = confined;
		this.lifting = lifting;
		this.lift = lift;
		this.pushing = pushing;
		this.push = push;
		this.drive = drive;
		this.sitting = sitting;
		this.sit = sit;
		this.standing = standing;
		this.stand = stand;
		this.bend = bend;
		this.entry = entry;
		this.light = light;
		this.froms = froms;
		this.tos = tos;
		this.returns = returns;
		this.returndate = returndate;
		this.diagnosis = diagnosis;
	}
	public String getWorkid() {
		return workid;
	}
	public void setWorkid(String workid) {
		this.workid = workid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getLetter() {
		return letter;
	}
	public void setLetter(String letter) {
		this.letter = letter;
	}
	public String getBeexcused() {
		return beexcused;
	}
	public void setBeexcused(String beexcused) {
		this.beexcused = beexcused;
	}
	public String getExcused() {
		return excused;
	}
	public void setExcused(String excused) {
		this.excused = excused;
	}
	public String getBeconfined() {
		return beconfined;
	}
	public void setBeconfined(String beconfined) {
		this.beconfined = beconfined;
	}
	public String getConfined() {
		return confined;
	}
	public void setConfined(String confined) {
		this.confined = confined;
	}
	public String getLifting() {
		return lifting;
	}
	public void setLifting(String lifting) {
		this.lifting = lifting;
	}
	public String getLift() {
		return lift;
	}
	public void setLift(String lift) {
		this.lift = lift;
	}
	public String getPushing() {
		return pushing;
	}
	public void setPushing(String pushing) {
		this.pushing = pushing;
	}
	public String getPush() {
		return push;
	}
	public void setPush(String push) {
		this.push = push;
	}
	public String getDrive() {
		return drive;
	}
	public void setDrive(String drive) {
		this.drive = drive;
	}
	public String getSitting() {
		return sitting;
	}
	public void setSitting(String sitting) {
		this.sitting = sitting;
	}
	public String getSit() {
		return sit;
	}
	public void setSit(String sit) {
		this.sit = sit;
	}
	public String getStanding() {
		return standing;
	}
	public void setStanding(String standing) {
		this.standing = standing;
	}
	public String getStand() {
		return stand;
	}
	public void setStand(String stand) {
		this.stand = stand;
	}
	public String getBend() {
		return bend;
	}
	public void setBend(String bend) {
		this.bend = bend;
	}
	public String getEntry() {
		return entry;
	}
	public void setEntry(String entry) {
		this.entry = entry;
	}
	public String getLight() {
		return light;
	}
	public void setLight(String light) {
		this.light = light;
	}
	public String getFroms() {
		return froms;
	}
	public void setFroms(String froms) {
		this.froms = froms;
	}
	public String getTos() {
		return tos;
	}
	public void settos(String tos) {
		this.tos = tos;
	}
	public String getReturns() {
		return returns;
	}
	public void setReturns(String returns) {
		this.returns = returns;
	}
	public String getReturndate() {
		return returndate;
	}
	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	private String returndate;
	private String diagnosis;
	
}