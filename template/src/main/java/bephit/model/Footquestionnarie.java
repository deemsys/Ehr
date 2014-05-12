package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Footquestionnarie
{
	
	private String footquestionno;
	private String stiff;
	private String swollen;
	private String unevensurface;
	private String flatsurface;
	private String updownstairs;
	private String lyinginbed;	
	private String sternous;
	private String moderateactivity;	
	private String lightactivity;
	private String best;
	private String trouble;
	private String socks;	
	private String heavywork;
	private String jogging;
	private String walking;
	private String stand;
	private String fewminutes;
	private String difficulty;
	private String women;
	private String dress;
	private String shoes;
	private String orthopedic;
	private String allversion;
	private String foot;
	private String ankle;
	
	private String date;
	private String birthdate;
	
	@Pattern(regexp="(^$|[0-9-]{11})",message="Not a valid Social Security number")
	private String security;
	public Footquestionnarie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Footquestionnarie(String footquestionno, String stiff,
			String swollen, String unevensurface, String flatsurface,
			String updownstairs, String lyinginbed, String sternous,
			String moderateactivity, String lightactivity, String best,
			String trouble, String socks, String heavywork, String jogging,
			String walking, String stand, String fewminutes, String difficulty,
			String women, String dress, String shoes, String orthopedic,
			String allversion, String foot, String ankle, String date,
			String birthdate, String security) {
		super();
		this.footquestionno = footquestionno;
		this.stiff = stiff;
		this.swollen = swollen;
		this.unevensurface = unevensurface;
		this.flatsurface = flatsurface;
		this.updownstairs = updownstairs;
		this.lyinginbed = lyinginbed;
		this.sternous = sternous;
		this.moderateactivity = moderateactivity;
		this.lightactivity = lightactivity;
		this.best = best;
		this.trouble = trouble;
		this.socks = socks;
		this.heavywork = heavywork;
		this.jogging = jogging;
		this.walking = walking;
		this.stand = stand;
		this.fewminutes = fewminutes;
		this.difficulty = difficulty;
		this.women = women;
		this.dress = dress;
		this.shoes = shoes;
		this.orthopedic = orthopedic;
		this.allversion = allversion;
		this.foot = foot;
		this.ankle = ankle;
		this.date = date;
		this.birthdate = birthdate;
		this.security = security;
	}
	public String getFootquestionno() {
		return footquestionno;
	}
	public void setFootquestionno(String footquestionno) {
		this.footquestionno = footquestionno;
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
	public String getUnevensurface() {
		return unevensurface;
	}
	public void setUnevensurface(String unevensurface) {
		this.unevensurface = unevensurface;
	}
	public String getFlatsurface() {
		return flatsurface;
	}
	public void setFlatsurface(String flatsurface) {
		this.flatsurface = flatsurface;
	}
	public String getUpdownstairs() {
		return updownstairs;
	}
	public void setUpdownstairs(String updownstairs) {
		this.updownstairs = updownstairs;
	}
	public String getLyinginbed() {
		return lyinginbed;
	}
	public void setLyinginbed(String lyinginbed) {
		this.lyinginbed = lyinginbed;
	}
	public String getSternous() {
		return sternous;
	}
	public void setSternous(String sternous) {
		this.sternous = sternous;
	}
	public String getModerateactivity() {
		return moderateactivity;
	}
	public void setModerateactivity(String moderateactivity) {
		this.moderateactivity = moderateactivity;
	}
	public String getLightactivity() {
		return lightactivity;
	}
	public void setLightactivity(String lightactivity) {
		this.lightactivity = lightactivity;
	}
	public String getBest() {
		return best;
	}
	public void setBest(String best) {
		this.best = best;
	}
	public String getTrouble() {
		return trouble;
	}
	public void setTrouble(String trouble) {
		this.trouble = trouble;
	}
	public String getSocks() {
		return socks;
	}
	public void setSocks(String socks) {
		this.socks = socks;
	}
	public String getHeavywork() {
		return heavywork;
	}
	public void setHeavywork(String heavywork) {
		this.heavywork = heavywork;
	}
	public String getJogging() {
		return jogging;
	}
	public void setJogging(String jogging) {
		this.jogging = jogging;
	}
	public String getWalking() {
		return walking;
	}
	public void setWalking(String walking) {
		this.walking = walking;
	}
	public String getStand() {
		return stand;
	}
	public void setStand(String stand) {
		this.stand = stand;
	}
	public String getFewminutes() {
		return fewminutes;
	}
	public void setFewminutes(String fewminutes) {
		this.fewminutes = fewminutes;
	}
	public String getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}
	public String getWomen() {
		return women;
	}
	public void setWomen(String women) {
		this.women = women;
	}
	public String getDress() {
		return dress;
	}
	public void setDress(String dress) {
		this.dress = dress;
	}
	public String getShoes() {
		return shoes;
	}
	public void setShoes(String shoes) {
		this.shoes = shoes;
	}
	public String getOrthopedic() {
		return orthopedic;
	}
	public void setOrthopedic(String orthopedic) {
		this.orthopedic = orthopedic;
	}
	public String getAllversion() {
		return allversion;
	}
	public void setAllversion(String allversion) {
		this.allversion = allversion;
	}
	public String getFoot() {
		return foot;
	}
	public void setFoot(String foot) {
		this.foot = foot;
	}
	public String getAnkle() {
		return ankle;
	}
	public void setAnkle(String ankle) {
		this.ankle = ankle;
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
	
	
}