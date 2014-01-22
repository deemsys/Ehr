package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Thoracicexam {
	private String thoracicexamid;
	@NotEmpty
	private String pname;
	@NotEmpty
	private String date;
	private String muscle;
	private String swelling;
	private String acromion;
	private String inferior;
	private String iliac;
	private String ribhumping;
	private String allsoft;
	private String rectus;
	private String obliques;
	private String levator;
	private String serratus;
	private String pectoralis;
	private String trapezius;
	private String rhomboids;
	private String pectoralisminor;
	private String paraspinals;
	private String othernotes;
	private String functionalrangeofmotion;
	private String subluxation;
	private String orthopedic;
	private String flexion;
	private String t12;
	private String t23;
	private String adamsignl;
	private String adamsignr;
	private String extension;
	private String t34;
	private String t45;
	private String schepelmanl;
	private String schepelmanr;
	private String lflexion;
	private String rflexion;
	private String t56;
	private String t67;
	private String valsalval;
	private String valsalvar;
	private String lrotation;
	private String rrotation;
	private String t78;
	private String t89;
	private String dejerinel;
	private String dejeriner;
	private String t910;
	private String t1011;
	private String sotohalll;
	private String sotohallr;
	private String t1112;
	private String t12l1;
	private String sternall;
	private String sternalr;
	private String beevorl;
	private String beevorr;
	private String neurologicaltest;
	private String notes;
	private String intercostal;
	private String sitting;
	private String standing;
	private String driving;
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
	@NotEmpty
	private String sign;
	
	public Thoracicexam()
	{
		
	}

	public Thoracicexam(String thoracicexamid, String pname, String date,
			String muscle, String swelling, String acromion, String inferior,
			String iliac, String ribhumping, String allsoft, String rectus,
			String obliques, String levator, String serratus,
			String pectoralis, String trapezius, String rhomboids,
			String pectoralisminor, String paraspinals, String othernotes,
			String functionalrangeofmotion, String subluxation,
			String orthopedic, String flexion, String t12, String t23,
			String adamsignl, String adamsignr, String extension, String t34,
			String t45, String schepelmanl, String schepelmanr,
			String lflexion, String rflexion, String t56, String t67,
			String valsalval, String valsalvar, String lrotation,
			String rrotation, String t78, String t89, String dejerinel,
			String dejeriner, String t910, String t1011, String sotohalll,
			String sotohallr, String t1112, String t12l1, String sternall,
			String sternalr, String beevorl,String beevorr, String neurologicaltest,String notes,
			String intercostal, String sitting, String standing,
			String driving, String otherfunctional, String break_text3,
			String assessment, String patientstatus, String diagnosis1,
			String diagnosis2, String diagnosis3, String diagnosis4,
			String diagnosis5, String diagnosis6, String times, String week,
			String spinal, String chiropractic, String physical,
			String orthotics, String modalities, String supplementation,
			String hep, String radiographic, String mri, String ctscan,
			String nerve, String emg, String outside, String dc,
			String otheraddress, String break_text4, String sign) {
		super();
		this.thoracicexamid = thoracicexamid;
		this.pname = pname;
		this.date = date;
		this.muscle = muscle;
		this.swelling = swelling;
		this.acromion = acromion;
		this.inferior = inferior;
		this.iliac = iliac;
		this.ribhumping = ribhumping;
		this.allsoft = allsoft;
		this.rectus = rectus;
		this.obliques = obliques;
		this.levator = levator;
		this.serratus = serratus;
		this.pectoralis = pectoralis;
		this.trapezius = trapezius;
		this.rhomboids = rhomboids;
		this.pectoralisminor = pectoralisminor;
		this.paraspinals = paraspinals;
		this.othernotes = othernotes;
		this.functionalrangeofmotion = functionalrangeofmotion;
		this.subluxation = subluxation;
		this.orthopedic = orthopedic;
		this.flexion = flexion;
		this.t12 = t12;
		this.t23 = t23;
		this.adamsignl = adamsignl;
		this.adamsignr = adamsignr;
		this.extension = extension;
		this.t34 = t34;
		this.t45 = t45;
		this.schepelmanl = schepelmanl;
		this.schepelmanr = schepelmanr;
		this.lflexion = lflexion;
		this.rflexion = rflexion;
		this.t56 = t56;
		this.t67 = t67;
		this.valsalval = valsalval;
		this.valsalvar = valsalvar;
		this.lrotation = lrotation;
		this.rrotation = rrotation;
		this.t78 = t78;
		this.t89 = t89;
		this.dejerinel = dejerinel;
		this.dejeriner = dejeriner;
		this.t910 = t910;
		this.t1011 = t1011;
		this.sotohalll = sotohalll;
		this.sotohallr = sotohallr;
		this.t1112 = t1112;
		this.t12l1 = t12l1;
		this.sternall = sternall;
		this.sternalr = sternalr;
		this.beevorl = beevorl;
		this.beevorr = beevorr;
		this.neurologicaltest = neurologicaltest;
		this.notes=notes;
		this.intercostal = intercostal;
		this.sitting = sitting;
		this.standing = standing;
		this.driving = driving;
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

	public String getThoracicexamid() {
		return thoracicexamid;
	}

	public void setThoracicexamid(String thoracicexamid) {
		this.thoracicexamid = thoracicexamid;
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

	public String getAcromion() {
		return acromion;
	}

	public void setAcromion(String acromion) {
		this.acromion = acromion;
	}

	public String getInferior() {
		return inferior;
	}

	public void setInferior(String inferior) {
		this.inferior = inferior;
	}

	public String getIliac() {
		return iliac;
	}

	public void setIliac(String iliac) {
		this.iliac = iliac;
	}

	public String getRibhumping() {
		return ribhumping;
	}

	public void setRibhumping(String ribhumping) {
		this.ribhumping = ribhumping;
	}

	public String getAllsoft() {
		return allsoft;
	}

	public void setAllsoft(String allsoft) {
		this.allsoft = allsoft;
	}

	public String getRectus() {
		return rectus;
	}

	public void setRectus(String rectus) {
		this.rectus = rectus;
	}

	public String getObliques() {
		return obliques;
	}

	public void setObliques(String obliques) {
		this.obliques = obliques;
	}

	public String getLevator() {
		return levator;
	}

	public void setLevator(String levator) {
		this.levator = levator;
	}

	public String getSerratus() {
		return serratus;
	}

	public void setSerratus(String serratus) {
		this.serratus = serratus;
	}

	public String getPectoralis() {
		return pectoralis;
	}

	public void setPectoralis(String pectoralis) {
		this.pectoralis = pectoralis;
	}

	public String getTrapezius() {
		return trapezius;
	}

	public void setTrapezius(String trapezius) {
		this.trapezius = trapezius;
	}

	public String getRhomboids() {
		return rhomboids;
	}

	public void setRhomboids(String rhomboids) {
		this.rhomboids = rhomboids;
	}

	public String getPectoralisminor() {
		return pectoralisminor;
	}

	public void setPectoralisminor(String pectoralisminor) {
		this.pectoralisminor = pectoralisminor;
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

	public String getT12() {
		return t12;
	}

	public void setT12(String t12) {
		this.t12 = t12;
	}

	public String getT23() {
		return t23;
	}

	public void setT23(String t23) {
		this.t23 = t23;
	}

	public String getAdamsignl() {
		return adamsignl;
	}

	public void setAdamsignl(String adamsignl) {
		this.adamsignl = adamsignl;
	}

	public String getAdamsignr() {
		return adamsignr;
	}

	public void setAdamsignr(String adamsignr) {
		this.adamsignr = adamsignr;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
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

	public String getSchepelmanl() {
		return schepelmanl;
	}

	public void setSchepelmanl(String schepelmanl) {
		this.schepelmanl = schepelmanl;
	}

	public String getSchepelmanr() {
		return schepelmanr;
	}

	public void setSchepelmanr(String schepelmanr) {
		this.schepelmanr = schepelmanr;
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

	public String getValsalval() {
		return valsalval;
	}

	public void setValsalval(String valsalval) {
		this.valsalval = valsalval;
	}

	public String getValsalvar() {
		return valsalvar;
	}

	public void setValsalvar(String valsalvar) {
		this.valsalvar = valsalvar;
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

	public String getT78() {
		return t78;
	}

	public void setT78(String t78) {
		this.t78 = t78;
	}

	public String getT89() {
		return t89;
	}

	public void setT89(String t89) {
		this.t89 = t89;
	}

	public String getDejerinel() {
		return dejerinel;
	}

	public void setDejerinel(String dejerinel) {
		this.dejerinel = dejerinel;
	}

	public String getDejeriner() {
		return dejeriner;
	}

	public void setDejeriner(String dejeriner) {
		this.dejeriner = dejeriner;
	}

	public String getT910() {
		return t910;
	}

	public void setT910(String t910) {
		this.t910 = t910;
	}

	public String getT1011() {
		return t1011;
	}

	public void setT1011(String t1011) {
		this.t1011 = t1011;
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

	public String getT1112() {
		return t1112;
	}

	public void setT1112(String t1112) {
		this.t1112 = t1112;
	}

	public String getT12l1() {
		return t12l1;
	}

	public void setT12l1(String t12l1) {
		this.t12l1 = t12l1;
	}

	public String getSternall() {
		return sternall;
	}

	public void setSternall(String sternall) {
		this.sternall = sternall;
	}

	public String getSternalr() {
		return sternalr;
	}

	public void setSternalr(String sternalr) {
		this.sternalr = sternalr;
	}

	

	public String getBeevorl() {
		return beevorl;
	}

	public void setBeevorl(String beevorl) {
		this.beevorl = beevorl;
	}

	public String getBeevorr() {
		return beevorr;
	}

	public void setBeevorr(String beevorr) {
		this.beevorr = beevorr;
	}

	public String getNeurologicaltest() {
		return neurologicaltest;
	}

	public void setNeurologicaltest(String neurologicaltest) {
		this.neurologicaltest = neurologicaltest;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getIntercostal() {
		return intercostal;
	}

	public void setIntercostal(String intercostal) {
		this.intercostal = intercostal;
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