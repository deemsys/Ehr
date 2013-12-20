package bephit.model;

public class Elbowexam {
	private String elbowexamid;
	private String pname;
	private String date;
	private String muscle;
	private String swelling;
	private String dominanthand;
	private String allsoft;
	private String biceps;
	private String triceps;
	private String common;
	private String pronator;
	private String anconeus;
	private String commonextensors;
	private String othernotes;
	private String functionalrangeofmotion;
	private String orthopedic;
	private String flexionl;
	private String flexionr;
	private String mcll;
	private String mclr;
	private String extensionl;
	private String extensionr;
	private String lcll;
	private String lclr;
	private String pronationl;
	private String pronationr;
	private String varusl;
	private String varusr;
	private String suppinationl;
	private String suppinationr;
	private String mcl1l;
	private String mcl1r;
	private String tinnelsl;
	private String tinnelsr;
	private String ulttl;
	private String ulttr;
	private String neurologicaltest;
	private String c5l;
	private String c5r;
	private String c51l;
	private String c51r;
	private String c53l;
	private String c53r;
	private String c6l;
	private String c6r;
	private String c61l;
	private String c61r;
	private String c63l;
	private String c63r;
	private String c7l;
	private String c7r;
	private String c71l;
	private String c71r;
	private String c73l;
	private String c73r;
	private String c8l;
	private String c8r;
	private String c81l;
	private String c81r;
	private String t1l;
	private String t1r;
	private String t11l;
	private String t11r;
	private String overheadactivities;
	private String lifting;
	private String otherfunctional;
	private String break_text3;
	private String assessment;
	private String patientstatus;
	private String diagnosis1;
	private String diagnosis2;
	private String diagnosis3;
	private String diagnosis4;
	private String diagnosis5;
	private String diagnosis6;
	private String times;
	private String week;
	private String spinal;
	private String chiropractic;
	private String physical;
	private String orthotics;
	private String modalities;
	private String supplementation;
	private String hep;
	private String radiographic;
	private String mri;
	private String ctscan;
	private String nerve;
	private String emg;
	private String outside;
	private String dc;
	private String otheraddress;
	private String break_text4;
	private String sign;
	
	public Elbowexam()
	{
		
	}
    
	public Elbowexam(String elbowexamid, String pname, String date,
			String muscle, String swelling, String dominanthand,
			String allsoft, String biceps, String triceps, String common,
			String pronator, String anconeus, String commonextensors,
			String othernotes, String functionalrangeofmotion,
			String orthopedic, String flexionl, String flexionr, String mcll,
			String mclr, String extensionl, String extensionr, String lcll,
			String lclr, String pronationl, String pronationr, String varusl,
			String varusr, String suppinationl, String suppinationr,
			String mcl1l, String mcl1r, String tinnelsl, String tinnelsr,
			String ulttl, String ulttr, String neurologicaltest, String c5l,
			String c5r, String c51l, String c51r, String c53l, String c53r,
			String c6l, String c6r, String c61l, String c61r, String c63l,
			String c63r, String c7l, String c7r, String c71l, String c71r,
			String c73l, String c73r, String c8l, String c8r, String c81l,
			String c81r, String t1l, String t1r, String t11l, String t11r,
			String overheadactivities, String lifting, String otherfunctional,
			String break_text3, String assessment, String patientstatus,
			String diagnosis1, String diagnosis2, String diagnosis3,
			String diagnosis4, String diagnosis5, String diagnosis6,
			String times, String week, String spinal, String chiropractic,
			String physical, String orthotics, String modalities,
			String supplementation, String hep, String radiographic,
			String mri, String ctscan, String nerve, String emg,
			String outside, String dc, String otheraddress, String break_text4,
			String sign) {
		super();
		this.elbowexamid = elbowexamid;
		this.pname = pname;
		this.date = date;
		this.muscle = muscle;
		this.swelling = swelling;
		this.dominanthand = dominanthand;
		this.allsoft = allsoft;
		this.biceps = biceps;
		this.triceps = triceps;
		this.common = common;
		this.pronator = pronator;
		this.anconeus = anconeus;
		this.commonextensors = commonextensors;
		this.othernotes = othernotes;
		this.functionalrangeofmotion = functionalrangeofmotion;
		this.orthopedic = orthopedic;
		this.flexionl = flexionl;
		this.flexionr = flexionr;
		this.mcll = mcll;
		this.mclr = mclr;
		this.extensionl = extensionl;
		this.extensionr = extensionr;
		this.lcll = lcll;
		this.lclr = lclr;
		this.pronationl = pronationl;
		this.pronationr = pronationr;
		this.varusl = varusl;
		this.varusr = varusr;
		this.suppinationl = suppinationl;
		this.suppinationr = suppinationr;
		this.mcl1l = mcl1l;
		this.mcl1r = mcl1r;
		this.tinnelsl = tinnelsl;
		this.tinnelsr = tinnelsr;
		this.ulttl = ulttl;
		this.ulttr = ulttr;
		this.neurologicaltest = neurologicaltest;
		this.c5l = c5l;
		this.c5r = c5r;
		this.c51l = c51l;
		this.c51r = c51r;
		this.c53l = c53l;
		this.c53r = c53r;
		this.c6l = c6l;
		this.c6r = c6r;
		this.c61l = c61l;
		this.c61r = c61r;
		this.c63l = c63l;
		this.c63r = c63r;
		this.c7l = c7l;
		this.c7r = c7r;
		this.c71l = c71l;
		this.c71r = c71r;
		this.c73l = c73l;
		this.c73r = c73r;
		this.c8l = c8l;
		this.c8r = c8r;
		this.c81l = c81l;
		this.c81r = c81r;
		this.t1l = t1l;
		this.t1r = t1r;
		this.t11l = t11l;
		this.t11r = t11r;
		this.overheadactivities = overheadactivities;
		this.lifting = lifting;
		this.otherfunctional = otherfunctional;
		this.break_text3 = break_text3;
		this.assessment = assessment;
		this.patientstatus = patientstatus;
		this.diagnosis1 = diagnosis1;
		this.diagnosis2 = diagnosis2;
		this.diagnosis3 = diagnosis3;
		this.diagnosis4 = diagnosis4;
		this.diagnosis5 = diagnosis5;
		this.diagnosis6 = diagnosis6;
		this.times = times;
		this.week = week;
		this.spinal = spinal;
		this.chiropractic = chiropractic;
		this.physical = physical;
		this.orthotics = orthotics;
		this.modalities = modalities;
		this.supplementation = supplementation;
		this.hep = hep;
		this.radiographic = radiographic;
		this.mri = mri;
		this.ctscan = ctscan;
		this.nerve = nerve;
		this.emg = emg;
		this.outside = outside;
		this.dc = dc;
		this.otheraddress = otheraddress;
		this.break_text4 = break_text4;
		this.sign = sign;
	}

	public String getElbowexamid() {
		return elbowexamid;
	}

	public void setElbowexamid(String elbowexamid) {
		this.elbowexamid = elbowexamid;
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

	public String getMuscle() {
		return muscle;
	}

	public void setMuscle(String muscle) {
		this.muscle = muscle;
	}

	public String getSwelling() {
		return swelling;
	}

	public void setSwelling(String swelling) {
		this.swelling = swelling;
	}

	public String getDominanthand() {
		return dominanthand;
	}

	public void setDominanthand(String dominanthand) {
		this.dominanthand = dominanthand;
	}

	public String getAllsoft() {
		return allsoft;
	}

	public void setAllsoft(String allsoft) {
		this.allsoft = allsoft;
	}

	public String getBiceps() {
		return biceps;
	}

	public void setBiceps(String biceps) {
		this.biceps = biceps;
	}

	public String getTriceps() {
		return triceps;
	}

	public void setTriceps(String triceps) {
		this.triceps = triceps;
	}

	public String getCommon() {
		return common;
	}

	public void setCommon(String common) {
		this.common = common;
	}

	public String getPronator() {
		return pronator;
	}

	public void setPronator(String pronator) {
		this.pronator = pronator;
	}

	public String getAnconeus() {
		return anconeus;
	}

	public void setAnconeus(String anconeus) {
		this.anconeus = anconeus;
	}

	public String getCommonextensors() {
		return commonextensors;
	}

	public void setCommonextensors(String commonextensors) {
		this.commonextensors = commonextensors;
	}

	public String getOthernotes() {
		return othernotes;
	}

	public void setOthernotes(String othernotes) {
		this.othernotes = othernotes;
	}

	public String getFunctionalrangeofmotion() {
		return functionalrangeofmotion;
	}

	public void setFunctionalrangeofmotion(String functionalrangeofmotion) {
		this.functionalrangeofmotion = functionalrangeofmotion;
	}

	public String getOrthopedic() {
		return orthopedic;
	}

	public void setOrthopedic(String orthopedic) {
		this.orthopedic = orthopedic;
	}

	public String getFlexionl() {
		return flexionl;
	}

	public void setFlexionl(String flexionl) {
		this.flexionl = flexionl;
	}

	public String getFlexionr() {
		return flexionr;
	}

	public void setFlexionr(String flexionr) {
		this.flexionr = flexionr;
	}

	public String getMcll() {
		return mcll;
	}

	public void setMcll(String mcll) {
		this.mcll = mcll;
	}

	public String getMclr() {
		return mclr;
	}

	public void setMclr(String mclr) {
		this.mclr = mclr;
	}

	public String getExtensionl() {
		return extensionl;
	}

	public void setExtensionl(String extensionl) {
		this.extensionl = extensionl;
	}

	public String getExtensionr() {
		return extensionr;
	}

	public void setExtensionr(String extensionr) {
		this.extensionr = extensionr;
	}

	public String getLcll() {
		return lcll;
	}

	public void setLcll(String lcll) {
		this.lcll = lcll;
	}

	public String getLclr() {
		return lclr;
	}

	public void setLclr(String lclr) {
		this.lclr = lclr;
	}

	public String getPronationl() {
		return pronationl;
	}

	public void setPronationl(String pronationl) {
		this.pronationl = pronationl;
	}

	public String getPronationr() {
		return pronationr;
	}

	public void setPronationr(String pronationr) {
		this.pronationr = pronationr;
	}

	public String getVarusl() {
		return varusl;
	}

	public void setVarusl(String varusl) {
		this.varusl = varusl;
	}

	public String getVarusr() {
		return varusr;
	}

	public void setVarusr(String varusr) {
		this.varusr = varusr;
	}

	public String getSuppinationl() {
		return suppinationl;
	}

	public void setSuppinationl(String suppinationl) {
		this.suppinationl = suppinationl;
	}

	public String getSuppinationr() {
		return suppinationr;
	}

	public void setSuppinationr(String suppinationr) {
		this.suppinationr = suppinationr;
	}

	public String getMcl1l() {
		return mcl1l;
	}

	public void setMcl1l(String mcl1l) {
		this.mcl1l = mcl1l;
	}

	public String getMcl1r() {
		return mcl1r;
	}

	public void setMcl1r(String mcl1r) {
		this.mcl1r = mcl1r;
	}

	public String getTinnelsl() {
		return tinnelsl;
	}

	public void setTinnelsl(String tinnelsl) {
		this.tinnelsl = tinnelsl;
	}

	public String getTinnelsr() {
		return tinnelsr;
	}

	public void setTinnelsr(String tinnelsr) {
		this.tinnelsr = tinnelsr;
	}

	public String getUlttl() {
		return ulttl;
	}

	public void setUlttl(String ulttl) {
		this.ulttl = ulttl;
	}

	public String getUlttr() {
		return ulttr;
	}

	public void setUlttr(String ulttr) {
		this.ulttr = ulttr;
	}

	public String getNeurologicaltest() {
		return neurologicaltest;
	}

	public void setNeurologicaltest(String neurologicaltest) {
		this.neurologicaltest = neurologicaltest;
	}

	public String getC5l() {
		return c5l;
	}

	public void setC5l(String c5l) {
		this.c5l = c5l;
	}

	public String getC5r() {
		return c5r;
	}

	public void setC5r(String c5r) {
		this.c5r = c5r;
	}

	public String getC51l() {
		return c51l;
	}

	public void setC51l(String c51l) {
		this.c51l = c51l;
	}

	public String getC51r() {
		return c51r;
	}

	public void setC51r(String c51r) {
		this.c51r = c51r;
	}

	public String getC53l() {
		return c53l;
	}

	public void setC53l(String c53l) {
		this.c53l = c53l;
	}

	public String getC53r() {
		return c53r;
	}

	public void setC53r(String c53r) {
		this.c53r = c53r;
	}

	public String getC6l() {
		return c6l;
	}

	public void setC6l(String c6l) {
		this.c6l = c6l;
	}

	public String getC6r() {
		return c6r;
	}

	public void setC6r(String c6r) {
		this.c6r = c6r;
	}

	public String getC61l() {
		return c61l;
	}

	public void setC61l(String c61l) {
		this.c61l = c61l;
	}

	public String getC61r() {
		return c61r;
	}

	public void setC61r(String c61r) {
		this.c61r = c61r;
	}

	public String getC63l() {
		return c63l;
	}

	public void setC63l(String c63l) {
		this.c63l = c63l;
	}

	public String getC63r() {
		return c63r;
	}

	public void setC63r(String c63r) {
		this.c63r = c63r;
	}

	public String getC7l() {
		return c7l;
	}

	public void setC7l(String c7l) {
		this.c7l = c7l;
	}

	public String getC7r() {
		return c7r;
	}

	public void setC7r(String c7r) {
		this.c7r = c7r;
	}

	public String getC71l() {
		return c71l;
	}

	public void setC71l(String c71l) {
		this.c71l = c71l;
	}

	public String getC71r() {
		return c71r;
	}

	public void setC71r(String c71r) {
		this.c71r = c71r;
	}

	public String getC73l() {
		return c73l;
	}

	public void setC73l(String c73l) {
		this.c73l = c73l;
	}

	public String getC73r() {
		return c73r;
	}

	public void setC73r(String c73r) {
		this.c73r = c73r;
	}

	public String getC8l() {
		return c8l;
	}

	public void setC8l(String c8l) {
		this.c8l = c8l;
	}

	public String getC8r() {
		return c8r;
	}

	public void setC8r(String c8r) {
		this.c8r = c8r;
	}

	public String getC81l() {
		return c81l;
	}

	public void setC81l(String c81l) {
		this.c81l = c81l;
	}

	public String getC81r() {
		return c81r;
	}

	public void setC81r(String c81r) {
		this.c81r = c81r;
	}

	public String getT1l() {
		return t1l;
	}

	public void setT1l(String t1l) {
		this.t1l = t1l;
	}

	public String getT1r() {
		return t1r;
	}

	public void setT1r(String t1r) {
		this.t1r = t1r;
	}

	public String getT11l() {
		return t11l;
	}

	public void setT11l(String t11l) {
		this.t11l = t11l;
	}

	public String getT11r() {
		return t11r;
	}

	public void setT11r(String t11r) {
		this.t11r = t11r;
	}

	public String getOverheadactivities() {
		return overheadactivities;
	}

	public void setOverheadactivities(String overheadactivities) {
		this.overheadactivities = overheadactivities;
	}

	public String getLifting() {
		return lifting;
	}

	public void setLifting(String lifting) {
		this.lifting = lifting;
	}

	public String getOtherfunctional() {
		return otherfunctional;
	}

	public void setOtherfunctional(String otherfunctional) {
		this.otherfunctional = otherfunctional;
	}

	public String getBreak_text3() {
		return break_text3;
	}

	public void setBreak_text3(String break_text3) {
		this.break_text3 = break_text3;
	}

	public String getAssessment() {
		return assessment;
	}

	public void setAssessment(String assessment) {
		this.assessment = assessment;
	}

	public String getPatientstatus() {
		return patientstatus;
	}

	public void setPatientstatus(String patientstatus) {
		this.patientstatus = patientstatus;
	}

	public String getDiagnosis1() {
		return diagnosis1;
	}

	public void setDiagnosis1(String diagnosis1) {
		this.diagnosis1 = diagnosis1;
	}

	public String getDiagnosis2() {
		return diagnosis2;
	}

	public void setDiagnosis2(String diagnosis2) {
		this.diagnosis2 = diagnosis2;
	}

	public String getDiagnosis3() {
		return diagnosis3;
	}

	public void setDiagnosis3(String diagnosis3) {
		this.diagnosis3 = diagnosis3;
	}

	public String getDiagnosis4() {
		return diagnosis4;
	}

	public void setDiagnosis4(String diagnosis4) {
		this.diagnosis4 = diagnosis4;
	}

	public String getDiagnosis5() {
		return diagnosis5;
	}

	public void setDiagnosis5(String diagnosis5) {
		this.diagnosis5 = diagnosis5;
	}

	public String getDiagnosis6() {
		return diagnosis6;
	}

	public void setDiagnosis6(String diagnosis6) {
		this.diagnosis6 = diagnosis6;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getSpinal() {
		return spinal;
	}

	public void setSpinal(String spinal) {
		this.spinal = spinal;
	}

	public String getChiropractic() {
		return chiropractic;
	}

	public void setChiropractic(String chiropractic) {
		this.chiropractic = chiropractic;
	}

	public String getPhysical() {
		return physical;
	}

	public void setPhysical(String physical) {
		this.physical = physical;
	}

	public String getOrthotics() {
		return orthotics;
	}

	public void setOrthotics(String orthotics) {
		this.orthotics = orthotics;
	}

	public String getModalities() {
		return modalities;
	}

	public void setModalities(String modalities) {
		this.modalities = modalities;
	}

	public String getSupplementation() {
		return supplementation;
	}

	public void setSupplementation(String supplementation) {
		this.supplementation = supplementation;
	}

	public String getHep() {
		return hep;
	}

	public void setHep(String hep) {
		this.hep = hep;
	}

	public String getRadiographic() {
		return radiographic;
	}

	public void setRadiographic(String radiographic) {
		this.radiographic = radiographic;
	}

	public String getMri() {
		return mri;
	}

	public void setMri(String mri) {
		this.mri = mri;
	}

	public String getCtscan() {
		return ctscan;
	}

	public void setCtscan(String ctscan) {
		this.ctscan = ctscan;
	}

	public String getNerve() {
		return nerve;
	}

	public void setNerve(String nerve) {
		this.nerve = nerve;
	}

	public String getEmg() {
		return emg;
	}

	public void setEmg(String emg) {
		this.emg = emg;
	}

	public String getOutside() {
		return outside;
	}

	public void setOutside(String outside) {
		this.outside = outside;
	}

	public String getDc() {
		return dc;
	}

	public void setDc(String dc) {
		this.dc = dc;
	}

	public String getOtheraddress() {
		return otheraddress;
	}

	public void setOtheraddress(String otheraddress) {
		this.otheraddress = otheraddress;
	}

	public String getBreak_text4() {
		return break_text4;
	}

	public void setBreak_text4(String break_text4) {
		this.break_text4 = break_text4;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}
	
}