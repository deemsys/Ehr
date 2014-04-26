package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Dcfeeslip {
	
	private String dcfeeid;
	
	private String username;
	
	@NotEmpty
	private String pid;
	
	@NotEmpty
	private String date;
	
	@NotEmpty
	private String pname;
	
	@NotEmpty
	private String dr1;
	
	
	private String rpt;
	
	private String pta;
	
	private int initialemlimited;
	private int initialexpanded;
	private int initialdetailed;
	private int initialemextended;
	private int estpatientltd;
	private int estpatientexp;
	private int estpatientdetails;
	private int estpatientcomp;
	private int consultphys;
	private int consultdetail;
	private int consultcomp;
	private int patientexp;
	private int patientdetails;
	private int patientcomp;
	private int telephonebrief;
	private int telephoneintermediate;
	private int telephonecomp;
	private int tractionmechanical;
	private int electricstim;
	private int vasopneumatic;
	private int paraffin;
	private int microwave;
	private int whirlpool;
	private int diathermy;
	private int infrared;
	private int ultraviolet;
	private int manualelectricalstim;
	private int iontophoresis;
	private int contrastbaths;
	private int ultrasound;
	private int unlisted;
	private int therapeutic;
	private int neuromuscular;
	private int aquatic;
	private int gaittraining;
	private int massage;
	private int manualtherapy;
	private int unlistedother;
	private int grouptherapy;
	private int orthotics;
	private int kinetic;
	private int adlselfcare;
	private int reintegration;
	private int acupuncturewo;
	private int acupuncturew;
	private int spine12;
	private int spine34;
	private int spine5;
	private int extremity;
	private int routine;
	private int muscle;
	private int musclehand;
	private int rangeofmotion;
	private int rangeofmotionhand;
	private int ncv;
	private int ncvw;
	private int ncvea;
	private int ssepupper;
	private int sseplower;
	private int ssephead;
	private int hreflex;
	private int physicalperformance;
	private int functionalcapacity;
	private int text1;
	private int text2;
	private int supplies;
	private int patienteducation;
	private int medicaltestimony;
	private int insuranceform;
	private int teamconference;
	private int completespine;
	private int cervical23;
	private int cervical4;
	private int cervical67;
	private int thoracic4;
	private int thoracic2;
	private int scoliosis;
	private int lumbosacral;
	private int lumbosacral4;
	private int pelvis2;
	private int lumbarcomplete;
	private int elbow2;
	private int wrist2;
	private int hand2;
	private int knee2;
	private int ankle2;
	private int foot2;
	private int readotherfilms;
	private int cervicalpillow;
	private int lumbarsupport;
	private int orthoticcustoml;
	private int orthoticcustomr;
	private int tensunit;
	private int coldpack;
	private int wristsplint;
	private int heellift;
	private int exerciseball;
	private int exerciseband;
	private int unlisteditem;
	private int charges;
	private int less;
	private int balance;
	private String payment;
	private String paymentcashcheck;
	private String amex;
	private String discover;
	private String mc;
	private String visa;
	private String cardsign;
	@NotEmpty
	private String date1;
	@NotEmpty
	private String parentsign;
	@NotEmpty
	private String doctorsign;
	private String week;
	private String months;
	
	public Dcfeeslip()
	{
		
	}

	public Dcfeeslip(String dcfeeid, String pid, String date, String pname,
			String dr1, String rpt, String pta, int initialemlimited,
			int initialexpanded, int initialdetailed,
			int initialemextended, int estpatientltd,
			int estpatientexp, int estpatientdetails,
			int estpatientcomp, int consultphys, int consultdetail,
			int consultcomp, int patientexp, int patientdetails,
			int patientcomp, int telephonebrief,
			int telephoneintermediate, int telephonecomp,
			int tractionmechanical, int electricstim,
			int vasopneumatic, int paraffin, int microwave,
			int whirlpool, int diathermy, int infrared,
			int ultraviolet, int manualelectricalstim,
			int iontophoresis, int contrastbaths, int ultrasound,
			int unlisted, int therapeutic, int neuromuscular,
			int aquatic, int gaittraining, int massage,
			int manualtherapy, int unlistedother, int grouptherapy,
			int orthotics, int kinetic, int adlselfcare,
			int reintegration, int acupuncturewo, int acupuncturew,
			int spine12, int spine34, int spine5,
			int extremity, int routine, int muscle,
			int musclehand, int rangeofmotion,
			int rangeofmotionhand, int ncv, int ncvw,
			int ncvea, int ssepupper, int sseplower,
			int ssephead, int hreflex, int physicalperformance,
			int functionalcapacity, int text1, int text2,
			int supplies, int patienteducation,
			int medicaltestimony, int insuranceform,
			int teamconference, int completespine, int cervical23,
			int cervical4, int cervical67, int thoracic4,
			int thoracic2, int scoliosis, int lumbosacral,
			int lumbosacral4, int pelvis2, int lumbarcomplete,
			int elbow2, int wrist2, int hand2, int knee2,
			int ankle2, int foot2, int readotherfilms,
			int cervicalpillow, int lumbarsupport,
			int orthoticcustoml, int orthoticcustomr, int tensunit,
			int coldpack, int wristsplint, int heellift,
			int exerciseball, int exerciseband, int unlisteditem,
			int charges, int less, int balance, String payment,
			String paymentcashcheck, String amex, String discover, String mc,
			String visa, String cardsign, String date1, String parentsign,
			String doctorsign, String week, String months) {
		super();
		this.dcfeeid = dcfeeid;
		this.pid = pid;
		this.date = date;
		this.pname = pname;
		this.dr1 = dr1;
		this.rpt = rpt;
		this.pta = pta;
		this.initialemlimited = initialemlimited;
		this.initialexpanded = initialexpanded;
		this.initialdetailed = initialdetailed;
		this.initialemextended = initialemextended;
		this.estpatientltd = estpatientltd;
		this.estpatientexp = estpatientexp;
		this.estpatientdetails = estpatientdetails;
		this.estpatientcomp = estpatientcomp;
		this.consultphys = consultphys;
		this.consultdetail = consultdetail;
		this.consultcomp = consultcomp;
		this.patientexp = patientexp;
		this.patientdetails = patientdetails;
		this.patientcomp = patientcomp;
		this.telephonebrief = telephonebrief;
		this.telephoneintermediate = telephoneintermediate;
		this.telephonecomp = telephonecomp;
		this.tractionmechanical = tractionmechanical;
		this.electricstim = electricstim;
		this.vasopneumatic = vasopneumatic;
		this.paraffin = paraffin;
		this.microwave = microwave;
		this.whirlpool = whirlpool;
		this.diathermy = diathermy;
		this.infrared = infrared;
		this.ultraviolet = ultraviolet;
		this.manualelectricalstim = manualelectricalstim;
		this.iontophoresis = iontophoresis;
		this.contrastbaths = contrastbaths;
		this.ultrasound = ultrasound;
		this.unlisted = unlisted;
		this.therapeutic = therapeutic;
		this.neuromuscular = neuromuscular;
		this.aquatic = aquatic;
		this.gaittraining = gaittraining;
		this.massage = massage;
		this.manualtherapy = manualtherapy;
		this.unlistedother = unlistedother;
		this.grouptherapy = grouptherapy;
		this.orthotics = orthotics;
		this.kinetic = kinetic;
		this.adlselfcare = adlselfcare;
		this.reintegration = reintegration;
		this.acupuncturewo = acupuncturewo;
		this.acupuncturew = acupuncturew;
		this.spine12 = spine12;
		this.spine34 = spine34;
		this.spine5 = spine5;
		this.extremity = extremity;
		this.routine = routine;
		this.muscle = muscle;
		this.musclehand = musclehand;
		this.rangeofmotion = rangeofmotion;
		this.rangeofmotionhand = rangeofmotionhand;
		this.ncv = ncv;
		this.ncvw = ncvw;
		this.ncvea = ncvea;
		this.ssepupper = ssepupper;
		this.sseplower = sseplower;
		this.ssephead = ssephead;
		this.hreflex = hreflex;
		this.physicalperformance = physicalperformance;
		this.functionalcapacity = functionalcapacity;
		this.text1 = text1;
		this.text2 = text2;
		this.supplies = supplies;
		this.patienteducation = patienteducation;
		this.medicaltestimony = medicaltestimony;
		this.insuranceform = insuranceform;
		this.teamconference = teamconference;
		this.completespine = completespine;
		this.cervical23 = cervical23;
		this.cervical4 = cervical4;
		this.cervical67 = cervical67;
		this.thoracic4 = thoracic4;
		this.thoracic2 = thoracic2;
		this.scoliosis = scoliosis;
		this.lumbosacral = lumbosacral;
		this.lumbosacral4 = lumbosacral4;
		this.pelvis2 = pelvis2;
		this.lumbarcomplete = lumbarcomplete;
		this.elbow2 = elbow2;
		this.wrist2 = wrist2;
		this.hand2 = hand2;
		this.knee2 = knee2;
		this.ankle2 = ankle2;
		this.foot2 = foot2;
		this.readotherfilms = readotherfilms;
		this.cervicalpillow = cervicalpillow;
		this.lumbarsupport = lumbarsupport;
		this.orthoticcustoml = orthoticcustoml;
		this.orthoticcustomr = orthoticcustomr;
		this.tensunit = tensunit;
		this.coldpack = coldpack;
		this.wristsplint = wristsplint;
		this.heellift = heellift;
		this.exerciseball = exerciseball;
		this.exerciseband = exerciseband;
		this.unlisteditem = unlisteditem;
		this.charges = charges;
		this.less = less;
		this.balance = balance;
		this.payment = payment;
		this.paymentcashcheck = paymentcashcheck;
		this.amex = amex;
		this.discover = discover;
		this.mc = mc;
		this.visa = visa;
		this.cardsign = cardsign;
		this.date1 = date1;
		this.parentsign = parentsign;
		this.doctorsign = doctorsign;
		this.week = week;
		this.months = months;
	}

	public String getDcfeeid() {
		return dcfeeid;
	}

	public void setDcfeeid(String dcfeeid) {
		this.dcfeeid = dcfeeid;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
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

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDr1() {
		return dr1;
	}

	public void setDr1(String dr1) {
		this.dr1 = dr1;
	}

	public String getRpt() {
		return rpt;
	}

	public void setRpt(String rpt) {
		this.rpt = rpt;
	}

	public String getPta() {
		return pta;
	}

	public void setPta(String pta) {
		this.pta = pta;
	}

	public int getInitialemlimited() {
		return initialemlimited;
	}

	public void setInitialemlimited(int initialemlimited) {
		this.initialemlimited = initialemlimited;
	}

	public int getInitialexpanded() {
		return initialexpanded;
	}

	public void setInitialexpanded(int initialexpanded) {
		this.initialexpanded = initialexpanded;
	}

	public int getInitialdetailed() {
		return initialdetailed;
	}

	public void setInitialdetailed(int initialdetailed) {
		this.initialdetailed = initialdetailed;
	}

	public int getInitialemextended() {
		return initialemextended;
	}

	public void setInitialemextended(int initialemextended) {
		this.initialemextended = initialemextended;
	}

	public int getEstpatientltd() {
		return estpatientltd;
	}

	public void setEstpatientltd(int estpatientltd) {
		this.estpatientltd = estpatientltd;
	}

	public int getEstpatientexp() {
		return estpatientexp;
	}

	public void setEstpatientexp(int estpatientexp) {
		this.estpatientexp = estpatientexp;
	}

	public int getEstpatientdetails() {
		return estpatientdetails;
	}

	public void setEstpatientdetails(int estpatientdetails) {
		this.estpatientdetails = estpatientdetails;
	}

	public int getEstpatientcomp() {
		return estpatientcomp;
	}

	public void setEstpatientcomp(int estpatientcomp) {
		this.estpatientcomp = estpatientcomp;
	}

	public int getConsultphys() {
		return consultphys;
	}

	public void setConsultphys(int consultphys) {
		this.consultphys = consultphys;
	}

	public int getConsultdetail() {
		return consultdetail;
	}

	public void setConsultdetail(int consultdetail) {
		this.consultdetail = consultdetail;
	}

	public int getConsultcomp() {
		return consultcomp;
	}

	public void setConsultcomp(int consultcomp) {
		this.consultcomp = consultcomp;
	}

	public int getPatientexp() {
		return patientexp;
	}

	public void setPatientexp(int patientexp) {
		this.patientexp = patientexp;
	}

	public int getPatientdetails() {
		return patientdetails;
	}

	public void setPatientdetails(int patientdetails) {
		this.patientdetails = patientdetails;
	}

	public int getPatientcomp() {
		return patientcomp;
	}

	public void setPatientcomp(int patientcomp) {
		this.patientcomp = patientcomp;
	}

	public int getTelephonebrief() {
		return telephonebrief;
	}

	public void setTelephonebrief(int telephonebrief) {
		this.telephonebrief = telephonebrief;
	}

	public int getTelephoneintermediate() {
		return telephoneintermediate;
	}

	public void setTelephoneintermediate(int telephoneintermediate) {
		this.telephoneintermediate = telephoneintermediate;
	}

	public int getTelephonecomp() {
		return telephonecomp;
	}

	public void setTelephonecomp(int telephonecomp) {
		this.telephonecomp = telephonecomp;
	}

	public int getTractionmechanical() {
		return tractionmechanical;
	}

	public void setTractionmechanical(int tractionmechanical) {
		this.tractionmechanical = tractionmechanical;
	}

	public int getElectricstim() {
		return electricstim;
	}

	public void setElectricstim(int electricstim) {
		this.electricstim = electricstim;
	}

	public int getVasopneumatic() {
		return vasopneumatic;
	}

	public void setVasopneumatic(int vasopneumatic) {
		this.vasopneumatic = vasopneumatic;
	}

	public int getParaffin() {
		return paraffin;
	}

	public void setParaffin(int paraffin) {
		this.paraffin = paraffin;
	}

	public int getMicrowave() {
		return microwave;
	}

	public void setMicrowave(int microwave) {
		this.microwave = microwave;
	}

	public int getWhirlpool() {
		return whirlpool;
	}

	public void setWhirlpool(int whirlpool) {
		this.whirlpool = whirlpool;
	}

	public int getDiathermy() {
		return diathermy;
	}

	public void setDiathermy(int diathermy) {
		this.diathermy = diathermy;
	}

	public int getInfrared() {
		return infrared;
	}

	public void setInfrared(int infrared) {
		this.infrared = infrared;
	}

	public int getUltraviolet() {
		return ultraviolet;
	}

	public void setUltraviolet(int ultraviolet) {
		this.ultraviolet = ultraviolet;
	}

	public int getManualelectricalstim() {
		return manualelectricalstim;
	}

	public void setManualelectricalstim(int manualelectricalstim) {
		this.manualelectricalstim = manualelectricalstim;
	}

	public int getIontophoresis() {
		return iontophoresis;
	}

	public void setIontophoresis(int iontophoresis) {
		this.iontophoresis = iontophoresis;
	}

	public int getContrastbaths() {
		return contrastbaths;
	}

	public void setContrastbaths(int contrastbaths) {
		this.contrastbaths = contrastbaths;
	}

	public int getUltrasound() {
		return ultrasound;
	}

	public void setUltrasound(int ultrasound) {
		this.ultrasound = ultrasound;
	}

	public int getUnlisted() {
		return unlisted;
	}

	public void setUnlisted(int unlisted) {
		this.unlisted = unlisted;
	}

	public int getTherapeutic() {
		return therapeutic;
	}

	public void setTherapeutic(int therapeutic) {
		this.therapeutic = therapeutic;
	}

	public int getNeuromuscular() {
		return neuromuscular;
	}

	public void setNeuromuscular(int neuromuscular) {
		this.neuromuscular = neuromuscular;
	}

	public int getAquatic() {
		return aquatic;
	}

	public void setAquatic(int aquatic) {
		this.aquatic = aquatic;
	}

	public int getGaittraining() {
		return gaittraining;
	}

	public void setGaittraining(int gaittraining) {
		this.gaittraining = gaittraining;
	}

	public int getMassage() {
		return massage;
	}

	public void setMassage(int massage) {
		this.massage = massage;
	}

	public int getManualtherapy() {
		return manualtherapy;
	}

	public void setManualtherapy(int manualtherapy) {
		this.manualtherapy = manualtherapy;
	}

	public int getUnlistedother() {
		return unlistedother;
	}

	public void setUnlistedother(int unlistedother) {
		this.unlistedother = unlistedother;
	}

	public int getGrouptherapy() {
		return grouptherapy;
	}

	public void setGrouptherapy(int grouptherapy) {
		this.grouptherapy = grouptherapy;
	}

	public int getOrthotics() {
		return orthotics;
	}

	public void setOrthotics(int orthotics) {
		this.orthotics = orthotics;
	}

	public int getKinetic() {
		return kinetic;
	}

	public void setKinetic(int kinetic) {
		this.kinetic = kinetic;
	}

	public int getAdlselfcare() {
		return adlselfcare;
	}

	public void setAdlselfcare(int adlselfcare) {
		this.adlselfcare = adlselfcare;
	}

	public int getReintegration() {
		return reintegration;
	}

	public void setReintegration(int reintegration) {
		this.reintegration = reintegration;
	}

	public int getAcupuncturewo() {
		return acupuncturewo;
	}

	public void setAcupuncturewo(int acupuncturewo) {
		this.acupuncturewo = acupuncturewo;
	}

	public int getAcupuncturew() {
		return acupuncturew;
	}

	public void setAcupuncturew(int acupuncturew) {
		this.acupuncturew = acupuncturew;
	}

	public int getSpine12() {
		return spine12;
	}

	public void setSpine12(int spine12) {
		this.spine12 = spine12;
	}

	public int getSpine34() {
		return spine34;
	}

	public void setSpine34(int spine34) {
		this.spine34 = spine34;
	}

	public int getSpine5() {
		return spine5;
	}

	public void setSpine5(int spine5) {
		this.spine5 = spine5;
	}

	public int getExtremity() {
		return extremity;
	}

	public void setExtremity(int extremity) {
		this.extremity = extremity;
	}

	public int getRoutine() {
		return routine;
	}

	public void setRoutine(int routine) {
		this.routine = routine;
	}

	public int getMuscle() {
		return muscle;
	}

	public void setMuscle(int muscle) {
		this.muscle = muscle;
	}

	public int getMusclehand() {
		return musclehand;
	}

	public void setMusclehand(int musclehand) {
		this.musclehand = musclehand;
	}

	public int getRangeofmotion() {
		return rangeofmotion;
	}

	public void setRangeofmotion(int rangeofmotion) {
		this.rangeofmotion = rangeofmotion;
	}

	public int getRangeofmotionhand() {
		return rangeofmotionhand;
	}

	public void setRangeofmotionhand(int rangeofmotionhand) {
		this.rangeofmotionhand = rangeofmotionhand;
	}

	public int getNcv() {
		return ncv;
	}

	public void setNcv(int ncv) {
		this.ncv = ncv;
	}

	public int getNcvw() {
		return ncvw;
	}

	public void setNcvw(int ncvw) {
		this.ncvw = ncvw;
	}

	public int getNcvea() {
		return ncvea;
	}

	public void setNcvea(int ncvea) {
		this.ncvea = ncvea;
	}

	public int getSsepupper() {
		return ssepupper;
	}

	public void setSsepupper(int ssepupper) {
		this.ssepupper = ssepupper;
	}

	public int getSseplower() {
		return sseplower;
	}

	public void setSseplower(int sseplower) {
		this.sseplower = sseplower;
	}

	public int getSsephead() {
		return ssephead;
	}

	public void setSsephead(int ssephead) {
		this.ssephead = ssephead;
	}

	public int getHreflex() {
		return hreflex;
	}

	public void setHreflex(int hreflex) {
		this.hreflex = hreflex;
	}

	public int getPhysicalperformance() {
		return physicalperformance;
	}

	public void setPhysicalperformance(int physicalperformance) {
		this.physicalperformance = physicalperformance;
	}

	public int getFunctionalcapacity() {
		return functionalcapacity;
	}

	public void setFunctionalcapacity(int functionalcapacity) {
		this.functionalcapacity = functionalcapacity;
	}

	public int getText1() {
		return text1;
	}

	public void setText1(int text1) {
		this.text1 = text1;
	}

	public int getText2() {
		return text2;
	}

	public void setText2(int text2) {
		this.text2 = text2;
	}

	public int getSupplies() {
		return supplies;
	}

	public void setSupplies(int supplies) {
		this.supplies = supplies;
	}

	public int getPatienteducation() {
		return patienteducation;
	}

	public void setPatienteducation(int patienteducation) {
		this.patienteducation = patienteducation;
	}

	public int getMedicaltestimony() {
		return medicaltestimony;
	}

	public void setMedicaltestimony(int medicaltestimony) {
		this.medicaltestimony = medicaltestimony;
	}

	public int getInsuranceform() {
		return insuranceform;
	}

	public void setInsuranceform(int insuranceform) {
		this.insuranceform = insuranceform;
	}

	public int getTeamconference() {
		return teamconference;
	}

	public void setTeamconference(int teamconference) {
		this.teamconference = teamconference;
	}

	public int getCompletespine() {
		return completespine;
	}

	public void setCompletespine(int completespine) {
		this.completespine = completespine;
	}

	public int getCervical23() {
		return cervical23;
	}

	public void setCervical23(int cervical23) {
		this.cervical23 = cervical23;
	}

	public int getCervical4() {
		return cervical4;
	}

	public void setCervical4(int cervical4) {
		this.cervical4 = cervical4;
	}

	public int getCervical67() {
		return cervical67;
	}

	public void setCervical67(int cervical67) {
		this.cervical67 = cervical67;
	}

	public int getThoracic4() {
		return thoracic4;
	}

	public void setThoracic4(int thoracic4) {
		this.thoracic4 = thoracic4;
	}

	public int getThoracic2() {
		return thoracic2;
	}

	public void setThoracic2(int thoracic2) {
		this.thoracic2 = thoracic2;
	}

	public int getScoliosis() {
		return scoliosis;
	}

	public void setScoliosis(int scoliosis) {
		this.scoliosis = scoliosis;
	}

	public int getLumbosacral() {
		return lumbosacral;
	}

	public void setLumbosacral(int lumbosacral) {
		this.lumbosacral = lumbosacral;
	}

	public int getLumbosacral4() {
		return lumbosacral4;
	}

	public void setLumbosacral4(int lumbosacral4) {
		this.lumbosacral4 = lumbosacral4;
	}

	public int getPelvis2() {
		return pelvis2;
	}

	public void setPelvis2(int pelvis2) {
		this.pelvis2 = pelvis2;
	}

	public int getLumbarcomplete() {
		return lumbarcomplete;
	}

	public void setLumbarcomplete(int lumbarcomplete) {
		this.lumbarcomplete = lumbarcomplete;
	}

	public int getElbow2() {
		return elbow2;
	}

	public void setElbow2(int elbow2) {
		this.elbow2 = elbow2;
	}

	public int getWrist2() {
		return wrist2;
	}

	public void setWrist2(int wrist2) {
		this.wrist2 = wrist2;
	}

	public int getHand2() {
		return hand2;
	}

	public void setHand2(int hand2) {
		this.hand2 = hand2;
	}

	public int getKnee2() {
		return knee2;
	}

	public void setKnee2(int knee2) {
		this.knee2 = knee2;
	}

	public int getAnkle2() {
		return ankle2;
	}

	public void setAnkle2(int ankle2) {
		this.ankle2 = ankle2;
	}

	public int getFoot2() {
		return foot2;
	}

	public void setFoot2(int foot2) {
		this.foot2 = foot2;
	}

	public int getReadotherfilms() {
		return readotherfilms;
	}

	public void setReadotherfilms(int readotherfilms) {
		this.readotherfilms = readotherfilms;
	}

	public int getCervicalpillow() {
		return cervicalpillow;
	}

	public void setCervicalpillow(int cervicalpillow) {
		this.cervicalpillow = cervicalpillow;
	}

	public int getLumbarsupport() {
		return lumbarsupport;
	}

	public void setLumbarsupport(int lumbarsupport) {
		this.lumbarsupport = lumbarsupport;
	}

	public int getOrthoticcustoml() {
		return orthoticcustoml;
	}

	public void setOrthoticcustoml(int orthoticcustoml) {
		this.orthoticcustoml = orthoticcustoml;
	}

	public int getOrthoticcustomr() {
		return orthoticcustomr;
	}

	public void setOrthoticcustomr(int orthoticcustomr) {
		this.orthoticcustomr = orthoticcustomr;
	}

	public int getTensunit() {
		return tensunit;
	}

	public void setTensunit(int tensunit) {
		this.tensunit = tensunit;
	}

	public int getColdpack() {
		return coldpack;
	}

	public void setColdpack(int coldpack) {
		this.coldpack = coldpack;
	}

	public int getWristsplint() {
		return wristsplint;
	}

	public void setWristsplint(int wristsplint) {
		this.wristsplint = wristsplint;
	}

	public int getHeellift() {
		return heellift;
	}

	public void setHeellift(int heellift) {
		this.heellift = heellift;
	}

	public int getExerciseball() {
		return exerciseball;
	}

	public void setExerciseball(int exerciseball) {
		this.exerciseball = exerciseball;
	}

	public int getExerciseband() {
		return exerciseband;
	}

	public void setExerciseband(int exerciseband) {
		this.exerciseband = exerciseband;
	}

	public int getUnlisteditem() {
		return unlisteditem;
	}

	public void setUnlisteditem(int unlisteditem) {
		this.unlisteditem = unlisteditem;
	}

	public int getCharges() {
		return charges;
	}

	public void setCharges(int charges) {
		this.charges = charges;
	}

	public int getLess() {
		return less;
	}

	public void setLess(int less) {
		this.less = less;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getPaymentcashcheck() {
		return paymentcashcheck;
	}

	public void setPaymentcashcheck(String paymentcashcheck) {
		this.paymentcashcheck = paymentcashcheck;
	}

	public String getAmex() {
		return amex;
	}

	public void setAmex(String amex) {
		this.amex = amex;
	}

	public String getDiscover() {
		return discover;
	}

	public void setDiscover(String discover) {
		this.discover = discover;
	}

	public String getMc() {
		return mc;
	}

	public void setMc(String mc) {
		this.mc = mc;
	}

	public String getVisa() {
		return visa;
	}

	public void setVisa(String visa) {
		this.visa = visa;
	}

	public String getCardsign() {
		return cardsign;
	}

	public void setCardsign(String cardsign) {
		this.cardsign = cardsign;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getParentsign() {
		return parentsign;
	}

	public void setParentsign(String parentsign) {
		this.parentsign = parentsign;
	}

	public String getDoctorsign() {
		return doctorsign;
	}

	public void setDoctorsign(String doctorsign) {
		this.doctorsign = doctorsign;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getMonths() {
		return months;
	}

	public void setMonths(String months) {
		this.months = months;
	}

	

}