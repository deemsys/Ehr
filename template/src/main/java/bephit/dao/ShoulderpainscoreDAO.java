package bephit.dao;

import java.security.Principal;
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

import bephit.model.Hamiltonchiropractic;
import bephit.model.RadiologicReport;
import bephit.model.Shoulderpainscore;
import bephit.model.screeningAuthz;
 



public class ShoulderpainscoreDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setShoulderpain(Shoulderpainscore shoulderpainscore,String username)
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
	         String cmd="INSERT INTO `tbl_shoulderpainscore`(symptom,username,`pname`,`number`,`date`,`painatrest`,`paininmotion`,`nightlypain`,`sleepingproblem`,`incapability`,`degreeofradiation`,`painscale`,`date1`,`total`,`f`,`name123`,`age`,`headache`,`myheadache`,`handihapped`,`restricted`,`understand`,`recreational`,`angry`,`control`,`socialize`,`family`,`insane`,`outlook`,`afraid`,`desperate`,`penalties`,`relationship`,`avoid`,`goals`,`clear`,`tension`,`gatherings`,`irritable`,`travelling`,`confused`,`frustrated`,`difficult`,`attention`)VALUES ('"+shoulderpainscore.getSymptom()+"','"+username+"','"+shoulderpainscore.getPname()+"','"+shoulderpainscore.getNumber()+"','"+shoulderpainscore.getDate()+"','"+shoulderpainscore.getPainatrest()+"','"+shoulderpainscore.getPaininmotion()+"','"+shoulderpainscore.getNightlypain()+"','"+shoulderpainscore.getSleepingproblem()+"','"+shoulderpainscore.getIncapability()+"','"+shoulderpainscore.getDegreeofradiation()+"','"+shoulderpainscore.getPainscale()+"','"+shoulderpainscore.getDate1()+"','"+shoulderpainscore.getTotal()+"','"+shoulderpainscore.getF()+"','"+shoulderpainscore.getName123()+"','"+shoulderpainscore.getAge()+"','"+shoulderpainscore.getHeadache()+"','"+shoulderpainscore.getMyheadache()+"','"+shoulderpainscore.getHandihapped()+"','"+shoulderpainscore.getRestricted()+"','"+shoulderpainscore.getUnderstand()+"','"+shoulderpainscore.getRecreational()+"','"+shoulderpainscore.getAngry()+"','"+shoulderpainscore.getControl()+"','"+shoulderpainscore.getSocialize()+"','"+shoulderpainscore.getFamily()+"','"+shoulderpainscore.getInsane()+"','"+shoulderpainscore.getOutlook()+"','"+shoulderpainscore.getAfraid()+"','"+shoulderpainscore.getDesperate()+"','"+shoulderpainscore.getPenalties()+"','"+shoulderpainscore.getRelationship()+"','"+shoulderpainscore.getAvoid()+"','"+shoulderpainscore.getGoals()+"','"+shoulderpainscore.getClear()+"','"+shoulderpainscore.getTension()+"','"+shoulderpainscore.getGatherings()+"','"+shoulderpainscore.getIrritable()+"','"+shoulderpainscore.getTravelling()+"','"+shoulderpainscore.getConfused()+"','"+shoulderpainscore.getFrustrated()+"','"+shoulderpainscore.getDifficult()+"','"+shoulderpainscore.getAttention()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	    	/* String cmd_getparticipantname="select fname from participants_table where participants_id='"+participant_id+"'";
	    	 resultSet=statement.executeQuery(cmd_getparticipantname);
	    	 String Desc="added participants"+Autoaccident.getClaimnumber();
	    	 if(resultSet.next())h
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

	
public List<Shoulderpainscore> getShoulderpainscore(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Shoulderpainscore> shoulderpainscore = new ArrayList<Shoulderpainscore>();
    try{
		resultSet = statement.executeQuery("select * from tbl_shoulderpainscore");
		while(resultSet.next()){
			shoulderpainscore.add( new Shoulderpainscore(resultSet.getString("shoulderpainno"), resultSet.getString("pname"), resultSet.getString("number"), resultSet.getString("date"), resultSet.getString("painatrest"), resultSet.getString("paininmotion"), resultSet.getString("nightlypain"),resultSet.getString("sleepingproblem"),resultSet.getString("incapability"), resultSet.getString("degreeofradiation"), resultSet.getString("painscale"), resultSet.getString("date1"), resultSet.getString("total"),resultSet.getString("f"), resultSet.getString("name123"), resultSet.getString("age"), resultSet.getString("headache"), resultSet.getString("myheadache"), resultSet.getString("handihapped"), resultSet.getString("restricted"), resultSet.getString("understand"), resultSet.getString("recreational"), resultSet.getString("angry"), resultSet.getString("control"), resultSet.getString("socialize"), resultSet.getString("family"), resultSet.getString("insane"), resultSet.getString("outlook"), resultSet.getString("afraid"), resultSet.getString("desperate"), resultSet.getString("penalties"), resultSet.getString("relationship"), resultSet.getString("avoid"), resultSet.getString("goals"), resultSet.getString("clear"), resultSet.getString("tension"), resultSet.getString("gatherings"), resultSet.getString("irritable"), resultSet.getString("travelling"),resultSet.getString("confused"), resultSet.getString("frustrated"), resultSet.getString("difficult"), resultSet.getString("attention")));
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
    return shoulderpainscore;
	
}
public List<Shoulderpainscore> getusernameShoulder(String symptom,String username){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Shoulderpainscore> shoulderpainscore = new ArrayList<Shoulderpainscore>();
    try{
		resultSet = statement.executeQuery("select * from tbl_shoulderpainscore where symptom='"+symptom+"' and username='"+username+"'");
		while(resultSet.next()){
			
			shoulderpainscore.add( new Shoulderpainscore(resultSet.getString("shoulderpainno"), resultSet.getString("pname"), resultSet.getString("number"), resultSet.getString("date"), resultSet.getString("painatrest"), resultSet.getString("paininmotion"), resultSet.getString("nightlypain"),resultSet.getString("sleepingproblem"),resultSet.getString("incapability"), resultSet.getString("degreeofradiation"), resultSet.getString("painscale"), resultSet.getString("date1"), resultSet.getString("total"),resultSet.getString("f"), resultSet.getString("name123"), resultSet.getString("age"), resultSet.getString("headache"), resultSet.getString("myheadache"), resultSet.getString("handihapped"), resultSet.getString("restricted"), resultSet.getString("understand"), resultSet.getString("recreational"), resultSet.getString("angry"), resultSet.getString("control"), resultSet.getString("socialize"), resultSet.getString("family"), resultSet.getString("insane"), resultSet.getString("outlook"), resultSet.getString("afraid"), resultSet.getString("desperate"), resultSet.getString("penalties"), resultSet.getString("relationship"), resultSet.getString("avoid"), resultSet.getString("goals"), resultSet.getString("clear"), resultSet.getString("tension"), resultSet.getString("gatherings"), resultSet.getString("irritable"), resultSet.getString("travelling"),resultSet.getString("confused"), resultSet.getString("frustrated"), resultSet.getString("difficult"), resultSet.getString("attention")));		    	
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
    return shoulderpainscore;
	
}
public List<Shoulderpainscore> getShoulder(String shoulderpainno){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Shoulderpainscore> shoulderpainscore = new ArrayList<Shoulderpainscore>();
    try{
		resultSet = statement.executeQuery("select * from tbl_shoulderpainscore where shoulderpainno='"+shoulderpainno+"'");
		while(resultSet.next()){
			
			shoulderpainscore.add( new Shoulderpainscore(resultSet.getString("shoulderpainno"), resultSet.getString("pname"), resultSet.getString("number"), resultSet.getString("date"), resultSet.getString("painatrest"), resultSet.getString("paininmotion"), resultSet.getString("nightlypain"),resultSet.getString("sleepingproblem"),resultSet.getString("incapability"), resultSet.getString("degreeofradiation"), resultSet.getString("painscale"), resultSet.getString("date1"), resultSet.getString("total"),resultSet.getString("f"), resultSet.getString("name123"), resultSet.getString("age"), resultSet.getString("headache"), resultSet.getString("myheadache"), resultSet.getString("handihapped"), resultSet.getString("restricted"), resultSet.getString("understand"), resultSet.getString("recreational"), resultSet.getString("angry"), resultSet.getString("control"), resultSet.getString("socialize"), resultSet.getString("family"), resultSet.getString("insane"), resultSet.getString("outlook"), resultSet.getString("afraid"), resultSet.getString("desperate"), resultSet.getString("penalties"), resultSet.getString("relationship"), resultSet.getString("avoid"), resultSet.getString("goals"), resultSet.getString("clear"), resultSet.getString("tension"), resultSet.getString("gatherings"), resultSet.getString("irritable"), resultSet.getString("travelling"),resultSet.getString("confused"), resultSet.getString("frustrated"), resultSet.getString("difficult"), resultSet.getString("attention")));		    	
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
    return shoulderpainscore;
	
}
public int updateshoulderpainscore(Shoulderpainscore shoulderpainscore,String shoulderpainno,String admin)
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
    	String cmd="UPDATE tbl_shoulderpainscore SET pname='"+shoulderpainscore.getPname()+"',number='"+shoulderpainscore.getNumber()+"',date='"+shoulderpainscore.getDate()+"',painatrest='"+shoulderpainscore.getPainatrest()+"',paininmotion='"+shoulderpainscore.getPaininmotion()+"',nightlypain='"+shoulderpainscore.getNightlypain()+"',sleepingproblem='"+shoulderpainscore.getSleepingproblem()+"',incapability='"+shoulderpainscore.getIncapability()+"',degreeofradiation='"+shoulderpainscore.getDegreeofradiation()+"',painscale='"+shoulderpainscore.getPainscale()+"',date1='"+shoulderpainscore.getDate1()+"',total='"+shoulderpainscore.getTotal()+"',f='"+shoulderpainscore.getF()+"',name123='"+shoulderpainscore.getName123()+"',age='"+shoulderpainscore.getAge()+"',headache='"+shoulderpainscore.getHeadache()+"',myheadache='"+shoulderpainscore.getMyheadache()+"',handihapped='"+shoulderpainscore.getHandihapped()+"',restricted='"+shoulderpainscore.getRestricted()+"',understand='"+shoulderpainscore.getUnderstand()+"',recreational='"+shoulderpainscore.getRecreational()+"',angry='"+shoulderpainscore.getAngry()+"',control='"+shoulderpainscore.getControl()+"',socialize='"+shoulderpainscore.getSocialize()+"',family='"+shoulderpainscore.getFamily()+"',insane='"+shoulderpainscore.getInsane()+"',outlook='"+shoulderpainscore.getOutlook()+"',afraid='"+shoulderpainscore.getAfraid()+"',desperate='"+shoulderpainscore.getDesperate()+"',penalties='"+shoulderpainscore.getPenalties()+"',relationship='"+shoulderpainscore.getRelationship()+"',avoid='"+shoulderpainscore.getAvoid()+"',goals='"+shoulderpainscore.getGoals()+"',clear='"+shoulderpainscore.getClear()+"',tension='"+shoulderpainscore.getTension()+"',gatherings='"+shoulderpainscore.getGatherings()+"',irritable='"+shoulderpainscore.getIrritable()+"',travelling='"+shoulderpainscore.getTravelling()+"',confused='"+shoulderpainscore.getConfused()+"',frustrated='"+shoulderpainscore.getFrustrated()+"',difficult='"+shoulderpainscore.getDifficult()+"',attention='"+shoulderpainscore.getAttention()+"' WHERE shoulderpainno='"+shoulderpainno+"';";
    			
    			/*String Desc="Update hamiltonchiropractic "+hamiltonchiropractic.getPname();*/
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

public int deleteshoulderpainscore(String shoulderpainno){
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
    	 String cmd_getpatient_pname="select * from tbl_shoulderpainscore where shoulderpainno='"+shoulderpainno+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_shoulderpainscore where shoulderpainno='"+shoulderpainno+"'");
			
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
public List<Shoulderpainscore> getlimitedshoulderpainscore(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Shoulderpainscore> shoulderpainscore = new ArrayList<Shoulderpainscore>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_shoulderpainscore order by pname asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			shoulderpainscore.add( new Shoulderpainscore(resultSet.getString("shoulderpainno"), resultSet.getString("pname"), resultSet.getString("number"), resultSet.getString("date"), resultSet.getString("painatrest"), resultSet.getString("paininmotion"), resultSet.getString("nightlypain"),resultSet.getString("sleepingproblem"),resultSet.getString("incapability"), resultSet.getString("degreeofradiation"), resultSet.getString("painscale"), resultSet.getString("date1"), resultSet.getString("total"),resultSet.getString("f"), resultSet.getString("name123"), resultSet.getString("age"), resultSet.getString("headache"), resultSet.getString("myheadache"), resultSet.getString("handihapped"), resultSet.getString("restricted"), resultSet.getString("understand"), resultSet.getString("recreational"), resultSet.getString("angry"), resultSet.getString("control"), resultSet.getString("socialize"), resultSet.getString("family"), resultSet.getString("insane"), resultSet.getString("outlook"), resultSet.getString("afraid"), resultSet.getString("desperate"), resultSet.getString("penalties"), resultSet.getString("relationship"), resultSet.getString("avoid"), resultSet.getString("goals"), resultSet.getString("clear"), resultSet.getString("tension"), resultSet.getString("gatherings"), resultSet.getString("irritable"), resultSet.getString("travelling"),resultSet.getString("confused"), resultSet.getString("frustrated"), resultSet.getString("difficult"), resultSet.getString("attention")));				
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
	return shoulderpainscore;

}
public int getnoofshoulderpainscore() {
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
	List<Shoulderpainscore> shoulderpainscore = new ArrayList<Shoulderpainscore>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_shoulderpainscore";
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

