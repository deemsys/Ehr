package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Oswestry
{
	private String oswestryno;
	private String painintensity;
	private String standing;
	private String personal;
	private String sleeping;
	private String lifting;
	private String life;
	private String walking;
	private String social;
	private String sitting;
	private String traveling;
	private String comments;
	
	@NotEmpty
	private String name;
	
	@NotEmpty
	private String date;
	
	private String scores;
	private String painscale;
	private String painscale1;
	private String job;
	private String joboptional;
	private String work;
	private String worka;
	private String workb;
	private String workc;
	private String sport;
	private String sportoptional;
	private String instrument;
	private String instrumenta;
	private String instrumentb;
	private String instrumentc;
	public String getOswestryno() {
		return oswestryno;
	}
	public void setOswestryno(String oswestryno) {
		this.oswestryno = oswestryno;
	}
	public String getPainintensity() {
		return painintensity;
	}
	public void setPainintensity(String painintensity) {
		this.painintensity = painintensity;
	}
	public String getStanding() {
		return standing;
	}
	public void setStanding(String standing) {
		this.standing = standing;
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
	public String getLifting() {
		return lifting;
	}
	public void setLifting(String lifting) {
		this.lifting = lifting;
	}
	public String getLife() {
		return life;
	}
	public void setLife(String life) {
		this.life = life;
	}
	public String getWalking() {
		return walking;
	}
	public void setWalking(String walking) {
		this.walking = walking;
	}
	public String getSocial() {
		return social;
	}
	public void setSocial(String social) {
		this.social = social;
	}
	public String getSitting() {
		return sitting;
	}
	public void setSitting(String sitting) {
		this.sitting = sitting;
	}
	public String getTraveling() {
		return traveling;
	}
	public void setTraveling(String traveling) {
		this.traveling = traveling;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
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
	public String getScores() {
		return scores;
	}
	public void setScores(String scores) {
		this.scores = scores;
	}
	public String getPainscale() {
		return painscale;
	}
	public void setPainscale(String painscale) {
		this.painscale = painscale;
	}
	public String getPainscale1() {
		return painscale1;
	}
	public void setPainscale1(String painscale1) {
		this.painscale1 = painscale1;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getJoboptional() {
		return joboptional;
	}
	public void setJoboptional(String joboptional) {
		this.joboptional = joboptional;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getWorka() {
		return worka;
	}
	public void setWorka(String worka) {
		this.worka = worka;
	}
	public String getWorkb() {
		return workb;
	}
	public void setWorkb(String workb) {
		this.workb = workb;
	}
	public String getWorkc() {
		return workc;
	}
	public void setWorkc(String workc) {
		this.workc = workc;
	}
	public String getSport() {
		return sport;
	}
	public void setSport(String sport) {
		this.sport = sport;
	}
	public String getSportoptional() {
		return sportoptional;
	}
	public void setSportoptional(String sportoptional) {
		this.sportoptional = sportoptional;
	}
	public String getInstrument() {
		return instrument;
	}
	public void setInstrument(String instrument) {
		this.instrument = instrument;
	}
	public String getInstrumenta() {
		return instrumenta;
	}
	public void setInstrumenta(String instrumenta) {
		this.instrumenta = instrumenta;
	}
	public String getInstrumentb() {
		return instrumentb;
	}
	public void setInstrumentb(String instrumentb) {
		this.instrumentb = instrumentb;
	}
	public String getInstrumentc() {
		return instrumentc;
	}
	public void setInstrumentc(String instrumentc) {
		this.instrumentc = instrumentc;
	}
	public Oswestry(String oswestryno, String painintensity, String standing,
			String personal, String sleeping, String lifting, String life,
			String walking, String social, String sitting, String traveling,
			String comments, String name, String date, String scores,
			String painscale, String painscale1, String job,
			String joboptional, String work, String worka, String workb,
			String workc, String sport, String sportoptional,
			String instrument, String instrumenta, String instrumentb,
			String instrumentc) {
		super();
		this.oswestryno = oswestryno;
		this.painintensity = painintensity;
		this.standing = standing;
		this.personal = personal;
		this.sleeping = sleeping;
		this.lifting = lifting;
		this.life = life;
		this.walking = walking;
		this.social = social;
		this.sitting = sitting;
		this.traveling = traveling;
		this.comments = comments;
		this.name = name;
		this.date = date;
		this.scores = scores;
		this.painscale = painscale;
		this.painscale1 = painscale1;
		this.job = job;
		this.joboptional = joboptional;
		this.work = work;
		this.worka = worka;
		this.workb = workb;
		this.workc = workc;
		this.sport = sport;
		this.sportoptional = sportoptional;
		this.instrument = instrument;
		this.instrumenta = instrumenta;
		this.instrumentb = instrumentb;
		this.instrumentc = instrumentc;
	}
	public Oswestry() {
		super();
	}
	
	
	
}