package bephit.model;
import javax.validation.constraints.Pattern;


public class HipExam
{
private String hipexamno;

private String pname;

private String date;

private String gait;

private String pelvic;

private String ao;

private String dysfunction;

private String shortlegleft;

private String shortlegleftvalue;

private String shortlegleftother;

private String shortlegright;

private String shortlegrightvalue;

private String shortlegrightother;

private String piriformisleft;

private String piriformisright;

private String gluteusleft;

private String gluteusright;

private String iliopsoasleft;

private String iliopsoasright;

private String hamstringsleft;

private String hamstringsright;
private String note;
private String functional;
private String orthotpedic;
private String flexionleft;
private String flexionright;
private String extensionleft;
private String extensionright;
private String abductionleft;
private String abductionright;
private String adductionleft;
private String adductionright;
private String internalrotationleft;
private String internalrotationright;
private String externalrotationleft;
private String externalrotationright;
private String fabereleft;
private String fabereright;
private String nachlasleft;
private String nachlasright;
private String elysleft;
private String elysright;
private String yeomansleft;
private String yeomansright;
private String obersleft;
private String obersright;
private String hibbsleft;
private String hibbsright;
private String thomasleft;
private String thomasright;
private String neurological;
private String inguinalarealeft;
private String inguinalarearight;
private String antleft;
private String antright;
private String kneeleft;
private String kneeright;
private String medialleft;
private String medialright;
private String latleft;
private String latright;
private String plantarleft;
private String plantarright;
private String iliopsoasfirstleft;
private String iliopsoasfirstright;
private String iliopsoas1left;
private String iliopsoas1right;
private String iliopsoas2left;
private String iliopsoas2right;
private String femleft;
private String femright;
private String medleft;
private String medright;
private String maxleft;
private String maxright;
private String patellarleft;
private String patellarright;
private String hsleft;
private String hsright;
private String achillesleft;
private String achillesright;
private String walking;
private String standing;
private String stairs;
private String other;
private String otherdefict;
private String comments;
private String patientstatus;
private String diagnosis1;
private String diagnosis2;
private String diagnosis3;
private String diagnosis4;
private String diagnosis5;
private String times;
private String weeks;
private String spinaldecompression;
private String chiropractic;
private String physicaltherapy;
private String bracing;
private String modalities;
private String supplementation;
private String hep;
private String radiographic;
private String mri;
private String scan;
private String conduction;
private String emg;
private String outsidereferral;
private String dc;
private String signature;

public HipExam() {
	super();
}


public HipExam(String hipexamno, String pname, String date, String gait,
		String pelvic, String ao, String dysfunction, String shortlegleft,
		String shortlegleftvalue, String shortlegleftother,
		String shortlegright, String shortlegrightvalue,
		String shortlegrightother, String piriformisleft, String gluteusleft,
		String iliopsoasleft, String hamstringsleft, String note,
		String functional, String orthotpedic, String flexionleft,
		String flexionright, String extensionleft, String extensionright,
		String abductionleft, String abductionright, String adductionleft,
		String adductionright, String internalrotationleft,
		String internalrotationright, String externalrotationleft,
		String externalrotationright, String fabereleft, String fabereright,
		String nachlasleft, String nachlasright, String elysleft,
		String elysright, String yeomansleft, String yeomansright,
		String obersleft, String obersright, String hibbsleft,
		String hibbsright, String thomasleft, String thomasright,
		String neurological, String inguinalarealeft, String inguinalarearight,
		String antleft, String antright, String kneeleft, String kneeright,
		String medialleft, String medialright, String latleft, String latright,
		String plantarleft, String plantarright, String iliopsoasfirstleft,
		String iliopsoasfirstright, String iliopsoas1left,
		String iliopsoas1right, String iliopsoas2left, String iliopsoas2right,
		String femleft, String femright, String medleft, String medright,
		String maxleft, String maxright, String patellarleft,
		String patellarright, String hsleft, String hsright,
		String achillesleft, String achillesright, String walking,
		String standing, String stairs, String other, String otherdefict,
		String comments, String patientstatus, String diagnosis1,
		String diagnosis2, String diagnosis3, String diagnosis4,
		String diagnosis5, String times, String weeks,
		String spinaldecompression, String chiropractic,
		String physicaltherapy, String bracing, String modalities,
		String supplementation, String hep, String radiographic, String mri,
		String scan, String conduction, String emg, String outsidereferral,
		String dc, String signature) {
	super();
	this.hipexamno = hipexamno;
	this.pname = pname;
	this.date = date;
	this.gait = gait;
	this.pelvic = pelvic;
	this.ao = ao;
	this.dysfunction = dysfunction;
	this.shortlegleft = shortlegleft;
	this.shortlegleftvalue = shortlegleftvalue;
	this.shortlegleftother = shortlegleftother;
	this.shortlegright = shortlegright;
	this.shortlegrightvalue = shortlegrightvalue;
	this.shortlegrightother = shortlegrightother;
	this.piriformisleft = piriformisleft;
	this.gluteusleft = gluteusleft;
	this.iliopsoasleft = iliopsoasleft;
	this.hamstringsleft = hamstringsleft;
	this.note = note;
	this.functional = functional;
	this.orthotpedic = orthotpedic;
	this.flexionleft = flexionleft;
	this.flexionright = flexionright;
	this.extensionleft = extensionleft;
	this.extensionright = extensionright;
	this.abductionleft = abductionleft;
	this.abductionright = abductionright;
	this.adductionleft = adductionleft;
	this.adductionright = adductionright;
	this.internalrotationleft = internalrotationleft;
	this.internalrotationright = internalrotationright;
	this.externalrotationleft = externalrotationleft;
	this.externalrotationright = externalrotationright;
	this.fabereleft = fabereleft;
	this.fabereright = fabereright;
	this.nachlasleft = nachlasleft;
	this.nachlasright = nachlasright;
	this.elysleft = elysleft;
	this.elysright = elysright;
	this.yeomansleft = yeomansleft;
	this.yeomansright = yeomansright;
	this.obersleft = obersleft;
	this.obersright = obersright;
	this.hibbsleft = hibbsleft;
	this.hibbsright = hibbsright;
	this.thomasleft = thomasleft;
	this.thomasright = thomasright;
	this.neurological = neurological;
	this.inguinalarealeft = inguinalarealeft;
	this.inguinalarearight = inguinalarearight;
	this.antleft = antleft;
	this.antright = antright;
	this.kneeleft = kneeleft;
	this.kneeright = kneeright;
	this.medialleft = medialleft;
	this.medialright = medialright;
	this.latleft = latleft;
	this.latright = latright;
	this.plantarleft = plantarleft;
	this.plantarright = plantarright;
	this.iliopsoasfirstleft = iliopsoasfirstleft;
	this.iliopsoasfirstright = iliopsoasfirstright;
	this.iliopsoas1left = iliopsoas1left;
	this.iliopsoas1right = iliopsoas1right;
	this.iliopsoas2left = iliopsoas2left;
	this.iliopsoas2right = iliopsoas2right;
	this.femleft = femleft;
	this.femright = femright;
	this.medleft = medleft;
	this.medright = medright;
	this.maxleft = maxleft;
	this.maxright = maxright;
	this.patellarleft = patellarleft;
	this.patellarright = patellarright;
	this.hsleft = hsleft;
	this.hsright = hsright;
	this.achillesleft = achillesleft;
	this.achillesright = achillesright;
	this.walking = walking;
	this.standing = standing;
	this.stairs = stairs;
	this.other = other;
	this.otherdefict = otherdefict;
	this.comments = comments;
	this.patientstatus = patientstatus;
	this.diagnosis1 = diagnosis1;
	this.diagnosis2 = diagnosis2;
	this.diagnosis3 = diagnosis3;
	this.diagnosis4 = diagnosis4;
	this.diagnosis5 = diagnosis5;
	this.times = times;
	this.weeks = weeks;
	this.spinaldecompression = spinaldecompression;
	this.chiropractic = chiropractic;
	this.physicaltherapy = physicaltherapy;
	this.bracing = bracing;
	this.modalities = modalities;
	this.supplementation = supplementation;
	this.hep = hep;
	this.radiographic = radiographic;
	this.mri = mri;
	this.scan = scan;
	this.conduction = conduction;
	this.emg = emg;
	this.outsidereferral = outsidereferral;
	this.dc = dc;
	this.signature = signature;
}


public String getHipexamno() {
	return hipexamno;
}
public void setHipexamno(String hipexamno) {
	this.hipexamno = hipexamno;
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
public String getPelvic() {
	return pelvic;
}
public void setPelvic(String pelvic) {
	this.pelvic = pelvic;
}
public String getAo() {
	return ao;
}
public void setAo(String ao) {
	this.ao = ao;
}
public String getDysfunction() {
	return dysfunction;
}
public void setDysfunction(String dysfunction) {
	this.dysfunction = dysfunction;
}
public String getShortlegleft() {
	return shortlegleft;
}
public void setShortlegleft(String shortlegleft) {
	this.shortlegleft = shortlegleft;
}
public String getShortlegleftvalue() {
	return shortlegleftvalue;
}
public void setShortlegleftvalue(String shortlegleftvalue) {
	this.shortlegleftvalue = shortlegleftvalue;
}
public String getShortlegleftother() {
	return shortlegleftother;
}
public void setShortlegleftother(String shortlegleftother) {
	this.shortlegleftother = shortlegleftother;
}
public String getShortlegright() {
	return shortlegright;
}
public void setShortlegright(String shortlegright) {
	this.shortlegright = shortlegright;
}
public String getShortlegrightvalue() {
	return shortlegrightvalue;
}
public void setShortlegrightvalue(String shortlegrightvalue) {
	this.shortlegrightvalue = shortlegrightvalue;
}
public String getShortlegrightother() {
	return shortlegrightother;
}
public void setShortlegrightother(String shortlegrightother) {
	this.shortlegrightother = shortlegrightother;
}
public String getPiriformisleft() {
	return piriformisleft;
}
public void setPiriformisleft(String piriformisleft) {
	this.piriformisleft = piriformisleft;
}
public String getPiriformisright() {
	return piriformisright;
}
public void setPiriformisright(String piriformisright) {
	this.piriformisright = piriformisright;
}
public String getGluteusleft() {
	return gluteusleft;
}
public void setGluteusleft(String gluteusleft) {
	this.gluteusleft = gluteusleft;
}
public String getGluteusright() {
	return gluteusright;
}
public void setGluteusright(String gluteusright) {
	this.gluteusright = gluteusright;
}
public String getIliopsoasleft() {
	return iliopsoasleft;
}
public void setIliopsoasleft(String iliopsoasleft) {
	this.iliopsoasleft = iliopsoasleft;
}
public String getIliopsoasright() {
	return iliopsoasright;
}
public void setIliopsoasright(String iliopsoasright) {
	this.iliopsoasright = iliopsoasright;
}
public String getHamstringsleft() {
	return hamstringsleft;
}
public void setHamstringsleft(String hamstringsleft) {
	this.hamstringsleft = hamstringsleft;
}
public String getHamstringsright() {
	return hamstringsright;
}
public void setHamstringsright(String hamstringsright) {
	this.hamstringsright = hamstringsright;
}
public String getNote() {
	return note;
}
public void setNote(String note) {
	this.note = note;
}
public String getFunctional() {
	return functional;
}
public void setFunctional(String functional) {
	this.functional = functional;
}
public String getOrthotpedic() {
	return orthotpedic;
}
public void setOrthotpedic(String orthotpedic) {
	this.orthotpedic = orthotpedic;
}
public String getFlexionleft() {
	return flexionleft;
}
public void setFlexionleft(String flexionleft) {
	this.flexionleft = flexionleft;
}
public String getFlexionright() {
	return flexionright;
}
public void setFlexionright(String flexionright) {
	this.flexionright = flexionright;
}
public String getExtensionleft() {
	return extensionleft;
}
public void setExtensionleft(String extensionleft) {
	this.extensionleft = extensionleft;
}
public String getExtensionright() {
	return extensionright;
}
public void setExtensionright(String extensionright) {
	this.extensionright = extensionright;
}
public String getAbductionleft() {
	return abductionleft;
}
public void setAbductionleft(String abductionleft) {
	this.abductionleft = abductionleft;
}
public String getAbductionright() {
	return abductionright;
}
public void setAbductionright(String abductionright) {
	this.abductionright = abductionright;
}
public String getAdductionleft() {
	return adductionleft;
}
public void setAdductionleft(String adductionleft) {
	this.adductionleft = adductionleft;
}
public String getAdductionright() {
	return adductionright;
}
public void setAdductionright(String adductionright) {
	this.adductionright = adductionright;
}
public String getInternalrotationleft() {
	return internalrotationleft;
}
public void setInternalrotationleft(String internalrotationleft) {
	this.internalrotationleft = internalrotationleft;
}
public String getInternalrotationright() {
	return internalrotationright;
}
public void setInternalrotationright(String internalrotationright) {
	this.internalrotationright = internalrotationright;
}
public String getExternalrotationleft() {
	return externalrotationleft;
}
public void setExternalrotationleft(String externalrotationleft) {
	this.externalrotationleft = externalrotationleft;
}
public String getExternalrotationright() {
	return externalrotationright;
}
public void setExternalrotationright(String externalrotationright) {
	this.externalrotationright = externalrotationright;
}
public String getFabereleft() {
	return fabereleft;
}
public void setFabereleft(String fabereleft) {
	this.fabereleft = fabereleft;
}
public String getFabereright() {
	return fabereright;
}
public void setFabereright(String fabereright) {
	this.fabereright = fabereright;
}
public String getNachlasleft() {
	return nachlasleft;
}
public void setNachlasleft(String nachlasleft) {
	this.nachlasleft = nachlasleft;
}
public String getNachlasright() {
	return nachlasright;
}
public void setNachlasright(String nachlasright) {
	this.nachlasright = nachlasright;
}
public String getElysleft() {
	return elysleft;
}
public void setElysleft(String elysleft) {
	this.elysleft = elysleft;
}
public String getElysright() {
	return elysright;
}
public void setElysright(String elysright) {
	this.elysright = elysright;
}
public String getYeomansleft() {
	return yeomansleft;
}
public void setYeomansleft(String yeomansleft) {
	this.yeomansleft = yeomansleft;
}
public String getYeomansright() {
	return yeomansright;
}
public void setYeomansright(String yeomansright) {
	this.yeomansright = yeomansright;
}
public String getObersleft() {
	return obersleft;
}
public void setObersleft(String obersleft) {
	this.obersleft = obersleft;
}
public String getObersright() {
	return obersright;
}
public void setObersright(String obersright) {
	this.obersright = obersright;
}
public String getHibbsleft() {
	return hibbsleft;
}
public void setHibbsleft(String hibbsleft) {
	this.hibbsleft = hibbsleft;
}
public String getHibbsright() {
	return hibbsright;
}
public void setHibbsright(String hibbsright) {
	this.hibbsright = hibbsright;
}
public String getThomasleft() {
	return thomasleft;
}
public void setThomasleft(String thomasleft) {
	this.thomasleft = thomasleft;
}
public String getThomasright() {
	return thomasright;
}
public void setThomasright(String thomasright) {
	this.thomasright = thomasright;
}
public String getNeurological() {
	return neurological;
}
public void setNeurological(String neurological) {
	this.neurological = neurological;
}
public String getInguinalarealeft() {
	return inguinalarealeft;
}
public void setInguinalarealeft(String inguinalarealeft) {
	this.inguinalarealeft = inguinalarealeft;
}
public String getInguinalarearight() {
	return inguinalarearight;
}
public void setInguinalarearight(String inguinalarearight) {
	this.inguinalarearight = inguinalarearight;
}
public String getAntleft() {
	return antleft;
}
public void setAntleft(String antleft) {
	this.antleft = antleft;
}
public String getAntright() {
	return antright;
}
public void setAntright(String antright) {
	this.antright = antright;
}
public String getKneeleft() {
	return kneeleft;
}
public void setKneeleft(String kneeleft) {
	this.kneeleft = kneeleft;
}
public String getKneeright() {
	return kneeright;
}
public void setKneeright(String kneeright) {
	this.kneeright = kneeright;
}
public String getMedialleft() {
	return medialleft;
}
public void setMedialleft(String medialleft) {
	this.medialleft = medialleft;
}
public String getMedialright() {
	return medialright;
}
public void setMedialright(String medialright) {
	this.medialright = medialright;
}
public String getLatleft() {
	return latleft;
}
public void setLatleft(String latleft) {
	this.latleft = latleft;
}
public String getLatright() {
	return latright;
}
public void setLatright(String latright) {
	this.latright = latright;
}
public String getPlantarleft() {
	return plantarleft;
}
public void setPlantarleft(String plantarleft) {
	this.plantarleft = plantarleft;
}
public String getPlantarright() {
	return plantarright;
}
public void setPlantarright(String plantarright) {
	this.plantarright = plantarright;
}
public String getIliopsoasfirstleft() {
	return iliopsoasfirstleft;
}
public void setIliopsoasfirstleft(String iliopsoasfirstleft) {
	this.iliopsoasfirstleft = iliopsoasfirstleft;
}
public String getIliopsoasfirstright() {
	return iliopsoasfirstright;
}
public void setIliopsoasfirstright(String iliopsoasfirstright) {
	this.iliopsoasfirstright = iliopsoasfirstright;
}
public String getIliopsoas1left() {
	return iliopsoas1left;
}
public void setIliopsoas1left(String iliopsoas1left) {
	this.iliopsoas1left = iliopsoas1left;
}
public String getIliopsoas1right() {
	return iliopsoas1right;
}
public void setIliopsoas1right(String iliopsoas1right) {
	this.iliopsoas1right = iliopsoas1right;
}
public String getIliopsoas2left() {
	return iliopsoas2left;
}
public void setIliopsoas2left(String iliopsoas2left) {
	this.iliopsoas2left = iliopsoas2left;
}
public String getIliopsoas2right() {
	return iliopsoas2right;
}
public void setIliopsoas2right(String iliopsoas2right) {
	this.iliopsoas2right = iliopsoas2right;
}
public String getFemleft() {
	return femleft;
}
public void setFemleft(String femleft) {
	this.femleft = femleft;
}
public String getFemright() {
	return femright;
}
public void setFemright(String femright) {
	this.femright = femright;
}
public String getMedleft() {
	return medleft;
}
public void setMedleft(String medleft) {
	this.medleft = medleft;
}
public String getMedright() {
	return medright;
}
public void setMedright(String medright) {
	this.medright = medright;
}
public String getMaxleft() {
	return maxleft;
}
public void setMaxleft(String maxleft) {
	this.maxleft = maxleft;
}
public String getMaxright() {
	return maxright;
}
public void setMaxright(String maxright) {
	this.maxright = maxright;
}
public String getPatellarleft() {
	return patellarleft;
}
public void setPatellarleft(String patellarleft) {
	this.patellarleft = patellarleft;
}
public String getPatellarright() {
	return patellarright;
}
public void setPatellarright(String patellarright) {
	this.patellarright = patellarright;
}
public String getHsleft() {
	return hsleft;
}
public void setHsleft(String hsleft) {
	this.hsleft = hsleft;
}
public String getHsright() {
	return hsright;
}
public void setHsright(String hsright) {
	this.hsright = hsright;
}
public String getAchillesleft() {
	return achillesleft;
}
public void setAchillesleft(String achillesleft) {
	this.achillesleft = achillesleft;
}
public String getAchillesright() {
	return achillesright;
}
public void setAchillesright(String achillesright) {
	this.achillesright = achillesright;
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
public String getOtherdefict() {
	return otherdefict;
}

public String getOther() {
	return other;
}

public void setOther(String other) {
	this.other = other;
}

public void setOtherdefict(String otherdefict) {
	this.otherdefict = otherdefict;
}
public String getComments() {
	return comments;
}
public void setComments(String comments) {
	this.comments = comments;
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
public String getTimes() {
	return times;
}
public void setTimes(String times) {
	this.times = times;
}
public String getSpinaldecompression() {
	return spinaldecompression;
}
public void setSpinaldecompression(String spinaldecompression) {
	this.spinaldecompression = spinaldecompression;
}
public String getChiropractic() {
	return chiropractic;
}
public void setChiropractic(String chiropractic) {
	this.chiropractic = chiropractic;
}
public String getPhysicaltherapy() {
	return physicaltherapy;
}
public void setPhysicaltherapy(String physicaltherapy) {
	this.physicaltherapy = physicaltherapy;
}
public String getBracing() {
	return bracing;
}
public void setBracing(String bracing) {
	this.bracing = bracing;
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
public String getWeeks() {
	return weeks;
}

public void setWeeks(String weeks) {
	this.weeks = weeks;
}

public String getScan() {
	return scan;
}
public void setScan(String scan) {
	this.scan = scan;
}
public String getConduction() {
	return conduction;
}
public void setConduction(String conduction) {
	this.conduction = conduction;
}
public String getEmg() {
	return emg;
}
public void setEmg(String emg) {
	this.emg = emg;
}
public String getOutsidereferral() {
	return outsidereferral;
}
public void setOutsidereferral(String outsidereferral) {
	this.outsidereferral = outsidereferral;
}
public String getDc() {
	return dc;
}
public void setDc(String dc) {
	this.dc = dc;
}
public String getSignature() {
	return signature;
}
public void setSignature(String signature) {
	this.signature = signature;
}





}