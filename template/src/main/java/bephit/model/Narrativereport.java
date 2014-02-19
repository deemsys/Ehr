package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Narrativereport
{ 
	private String narrativeno;
	@NotEmpty
	private String reportdate;
	@NotEmpty
	private String patient;
	@NotEmpty
	private String dateofinjury;
	@NotEmpty
	private String dateoffirstvisit;
	private String towhom;
	private String patientname;
	private String gender;
	private String accident;
	private String name;
	private String dateofconsultation;
	private String gender1;
	private String gender2;
	private String accidentdate;
	private String gender3;
	private String gender4;
	private String gender5;
	private String name1;
	private String gendernew;
	private String gender6;
	private String gender7;
	private String gender8;
	private String gender9;
	private String name2;
	private String body;
	private String gender10;
	private String slammed;
	private String slammed1;
	private String symptom;
	private String appeared;
	private String priordate;
	private String gender11;
	private String name3;
	private String gender12;
	private String pastmedicalhistory;
	private String gender13;
	private String gender14;
	private String gender15;
	private String gender16;
	private String gender17;
	private String gender18;
	private String name4;
	private String clinicdate;
	private String gender19;
	private String vehicleaccident;
	private String gender20;
	private String gender21;
	private String allieviated;
	private String gender22;
	private String gender23;
	private String gender24;
	private String gendernew2;
	private String gendernew3;
	private String gender25;
	private String gender26;
	private String gender27;
	private String gender28;
	private String gender29;
	private String gender30;
	private String age;
	private String age1;
	private String lb;
	private String gender31;
	private String gender32;
	private String gender33;
	private String gender34;
	private String gendernew4;
	private String gender35;
	private String gender36;
	private String gender37;
	private String gender38;
	private String gender39;
	private String gendernew5;
	private String tenderness;
	private String gender40;
	private String gendernew6;
	private String gender41;
	private String noted;
	private String rangeofmotion;
	private String painres1;
	private String tonicity1;
	private String painres2;
	private String tonicity2;
	private String painres3;
	private String tonicity3;
	private String painres4;
	private String tonicity4;
	private String painres5;
	private String tonicity5;
	private String painres6;
	private String tonicity6;
	private String painres7;
	private String tonicity7;
	private String painres8;
	private String tonicity8;
	private String painres9;
	private String tonicity9;
	private String painres10;
	private String tonicity10;
	private String painres11;
	private String tonicity11;
	private String painres12;
	private String tonicity12;
	private String dermatome;
	private String gender42;
	private String gender43;
	private String gender44;
	private String level1;
	private String level;
	private String gender45;
	private String level2;
	private String orthopedictest1;
	private String jacksonsr;
	private String jacksonsl;
	private String orthopedictest2;
	private String doublelegraiser;
	private String doublelegraisel;
	private String orthopedictest3;
	private String yeomansr;
	private String yeomansl;
	private String orthopedictest4;
	private String foraminalr;
	private String foraminall;
	private String orthopedictest5;
private String shoulderr;
private String shoulderl;
private String orthopedictest6;
	private String orthopedicr;
	private String orthopedicl;
	private String gender46;
	private String gender47;
	private String gender48;
	private String gender49;
	private String gender50;
	private String gender51;
	private String fracture;
	private String gender52;
	private String gender53;
	private String gender54;
	private String presentlevel;
	private String gender55;
	private String osteophytes;
	private String gender56;
	private String gender57;
	private String gender58;
	private String gender59;
	private String gender60;
	private String subluxations;
	private String icd1;
	private String description1;
	private String icd2;
	private String description2;
	private String icd3;
	private String description3;
	private String icd4;
	private String description4;
	private String gender61;
	private String pname;
	private String date9;
	private String gender62;
	private String gender63;
	private String pname1;
	private String datenew;
	private String gender64;
	private String gender65;
	private String poor;
	private String gender67;
	private String gender68;
	private String gender69;
	private String gender70;
	private String pname2;
	private String gender71;
	private String gender72;
	private String gender73;
	private String gender74;
	private String gender75;
	private String pname3;
	@NotEmpty
	private String sign;
	
	public Narrativereport() {
		super();
	}

	public Narrativereport(String narrativeno, String reportdate,
			String patient, String dateofinjury, String dateoffirstvisit,
			String towhom, String patientname, String gender, String accident,
			String name, String dateofconsultation, String gender1,
			String gender2, String accidentdate, String gender3,
			String gender4, String gender5, String name1, String gendernew,
			String gender6, String gender7, String gender8, String gender9,String name2,String body,
			String gender10, String slammed, String slammed1, String symptom,
			String appeared, String priordate, String gender11, String name3,
			String gender12, String pastmedicalhistory, String gender13,
			String gender14, String gender15, String gender16, String gender17,
			String gender18, String name4, String clinicdate, String gender19,
			String vehicleaccident, String gender20, String gender21,String allieviated,
			String gender22, String gender23, String gender24,
			String gendernew2, String gendernew3, String gender25,
			String gender26, String gender27, String gender28, String gender29,
			String gender30, String age, String age1, String lb,
			String gender31, String gender32, String gender33, String gender34,
			String gendernew4, String gender35, String gender36,
			String gender37, String gender38, String gender39,
			String gendernew5, String tenderness, String gender40,
			String gendernew6, String gender41, String noted,
			String rangeofmotion, String painres1, String tonicity1,
			String painres2, String tonicity2, String painres3,
			String tonicity3, String painres4, String tonicity4,
			String painres5, String tonicity5, String painres6,
			String tonicity6, String painres7, String tonicity7,
			String painres8, String tonicity8, String painres9,
			String tonicity9, String painres10, String tonicity10,
			String painres11, String tonicity11, String painres12,
			String tonicity12, String dermatome, String gender42,
			String gender43, String gender44, String level1, String level,
			String gender45, String level2, String orthopedictest1,
			String jacksonsr, String jacksonsl, String orthopedictest2,
			String doublelegraiser, String doublelegraisel,
			String orthopedictest3, String yeomansr, String yeomansl,
			String orthopedictest4, String foraminalr, String foraminall,
			String orthopedictest5,String shoulderr,String shoulderl,String orthopedictest6, String orthopedicr, String orthopedicl,
			String gender46, String gender47, String gender48, String gender49,
			String gender50, String gender51, String fracture, String gender52,
			String gender53, String gender54, String presentlevel,
			String gender55, String osteophytes, String gender56,
			String gender57, String gender58, String gender59, String gender60,
			String subluxations, String icd1, String description1, String icd2,
			String description2, String icd3, String description3, String icd4,
			String description4, String gender61, String pname, String date9,
			String gender62, String gender63, String pname1, String datenew,
			String gender64, String gender65, String poor, String gender67,
			String gender68, String gender69, String gender70, String pname2,
			String gender71, String gender72, String gender73, String gender74,
			String gender75, String pname3, String sign) {
		super();
		this.narrativeno = narrativeno;
		this.reportdate = reportdate;
		this.patient = patient;
		this.dateofinjury = dateofinjury;
		this.dateoffirstvisit = dateoffirstvisit;
		this.towhom = towhom;
		this.patientname = patientname;
		this.gender = gender;
		this.accident = accident;
		this.name = name;
		this.dateofconsultation = dateofconsultation;
		this.gender1 = gender1;
		this.gender2 = gender2;
		this.accidentdate = accidentdate;
		this.gender3 = gender3;
		this.gender4 = gender4;
		this.gender5 = gender5;
		this.name1 = name1;
		this.gendernew = gendernew;
		this.gender6 = gender6;
		this.gender7 = gender7;
		this.gender8 = gender8;
		this.gender9 = gender9;
		this.name2=name2;
		this.body=body;
		this.gender10 = gender10;
		this.slammed = slammed;
		this.slammed1 = slammed1;
		this.symptom = symptom;
		this.appeared = appeared;
		this.priordate = priordate;
		this.gender11 = gender11;
		this.name3 = name3;
		this.gender12 = gender12;
		this.pastmedicalhistory = pastmedicalhistory;
		this.gender13 = gender13;
		this.gender14 = gender14;
		this.gender15 = gender15;
		this.gender16 = gender16;
		this.gender17 = gender17;
		this.gender18 = gender18;
		this.name4 = name4;
		this.clinicdate = clinicdate;
		this.gender19 = gender19;
		this.vehicleaccident = vehicleaccident;
		this.gender20 = gender20;
		this.gender21 = gender21;
		this.allieviated=allieviated;
		this.gender22 = gender22;
		this.gender23 = gender23;
		this.gender24 = gender24;
		this.gendernew2 = gendernew2;
		this.gendernew3 = gendernew3;
		this.gender25 = gender25;
		this.gender26 = gender26;
		this.gender27 = gender27;
		this.gender28 = gender28;
		this.gender29 = gender29;
		this.gender30 = gender30;
		this.age = age;
		this.age1 = age1;
		this.lb = lb;
		this.gender31 = gender31;
		this.gender32 = gender32;
		this.gender33 = gender33;
		this.gender34 = gender34;
		this.gendernew4 = gendernew4;
		this.gender35 = gender35;
		this.gender36 = gender36;
		this.gender37 = gender37;
		this.gender38 = gender38;
		this.gender39 = gender39;
		this.gendernew5 = gendernew5;
		this.tenderness = tenderness;
		this.gender40 = gender40;
		this.gendernew6 = gendernew6;
		this.gender41 = gender41;
		this.noted = noted;
		this.rangeofmotion = rangeofmotion;
		this.painres1 = painres1;
		this.tonicity1 = tonicity1;
		this.painres2 = painres2;
		this.tonicity2 = tonicity2;
		this.painres3 = painres3;
		this.tonicity3 = tonicity3;
		this.painres4 = painres4;
		this.tonicity4 = tonicity4;
		this.painres5 = painres5;
		this.tonicity5 = tonicity5;
		this.painres6 = painres6;
		this.tonicity6 = tonicity6;
		this.painres7 = painres7;
		this.tonicity7 = tonicity7;
		this.painres8 = painres8;
		this.tonicity8 = tonicity8;
		this.painres9 = painres9;
		this.tonicity9 = tonicity9;
		this.painres10 = painres10;
		this.tonicity10 = tonicity10;
		this.painres11 = painres11;
		this.tonicity11 = tonicity11;
		this.painres12 = painres12;
		this.tonicity12 = tonicity12;
		this.dermatome = dermatome;
		this.gender42 = gender42;
		this.gender43 = gender43;
		this.gender44 = gender44;
		this.level1 = level1;
		this.level = level;
		this.gender45 = gender45;
		this.level2 = level2;
		this.orthopedictest1 = orthopedictest1;
		this.jacksonsr = jacksonsr;
		this.jacksonsl = jacksonsl;
		this.orthopedictest2 = orthopedictest2;
		this.doublelegraiser = doublelegraiser;
		this.doublelegraisel = doublelegraisel;
		this.orthopedictest3 = orthopedictest3;
		this.yeomansr = yeomansr;
		this.yeomansl = yeomansl;
		this.orthopedictest4 = orthopedictest4;
		this.foraminalr = foraminalr;
		this.foraminall = foraminall;
		this.orthopedictest5 = orthopedictest5;
		this.shoulderr=shoulderr;
		this.shoulderl=shoulderl;
		this.orthopedictest6=orthopedictest6;
		this.orthopedicr = orthopedicr;
		this.orthopedicl = orthopedicl;
		this.gender46 = gender46;
		this.gender47 = gender47;
		this.gender48 = gender48;
		this.gender49 = gender49;
		this.gender50 = gender50;
		this.gender51 = gender51;
		this.fracture = fracture;
		this.gender52 = gender52;
		this.gender53 = gender53;
		this.gender54 = gender54;
		this.presentlevel = presentlevel;
		this.gender55 = gender55;
		this.osteophytes = osteophytes;
		this.gender56 = gender56;
		this.gender57 = gender57;
		this.gender58 = gender58;
		this.gender59 = gender59;
		this.gender60 = gender60;
		this.subluxations = subluxations;
		this.icd1 = icd1;
		this.description1 = description1;
		this.icd2 = icd2;
		this.description2 = description2;
		this.icd3 = icd3;
		this.description3 = description3;
		this.icd4 = icd4;
		this.description4 = description4;
		this.gender61 = gender61;
		this.pname = pname;
		this.date9 = date9;
		this.gender62 = gender62;
		this.gender63 = gender63;
		this.pname1 = pname1;
		this.datenew = datenew;
		this.gender64 = gender64;
		this.gender65 = gender65;
		this.poor = poor;
		this.gender67 = gender67;
		this.gender68 = gender68;
		this.gender69 = gender69;
		this.gender70 = gender70;
		this.pname2 = pname2;
		this.gender71 = gender71;
		this.gender72 = gender72;
		this.gender73 = gender73;
		this.gender74 = gender74;
		this.gender75 = gender75;
		this.pname3 = pname3;
		this.sign = sign;
	}

	public String getNarrativeno() {
		return narrativeno;
	}

	public void setNarrativeno(String narrativeno) {
		this.narrativeno = narrativeno;
	}

	public String getReportdate() {
		return reportdate;
	}

	public void setReportdate(String reportdate) {
		this.reportdate = reportdate;
	}

	public String getPatient() {
		return patient;
	}

	public void setPatient(String patient) {
		this.patient = patient;
	}

	public String getDateofinjury() {
		return dateofinjury;
	}

	public void setDateofinjury(String dateofinjury) {
		this.dateofinjury = dateofinjury;
	}

	public String getDateoffirstvisit() {
		return dateoffirstvisit;
	}

	public void setDateoffirstvisit(String dateoffirstvisit) {
		this.dateoffirstvisit = dateoffirstvisit;
	}

	public String getTowhom() {
		return towhom;
	}

	public void setTowhom(String towhom) {
		this.towhom = towhom;
	}

	public String getPatientname() {
		return patientname;
	}

	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAccident() {
		return accident;
	}

	public void setAccident(String accident) {
		this.accident = accident;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDateofconsultation() {
		return dateofconsultation;
	}

	public void setDateofconsultation(String dateofconsultation) {
		this.dateofconsultation = dateofconsultation;
	}

	public String getGender1() {
		return gender1;
	}

	public void setGender1(String gender1) {
		this.gender1 = gender1;
	}

	public String getGender2() {
		return gender2;
	}

	public void setGender2(String gender2) {
		this.gender2 = gender2;
	}

	public String getAccidentdate() {
		return accidentdate;
	}

	public void setAccidentdate(String accidentdate) {
		this.accidentdate = accidentdate;
	}

	public String getGender3() {
		return gender3;
	}

	public void setGender3(String gender3) {
		this.gender3 = gender3;
	}

	public String getGender4() {
		return gender4;
	}

	public void setGender4(String gender4) {
		this.gender4 = gender4;
	}

	public String getGender5() {
		return gender5;
	}

	public void setGender5(String gender5) {
		this.gender5 = gender5;
	}

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public String getGendernew() {
		return gendernew;
	}

	public void setGendernew(String gendernew) {
		this.gendernew = gendernew;
	}

	public String getGender6() {
		return gender6;
	}

	public void setGender6(String gender6) {
		this.gender6 = gender6;
	}

	public String getGender7() {
		return gender7;
	}

	public void setGender7(String gender7) {
		this.gender7 = gender7;
	}

	public String getGender8() {
		return gender8;
	}

	public void setGender8(String gender8) {
		this.gender8 = gender8;
	}

	public String getGender9() {
		return gender9;
	}

	public void setGender9(String gender9) {
		this.gender9 = gender9;
	}
	 
	
	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}
     
	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getGender10() {
		return gender10;
	}

	public void setGender10(String gender10) {
		this.gender10 = gender10;
	}

	public String getSlammed() {
		return slammed;
	}

	public void setSlammed(String slammed) {
		this.slammed = slammed;
	}

	public String getSlammed1() {
		return slammed1;
	}

	public void setSlammed1(String slammed1) {
		this.slammed1 = slammed1;
	}

	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}

	public String getAppeared() {
		return appeared;
	}

	public void setAppeared(String appeared) {
		this.appeared = appeared;
	}

	public String getPriordate() {
		return priordate;
	}

	public void setPriordate(String priordate) {
		this.priordate = priordate;
	}

	public String getGender11() {
		return gender11;
	}

	public void setGender11(String gender11) {
		this.gender11 = gender11;
	}

	public String getName3() {
		return name3;
	}

	public void setName3(String name3) {
		this.name3 = name3;
	}

	public String getGender12() {
		return gender12;
	}

	public void setGender12(String gender12) {
		this.gender12 = gender12;
	}

	public String getPastmedicalhistory() {
		return pastmedicalhistory;
	}

	public void setPastmedicalhistory(String pastmedicalhistory) {
		this.pastmedicalhistory = pastmedicalhistory;
	}

	public String getGender13() {
		return gender13;
	}

	public void setGender13(String gender13) {
		this.gender13 = gender13;
	}

	public String getGender14() {
		return gender14;
	}

	public void setGender14(String gender14) {
		this.gender14 = gender14;
	}

	public String getGender15() {
		return gender15;
	}

	public void setGender15(String gender15) {
		this.gender15 = gender15;
	}

	public String getGender16() {
		return gender16;
	}

	public void setGender16(String gender16) {
		this.gender16 = gender16;
	}

	public String getGender17() {
		return gender17;
	}

	public void setGender17(String gender17) {
		this.gender17 = gender17;
	}

	public String getGender18() {
		return gender18;
	}

	public void setGender18(String gender18) {
		this.gender18 = gender18;
	}

	public String getName4() {
		return name4;
	}

	public void setName4(String name4) {
		this.name4 = name4;
	}

	public String getClinicdate() {
		return clinicdate;
	}

	public void setClinicdate(String clinicdate) {
		this.clinicdate = clinicdate;
	}

	public String getGender19() {
		return gender19;
	}

	public void setGender19(String gender19) {
		this.gender19 = gender19;
	}

	public String getVehicleaccident() {
		return vehicleaccident;
	}

	public void setVehicleaccident(String vehicleaccident) {
		this.vehicleaccident = vehicleaccident;
	}

	public String getGender20() {
		return gender20;
	}

	public void setGender20(String gender20) {
		this.gender20 = gender20;
	}

	public String getGender21() {
		return gender21;
	}

	public void setGender21(String gender21) {
		this.gender21 = gender21;
	}

	public String getAllieviated() {
		return allieviated;
	}

	public void setAllieviated(String allieviated) {
		this.allieviated = allieviated;
	}

	public String getGender22() {
		return gender22;
	}

	public void setGender22(String gender22) {
		this.gender22 = gender22;
	}

	public String getGender23() {
		return gender23;
	}

	public void setGender23(String gender23) {
		this.gender23 = gender23;
	}

	public String getGender24() {
		return gender24;
	}

	public void setGender24(String gender24) {
		this.gender24 = gender24;
	}

	public String getGendernew2() {
		return gendernew2;
	}

	public void setGendernew2(String gendernew2) {
		this.gendernew2 = gendernew2;
	}

	public String getGendernew3() {
		return gendernew3;
	}

	public void setGendernew3(String gendernew3) {
		this.gendernew3 = gendernew3;
	}

	public String getGender25() {
		return gender25;
	}

	public void setGender25(String gender25) {
		this.gender25 = gender25;
	}

	public String getGender26() {
		return gender26;
	}

	public void setGender26(String gender26) {
		this.gender26 = gender26;
	}

	public String getGender27() {
		return gender27;
	}

	public void setGender27(String gender27) {
		this.gender27 = gender27;
	}

	public String getGender28() {
		return gender28;
	}

	public void setGender28(String gender28) {
		this.gender28 = gender28;
	}

	public String getGender29() {
		return gender29;
	}

	public void setGender29(String gender29) {
		this.gender29 = gender29;
	}

	public String getGender30() {
		return gender30;
	}

	public void setGender30(String gender30) {
		this.gender30 = gender30;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAge1() {
		return age1;
	}

	public void setAge1(String age1) {
		this.age1 = age1;
	}

	public String getLb() {
		return lb;
	}

	public void setLb(String lb) {
		this.lb = lb;
	}

	public String getGender31() {
		return gender31;
	}

	public void setGender31(String gender31) {
		this.gender31 = gender31;
	}

	public String getGender32() {
		return gender32;
	}

	public void setGender32(String gender32) {
		this.gender32 = gender32;
	}

	public String getGender33() {
		return gender33;
	}

	public void setGender33(String gender33) {
		this.gender33 = gender33;
	}

	public String getGender34() {
		return gender34;
	}

	public void setGender34(String gender34) {
		this.gender34 = gender34;
	}

	public String getGendernew4() {
		return gendernew4;
	}

	public void setGendernew4(String gendernew4) {
		this.gendernew4 = gendernew4;
	}

	public String getGender35() {
		return gender35;
	}

	public void setGender35(String gender35) {
		this.gender35 = gender35;
	}

	public String getGender36() {
		return gender36;
	}

	public void setGender36(String gender36) {
		this.gender36 = gender36;
	}

	public String getGender37() {
		return gender37;
	}

	public void setGender37(String gender37) {
		this.gender37 = gender37;
	}

	public String getGender38() {
		return gender38;
	}

	public void setGender38(String gender38) {
		this.gender38 = gender38;
	}

	public String getGender39() {
		return gender39;
	}

	public void setGender39(String gender39) {
		this.gender39 = gender39;
	}

	public String getGendernew5() {
		return gendernew5;
	}

	public void setGendernew5(String gendernew5) {
		this.gendernew5 = gendernew5;
	}

	public String getTenderness() {
		return tenderness;
	}

	public void setTenderness(String tenderness) {
		this.tenderness = tenderness;
	}

	public String getGender40() {
		return gender40;
	}

	public void setGender40(String gender40) {
		this.gender40 = gender40;
	}

	public String getGendernew6() {
		return gendernew6;
	}

	public void setGendernew6(String gendernew6) {
		this.gendernew6 = gendernew6;
	}

	public String getGender41() {
		return gender41;
	}

	public void setGender41(String gender41) {
		this.gender41 = gender41;
	}

	public String getNoted() {
		return noted;
	}

	public void setNoted(String noted) {
		this.noted = noted;
	}

	public String getRangeofmotion() {
		return rangeofmotion;
	}

	public void setRangeofmotion(String rangeofmotion) {
		this.rangeofmotion = rangeofmotion;
	}

	public String getPainres1() {
		return painres1;
	}

	public void setPainres1(String painres1) {
		this.painres1 = painres1;
	}

	public String getTonicity1() {
		return tonicity1;
	}

	public void setTonicity1(String tonicity1) {
		this.tonicity1 = tonicity1;
	}

	public String getPainres2() {
		return painres2;
	}

	public void setPainres2(String painres2) {
		this.painres2 = painres2;
	}

	public String getTonicity2() {
		return tonicity2;
	}

	public void setTonicity2(String tonicity2) {
		this.tonicity2 = tonicity2;
	}

	public String getPainres3() {
		return painres3;
	}

	public void setPainres3(String painres3) {
		this.painres3 = painres3;
	}

	public String getTonicity3() {
		return tonicity3;
	}

	public void setTonicity3(String tonicity3) {
		this.tonicity3 = tonicity3;
	}

	public String getPainres4() {
		return painres4;
	}

	public void setPainres4(String painres4) {
		this.painres4 = painres4;
	}

	public String getTonicity4() {
		return tonicity4;
	}

	public void setTonicity4(String tonicity4) {
		this.tonicity4 = tonicity4;
	}

	public String getPainres5() {
		return painres5;
	}

	public void setPainres5(String painres5) {
		this.painres5 = painres5;
	}

	public String getTonicity5() {
		return tonicity5;
	}

	public void setTonicity5(String tonicity5) {
		this.tonicity5 = tonicity5;
	}

	public String getPainres6() {
		return painres6;
	}

	public void setPainres6(String painres6) {
		this.painres6 = painres6;
	}

	public String getTonicity6() {
		return tonicity6;
	}

	public void setTonicity6(String tonicity6) {
		this.tonicity6 = tonicity6;
	}

	public String getPainres7() {
		return painres7;
	}

	public void setPainres7(String painres7) {
		this.painres7 = painres7;
	}

	public String getTonicity7() {
		return tonicity7;
	}

	public void setTonicity7(String tonicity7) {
		this.tonicity7 = tonicity7;
	}

	public String getPainres8() {
		return painres8;
	}

	public void setPainres8(String painres8) {
		this.painres8 = painres8;
	}

	public String getTonicity8() {
		return tonicity8;
	}

	public void setTonicity8(String tonicity8) {
		this.tonicity8 = tonicity8;
	}

	public String getPainres9() {
		return painres9;
	}

	public void setPainres9(String painres9) {
		this.painres9 = painres9;
	}

	public String getTonicity9() {
		return tonicity9;
	}

	public void setTonicity9(String tonicity9) {
		this.tonicity9 = tonicity9;
	}

	public String getPainres10() {
		return painres10;
	}

	public void setPainres10(String painres10) {
		this.painres10 = painres10;
	}

	public String getTonicity10() {
		return tonicity10;
	}

	public void setTonicity10(String tonicity10) {
		this.tonicity10 = tonicity10;
	}

	public String getPainres11() {
		return painres11;
	}

	public void setPainres11(String painres11) {
		this.painres11 = painres11;
	}

	public String getTonicity11() {
		return tonicity11;
	}

	public void setTonicity11(String tonicity11) {
		this.tonicity11 = tonicity11;
	}

	public String getPainres12() {
		return painres12;
	}

	public void setPainres12(String painres12) {
		this.painres12 = painres12;
	}

	public String getTonicity12() {
		return tonicity12;
	}

	public void setTonicity12(String tonicity12) {
		this.tonicity12 = tonicity12;
	}

	public String getDermatome() {
		return dermatome;
	}

	public void setDermatome(String dermatome) {
		this.dermatome = dermatome;
	}

	public String getGender42() {
		return gender42;
	}

	public void setGender42(String gender42) {
		this.gender42 = gender42;
	}

	public String getGender43() {
		return gender43;
	}

	public void setGender43(String gender43) {
		this.gender43 = gender43;
	}

	public String getGender44() {
		return gender44;
	}

	public void setGender44(String gender44) {
		this.gender44 = gender44;
	}

	public String getLevel1() {
		return level1;
	}

	public void setLevel1(String level1) {
		this.level1 = level1;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getGender45() {
		return gender45;
	}

	public void setGender45(String gender45) {
		this.gender45 = gender45;
	}

	public String getLevel2() {
		return level2;
	}

	public void setLevel2(String level2) {
		this.level2 = level2;
	}

	public String getOrthopedictest1() {
		return orthopedictest1;
	}

	public void setOrthopedictest1(String orthopedictest1) {
		this.orthopedictest1 = orthopedictest1;
	}

	public String getJacksonsr() {
		return jacksonsr;
	}

	public void setJacksonsr(String jacksonsr) {
		this.jacksonsr = jacksonsr;
	}

	public String getJacksonsl() {
		return jacksonsl;
	}

	public void setJacksonsl(String jacksonsl) {
		this.jacksonsl = jacksonsl;
	}

	public String getOrthopedictest2() {
		return orthopedictest2;
	}

	public void setOrthopedictest2(String orthopedictest2) {
		this.orthopedictest2 = orthopedictest2;
	}

	public String getDoublelegraiser() {
		return doublelegraiser;
	}

	public void setDoublelegraiser(String doublelegraiser) {
		this.doublelegraiser = doublelegraiser;
	}

	public String getDoublelegraisel() {
		return doublelegraisel;
	}

	public void setDoublelegraisel(String doublelegraisel) {
		this.doublelegraisel = doublelegraisel;
	}

	public String getOrthopedictest3() {
		return orthopedictest3;
	}

	public void setOrthopedictest3(String orthopedictest3) {
		this.orthopedictest3 = orthopedictest3;
	}

	public String getYeomansr() {
		return yeomansr;
	}

	public void setYeomansr(String yeomansr) {
		this.yeomansr = yeomansr;
	}

	public String getYeomansl() {
		return yeomansl;
	}

	public void setYeomansl(String yeomansl) {
		this.yeomansl = yeomansl;
	}

	public String getOrthopedictest4() {
		return orthopedictest4;
	}

	public void setOrthopedictest4(String orthopedictest4) {
		this.orthopedictest4 = orthopedictest4;
	}

	public String getForaminalr() {
		return foraminalr;
	}

	public void setForaminalr(String foraminalr) {
		this.foraminalr = foraminalr;
	}

	public String getForaminall() {
		return foraminall;
	}

	public void setForaminall(String foraminall) {
		this.foraminall = foraminall;
	}

	public String getOrthopedictest5() {
		return orthopedictest5;
	}

	public void setOrthopedictest5(String orthopedictest5) {
		this.orthopedictest5 = orthopedictest5;
	}

	public String getOrthopedicr() {
		return orthopedicr;
	}

	public void setOrthopedicr(String orthopedicr) {
		this.orthopedicr = orthopedicr;
	}

	public String getShoulderr() {
		return shoulderr;
	}

	public void setShoulderr(String shoulderr) {
		this.shoulderr = shoulderr;
	}

	public String getShoulderl() {
		return shoulderl;
	}

	public void setShoulderl(String shoulderl) {
		this.shoulderl = shoulderl;
	}

	public String getOrthopedictest6() {
		return orthopedictest6;
	}

	public void setOrthopedictest6(String orthopedictest6) {
		this.orthopedictest6 = orthopedictest6;
	}

	public String getOrthopedicl() {
		return orthopedicl;
	}

	public void setOrthopedicl(String orthopedicl) {
		this.orthopedicl = orthopedicl;
	}

	public String getGender46() {
		return gender46;
	}

	public void setGender46(String gender46) {
		this.gender46 = gender46;
	}

	public String getGender47() {
		return gender47;
	}

	public void setGender47(String gender47) {
		this.gender47 = gender47;
	}

	public String getGender48() {
		return gender48;
	}

	public void setGender48(String gender48) {
		this.gender48 = gender48;
	}

	public String getGender49() {
		return gender49;
	}

	public void setGender49(String gender49) {
		this.gender49 = gender49;
	}

	public String getGender50() {
		return gender50;
	}

	public void setGender50(String gender50) {
		this.gender50 = gender50;
	}

	public String getGender51() {
		return gender51;
	}

	public void setGender51(String gender51) {
		this.gender51 = gender51;
	}

	public String getFracture() {
		return fracture;
	}

	public void setFracture(String fracture) {
		this.fracture = fracture;
	}

	public String getGender52() {
		return gender52;
	}

	public void setGender52(String gender52) {
		this.gender52 = gender52;
	}

	public String getGender53() {
		return gender53;
	}

	public void setGender53(String gender53) {
		this.gender53 = gender53;
	}

	public String getGender54() {
		return gender54;
	}

	public void setGender54(String gender54) {
		this.gender54 = gender54;
	}

	public String getPresentlevel() {
		return presentlevel;
	}

	public void setPresentlevel(String presentlevel) {
		this.presentlevel = presentlevel;
	}

	public String getGender55() {
		return gender55;
	}

	public void setGender55(String gender55) {
		this.gender55 = gender55;
	}

	public String getOsteophytes() {
		return osteophytes;
	}

	public void setOsteophytes(String osteophytes) {
		this.osteophytes = osteophytes;
	}

	public String getGender56() {
		return gender56;
	}

	public void setGender56(String gender56) {
		this.gender56 = gender56;
	}

	public String getGender57() {
		return gender57;
	}

	public void setGender57(String gender57) {
		this.gender57 = gender57;
	}

	public String getGender58() {
		return gender58;
	}

	public void setGender58(String gender58) {
		this.gender58 = gender58;
	}

	public String getGender59() {
		return gender59;
	}

	public void setGender59(String gender59) {
		this.gender59 = gender59;
	}

	public String getGender60() {
		return gender60;
	}

	public void setGender60(String gender60) {
		this.gender60 = gender60;
	}

	public String getSubluxations() {
		return subluxations;
	}

	public void setSubluxations(String subluxations) {
		this.subluxations = subluxations;
	}

	public String getIcd1() {
		return icd1;
	}

	public void setIcd1(String icd1) {
		this.icd1 = icd1;
	}

	public String getDescription1() {
		return description1;
	}

	public void setDescription1(String description1) {
		this.description1 = description1;
	}

	public String getIcd2() {
		return icd2;
	}

	public void setIcd2(String icd2) {
		this.icd2 = icd2;
	}

	public String getDescription2() {
		return description2;
	}

	public void setDescription2(String description2) {
		this.description2 = description2;
	}

	public String getIcd3() {
		return icd3;
	}

	public void setIcd3(String icd3) {
		this.icd3 = icd3;
	}

	public String getDescription3() {
		return description3;
	}

	public void setDescription3(String description3) {
		this.description3 = description3;
	}

	public String getIcd4() {
		return icd4;
	}

	public void setIcd4(String icd4) {
		this.icd4 = icd4;
	}

	public String getDescription4() {
		return description4;
	}

	public void setDescription4(String description4) {
		this.description4 = description4;
	}

	public String getGender61() {
		return gender61;
	}

	public void setGender61(String gender61) {
		this.gender61 = gender61;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDate9() {
		return date9;
	}

	public void setDate9(String date9) {
		this.date9 = date9;
	}

	public String getGender62() {
		return gender62;
	}

	public void setGender62(String gender62) {
		this.gender62 = gender62;
	}

	public String getGender63() {
		return gender63;
	}

	public void setGender63(String gender63) {
		this.gender63 = gender63;
	}

	public String getPname1() {
		return pname1;
	}

	public void setPname1(String pname1) {
		this.pname1 = pname1;
	}

	public String getDatenew() {
		return datenew;
	}

	public void setDatenew(String datenew) {
		this.datenew = datenew;
	}

	public String getGender64() {
		return gender64;
	}

	public void setGender64(String gender64) {
		this.gender64 = gender64;
	}

	public String getGender65() {
		return gender65;
	}

	public void setGender65(String gender65) {
		this.gender65 = gender65;
	}

	public String getPoor() {
		return poor;
	}

	public void setPoor(String poor) {
		this.poor = poor;
	}

	public String getGender67() {
		return gender67;
	}

	public void setGender67(String gender67) {
		this.gender67 = gender67;
	}

	public String getGender68() {
		return gender68;
	}

	public void setGender68(String gender68) {
		this.gender68 = gender68;
	}

	public String getGender69() {
		return gender69;
	}

	public void setGender69(String gender69) {
		this.gender69 = gender69;
	}

	public String getGender70() {
		return gender70;
	}

	public void setGender70(String gender70) {
		this.gender70 = gender70;
	}

	public String getPname2() {
		return pname2;
	}

	public void setPname2(String pname2) {
		this.pname2 = pname2;
	}

	public String getGender71() {
		return gender71;
	}

	public void setGender71(String gender71) {
		this.gender71 = gender71;
	}

	public String getGender72() {
		return gender72;
	}

	public void setGender72(String gender72) {
		this.gender72 = gender72;
	}

	public String getGender73() {
		return gender73;
	}

	public void setGender73(String gender73) {
		this.gender73 = gender73;
	}

	public String getGender74() {
		return gender74;
	}

	public void setGender74(String gender74) {
		this.gender74 = gender74;
	}

	public String getGender75() {
		return gender75;
	}

	public void setGender75(String gender75) {
		this.gender75 = gender75;
	}

	public String getPname3() {
		return pname3;
	}

	public void setPname3(String pname3) {
		this.pname3 = pname3;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}
	
	
}