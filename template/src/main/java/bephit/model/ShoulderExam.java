package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class ShoulderExam
{
private String shoulderexamno;

@NotEmpty
private String pname;

@NotEmpty
private String date;
private String muscle;
private String swelling;
private String ao;
private String dysfunction;
private String pectoralisminor;
private String supraspinatus;
private String infraspinatus;
private String serratusant;
private String teresminor;
private String teresmajor;
private String rhomboids;
private String trapezius;
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
private String emptycanleft;
private String emptycanright;
private String impingementsignleft;
private String impingementsignright;
private String apleysscratchleft;
private String apleysscratchright;
private String subacrominalpushleft;
private String subacrominalpushright;
private String dawbarnsleft;
private String dawbarnsright;
private String yergasonsleft;
private String yergasonsright;
private String codmansleft;
private String codmansright;
private String apprehensionleft;
private String apprehensionright;
private String neurological;
private String latdeltoidleft;
private String latdeltoidright;
private String latarmleft;
private String latarmright;
private String thirdleft;
private String thirdright;
private String medforearmleft;
private String medforearmright;
private String medelbowleft;
private String medelbowright;
private String shdleft;
private String shdright;
private String elbflexleft;
private String elbflexright;
private String elbextleft;
private String elbextright;
private String digitflexionleft;
private String digitflexionright;
private String digitabdleft;
private String digitabdright;
private String bicepsleft;
private String bicepsright;
private String brachioradleft;
private String brachioradright;
private String tricepsleft;
private String tricepsright;
private String overhead;
private String lifting;
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
private String outsiderefferal;
private String dc;
private String others;
private String othervalue;

@NotEmpty
private String signature;
public String getShoulderexamno() {
	return shoulderexamno;
}
public void setShoulderexamno(String shoulderexamno) {
	this.shoulderexamno = shoulderexamno;
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
public String getPectoralisminor() {
	return pectoralisminor;
}
public void setPectoralisminor(String pectoralisminor) {
	this.pectoralisminor = pectoralisminor;
}
public String getSupraspinatus() {
	return supraspinatus;
}
public void setSupraspinatus(String supraspinatus) {
	this.supraspinatus = supraspinatus;
}
public String getInfraspinatus() {
	return infraspinatus;
}
public void setInfraspinatus(String infraspinatus) {
	this.infraspinatus = infraspinatus;
}
public String getSerratusant() {
	return serratusant;
}
public void setSerratusant(String serratusant) {
	this.serratusant = serratusant;
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
public String getAbductionright() {
	return abductionright;
}
public void setAbductionright(String abductionright) {
	this.abductionright = abductionright;
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
public String getEmptycanleft() {
	return emptycanleft;
}
public void setEmptycanleft(String emptycanleft) {
	this.emptycanleft = emptycanleft;
}
public String getEmptycanright() {
	return emptycanright;
}
public void setEmptycanright(String emptycanright) {
	this.emptycanright = emptycanright;
}
public String getImpingementsignleft() {
	return impingementsignleft;
}
public void setImpingementsignleft(String impingementsignleft) {
	this.impingementsignleft = impingementsignleft;
}
public String getImpingementsignright() {
	return impingementsignright;
}
public void setImpingementsignright(String impingementsignright) {
	this.impingementsignright = impingementsignright;
}
public String getApleysscratchleft() {
	return apleysscratchleft;
}
public void setApleysscratchleft(String apleysscratchleft) {
	this.apleysscratchleft = apleysscratchleft;
}
public String getApleysscratchright() {
	return apleysscratchright;
}
public void setApleysscratchright(String apleysscratchright) {
	this.apleysscratchright = apleysscratchright;
}
public String getSubacrominalpushleft() {
	return subacrominalpushleft;
}
public void setSubacrominalpushleft(String subacrominalpushleft) {
	this.subacrominalpushleft = subacrominalpushleft;
}
public String getSubacrominalpushright() {
	return subacrominalpushright;
}
public void setSubacrominalpushright(String subacrominalpushright) {
	this.subacrominalpushright = subacrominalpushright;
}
public String getDawbarnsleft() {
	return dawbarnsleft;
}
public void setDawbarnsleft(String dawbarnsleft) {
	this.dawbarnsleft = dawbarnsleft;
}
public String getDawbarnsright() {
	return dawbarnsright;
}
public void setDawbarnsright(String dawbarnsright) {
	this.dawbarnsright = dawbarnsright;
}
public String getYergasonsleft() {
	return yergasonsleft;
}
public void setYergasonsleft(String yergasonsleft) {
	this.yergasonsleft = yergasonsleft;
}
public String getYergasonsright() {
	return yergasonsright;
}
public void setYergasonsright(String yergasonsright) {
	this.yergasonsright = yergasonsright;
}
public String getCodmansleft() {
	return codmansleft;
}
public void setCodmansleft(String codmansleft) {
	this.codmansleft = codmansleft;
}
public String getCodmansright() {
	return codmansright;
}
public void setCodmansright(String codmansright) {
	this.codmansright = codmansright;
}
public String getApprehensionleft() {
	return apprehensionleft;
}
public void setApprehensionleft(String apprehensionleft) {
	this.apprehensionleft = apprehensionleft;
}
public String getApprehensionright() {
	return apprehensionright;
}
public void setApprehensionright(String apprehensionright) {
	this.apprehensionright = apprehensionright;
}
public String getNeurological() {
	return neurological;
}
public void setNeurological(String neurological) {
	this.neurological = neurological;
}
public String getLatdeltoidleft() {
	return latdeltoidleft;
}
public void setLatdeltoidleft(String latdeltoidleft) {
	this.latdeltoidleft = latdeltoidleft;
}
public String getLatdeltoidright() {
	return latdeltoidright;
}
public void setLatdeltoidright(String latdeltoidright) {
	this.latdeltoidright = latdeltoidright;
}
public String getLatarmleft() {
	return latarmleft;
}
public void setLatarmleft(String latarmleft) {
	this.latarmleft = latarmleft;
}
public String getLatarmright() {
	return latarmright;
}
public void setLatarmright(String latarmright) {
	this.latarmright = latarmright;
}
public String getThirdleft() {
	return thirdleft;
}
public void setThirdleft(String thirdleft) {
	this.thirdleft = thirdleft;
}
public String getThirdright() {
	return thirdright;
}
public void setThirdright(String thirdright) {
	this.thirdright = thirdright;
}
public String getMedforearmleft() {
	return medforearmleft;
}
public void setMedforearmleft(String medforearmleft) {
	this.medforearmleft = medforearmleft;
}
public String getMedforearmright() {
	return medforearmright;
}
public void setMedforearmright(String medforearmright) {
	this.medforearmright = medforearmright;
}
public String getMedelbowleft() {
	return medelbowleft;
}
public void setMedelbowleft(String medelbowleft) {
	this.medelbowleft = medelbowleft;
}
public String getMedelbowright() {
	return medelbowright;
}
public void setMedelbowright(String medelbowright) {
	this.medelbowright = medelbowright;
}
public String getShdleft() {
	return shdleft;
}
public void setShdleft(String shdleft) {
	this.shdleft = shdleft;
}
public String getShdright() {
	return shdright;
}
public void setShdright(String shdright) {
	this.shdright = shdright;
}
public String getElbflexleft() {
	return elbflexleft;
}
public void setElbflexleft(String elbflexleft) {
	this.elbflexleft = elbflexleft;
}
public String getElbflexright() {
	return elbflexright;
}
public void setElbflexright(String elbflexright) {
	this.elbflexright = elbflexright;
}
public String getElbextleft() {
	return elbextleft;
}
public void setElbextleft(String elbextleft) {
	this.elbextleft = elbextleft;
}
public String getElbextright() {
	return elbextright;
}
public void setElbextright(String elbextright) {
	this.elbextright = elbextright;
}
public String getDigitflexionleft() {
	return digitflexionleft;
}
public void setDigitflexionleft(String digitflexionleft) {
	this.digitflexionleft = digitflexionleft;
}
public String getDigitflexionright() {
	return digitflexionright;
}
public void setDigitflexionright(String digitflexionright) {
	this.digitflexionright = digitflexionright;
}
public String getDigitabdleft() {
	return digitabdleft;
}
public void setDigitabdleft(String digitabdleft) {
	this.digitabdleft = digitabdleft;
}
public String getDigitabdright() {
	return digitabdright;
}
public void setDigitabdright(String digitabdright) {
	this.digitabdright = digitabdright;
}
public String getBicepsleft() {
	return bicepsleft;
}
public void setBicepsleft(String bicepsleft) {
	this.bicepsleft = bicepsleft;
}
public String getBicepsright() {
	return bicepsright;
}
public void setBicepsright(String bicepsright) {
	this.bicepsright = bicepsright;
}
public String getBrachioradleft() {
	return brachioradleft;
}
public void setBrachioradleft(String brachioradleft) {
	this.brachioradleft = brachioradleft;
}
public String getBrachioradright() {
	return brachioradright;
}
public void setBrachioradright(String brachioradright) {
	this.brachioradright = brachioradright;
}
public String getTricepsleft() {
	return tricepsleft;
}
public void setTricepsleft(String tricepsleft) {
	this.tricepsleft = tricepsleft;
}
public String getTricepsright() {
	return tricepsright;
}
public void setTricepsright(String tricepsright) {
	this.tricepsright = tricepsright;
}
public String getOverhead() {
	return overhead;
}
public void setOverhead(String overhead) {
	this.overhead = overhead;
}
public String getLifting() {
	return lifting;
}
public void setLifting(String lifting) {
	this.lifting = lifting;
}
public String getOther() {
	return other;
}
public void setOther(String other) {
	this.other = other;
}
public String getOtherdefict() {
	return otherdefict;
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
public String getWeeks() {
	return weeks;
}
public void setWeeks(String weeks) {
	this.weeks = weeks;
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

public String getOutsiderefferal() {
	return outsiderefferal;
}
public void setOutsiderefferal(String outsiderefferal) {
	this.outsiderefferal = outsiderefferal;
}
public String getDc() {
	return dc;
}
public void setDc(String dc) {
	this.dc = dc;
}
public String getOthers() {
	return others;
}
public void setOthers(String others) {
	this.others = others;
}
public String getOthervalue() {
	return othervalue;
}
public void setOthervalue(String othervalue) {
	this.othervalue = othervalue;
}
public String getSignature() {
	return signature;
}
public void setSignature(String signature) {
	this.signature = signature;
}
public ShoulderExam() {
	super();
}
public ShoulderExam(String shoulderexamno, String pname, String date,
		String muscle, String swelling, String ao, String dysfunction,
		String pectoralisminor, String supraspinatus, String infraspinatus,
		String serratusant, String teresminor, String teresmajor,
		String rhomboids, String trapezius, String note, String functional,
		String orthotpedic, String flexionleft, String flexionright,
		String extensionleft, String extensionright, String abductionleft,
		String abductionright, String adductionleft, String adductionright,
		String internalrotationleft, String internalrotationright,
		String externalrotationleft, String externalrotationright,
		String emptycanleft, String emptycanright, String impingementsignleft,
		String impingementsignright, String apleysscratchleft,
		String apleysscratchright, String subacrominalpushleft,
		String subacrominalpushright, String dawbarnsleft,
		String dawbarnsright, String yergasonsleft, String yergasonsright,
		String codmansleft, String codmansright, String apprehensionleft,
		String apprehensionright, String neurological, String latdeltoidleft,
		String latdeltoidright, String latarmleft, String latarmright,
		String thirdleft, String thirdright, String medforearmleft,
		String medforearmright, String medelbowleft, String medelbowright,
		String shdleft, String shdright, String elbflexleft,
		String elbflexright, String elbextleft, String elbextright,
		String digitflexionleft, String digitflexionright, String digitabdleft,
		String digitabdright, String bicepsleft, String bicepsright,
		String brachioradleft, String brachioradright, String tricepsleft,
		String tricepsright, String overhead, String lifting, String other,
		String otherdefict, String comments, String patientstatus,
		String diagnosis1, String diagnosis2, String diagnosis3,
		String diagnosis4, String diagnosis5, String times, String weeks,
		String spinaldecompression, String chiropractic,
		String physicaltherapy, String bracing, String modalities,
		String supplementation, String hep, String radiographic, String mri,
		String scan, String conduction, String emg, String outsiderefferal,
		String dc, String others, String othervalue, String signature) {
	super();
	this.shoulderexamno = shoulderexamno;
	this.pname = pname;
	this.date = date;
	this.muscle = muscle;
	this.swelling = swelling;
	this.ao = ao;
	this.dysfunction = dysfunction;
	this.pectoralisminor = pectoralisminor;
	this.supraspinatus = supraspinatus;
	this.infraspinatus = infraspinatus;
	this.serratusant = serratusant;
	this.teresminor = teresminor;
	this.teresmajor = teresmajor;
	this.rhomboids = rhomboids;
	this.trapezius = trapezius;
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
	this.emptycanleft = emptycanleft;
	this.emptycanright = emptycanright;
	this.impingementsignleft = impingementsignleft;
	this.impingementsignright = impingementsignright;
	this.apleysscratchleft = apleysscratchleft;
	this.apleysscratchright = apleysscratchright;
	this.subacrominalpushleft = subacrominalpushleft;
	this.subacrominalpushright = subacrominalpushright;
	this.dawbarnsleft = dawbarnsleft;
	this.dawbarnsright = dawbarnsright;
	this.yergasonsleft = yergasonsleft;
	this.yergasonsright = yergasonsright;
	this.codmansleft = codmansleft;
	this.codmansright = codmansright;
	this.apprehensionleft = apprehensionleft;
	this.apprehensionright = apprehensionright;
	this.neurological = neurological;
	this.latdeltoidleft = latdeltoidleft;
	this.latdeltoidright = latdeltoidright;
	this.latarmleft = latarmleft;
	this.latarmright = latarmright;
	this.thirdleft = thirdleft;
	this.thirdright = thirdright;
	this.medforearmleft = medforearmleft;
	this.medforearmright = medforearmright;
	this.medelbowleft = medelbowleft;
	this.medelbowright = medelbowright;
	this.shdleft = shdleft;
	this.shdright = shdright;
	this.elbflexleft = elbflexleft;
	this.elbflexright = elbflexright;
	this.elbextleft = elbextleft;
	this.elbextright = elbextright;
	this.digitflexionleft = digitflexionleft;
	this.digitflexionright = digitflexionright;
	this.digitabdleft = digitabdleft;
	this.digitabdright = digitabdright;
	this.bicepsleft = bicepsleft;
	this.bicepsright = bicepsright;
	this.brachioradleft = brachioradleft;
	this.brachioradright = brachioradright;
	this.tricepsleft = tricepsleft;
	this.tricepsright = tricepsright;
	this.overhead = overhead;
	this.lifting = lifting;
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
	this.outsiderefferal = outsiderefferal;
	this.dc = dc;
	this.others = others;
	this.othervalue = othervalue;
	this.signature = signature;
}


}