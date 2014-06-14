package bephit.model;

//import javax.validation.constraints.Pattern;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Physicalexam {
	
	      String physical_id;
	      
	      String patient_id;
	     
	      @NotEmpty
	      String sign;
	      
	      @NotEmpty
	      String name;
	      
	      @NotEmpty
	      @Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$",message="Please Enetr a valid mail id")
	      String id;
	      
	      @NotEmpty
	      String date;
	      
	      @NotEmpty
	      String age;
	      
	      @NotEmpty
	      String sex;
	      
	      @NotEmpty
	      String height;
	      @NotEmpty
	      String height1;
	      
	      @NotEmpty
	      String weight;
	      
	      @NotEmpty
	      String temp;
	      
	      @NotEmpty
	      
	      String bp;
	      
	      @NotEmpty
	      String pulse;
	      
	      @NotEmpty
	      String appearance;
	      
	      @NotEmpty
	      String weight1;
	      
	      @NotEmpty
	      String gait;
	      
	      @NotEmpty
	      String head;
	      
	      @NotEmpty
	      String path;
	      
	     /* @NotEmpty
	      String path1;*/
	      
	      @NotEmpty
	      String posture;
	      
	      @NotEmpty
	      String romber;
	      
	      @NotEmpty
	      String exam;
	      
	      @NotEmpty
	      String abnormal;
	      String headtiltright;
	      String headtiltleft;
	      String headtiltnormal;
	      String rotationright;
	      String rotationleft;
	      String rotationnormal;
	      String tmjright;
	      String tmjleft;
	      String tmjnormal;
	      String highright;
	      String highleft;
	      String highnormal;
	      String lordhyper;
	      String lordhypo;
	      String lordnormal;
	      String lymphedema;
	      String lymphnormal;
	      String paraspain;
	      String parasspasm;
	      String parasedema;
	      String parastriggerpoint;
	      String trapeziusrl;
	      String trapeziusrl1;
	      
	     /* String trapeziustono;
	      String trapeziusnormal;*/
	      String scm;
	      String scm1;
	    
	      String vertebraefix;
	      String vertebraenofix;
	      
	     
	      String flexpain;
	      String flexspasm;
	      String flexstiff;
	     
	      String extpain;
	      String extspasm;
	      String extstiff;
	     
	      String rlfpain;
	      String rlfspasm;
	      String rlfstiff;
	     
	      String llfpain;
	      String llfspasm;
	      String llfstiff;
	     
	      String rrpain;
	      String rrspasm;
	      String rrstiff;
	     
	      String lrpain;
	      String lrspasm;
	      String lrstiff;
	      String c5;
	      String c5right;
	      String c5left;
	      String c6;
	      String c6right;
	      String c6left;
	      String c7;
	      String c7right;
	      String c7left;
	      String c8;
	      String c8right;
	      String c8left;
	      String t1;
	      String t1right;
	      String t1left;
	      String other;
	      String otherright;
	      String otherleft;
	      String deltoidright;
	      String deltoidleft;
	      String wristright;
	      String wristleft;
	      String wristflexright;
	      String wristflexleft;
	      String fingerflexright;
	      String fingerflexleft;
	      String fingeraddright;
	      String fingeraddleft;
	     /* String wristextright;
	      String wristextleft;*/
	      String bicepright;
	      String bicepleft;
	      String bracioradright;
	      String bracioradleft;
	      String tricepright;
	      String tricepleft;
	      String presentvisual;
	      String presentrl;
	      
	      
	      String highshoulderright;
	      String highshoulderleft;
	      String highshouldernormal;
	      String curvatureright;
	      String curvatureleft;
	      String curvaturenormal;
	      String wingingright;
	      String wingingleft;
	      String wingingnormal;
	      String ribhumpright;
	      String ribhumpleft;
	      String ribhumpnormal;
	      String chestmeasurein;
	    
	      String kyphosishyper;
	      String kyphosishypo;
	      String kyphosisnormal;
	      String parapain;
	      String paraspasm;
	      String paraedema;
	      String paratriggerpoint;
	      String ribspost;
	      String ribsnor;
	      String vertefix;
	      String vertenofix;
	     
	      String thoracicpain;
	      String thoracicspasm;
	      String thoracicstiff;
	     
	      String thoextpain;
	      String thoextspasm;
	      String thoextstiff;
	     
	      String thorlfpain;
	      String thorlfspasm;
	      String thorlfstiff;
	     
	      String thollfpain;
	      String thollfspasm;
	      String thollfstiff;
	     
	      String thorrpain;
	      String thorrspasm;
	      String thorrstiff;
	     
	      String tholrpain;
	      String tholrspasm;
	      String tholrstiff;
	      String thot1;
	      String thot1right;
	      String thot1left;
	      String thot4;
	      String thot4right;
	      String thot4left;
	      String thot10;
	      String thot10right;
	      String thot10left;
	      
	      
	      String thoother;
	      String thootherright;
	      String thootherleft;
	      
	      //String myotomes;
	      String positiveruq;
	      String positiveluq;
	      String positiverlq;
	      String positivellq;
	      
	      
	      //String myotomes1;
	      String negativeruq;
	      String negativeluq;
	      String negativerlq;
	      String negativellq;
	      
	      String patientsmoker;
	      
	      
	      String highcrestright;
	      String highcrestleft;
	      String highcrestnormal;
	      String highpsisright;
	      String highpsisleft;
	      String highpsisnormal;
	      String curveright;
	      String curveleft;
	      String curvenormal;
	      String lordosishyper;
	      String lordosishypo;
	      String lordosisnormal;
	      String paraspinalpain;
	      String paraspinalspasm;
	      String paraspinaledema;
	      String paraspinaltp;
	      
	      String quadrl;
	      String quadrl1;
	      
	      /*String quadtono;
	      String quadnor;*/
	      String hamstringrl;
	      String hamstringrl1;
	      
	      /*String hamstringtono;
	      String hamstringnor;*/
	      String verfix;
	      String vernofix;
	      String abdomentender;
	      String abdomenpulse;
	      String abdomenascites;
	      
	      String lumflexpain;
	      String lumflexspasm;
	      String lumflexstiff;
	      
	      String lumextpain;
	      String lumextspasm;
	      String lumextstiff;
	      
	      String lumrlfpain;
	      String lumrlfspasm;
	      String lumrlfstiff;
	      
	      String lumllfpain;
	      String lumllfspasm;
	      String lumllfstiff;
	      
	      String lumrrpain;
	      String lumrrspasm;
	      String lumrrstiff;
	      
	      String lumlrpain;
	      String lumlrspasm;
	      String lumlrstiff;
	      
	      String lu1;
	      String lu1right;
	      String lu1left;
	      String lu2;
	      String lu2right;
	      String lu2left;
	      String lu3;
	      String lu3right;
	      String lu3left;
	      String lu4;
	      String lu4right;
	      String lu4left;
	      String lu5;
	      String lu5right;
	      String lu5left;
	      String lu6;
	      String lu6right;
	      String lu6left;
	      String lu7;
	      String lu7right;
	      String lu7left;
	     
	      String hipflexright;
	      String hipflexleft;
	      String legextright;
	      String legextleft;
	      String dorsiflexright;
	      String dorsiflexleft;
	      String digitflexright;
	      String digitflexleft;
	      String heelright;
	      String heelleft;
	      String toeright;
	      String toeleft;
	      String patellarright;
	      String patellarleft;
	      String achillesright;
	      String achillesleft;
	      
	      String babinskiright;
	      String babinskileft;
		public String getPhysical_id() {
			return physical_id;
		}
		public void setPhysical_id(String physical_id) {
			this.physical_id = physical_id;
		}
		public String getPatient_id() {
			return patient_id;
		}
		public void setPatient_id(String patient_id) {
			this.patient_id = patient_id;
		}
		public String getSign() {
			return sign;
		}
		public void setSign(String sign) {
			this.sign = sign;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		public String getAge() {
			return age;
		}
		public void setAge(String age) {
			this.age = age;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getHeight() {
			return height;
		}
		public void setHeight(String height) {
			this.height = height;
		}
		public String getHeight1() {
			return height1;
		}
		public void setHeight1(String height1) {
			this.height1 = height1;
		}
		public String getWeight() {
			return weight;
		}
		public void setWeight(String weight) {
			this.weight = weight;
		}
		public String getTemp() {
			return temp;
		}
		public void setTemp(String temp) {
			this.temp = temp;
		}
		public String getBp() {
			return bp;
		}
		public void setBp(String bp) {
			this.bp = bp;
		}
		public String getPulse() {
			return pulse;
		}
		public void setPulse(String pulse) {
			this.pulse = pulse;
		}
		public String getAppearance() {
			return appearance;
		}
		public void setAppearance(String appearance) {
			this.appearance = appearance;
		}
		public String getWeight1() {
			return weight1;
		}
		public void setWeight1(String weight1) {
			this.weight1 = weight1;
		}
		public String getGait() {
			return gait;
		}
		public void setGait(String gait) {
			this.gait = gait;
		}
		public String getHead() {
			return head;
		}
		public void setHead(String head) {
			this.head = head;
		}
		public String getPath() {
			return path;
		}
		public void setPath(String path) {
			this.path = path;
		}
		public String getPosture() {
			return posture;
		}
		public void setPosture(String posture) {
			this.posture = posture;
		}
		public String getRomber() {
			return romber;
		}
		public void setRomber(String romber) {
			this.romber = romber;
		}
		public String getExam() {
			return exam;
		}
		public void setExam(String exam) {
			this.exam = exam;
		}
		public String getAbnormal() {
			return abnormal;
		}
		public void setAbnormal(String abnormal) {
			this.abnormal = abnormal;
		}
		public String getHeadtiltright() {
			return headtiltright;
		}
		public void setHeadtiltright(String headtiltright) {
			this.headtiltright = headtiltright;
		}
		public String getHeadtiltleft() {
			return headtiltleft;
		}
		public void setHeadtiltleft(String headtiltleft) {
			this.headtiltleft = headtiltleft;
		}
		public String getHeadtiltnormal() {
			return headtiltnormal;
		}
		public void setHeadtiltnormal(String headtiltnormal) {
			this.headtiltnormal = headtiltnormal;
		}
		public String getRotationright() {
			return rotationright;
		}
		public void setRotationright(String rotationright) {
			this.rotationright = rotationright;
		}
		public String getRotationleft() {
			return rotationleft;
		}
		public void setRotationleft(String rotationleft) {
			this.rotationleft = rotationleft;
		}
		public String getRotationnormal() {
			return rotationnormal;
		}
		public void setRotationnormal(String rotationnormal) {
			this.rotationnormal = rotationnormal;
		}
		public String getTmjright() {
			return tmjright;
		}
		public void setTmjright(String tmjright) {
			this.tmjright = tmjright;
		}
		public String getTmjleft() {
			return tmjleft;
		}
		public void setTmjleft(String tmjleft) {
			this.tmjleft = tmjleft;
		}
		public String getTmjnormal() {
			return tmjnormal;
		}
		public void setTmjnormal(String tmjnormal) {
			this.tmjnormal = tmjnormal;
		}
		public String getHighright() {
			return highright;
		}
		public void setHighright(String highright) {
			this.highright = highright;
		}
		public String getHighleft() {
			return highleft;
		}
		public void setHighleft(String highleft) {
			this.highleft = highleft;
		}
		public String getHighnormal() {
			return highnormal;
		}
		public void setHighnormal(String highnormal) {
			this.highnormal = highnormal;
		}
		public String getLordhyper() {
			return lordhyper;
		}
		public void setLordhyper(String lordhyper) {
			this.lordhyper = lordhyper;
		}
		public String getLordhypo() {
			return lordhypo;
		}
		public void setLordhypo(String lordhypo) {
			this.lordhypo = lordhypo;
		}
		public String getLordnormal() {
			return lordnormal;
		}
		public void setLordnormal(String lordnormal) {
			this.lordnormal = lordnormal;
		}
		public String getLymphedema() {
			return lymphedema;
		}
		public void setLymphedema(String lymphedema) {
			this.lymphedema = lymphedema;
		}
		public String getLymphnormal() {
			return lymphnormal;
		}
		public void setLymphnormal(String lymphnormal) {
			this.lymphnormal = lymphnormal;
		}
		public String getParaspain() {
			return paraspain;
		}
		public void setParaspain(String paraspain) {
			this.paraspain = paraspain;
		}
		public String getParasspasm() {
			return parasspasm;
		}
		public void setParasspasm(String parasspasm) {
			this.parasspasm = parasspasm;
		}
		public String getParasedema() {
			return parasedema;
		}
		public void setParasedema(String parasedema) {
			this.parasedema = parasedema;
		}
		public String getParastriggerpoint() {
			return parastriggerpoint;
		}
		public void setParastriggerpoint(String parastriggerpoint) {
			this.parastriggerpoint = parastriggerpoint;
		}
		public String getTrapeziusrl() {
			return trapeziusrl;
		}
		public void setTrapeziusrl(String trapeziusrl) {
			this.trapeziusrl = trapeziusrl;
		}
		public String getTrapeziusrl1() {
			return trapeziusrl1;
		}
		public void setTrapeziusrl1(String trapeziusrl1) {
			this.trapeziusrl1 = trapeziusrl1;
		}
		public String getScm() {
			return scm;
		}
		public void setScm(String scm) {
			this.scm = scm;
		}
		public String getScm1() {
			return scm1;
		}
		public void setScm1(String scm1) {
			this.scm1 = scm1;
		}
		public String getVertebraefix() {
			return vertebraefix;
		}
		public void setVertebraefix(String vertebraefix) {
			this.vertebraefix = vertebraefix;
		}
		public String getVertebraenofix() {
			return vertebraenofix;
		}
		public void setVertebraenofix(String vertebraenofix) {
			this.vertebraenofix = vertebraenofix;
		}
		public String getFlexpain() {
			return flexpain;
		}
		public void setFlexpain(String flexpain) {
			this.flexpain = flexpain;
		}
		public String getFlexspasm() {
			return flexspasm;
		}
		public void setFlexspasm(String flexspasm) {
			this.flexspasm = flexspasm;
		}
		public String getFlexstiff() {
			return flexstiff;
		}
		public void setFlexstiff(String flexstiff) {
			this.flexstiff = flexstiff;
		}
		public String getExtpain() {
			return extpain;
		}
		public void setExtpain(String extpain) {
			this.extpain = extpain;
		}
		public String getExtspasm() {
			return extspasm;
		}
		public void setExtspasm(String extspasm) {
			this.extspasm = extspasm;
		}
		public String getExtstiff() {
			return extstiff;
		}
		public void setExtstiff(String extstiff) {
			this.extstiff = extstiff;
		}
		public String getRlfpain() {
			return rlfpain;
		}
		public void setRlfpain(String rlfpain) {
			this.rlfpain = rlfpain;
		}
		public String getRlfspasm() {
			return rlfspasm;
		}
		public void setRlfspasm(String rlfspasm) {
			this.rlfspasm = rlfspasm;
		}
		public String getRlfstiff() {
			return rlfstiff;
		}
		public void setRlfstiff(String rlfstiff) {
			this.rlfstiff = rlfstiff;
		}
		public String getLlfpain() {
			return llfpain;
		}
		public void setLlfpain(String llfpain) {
			this.llfpain = llfpain;
		}
		public String getLlfspasm() {
			return llfspasm;
		}
		public void setLlfspasm(String llfspasm) {
			this.llfspasm = llfspasm;
		}
		public String getLlfstiff() {
			return llfstiff;
		}
		public void setLlfstiff(String llfstiff) {
			this.llfstiff = llfstiff;
		}
		public String getRrpain() {
			return rrpain;
		}
		public void setRrpain(String rrpain) {
			this.rrpain = rrpain;
		}
		public String getRrspasm() {
			return rrspasm;
		}
		public void setRrspasm(String rrspasm) {
			this.rrspasm = rrspasm;
		}
		public String getRrstiff() {
			return rrstiff;
		}
		public void setRrstiff(String rrstiff) {
			this.rrstiff = rrstiff;
		}
		public String getLrpain() {
			return lrpain;
		}
		public void setLrpain(String lrpain) {
			this.lrpain = lrpain;
		}
		public String getLrspasm() {
			return lrspasm;
		}
		public void setLrspasm(String lrspasm) {
			this.lrspasm = lrspasm;
		}
		public String getLrstiff() {
			return lrstiff;
		}
		public void setLrstiff(String lrstiff) {
			this.lrstiff = lrstiff;
		}
		public String getC5() {
			return c5;
		}
		public void setC5(String c5) {
			this.c5 = c5;
		}
		public String getC5right() {
			return c5right;
		}
		public void setC5right(String c5right) {
			this.c5right = c5right;
		}
		public String getC5left() {
			return c5left;
		}
		public void setC5left(String c5left) {
			this.c5left = c5left;
		}
		public String getC6() {
			return c6;
		}
		public void setC6(String c6) {
			this.c6 = c6;
		}
		public String getC6right() {
			return c6right;
		}
		public void setC6right(String c6right) {
			this.c6right = c6right;
		}
		public String getC6left() {
			return c6left;
		}
		public void setC6left(String c6left) {
			this.c6left = c6left;
		}
		public String getC7() {
			return c7;
		}
		public void setC7(String c7) {
			this.c7 = c7;
		}
		public String getC7right() {
			return c7right;
		}
		public void setC7right(String c7right) {
			this.c7right = c7right;
		}
		public String getC7left() {
			return c7left;
		}
		public void setC7left(String c7left) {
			this.c7left = c7left;
		}
		public String getC8() {
			return c8;
		}
		public void setC8(String c8) {
			this.c8 = c8;
		}
		public String getC8right() {
			return c8right;
		}
		public void setC8right(String c8right) {
			this.c8right = c8right;
		}
		public String getC8left() {
			return c8left;
		}
		public void setC8left(String c8left) {
			this.c8left = c8left;
		}
		public String getT1() {
			return t1;
		}
		public void setT1(String t1) {
			this.t1 = t1;
		}
		public String getT1right() {
			return t1right;
		}
		public void setT1right(String t1right) {
			this.t1right = t1right;
		}
		public String getT1left() {
			return t1left;
		}
		public void setT1left(String t1left) {
			this.t1left = t1left;
		}
		public String getOther() {
			return other;
		}
		public void setOther(String other) {
			this.other = other;
		}
		public String getOtherright() {
			return otherright;
		}
		public void setOtherright(String otherright) {
			this.otherright = otherright;
		}
		public String getOtherleft() {
			return otherleft;
		}
		public void setOtherleft(String otherleft) {
			this.otherleft = otherleft;
		}
		public String getDeltoidright() {
			return deltoidright;
		}
		public void setDeltoidright(String deltoidright) {
			this.deltoidright = deltoidright;
		}
		public String getDeltoidleft() {
			return deltoidleft;
		}
		public void setDeltoidleft(String deltoidleft) {
			this.deltoidleft = deltoidleft;
		}
		public String getWristright() {
			return wristright;
		}
		public void setWristright(String wristright) {
			this.wristright = wristright;
		}
		public String getWristleft() {
			return wristleft;
		}
		public void setWristleft(String wristleft) {
			this.wristleft = wristleft;
		}
		public String getWristflexright() {
			return wristflexright;
		}
		public void setWristflexright(String wristflexright) {
			this.wristflexright = wristflexright;
		}
		public String getWristflexleft() {
			return wristflexleft;
		}
		public void setWristflexleft(String wristflexleft) {
			this.wristflexleft = wristflexleft;
		}
		public String getFingerflexright() {
			return fingerflexright;
		}
		public void setFingerflexright(String fingerflexright) {
			this.fingerflexright = fingerflexright;
		}
		public String getFingerflexleft() {
			return fingerflexleft;
		}
		public void setFingerflexleft(String fingerflexleft) {
			this.fingerflexleft = fingerflexleft;
		}
		public String getFingeraddright() {
			return fingeraddright;
		}
		public void setFingeraddright(String fingeraddright) {
			this.fingeraddright = fingeraddright;
		}
		public String getFingeraddleft() {
			return fingeraddleft;
		}
		public void setFingeraddleft(String fingeraddleft) {
			this.fingeraddleft = fingeraddleft;
		}
		public String getBicepright() {
			return bicepright;
		}
		public void setBicepright(String bicepright) {
			this.bicepright = bicepright;
		}
		public String getBicepleft() {
			return bicepleft;
		}
		public void setBicepleft(String bicepleft) {
			this.bicepleft = bicepleft;
		}
		public String getBracioradright() {
			return bracioradright;
		}
		public void setBracioradright(String bracioradright) {
			this.bracioradright = bracioradright;
		}
		public String getBracioradleft() {
			return bracioradleft;
		}
		public void setBracioradleft(String bracioradleft) {
			this.bracioradleft = bracioradleft;
		}
		public String getTricepright() {
			return tricepright;
		}
		public void setTricepright(String tricepright) {
			this.tricepright = tricepright;
		}
		public String getTricepleft() {
			return tricepleft;
		}
		public void setTricepleft(String tricepleft) {
			this.tricepleft = tricepleft;
		}
		public String getPresentvisual() {
			return presentvisual;
		}
		public void setPresentvisual(String presentvisual) {
			this.presentvisual = presentvisual;
		}
		public String getPresentrl() {
			return presentrl;
		}
		public void setPresentrl(String presentrl) {
			this.presentrl = presentrl;
		}
		public String getHighshoulderright() {
			return highshoulderright;
		}
		public void setHighshoulderright(String highshoulderright) {
			this.highshoulderright = highshoulderright;
		}
		public String getHighshoulderleft() {
			return highshoulderleft;
		}
		public void setHighshoulderleft(String highshoulderleft) {
			this.highshoulderleft = highshoulderleft;
		}
		public String getHighshouldernormal() {
			return highshouldernormal;
		}
		public void setHighshouldernormal(String highshouldernormal) {
			this.highshouldernormal = highshouldernormal;
		}
		public String getCurvatureright() {
			return curvatureright;
		}
		public void setCurvatureright(String curvatureright) {
			this.curvatureright = curvatureright;
		}
		public String getCurvatureleft() {
			return curvatureleft;
		}
		public void setCurvatureleft(String curvatureleft) {
			this.curvatureleft = curvatureleft;
		}
		public String getCurvaturenormal() {
			return curvaturenormal;
		}
		public void setCurvaturenormal(String curvaturenormal) {
			this.curvaturenormal = curvaturenormal;
		}
		public String getWingingright() {
			return wingingright;
		}
		public void setWingingright(String wingingright) {
			this.wingingright = wingingright;
		}
		public String getWingingleft() {
			return wingingleft;
		}
		public void setWingingleft(String wingingleft) {
			this.wingingleft = wingingleft;
		}
		public String getWingingnormal() {
			return wingingnormal;
		}
		public void setWingingnormal(String wingingnormal) {
			this.wingingnormal = wingingnormal;
		}
		public String getRibhumpright() {
			return ribhumpright;
		}
		public void setRibhumpright(String ribhumpright) {
			this.ribhumpright = ribhumpright;
		}
		public String getRibhumpleft() {
			return ribhumpleft;
		}
		public void setRibhumpleft(String ribhumpleft) {
			this.ribhumpleft = ribhumpleft;
		}
		public String getRibhumpnormal() {
			return ribhumpnormal;
		}
		public void setRibhumpnormal(String ribhumpnormal) {
			this.ribhumpnormal = ribhumpnormal;
		}
		public String getChestmeasurein() {
			return chestmeasurein;
		}
		public void setChestmeasurein(String chestmeasurein) {
			this.chestmeasurein = chestmeasurein;
		}
		public String getKyphosishyper() {
			return kyphosishyper;
		}
		public void setKyphosishyper(String kyphosishyper) {
			this.kyphosishyper = kyphosishyper;
		}
		public String getKyphosishypo() {
			return kyphosishypo;
		}
		public void setKyphosishypo(String kyphosishypo) {
			this.kyphosishypo = kyphosishypo;
		}
		public String getKyphosisnormal() {
			return kyphosisnormal;
		}
		public void setKyphosisnormal(String kyphosisnormal) {
			this.kyphosisnormal = kyphosisnormal;
		}
		public String getParapain() {
			return parapain;
		}
		public void setParapain(String parapain) {
			this.parapain = parapain;
		}
		public String getParaspasm() {
			return paraspasm;
		}
		public void setParaspasm(String paraspasm) {
			this.paraspasm = paraspasm;
		}
		public String getParaedema() {
			return paraedema;
		}
		public void setParaedema(String paraedema) {
			this.paraedema = paraedema;
		}
		public String getParatriggerpoint() {
			return paratriggerpoint;
		}
		public void setParatriggerpoint(String paratriggerpoint) {
			this.paratriggerpoint = paratriggerpoint;
		}
		public String getRibspost() {
			return ribspost;
		}
		public void setRibspost(String ribspost) {
			this.ribspost = ribspost;
		}
		public String getRibsnor() {
			return ribsnor;
		}
		public void setRibsnor(String ribsnor) {
			this.ribsnor = ribsnor;
		}
		public String getVertefix() {
			return vertefix;
		}
		public void setVertefix(String vertefix) {
			this.vertefix = vertefix;
		}
		public String getVertenofix() {
			return vertenofix;
		}
		public void setVertenofix(String vertenofix) {
			this.vertenofix = vertenofix;
		}
		public String getThoracicpain() {
			return thoracicpain;
		}
		public void setThoracicpain(String thoracicpain) {
			this.thoracicpain = thoracicpain;
		}
		public String getThoracicspasm() {
			return thoracicspasm;
		}
		public void setThoracicspasm(String thoracicspasm) {
			this.thoracicspasm = thoracicspasm;
		}
		public String getThoracicstiff() {
			return thoracicstiff;
		}
		public void setThoracicstiff(String thoracicstiff) {
			this.thoracicstiff = thoracicstiff;
		}
		public String getThoextpain() {
			return thoextpain;
		}
		public void setThoextpain(String thoextpain) {
			this.thoextpain = thoextpain;
		}
		public String getThoextspasm() {
			return thoextspasm;
		}
		public void setThoextspasm(String thoextspasm) {
			this.thoextspasm = thoextspasm;
		}
		public String getThoextstiff() {
			return thoextstiff;
		}
		public void setThoextstiff(String thoextstiff) {
			this.thoextstiff = thoextstiff;
		}
		public String getThorlfpain() {
			return thorlfpain;
		}
		public void setThorlfpain(String thorlfpain) {
			this.thorlfpain = thorlfpain;
		}
		public String getThorlfspasm() {
			return thorlfspasm;
		}
		public void setThorlfspasm(String thorlfspasm) {
			this.thorlfspasm = thorlfspasm;
		}
		public String getThorlfstiff() {
			return thorlfstiff;
		}
		public void setThorlfstiff(String thorlfstiff) {
			this.thorlfstiff = thorlfstiff;
		}
		public String getThollfpain() {
			return thollfpain;
		}
		public void setThollfpain(String thollfpain) {
			this.thollfpain = thollfpain;
		}
		public String getThollfspasm() {
			return thollfspasm;
		}
		public void setThollfspasm(String thollfspasm) {
			this.thollfspasm = thollfspasm;
		}
		public String getThollfstiff() {
			return thollfstiff;
		}
		public void setThollfstiff(String thollfstiff) {
			this.thollfstiff = thollfstiff;
		}
		public String getThorrpain() {
			return thorrpain;
		}
		public void setThorrpain(String thorrpain) {
			this.thorrpain = thorrpain;
		}
		public String getThorrspasm() {
			return thorrspasm;
		}
		public void setThorrspasm(String thorrspasm) {
			this.thorrspasm = thorrspasm;
		}
		public String getThorrstiff() {
			return thorrstiff;
		}
		public void setThorrstiff(String thorrstiff) {
			this.thorrstiff = thorrstiff;
		}
		public String getTholrpain() {
			return tholrpain;
		}
		public void setTholrpain(String tholrpain) {
			this.tholrpain = tholrpain;
		}
		public String getTholrspasm() {
			return tholrspasm;
		}
		public void setTholrspasm(String tholrspasm) {
			this.tholrspasm = tholrspasm;
		}
		public String getTholrstiff() {
			return tholrstiff;
		}
		public void setTholrstiff(String tholrstiff) {
			this.tholrstiff = tholrstiff;
		}
		public String getThot1() {
			return thot1;
		}
		public void setThot1(String thot1) {
			this.thot1 = thot1;
		}
		public String getThot1right() {
			return thot1right;
		}
		public void setThot1right(String thot1right) {
			this.thot1right = thot1right;
		}
		public String getThot1left() {
			return thot1left;
		}
		public void setThot1left(String thot1left) {
			this.thot1left = thot1left;
		}
		public String getThot4() {
			return thot4;
		}
		public void setThot4(String thot4) {
			this.thot4 = thot4;
		}
		public String getThot4right() {
			return thot4right;
		}
		public void setThot4right(String thot4right) {
			this.thot4right = thot4right;
		}
		public String getThot4left() {
			return thot4left;
		}
		public void setThot4left(String thot4left) {
			this.thot4left = thot4left;
		}
		public String getThot10() {
			return thot10;
		}
		public void setThot10(String thot10) {
			this.thot10 = thot10;
		}
		public String getThot10right() {
			return thot10right;
		}
		public void setThot10right(String thot10right) {
			this.thot10right = thot10right;
		}
		public String getThot10left() {
			return thot10left;
		}
		public void setThot10left(String thot10left) {
			this.thot10left = thot10left;
		}
		public String getThoother() {
			return thoother;
		}
		public void setThoother(String thoother) {
			this.thoother = thoother;
		}
		public String getThootherright() {
			return thootherright;
		}
		public void setThootherright(String thootherright) {
			this.thootherright = thootherright;
		}
		public String getThootherleft() {
			return thootherleft;
		}
		public void setThootherleft(String thootherleft) {
			this.thootherleft = thootherleft;
		}
		public String getPositiveruq() {
			return positiveruq;
		}
		public void setPositiveruq(String positiveruq) {
			this.positiveruq = positiveruq;
		}
		public String getPositiveluq() {
			return positiveluq;
		}
		public void setPositiveluq(String positiveluq) {
			this.positiveluq = positiveluq;
		}
		public String getPositiverlq() {
			return positiverlq;
		}
		public void setPositiverlq(String positiverlq) {
			this.positiverlq = positiverlq;
		}
		public String getPositivellq() {
			return positivellq;
		}
		public void setPositivellq(String positivellq) {
			this.positivellq = positivellq;
		}
		public String getNegativeruq() {
			return negativeruq;
		}
		public void setNegativeruq(String negativeruq) {
			this.negativeruq = negativeruq;
		}
		public String getNegativeluq() {
			return negativeluq;
		}
		public void setNegativeluq(String negativeluq) {
			this.negativeluq = negativeluq;
		}
		public String getNegativerlq() {
			return negativerlq;
		}
		public void setNegativerlq(String negativerlq) {
			this.negativerlq = negativerlq;
		}
		public String getNegativellq() {
			return negativellq;
		}
		public void setNegativellq(String negativellq) {
			this.negativellq = negativellq;
		}
		public String getPatientsmoker() {
			return patientsmoker;
		}
		public void setPatientsmoker(String patientsmoker) {
			this.patientsmoker = patientsmoker;
		}
		public String getHighcrestright() {
			return highcrestright;
		}
		public void setHighcrestright(String highcrestright) {
			this.highcrestright = highcrestright;
		}
		public String getHighcrestleft() {
			return highcrestleft;
		}
		public void setHighcrestleft(String highcrestleft) {
			this.highcrestleft = highcrestleft;
		}
		public String getHighcrestnormal() {
			return highcrestnormal;
		}
		public void setHighcrestnormal(String highcrestnormal) {
			this.highcrestnormal = highcrestnormal;
		}
		public String getHighpsisright() {
			return highpsisright;
		}
		public void setHighpsisright(String highpsisright) {
			this.highpsisright = highpsisright;
		}
		public String getHighpsisleft() {
			return highpsisleft;
		}
		public void setHighpsisleft(String highpsisleft) {
			this.highpsisleft = highpsisleft;
		}
		public String getHighpsisnormal() {
			return highpsisnormal;
		}
		public void setHighpsisnormal(String highpsisnormal) {
			this.highpsisnormal = highpsisnormal;
		}
		public String getCurveright() {
			return curveright;
		}
		public void setCurveright(String curveright) {
			this.curveright = curveright;
		}
		public String getCurveleft() {
			return curveleft;
		}
		public void setCurveleft(String curveleft) {
			this.curveleft = curveleft;
		}
		public String getCurvenormal() {
			return curvenormal;
		}
		public void setCurvenormal(String curvenormal) {
			this.curvenormal = curvenormal;
		}
		public String getLordosishyper() {
			return lordosishyper;
		}
		public void setLordosishyper(String lordosishyper) {
			this.lordosishyper = lordosishyper;
		}
		public String getLordosishypo() {
			return lordosishypo;
		}
		public void setLordosishypo(String lordosishypo) {
			this.lordosishypo = lordosishypo;
		}
		public String getLordosisnormal() {
			return lordosisnormal;
		}
		public void setLordosisnormal(String lordosisnormal) {
			this.lordosisnormal = lordosisnormal;
		}
		public String getParaspinalpain() {
			return paraspinalpain;
		}
		public void setParaspinalpain(String paraspinalpain) {
			this.paraspinalpain = paraspinalpain;
		}
		public String getParaspinalspasm() {
			return paraspinalspasm;
		}
		public void setParaspinalspasm(String paraspinalspasm) {
			this.paraspinalspasm = paraspinalspasm;
		}
		public String getParaspinaledema() {
			return paraspinaledema;
		}
		public void setParaspinaledema(String paraspinaledema) {
			this.paraspinaledema = paraspinaledema;
		}
		public String getParaspinaltp() {
			return paraspinaltp;
		}
		public void setParaspinaltp(String paraspinaltp) {
			this.paraspinaltp = paraspinaltp;
		}
		public String getQuadrl() {
			return quadrl;
		}
		public void setQuadrl(String quadrl) {
			this.quadrl = quadrl;
		}
		public String getQuadrl1() {
			return quadrl1;
		}
		public void setQuadrl1(String quadrl1) {
			this.quadrl1 = quadrl1;
		}
		public String getHamstringrl() {
			return hamstringrl;
		}
		public void setHamstringrl(String hamstringrl) {
			this.hamstringrl = hamstringrl;
		}
		public String getHamstringrl1() {
			return hamstringrl1;
		}
		public void setHamstringrl1(String hamstringrl1) {
			this.hamstringrl1 = hamstringrl1;
		}
		public String getVerfix() {
			return verfix;
		}
		public void setVerfix(String verfix) {
			this.verfix = verfix;
		}
		public String getVernofix() {
			return vernofix;
		}
		public void setVernofix(String vernofix) {
			this.vernofix = vernofix;
		}
		public String getAbdomentender() {
			return abdomentender;
		}
		public void setAbdomentender(String abdomentender) {
			this.abdomentender = abdomentender;
		}
		public String getAbdomenpulse() {
			return abdomenpulse;
		}
		public void setAbdomenpulse(String abdomenpulse) {
			this.abdomenpulse = abdomenpulse;
		}
		public String getAbdomenascites() {
			return abdomenascites;
		}
		public void setAbdomenascites(String abdomenascites) {
			this.abdomenascites = abdomenascites;
		}
		public String getLumflexpain() {
			return lumflexpain;
		}
		public void setLumflexpain(String lumflexpain) {
			this.lumflexpain = lumflexpain;
		}
		public String getLumflexspasm() {
			return lumflexspasm;
		}
		public void setLumflexspasm(String lumflexspasm) {
			this.lumflexspasm = lumflexspasm;
		}
		public String getLumflexstiff() {
			return lumflexstiff;
		}
		public void setLumflexstiff(String lumflexstiff) {
			this.lumflexstiff = lumflexstiff;
		}
		public String getLumextpain() {
			return lumextpain;
		}
		public void setLumextpain(String lumextpain) {
			this.lumextpain = lumextpain;
		}
		public String getLumextspasm() {
			return lumextspasm;
		}
		public void setLumextspasm(String lumextspasm) {
			this.lumextspasm = lumextspasm;
		}
		public String getLumextstiff() {
			return lumextstiff;
		}
		public void setLumextstiff(String lumextstiff) {
			this.lumextstiff = lumextstiff;
		}
		public String getLumrlfpain() {
			return lumrlfpain;
		}
		public void setLumrlfpain(String lumrlfpain) {
			this.lumrlfpain = lumrlfpain;
		}
		public String getLumrlfspasm() {
			return lumrlfspasm;
		}
		public void setLumrlfspasm(String lumrlfspasm) {
			this.lumrlfspasm = lumrlfspasm;
		}
		public String getLumrlfstiff() {
			return lumrlfstiff;
		}
		public void setLumrlfstiff(String lumrlfstiff) {
			this.lumrlfstiff = lumrlfstiff;
		}
		public String getLumllfpain() {
			return lumllfpain;
		}
		public void setLumllfpain(String lumllfpain) {
			this.lumllfpain = lumllfpain;
		}
		public String getLumllfspasm() {
			return lumllfspasm;
		}
		public void setLumllfspasm(String lumllfspasm) {
			this.lumllfspasm = lumllfspasm;
		}
		public String getLumllfstiff() {
			return lumllfstiff;
		}
		public void setLumllfstiff(String lumllfstiff) {
			this.lumllfstiff = lumllfstiff;
		}
		public String getLumrrpain() {
			return lumrrpain;
		}
		public void setLumrrpain(String lumrrpain) {
			this.lumrrpain = lumrrpain;
		}
		public String getLumrrspasm() {
			return lumrrspasm;
		}
		public void setLumrrspasm(String lumrrspasm) {
			this.lumrrspasm = lumrrspasm;
		}
		public String getLumrrstiff() {
			return lumrrstiff;
		}
		public void setLumrrstiff(String lumrrstiff) {
			this.lumrrstiff = lumrrstiff;
		}
		public String getLumlrpain() {
			return lumlrpain;
		}
		public void setLumlrpain(String lumlrpain) {
			this.lumlrpain = lumlrpain;
		}
		public String getLumlrspasm() {
			return lumlrspasm;
		}
		public void setLumlrspasm(String lumlrspasm) {
			this.lumlrspasm = lumlrspasm;
		}
		public String getLumlrstiff() {
			return lumlrstiff;
		}
		public void setLumlrstiff(String lumlrstiff) {
			this.lumlrstiff = lumlrstiff;
		}
		public String getLu1() {
			return lu1;
		}
		public void setLu1(String lu1) {
			this.lu1 = lu1;
		}
		public String getLu1right() {
			return lu1right;
		}
		public void setLu1right(String lu1right) {
			this.lu1right = lu1right;
		}
		public String getLu1left() {
			return lu1left;
		}
		public void setLu1left(String lu1left) {
			this.lu1left = lu1left;
		}
		public String getLu2() {
			return lu2;
		}
		public void setLu2(String lu2) {
			this.lu2 = lu2;
		}
		public String getLu2right() {
			return lu2right;
		}
		public void setLu2right(String lu2right) {
			this.lu2right = lu2right;
		}
		public String getLu2left() {
			return lu2left;
		}
		public void setLu2left(String lu2left) {
			this.lu2left = lu2left;
		}
		public String getLu3() {
			return lu3;
		}
		public void setLu3(String lu3) {
			this.lu3 = lu3;
		}
		public String getLu3right() {
			return lu3right;
		}
		public void setLu3right(String lu3right) {
			this.lu3right = lu3right;
		}
		public String getLu3left() {
			return lu3left;
		}
		public void setLu3left(String lu3left) {
			this.lu3left = lu3left;
		}
		public String getLu4() {
			return lu4;
		}
		public void setLu4(String lu4) {
			this.lu4 = lu4;
		}
		public String getLu4right() {
			return lu4right;
		}
		public void setLu4right(String lu4right) {
			this.lu4right = lu4right;
		}
		public String getLu4left() {
			return lu4left;
		}
		public void setLu4left(String lu4left) {
			this.lu4left = lu4left;
		}
		public String getLu5() {
			return lu5;
		}
		public void setLu5(String lu5) {
			this.lu5 = lu5;
		}
		public String getLu5right() {
			return lu5right;
		}
		public void setLu5right(String lu5right) {
			this.lu5right = lu5right;
		}
		public String getLu5left() {
			return lu5left;
		}
		public void setLu5left(String lu5left) {
			this.lu5left = lu5left;
		}
		public String getLu6() {
			return lu6;
		}
		public void setLu6(String lu6) {
			this.lu6 = lu6;
		}
		public String getLu6right() {
			return lu6right;
		}
		public void setLu6right(String lu6right) {
			this.lu6right = lu6right;
		}
		public String getLu6left() {
			return lu6left;
		}
		public void setLu6left(String lu6left) {
			this.lu6left = lu6left;
		}
		public String getLu7() {
			return lu7;
		}
		public void setLu7(String lu7) {
			this.lu7 = lu7;
		}
		public String getLu7right() {
			return lu7right;
		}
		public void setLu7right(String lu7right) {
			this.lu7right = lu7right;
		}
		public String getLu7left() {
			return lu7left;
		}
		public void setLu7left(String lu7left) {
			this.lu7left = lu7left;
		}
		public String getHipflexright() {
			return hipflexright;
		}
		public void setHipflexright(String hipflexright) {
			this.hipflexright = hipflexright;
		}
		public String getHipflexleft() {
			return hipflexleft;
		}
		public void setHipflexleft(String hipflexleft) {
			this.hipflexleft = hipflexleft;
		}
		public String getLegextright() {
			return legextright;
		}
		public void setLegextright(String legextright) {
			this.legextright = legextright;
		}
		public String getLegextleft() {
			return legextleft;
		}
		public void setLegextleft(String legextleft) {
			this.legextleft = legextleft;
		}
		public String getDorsiflexright() {
			return dorsiflexright;
		}
		public void setDorsiflexright(String dorsiflexright) {
			this.dorsiflexright = dorsiflexright;
		}
		public String getDorsiflexleft() {
			return dorsiflexleft;
		}
		public void setDorsiflexleft(String dorsiflexleft) {
			this.dorsiflexleft = dorsiflexleft;
		}
		public String getDigitflexright() {
			return digitflexright;
		}
		public void setDigitflexright(String digitflexright) {
			this.digitflexright = digitflexright;
		}
		public String getDigitflexleft() {
			return digitflexleft;
		}
		public void setDigitflexleft(String digitflexleft) {
			this.digitflexleft = digitflexleft;
		}
		public String getHeelright() {
			return heelright;
		}
		public void setHeelright(String heelright) {
			this.heelright = heelright;
		}
		public String getHeelleft() {
			return heelleft;
		}
		public void setHeelleft(String heelleft) {
			this.heelleft = heelleft;
		}
		public String getToeright() {
			return toeright;
		}
		public void setToeright(String toeright) {
			this.toeright = toeright;
		}
		public String getToeleft() {
			return toeleft;
		}
		public void setToeleft(String toeleft) {
			this.toeleft = toeleft;
		}
		public String getPatellarright() {
			return patellarright;
		}
		public void setPatellarright(String patellarright) {
			this.patellarright = patellarright;
		}
		public String getPatellarleft() {
			return patellarleft;
		}
		public void setPatellarleft(String patellarleft) {
			this.patellarleft = patellarleft;
		}
		public String getAchillesright() {
			return achillesright;
		}
		public void setAchillesright(String achillesright) {
			this.achillesright = achillesright;
		}
		public String getAchillesleft() {
			return achillesleft;
		}
		public void setAchillesleft(String achillesleft) {
			this.achillesleft = achillesleft;
		}
		public String getBabinskiright() {
			return babinskiright;
		}
		public void setBabinskiright(String babinskiright) {
			this.babinskiright = babinskiright;
		}
		public String getBabinskileft() {
			return babinskileft;
		}
		public void setBabinskileft(String babinskileft) {
			this.babinskileft = babinskileft;
		}	
	
		public Physicalexam() {
			super();
		}
		public Physicalexam(String physical_id, String patient_id, String sign,
				String name, String id, String date, String age, String sex,
				String height, String height1, String weight, String temp,
				String bp, String pulse, String appearance, String weight1,
				String gait, String head, String path, String posture,
				String romber, String exam, String abnormal,
				String headtiltright, String headtiltleft,
				String headtiltnormal, String rotationright,
				String rotationleft, String rotationnormal, String tmjright,
				String tmjleft, String tmjnormal, String highright,
				String highleft, String highnormal, String lordhyper,
				String lordhypo, String lordnormal, String lymphedema,
				String lymphnormal, String paraspain, String parasspasm,
				String parasedema, String parastriggerpoint,
				String trapeziusrl, String trapeziusrl1, String scm,
				String scm1, String vertebraefix, String vertebraenofix,
				String flexpain, String flexspasm, String flexstiff,
				String extpain, String extspasm, String extstiff,
				String rlfpain, String rlfspasm, String rlfstiff,
				String llfpain, String llfspasm, String llfstiff,
				String rrpain, String rrspasm, String rrstiff, String lrpain,
				String lrspasm, String lrstiff, String c5, String c5right,
				String c5left, String c6, String c6right, String c6left,
				String c7, String c7right, String c7left, String c8,
				String c8right, String c8left, String t1, String t1right,
				String t1left, String other, String otherright,
				String otherleft, String deltoidright, String deltoidleft,
				String wristright, String wristleft, String wristflexright,
				String wristflexleft, String fingerflexright,
				String fingerflexleft, String fingeraddright,
				String fingeraddleft, String bicepright, String bicepleft,
				String bracioradright, String bracioradleft,
				String tricepright, String tricepleft, String presentvisual,
				String presentrl, String highshoulderright,
				String highshoulderleft, String highshouldernormal,
				String curvatureright, String curvatureleft,
				String curvaturenormal, String wingingright,
				String wingingleft, String wingingnormal, String ribhumpright,
				String ribhumpleft, String ribhumpnormal,
				String chestmeasurein, String kyphosishyper,
				String kyphosishypo, String kyphosisnormal, String parapain,
				String paraspasm, String paraedema, String paratriggerpoint,
				String ribspost, String ribsnor, String vertefix,
				String vertenofix, String thoracicpain, String thoracicspasm,
				String thoracicstiff, String thoextpain, String thoextspasm,
				String thoextstiff, String thorlfpain, String thorlfspasm,
				String thorlfstiff, String thollfpain, String thollfspasm,
				String thollfstiff, String thorrpain, String thorrspasm,
				String thorrstiff, String tholrpain, String tholrspasm,
				String tholrstiff, String thot1, String thot1right,
				String thot1left, String thot4, String thot4right,
				String thot4left, String thot10, String thot10right,
				String thot10left, String thoother, String thootherright,
				String thootherleft, String positiveruq, String positiveluq,
				String positiverlq, String positivellq, String negativeruq,
				String negativeluq, String negativerlq, String negativellq,
				String patientsmoker, String highcrestright,
				String highcrestleft, String highcrestnormal,
				String highpsisright, String highpsisleft,
				String highpsisnormal, String curveright, String curveleft,
				String curvenormal, String lordosishyper, String lordosishypo,
				String lordosisnormal, String paraspinalpain,
				String paraspinalspasm, String paraspinaledema,
				String paraspinaltp, String quadrl, String quadrl1,
				String hamstringrl, String hamstringrl1, String verfix,
				String vernofix, String abdomentender, String abdomenpulse,
				String abdomenascites, String lumflexpain, String lumflexspasm,
				String lumflexstiff, String lumextpain, String lumextspasm,
				String lumextstiff, String lumrlfpain, String lumrlfspasm,
				String lumrlfstiff, String lumllfpain, String lumllfspasm,
				String lumllfstiff, String lumrrpain, String lumrrspasm,
				String lumrrstiff, String lumlrpain, String lumlrspasm,
				String lumlrstiff, String lu1, String lu1right, String lu1left,
				String lu2, String lu2right, String lu2left, String lu3,
				String lu3right, String lu3left, String lu4, String lu4right,
				String lu4left, String lu5, String lu5right, String lu5left,
				String lu6, String lu6right, String lu6left, String lu7,
				String lu7right, String lu7left, String hipflexright,
				String hipflexleft, String legextright, String legextleft,
				String dorsiflexright, String dorsiflexleft,
				String digitflexright, String digitflexleft, String heelright,
				String heelleft, String toeright, String toeleft,
				String patellarright, String patellarleft,
				String achillesright, String achillesleft,
				String babinskiright, String babinskileft) {
			super();
			this.physical_id = physical_id;
			this.patient_id = patient_id;
			this.sign = sign;
			this.name = name;
			this.id = id;
			this.date = date;
			this.age = age;
			this.sex = sex;
			this.height = height;
			this.height1 = height1;
			this.weight = weight;
			this.temp = temp;
			this.bp = bp;
			this.pulse = pulse;
			this.appearance = appearance;
			this.weight1 = weight1;
			this.gait = gait;
			this.head = head;
			this.path = path;
			this.posture = posture;
			this.romber = romber;
			this.exam = exam;
			this.abnormal = abnormal;
			this.headtiltright = headtiltright;
			this.headtiltleft = headtiltleft;
			this.headtiltnormal = headtiltnormal;
			this.rotationright = rotationright;
			this.rotationleft = rotationleft;
			this.rotationnormal = rotationnormal;
			this.tmjright = tmjright;
			this.tmjleft = tmjleft;
			this.tmjnormal = tmjnormal;
			this.highright = highright;
			this.highleft = highleft;
			this.highnormal = highnormal;
			this.lordhyper = lordhyper;
			this.lordhypo = lordhypo;
			this.lordnormal = lordnormal;
			this.lymphedema = lymphedema;
			this.lymphnormal = lymphnormal;
			this.paraspain = paraspain;
			this.parasspasm = parasspasm;
			this.parasedema = parasedema;
			this.parastriggerpoint = parastriggerpoint;
			this.trapeziusrl = trapeziusrl;
			this.trapeziusrl1 = trapeziusrl1;
			this.scm = scm;
			this.scm1 = scm1;
			this.vertebraefix = vertebraefix;
			this.vertebraenofix = vertebraenofix;
			this.flexpain = flexpain;
			this.flexspasm = flexspasm;
			this.flexstiff = flexstiff;
			this.extpain = extpain;
			this.extspasm = extspasm;
			this.extstiff = extstiff;
			this.rlfpain = rlfpain;
			this.rlfspasm = rlfspasm;
			this.rlfstiff = rlfstiff;
			this.llfpain = llfpain;
			this.llfspasm = llfspasm;
			this.llfstiff = llfstiff;
			this.rrpain = rrpain;
			this.rrspasm = rrspasm;
			this.rrstiff = rrstiff;
			this.lrpain = lrpain;
			this.lrspasm = lrspasm;
			this.lrstiff = lrstiff;
			this.c5 = c5;
			this.c5right = c5right;
			this.c5left = c5left;
			this.c6 = c6;
			this.c6right = c6right;
			this.c6left = c6left;
			this.c7 = c7;
			this.c7right = c7right;
			this.c7left = c7left;
			this.c8 = c8;
			this.c8right = c8right;
			this.c8left = c8left;
			this.t1 = t1;
			this.t1right = t1right;
			this.t1left = t1left;
			this.other = other;
			this.otherright = otherright;
			this.otherleft = otherleft;
			this.deltoidright = deltoidright;
			this.deltoidleft = deltoidleft;
			this.wristright = wristright;
			this.wristleft = wristleft;
			this.wristflexright = wristflexright;
			this.wristflexleft = wristflexleft;
			this.fingerflexright = fingerflexright;
			this.fingerflexleft = fingerflexleft;
			this.fingeraddright = fingeraddright;
			this.fingeraddleft = fingeraddleft;
			this.bicepright = bicepright;
			this.bicepleft = bicepleft;
			this.bracioradright = bracioradright;
			this.bracioradleft = bracioradleft;
			this.tricepright = tricepright;
			this.tricepleft = tricepleft;
			this.presentvisual = presentvisual;
			this.presentrl = presentrl;
			this.highshoulderright = highshoulderright;
			this.highshoulderleft = highshoulderleft;
			this.highshouldernormal = highshouldernormal;
			this.curvatureright = curvatureright;
			this.curvatureleft = curvatureleft;
			this.curvaturenormal = curvaturenormal;
			this.wingingright = wingingright;
			this.wingingleft = wingingleft;
			this.wingingnormal = wingingnormal;
			this.ribhumpright = ribhumpright;
			this.ribhumpleft = ribhumpleft;
			this.ribhumpnormal = ribhumpnormal;
			this.chestmeasurein = chestmeasurein;
			this.kyphosishyper = kyphosishyper;
			this.kyphosishypo = kyphosishypo;
			this.kyphosisnormal = kyphosisnormal;
			this.parapain = parapain;
			this.paraspasm = paraspasm;
			this.paraedema = paraedema;
			this.paratriggerpoint = paratriggerpoint;
			this.ribspost = ribspost;
			this.ribsnor = ribsnor;
			this.vertefix = vertefix;
			this.vertenofix = vertenofix;
			this.thoracicpain = thoracicpain;
			this.thoracicspasm = thoracicspasm;
			this.thoracicstiff = thoracicstiff;
			this.thoextpain = thoextpain;
			this.thoextspasm = thoextspasm;
			this.thoextstiff = thoextstiff;
			this.thorlfpain = thorlfpain;
			this.thorlfspasm = thorlfspasm;
			this.thorlfstiff = thorlfstiff;
			this.thollfpain = thollfpain;
			this.thollfspasm = thollfspasm;
			this.thollfstiff = thollfstiff;
			this.thorrpain = thorrpain;
			this.thorrspasm = thorrspasm;
			this.thorrstiff = thorrstiff;
			this.tholrpain = tholrpain;
			this.tholrspasm = tholrspasm;
			this.tholrstiff = tholrstiff;
			this.thot1 = thot1;
			this.thot1right = thot1right;
			this.thot1left = thot1left;
			this.thot4 = thot4;
			this.thot4right = thot4right;
			this.thot4left = thot4left;
			this.thot10 = thot10;
			this.thot10right = thot10right;
			this.thot10left = thot10left;
			this.thoother = thoother;
			this.thootherright = thootherright;
			this.thootherleft = thootherleft;
			this.positiveruq = positiveruq;
			this.positiveluq = positiveluq;
			this.positiverlq = positiverlq;
			this.positivellq = positivellq;
			this.negativeruq = negativeruq;
			this.negativeluq = negativeluq;
			this.negativerlq = negativerlq;
			this.negativellq = negativellq;
			this.patientsmoker = patientsmoker;
			this.highcrestright = highcrestright;
			this.highcrestleft = highcrestleft;
			this.highcrestnormal = highcrestnormal;
			this.highpsisright = highpsisright;
			this.highpsisleft = highpsisleft;
			this.highpsisnormal = highpsisnormal;
			this.curveright = curveright;
			this.curveleft = curveleft;
			this.curvenormal = curvenormal;
			this.lordosishyper = lordosishyper;
			this.lordosishypo = lordosishypo;
			this.lordosisnormal = lordosisnormal;
			this.paraspinalpain = paraspinalpain;
			this.paraspinalspasm = paraspinalspasm;
			this.paraspinaledema = paraspinaledema;
			this.paraspinaltp = paraspinaltp;
			this.quadrl = quadrl;
			this.quadrl1 = quadrl1;
			this.hamstringrl = hamstringrl;
			this.hamstringrl1 = hamstringrl1;
			this.verfix = verfix;
			this.vernofix = vernofix;
			this.abdomentender = abdomentender;
			this.abdomenpulse = abdomenpulse;
			this.abdomenascites = abdomenascites;
			this.lumflexpain = lumflexpain;
			this.lumflexspasm = lumflexspasm;
			this.lumflexstiff = lumflexstiff;
			this.lumextpain = lumextpain;
			this.lumextspasm = lumextspasm;
			this.lumextstiff = lumextstiff;
			this.lumrlfpain = lumrlfpain;
			this.lumrlfspasm = lumrlfspasm;
			this.lumrlfstiff = lumrlfstiff;
			this.lumllfpain = lumllfpain;
			this.lumllfspasm = lumllfspasm;
			this.lumllfstiff = lumllfstiff;
			this.lumrrpain = lumrrpain;
			this.lumrrspasm = lumrrspasm;
			this.lumrrstiff = lumrrstiff;
			this.lumlrpain = lumlrpain;
			this.lumlrspasm = lumlrspasm;
			this.lumlrstiff = lumlrstiff;
			this.lu1 = lu1;
			this.lu1right = lu1right;
			this.lu1left = lu1left;
			this.lu2 = lu2;
			this.lu2right = lu2right;
			this.lu2left = lu2left;
			this.lu3 = lu3;
			this.lu3right = lu3right;
			this.lu3left = lu3left;
			this.lu4 = lu4;
			this.lu4right = lu4right;
			this.lu4left = lu4left;
			this.lu5 = lu5;
			this.lu5right = lu5right;
			this.lu5left = lu5left;
			this.lu6 = lu6;
			this.lu6right = lu6right;
			this.lu6left = lu6left;
			this.lu7 = lu7;
			this.lu7right = lu7right;
			this.lu7left = lu7left;
			this.hipflexright = hipflexright;
			this.hipflexleft = hipflexleft;
			this.legextright = legextright;
			this.legextleft = legextleft;
			this.dorsiflexright = dorsiflexright;
			this.dorsiflexleft = dorsiflexleft;
			this.digitflexright = digitflexright;
			this.digitflexleft = digitflexleft;
			this.heelright = heelright;
			this.heelleft = heelleft;
			this.toeright = toeright;
			this.toeleft = toeleft;
			this.patellarright = patellarright;
			this.patellarleft = patellarleft;
			this.achillesright = achillesright;
			this.achillesleft = achillesleft;
			this.babinskiright = babinskiright;
			this.babinskileft = babinskileft;
		}

	      /*String babinskipositive;
	      String babinskinegative;
	      String babinskiright;
	      String babinskileft;*/
	
	
}


	
				