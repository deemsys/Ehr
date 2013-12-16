package bephit.model;

public class Kneeexam {
	private String kneeexamid;
	private String pname;
	private String date;
	private String gait;
	private String pelvicunleveling;
	private String ao;
	private String allsoft;
	private String leglengthl;
	private String leglengthtextl;
	private String leglengthr;
	private String leglengthtextr;
	private String vmo;
	private String quads;
	private String semimemb;
	private String semitend;
	private String gastroc;
	private String soleus;
	private String iliotibband;
	private String bicepsfem;
	private String functionalrangeofmotion;
	private String orthopedic;
	private String flexion;
	private String acll;
	private String aclr;
	private String extension;
	private String pcll;
	private String pclr;
	private String internalrotation;
	private String lcll;
	private String lclr;
	private String externalrotation;
	private String mcll;
	private String mclr;
	private String circumferential;
	private String meniscusl;
	private String meniscusr;
	private String apleysl;
	private String apleysr;
	private String cmabovel;
	private String suprapatellarl;
	private String infrapatellarl;
	private String belowl;
	private String distractionl;
	private String distractionr;
	private String cmabover;
	private String suprapatellarr;
	private String infrapatellarr;
	private String belowr;
	private String cmpl;
	private String cmpr;
	private String patdll;
	private String patdlr;
	private String neurologicaltest;
	private String l1l;
	private String l1r;
	private String l15l;
	private String l15r;
	private String l2l;
	private String l2r;
	private String l25l;
	private String l25r;
	private String l3l;
	private String l3r;
	private String l35l;
	private String l35r;
	private String l4l;
	private String l4r;
	private String l45l;
	private String l45r;
	private String l4l3;
	private String l4r3;
	private String l5l;
	private String l5r;
	private String l55l;
	private String l55r;
	private String l5l3;
	private String l5r3;
	private String sl;
	private String sr;
	private String s5l;
	private String s5r;
	private String sil;
	private String sir;
	private String walking;
	private String standing;
	private String stairs;
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
	
	public Kneeexam()
	{
		
	}

	public Kneeexam(String kneeexamid, String pname, String date, String gait,
			String pelvicunleveling, String ao, String allsoft,
			String leglengthl, String leglengthtextl, String leglengthr,
			String leglengthtextr, String vmo, String quads, String semimemb,
			String semitend, String gastroc, String soleus, String iliotibband,
			String bicepsfem, String functionalrangeofmotion,
			String orthopedic, String flexion, String acll, String aclr,
			String extension, String pcll, String pclr,
			String internalrotation, String lcll, String lclr,
			String externalrotation, String mcll, String mclr,
			String circumferential, String meniscusl, String meniscusr,
			String apleysl, String apleysr, String cmabovel,
			String suprapatellarl, String infrapatellarl, String belowl,
			String distractionl, String distractionr, String cmabover,
			String suprapatellarr, String infrapatellarr, String belowr,
			String cmpl, String cmpr, String patdll, String patdlr,
			String neurologicaltest, String l1l, String l1r, String l15l,
			String l15r, String l2l, String l2r, String l25l, String l25r,
			String l3l, String l3r, String l35l, String l35r, String l4l,
			String l4r, String l45l, String l45r, String l4l3, String l4r3,
			String l5l, String l5r, String l55l, String l55r, String l5l3,
			String l5r3, String sl, String sr, String s5l, String s5r,
			String sil, String sir, String walking,String standing, String stairs, String otherfunctional,
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
		this.kneeexamid = kneeexamid;
		this.pname = pname;
		this.date = date;
		this.gait = gait;
		this.pelvicunleveling = pelvicunleveling;
		this.ao = ao;
		this.allsoft = allsoft;
		this.leglengthl = leglengthl;
		this.leglengthtextl = leglengthtextl;
		this.leglengthr = leglengthr;
		this.leglengthtextr = leglengthtextr;
		this.vmo = vmo;
		this.quads = quads;
		this.semimemb = semimemb;
		this.semitend = semitend;
		this.gastroc = gastroc;
		this.soleus = soleus;
		this.iliotibband = iliotibband;
		this.bicepsfem = bicepsfem;
		this.functionalrangeofmotion = functionalrangeofmotion;
		this.orthopedic = orthopedic;
		this.flexion = flexion;
		this.acll = acll;
		this.aclr = aclr;
		this.extension = extension;
		this.pcll = pcll;
		this.pclr = pclr;
		this.internalrotation = internalrotation;
		this.lcll = lcll;
		this.lclr = lclr;
		this.externalrotation = externalrotation;
		this.mcll = mcll;
		this.mclr = mclr;
		this.circumferential = circumferential;
		this.meniscusl = meniscusl;
		this.meniscusr = meniscusr;
		this.apleysl = apleysl;
		this.apleysr = apleysr;
		this.cmabovel = cmabovel;
		this.suprapatellarl = suprapatellarl;
		this.infrapatellarl = infrapatellarl;
		this.belowl = belowl;
		this.distractionl = distractionl;
		this.distractionr = distractionr;
		this.cmabover = cmabover;
		this.suprapatellarr = suprapatellarr;
		this.infrapatellarr = infrapatellarr;
		this.belowr = belowr;
		this.cmpl = cmpl;
		this.cmpr = cmpr;
		this.patdll = patdll;
		this.patdlr = patdlr;
		this.neurologicaltest = neurologicaltest;
		this.l1l = l1l;
		this.l1r = l1r;
		this.l15l = l15l;
		this.l15r = l15r;
		this.l2l = l2l;
		this.l2r = l2r;
		this.l25l = l25l;
		this.l25r = l25r;
		this.l3l = l3l;
		this.l3r = l3r;
		this.l35l = l35l;
		this.l35r = l35r;
		this.l4l = l4l;
		this.l4r = l4r;
		this.l45l = l45l;
		this.l45r = l45r;
		this.l4l3 = l4l3;
		this.l4r3 = l4r3;
		this.l5l = l5l;
		this.l5r = l5r;
		this.l55l = l55l;
		this.l55r = l55r;
		this.l5l3 = l5l3;
		this.l5r3 = l5r3;
		this.sl = sl;
		this.sr = sr;
		this.s5l = s5l;
		this.s5r = s5r;
		this.sil = sil;
		this.sir = sir;
		this.walking = walking;
		this.standing=standing;
		this.stairs = stairs;
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

	public String getKneeexamid() {
		return kneeexamid;
	}

	public void setKneeexamid(String kneeexamid) {
		this.kneeexamid = kneeexamid;
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

	public String getGait() {
		return gait;
	}

	public void setGait(String gait) {
		this.gait = gait;
	}

	public String getPelvicunleveling() {
		return pelvicunleveling;
	}

	public void setPelvicunleveling(String pelvicunleveling) {
		this.pelvicunleveling = pelvicunleveling;
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

	public String getLeglengthl() {
		return leglengthl;
	}

	public void setLeglengthl(String leglengthl) {
		this.leglengthl = leglengthl;
	}

	public String getLeglengthtextl() {
		return leglengthtextl;
	}

	public void setLeglengthtextl(String leglengthtextl) {
		this.leglengthtextl = leglengthtextl;
	}

	public String getLeglengthr() {
		return leglengthr;
	}

	public void setLeglengthr(String leglengthr) {
		this.leglengthr = leglengthr;
	}

	public String getLeglengthtextr() {
		return leglengthtextr;
	}

	public void setLeglengthtextr(String leglengthtextr) {
		this.leglengthtextr = leglengthtextr;
	}

	public String getVmo() {
		return vmo;
	}

	public void setVmo(String vmo) {
		this.vmo = vmo;
	}

	public String getQuads() {
		return quads;
	}

	public void setQuads(String quads) {
		this.quads = quads;
	}

	public String getSemimemb() {
		return semimemb;
	}

	public void setSemimemb(String semimemb) {
		this.semimemb = semimemb;
	}

	public String getSemitend() {
		return semitend;
	}

	public void setSemitend(String semitend) {
		this.semitend = semitend;
	}

	public String getGastroc() {
		return gastroc;
	}

	public void setGastroc(String gastroc) {
		this.gastroc = gastroc;
	}

	public String getSoleus() {
		return soleus;
	}

	public void setSoleus(String soleus) {
		this.soleus = soleus;
	}

	public String getIliotibband() {
		return iliotibband;
	}

	public void setIliotibband(String iliotibband) {
		this.iliotibband = iliotibband;
	}

	public String getBicepsfem() {
		return bicepsfem;
	}

	public void setBicepsfem(String bicepsfem) {
		this.bicepsfem = bicepsfem;
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

	public String getFlexion() {
		return flexion;
	}

	public void setFlexion(String flexion) {
		this.flexion = flexion;
	}

	public String getAcll() {
		return acll;
	}

	public void setAcll(String acll) {
		this.acll = acll;
	}

	public String getAclr() {
		return aclr;
	}

	public void setAclr(String aclr) {
		this.aclr = aclr;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getPcll() {
		return pcll;
	}

	public void setPcll(String pcll) {
		this.pcll = pcll;
	}

	public String getPclr() {
		return pclr;
	}

	public void setPclr(String pclr) {
		this.pclr = pclr;
	}

	public String getInternalrotation() {
		return internalrotation;
	}

	public void setInternalrotation(String internalrotation) {
		this.internalrotation = internalrotation;
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

	public String getExternalrotation() {
		return externalrotation;
	}

	public void setExternalrotation(String externalrotation) {
		this.externalrotation = externalrotation;
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

	public String getCircumferential() {
		return circumferential;
	}

	public void setCircumferential(String circumferential) {
		this.circumferential = circumferential;
	}

	public String getMeniscusl() {
		return meniscusl;
	}

	public void setMeniscusl(String meniscusl) {
		this.meniscusl = meniscusl;
	}

	public String getMeniscusr() {
		return meniscusr;
	}

	public void setMeniscusr(String meniscusr) {
		this.meniscusr = meniscusr;
	}

	public String getApleysl() {
		return apleysl;
	}

	public void setApleysl(String apleysl) {
		this.apleysl = apleysl;
	}

	public String getApleysr() {
		return apleysr;
	}

	public void setApleysr(String apleysr) {
		this.apleysr = apleysr;
	}

	public String getCmabovel() {
		return cmabovel;
	}

	public void setCmabovel(String cmabovel) {
		this.cmabovel = cmabovel;
	}

	public String getSuprapatellarl() {
		return suprapatellarl;
	}

	public void setSuprapatellarl(String suprapatellarl) {
		this.suprapatellarl = suprapatellarl;
	}

	public String getInfrapatellarl() {
		return infrapatellarl;
	}

	public void setInfrapatellarl(String infrapatellarl) {
		this.infrapatellarl = infrapatellarl;
	}

	public String getBelowl() {
		return belowl;
	}

	public void setBelowl(String belowl) {
		this.belowl = belowl;
	}

	public String getDistractionl() {
		return distractionl;
	}

	public void setDistractionl(String distractionl) {
		this.distractionl = distractionl;
	}

	public String getDistractionr() {
		return distractionr;
	}

	public void setDistractionr(String distractionr) {
		this.distractionr = distractionr;
	}

	public String getCmabover() {
		return cmabover;
	}

	public void setCmabover(String cmabover) {
		this.cmabover = cmabover;
	}

	public String getSuprapatellarr() {
		return suprapatellarr;
	}

	public void setSuprapatellarr(String suprapatellarr) {
		this.suprapatellarr = suprapatellarr;
	}

	public String getInfrapatellarr() {
		return infrapatellarr;
	}

	public void setInfrapatellarr(String infrapatellarr) {
		this.infrapatellarr = infrapatellarr;
	}

	public String getBelowr() {
		return belowr;
	}

	public void setBelowr(String belowr) {
		this.belowr = belowr;
	}

	public String getCmpl() {
		return cmpl;
	}

	public void setCmpl(String cmpl) {
		this.cmpl = cmpl;
	}

	public String getCmpr() {
		return cmpr;
	}

	public void setCmpr(String cmpr) {
		this.cmpr = cmpr;
	}

	public String getPatdll() {
		return patdll;
	}

	public void setPatdll(String patdll) {
		this.patdll = patdll;
	}

	public String getPatdlr() {
		return patdlr;
	}

	public void setPatdlr(String patdlr) {
		this.patdlr = patdlr;
	}

	public String getNeurologicaltest() {
		return neurologicaltest;
	}

	public void setNeurologicaltest(String neurologicaltest) {
		this.neurologicaltest = neurologicaltest;
	}

	public String getL1l() {
		return l1l;
	}

	public void setL1l(String l1l) {
		this.l1l = l1l;
	}

	public String getL1r() {
		return l1r;
	}

	public void setL1r(String l1r) {
		this.l1r = l1r;
	}

	public String getL15l() {
		return l15l;
	}

	public void setL15l(String l15l) {
		this.l15l = l15l;
	}

	public String getL15r() {
		return l15r;
	}

	public void setL15r(String l15r) {
		this.l15r = l15r;
	}

	public String getL2l() {
		return l2l;
	}

	public void setL2l(String l2l) {
		this.l2l = l2l;
	}

	public String getL2r() {
		return l2r;
	}

	public void setL2r(String l2r) {
		this.l2r = l2r;
	}

	public String getL25l() {
		return l25l;
	}

	public void setL25l(String l25l) {
		this.l25l = l25l;
	}

	public String getL25r() {
		return l25r;
	}

	public void setL25r(String l25r) {
		this.l25r = l25r;
	}

	public String getL3l() {
		return l3l;
	}

	public void setL3l(String l3l) {
		this.l3l = l3l;
	}

	public String getL3r() {
		return l3r;
	}

	public void setL3r(String l3r) {
		this.l3r = l3r;
	}

	public String getL35l() {
		return l35l;
	}

	public void setL35l(String l35l) {
		this.l35l = l35l;
	}

	public String getL35r() {
		return l35r;
	}

	public void setL35r(String l35r) {
		this.l35r = l35r;
	}

	public String getL4l() {
		return l4l;
	}

	public void setL4l(String l4l) {
		this.l4l = l4l;
	}

	public String getL4r() {
		return l4r;
	}

	public void setL4r(String l4r) {
		this.l4r = l4r;
	}

	public String getL45l() {
		return l45l;
	}

	public void setL45l(String l45l) {
		this.l45l = l45l;
	}

	public String getL45r() {
		return l45r;
	}

	public void setL45r(String l45r) {
		this.l45r = l45r;
	}

	public String getL4l3() {
		return l4l3;
	}

	public void setL4l3(String l4l3) {
		this.l4l3 = l4l3;
	}

	public String getL4r3() {
		return l4r3;
	}

	public void setL4r3(String l4r3) {
		this.l4r3 = l4r3;
	}

	public String getL5l() {
		return l5l;
	}

	public void setL5l(String l5l) {
		this.l5l = l5l;
	}

	public String getL5r() {
		return l5r;
	}

	public void setL5r(String l5r) {
		this.l5r = l5r;
	}

	public String getL55l() {
		return l55l;
	}

	public void setL55l(String l55l) {
		this.l55l = l55l;
	}

	public String getL55r() {
		return l55r;
	}

	public void setL55r(String l55r) {
		this.l55r = l55r;
	}

	public String getL5l3() {
		return l5l3;
	}

	public void setL5l3(String l5l3) {
		this.l5l3 = l5l3;
	}

	public String getL5r3() {
		return l5r3;
	}

	public void setL5r3(String l5r3) {
		this.l5r3 = l5r3;
	}

	public String getSl() {
		return sl;
	}

	public void setSl(String sl) {
		this.sl = sl;
	}

	public String getSr() {
		return sr;
	}

	public void setSr(String sr) {
		this.sr = sr;
	}

	public String getS5l() {
		return s5l;
	}

	public void setS5l(String s5l) {
		this.s5l = s5l;
	}

	public String getS5r() {
		return s5r;
	}

	public void setS5r(String s5r) {
		this.s5r = s5r;
	}

	public String getSil() {
		return sil;
	}

	public void setSil(String sil) {
		this.sil = sil;
	}

	public String getSir() {
		return sir;
	}

	public void setSir(String sir) {
		this.sir = sir;
	}

	public String getWalking() {
		return walking;
	}

	public void setWalking(String walking) {
		this.walking = walking;
	}
    
	public String getStanding() {
		return standing;
	}

	public void setStanding(String standing) {
		this.standing = standing;
	}

	public String getStairs() {
		return stairs;
	}

	public void setStairs(String stairs) {
		this.stairs = stairs;
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
