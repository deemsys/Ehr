package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class WristExam
{
	private String wristexamno;
	
	@NotEmpty
	private String pname;
	
	@NotEmpty
	private String date;
	private String muscle;
	private String swelling;
	private String dominanthand;
	private String ao;
	private String dysfunction;
	private String thenareminence;
	private String flexorcarpiradialis;
	private String commonflexors;
	private String hypothenareminence;
	private String extensorcarpiradialis;
	private String commonextensor;
	private String abductorpolliuslongus;
	private String abductorpollicisbrevis;
	private String extensorpollicisbrevis;
	private String note;
	private String functional;
	private String orthotpedic; 
	private String flexionleft;
	private String flexionright;
	private String extensionleft;
	private String extensionright;
	private String ulnarleft;
	private String ulnarright;
	private String radialleft;
	private String radialright;
	private String pronationleft;
	private String pronationright;
	private String allenleft;
	private String allenright;
	private String phalenleft;
	private String phalenright;
	private String reverseleft;
	private String reverseright;
	private String tenosynovitisleft;
	private String tenosynovitisright;
	private String tinnelsleft;
	private String tinnelsright;
	private String ulttleft;
	private String ulttright;
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
	private String typing;
	private String driving;
	private String other;
	private String otherdefict;
	private String comments;
	private String patientstatus;
	private String diagnosis1;
	private String diagnosis2;
	private String diagnosis3;
	private String diagnosis4;
	private String diagnosis5;
	private String diagnosis6;
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
	public WristExam() {
		super();
	}
	public WristExam(String wristexamno, String pname, String date,
			String muscle, String swelling, String dominanthand, String ao,
			String dysfunction, String thenareminence,
			String flexorcarpiradialis, String commonflexors,
			String hypothenareminence, String extensorcarpiradialis,
			String commonextensor, String abductorpolliuslongus,
			String abductorpollicisbrevis, String extensorpollicisbrevis,
			String note, String functional, String orthotpedic,
			String flexionleft, String flexionright, String extensionleft,
			String extensionright, String ulnarleft, String ulnarright,
			String radialleft, String radialright, String pronationleft,
			String pronationright, String allenleft, String allenright,
			String phalenleft, String phalenright, String reverseleft,
			String reverseright, String tenosynovitisleft,
			String tenosynovitisright, String tinnelsleft, String tinnelsright,
			String ulttleft, String ulttright, String neurological,
			String latdeltoidleft, String latdeltoidright, String latarmleft,
			String latarmright, String thirdleft, String thirdright,
			String medforearmleft, String medforearmright, String medelbowleft,
			String medelbowright, String shdleft, String shdright,
			String elbflexleft, String elbflexright, String elbextleft,
			String elbextright, String digitflexionleft,
			String digitflexionright, String digitabdleft,
			String digitabdright, String bicepsleft, String bicepsright,
			String brachioradleft, String brachioradright, String tricepsleft,
			String tricepsright, String typing, String driving, String other,
			String otherdefict, String comments, String patientstatus,
			String diagnosis1, String diagnosis2, String diagnosis3,
			String diagnosis4, String diagnosis5, String diagnosis6,
			String times, String weeks, String spinaldecompression,
			String chiropractic, String physicaltherapy, String bracing,
			String modalities, String supplementation, String hep,
			String radiographic, String mri, String scan, String conduction,
			String emg, String outsiderefferal, String dc, String others,
			String othervalue, String signature) {
		super();
		this.wristexamno = wristexamno;
		this.pname = pname;
		this.date = date;
		this.muscle = muscle;
		this.swelling = swelling;
		this.dominanthand = dominanthand;
		this.ao = ao;
		this.dysfunction = dysfunction;
		this.thenareminence = thenareminence;
		this.flexorcarpiradialis = flexorcarpiradialis;
		this.commonflexors = commonflexors;
		this.hypothenareminence = hypothenareminence;
		this.extensorcarpiradialis = extensorcarpiradialis;
		this.commonextensor = commonextensor;
		this.abductorpolliuslongus = abductorpolliuslongus;
		this.abductorpollicisbrevis = abductorpollicisbrevis;
		this.extensorpollicisbrevis = extensorpollicisbrevis;
		this.note = note;
		this.functional = functional;
		this.orthotpedic = orthotpedic;
		this.flexionleft = flexionleft;
		this.flexionright = flexionright;
		this.extensionleft = extensionleft;
		this.extensionright = extensionright;
		this.ulnarleft = ulnarleft;
		this.ulnarright = ulnarright;
		this.radialleft = radialleft;
		this.radialright = radialright;
		this.pronationleft = pronationleft;
		this.pronationright = pronationright;
		this.allenleft = allenleft;
		this.allenright = allenright;
		this.phalenleft = phalenleft;
		this.phalenright = phalenright;
		this.reverseleft = reverseleft;
		this.reverseright = reverseright;
		this.tenosynovitisleft = tenosynovitisleft;
		this.tenosynovitisright = tenosynovitisright;
		this.tinnelsleft = tinnelsleft;
		this.tinnelsright = tinnelsright;
		this.ulttleft = ulttleft;
		this.ulttright = ulttright;
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
		this.typing = typing;
		this.driving = driving;
		this.other = other;
		this.otherdefict = otherdefict;
		this.comments = comments;
		this.patientstatus = patientstatus;
		this.diagnosis1 = diagnosis1;
		this.diagnosis2 = diagnosis2;
		this.diagnosis3 = diagnosis3;
		this.diagnosis4 = diagnosis4;
		this.diagnosis5 = diagnosis5;
		this.diagnosis6 = diagnosis6;
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
	public String getWristexamno() {
		return wristexamno;
	}
	public void setWristexamno(String wristexamno) {
		this.wristexamno = wristexamno;
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
	public String getThenareminence() {
		return thenareminence;
	}
	public void setThenareminence(String thenareminence) {
		this.thenareminence = thenareminence;
	}
	public String getFlexorcarpiradialis() {
		return flexorcarpiradialis;
	}
	public void setFlexorcarpiradialis(String flexorcarpiradialis) {
		this.flexorcarpiradialis = flexorcarpiradialis;
	}
	public String getCommonflexors() {
		return commonflexors;
	}
	public void setCommonflexors(String commonflexors) {
		this.commonflexors = commonflexors;
	}
	public String getHypothenareminence() {
		return hypothenareminence;
	}
	public void setHypothenareminence(String hypothenareminence) {
		this.hypothenareminence = hypothenareminence;
	}
	public String getExtensorcarpiradialis() {
		return extensorcarpiradialis;
	}
	public void setExtensorcarpiradialis(String extensorcarpiradialis) {
		this.extensorcarpiradialis = extensorcarpiradialis;
	}
	public String getCommonextensor() {
		return commonextensor;
	}
	public void setCommonextensor(String commonextensor) {
		this.commonextensor = commonextensor;
	}
	public String getAbductorpolliuslongus() {
		return abductorpolliuslongus;
	}
	public void setAbductorpolliuslongus(String abductorpolliuslongus) {
		this.abductorpolliuslongus = abductorpolliuslongus;
	}
	public String getAbductorpollicisbrevis() {
		return abductorpollicisbrevis;
	}
	public void setAbductorpollicisbrevis(String abductorpollicisbrevis) {
		this.abductorpollicisbrevis = abductorpollicisbrevis;
	}
	public String getExtensorpollicisbrevis() {
		return extensorpollicisbrevis;
	}
	public void setExtensorpollicisbrevis(String extensorpollicisbrevis) {
		this.extensorpollicisbrevis = extensorpollicisbrevis;
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
	public String getUlnarleft() {
		return ulnarleft;
	}
	public void setUlnarleft(String ulnarleft) {
		this.ulnarleft = ulnarleft;
	}
	public String getUlnarright() {
		return ulnarright;
	}
	public void setUlnarright(String ulnarright) {
		this.ulnarright = ulnarright;
	}
	public String getRadialleft() {
		return radialleft;
	}
	public void setRadialleft(String radialleft) {
		this.radialleft = radialleft;
	}
	public String getRadialright() {
		return radialright;
	}
	public void setRadialright(String radialright) {
		this.radialright = radialright;
	}
	public String getPronationleft() {
		return pronationleft;
	}
	public void setPronationleft(String pronationleft) {
		this.pronationleft = pronationleft;
	}
	public String getPronationright() {
		return pronationright;
	}
	public void setPronationright(String pronationright) {
		this.pronationright = pronationright;
	}
	public String getAllenleft() {
		return allenleft;
	}
	public void setAllenleft(String allenleft) {
		this.allenleft = allenleft;
	}
	public String getAllenright() {
		return allenright;
	}
	public void setAllenright(String allenright) {
		this.allenright = allenright;
	}
	public String getPhalenleft() {
		return phalenleft;
	}
	public void setPhalenleft(String phalenleft) {
		this.phalenleft = phalenleft;
	}
	public String getPhalenright() {
		return phalenright;
	}
	public void setPhalenright(String phalenright) {
		this.phalenright = phalenright;
	}
	public String getReverseleft() {
		return reverseleft;
	}
	public void setReverseleft(String reverseleft) {
		this.reverseleft = reverseleft;
	}
	public String getReverseright() {
		return reverseright;
	}
	public void setReverseright(String reverseright) {
		this.reverseright = reverseright;
	}
	public String getTenosynovitisleft() {
		return tenosynovitisleft;
	}
	public void setTenosynovitisleft(String tenosynovitisleft) {
		this.tenosynovitisleft = tenosynovitisleft;
	}
	public String getTenosynovitisright() {
		return tenosynovitisright;
	}
	public void setTenosynovitisright(String tenosynovitisright) {
		this.tenosynovitisright = tenosynovitisright;
	}
	public String getTinnelsleft() {
		return tinnelsleft;
	}
	public void setTinnelsleft(String tinnelsleft) {
		this.tinnelsleft = tinnelsleft;
	}
	public String getTinnelsright() {
		return tinnelsright;
	}
	public void setTinnelsright(String tinnelsright) {
		this.tinnelsright = tinnelsright;
	}
	public String getUlttleft() {
		return ulttleft;
	}
	public void setUlttleft(String ulttleft) {
		this.ulttleft = ulttleft;
	}
	public String getUlttright() {
		return ulttright;
	}
	public void setUlttright(String ulttright) {
		this.ulttright = ulttright;
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
	public String getTyping() {
		return typing;
	}
	public void setTyping(String typing) {
		this.typing = typing;
	}
	public String getDriving() {
		return driving;
	}
	public void setDriving(String driving) {
		this.driving = driving;
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
	
	
	
}