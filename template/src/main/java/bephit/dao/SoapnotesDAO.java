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
import javax.sql.DataSource;


import bephit.model.SoapNotes;
 



public class SoapnotesDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setSoapnotes(SoapNotes soapnotes)
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
	    	 //System.out.println(dateFormat.format(date));
	    	 /*String cmd="INSERT INTO `tbl_hamiltonchiropractic`(`hacheck`,`ha`,`neckcheck`,`neck`,`mbcheck`,`mb`,`ribscheck`,`ribs`,`shouldercheck`,`shoulder`,`elbowcheck`,`elbow`,`handcheck`,`hand`,`wristcheck`,`wrist`,`lbpcheck`,`lbp`,`hipcheck`,`hip`,`legcheck`,`leg`,`kneecheck`,`knee`,`footcheck`,`foot`,`anklecheck`,`ankle`,`suddenly`,`gradually`,`hours`,`days`,`date`,`reason`,`acute`,`subacute`,`chronic`,`lyingdown`,`sitting`,`standing`,`bending`,`rest`,`otherb`,`othere`,`ice`,`heat`,`massage`,`aspirin`,`otherdone`,`otherit`,`bendingworse`,`twisting`,`lifting`,`walking`,`activity`,`otherworse`,`otherfeel`,`sharp`,`severe`,`dull`,`burning`,`nagging`,`throbbing`,`numb`,`tingling`,`stiff`,`stabbing`,`cramping`,`otherdescribe`,`otherpain`,`constant`,`intermittent`,`local`,`diffuse`,`radiates`,`otherradiates`,`mild`,`moderate`,`severepain`,`crippling`,`am`,`pm`,`othertime`,`otherdn`,`better`,`same`,`worse`,`yes`,`no`,`day`,`work`,`sleep`,`otherdaily`,`othercondition`,`sameass`,`improved`,`worseass`,`plateau`,`preinjury`,`slight`,`moderatly`,`great`,`chiropractic`,`ems`,`iceplan`,`heatplan`,`nimmo`,`ultrasound`,`manualtraction`,`massageplan`,`neuromuscular`,`stretching`,`strengthening`,`remobilization`,`rehab`,`modificat`,`release`,`refer`,`decreasepain`,`decreasespam`,`increaserom`,`improveadl`,`improvesubluxations`,`fullactivity`,`returntowork`,`renewsports`,`jacksonsr`,`jacksonsl`,`jacksonslo`,`foramin_compr`,`foramin_compl`,`foramin_complo`,`shoulder_deprr`,`shoulder_deprl`,`shoulder_deprlo`,`georgesr`,`georgesl`,`georgeslo`,`odonor`,`odonol`,`odonolo`,`bakody_signr`,`bakody_signl`,`bakody_signlo`,`distraction_testr`,`distraction_testl`,`distraction_testlo`,`valsalvar`,`valsalval`,`valsalvalo`,`spinal_percuss`,`gripdynamomright`,`gripdynamomleft`,`adsonsr`,`adsonsl`,`adsonslo`,`rustsignr`,`rustsignl`,`rustsignlo`,`spinal_percusst`,`adams_testr`,`adams_testl`,`sheppal_signr`,`sheppal_signl`,`soto_hallr`,`soto_halll`,`compression_testr`,`compression_testl`,`compression_testlo`,`antalgiar`,`antalgial`,`spinal_percusslr`,`spinal_percussll`,`valsalvalr`,`valsalvall`,`minors_signr`,`minors_signl`,`braggards_testr`,`braggards_testl`,`slrr`,`slrl`,`wlrr`,`wlrl`,`hooversr`,`hooversl`,`dbl_leg_raiser`,`dbl_leg_raisel`,`long_leg_testr`,`long_leg_testl`,`anvil_testr`,`anvil_testl`,`thomasr`,`thomasl`,`milgrams_testr`,`milgrams_testl`,`obersr`,`obersl`,`illiaccompr`,`illiaccompl`,`yeomansr`,`yeomansl`,`allis_signr`,`allis_signl`,`dugasr`,`dugasl`,`supraspinatusr`,`supraspinatusl`,`codmansr`,`codmansl`,`speeds_testr`,`speeds_testl`,`yergasonsr`,`yergasonsl`,`tinelser`,`tinelsel`,`lingaminstabr`,`lingaminstabl`,`golfers_elbowr`,`golfers_elbowl`,`tennis_elbowr`,`tennis_elbowl`,`tinelsr`,`tinelsl`,`phalensr`,`phalensl`,`finkelsteins_testr`,`finkelsteins_testl`,`braceletr`,`braceletl`,`allensr`,`allensl`,`valgus_varusr`,`valgus_varusl`,`pat_ballr`,`pat_balll`,`drawerr`,`drawerl`,`val_varusr`,`val_varusl`,`apleysr`,`apleysl`,`drawerar`,`draweral`,`thompsonsr`,`thompsonsl`,`tinelsar`,`tinelsal`,`strunskysr`,`strunskysl`,`homansr`,`homansl`,`claudication_testr`,`claudication_testl`) VALUES ('"+hamiltonchiropractic.getHacheck()+"','"+hamiltonchiropractic.getHa()+"','"+hamiltonchiropractic.getNeckcheck()+"','"+hamiltonchiropractic.getNeck()+"','"+hamiltonchiropractic.getMbcheck()+"','"+hamiltonchiropractic.getMb()+"','"+hamiltonchiropractic.getRibscheck()+"','"+hamiltonchiropractic.getRibs()+"','"+hamiltonchiropractic.getShouldercheck()+"','"+hamiltonchiropractic.getShoulder()+"','"+hamiltonchiropractic.getElbowcheck()+"','"+hamiltonchiropractic.getElbow()+"','"+hamiltonchiropractic.getHandcheck()+"','"+hamiltonchiropractic.getHand()+"','"+hamiltonchiropractic.getWristcheck()+"','"+hamiltonchiropractic.getWrist()+"','"+hamiltonchiropractic.getLbpcheck()+"','"+hamiltonchiropractic.getLbp()+"','"+hamiltonchiropractic.getHipcheck()+"','"+hamiltonchiropractic.getHip()+"','"+hamiltonchiropractic.getLegcheck()+"','"+hamiltonchiropractic.getLeg()+"','"+hamiltonchiropractic.getKneecheck()+"','"+hamiltonchiropractic.getKnee()+"','"+hamiltonchiropractic.getFootcheck()+"','"+hamiltonchiropractic.getFoot()+"','"+hamiltonchiropractic.getAnklecheck()+"','"+hamiltonchiropractic.getAnkle()+"','"+hamiltonchiropractic.getSuddenly()+"','"+hamiltonchiropractic.getGradually()+"','"+hamiltonchiropractic.getHours()+"','"+hamiltonchiropractic.getDays()+"','"+hamiltonchiropractic.getDate()+"','"+hamiltonchiropractic.getReason()+"','"+hamiltonchiropractic.getAcute()+"','"+hamiltonchiropractic.getSubacute()+"','"+hamiltonchiropractic.getChronic()+"','"+hamiltonchiropractic.getLyingdown()+"','"+hamiltonchiropractic.getSitting()+"','"+hamiltonchiropractic.getStanding()+"','"+hamiltonchiropractic.getBending()+"','"+hamiltonchiropractic.getRest()+"','"+hamiltonchiropractic.getOtherb()+"','"+hamiltonchiropractic.getOthere()+"','"+hamiltonchiropractic.getIce()+"','"+hamiltonchiropractic.getHeat()+"','"+hamiltonchiropractic.getMassage()+"','"+hamiltonchiropractic.getAspirin()+"','"+hamiltonchiropractic.getOtherdone()+"','"+hamiltonchiropractic.getOtherit()+"','"+hamiltonchiropractic.getBendingworse()+"','"+hamiltonchiropractic.getTwisting()+"','"+hamiltonchiropractic.getLifting()+"','"+hamiltonchiropractic.getWalking()+"','"+hamiltonchiropractic.getActivity()+"','"+hamiltonchiropractic.getOtherworse()+"','"+hamiltonchiropractic.getOtherfeel()+"','"+hamiltonchiropractic.getSharp()+"','"+hamiltonchiropractic.getSevere()+"','"+hamiltonchiropractic.getDull()+"','"+hamiltonchiropractic.getBurning()+"','"+hamiltonchiropractic.getNagging()+"','"+hamiltonchiropractic.getThrobbing()+"','"+hamiltonchiropractic.getNumb()+"','"+hamiltonchiropractic.getTingling()+"','"+hamiltonchiropractic.getStiff()+"','"+hamiltonchiropractic.getStabbing()+"','"+hamiltonchiropractic.getCramping()+"','"+hamiltonchiropractic.getOtherdescribe()+"','"+hamiltonchiropractic.getOtherpain()+"','"+hamiltonchiropractic.getConstant()+"','"+hamiltonchiropractic.getIntermittent()+"','"+hamiltonchiropractic.getLocal()+"','"+hamiltonchiropractic.getDiffuse()+"','"+hamiltonchiropractic.getRadiates()+"','"+hamiltonchiropractic.getOtherradiates()+"','"+hamiltonchiropractic.getMild()+"','"+hamiltonchiropractic.getModerate()+"','"+hamiltonchiropractic.getSeverepain()+"','"+hamiltonchiropractic.getCrippling()+"','"+hamiltonchiropractic.getAm()+"','"+hamiltonchiropractic.getPm()+"','"+hamiltonchiropractic.getOthertime()+"','"+hamiltonchiropractic.getOtherdn()+"','"+hamiltonchiropractic.getBetter()+"','"+hamiltonchiropractic.getSame()+"','"+hamiltonchiropractic.getWorse()+"','"+hamiltonchiropractic.getYes()+"','"+hamiltonchiropractic.getNo()+"','"+hamiltonchiropractic.getDay()+"','"+hamiltonchiropractic.getWork()+"','"+hamiltonchiropractic.getSleep()+"','"+hamiltonchiropractic.getOtherdaily()+"','"+hamiltonchiropractic.getOthercondition()+"','"+hamiltonchiropractic.getSameass()+"','"+hamiltonchiropractic.getImproved()+"','"+hamiltonchiropractic.getWorseass()+"','"+hamiltonchiropractic.getPlateau()+"','"+hamiltonchiropractic.getPreinjury()+"','"+hamiltonchiropractic.getSlight()+"','"+hamiltonchiropractic.getModeratly()+"','"+hamiltonchiropractic.getGreat()+"','"+hamiltonchiropractic.getChiropractic()+"','"+hamiltonchiropractic.getEms()+"','"+hamiltonchiropractic.getIceplan()+"','"+hamiltonchiropractic.getHeatplan()+"','"+hamiltonchiropractic.getNimmo()+"','"+hamiltonchiropractic.getUltrasound()+"','"+hamiltonchiropractic.getManualtraction()+"','"+hamiltonchiropractic.getMassageplan()+"','"+hamiltonchiropractic.getNeuromuscular()+"','"+hamiltonchiropractic.getStretching()+"','"+hamiltonchiropractic.getStrengthening()+"','"+hamiltonchiropractic.getRemobilization()+"','"+hamiltonchiropractic.getRehab()+"','"+hamiltonchiropractic.getModificat()+"','"+hamiltonchiropractic.getRelease()+"','"+hamiltonchiropractic.getRefer()+"','"+hamiltonchiropractic.getDecreasepain()+"','"+hamiltonchiropractic.getDecreasespam()+"','"+hamiltonchiropractic.getIncreaserom()+"','"+hamiltonchiropractic.getImproveadl()+"','"+hamiltonchiropractic.getImprovesubluxations()+"','"+hamiltonchiropractic.getFullactivity()+"','"+hamiltonchiropractic.getReturntowork()+"','"+hamiltonchiropractic.getRenewsports()+"','"+hamiltonchiropractic.getJacksonsr()+"','"+hamiltonchiropractic.getJacksonsl()+"','"+hamiltonchiropractic.getJacksonslo()+"','"+hamiltonchiropractic.getForamin_compr()+"','"+hamiltonchiropractic.getForamin_compl()+"','"+hamiltonchiropractic.getForamin_complo()+"','"+hamiltonchiropractic.getShoulder_deprr()+"','"+hamiltonchiropractic.getShoulder_deprl()+"','"+hamiltonchiropractic.getShoulder_deprlo()+"','"+hamiltonchiropractic.getGeorgesr()+"','"+hamiltonchiropractic.getGeorgesl()+"','"+hamiltonchiropractic.getGeorgeslo()+"','"+hamiltonchiropractic.getOdonor()+"','"+hamiltonchiropractic.getOdonol()+"','"+hamiltonchiropractic.getOdonolo()+"','"+hamiltonchiropractic.getBakody_signr()+"','"+hamiltonchiropractic.getBakody_signl()+"','"+hamiltonchiropractic.getBakody_signlo()+"','"+hamiltonchiropractic.getDistraction_testr()+"','"+hamiltonchiropractic.getDistraction_testl()+"','"+hamiltonchiropractic.getDistraction_testlo()+"','"+hamiltonchiropractic.getValsalvalr()+"','"+hamiltonchiropractic.getValsalval()+"','"+hamiltonchiropractic.getValsalvalo()+"','"+hamiltonchiropractic.getSpinal_percuss()+"','"+hamiltonchiropractic.getGripdynamomright()+"','"+hamiltonchiropractic.getGripdynamomleft()+"','"+hamiltonchiropractic.getAdsonsr()+"','"+hamiltonchiropractic.getAdsonsl()+"','"+hamiltonchiropractic.getAdsonslo()+"','"+hamiltonchiropractic.getRustsignr()+"','"+hamiltonchiropractic.getRustsignl()+"','"+hamiltonchiropractic.getRustsignlo()+"','"+hamiltonchiropractic.getSpinal_percusst()+"','"+hamiltonchiropractic.getAdams_testr()+"','"+hamiltonchiropractic.getAdams_testl()+"','"+hamiltonchiropractic.getSheppal_signr()+"','"+hamiltonchiropractic.getSheppal_signl()+"','"+hamiltonchiropractic.getSoto_hallr()+"','"+hamiltonchiropractic.getSoto_halll()+"','"+hamiltonchiropractic.getCompression_testr()+"','"+hamiltonchiropractic.getCompression_testl()+"','"+hamiltonchiropractic.getCompression_testlo()+"','"+hamiltonchiropractic.getAntalgiar()+"','"+hamiltonchiropractic.getAntalgial()+"','"+hamiltonchiropractic.getSpinal_percusslr()+"','"+hamiltonchiropractic.getSpinal_percussll()+"','"+hamiltonchiropractic.getValsalvalr()+"','"+hamiltonchiropractic.getValsalvall()+"','"+hamiltonchiropractic.getMinors_signr()+"','"+hamiltonchiropractic.getMinors_signl()+"','"+hamiltonchiropractic.getBraggards_testr()+"','"+hamiltonchiropractic.getBraggards_testl()+"','"+hamiltonchiropractic.getSlrr()+"','"+hamiltonchiropractic.getSlrl()+"','"+hamiltonchiropractic.getWlrr()+"','"+hamiltonchiropractic.getWlrl()+"','"+hamiltonchiropractic.getHooversr()+"','"+hamiltonchiropractic.getHooversl()+"','"+hamiltonchiropractic.getDbl_leg_raiser()+"','"+hamiltonchiropractic.getDbl_leg_raisel()+"','"+hamiltonchiropractic.getLong_leg_testr()+"','"+hamiltonchiropractic.getLong_leg_testl()+"','"+hamiltonchiropractic.getAnvil_testr()+"','"+hamiltonchiropractic.getAnvil_testl()+"','"+hamiltonchiropractic.getThomasr()+"','"+hamiltonchiropractic.getThomasl()+"','"+hamiltonchiropractic.getMilgrams_testr()+"','"+hamiltonchiropractic.getThomasl()+"','"+hamiltonchiropractic.getObersr()+"','"+hamiltonchiropractic.getObersl()+"','"+hamiltonchiropractic.getIlliaccompr()+"','"+hamiltonchiropractic.getIlliaccompl()+"','"+hamiltonchiropractic.getYeomansr()+"','"+hamiltonchiropractic.getYeomansl()+"','"+hamiltonchiropractic.getAllis_signr()+"','"+hamiltonchiropractic.getAllis_signl()+"','"+hamiltonchiropractic.getDugasr()+"','"+hamiltonchiropractic.getDugasl()+"','"+hamiltonchiropractic.getSupraspinatusr()+"','"+hamiltonchiropractic.getCodmansr()+"','"+hamiltonchiropractic.getCodmansl()+"','"+hamiltonchiropractic.getSpeeds_testr()+"','"+hamiltonchiropractic.getSpeeds_testl()+"','"+hamiltonchiropractic.getYergasonsr()+"','"+hamiltonchiropractic.getYergasonsl()+"','"+hamiltonchiropractic.getTinelser()+"','"+hamiltonchiropractic.getTinelsel()+"','"+hamiltonchiropractic.getLingaminstabr()+"','"+hamiltonchiropractic.getLingaminstabl()+"','"+hamiltonchiropractic.getGolfers_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTennis_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTinelsr()+"','"+hamiltonchiropractic.getTinelsel()+"','"+hamiltonchiropractic.getPhalensr()+"','"+hamiltonchiropractic.getPhalensl()+"','"+hamiltonchiropractic.getFinkelsteins_testr()+"','"+hamiltonchiropractic.getFinkelsteins_testl()+"','"+hamiltonchiropractic.getBraceletr()+"','"+hamiltonchiropractic.getBraceletl()+"','"+hamiltonchiropractic.getAllensr()+"','"+hamiltonchiropractic.getAllensl()+"','"+hamiltonchiropractic.getValgus_varusr()+"','"+hamiltonchiropractic.getValgus_varusl()+"','"+hamiltonchiropractic.getPat_ballr()+"','"+hamiltonchiropractic.getPat_balll()+"','"+hamiltonchiropractic.getDrawerr()+"','"+hamiltonchiropractic.getDrawerl()+"','"+hamiltonchiropractic.getVal_varusr()+"','"+hamiltonchiropractic.getVal_varusl()+"','"+hamiltonchiropractic.getApleysr()+"','"+hamiltonchiropractic.getApleysl()+"','"+hamiltonchiropractic.getDrawerar()+"','"+hamiltonchiropractic.getDraweral()+"','"+hamiltonchiropractic.getThompsonsr()+"','"+hamiltonchiropractic.getThompsonsl()+"','"+hamiltonchiropractic.getTinelsar()+"','"+hamiltonchiropractic.getTinelsal()+"','"+hamiltonchiropractic.getStrunskysr()+"','"+hamiltonchiropractic.getStrunskysl()+"','"+hamiltonchiropractic.getHomansr()+"','"+hamiltonchiropractic.getHomansl()+"','"+hamiltonchiropractic.getClaudication_testr()+"','"+hamiltonchiropractic.getClaudication_testl()+"')";*/ 
	         String cmd="INSERT INTO `tbl_soapnotes`(`pname`,`headache`,`neckpain`,`rightshoulderpain`,`leftshoulderpain`,`chestpain`,`rightarmpain`,`leftarmpain`,`rightelbowpain`,`leftelbowpain`,`rightwristpain`,`leftwristpain`,`righthandpain`,`lefthandpain`,`mbp`,`rightribpain`,`leftribpain`,`lbp`,`rightsipain`,`leftsipain`,`righthippain`,`lefthippain`,`rightgluteulpain`,`leftgluteulpain`,`rightlegpain`,`leftlegpain`,`rightkneepain`,`leftkneepain`,`rightanklepain`,`leftanklepain`,`rightfootpain`,`leftfootpain`,`diagnosis1`,`diagnosis2`,`diagnosis3`,`diagnosis4`,`e1e2`,`offwork1`,`reeval1`,`improved1`,`worsened1`,`fixation1`,`notimproved1`,`scsm1`,`improved2`,`worsened2`,`fixation2`,`notimproved2`,`scsm2`,`improved3`,`worsened3`,`fixation3`,`notimproved3`,`scsm3`,`improved4`,`worsened4`,`fixation4`,`notimproved4`,`scsm4`,`improved5`,`worsened5`,`fixation5`,`notimproved5`,`scsm5`,`improved6`,`worsened6`,`fixation6`,`notimproved6`,`scsm6`,`improved7`,`worsened7`,`fixation7`,`notimproved7`,`scsm7`,`improved8`,`worsened8`,`fixation8`,`notimproved8`,`scsm8`,`sign`)VALUES ('"+soapnotes.getPname()+"','"+soapnotes.getHeadache()+"','"+soapnotes.getNeckpain()+"','"+soapnotes.getRightshoulderpain()+"','"+soapnotes.getLeftshoulderpain()+"','"+soapnotes.getChestpain()+"','"+soapnotes.getRightarmpain()+"','"+soapnotes.getLeftarmpain()+"','"+soapnotes.getRightelbowpain()+"','"+soapnotes.getLeftelbowpain()+"','"+soapnotes.getRightwristpain()+"','"+soapnotes.getLeftwristpain()+"','"+soapnotes.getRighthandpain()+"','"+soapnotes.getLefthandpain()+"','"+soapnotes.getMbp()+"','"+soapnotes.getRightribpain()+"','"+soapnotes.getLeftribpain()+"','"+soapnotes.getLbp()+"','"+soapnotes.getRightsipain()+"','"+soapnotes.getLeftsipain()+"','"+soapnotes.getRighthippain()+"','"+soapnotes.getLefthippain()+"','"+soapnotes.getRightgluteulpain()+"','"+soapnotes.getLeftgluteulpain()+"','"+soapnotes.getRightlegpain()+"','"+soapnotes.getLeftlegpain()+"','"+soapnotes.getRightkneepain()+"','"+soapnotes.getLeftkneepain()+"','"+soapnotes.getRightanklepain()+"','"+soapnotes.getLeftanklepain()+"','"+soapnotes.getRightfootpain()+"','"+soapnotes.getLeftfootpain()+"','"+soapnotes.getDiagnosis1()+"','"+soapnotes.getDiagnosis2()+"','"+soapnotes.getDiagnosis3()+"','"+soapnotes.getDiagnosis4()+"','"+soapnotes.getE1e2()+"','"+soapnotes.getOffwork1()+"','"+soapnotes.getReeval1()+"','"+soapnotes.getImproved1()+"','"+soapnotes.getWorsened1()+"','"+soapnotes.getFixation1()+"','"+soapnotes.getNotimproved1()+"','"+soapnotes.getScsm1()+"','"+soapnotes.getImproved2()+"','"+soapnotes.getWorsened2()+"','"+soapnotes.getFixation2()+"','"+soapnotes.getNotimproved2()+"','"+soapnotes.getScsm2()+"','"+soapnotes.getImproved3()+"','"+soapnotes.getWorsened3()+"','"+soapnotes.getFixation3()+"','"+soapnotes.getNotimproved3()+"','"+soapnotes.getScsm3()+"','"+soapnotes.getImproved4()+"','"+soapnotes.getWorsened4()+"','"+soapnotes.getFixation4()+"','"+soapnotes.getNotimproved4()+"','"+soapnotes.getScsm4()+"','"+soapnotes.getImproved5()+"','"+soapnotes.getWorsened5()+"','"+soapnotes.getFixation5()+"','"+soapnotes.getNotimproved5()+"','"+soapnotes.getScsm5()+"','"+soapnotes.getImproved6()+"','"+soapnotes.getWorsened6()+"','"+soapnotes.getFixation6()+"','"+soapnotes.getNotimproved6()+"','"+soapnotes.getScsm6()+"','"+soapnotes.getImproved7()+"','"+soapnotes.getWorsened7()+"','"+soapnotes.getFixation7()+"','"+soapnotes.getNotimproved7()+"','"+soapnotes.getScsm7()+"','"+soapnotes.getImproved8()+"','"+soapnotes.getWorsened8()+"','"+soapnotes.getFixation8()+"','"+soapnotes.getNotimproved8()+"','"+soapnotes.getScsm8()+"','"+soapnotes.getSign()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	    	/* String cmd_getparticipantname="select fname from participants_table where participants_id='"+participant_id+"'";
	    	 resultSet=statement.executeQuery(cmd_getparticipantname);
	    	 String Desc="added participants"+Autoaccident.getClaimnumber();
	    	 if(resultSet.next())
			Desc=Desc+resultSet.getString(1);
	    	String cmd_activity="insert into admin_log_activity_table(admin_id,ip_address,admin_date_time,admin_desc) values('"+admin_id+"','127.0.0.1','"+dateFormat.format(date)+"','"+Desc+"')";
	    	System.out.println(cmd_activity);
	    	statement.execute(cmd_activity);*/
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

	
public List<SoapNotes> getSoapnotes(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<SoapNotes> soapnotes = new ArrayList<SoapNotes>();
    try{
		resultSet = statement.executeQuery("select * from tbl_soapnotes");
		System.out.println(resultSet.toString());
		while(resultSet.next()){
			soapnotes.add( new SoapNotes(resultSet.getString("soapid"),resultSet.getString("pname"),resultSet.getString("headache"), resultSet.getString("neckpain"),resultSet.getString("rightshoulderpain"),resultSet.getString("leftshoulderpain"),resultSet.getString("chestpain"),resultSet.getString("rightarmpain"),resultSet.getString("leftarmpain"),resultSet.getString("rightelbowpain"),resultSet.getString("leftelbowpain"),resultSet.getString("rightwristpain"), resultSet.getString("leftwristpain"), resultSet.getString("righthandpain"), resultSet.getString("lefthandpain"), resultSet.getString("mbp"), resultSet.getString("rightribpain"), resultSet.getString("leftribpain"), resultSet.getString("lbp"), resultSet.getString("rightsipain"), resultSet.getString("leftsipain"), resultSet.getString("righthippain"),resultSet.getString("lefthippain"), resultSet.getString("rightgluteulpain"), resultSet.getString("leftgluteulpain"), resultSet.getString("rightlegpain"), resultSet.getString("leftlegpain"), resultSet.getString("rightkneepain"), resultSet.getString("leftkneepain"), resultSet.getString("rightanklepain"),resultSet.getString("leftanklepain"), resultSet.getString("rightfootpain"), resultSet.getString("leftfootpain"), resultSet.getString("diagnosis1"), resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"), resultSet.getString("e1e2"), resultSet.getString("offwork1"),resultSet.getString("reeval1"),resultSet.getString("improved1"),resultSet.getString("worsened1"),resultSet.getString("fixation1"),resultSet.getString("notimproved1"), resultSet.getString("scsm1"), resultSet.getString("improved2"),resultSet.getString("worsened2"),resultSet.getString("fixation2"),resultSet.getString("notimproved2"),resultSet.getString("scsm2"), resultSet.getString("improved3"), resultSet.getString("worsened3"),resultSet.getString("fixation3"),resultSet.getString("notimproved3"),resultSet.getString("scsm3"),resultSet.getString("improved4"),resultSet.getString("worsened4"), resultSet.getString("fixation4"), resultSet.getString("notimproved4"),resultSet.getString("scsm4"),resultSet.getString("improved5"),resultSet.getString("worsened5"),resultSet.getString("fixation5"),resultSet.getString("notimproved5"),resultSet.getString("scsm5"), resultSet.getString("improved6"),resultSet.getString("worsened6"),resultSet.getString("fixation6"),resultSet.getString("notimproved6"),resultSet.getString("scsm6"),resultSet.getString("improved7"), resultSet.getString("worsened7"),resultSet.getString("fixation7"), resultSet.getString("notimproved7"),resultSet.getString("scsm7"),resultSet.getString("improved8"),resultSet.getString("worsened8"), resultSet.getString("fixation8"),resultSet.getString("notimproved8"), resultSet.getString("scsm8"), resultSet.getString("sign")));

			

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
    return soapnotes;
	
}

public List<SoapNotes> getSoap(String soapid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<SoapNotes> soapnotes = new ArrayList<SoapNotes>();
    try{
    	String cmd="select * from tbl_soapnotes where soapid='"+soapid+"'";
    	System.out.println(soapid);
    	while(resultSet.next()){

			


    		soapnotes.add( new SoapNotes(resultSet.getString("soapid"),resultSet.getString("pname"),resultSet.getString("headache"), resultSet.getString("neckpain"),resultSet.getString("rightshoulderpain"),resultSet.getString("leftshoulderpain"),resultSet.getString("chestpain"),resultSet.getString("rightarmpain"),resultSet.getString("leftarmpain"),resultSet.getString("rightelbowpain"),resultSet.getString("leftelbowpain"),resultSet.getString("rightwristpain"), resultSet.getString("leftwristpain"), resultSet.getString("righthandpain"), resultSet.getString("lefthandpain"), resultSet.getString("mbp"), resultSet.getString("rightribpain"), resultSet.getString("leftribpain"), resultSet.getString("lbp"), resultSet.getString("rightsipain"), resultSet.getString("leftsipain"), resultSet.getString("righthippain"),resultSet.getString("lefthippain"), resultSet.getString("rightgluteulpain"), resultSet.getString("leftgluteulpain"), resultSet.getString("rightlegpain"), resultSet.getString("leftlegpain"), resultSet.getString("rightkneepain"), resultSet.getString("leftkneepain"), resultSet.getString("rightanklepain"),resultSet.getString("leftanklepain"), resultSet.getString("rightfootpain"), resultSet.getString("leftfootpain"), resultSet.getString("diagnosis1"), resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"), resultSet.getString("e1e2"), resultSet.getString("offwork1"),resultSet.getString("reeval1"),resultSet.getString("improved1"),resultSet.getString("worsened1"),resultSet.getString("fixation1"),resultSet.getString("notimproved1"), resultSet.getString("scsm1"), resultSet.getString("improved2"),resultSet.getString("worsened2"),resultSet.getString("fixation2"),resultSet.getString("notimproved2"),resultSet.getString("scsm2"), resultSet.getString("improved3"), resultSet.getString("worsened3"),resultSet.getString("fixation3"),resultSet.getString("notimproved3"),resultSet.getString("scsm3"),resultSet.getString("improved4"),resultSet.getString("worsened4"), resultSet.getString("fixation4"), resultSet.getString("notimproved4"),resultSet.getString("scsm4"),resultSet.getString("improved5"),resultSet.getString("worsened5"),resultSet.getString("fixation5"),resultSet.getString("notimproved5"),resultSet.getString("scsm5"), resultSet.getString("improved6"),resultSet.getString("worsened6"),resultSet.getString("fixation6"),resultSet.getString("notimproved6"),resultSet.getString("scsm6"),resultSet.getString("improved7"), resultSet.getString("worsened7"),resultSet.getString("fixation7"), resultSet.getString("notimproved7"),resultSet.getString("scsm7"),resultSet.getString("improved8"),resultSet.getString("worsened8"), resultSet.getString("fixation8"),resultSet.getString("notimproved8"), resultSet.getString("scsm8"), resultSet.getString("sign")));


    		soapnotes.add( new SoapNotes(resultSet.getString("soapid"),resultSet.getString("pname"),resultSet.getString("headache"), resultSet.getString("neckpain"),resultSet.getString("rightshoulderpain"),resultSet.getString("leftshoulderpain"),resultSet.getString("chestpain"),resultSet.getString("rightarmpain"),resultSet.getString("leftarmpain"),resultSet.getString("rightelbowpain"),resultSet.getString("leftelbowpain"),resultSet.getString("rightwristpain"), resultSet.getString("leftwristpain"), resultSet.getString("righthandpain"), resultSet.getString("lefthandpain"), resultSet.getString("mbp"), resultSet.getString("rightribpain"), resultSet.getString("leftribpain"), resultSet.getString("lbp"), resultSet.getString("rightsipain"), resultSet.getString("leftsipain"), resultSet.getString("righthippain"),resultSet.getString("lefthippain"), resultSet.getString("rightgluteulpain"), resultSet.getString("leftgluteulpain"), resultSet.getString("rightlegpain"), resultSet.getString("leftlegpain"), resultSet.getString("rightkneepain"), resultSet.getString("leftkneepain"), resultSet.getString("rightanklepain"),resultSet.getString("leftanklepain"), resultSet.getString("rightfootpain"), resultSet.getString("leftfootpain"), resultSet.getString("diagnosis1"), resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"), resultSet.getString("e1e2"), resultSet.getString("offwork1"),resultSet.getString("reeval1"),resultSet.getString("improved1"),resultSet.getString("worsened1"),resultSet.getString("fixation1"),resultSet.getString("notimproved1"), resultSet.getString("scsm1"), resultSet.getString("improved2"),resultSet.getString("worsened2"),resultSet.getString("fixation2"),resultSet.getString("notimproved2"),resultSet.getString("scsm2"), resultSet.getString("improved3"), resultSet.getString("worsened3"),resultSet.getString("fixation3"),resultSet.getString("notimproved3"),resultSet.getString("scsm3"),resultSet.getString("improved4"),resultSet.getString("worsened4"), resultSet.getString("fixation4"), resultSet.getString("notimproved4"),resultSet.getString("scsm4"),resultSet.getString("improved5"),resultSet.getString("worsened5"),resultSet.getString("fixation5"),resultSet.getString("notimproved5"),resultSet.getString("scsm5"), resultSet.getString("improved6"),resultSet.getString("worsened6"),resultSet.getString("fixation6"),resultSet.getString("notimproved6"),resultSet.getString("scsm6"),resultSet.getString("improved7"), resultSet.getString("worsened7"),resultSet.getString("fixation7"), resultSet.getString("notimproved7"),resultSet.getString("scsm7"),resultSet.getString("improved8"),resultSet.getString("worsened8"), resultSet.getString("fixation8"),resultSet.getString("notimproved8"), resultSet.getString("scsm8"), resultSet.getString("sign")));

			


			


			}
    }catch(Exception e){
    	System.out.println(e.toString());
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return soapnotes;
	

    }
public int updatesoapnotes(SoapNotes soapnotes,String soapid,String admin)
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
    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	 Date date = new Date();
    	 //System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_soapnotes SET pname='"+soapnotes.getPname()+"',headache='"+soapnotes.getHeadache()+"',neckpain='"+soapnotes.getNeckpain()+"',rightshoulderpain='"+soapnotes.getRightshoulderpain()+"',leftshoulderpain='"+soapnotes.getLeftshoulderpain()+"',chestpain='"+soapnotes.getChestpain()+"',rightarmpain='"+soapnotes.getRightarmpain()+"',rightelbowpain='"+soapnotes.getRightelbowpain()+"',leftelbowpain='"+soapnotes.getLeftelbowpain()+"',rightwristpain='"+soapnotes.getRightwristpain()+"',leftwristpain='"+soapnotes.getLeftwristpain()+"',righthandpain='"+soapnotes.getRighthandpain()+"',lefthandpain='"+soapnotes.getLefthandpain()+"',mbp='"+soapnotes.getMbp()+"',rightribpain='"+soapnotes.getRightribpain()+"',leftribpain='"+soapnotes.getLeftribpain()+"',lbp='"+soapnotes.getLbp()+"',rightsipain='"+soapnotes.getRightsipain()+"',leftsipain='"+soapnotes.getLeftsipain()+"',righthippain='"+soapnotes.getRighthippain()+"',lefthippain='"+soapnotes.getLefthippain()+"',rightgluteulpain='"+soapnotes.getRightgluteulpain()+"',leftgluteulpain='"+soapnotes.getLeftgluteulpain()+"',rightlegpain='"+soapnotes.getRightlegpain()+"',leftlegpain='"+soapnotes.getLeftlegpain()+"',rightkneepain='"+soapnotes.getRightkneepain()+"',leftkneepain='"+soapnotes.getLeftkneepain()+"',rightanklepain='"+soapnotes.getRightanklepain()+"',leftanklepain='"+soapnotes.getLeftanklepain()+"',rightfootpain='"+soapnotes.getRightfootpain()+"',leftfootpain='"+soapnotes.getLeftfootpain()+"',diagnosis1='"+soapnotes.getDiagnosis1()+"',diagnosis2='"+soapnotes.getDiagnosis2()+"',diagnosis3='"+soapnotes.getDiagnosis3()+"',diagnosis4='"+soapnotes.getDiagnosis4()+"',e1e2='"+soapnotes.getE1e2()+"',offwork1='"+soapnotes.getOffwork1()+"',reeval1='"+soapnotes.getReeval1()+"',improved1='"+soapnotes.getImproved1()+"',worsened1='"+soapnotes.getWorsened1()+"',fixation1='"+soapnotes.getFixation1()+"',notimproved1='"+soapnotes.getNotimproved1()+"',scsm1='"+soapnotes.getScsm1()+"',improved2='"+soapnotes.getImproved2()+"',worsened2='"+soapnotes.getWorsened2()+"',fixation2='"+soapnotes.getFixation2()+"',notimproved2='"+soapnotes.getNotimproved2()+"',scsm2='"+soapnotes.getScsm2()+"',improved3='"+soapnotes.getImproved3()+"',worsened3='"+soapnotes.getWorsened3()+"',fixation3='"+soapnotes.getFixation3()+"',notimproved3='"+soapnotes.getNotimproved3()+"',fixation3='"+soapnotes.getFixation3()+"',notimproved3='"+soapnotes.getNotimproved3()+"',scsm3='"+soapnotes.getScsm3()+"',improved4='"+soapnotes.getImproved4()+"',worsened4='"+soapnotes.getWorsened4()+"',fixation4='"+soapnotes.getFixation4()+"',notimproved4='"+soapnotes.getNotimproved4()+"',scsm4='"+soapnotes.getScsm4()+"',improved5='"+soapnotes.getImproved5()+"',worsened5='"+soapnotes.getWorsened5()+"',fixation5='"+soapnotes.getFixation5()+"',notimproved5='"+soapnotes.getNotimproved5()+"',scsm5='"+soapnotes.getScsm5()+"',improved6='"+soapnotes.getImproved6()+"',worsened6='"+soapnotes.getWorsened6()+"',fixation6='"+soapnotes.getFixation6()+"',notimproved6='"+soapnotes.getNotimproved6()+"',scsm6='"+soapnotes.getScsm6()+"',improved7='"+soapnotes.getImproved7()+"',worsened7='"+soapnotes.getWorsened7()+"',fixation7='"+soapnotes.getFixation7()+"',notimproved7='"+soapnotes.getNotimproved7()+"',scsm7='"+soapnotes.getScsm7()+"',improved8='"+soapnotes.getImproved8()+"',worened8='"+soapnotes.getWorsened8()+"',fixation8='"+soapnotes.getFixation8()+"',notimproved8='"+soapnotes.getNotimproved8()+"',scsm8='"+soapnotes.getScsm8()+"', WHERE soapid='"+soapid+"';";
    			
    			String Desc="Update Soapnotes "+soapnotes.getPname();
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