package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Neckindex
{
	private String neckindexno;	
	
	private String symptom;
	
	@NotEmpty
	private String name;
	
	@NotEmpty
	private String date;
	
	private String painintensity;
	private String work;
	private String personal;
	private String driving;
	private String lifting;
	private String sleeping;
	private String reading;
	private String recreation;
	private String headache;
	private String concentration;	
	private String score;
	private String status;	
	
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
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
	public String getNeckindexno() {
		return neckindexno;
	}
	public void setNeckindexno(String neckindexno) {
		this.neckindexno = neckindexno;
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
	public String getPersonal() {
		return personal;
	}
	public void setPersonal(String personal) {
		this.personal = personal;
	}
	public String getDriving() {
		return driving;
	}
	public void setDriving(String driving) {
		this.driving = driving;
	}
	public String getLifting() {
		return lifting;
	}
	public void setLifting(String lifting) {
		this.lifting = lifting;
	}
	public String getSleeping() {
		return sleeping;
	}
	public void setSleeping(String sleeping) {
		this.sleeping = sleeping;
	}
	public String getReading() {
		return reading;
	}
	public void setReading(String reading) {
		this.reading = reading;
	}
	public String getRecreation() {
		return recreation;
	}
	public void setRecreation(String recreation) {
		this.recreation = recreation;
	}
	public String getHeadache() {
		return headache;
	}
	public void setHeadache(String headache) {
		this.headache = headache;
	}
	public String getConcentration() {
		return concentration;
	}
	public void setConcentration(String concentration) {
		this.concentration = concentration;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Neckindex(String neckindexno, String name, String date,
			String painintensity, String work, String personal, String driving,
			String lifting, String sleeping, String reading, String recreation,
			String headache, String concentration, String score, String status) {
		super();
		this.neckindexno = neckindexno;
		this.name = name;
		this.date = date;
		this.painintensity = painintensity;
		this.work = work;
		this.personal = personal;
		this.driving = driving;
		this.lifting = lifting;
		this.sleeping = sleeping;
		this.reading = reading;
		this.recreation = recreation;
		this.headache = headache;
		this.concentration = concentration;
		this.score = score;
		this.status = status;
	}
	public Neckindex() {
		super();
	}
	
	
}