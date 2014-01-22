package bephit.model;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;


public class Shoulderpainscore
{
private String shoulderpainno;
@NotEmpty
private String pname;
@NotEmpty
private String number;
@NotEmpty
private String date;
private String painatrest;
private String paininmotion;
private String nightlypain;
private String sleepingproblem;
private String incapability;
private String degreeofradiation;
private String painscale;
private String date1;
private String total;
private String f;
private String name123;
private String age;
private String headache;
private String myheadache;
private String handihapped;
private String restricted;
private String understand;
private String recreational;
private String angry;
private String control;
private String socialize;
private String family;
private String insane;
private String outlook;
private String afraid;
private String desperate;
private String penalties;
private String relationship;
private String avoid;
private String goals;
private String clear;
private String tension;
private String gatherings;
private String irritable;
private String travelling;
private String confused;
private String frustrated;
private String difficult;
private String attention;
public Shoulderpainscore() {
	super();
}
public Shoulderpainscore(String shoulderpainno, String pname, String number,
		String date, String painatrest, String paininmotion,
		String nightlypain, String sleepingproblem,String incapability,String degreeofradiation, String painscale,
		String date1, String total,String f, String name123, String age,
		String headache, String myheadache, String handihapped,
		String restricted, String understand, String recreational,
		String angry, String control, String socialize, String family,
		String insane, String outlook, String afraid, String desperate,
		String penalties, String relationship, String avoid, String goals,
		String clear, String tension, String gatherings, String irritable,
		String travelling,String confused, String frustrated, String difficult, String attention) {
	super();
	this.shoulderpainno = shoulderpainno;
	this.pname = pname;
	this.number = number;
	this.date = date;
	this.painatrest = painatrest;
	this.paininmotion = paininmotion;
	this.nightlypain = nightlypain;
	this.sleepingproblem=sleepingproblem;
	this.incapability=incapability;
	this.degreeofradiation = degreeofradiation;
	this.painscale = painscale;
	this.date1 = date1;
	this.total = total;
	this.f=f;
	this.name123 = name123;
	this.age = age;
	this.headache = headache;
	this.myheadache = myheadache;
	this.handihapped = handihapped;
	this.restricted = restricted;
	this.understand = understand;
	this.recreational = recreational;
	this.angry = angry;
	this.control = control;
	this.socialize = socialize;
	this.family = family;
	this.insane = insane;
	this.outlook = outlook;
	this.afraid = afraid;
	this.desperate = desperate;
	this.penalties = penalties;
	this.relationship = relationship;
	this.avoid = avoid;
	this.goals = goals;
	this.clear = clear;
	this.tension = tension;
	this.gatherings = gatherings;
	this.irritable = irritable;
	this.travelling = travelling;
	this.confused=confused;
	this.frustrated = frustrated;
	this.difficult = difficult;
	this.attention = attention;
}
public String getShoulderpainno() {
	return shoulderpainno;
}
public void setShoulderpainno(String shoulderpainno) {
	this.shoulderpainno = shoulderpainno;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getNumber() {
	return number;
}
public void setNumber(String number) {
	this.number = number;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getPainatrest() {
	return painatrest;
}
public void setPainatrest(String painatrest) {
	this.painatrest = painatrest;
}
public String getPaininmotion() {
	return paininmotion;
}
public void setPaininmotion(String paininmotion) {
	this.paininmotion = paininmotion;
}
public String getNightlypain() {
	return nightlypain;
}
public void setNightlypain(String nightlypain) {
	this.nightlypain = nightlypain;
}

public String getSleepingproblem() {
	return sleepingproblem;
}
public void setSleepingproblem(String sleepingproblem) {
	this.sleepingproblem = sleepingproblem;
}

public String getIncapability() {
	return incapability;
}
public void setIncapability(String incapability) {
	this.incapability = incapability;
}
public String getDegreeofradiation() {
	return degreeofradiation;
}
public void setDegreeofradiation(String degreeofradiation) {
	this.degreeofradiation = degreeofradiation;
}

public String getPainscale() {
	return painscale;
}
public void setPainscale(String painscale) {
	this.painscale = painscale;
}
public String getDate1() {
	return date1;
}
public void setDate1(String date1) {
	this.date1 = date1;
}
public String getTotal() {
	return total;
}
public void setTotal(String total) {
	this.total = total;
}

public String getF() {
	return f;
}
public void setF(String f) {
	this.f = f;
}
public String getName123() {
	return name123;
}
public void setName123(String name123) {
	this.name123 = name123;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getHeadache() {
	return headache;
}
public void setHeadache(String headache) {
	this.headache = headache;
}
public String getMyheadache() {
	return myheadache;
}
public void setMyheadache(String myheadache) {
	this.myheadache = myheadache;
}
public String getHandihapped() {
	return handihapped;
}
public void setHandihapped(String handihapped) {
	this.handihapped = handihapped;
}
public String getRestricted() {
	return restricted;
}
public void setRestricted(String restricted) {
	this.restricted = restricted;
}
public String getUnderstand() {
	return understand;
}
public void setUnderstand(String understand) {
	this.understand = understand;
}
public String getRecreational() {
	return recreational;
}
public void setRecreational(String recreational) {
	this.recreational = recreational;
}
public String getAngry() {
	return angry;
}
public void setAngry(String angry) {
	this.angry = angry;
}
public String getControl() {
	return control;
}
public void setControl(String control) {
	this.control = control;
}
public String getSocialize() {
	return socialize;
}
public void setSocialize(String socialize) {
	this.socialize = socialize;
}
public String getFamily() {
	return family;
}
public void setFamily(String family) {
	this.family = family;
}
public String getInsane() {
	return insane;
}
public void setInsane(String insane) {
	this.insane = insane;
}
public String getOutlook() {
	return outlook;
}
public void setOutlook(String outlook) {
	this.outlook = outlook;
}
public String getAfraid() {
	return afraid;
}
public void setAfraid(String afraid) {
	this.afraid = afraid;
}
public String getDesperate() {
	return desperate;
}
public void setDesperate(String desperate) {
	this.desperate = desperate;
}
public String getPenalties() {
	return penalties;
}
public void setPenalties(String penalties) {
	this.penalties = penalties;
}
public String getRelationship() {
	return relationship;
}
public void setRelationship(String relationship) {
	this.relationship = relationship;
}
public String getAvoid() {
	return avoid;
}
public void setAvoid(String avoid) {
	this.avoid = avoid;
}
public String getGoals() {
	return goals;
}
public void setGoals(String goals) {
	this.goals = goals;
}
public String getClear() {
	return clear;
}
public void setClear(String clear) {
	this.clear = clear;
}
public String getTension() {
	return tension;
}
public void setTension(String tension) {
	this.tension = tension;
}
public String getGatherings() {
	return gatherings;
}
public void setGatherings(String gatherings) {
	this.gatherings = gatherings;
}
public String getIrritable() {
	return irritable;
}
public void setIrritable(String irritable) {
	this.irritable = irritable;
}
public String getTravelling() {
	return travelling;
}
public void setTravelling(String travelling) {
	this.travelling = travelling;
}

public String getConfused() {
	return confused;
}
public void setConfused(String confused) {
	this.confused = confused;
}
public String getFrustrated() {
	return frustrated;
}
public void setFrustrated(String frustrated) {
	this.frustrated = frustrated;
}
public String getDifficult() {
	return difficult;
}
public void setDifficult(String difficult) {
	this.difficult = difficult;
}
public String getAttention() {
	return attention;
}
public void setAttention(String attention) {
	this.attention = attention;
}


}