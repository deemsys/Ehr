package bephit.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.sql.DataSource;

import bephit.model.Cervicalexam;
import bephit.model.ParticipantsDetails;
import bephit.model.Dcfeeslip;
import bephit.model.RadiologicReport;



public class DcfeeslipDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setDcfeeslip(Dcfeeslip dcfeeslip)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		//List<ParticipantsDetails> participants = new ArrayList<ParticipantsDetails>();
	    try{
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();	    	 
	    	/* String cmd="INSERT INTO `tbl_dcfeeslip`(`pid`,`date`,`pname`,`dr1`,`dr2`,`dr3`,`rpt`,`pta`,`initialemlimited`,`initialexpanded`,`initialdetailed`,`initialextended`,`estpatientltd`,`estpatientexp`,`estpatientdetails`,`estpatientcomp`,`consultphys`,`consultdetail`,`consultcomp`,`patientexp`,`patientdetails`,`patientcomp`,`telepnonebrief`,`telephoneintermediate`,`telephonecomp`,`tractionmechanical`,`electricstim`,`vasopneumatic`,`paraffin`,`microwave`,`whirlpool`,`diathermy`,`infrared`,`ultraviolet`,`manualelectricalstim`,`iontophoresis`,`contrastbaths`,`ultrasound`,`unlisted`,`therapeutic`,`neuromuscular`,`aquatic`,`gaittraining`,`massage`,`manualtherapy`,`unlistedother`,`grouptherapy`,`orthotics`,`kinetic`,`adlselfcare`,`reintegration`,`acupuncturewo`,`acupuncturew`,`spine12`,`spine34`,`spine5`,`extremity`,`routine`,`muscle`,`musclehand`,`rangeofmotion`,`rangeofmotionhand`,`ncv`,`ncvw`,`ncvea`,`ssepupper`,`sseplower`,`ssephead`,`hreflex`,`physicalperformance`,`functionalcapacity`,`text1`,`text2`,`supplies`,`patienteducation`,`medicaltestimony`,`insuranceform`,`teamconference`,`completespine`,`cervical23`,`cervical4`,`cervical67`,`thoracic4`,`thoracic2`,`scoliosis`,`lumbosacral`,`lumbosacral4`,`pelvis2`,`lumbarcomplete`,`elbow2`,`wrist2`,`hand2`,`knee2`,`ankle2`,`foot2`,`readotherfilms`,`cervicalpillow`,`lumbarsupport`,`orthoticcustoml`,`orthoticcustomr`,`tensunit`,`coldpack`,`wristsplint`,`heellift`,`exerciseball`,`exerciseband`,`unlisteditem`,`charges`,`less`,`balance`,`paymentcashcheck`,`chargeamex`,`cardsign`,`date1`,`parentsign`,`doctorsign`,`week`,`months`)VALUES ('"+dcfeeslip.getPid()+"','"+dcfeeslip.getDate()+"','"+dcfeeslip.getPname()+"','"+dcfeeslip.getDr1()+"','"+dcfeeslip.getDr2()+"','"+dcfeeslip.getDr3()+"','"+dcfeeslip.getRpt()+"','"+dcfeeslip.getPta()+"','"+dcfeeslip.getInitialemlimited()+"','"+dcfeeslip.getInitialexpanded()+"','"+dcfeeslip.getInitialdetailed()+"','"+dcfeeslip.getInitialextended()+"','"+dcfeeslip.getEstpatientltd()+"','"+dcfeeslip.getEstpatientexp()+"','"+dcfeeslip.getEstpatientdetails()+"','"+dcfeeslip.getEstpatientcomp()+"','"+dcfeeslip.getConsultphys()+"','"+dcfeeslip.getConsultdetail()+"','"+dcfeeslip.getConsultcomp()+"','"+dcfeeslip.getPatientexp()+"','"+dcfeeslip.getPatientdetails()+"','"+dcfeeslip.getEstpatientcomp()+"','"+dcfeeslip.getConsultphys()+"','"+dcfeeslip.getConsultdetail()+"','"+dcfeeslip.getConsultcomp()+"','"+dcfeeslip.getPatientexp()+"','"+dcfeeslip.getPatientdetails()+"','"+dcfeeslip.getPatientcomp()+"','"+dcfeeslip.getTelephonebrief()+"','"+dcfeeslip.getTelephoneintermediate()+"','"+dcfeeslip.getTelephonecomp()+"','"+dcfeeslip.getTractionmechanical()+"','"+dcfeeslip.getElectricstim()+"','"+dcfeeslip.getVasopneumatic()+"','"+dcfeeslip.getParaffin()+"','"+dcfeeslip.getMicrowave()+"','"+dcfeeslip.getWhirlpool()+"','"+dcfeeslip.getDiathermy()+"','"+dcfeeslip.getInfrared()+"','"+dcfeeslip.getUltraviolet()+"','"+dcfeeslip.getManualelectricalstim()+"','"+dcfeeslip.getIontophoresis()+"','"+dcfeeslip.getContrastbaths()+"','"+dcfeeslip.getUltrasound()+"','"+dcfeeslip.getUnlisted()+"','"+dcfeeslip.getTherapeutic()+"','"+dcfeeslip.getNeuromuscular()+"','"+dcfeeslip.getAquatic()+"','"+dcfeeslip.getGaittraining()+"','"+dcfeeslip.getMassage()+"','"+dcfeeslip.getManualtherapy()+"','"+dcfeeslip.getUnlistedother()+"','"+dcfeeslip.getGrouptherapy()+"','"+dcfeeslip.getOrthotics()+"','"+dcfeeslip.getKinetic()+"','"+dcfeeslip.getAdlselfcare()+"','"+dcfeeslip.getReintegration()+"','"+dcfeeslip.getAcupuncturewo()+"','"+dcfeeslip.getAcupuncturew()+"','"+dcfeeslip.getSpine12()+"','"+dcfeeslip.getSpine34()+"','"+dcfeeslip.getSpine5()+"','"+dcfeeslip.getExtremity()+"','"+dcfeeslip.getRoutine()+"','"+dcfeeslip.getMuscle()+"','"+dcfeeslip.getMusclehand()+"','"+dcfeeslip.getRangeofmotion()+"','"+dcfeeslip.getRangeofmotionhand()+"','"+dcfeeslip.getNcv()+"','"+dcfeeslip.getNcvw()+"','"+dcfeeslip.getNcvea()+"','"+dcfeeslip.getSsepupper()+"','"+dcfeeslip.getSseplower()+"','"+dcfeeslip.getSsephead()+"','"+dcfeeslip.getHreflex()+"','"+dcfeeslip.getPhysicalperformance()+"','"+dcfeeslip.getFunctionalcapacity()+"','"+dcfeeslip.getText1()+"','"+dcfeeslip.getText2()+"','"+dcfeeslip.getSupplies()+"','"+dcfeeslip.getPatienteducation()+"','"+dcfeeslip.getMedicaltestimony()+"','"+dcfeeslip.getInsuranceform()+"','"+dcfeeslip.getTeamconference()+"','"+dcfeeslip.getCompletespine()+"','"+dcfeeslip.getCervical23()+"','"+dcfeeslip.getCervical4()+"','"+dcfeeslip.getCervical67()+"','"+dcfeeslip.getThoracic4()+"','"+dcfeeslip.getThoracic2()+"','"+dcfeeslip.getScoliosis()+"','"+dcfeeslip.getLumbosacral()+"','"+dcfeeslip.getLumbosacral4()+"','"+dcfeeslip.getPelvis2()+"','"+dcfeeslip.getLumbarcomplete()+"','"+dcfeeslip.getElbow2()+"','"+dcfeeslip.getWrist2()+"','"+dcfeeslip.getHand2()+"','"+dcfeeslip.getKnee2()+"','"+dcfeeslip.getAnkle2()+"','"+dcfeeslip.getFoot2()+"','"+dcfeeslip.getReadotherfilms()+"','"+dcfeeslip.getCervicalpillow()+"','"+dcfeeslip.getLumbarsupport()+"','"+dcfeeslip.getOrthoticcustoml()+"','"+dcfeeslip.getOrthoticcustomr()+"','"+dcfeeslip.getTensunit()+"','"+dcfeeslip.getColdpack()+"','"+dcfeeslip.getWristsplint()+"','"+dcfeeslip.getHeellift()+"','"+dcfeeslip.getExerciseball()+"','"+dcfeeslip.getExerciseband()+"','"+dcfeeslip.getUnlisteditem()+"','"+dcfeeslip.getCharges()+"','"+dcfeeslip.getLess()+"','"+dcfeeslip.getBalance()+"','"+dcfeeslip.getPaymentcashcheck()+"','"+dcfeeslip.getChargeamex()+"','"+dcfeeslip.getCardsign()+"','"+dcfeeslip.getDate1()+"','"+dcfeeslip.getParentsign()+"','"+dcfeeslip.getDoctorsign()+"','"+dcfeeslip.getWeek()+"','"+dcfeeslip.getMonths()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);*/
	    	 
	    	 String cmd="INSERT INTO `tbl_dcfeeslip1`(`pid`,`date`,`pname`,`dr1`,`rpt`,`pta`,`initialemlimited`,`initialexpanded`,`initialdetailed`,`initialemextended`,`estpatientltd`,`estpatientexp`,`estpatientdetails`,`estpatientcomp`,`consultphys`,`consultdetail`,`consultcomp`,`patientexp`,`patientdetails`,`patientcomp`,`telephonebrief`,`telephoneintermediate`,`telephonecomp`,`tractionmechanical`,`electricstim`,`vasopneumatic`,`paraffin`,`microwave`,`whirlpool`,`diathermy`,`infrared`,`ultraviolet`,`manualelectricalstim`,`iontophoresis`,`contrastbaths`,`ultrasound`,`unlisted`,`therapeutic`,`neuromuscular`,`aquatic`,`gaittraining`,`massage`,`manualtherapy`,`unlistedother`,`grouptherapy`,`orthotics`,`kinetic`,`adlselfcare`,`reintegration`,`acupuncturewo`,`acupuncturew`,`spine12`,`spine34`,`spine5`,`extremity`,`routine`,`muscle`,`musclehand`,`rangeofmotion`,`rangeofmotionhand`,`ncv`,`ncvw`,`ncvea`,`ssepupper`,`sseplower`,`ssephead`,`hreflex`,`physicalperformance`,`functionalcapacity`,`text1`,`text2`,`supplies`,`patienteducation`,`medicaltestimony`,`insuranceform`,`teamconference`,`completespine`,`cervical23`,`cervical4`,`cervical67`,`thoracic4`,`thoracic2`,`scoliosis`,`lumbosacral`,`lumbosacral4`,`pelvis2`,`lumbarcomplete`,`elbow2`,`wrist2`,`hand2`,`knee2`,`ankle2`,`foot2`,`readotherfilms`,`cervicalpillow`,`lumbarsupport`,`orthoticcustoml`,`orthoticcustomr`,`tensunit`,`coldpack`,`wristsplint`,`heellift`,`exerciseball`,`exerciseband`,`unlisteditem`,`charges`,`less`,`balance`,`payment`,`paymentcashcheck`,`amex`,`discover`,`mc`,`visa`,`cardsign`,`date1`,`parentsign`,`doctorsign`,`week`,`months`)VALUES ('"+dcfeeslip.getPid()+"','"+dcfeeslip.getDate()+"','"+dcfeeslip.getPname()+"','"+dcfeeslip.getDr1()+"','"+dcfeeslip.getRpt()+"','"+dcfeeslip.getPta()+"','"+dcfeeslip.getInitialemlimited()+"','"+dcfeeslip.getInitialexpanded()+"','"+dcfeeslip.getInitialdetailed()+"','"+dcfeeslip.getInitialemextended()+"','"+dcfeeslip.getEstpatientltd()+"','"+dcfeeslip.getEstpatientexp()+"','"+dcfeeslip.getEstpatientdetails()+"','"+dcfeeslip.getEstpatientcomp()+"','"+dcfeeslip.getConsultphys()+"','"+dcfeeslip.getConsultdetail()+"','"+dcfeeslip.getConsultcomp()+"','"+dcfeeslip.getPatientexp()+"','"+dcfeeslip.getPatientdetails()+"','"+dcfeeslip.getPatientcomp()+"','"+dcfeeslip.getTelephonebrief()+"','"+dcfeeslip.getTelephoneintermediate()+"','"+dcfeeslip.getTelephonecomp()+"','"+dcfeeslip.getTractionmechanical()+"','"+dcfeeslip.getElectricstim()+"','"+dcfeeslip.getVasopneumatic()+"','"+dcfeeslip.getParaffin()+"','"+dcfeeslip.getMicrowave()+"','"+dcfeeslip.getWhirlpool()+"','"+dcfeeslip.getDiathermy()+"','"+dcfeeslip.getInfrared()+"','"+dcfeeslip.getUltraviolet()+"','"+dcfeeslip.getManualelectricalstim()+"','"+dcfeeslip.getIontophoresis()+"','"+dcfeeslip.getContrastbaths()+"','"+dcfeeslip.getUltrasound()+"','"+dcfeeslip.getUnlisted()+"','"+dcfeeslip.getTherapeutic()+"','"+dcfeeslip.getNeuromuscular()+"','"+dcfeeslip.getAquatic()+"','"+dcfeeslip.getGaittraining()+"','"+dcfeeslip.getMassage()+"','"+dcfeeslip.getManualtherapy()+"','"+dcfeeslip.getUnlistedother()+"','"+dcfeeslip.getGrouptherapy()+"','"+dcfeeslip.getOrthotics()+"','"+dcfeeslip.getKinetic()+"','"+dcfeeslip.getAdlselfcare()+"','"+dcfeeslip.getReintegration()+"','"+dcfeeslip.getAcupuncturewo()+"','"+dcfeeslip.getAcupuncturew()+"','"+dcfeeslip.getSpine12()+"','"+dcfeeslip.getSpine34()+"','"+dcfeeslip.getSpine5()+"','"+dcfeeslip.getExtremity()+"','"+dcfeeslip.getRoutine()+"','"+dcfeeslip.getMuscle()+"','"+dcfeeslip.getMusclehand()+"','"+dcfeeslip.getRangeofmotion()+"','"+dcfeeslip.getRangeofmotionhand()+"','"+dcfeeslip.getNcv()+"','"+dcfeeslip.getNcvw()+"','"+dcfeeslip.getNcvea()+"','"+dcfeeslip.getSsepupper()+"','"+dcfeeslip.getSseplower()+"','"+dcfeeslip.getSsephead()+"','"+dcfeeslip.getHreflex()+"','"+dcfeeslip.getPhysicalperformance()+"','"+dcfeeslip.getFunctionalcapacity()+"','"+dcfeeslip.getText1()+"','"+dcfeeslip.getText2()+"','"+dcfeeslip.getSupplies()+"','"+dcfeeslip.getPatienteducation()+"','"+dcfeeslip.getMedicaltestimony()+"','"+dcfeeslip.getInsuranceform()+"','"+dcfeeslip.getTeamconference()+"','"+dcfeeslip.getCompletespine()+"','"+dcfeeslip.getCervical23()+"','"+dcfeeslip.getCervical4()+"','"+dcfeeslip.getCervical67()+"','"+dcfeeslip.getThoracic4()+"','"+dcfeeslip.getThoracic2()+"','"+dcfeeslip.getScoliosis()+"','"+dcfeeslip.getLumbosacral()+"','"+dcfeeslip.getLumbosacral4()+"','"+dcfeeslip.getPelvis2()+"','"+dcfeeslip.getLumbarcomplete()+"','"+dcfeeslip.getElbow2()+"','"+dcfeeslip.getWrist2()+"','"+dcfeeslip.getHand2()+"','"+dcfeeslip.getKnee2()+"','"+dcfeeslip.getAnkle2()+"','"+dcfeeslip.getFoot2()+"','"+dcfeeslip.getReadotherfilms()+"','"+dcfeeslip.getCervicalpillow()+"','"+dcfeeslip.getLumbarsupport()+"','"+dcfeeslip.getOrthoticcustoml()+"','"+dcfeeslip.getOrthoticcustomr()+"','"+dcfeeslip.getTensunit()+"','"+dcfeeslip.getColdpack()+"','"+dcfeeslip.getWristsplint()+"','"+dcfeeslip.getHeellift()+"','"+dcfeeslip.getExerciseball()+"','"+dcfeeslip.getExerciseband()+"','"+dcfeeslip.getUnlisteditem()+"','"+dcfeeslip.getCharges()+"','"+dcfeeslip.getLess()+"','"+dcfeeslip.getBalance()+"','"+dcfeeslip.getPayment()+"','"+dcfeeslip.getPaymentcashcheck()+"','"+dcfeeslip.getAmex()+"','"+dcfeeslip.getDiscover()+"','"+dcfeeslip.getMc()+"','"+dcfeeslip.getVisa()+"','"+dcfeeslip.getCardsign()+"','"+dcfeeslip.getDate1()+"','"+dcfeeslip.getParentsign()+"','"+dcfeeslip.getDoctorsign()+"','"+dcfeeslip.getWeek()+"','"+dcfeeslip.getMonths()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	    	 flag=1;
	 }
	    catch(Exception e){
	    	System.out.println(e.toString());
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    	flag=0;
	    	//return 0;
	    }finally{
	     	releaseStatement(statement);
	    	releaseConnection(con);	    
	    	
	    }
	    if(flag==1)
    		return 1;
    	else
    		return 0;
	    
	}
	public List<Dcfeeslip> getDcfeeslip(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Dcfeeslip> dcfeeslip = new ArrayList<Dcfeeslip>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_dcfeeslip1");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				dcfeeslip.add( new Dcfeeslip(resultSet.getString("dcfeeid"),resultSet.getString("pid"),resultSet.getString("date"),resultSet.getString("pname"),resultSet.getString("dr1"), resultSet.getString("rpt"),resultSet.getString("pta"),resultSet.getInt("initialemlimited"),resultSet.getInt("initialexpanded"),resultSet.getInt("initialdetailed"),resultSet.getInt("initialemextended"),resultSet.getInt("estpatientltd"),resultSet.getInt("estpatientexp"),resultSet.getInt("estpatientdetails"), resultSet.getInt("estpatientcomp"),  resultSet.getInt("consultphys"),  resultSet.getInt("consultdetail"), resultSet.getInt("consultcomp"), resultSet.getInt("patientexp"), resultSet.getInt("patientdetails"), resultSet.getInt("patientcomp"),resultSet.getInt("telephonebrief"), resultSet.getInt("telephoneintermediate"),resultSet.getInt("telephonecomp"), resultSet.getInt("tractionmechanical"), resultSet.getInt("electricstim"), resultSet.getInt("vasopneumatic"), resultSet.getInt("paraffin"), resultSet.getInt("microwave"),resultSet.getInt("whirlpool"), resultSet.getInt("diathermy"),resultSet.getInt("infrared"), resultSet.getInt("ultraviolet"),resultSet.getInt("manualelectricalstim"), resultSet.getInt("iontophoresis"),resultSet.getInt("contrastbaths"),resultSet.getInt("ultrasound"),resultSet.getInt("unlisted"), resultSet.getInt("therapeutic"), resultSet.getInt("neuromuscular"),resultSet.getInt("aquatic"),resultSet.getInt("gaittraining"),resultSet.getInt("massage"),resultSet.getInt("manualtherapy"), resultSet.getInt("unlistedother"), resultSet.getInt("grouptherapy"),resultSet.getInt("orthotics"),resultSet.getInt("kinetic"),resultSet.getInt("adlselfcare"), resultSet.getInt("reintegration"),resultSet.getInt("acupuncturewo"),resultSet.getInt("acupuncturew"),resultSet.getInt("spine12"),resultSet.getInt("spine34"),resultSet.getInt("spine5"), resultSet.getInt("extremity"),resultSet.getInt("routine"),resultSet.getInt("muscle"),resultSet.getInt("musclehand"),resultSet.getInt("rangeofmotion"),resultSet.getInt("rangeofmotionhand"), resultSet.getInt("ncv"),resultSet.getInt("ncvw"),resultSet.getInt("ncvea"),resultSet.getInt("ssepupper"),resultSet.getInt("sseplower"),resultSet.getInt("ssephead"), resultSet.getInt("hreflex"),resultSet.getInt("physicalperformance"),resultSet.getInt("functionalcapacity"),resultSet.getInt("text1"),resultSet.getInt("text2"),resultSet.getInt("supplies"), resultSet.getInt("patienteducation"),resultSet.getInt("medicaltestimony"),resultSet.getInt("insuranceform"),resultSet.getInt("teamconference"), resultSet.getInt("completespine"),resultSet.getInt("cervical23"),resultSet.getInt("cervical4"),resultSet.getInt("cervical67"),resultSet.getInt("thoracic4"), resultSet.getInt("thoracic2"),resultSet.getInt("scoliosis"), resultSet.getInt("lumbosacral"), resultSet.getInt("lumbosacral4"),resultSet.getInt("pelvis2"),resultSet.getInt("lumbarcomplete"),resultSet.getInt("elbow2"),resultSet.getInt("wrist2"),resultSet.getInt("hand2"),resultSet.getInt("knee2"),resultSet.getInt("ankle2"),resultSet.getInt("foot2"),resultSet.getInt("readotherfilms"),resultSet.getInt("cervicalpillow"),resultSet.getInt("lumbarsupport"),resultSet.getInt("orthoticcustoml"),resultSet.getInt("orthoticcustomr"),resultSet.getInt("tensunit"),resultSet.getInt("coldpack"),resultSet.getInt("wristsplint"),resultSet.getInt("heellift"),resultSet.getInt("exerciseball"),resultSet.getInt("exerciseband"),resultSet.getInt("unlisteditem"),resultSet.getInt("charges"),resultSet.getInt("less"),resultSet.getInt("balance"),resultSet.getString("payment"),resultSet.getString("paymentcashcheck"),resultSet.getString("amex"),resultSet.getString("discover"),resultSet.getString("mc"),resultSet.getString("visa"),resultSet.getString("cardsign"),resultSet.getString("date1"),resultSet.getString("parentsign"),resultSet.getString("doctorsign"),resultSet.getString("week"),resultSet.getString("months")));
				}
	    }catch(Exception e){
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return dcfeeslip;
	}
	public List<Dcfeeslip> getDcfee(String dcfeeid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Dcfeeslip> dcfeeslip = new ArrayList<Dcfeeslip>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_dcfeeslip1 WHERE dcfeeid='"+dcfeeid+"'");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				dcfeeslip.add( new Dcfeeslip(resultSet.getString("dcfeeid"),resultSet.getString("pid"),resultSet.getString("date"),resultSet.getString("pname"),resultSet.getString("dr1"), resultSet.getString("rpt"),resultSet.getString("pta"),resultSet.getInt("initialemlimited"),resultSet.getInt("initialexpanded"),resultSet.getInt("initialdetailed"),resultSet.getInt("initialemextended"),resultSet.getInt("estpatientltd"),resultSet.getInt("estpatientexp"),resultSet.getInt("estpatientdetails"), resultSet.getInt("estpatientcomp"),  resultSet.getInt("consultphys"),  resultSet.getInt("consultdetail"), resultSet.getInt("consultcomp"), resultSet.getInt("patientexp"), resultSet.getInt("patientdetails"), resultSet.getInt("patientcomp"),resultSet.getInt("telephonebrief"), resultSet.getInt("telephoneintermediate"),resultSet.getInt("telephonecomp"), resultSet.getInt("tractionmechanical"), resultSet.getInt("electricstim"), resultSet.getInt("vasopneumatic"), resultSet.getInt("paraffin"), resultSet.getInt("microwave"),resultSet.getInt("whirlpool"), resultSet.getInt("diathermy"),resultSet.getInt("infrared"), resultSet.getInt("ultraviolet"),resultSet.getInt("manualelectricalstim"), resultSet.getInt("iontophoresis"),resultSet.getInt("contrastbaths"),resultSet.getInt("ultrasound"),resultSet.getInt("unlisted"), resultSet.getInt("therapeutic"), resultSet.getInt("neuromuscular"),resultSet.getInt("aquatic"),resultSet.getInt("gaittraining"),resultSet.getInt("massage"),resultSet.getInt("manualtherapy"), resultSet.getInt("unlistedother"), resultSet.getInt("grouptherapy"),resultSet.getInt("orthotics"),resultSet.getInt("kinetic"),resultSet.getInt("adlselfcare"), resultSet.getInt("reintegration"),resultSet.getInt("acupuncturewo"),resultSet.getInt("acupuncturew"),resultSet.getInt("spine12"),resultSet.getInt("spine34"),resultSet.getInt("spine5"), resultSet.getInt("extremity"),resultSet.getInt("routine"),resultSet.getInt("muscle"),resultSet.getInt("musclehand"),resultSet.getInt("rangeofmotion"),resultSet.getInt("rangeofmotionhand"), resultSet.getInt("ncv"),resultSet.getInt("ncvw"),resultSet.getInt("ncvea"),resultSet.getInt("ssepupper"),resultSet.getInt("sseplower"),resultSet.getInt("ssephead"), resultSet.getInt("hreflex"),resultSet.getInt("physicalperformance"),resultSet.getInt("functionalcapacity"),resultSet.getInt("text1"),resultSet.getInt("text2"),resultSet.getInt("supplies"), resultSet.getInt("patienteducation"),resultSet.getInt("medicaltestimony"),resultSet.getInt("insuranceform"),resultSet.getInt("teamconference"), resultSet.getInt("completespine"),resultSet.getInt("cervical23"),resultSet.getInt("cervical4"),resultSet.getInt("cervical67"),resultSet.getInt("thoracic4"), resultSet.getInt("thoracic2"),resultSet.getInt("scoliosis"), resultSet.getInt("lumbosacral"), resultSet.getInt("lumbosacral4"),resultSet.getInt("pelvis2"),resultSet.getInt("lumbarcomplete"),resultSet.getInt("elbow2"),resultSet.getInt("wrist2"),resultSet.getInt("hand2"),resultSet.getInt("knee2"),resultSet.getInt("ankle2"),resultSet.getInt("foot2"),resultSet.getInt("readotherfilms"),resultSet.getInt("cervicalpillow"),resultSet.getInt("lumbarsupport"),resultSet.getInt("orthoticcustoml"),resultSet.getInt("orthoticcustomr"),resultSet.getInt("tensunit"),resultSet.getInt("coldpack"),resultSet.getInt("wristsplint"),resultSet.getInt("heellift"),resultSet.getInt("exerciseball"),resultSet.getInt("exerciseband"),resultSet.getInt("unlisteditem"),resultSet.getInt("charges"),resultSet.getInt("less"),resultSet.getInt("balance"),resultSet.getString("payment"),resultSet.getString("paymentcashcheck"),resultSet.getString("amex"),resultSet.getString("discover"),resultSet.getString("mc"),resultSet.getString("visa"),resultSet.getString("cardsign"),resultSet.getString("date1"),resultSet.getString("parentsign"),resultSet.getString("doctorsign"),resultSet.getString("week"),resultSet.getString("months")));
				}
	    }catch(Exception e){
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return dcfeeslip;
	}


	public int setAns(Dcfeeslip dcfeeslips){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int total=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Dcfeeslip> dcfeeslip = new ArrayList<Dcfeeslip>();
	    try{
			/*resultSet = statement.executeQuery("select * from tbl_dcfeeslip");
			System.out.println(resultSet.toString());
			while(resultSet.next()){
				dcfeeslip.add( new Dcfeeslip(resultSet.getString("dcfeeid"),resultSet.getString("pid"),resultSet.getString("date"),resultSet.getString("pname"),resultSet.getString("dr1"),resultSet.getString("dr2"),resultSet.getString("dr3"), resultSet.getString("rpt"),resultSet.getString("pta"),resultSet.getString("initialemlimited"),resultSet.getString("initialexpanded"),resultSet.getString("initialdetailed"),resultSet.getString("initialextended"),resultSet.getString("estpatientltd"),resultSet.getString("estpatientexp"),resultSet.getString("estpatientdetails"), resultSet.getString("estpatientcomp"),  resultSet.getString("consultphys"),  resultSet.getString("consultdetail"), resultSet.getString("consultcomp"), resultSet.getString("patientexp"), resultSet.getString("patientdetails"), resultSet.getString("patientcomp"),resultSet.getString("telephonebrief"), resultSet.getString("telephoneintermediate"),resultSet.getString("telephonecomp"), resultSet.getString("tractionmechanical"), resultSet.getString("electricstim"), resultSet.getString("vasopneumatic"), resultSet.getString("paraffin"), resultSet.getString("microwave"),resultSet.getString("whirlpool"), resultSet.getString("diathermy"),resultSet.getString("infrared"), resultSet.getString("ultraviolet"),resultSet.getString("manualelectricalstim"), resultSet.getString("iontophoresis"),resultSet.getString("contrastbaths"),resultSet.getString("ultrasound"),resultSet.getString("unlisted"), resultSet.getString("therapeutic"), resultSet.getString("neuromuscular"),resultSet.getString("aquatic"),resultSet.getString("gaittraining"),resultSet.getString("massage"),resultSet.getString("manualtherapy"), resultSet.getString("unlistedother"), resultSet.getString("grouptherapy"),resultSet.getString("orthotics"),resultSet.getString("kinetic"),resultSet.getString("adlselfcare"), resultSet.getString("reintegration"),resultSet.getString("acupuncturewo"),resultSet.getString("acupuncturew"),resultSet.getString("spine12"),resultSet.getString("spine34"),resultSet.getString("spine5"), resultSet.getString("extremity"),resultSet.getString("routine"),resultSet.getString("muscle"),resultSet.getString("musclehand"),resultSet.getString("rangeofmotion"),resultSet.getString("rangeofmotionhand"), resultSet.getString("ncv"),resultSet.getString("ncvw"),resultSet.getString("ncvea"),resultSet.getString("ssepupper"),resultSet.getString("sseplower"),resultSet.getString("ssephead"), resultSet.getString("hreflex"),resultSet.getString("physicalperformance"),resultSet.getString("functionalcapacity"),resultSet.getString("text1"),resultSet.getString("text2"),resultSet.getString("supplies"), resultSet.getString("patienteducation"),resultSet.getString("medicaltestimony"),resultSet.getString("insuranceform"),resultSet.getString("teamconference"), resultSet.getString("completespine"),resultSet.getString("cervical23"),resultSet.getString("cervical4"),resultSet.getString("cervical67"),resultSet.getString("thoracic4"), resultSet.getString("thoracic2"),resultSet.getString("scoliosis"), resultSet.getString("lumbosacral"), resultSet.getString("lumbosacral4"),resultSet.getString("pelvis2"),resultSet.getString("lumbarcomplete"),resultSet.getString("elbow2"),resultSet.getString("wrist2"),resultSet.getString("hand2"),resultSet.getString("knee2"),resultSet.getString("ankle2"),resultSet.getString("foot2"),resultSet.getString("readotherfilms"),resultSet.getString("cervicalpillow"),resultSet.getString("lumbarsupport"),resultSet.getString("orthoticcustoml"),resultSet.getString("orthoticcustomr"),resultSet.getString("tensunit"),resultSet.getString("coldpack"),resultSet.getString("wristsplint"),resultSet.getString("heellift"),resultSet.getString("exerciseball"),resultSet.getString("exerciseband"),resultSet.getString("unlisteditem"),resultSet.getString("charges"),resultSet.getString("less"),resultSet.getString("balance"),resultSet.getString("paymentcashcheck"),resultSet.getString("chargeamex"),resultSet.getString("cardsign"),resultSet.getString("date1"),resultSet.getString("parentsign"),resultSet.getString("doctorsign"),resultSet.getString("week"),resultSet.getString("months")));
			*/	
	    
	    	total=dcfeeslips.getInitialemlimited()+dcfeeslips.getInitialexpanded()+dcfeeslips.getInitialdetailed()+dcfeeslips.getInitialemextended()+dcfeeslips.getEstpatientltd()+dcfeeslips.getEstpatientexp()+dcfeeslips.getEstpatientdetails()+dcfeeslips.getEstpatientcomp()+dcfeeslips.getConsultphys()+dcfeeslips.getConsultdetail()+dcfeeslips.getConsultcomp()+dcfeeslips.getPatientexp()+dcfeeslips.getPatientdetails()+dcfeeslips.getPatientcomp()+dcfeeslips.getTelephonebrief()+dcfeeslips.getTelephoneintermediate()+dcfeeslips.getTelephonecomp()+dcfeeslips.getTractionmechanical()+dcfeeslips.getElectricstim()+dcfeeslips.getVasopneumatic()+dcfeeslips.getParaffin()+dcfeeslips.getMicrowave()+dcfeeslips.getWhirlpool()+dcfeeslips.getDiathermy()+dcfeeslips.getInfrared()+dcfeeslips.getUltraviolet()+dcfeeslips.getManualelectricalstim()+dcfeeslips.getIontophoresis()+dcfeeslips.getContrastbaths()+dcfeeslips.getUltrasound()+dcfeeslips.getUnlisted()+dcfeeslips.getTherapeutic()+dcfeeslips.getNeuromuscular()+dcfeeslips.getAquatic()+dcfeeslips.getGaittraining()+dcfeeslips.getMassage()+dcfeeslips.getManualtherapy()+dcfeeslips.getUnlistedother()+dcfeeslips.getGrouptherapy()+dcfeeslips.getOrthotics()+dcfeeslips.getKinetic()+dcfeeslips.getAdlselfcare()+dcfeeslips.getReintegration()+dcfeeslips.getAcupuncturewo()+dcfeeslips.getAcupuncturew()+dcfeeslips.getSpine12()+dcfeeslips.getSpine34()+dcfeeslips.getSpine5()+dcfeeslips.getExtremity()+dcfeeslips.getRoutine()+dcfeeslips.getMuscle()+dcfeeslips.getMusclehand()+dcfeeslips.getRangeofmotion()+dcfeeslips.getRangeofmotionhand()+dcfeeslips.getNcv()+dcfeeslips.getNcvw()+dcfeeslips.getNcvea()+dcfeeslips.getSsepupper()+dcfeeslips.getSseplower()+dcfeeslips.getSsephead()+dcfeeslips.getHreflex()+dcfeeslips.getPhysicalperformance()+dcfeeslips.getFunctionalcapacity()+dcfeeslips.getText1()+dcfeeslips.getText2()+dcfeeslips.getSupplies()+dcfeeslips.getPatienteducation()+dcfeeslips.getMedicaltestimony()+dcfeeslips.getInsuranceform()+dcfeeslips.getTeamconference()+dcfeeslips.getCompletespine()+dcfeeslips.getCervical23()+dcfeeslips.getCervical4()+dcfeeslips.getCervical67()+dcfeeslips.getThoracic4()+dcfeeslips.getThoracic2()+dcfeeslips.getScoliosis()+dcfeeslips.getLumbosacral()+dcfeeslips.getLumbosacral4()+dcfeeslips.getPelvis2()+dcfeeslips.getLumbarcomplete()+dcfeeslips.getElbow2()+dcfeeslips.getWrist2()+dcfeeslips.getHand2()+dcfeeslips.getKnee2()+dcfeeslips.getAnkle2()+dcfeeslips.getFoot2()+dcfeeslips.getReadotherfilms()+dcfeeslips.getCervicalpillow()+dcfeeslips.getLumbarsupport()+dcfeeslips.getOrthoticcustoml()+dcfeeslips.getOrthoticcustomr()+dcfeeslips.getTensunit()+dcfeeslips.getColdpack()+dcfeeslips.getWristsplint()+dcfeeslips.getHeellift()+dcfeeslips.getExerciseball()+dcfeeslips.getExerciseband()+dcfeeslips.getUnlisteditem();
	    }
	    catch(Exception e){
	    
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return total;
}

	public int updatedcfeeslip(Dcfeeslip dcfeeslip,String dcfeeid,String admin)
	{
		Connection con = null;
		Statement statement = null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	    try{
	    	 /*DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 System.out.println("updatepatient_id"+patient_id);
	    	 *///System.out.println(dateFormat.format(date));
	    	String cmd="UPDATE tbl_dcfeeslip1 SET pid='"+dcfeeslip.getPid()+"',date='"+dcfeeslip.getDate()+"',pname='"+dcfeeslip.getPname()+"',dr1='"+dcfeeslip.getDr1()+"',rpt='"+dcfeeslip.getRpt()+"',pta='"+dcfeeslip.getPta()+"',initialemlimited='"+dcfeeslip.getInitialemlimited()+"',initialexpanded='"+dcfeeslip.getInitialexpanded()+"',initialdetailed='"+dcfeeslip.getInitialdetailed()+"',initialemextended='"+dcfeeslip.getInitialemextended()+"',estpatientltd='"+dcfeeslip.getEstpatientltd()+"',estpatientexp='"+dcfeeslip.getEstpatientexp()+"',estpatientdetails='"+dcfeeslip.getEstpatientdetails()+"',estpatientcomp='"+dcfeeslip.getEstpatientcomp()+"',consultphys='"+dcfeeslip.getConsultphys()+"',consultdetail='"+dcfeeslip.getConsultdetail()+"',consultcomp='"+dcfeeslip.getConsultcomp()+"',patientexp='"+dcfeeslip.getPatientexp()+"',patientdetails='"+dcfeeslip.getPatientdetails()+"',patientcomp='"+dcfeeslip.getPatientcomp()+"',telephonebrief='"+dcfeeslip.getTelephonebrief()+"',telephoneintermediate='"+dcfeeslip.getTelephoneintermediate()+"',telephonecomp='"+dcfeeslip.getTelephonecomp()+"',tractionmechanical='"+dcfeeslip.getTractionmechanical()+"',electricstim='"+dcfeeslip.getElectricstim()+"',vasopneumatic='"+dcfeeslip.getVasopneumatic()+"',paraffin='"+dcfeeslip.getParaffin()+"',microwave='"+dcfeeslip.getMicrowave()+"',whirlpool='"+dcfeeslip.getWhirlpool()+"',diathermy='"+dcfeeslip.getDiathermy()+"',infrared='"+dcfeeslip.getInfrared()+"',ultraviolet='"+dcfeeslip.getUltraviolet()+"',manualelectricalstim='"+dcfeeslip.getManualelectricalstim()+"',iontophoresis='"+dcfeeslip.getIontophoresis()+"',contrastbaths='"+dcfeeslip.getContrastbaths()+"',ultrasound='"+dcfeeslip.getUltrasound()+"',unlisted='"+dcfeeslip.getUnlisted()+"',therapeutic='"+dcfeeslip.getTherapeutic()+"',neuromuscular='"+dcfeeslip.getNeuromuscular()+"',aquatic='"+dcfeeslip.getAquatic()+"',gaittraining='"+dcfeeslip.getGaittraining()+"',massage='"+dcfeeslip.getMassage()+"',manualtherapy='"+dcfeeslip.getManualtherapy()+"',unlistedother='"+dcfeeslip.getUnlistedother()+"',grouptherapy='"+dcfeeslip.getGrouptherapy()+"',orthotics='"+dcfeeslip.getOrthotics()+"',kinetic='"+dcfeeslip.getKinetic()+"',adlselfcare='"+dcfeeslip.getAdlselfcare()+"',reintegration='"+dcfeeslip.getReintegration()+"',acupuncturewo='"+dcfeeslip.getAcupuncturewo()+"',acupuncturew='"+dcfeeslip.getAcupuncturew()+"',spine12='"+dcfeeslip.getSpine12()+"',spine34='"+dcfeeslip.getSpine34()+"',spine5='"+dcfeeslip.getSpine5()+"',extremity='"+dcfeeslip.getExtremity()+"',routine='"+dcfeeslip.getRoutine()+"',muscle='"+dcfeeslip.getMuscle()+"',musclehand='"+dcfeeslip.getMusclehand()+"',rangeofmotion='"+dcfeeslip.getRangeofmotion()+"',rangeofmotionhand='"+dcfeeslip.getRangeofmotionhand()+"',ncv='"+dcfeeslip.getNcv()+"',ncvw='"+dcfeeslip.getNcvw()+"',ncvea='"+dcfeeslip.getNcvea()+"',ssepupper='"+dcfeeslip.getSsepupper()+"',sseplower='"+dcfeeslip.getSseplower()+"',ssephead='"+dcfeeslip.getSsephead()+"',hreflex='"+dcfeeslip.getHreflex()+"',physicalperformance='"+dcfeeslip.getPhysicalperformance()+"',functionalcapacity='"+dcfeeslip.getFunctionalcapacity()+"',text1='"+dcfeeslip.getText1()+"',text2='"+dcfeeslip.getText2()+"',supplies='"+dcfeeslip.getSupplies()+"',patienteducation='"+dcfeeslip.getPatienteducation()+"',medicaltestimony='"+dcfeeslip.getMedicaltestimony()+"',insuranceform='"+dcfeeslip.getInsuranceform()+"',teamconference='"+dcfeeslip.getTeamconference()+"',completespine='"+dcfeeslip.getCompletespine()+"',cervical23='"+dcfeeslip.getCervical23()+"',cervical4='"+dcfeeslip.getCervical4()+"',cervical67='"+dcfeeslip.getCervical67()+"',thoracic4='"+dcfeeslip.getThoracic4()+"',thoracic2='"+dcfeeslip.getThoracic2()+"',scoliosis='"+dcfeeslip.getScoliosis()+"',lumbosacral='"+dcfeeslip.getLumbosacral()+"',lumbosacral4='"+dcfeeslip.getLumbosacral4()+"',pelvis2='"+dcfeeslip.getPelvis2()+"',lumbarcomplete='"+dcfeeslip.getLumbarcomplete()+"',elbow2='"+dcfeeslip.getElbow2()+"',wrist2='"+dcfeeslip.getWrist2()+"',hand2='"+dcfeeslip.getHand2()+"',knee2='"+dcfeeslip.getKnee2()+"',ankle2='"+dcfeeslip.getAnkle2()+"',foot2='"+dcfeeslip.getFoot2()+"',readotherfilms='"+dcfeeslip.getReadotherfilms()+"',cervicalpillow='"+dcfeeslip.getCervicalpillow()+"',lumbarsupport='"+dcfeeslip.getLumbarsupport()+"',orthoticcustoml='"+dcfeeslip.getOrthoticcustoml()+"',orthoticcustomr='"+dcfeeslip.getOrthoticcustomr()+"',tensunit='"+dcfeeslip.getTensunit()+"',coldpack='"+dcfeeslip.getColdpack()+"',wristsplint='"+dcfeeslip.getWristsplint()+"',heellift='"+dcfeeslip.getHeellift()+"',exerciseball='"+dcfeeslip.getExerciseball()+"',exerciseband='"+dcfeeslip.getExerciseband()+"',unlisteditem='"+dcfeeslip.getUnlisteditem()+"',charges='"+dcfeeslip.getCharges()+"',less='"+dcfeeslip.getLess()+"',balance='"+dcfeeslip.getBalance()+"',payment='"+dcfeeslip.getPayment()+"',paymentcashcheck='"+dcfeeslip.getPaymentcashcheck()+"',amex='"+dcfeeslip.getAmex()+"',discover='"+dcfeeslip.getDiscover()+"',mc='"+dcfeeslip.getMc()+"',visa='"+dcfeeslip.getVisa()+"',cardsign='"+dcfeeslip.getCardsign()+"',date1='"+dcfeeslip.getDate1()+"',parentsign='"+dcfeeslip.getParentsign()+"',doctorsign='"+dcfeeslip.getDoctorsign()+"',week='"+dcfeeslip.getWeek()+"',months='"+dcfeeslip.getMonths()+"' WHERE dcfeeid='"+dcfeeid+"';";
	    			
	    			String Desc="Update dcfeeslip1 "+dcfeeslip.getPname();
	    	System.out.println(cmd);
	    	statement.execute(cmd);
	    	flag=1;
	    }
	    	 catch(Exception e){
	 	    	System.out.println(e.toString());
	 	    	releaseStatement(statement);
	 	    	releaseConnection(con);
	 	    	flag=0;
	 	    	//return 0;
	 	    }finally{
	 	     	releaseStatement(statement);
	 	    	releaseConnection(con);	    
	 	    	
	 	    }
	 	    if(flag==1)
	     		return 1;
	     	else
	     		return 0;
	 	    
		
	}	
	public int deletedcfeeslip(String dcfeeid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try{
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 String cmd_getpatient_pname="select pname from tbl_dcfeeslip1 where dcfeeid='"+dcfeeid+"'";
	    	 String Desc="Delete report ";
	    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
				
				if(resultSet.next())
					Desc=Desc+resultSet.getString(1);
				statement.execute("delete from tbl_dcfeeslip1 where dcfeeid='"+dcfeeid+"'");
				
				flag=1;
				
		    }catch(Exception e){
		    	System.out.println(e.toString());
		    	flag=0;
		    	releaseResultSet(resultSet);
		    	releaseStatement(statement);
		    	releaseConnection(con);
		    }finally{
		    	
		    	releaseResultSet(resultSet);
		    	releaseStatement(statement);
		    	releaseConnection(con);	    	
		    }
		   		if(flag==1)
		   			return 1;
		   		else
		   			return 0;
		}
	public List<Dcfeeslip> getlimiteddcfeeslip(int page) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Dcfeeslip> dcfeeslip = new ArrayList<Dcfeeslip>();
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from tbl_dcfeeslip1 order by pname asc limit " + offset + ","+ limit+"" ;
	
			resultSet = statement.executeQuery(cmd);
			while (resultSet.next()) {
				dcfeeslip.add( new Dcfeeslip(resultSet.getString("dcfeeid"),resultSet.getString("pid"),resultSet.getString("date"),resultSet.getString("pname"),resultSet.getString("dr1"), resultSet.getString("rpt"),resultSet.getString("pta"),resultSet.getInt("initialemlimited"),resultSet.getInt("initialexpanded"),resultSet.getInt("initialdetailed"),resultSet.getInt("initialemextended"),resultSet.getInt("estpatientltd"),resultSet.getInt("estpatientexp"),resultSet.getInt("estpatientdetails"), resultSet.getInt("estpatientcomp"),  resultSet.getInt("consultphys"),  resultSet.getInt("consultdetail"), resultSet.getInt("consultcomp"), resultSet.getInt("patientexp"), resultSet.getInt("patientdetails"), resultSet.getInt("patientcomp"),resultSet.getInt("telephonebrief"), resultSet.getInt("telephoneintermediate"),resultSet.getInt("telephonecomp"), resultSet.getInt("tractionmechanical"), resultSet.getInt("electricstim"), resultSet.getInt("vasopneumatic"), resultSet.getInt("paraffin"), resultSet.getInt("microwave"),resultSet.getInt("whirlpool"), resultSet.getInt("diathermy"),resultSet.getInt("infrared"), resultSet.getInt("ultraviolet"),resultSet.getInt("manualelectricalstim"), resultSet.getInt("iontophoresis"),resultSet.getInt("contrastbaths"),resultSet.getInt("ultrasound"),resultSet.getInt("unlisted"), resultSet.getInt("therapeutic"), resultSet.getInt("neuromuscular"),resultSet.getInt("aquatic"),resultSet.getInt("gaittraining"),resultSet.getInt("massage"),resultSet.getInt("manualtherapy"), resultSet.getInt("unlistedother"), resultSet.getInt("grouptherapy"),resultSet.getInt("orthotics"),resultSet.getInt("kinetic"),resultSet.getInt("adlselfcare"), resultSet.getInt("reintegration"),resultSet.getInt("acupuncturewo"),resultSet.getInt("acupuncturew"),resultSet.getInt("spine12"),resultSet.getInt("spine34"),resultSet.getInt("spine5"), resultSet.getInt("extremity"),resultSet.getInt("routine"),resultSet.getInt("muscle"),resultSet.getInt("musclehand"),resultSet.getInt("rangeofmotion"),resultSet.getInt("rangeofmotionhand"), resultSet.getInt("ncv"),resultSet.getInt("ncvw"),resultSet.getInt("ncvea"),resultSet.getInt("ssepupper"),resultSet.getInt("sseplower"),resultSet.getInt("ssephead"), resultSet.getInt("hreflex"),resultSet.getInt("physicalperformance"),resultSet.getInt("functionalcapacity"),resultSet.getInt("text1"),resultSet.getInt("text2"),resultSet.getInt("supplies"), resultSet.getInt("patienteducation"),resultSet.getInt("medicaltestimony"),resultSet.getInt("insuranceform"),resultSet.getInt("teamconference"), resultSet.getInt("completespine"),resultSet.getInt("cervical23"),resultSet.getInt("cervical4"),resultSet.getInt("cervical67"),resultSet.getInt("thoracic4"), resultSet.getInt("thoracic2"),resultSet.getInt("scoliosis"), resultSet.getInt("lumbosacral"), resultSet.getInt("lumbosacral4"),resultSet.getInt("pelvis2"),resultSet.getInt("lumbarcomplete"),resultSet.getInt("elbow2"),resultSet.getInt("wrist2"),resultSet.getInt("hand2"),resultSet.getInt("knee2"),resultSet.getInt("ankle2"),resultSet.getInt("foot2"),resultSet.getInt("readotherfilms"),resultSet.getInt("cervicalpillow"),resultSet.getInt("lumbarsupport"),resultSet.getInt("orthoticcustoml"),resultSet.getInt("orthoticcustomr"),resultSet.getInt("tensunit"),resultSet.getInt("coldpack"),resultSet.getInt("wristsplint"),resultSet.getInt("heellift"),resultSet.getInt("exerciseball"),resultSet.getInt("exerciseband"),resultSet.getInt("unlisteditem"),resultSet.getInt("charges"),resultSet.getInt("less"),resultSet.getInt("balance"),resultSet.getString("payment"),resultSet.getString("paymentcashcheck"),resultSet.getString("amex"),resultSet.getString("discover"),resultSet.getString("mc"),resultSet.getString("visa"),resultSet.getString("cardsign"),resultSet.getString("date1"),resultSet.getString("parentsign"),resultSet.getString("doctorsign"),resultSet.getString("week"),resultSet.getString("months"))); 				
			}
		} catch (Exception e) {
			/*logger.info(e.toString());*/
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		} finally {
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		}
		return dcfeeslip;

	}
	public int getnoofdcfeeslip() {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int noofRecords = 0;
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Dcfeeslip> dcfeeslip = new ArrayList<Dcfeeslip>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from tbl_dcfeeslip1";
					System.out.println("command"+cmd);			
			resultSet = statement.executeQuery(cmd);
			if (resultSet.next())
				noofRecords = resultSet.getInt("noofrecords");

		} catch (Exception e) {
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		} finally {
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		}
		return noofRecords;

	}

	public void releaseConnection(Connection con){
    	try{if(con != null)
    		con.close();
    	}catch(Exception e){}
    }
    public void releaseResultSet(ResultSet rs){
    	try{if(rs != null)
    		rs.close();
    }catch(Exception e){}
    }
    public void releaseStatement(Statement stmt){
    	try{if(stmt != null)
    		stmt.close();
    }catch(Exception e){}
    }
	
}