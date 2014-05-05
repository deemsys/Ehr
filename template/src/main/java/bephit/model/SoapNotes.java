package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class SoapNotes {

	private String username;
	private String soapid;
	@NotEmpty
	private String pname;
	private String headache;
	private String neckpain;
	private String rightshoulderpain;
	private String leftshoulderpain;
	private String chestpain;
	private String rightarmpain;
	private String rightproxi;
	private String leftarmpain;
	private String leftproxi;
	private String rightelbowpain;
	private String leftelbowpain;
	private String rightwristpain;
	private String leftwristpain;
	private String righthandpain;
	private String lefthandpain;
	private String mbp;
	private String rightribpain;
	private String painscale1;
	private String leftribpain;
	private String painscale2;
	private String lbp;
	private String rightsipain;
	private String leftsipain;
	private String righthippain;
	private String lefthippain;
	private String rightgluteulpain;
	private String leftgluteulpain;
	private String rightlegpain;
	private String leftlegpain;
	private String rightkneepain;
	private String leftkneepain;
	private String rightanklepain;
	private String leftanklepain;
	private String rightfootpain;
	private String leftfootpain;
	private String date1;
	private String improved;
	private String worsened;
	private String painscale;	
	private String e1e2;
	private String xray;
	private String offwork1;
	private String reeval1;
	private String date2;
	private String improved1;
	private String worsened1;
	private String fixation1;
	private String notimproved1;
	private String scsm1;
	private String date3;
	private String improved2;
	private String worsened2;
	private String fixation2;
	private String notimproved2;
	private String scsm2;
	private String date4;
	private String improved3;
	private String worsened3;
	private String fixation3;
	private String notimproved3;
	private String scsm3;
	private String date5;
	private String improved4;
	private String worsened4;
	private String fixation4;
	private String notimproved4;
	private String scsm4;
	private String date6;
	private String improved5;
	private String worsened5;
	private String fixation5;
	private String notimproved5;
	private String scsm5;
	private String date7;
	private String improved6;
	private String worsened6;
	private String fixation6;
	private String notimproved6;
	private String scsm6;
	private String date8;
	private String improved7;
	private String worsened7;
	private String fixation7;
	private String notimproved7;
	private String scsm7;
	private String date9;
	private String improved8;
	private String worsened8;
	private String fixation8;
	private String notimproved8;
	private String scsm8;
	@NotEmpty
	private String sign;
	
	public SoapNotes(){
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSoapid() {
		return soapid;
	}

	public void setSoapid(String soapid) {
		this.soapid = soapid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getHeadache() {
		return headache;
	}

	public void setHeadache(String headache) {
		this.headache = headache;
	}

	public String getNeckpain() {
		return neckpain;
	}

	public void setNeckpain(String neckpain) {
		this.neckpain = neckpain;
	}

	public String getRightshoulderpain() {
		return rightshoulderpain;
	}

	public void setRightshoulderpain(String rightshoulderpain) {
		this.rightshoulderpain = rightshoulderpain;
	}

	public String getLeftshoulderpain() {
		return leftshoulderpain;
	}

	public void setLeftshoulderpain(String leftshoulderpain) {
		this.leftshoulderpain = leftshoulderpain;
	}

	public String getChestpain() {
		return chestpain;
	}

	public void setChestpain(String chestpain) {
		this.chestpain = chestpain;
	}

	public String getRightarmpain() {
		return rightarmpain;
	}

	public void setRightarmpain(String rightarmpain) {
		this.rightarmpain = rightarmpain;
	}

	public String getRightproxi() {
		return rightproxi;
	}

	public void setRightproxi(String rightproxi) {
		this.rightproxi = rightproxi;
	}

	public String getLeftarmpain() {
		return leftarmpain;
	}

	public void setLeftarmpain(String leftarmpain) {
		this.leftarmpain = leftarmpain;
	}

	public String getLeftproxi() {
		return leftproxi;
	}

	public void setLeftproxi(String leftproxi) {
		this.leftproxi = leftproxi;
	}

	public String getRightelbowpain() {
		return rightelbowpain;
	}

	public void setRightelbowpain(String rightelbowpain) {
		this.rightelbowpain = rightelbowpain;
	}

	public String getLeftelbowpain() {
		return leftelbowpain;
	}

	public void setLeftelbowpain(String leftelbowpain) {
		this.leftelbowpain = leftelbowpain;
	}

	public String getRightwristpain() {
		return rightwristpain;
	}

	public void setRightwristpain(String rightwristpain) {
		this.rightwristpain = rightwristpain;
	}

	public String getLeftwristpain() {
		return leftwristpain;
	}

	public void setLeftwristpain(String leftwristpain) {
		this.leftwristpain = leftwristpain;
	}

	public String getRighthandpain() {
		return righthandpain;
	}

	public void setRighthandpain(String righthandpain) {
		this.righthandpain = righthandpain;
	}

	public String getLefthandpain() {
		return lefthandpain;
	}

	public void setLefthandpain(String lefthandpain) {
		this.lefthandpain = lefthandpain;
	}

	public String getMbp() {
		return mbp;
	}

	public void setMbp(String mbp) {
		this.mbp = mbp;
	}

	public String getRightribpain() {
		return rightribpain;
	}

	public void setRightribpain(String rightribpain) {
		this.rightribpain = rightribpain;
	}

	public String getPainscale1() {
		return painscale1;
	}

	public void setPainscale1(String painscale1) {
		this.painscale1 = painscale1;
	}

	public String getLeftribpain() {
		return leftribpain;
	}

	public void setLeftribpain(String leftribpain) {
		this.leftribpain = leftribpain;
	}

	public String getPainscale2() {
		return painscale2;
	}

	public void setPainscale2(String painscale2) {
		this.painscale2 = painscale2;
	}

	public String getLbp() {
		return lbp;
	}

	public void setLbp(String lbp) {
		this.lbp = lbp;
	}

	public String getRightsipain() {
		return rightsipain;
	}

	public void setRightsipain(String rightsipain) {
		this.rightsipain = rightsipain;
	}

	public String getLeftsipain() {
		return leftsipain;
	}

	public void setLeftsipain(String leftsipain) {
		this.leftsipain = leftsipain;
	}

	public String getRighthippain() {
		return righthippain;
	}

	public void setRighthippain(String righthippain) {
		this.righthippain = righthippain;
	}

	public String getLefthippain() {
		return lefthippain;
	}

	public void setLefthippain(String lefthippain) {
		this.lefthippain = lefthippain;
	}

	public String getRightgluteulpain() {
		return rightgluteulpain;
	}

	public void setRightgluteulpain(String rightgluteulpain) {
		this.rightgluteulpain = rightgluteulpain;
	}

	public String getLeftgluteulpain() {
		return leftgluteulpain;
	}

	public void setLeftgluteulpain(String leftgluteulpain) {
		this.leftgluteulpain = leftgluteulpain;
	}

	public String getRightlegpain() {
		return rightlegpain;
	}

	public void setRightlegpain(String rightlegpain) {
		this.rightlegpain = rightlegpain;
	}

	public String getLeftlegpain() {
		return leftlegpain;
	}

	public void setLeftlegpain(String leftlegpain) {
		this.leftlegpain = leftlegpain;
	}

	public String getRightkneepain() {
		return rightkneepain;
	}

	public void setRightkneepain(String rightkneepain) {
		this.rightkneepain = rightkneepain;
	}

	public String getLeftkneepain() {
		return leftkneepain;
	}

	public void setLeftkneepain(String leftkneepain) {
		this.leftkneepain = leftkneepain;
	}

	public String getRightanklepain() {
		return rightanklepain;
	}

	public void setRightanklepain(String rightanklepain) {
		this.rightanklepain = rightanklepain;
	}

	public String getLeftanklepain() {
		return leftanklepain;
	}

	public void setLeftanklepain(String leftanklepain) {
		this.leftanklepain = leftanklepain;
	}

	public String getRightfootpain() {
		return rightfootpain;
	}

	public void setRightfootpain(String rightfootpain) {
		this.rightfootpain = rightfootpain;
	}

	public String getLeftfootpain() {
		return leftfootpain;
	}

	public void setLeftfootpain(String leftfootpain) {
		this.leftfootpain = leftfootpain;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getImproved() {
		return improved;
	}

	public void setImproved(String improved) {
		this.improved = improved;
	}

	public String getWorsened() {
		return worsened;
	}

	public void setWorsened(String worsened) {
		this.worsened = worsened;
	}

	public String getPainscale() {
		return painscale;
	}

	public void setPainscale(String painscale) {
		this.painscale = painscale;
	}

	public String getE1e2() {
		return e1e2;
	}

	public void setE1e2(String e1e2) {
		this.e1e2 = e1e2;
	}

	public String getXray() {
		return xray;
	}

	public void setXray(String xray) {
		this.xray = xray;
	}

	public String getOffwork1() {
		return offwork1;
	}

	public void setOffwork1(String offwork1) {
		this.offwork1 = offwork1;
	}

	public String getReeval1() {
		return reeval1;
	}

	public void setReeval1(String reeval1) {
		this.reeval1 = reeval1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public String getImproved1() {
		return improved1;
	}

	public void setImproved1(String improved1) {
		this.improved1 = improved1;
	}

	public String getWorsened1() {
		return worsened1;
	}

	public void setWorsened1(String worsened1) {
		this.worsened1 = worsened1;
	}

	public String getFixation1() {
		return fixation1;
	}

	public void setFixation1(String fixation1) {
		this.fixation1 = fixation1;
	}

	public String getNotimproved1() {
		return notimproved1;
	}

	public void setNotimproved1(String notimproved1) {
		this.notimproved1 = notimproved1;
	}

	public String getScsm1() {
		return scsm1;
	}

	public void setScsm1(String scsm1) {
		this.scsm1 = scsm1;
	}

	public String getDate3() {
		return date3;
	}

	public void setDate3(String date3) {
		this.date3 = date3;
	}

	public String getImproved2() {
		return improved2;
	}

	public void setImproved2(String improved2) {
		this.improved2 = improved2;
	}

	public String getWorsened2() {
		return worsened2;
	}

	public void setWorsened2(String worsened2) {
		this.worsened2 = worsened2;
	}

	public String getFixation2() {
		return fixation2;
	}

	public void setFixation2(String fixation2) {
		this.fixation2 = fixation2;
	}

	public String getNotimproved2() {
		return notimproved2;
	}

	public void setNotimproved2(String notimproved2) {
		this.notimproved2 = notimproved2;
	}

	public String getScsm2() {
		return scsm2;
	}

	public void setScsm2(String scsm2) {
		this.scsm2 = scsm2;
	}

	public String getDate4() {
		return date4;
	}

	public void setDate4(String date4) {
		this.date4 = date4;
	}

	public String getImproved3() {
		return improved3;
	}

	public void setImproved3(String improved3) {
		this.improved3 = improved3;
	}

	public String getWorsened3() {
		return worsened3;
	}

	public void setWorsened3(String worsened3) {
		this.worsened3 = worsened3;
	}

	public String getFixation3() {
		return fixation3;
	}

	public void setFixation3(String fixation3) {
		this.fixation3 = fixation3;
	}

	public String getNotimproved3() {
		return notimproved3;
	}

	public void setNotimproved3(String notimproved3) {
		this.notimproved3 = notimproved3;
	}

	public String getScsm3() {
		return scsm3;
	}

	public void setScsm3(String scsm3) {
		this.scsm3 = scsm3;
	}

	public String getDate5() {
		return date5;
	}

	public void setDate5(String date5) {
		this.date5 = date5;
	}

	public String getImproved4() {
		return improved4;
	}

	public void setImproved4(String improved4) {
		this.improved4 = improved4;
	}

	public String getWorsened4() {
		return worsened4;
	}

	public void setWorsened4(String worsened4) {
		this.worsened4 = worsened4;
	}

	public String getFixation4() {
		return fixation4;
	}

	public void setFixation4(String fixation4) {
		this.fixation4 = fixation4;
	}

	public String getNotimproved4() {
		return notimproved4;
	}

	public void setNotimproved4(String notimproved4) {
		this.notimproved4 = notimproved4;
	}

	public String getScsm4() {
		return scsm4;
	}

	public void setScsm4(String scsm4) {
		this.scsm4 = scsm4;
	}

	public String getDate6() {
		return date6;
	}

	public void setDate6(String date6) {
		this.date6 = date6;
	}

	public String getImproved5() {
		return improved5;
	}

	public void setImproved5(String improved5) {
		this.improved5 = improved5;
	}

	public String getWorsened5() {
		return worsened5;
	}

	public void setWorsened5(String worsened5) {
		this.worsened5 = worsened5;
	}

	public String getFixation5() {
		return fixation5;
	}

	public void setFixation5(String fixation5) {
		this.fixation5 = fixation5;
	}

	public String getNotimproved5() {
		return notimproved5;
	}

	public void setNotimproved5(String notimproved5) {
		this.notimproved5 = notimproved5;
	}

	public String getScsm5() {
		return scsm5;
	}

	public void setScsm5(String scsm5) {
		this.scsm5 = scsm5;
	}

	public String getDate7() {
		return date7;
	}

	public void setDate7(String date7) {
		this.date7 = date7;
	}

	public String getImproved6() {
		return improved6;
	}

	public void setImproved6(String improved6) {
		this.improved6 = improved6;
	}

	public String getWorsened6() {
		return worsened6;
	}

	public void setWorsened6(String worsened6) {
		this.worsened6 = worsened6;
	}

	public String getFixation6() {
		return fixation6;
	}

	public void setFixation6(String fixation6) {
		this.fixation6 = fixation6;
	}

	public String getNotimproved6() {
		return notimproved6;
	}

	public void setNotimproved6(String notimproved6) {
		this.notimproved6 = notimproved6;
	}

	public String getScsm6() {
		return scsm6;
	}

	public void setScsm6(String scsm6) {
		this.scsm6 = scsm6;
	}

	public String getDate8() {
		return date8;
	}

	public void setDate8(String date8) {
		this.date8 = date8;
	}

	public String getImproved7() {
		return improved7;
	}

	public void setImproved7(String improved7) {
		this.improved7 = improved7;
	}

	public String getWorsened7() {
		return worsened7;
	}

	public void setWorsened7(String worsened7) {
		this.worsened7 = worsened7;
	}

	public String getFixation7() {
		return fixation7;
	}

	public void setFixation7(String fixation7) {
		this.fixation7 = fixation7;
	}

	public String getNotimproved7() {
		return notimproved7;
	}

	public void setNotimproved7(String notimproved7) {
		this.notimproved7 = notimproved7;
	}

	public String getScsm7() {
		return scsm7;
	}

	public void setScsm7(String scsm7) {
		this.scsm7 = scsm7;
	}

	public String getDate9() {
		return date9;
	}

	public void setDate9(String date9) {
		this.date9 = date9;
	}

	public String getImproved8() {
		return improved8;
	}

	public void setImproved8(String improved8) {
		this.improved8 = improved8;
	}

	public String getWorsened8() {
		return worsened8;
	}

	public void setWorsened8(String worsened8) {
		this.worsened8 = worsened8;
	}

	public String getFixation8() {
		return fixation8;
	}

	public void setFixation8(String fixation8) {
		this.fixation8 = fixation8;
	}

	public String getNotimproved8() {
		return notimproved8;
	}

	public void setNotimproved8(String notimproved8) {
		this.notimproved8 = notimproved8;
	}

	public String getScsm8() {
		return scsm8;
	}

	public void setScsm8(String scsm8) {
		this.scsm8 = scsm8;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public SoapNotes(String username, String soapid, String pname,
			String headache, String neckpain, String rightshoulderpain,
			String leftshoulderpain, String chestpain, String rightarmpain,
			String rightproxi, String leftarmpain, String leftproxi,
			String rightelbowpain, String leftelbowpain, String rightwristpain,
			String leftwristpain, String righthandpain, String lefthandpain,
			String mbp, String rightribpain, String painscale1,
			String leftribpain, String painscale2, String lbp,
			String rightsipain, String leftsipain, String righthippain,
			String lefthippain, String rightgluteulpain,
			String leftgluteulpain, String rightlegpain, String leftlegpain,
			String rightkneepain, String leftkneepain, String rightanklepain,
			String leftanklepain, String rightfootpain, String leftfootpain,
			String date1, String improved, String worsened, String painscale,
			String e1e2, String xray, String offwork1, String reeval1,
			String date2, String improved1, String worsened1, String fixation1,
			String notimproved1, String scsm1, String date3, String improved2,
			String worsened2, String fixation2, String notimproved2,
			String scsm2, String date4, String improved3, String worsened3,
			String fixation3, String notimproved3, String scsm3, String date5,
			String improved4, String worsened4, String fixation4,
			String notimproved4, String scsm4, String date6, String improved5,
			String worsened5, String fixation5, String notimproved5,
			String scsm5, String date7, String improved6, String worsened6,
			String fixation6, String notimproved6, String scsm6, String date8,
			String improved7, String worsened7, String fixation7,
			String notimproved7, String scsm7, String date9, String improved8,
			String worsened8, String fixation8, String notimproved8,
			String scsm8, String sign) {
		super();
		this.username = username;
		this.soapid = soapid;
		this.pname = pname;
		this.headache = headache;
		this.neckpain = neckpain;
		this.rightshoulderpain = rightshoulderpain;
		this.leftshoulderpain = leftshoulderpain;
		this.chestpain = chestpain;
		this.rightarmpain = rightarmpain;
		this.rightproxi = rightproxi;
		this.leftarmpain = leftarmpain;
		this.leftproxi = leftproxi;
		this.rightelbowpain = rightelbowpain;
		this.leftelbowpain = leftelbowpain;
		this.rightwristpain = rightwristpain;
		this.leftwristpain = leftwristpain;
		this.righthandpain = righthandpain;
		this.lefthandpain = lefthandpain;
		this.mbp = mbp;
		this.rightribpain = rightribpain;
		this.painscale1 = painscale1;
		this.leftribpain = leftribpain;
		this.painscale2 = painscale2;
		this.lbp = lbp;
		this.rightsipain = rightsipain;
		this.leftsipain = leftsipain;
		this.righthippain = righthippain;
		this.lefthippain = lefthippain;
		this.rightgluteulpain = rightgluteulpain;
		this.leftgluteulpain = leftgluteulpain;
		this.rightlegpain = rightlegpain;
		this.leftlegpain = leftlegpain;
		this.rightkneepain = rightkneepain;
		this.leftkneepain = leftkneepain;
		this.rightanklepain = rightanklepain;
		this.leftanklepain = leftanklepain;
		this.rightfootpain = rightfootpain;
		this.leftfootpain = leftfootpain;
		this.date1 = date1;
		this.improved = improved;
		this.worsened = worsened;
		this.painscale = painscale;
		this.e1e2 = e1e2;
		this.xray = xray;
		this.offwork1 = offwork1;
		this.reeval1 = reeval1;
		this.date2 = date2;
		this.improved1 = improved1;
		this.worsened1 = worsened1;
		this.fixation1 = fixation1;
		this.notimproved1 = notimproved1;
		this.scsm1 = scsm1;
		this.date3 = date3;
		this.improved2 = improved2;
		this.worsened2 = worsened2;
		this.fixation2 = fixation2;
		this.notimproved2 = notimproved2;
		this.scsm2 = scsm2;
		this.date4 = date4;
		this.improved3 = improved3;
		this.worsened3 = worsened3;
		this.fixation3 = fixation3;
		this.notimproved3 = notimproved3;
		this.scsm3 = scsm3;
		this.date5 = date5;
		this.improved4 = improved4;
		this.worsened4 = worsened4;
		this.fixation4 = fixation4;
		this.notimproved4 = notimproved4;
		this.scsm4 = scsm4;
		this.date6 = date6;
		this.improved5 = improved5;
		this.worsened5 = worsened5;
		this.fixation5 = fixation5;
		this.notimproved5 = notimproved5;
		this.scsm5 = scsm5;
		this.date7 = date7;
		this.improved6 = improved6;
		this.worsened6 = worsened6;
		this.fixation6 = fixation6;
		this.notimproved6 = notimproved6;
		this.scsm6 = scsm6;
		this.date8 = date8;
		this.improved7 = improved7;
		this.worsened7 = worsened7;
		this.fixation7 = fixation7;
		this.notimproved7 = notimproved7;
		this.scsm7 = scsm7;
		this.date9 = date9;
		this.improved8 = improved8;
		this.worsened8 = worsened8;
		this.fixation8 = fixation8;
		this.notimproved8 = notimproved8;
		this.scsm8 = scsm8;
		this.sign = sign;
	}	

		

	}