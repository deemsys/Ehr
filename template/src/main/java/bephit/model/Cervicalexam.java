package bephit.model;

public class Cervicalexam {
	private String cervicalexamid;
	private String pname;
	private String date;
	private String muscle;
	private String swelling;
	private String headposture;
	private String roundshoulder;
	private String ao;
	private String allsoft;
	private String suboccipital;
	private String scalenes;
	private String levator;
	private String teresminor;
	private String teresmajor;
	private String rhomboids;
	private String trapezius;
	private String pectoralis;
	private String paraspinals;
	private String othernotes;
	private String functionalrangeofmotion;
	private String subluxation;
	private String orthopedic;
	private String flexion;
	private String c01;
	private String c12;
	private String c23;
	private String hautantl;
	private String hautantr;
	private String extension;
	private String c34;
	private String c45;
	private String c56;
	private String foraminall;
	private String foraminalr;
	private String lflexion;
	private String rflexion;
	private String c67;
	private String c7t1;
	private String t12;
	private String sotohalll;
	private String sotohallr;
	private String lrotation;
	private String rrotation;
	private String t23;
	private String t34;
	private String t45;
	private String adsonsl;
	private String adsonsr;
	private String t56;
	private String t67;
	private String t78;
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
	private String sitting;
	private String standing;
	private String driving;
	private String computeruse;
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
	
	public Cervicalexam()
	{
		
	}

	public Cervicalexam(String cervicalexamid, String pname, String date,
			String muscle, String swelling, String headposture,
			String roundshoulder, String ao, String allsoft,
			String suboccipital, String scalenes,
		    String levator,	String teresminor, String teresmajor,
		    String rhomboids, String trapezius,  String pectoralis,
		    String paraspinals,String othernotes, String functionalrangeofmotion,
			String subluxation, String orthopedic, String flexion, String c01,
			String c12,String c23, String hautantl, String hautantr, String extension,
			String c34, String c45,String c56, String foraminall, String foraminalr,
			String lflexion, String rflexion, String c67, String c7t1,
			String t12, String sotohalll, String sotohallr, String lrotation,
			String rrotation, String t23, String t34, String t45,
			String adsonsl, String adsonsr, String t56, String t67, String t78,
			String ulttl, String ulttr, String neurologicaltest, String c5l,
			String c5r, String c51l, String c51r, String c53l, String c53r,
			String c6l, String c6r, String c61l, String c61r, String c63l,
			String c63r, String c7l, String c7r, String c71l, String c71r,
			String c73l, String c73r, String c8l, String c8r, String c81l,
			String c81r, String t1l, String t1r, String t11l, String t11r,
			String sitting, String standing, String driving,String computeruse,
			String otherfunctional, String break_text3, String assessment,
			String patientstatus, String diagnosis1, String diagnosis2,
			String diagnosis3, String diagnosis4, String diagnosis5,
			String diagnosis6, String times, String week, String spinal,
			String chiropractic, String physical, String orthotics,
			String modalities, String supplementation, String hep,
			String radiographic, String mri, String ctscan, String nerve,
			String emg, String outside, String dc, String otheraddress,
			String break_text4, String sign) {
		super();
		this.cervicalexamid = cervicalexamid;
		this.pname = pname;
		this.date = date;
		this.muscle = muscle;
		this.swelling = swelling;
		this.headposture = headposture;
		this.roundshoulder = roundshoulder;
		this.ao = ao;
		this.allsoft = allsoft;
		this.suboccipital = suboccipital;
		this.scalenes = scalenes;
		this.levator = levator;
		this.teresminor = teresminor;
		this.teresmajor = teresmajor;
		this.rhomboids = rhomboids;
		this.trapezius = trapezius;
		this.pectoralis = pectoralis;
		this.paraspinals = paraspinals;
		this.othernotes = othernotes;
		this.functionalrangeofmotion = functionalrangeofmotion;
		this.subluxation = subluxation;
		this.orthopedic = orthopedic;
		this.flexion = flexion;
		this.c01 = c01;
		this.c12 = c12;
		this.c23= c23;
		this.hautantl = hautantl;
		this.hautantr = hautantr;
		this.extension = extension;
		this.c34 = c34;
		this.c45 = c45;
		this.c56= c56;
		this.foraminall = foraminall;
		this.foraminalr = foraminalr;
		this.lflexion = lflexion;
		this.rflexion = rflexion;
		this.c67 = c67;
		this.c7t1 = c7t1;
		this.t12 = t12;
		this.sotohalll = sotohalll;
		this.sotohallr = sotohallr;
		this.lrotation = lrotation;
		this.rrotation = rrotation;
		this.t23 = t23;
		this.t34 = t34;
		this.t45 = t45;
		this.adsonsl = adsonsl;
		this.adsonsr = adsonsr;
		this.t56 = t56;
		this.t67 = t67;
		this.t78 = t78;
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
		this.sitting = sitting;
		this.standing = standing;
		this.driving = driving;
		this.computeruse= computeruse;
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

	public String getCervicalexamid() {
		return cervicalexamid;
	}

	public void setCervicalexamid(String cervicalexamid) {
		this.cervicalexamid = cervicalexamid;
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

	public String getHeadposture() {
		return headposture;
	}

	public void setHeadposture(String headposture) {
		this.headposture = headposture;
	}

	public String getRoundshoulder() {
		return roundshoulder;
	}

	public void setRoundshoulder(String roundshoulder) {
		this.roundshoulder = roundshoulder;
	}

	public String getAo() {
		return ao;
	}

	public void setAo(String ao) {
		this.ao = ao;
	}

	public String getAllsoft() {
		return allsoft;
	}

	public void setAllsoft(String allsoft) {
		this.allsoft = allsoft;
	}

	
	public String getSuboccipital() {
		return suboccipital;
	}

	public void setSuboccipital(String suboccipital) {
		this.suboccipital = suboccipital;
	}

	public String getScalenes() {
		return scalenes;
	}

	public void setScalenes(String scalenes) {
		this.scalenes = scalenes;
	}

	public String getLevator() {
		return levator;
	}

	public void setLevator(String levator) {
		this.levator = levator;
	}

	public String getTeresminor() {
		return teresminor;
	}

	public void setTeresminor(String teresminor) {
		this.teresminor = teresminor;
	}

	public String getTeresmajor() {
		return teresmajor;
	}

	public void setTeresmajor(String teresmajor) {
		this.teresmajor = teresmajor;
	}

	public String getRhomboids() {
		return rhomboids;
	}

	public void setRhomboids(String rhomboids) {
		this.rhomboids = rhomboids;
	}

	public String getTrapezius() {
		return trapezius;
	}

	public void setTrapezius(String trapezius) {
		this.trapezius = trapezius;
	}

	public String getPectoralis() {
		return pectoralis;
	}

	public void setPectoralis(String pectoralis) {
		this.pectoralis = pectoralis;
	}

	public String getParaspinals() {
		return paraspinals;
	}

	public void setParaspinals(String paraspinals) {
		this.paraspinals = paraspinals;
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

	public String getSubluxation() {
		return subluxation;
	}

	public void setSubluxation(String subluxation) {
		this.subluxation = subluxation;
	}

	public String getOrthopedic() {
		return orthopedic;
	}

	public void setOrthopedic(String orthopedic) {
		this.orthopedic = orthopedic;
	}

	public String getFlexion() {
		return flexion;
	}

	public void setFlexion(String flexion) {
		this.flexion = flexion;
	}

	public String getC01() {
		return c01;
	}

	public void setC01(String c01) {
		this.c01 = c01;
	}

	public String getC12() {
		return c12;
	}

	public void setC12(String c12) {
		this.c12 = c12;
	}

	public String getC23() {
		return c23;
	}

	public void setC23(String c23) {
		this.c23 = c23;
	}

	public String getHautantl() {
		return hautantl;
	}

	public void setHautantl(String hautantl) {
		this.hautantl = hautantl;
	}

	public String getHautantr() {
		return hautantr;
	}

	public void setHautantr(String hautantr) {
		this.hautantr = hautantr;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getC34() {
		return c34;
	}

	public void setC34(String c34) {
		this.c34 = c34;
	}

	public String getC45() {
		return c45;
	}

	public void setC45(String c45) {
		this.c45 = c45;
	}

	public String getC56() {
		return c56;
	}

	public void setC56(String c56) {
		this.c56 = c56;
	}

	public String getForaminall() {
		return foraminall;
	}

	public void setForaminall(String foraminall) {
		this.foraminall = foraminall;
	}

	public String getForaminalr() {
		return foraminalr;
	}

	public void setForaminalr(String foraminalr) {
		this.foraminalr = foraminalr;
	}

	public String getLflexion() {
		return lflexion;
	}

	public void setLflexion(String lflexion) {
		this.lflexion = lflexion;
	}

	public String getRflexion() {
		return rflexion;
	}

	public void setRflexion(String rflexion) {
		this.rflexion = rflexion;
	}

	public String getC67() {
		return c67;
	}

	public void setC67(String c67) {
		this.c67 = c67;
	}

	public String getC7t1() {
		return c7t1;
	}

	public void setC7t1(String c7t1) {
		this.c7t1 = c7t1;
	}

	public String getT12() {
		return t12;
	}

	public void setT12(String t12) {
		this.t12 = t12;
	}

	public String getSotohalll() {
		return sotohalll;
	}

	public void setSotohalll(String sotohalll) {
		this.sotohalll = sotohalll;
	}

	public String getSotohallr() {
		return sotohallr;
	}

	public void setSotohallr(String sotohallr) {
		this.sotohallr = sotohallr;
	}

	public String getLrotation() {
		return lrotation;
	}

	public void setLrotation(String lrotation) {
		this.lrotation = lrotation;
	}

	public String getRrotation() {
		return rrotation;
	}

	public void setRrotation(String rrotation) {
		this.rrotation = rrotation;
	}

	public String getT23() {
		return t23;
	}

	public void setT23(String t23) {
		this.t23 = t23;
	}

	public String getT34() {
		return t34;
	}

	public void setT34(String t34) {
		this.t34 = t34;
	}

	public String getT45() {
		return t45;
	}

	public void setT45(String t45) {
		this.t45 = t45;
	}

	public String getAdsonsl() {
		return adsonsl;
	}

	public void setAdsonsl(String adsonsl) {
		this.adsonsl = adsonsl;
	}

	public String getAdsonsr() {
		return adsonsr;
	}

	public void setAdsonsr(String adsonsr) {
		this.adsonsr = adsonsr;
	}

	public String getT56() {
		return t56;
	}

	public void setT56(String t56) {
		this.t56 = t56;
	}

	public String getT67() {
		return t67;
	}

	public void setT67(String t67) {
		this.t67 = t67;
	}

	public String getT78() {
		return t78;
	}

	public void setT78(String t78) {
		this.t78 = t78;
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

	public String getSitting() {
		return sitting;
	}

	public void setSitting(String sitting) {
		this.sitting = sitting;
	}

	public String getStanding() {
		return standing;
	}

	public void setStanding(String standing) {
		this.standing = standing;
	}

	public String getDriving() {
		return driving;
	}

	public void setDriving(String driving) {
		this.driving = driving;
	}
	

	public String getComputeruse() {
		return computeruse;
	}

	public void setComputeruse(String computeruse) {
		this.computeruse = computeruse;
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