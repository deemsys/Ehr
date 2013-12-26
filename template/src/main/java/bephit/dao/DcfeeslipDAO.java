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
	    	 
	    	 String cmd="INSERT INTO `tbl_dcfeeslip`(`pid`,`date`,`pname`,`dr1`,`dr2`,`dr3`,`rpt`,`pta`,`initialemlimited`,`initialexpanded`,`initialdetailed`,`initialextended`,`estpatientltd`,`estpatientexp`,`estpatientdetails`,`estpatientcomp`,`consultphys`,`consultdetail`,`consultcomp`,`patientexp`,`patientdetails`,`patientcomp`,`telephonebrief`,`telephoneintermediate`,`telephonecomp`,`tractionmechanical`,`electricstim`,`vasopneumatic`,`paraffin`,`microwave`,`whirlpool`,`diathermy`,`infrared`,`ultraviolet`,`manualelectricalstim`,`iontophoresis`,`contrastbaths`,`ultrasound`,`unlisted`,`therapeutic`,`neuromuscular`,`aquatic`,`gaittraining`,`massage`,`manualtherapy`,`unlistedother`,`grouptherapy`,`orthotics`,`kinetic`,`adlselfcare`,`reintegration`,`acupuncturewo`,`acupuncturew`,`spine12`,`spine34`,`spine5`,`extremity`,`routine`,`muscle`,`musclehand`,`rangeofmotion`,`rangeofmotionhand`,`ncv`,`ncvw`,`ncvea`,`ssepupper`,`sseplower`,`ssephead`,`hreflex`,`physicalperformance`,`functionalcapacity`,`text1`,`text2`,`supplies`,`patienteducation`,`medicaltestimony`,`insuranceform`,`teamconference`,`completespine`,`cervical23`,`cervical4`,`cervical67`,`thoracic4`,`thoracic2`,`scoliosis`,`lumbosacral`,`lumbosacral4`,`pelvis2`,`lumbarcomplete`,`elbow2`,`wrist2`,`hand2`,`knee2`,`ankle2`,`foot2`,`readotherfilms`,`cervicalpillow`,`lumbarsupport`,`orthoticcustoml`,`orthoticcustomr`,`tensunit`,`coldpack`,`wristsplint`,`heellift`,`exerciseball`,`exerciseband`,`unlisteditem`,`charges`,`less`,`balance`,`paymentcashcheck`,`chargeamex`,`cardsign`,`date1`,`parentsign`,`doctorsign`,`week`,`months`)VALUES ('"+dcfeeslip.getPid()+"','"+dcfeeslip.getDate()+"','"+dcfeeslip.getPname()+"','"+dcfeeslip.getDr1()+"','"+dcfeeslip.getDr2()+"','"+dcfeeslip.getDr3()+"','"+dcfeeslip.getRpt()+"','"+dcfeeslip.getPta()+"','"+dcfeeslip.getInitialemlimited()+"','"+dcfeeslip.getInitialexpanded()+"','"+dcfeeslip.getInitialdetailed()+"','"+dcfeeslip.getInitialextended()+"','"+dcfeeslip.getEstpatientltd()+"','"+dcfeeslip.getEstpatientexp()+"','"+dcfeeslip.getEstpatientdetails()+"','"+dcfeeslip.getEstpatientcomp()+"','"+dcfeeslip.getConsultphys()+"','"+dcfeeslip.getConsultdetail()+"','"+dcfeeslip.getConsultcomp()+"','"+dcfeeslip.getPatientexp()+"','"+dcfeeslip.getPatientdetails()+"','"+dcfeeslip.getPatientcomp()+"','"+dcfeeslip.getTelephonebrief()+"','"+dcfeeslip.getTelephoneintermediate()+"','"+dcfeeslip.getTelephonecomp()+"','"+dcfeeslip.getTractionmechanical()+"','"+dcfeeslip.getElectricstim()+"','"+dcfeeslip.getVasopneumatic()+"','"+dcfeeslip.getParaffin()+"','"+dcfeeslip.getMicrowave()+"','"+dcfeeslip.getWhirlpool()+"','"+dcfeeslip.getDiathermy()+"','"+dcfeeslip.getInfrared()+"','"+dcfeeslip.getUltraviolet()+"','"+dcfeeslip.getManualelectricalstim()+"','"+dcfeeslip.getIontophoresis()+"','"+dcfeeslip.getContrastbaths()+"','"+dcfeeslip.getUltrasound()+"','"+dcfeeslip.getUnlisted()+"','"+dcfeeslip.getTherapeutic()+"','"+dcfeeslip.getNeuromuscular()+"','"+dcfeeslip.getAquatic()+"','"+dcfeeslip.getGaittraining()+"','"+dcfeeslip.getMassage()+"','"+dcfeeslip.getManualtherapy()+"','"+dcfeeslip.getUnlistedother()+"','"+dcfeeslip.getGrouptherapy()+"','"+dcfeeslip.getOrthotics()+"','"+dcfeeslip.getKinetic()+"','"+dcfeeslip.getAdlselfcare()+"','"+dcfeeslip.getReintegration()+"','"+dcfeeslip.getAcupuncturewo()+"','"+dcfeeslip.getAcupuncturew()+"','"+dcfeeslip.getSpine12()+"','"+dcfeeslip.getSpine34()+"','"+dcfeeslip.getSpine5()+"','"+dcfeeslip.getExtremity()+"','"+dcfeeslip.getRoutine()+"','"+dcfeeslip.getMuscle()+"','"+dcfeeslip.getMusclehand()+"','"+dcfeeslip.getRangeofmotion()+"','"+dcfeeslip.getRangeofmotionhand()+"','"+dcfeeslip.getNcv()+"','"+dcfeeslip.getNcvw()+"','"+dcfeeslip.getNcvea()+"','"+dcfeeslip.getSsepupper()+"','"+dcfeeslip.getSseplower()+"','"+dcfeeslip.getSsephead()+"','"+dcfeeslip.getHreflex()+"','"+dcfeeslip.getPhysicalperformance()+"','"+dcfeeslip.getFunctionalcapacity()+"','"+dcfeeslip.getText1()+"','"+dcfeeslip.getText2()+"','"+dcfeeslip.getSupplies()+"','"+dcfeeslip.getPatienteducation()+"','"+dcfeeslip.getMedicaltestimony()+"','"+dcfeeslip.getInsuranceform()+"','"+dcfeeslip.getTeamconference()+"','"+dcfeeslip.getCompletespine()+"','"+dcfeeslip.getCervical23()+"','"+dcfeeslip.getCervical4()+"','"+dcfeeslip.getCervical67()+"','"+dcfeeslip.getThoracic4()+"','"+dcfeeslip.getThoracic2()+"','"+dcfeeslip.getScoliosis()+"','"+dcfeeslip.getLumbosacral()+"','"+dcfeeslip.getLumbosacral4()+"','"+dcfeeslip.getPelvis2()+"','"+dcfeeslip.getLumbarcomplete()+"','"+dcfeeslip.getElbow2()+"','"+dcfeeslip.getWrist2()+"','"+dcfeeslip.getHand2()+"','"+dcfeeslip.getKnee2()+"','"+dcfeeslip.getAnkle2()+"','"+dcfeeslip.getFoot2()+"','"+dcfeeslip.getReadotherfilms()+"','"+dcfeeslip.getCervicalpillow()+"','"+dcfeeslip.getLumbarsupport()+"','"+dcfeeslip.getOrthoticcustoml()+"','"+dcfeeslip.getOrthoticcustomr()+"','"+dcfeeslip.getTensunit()+"','"+dcfeeslip.getColdpack()+"','"+dcfeeslip.getWristsplint()+"','"+dcfeeslip.getHeellift()+"','"+dcfeeslip.getExerciseball()+"','"+dcfeeslip.getExerciseband()+"','"+dcfeeslip.getUnlisteditem()+"','"+dcfeeslip.getCharges()+"','"+dcfeeslip.getLess()+"','"+dcfeeslip.getBalance()+"','"+dcfeeslip.getPaymentcashcheck()+"','"+dcfeeslip.getChargeamex()+"','"+dcfeeslip.getCardsign()+"','"+dcfeeslip.getDate1()+"','"+dcfeeslip.getParentsign()+"','"+dcfeeslip.getDoctorsign()+"','"+dcfeeslip.getWeek()+"','"+dcfeeslip.getMonths()+"')";
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
			resultSet = statement.executeQuery("select * from tbl_dcfeeslip");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				dcfeeslip.add( new Dcfeeslip(resultSet.getString("dcfeeid"),resultSet.getString("pid"),resultSet.getString("date"),resultSet.getString("pname"),resultSet.getString("dr1"),resultSet.getString("dr2"),resultSet.getString("dr3"), resultSet.getString("rpt"),resultSet.getString("pta"),resultSet.getString("initialemlimited"),resultSet.getString("initialexpanded"),resultSet.getString("initialdetailed"),resultSet.getString("initialextended"),resultSet.getString("estpatientltd"),resultSet.getString("estpatientexp"),resultSet.getString("estpatientdetails"), resultSet.getString("estpatientcomp"),  resultSet.getString("consultphys"),  resultSet.getString("consultdetail"), resultSet.getString("consultcomp"), resultSet.getString("patientexp"), resultSet.getString("patientdetails"), resultSet.getString("patientcomp"),resultSet.getString("telephonebrief"), resultSet.getString("telephoneintermediate"),resultSet.getString("telephonecomp"), resultSet.getString("tractionmechanical"), resultSet.getString("electricstim"), resultSet.getString("vasopneumatic"), resultSet.getString("paraffin"), resultSet.getString("microwave"),resultSet.getString("whirlpool"), resultSet.getString("diathermy"),resultSet.getString("infrared"), resultSet.getString("ultraviolet"),resultSet.getString("manualelectricalstim"), resultSet.getString("iontophoresis"),resultSet.getString("contrastbaths"),resultSet.getString("ultrasound"),resultSet.getString("unlisted"), resultSet.getString("therapeutic"), resultSet.getString("neuromuscular"),resultSet.getString("aquatic"),resultSet.getString("gaittraining"),resultSet.getString("massage"),resultSet.getString("manualtherapy"), resultSet.getString("unlistedother"), resultSet.getString("grouptherapy"),resultSet.getString("orthotics"),resultSet.getString("kinetic"),resultSet.getString("adlselfcare"), resultSet.getString("reintegration"),resultSet.getString("acupuncturewo"),resultSet.getString("acupuncturew"),resultSet.getString("spine12"),resultSet.getString("spine34"),resultSet.getString("spine5"), resultSet.getString("extremity"),resultSet.getString("routine"),resultSet.getString("muscle"),resultSet.getString("musclehand"),resultSet.getString("rangeofmotion"),resultSet.getString("rangeofmotionhand"), resultSet.getString("ncv"),resultSet.getString("ncvw"),resultSet.getString("ncvea"),resultSet.getString("ssepupper"),resultSet.getString("sseplower"),resultSet.getString("ssephead"), resultSet.getString("hreflex"),resultSet.getString("physicalperformance"),resultSet.getString("functionalcapacity"),resultSet.getString("text1"),resultSet.getString("text2"),resultSet.getString("supplies"), resultSet.getString("patienteducation"),resultSet.getString("medicaltestimony"),resultSet.getString("insuranceform"),resultSet.getString("teamconference"), resultSet.getString("completespine"),resultSet.getString("cervical23"),resultSet.getString("cervical4"),resultSet.getString("cervical67"),resultSet.getString("thoracic4"), resultSet.getString("thoracic2"),resultSet.getString("scoliosis"), resultSet.getString("lumbosacral"), resultSet.getString("lumbosacral4"),resultSet.getString("pelvis2"),resultSet.getString("lumbarcomplete"),resultSet.getString("elbow2"),resultSet.getString("wrist2"),resultSet.getString("hand2"),resultSet.getString("knee2"),resultSet.getString("ankle2"),resultSet.getString("foot2"),resultSet.getString("readotherfilms"),resultSet.getString("cervicalpillow"),resultSet.getString("lumbarsupport"),resultSet.getString("orthoticcustoml"),resultSet.getString("orthoticcustomr"),resultSet.getString("tensunit"),resultSet.getString("coldpack"),resultSet.getString("wristsplint"),resultSet.getString("heellift"),resultSet.getString("exerciseball"),resultSet.getString("exerciseband"),resultSet.getString("unlisteditem"),resultSet.getString("charges"),resultSet.getString("less"),resultSet.getString("balance"),resultSet.getString("paymentcashcheck"),resultSet.getString("chargeamex"),resultSet.getString("cardsign"),resultSet.getString("date1"),resultSet.getString("parentsign"),resultSet.getString("doctorsign"),resultSet.getString("week"),resultSet.getString("months")));
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