package bephit.model;

//import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

public class Noticeassignment
{
	
	private String noticeid;
	
	private String username; 
	
	@NotEmpty
	private String nameofins;
	@NotEmpty
	private String nameofattorney;

	private String address1;
	
	private String address2;

	private String regarding;
	@NotEmpty
	private String patientname;	
	
	private String dateofaccident;
	
	private String todaysdate;
	@NotEmpty
	private String letter;
	
	private String letter1;
	@NotEmpty
	private String treatingphysician;
	public String getNoticeid() {
		return noticeid;
	}
	public void setNoticeid(String noticeid) {
		this.noticeid = noticeid;
	}
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNameofins() {
		return nameofins;
	}
	public void setNameofins(String nameofins) {
		this.nameofins = nameofins;
	}
	public String getNameofattorney() {
		return nameofattorney;
	}
	public void setNameofattorney(String nameofattorney) {
		this.nameofattorney = nameofattorney;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	
	public String getRegarding() {
		return regarding;
	}
	public void setRegarding(String regarding) {
		this.regarding = regarding;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getDateofaccident() {
		return dateofaccident;
	}
	public void setDateofaccident(String dateofaccident) {
		this.dateofaccident = dateofaccident;
	}
	public String getTodaysdate() {
		return todaysdate;
	}
	public void setTodaysdate(String todaysdate) {
		this.todaysdate = todaysdate;
	}
	public String getLetter() {
		return letter;
	}
	public void setLetter(String letter) {
		this.letter = letter;
	}
	public String getLetter1() {
		return letter1;
	}
	public void setLetter1(String letter1) {
		this.letter1 = letter1;
	}
	public String getTreatingphysician() {
		return treatingphysician;
	}
	public void setTreatingphysician(String treatingphysician) {
		this.treatingphysician = treatingphysician;
	}
	public Noticeassignment(String noticeid, String nameofins,
			String nameofattorney, String address1, String address2,
			String regarding, String patientname, String dateofaccident,
			String todaysdate, String letter, String letter1,
			String treatingphysician) {
		super();
		this.noticeid = noticeid;
		this.nameofins = nameofins;
		this.nameofattorney = nameofattorney;
		this.address1 = address1;
		this.address2 = address2;
		this.regarding = regarding;
		this.patientname = patientname;
		this.dateofaccident = dateofaccident;
		this.todaysdate = todaysdate;
		this.letter = letter;
		this.letter1 = letter1;
		this.treatingphysician = treatingphysician;
	}
	public Noticeassignment() {
		super();
	}
}