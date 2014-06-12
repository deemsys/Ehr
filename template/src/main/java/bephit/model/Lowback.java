package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Lowback
{
	private String lowbackno;
	
	private String symptom;
	
	
	private String pname;
	
	private String date;
	private String tolerate;
	private String withoutpain;
	private String withoutcausingpain;
	private String sleepingwell;
	private String canlift;
	private String normal;
	private String walkingdistance;
	private String withoutextrapain;
	private String cansit;
	private String rapidlybetter;
	private String score;
	private String section;
	private String adl;
	private String adl2;
	private String comment;
	
	public Lowback() {
		super();
	}

	public Lowback(String lowbackno, String pname, String date,
			String tolerate, String withoutpain, String withoutcausingpain,
			String sleepingwell, String canlift, String normal,
			String walkingdistance, String withoutextrapain, String cansit,
			String rapidlybetter, String score, String section, String adl,
			String adl2, String comment) {
		super();
		this.lowbackno = lowbackno;
		this.pname = pname;
		this.date = date;
		this.tolerate = tolerate;
		this.withoutpain = withoutpain;
		this.withoutcausingpain = withoutcausingpain;
		this.sleepingwell = sleepingwell;
		this.canlift = canlift;
		this.normal = normal;
		this.walkingdistance = walkingdistance;
		this.withoutextrapain = withoutextrapain;
		this.cansit = cansit;
		this.rapidlybetter = rapidlybetter;
		this.score = score;
		this.section = section;
		this.adl = adl;
		this.adl2 = adl2;
		this.comment = comment;
	}
	

	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}

	public String getLowbackno() {
		return lowbackno;
	}

	public void setLowbackno(String lowbackno) {
		this.lowbackno = lowbackno;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTolerate() {
		return tolerate;
	}

	public void setTolerate(String tolerate) {
		this.tolerate = tolerate;
	}

	public String getWithoutpain() {
		return withoutpain;
	}

	public void setWithoutpain(String withoutpain) {
		this.withoutpain = withoutpain;
	}

	public String getWithoutcausingpain() {
		return withoutcausingpain;
	}

	public void setWithoutcausingpain(String withoutcausingpain) {
		this.withoutcausingpain = withoutcausingpain;
	}

	public String getSleepingwell() {
		return sleepingwell;
	}

	public void setSleepingwell(String sleepingwell) {
		this.sleepingwell = sleepingwell;
	}

	public String getCanlift() {
		return canlift;
	}

	public void setCanlift(String canlift) {
		this.canlift = canlift;
	}

	public String getNormal() {
		return normal;
	}

	public void setNormal(String normal) {
		this.normal = normal;
	}

	public String getWalkingdistance() {
		return walkingdistance;
	}

	public void setWalkingdistance(String walkingdistance) {
		this.walkingdistance = walkingdistance;
	}

	public String getWithoutextrapain() {
		return withoutextrapain;
	}

	public void setWithoutextrapain(String withoutextrapain) {
		this.withoutextrapain = withoutextrapain;
	}

	public String getCansit() {
		return cansit;
	}

	public void setCansit(String cansit) {
		this.cansit = cansit;
	}

	public String getRapidlybetter() {
		return rapidlybetter;
	}

	public void setRapidlybetter(String rapidlybetter) {
		this.rapidlybetter = rapidlybetter;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getAdl() {
		return adl;
	}

	public void setAdl(String adl) {
		this.adl = adl;
	}

	public String getAdl2() {
		return adl2;
	}

	public void setAdl2(String adl2) {
		this.adl2 = adl2;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	
	}