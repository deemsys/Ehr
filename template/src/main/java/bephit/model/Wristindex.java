package bephit.model;

public class Wristindex
{
	private String wristindexno;
	private String name;
	private String date;
	private String painintensity;
	private String work;
	private String numbness;
	private String driving;
	private String personal;
	private String sleeping;
	private String strength;
	private String house;
	private String writing;
	private String recreation;
	private String painscale;
	private String score;
	private String total;
	public String getWristindexno() {
		return wristindexno;
	}
	public void setWristindexno(String wristindexno) {
		this.wristindexno = wristindexno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPainintensity() {
		return painintensity;
	}
	public void setPainintensity(String painintensity) {
		this.painintensity = painintensity;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getNumbness() {
		return numbness;
	}
	public void setNumbness(String numbness) {
		this.numbness = numbness;
	}
	public String getDriving() {
		return driving;
	}
	public void setDriving(String driving) {
		this.driving = driving;
	}
	public String getPersonal() {
		return personal;
	}
	public void setPersonal(String personal) {
		this.personal = personal;
	}
	public String getSleeping() {
		return sleeping;
	}
	public void setSleeping(String sleeping) {
		this.sleeping = sleeping;
	}
	public String getStrength() {
		return strength;
	}
	public void setStrength(String strength) {
		this.strength = strength;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getWriting() {
		return writing;
	}
	public void setWriting(String writing) {
		this.writing = writing;
	}
	public String getRecreation() {
		return recreation;
	}
	public void setRecreation(String recreation) {
		this.recreation = recreation;
	}
	public String getPainscale() {
		return painscale;
	}
	public void setPainscale(String painscale) {
		this.painscale = painscale;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	
	public Wristindex() {
		super();
	}
	public Wristindex(String wristindexno, String name, String date,
			String painintensity, String work, String numbness, String driving,
			String personal, String sleeping, String strength, String house,
			String writing, String recreation, String painscale, String score,
			String total) {
		super();
		this.wristindexno = wristindexno;
		this.name = name;
		this.date = date;
		this.painintensity = painintensity;
		this.work = work;
		this.numbness = numbness;
		this.driving = driving;
		this.personal = personal;
		this.sleeping = sleeping;
		this.strength = strength;
		this.house = house;
		this.writing = writing;
		this.recreation = recreation;
		this.painscale = painscale;
		this.score = score;
		this.total = total;
	}
	
	
	
}