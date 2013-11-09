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


import bephit.model.Hamiltonchiropractic;
 



public class HamiltonchiropracticDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setHamiltonchiropractic(Hamiltonchiropractic hamiltonchiropractic)
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
	    	 String cmd="INSERT INTO `tbl_hamiltonchiropractic`(`hacheck`,`ha`,`neckcheck`,`neck`,`mbcheck`,`mb`,`ribscheck`,`ribs`,`shouldercheck`,`shoulder`,`elbowcheck`,`elbow`,`handcheck`,`hand`,`wristcheck`,`wrist`,`lbpcheck`,`lbp`,`hipcheck`,`hip`,`legcheck`,`leg`,'kneecheck`,`knee`,`footcheck`,`foot`,anklecheck`,`ankle`,`begin`,`hours`,`days`,`date`,`reason`,`chronic`,`bestfeel`,`othere`,`solution`,`otherit`,`worsefeel`,`otherfeel`,`paindes`,`otherpain`,`consinter`,`pain`,`otherradiates`,`description`,`worse`,`otherdn`,`conditionw`,`work`,`day`,`condition`,`othercondition`,`assessment`,`treatmentplan`,`shortterm`,`longterm`,`jacksons`,`foramin_comp`,`shoulder_depr`,`georges`,`bakody_sign`,`distraction_test`,`valsalva`,`spinal_percuss`,`gripdynamomright`,`gripdynamomleft`,`adsons`,`rustsign`,`spinal_percusst`,`adams_test`,`soto_hall`,`compression_test`,`antalgia`,`spinal_percussl`,`valsalval`,`minors_sign`,`braggards_test`,`slr`,`wlr`,`hoovers`,`dbl_leg_raise`,`long_leg_test`,`anvil_test`,`thomas`,`milgrams_test`,`obers`,`illiaccomp`,`yeomans`,`allis_sign`,`dugas`,`supraspinatus`,`codmans`,`speeds_test`,`yergasons`,`tinelse`,`lingaminstab`,`golfers_elbow`,`tennis_elbow`,`tinels`,`phalens`,`finkelsteins_test`,`bracelet`,`allens`,`valgus_varus`,`pat_ball`,`drawer`,`val_varus`,`apleys`,`drawera`,`thompsons`,`tinelsa`,`strunskys`,`homans`,`claudication_test`) VALUES ('"+hamiltonchiropractic.getHacheck()+"','"+hamiltonchiropractic.getHa()+"','"+hamiltonchiropractic.getNeckcheck()+"','"+hamiltonchiropractic.getNeck()+"','"+hamiltonchiropractic.getMbcheck()+"','"+hamiltonchiropractic.getMb()+"','"+hamiltonchiropractic.getRibscheck()+"','"+hamiltonchiropractic.getRibs()+"','"+hamiltonchiropractic.getShouldercheck()+"','"+hamiltonchiropractic.getShoulder()+"','"+hamiltonchiropractic.getElbowcheck()+"','"+hamiltonchiropractic.getElbow()+"','"+hamiltonchiropractic.getHand()+"','"+hamiltonchiropractic.getWrist()+"','"+hamiltonchiropractic.getLbp()+"','"+hamiltonchiropractic.getHip()+"','"+hamiltonchiropractic.getLeg()+"','"+hamiltonchiropractic.getKnee()+"','"+hamiltonchiropractic.getFoot()+"','"+hamiltonchiropractic.getAnkle()+"','"+hamiltonchiropractic.getSuddenly()+"','"+hamiltonchiropractic.getGradually()+"','"+hamiltonchiropractic.getHours()+"','"+hamiltonchiropractic.getDays()+"','"+hamiltonchiropractic.getDate()+"','"+hamiltonchiropractic.getReason()+"','"+hamiltonchiropractic.getAcute()+"','"+hamiltonchiropractic.getSubacute()+"','"+hamiltonchiropractic.getChronic()+"','"+hamiltonchiropractic.getLyingdown()+"','"+hamiltonchiropractic.getSitting()+"','"+hamiltonchiropractic.getStanding()+"','"+hamiltonchiropractic.getBending()+"','"+hamiltonchiropractic.getRest()+"','"+hamiltonchiropractic.getOtherb()+"','"+hamiltonchiropractic.getOthere()+"','"+hamiltonchiropractic.getIce()+"','"+hamiltonchiropractic.getHeat()+"','"+hamiltonchiropractic.getMassage()+"','"+hamiltonchiropractic.getAspirin()+"','"+hamiltonchiropractic.getOtherdone()+"','"+hamiltonchiropractic.getOtherit()+"','"+hamiltonchiropractic.getBendingworse()+"','"+hamiltonchiropractic.getTwisting()+"','"+hamiltonchiropractic.getLifting()+"','"+hamiltonchiropractic.getWalking()+"','"+hamiltonchiropractic.getActivity()+"','"+hamiltonchiropractic.getOtherworse()+"','"+hamiltonchiropractic.getOtherfeel()+"','"+hamiltonchiropractic.getSharp()+"','"+hamiltonchiropractic.getSevere()+"','"+hamiltonchiropractic.getDull()+"','"+hamiltonchiropractic.getBurning()+"','"+hamiltonchiropractic.getNagging()+"','"+hamiltonchiropractic.getThrobbing()+"','"+hamiltonchiropractic.getNumb()+"','"+hamiltonchiropractic.getTingling()+"','"+hamiltonchiropractic.getStiff()+"','"+hamiltonchiropractic.getStabbing()+"','"+hamiltonchiropractic.getCramping()+"','"+hamiltonchiropractic.getOtherdescribe()+"','"+hamiltonchiropractic.getOtherpain()+"','"+hamiltonchiropractic.getConstant()+"','"+hamiltonchiropractic.getIntermittent()+"','"+hamiltonchiropractic.getLocal()+"','"+hamiltonchiropractic.getDiffuse()+"','"+hamiltonchiropractic.getRadiates()+"','"+hamiltonchiropractic.getOtherradiates()+"','"+hamiltonchiropractic.getMild()+"','"+hamiltonchiropractic.getModerate()+"','"+hamiltonchiropractic.getSeverepain()+"','"+hamiltonchiropractic.getCrippling()+"','"+hamiltonchiropractic.getAm()+"','"+hamiltonchiropractic.getPm()+"','"+hamiltonchiropractic.getOthertime()+"','"+hamiltonchiropractic.getOtherdn()+"','"+hamiltonchiropractic.getBetter()+"','"+hamiltonchiropractic.getSame()+"','"+hamiltonchiropractic.getWorse()+"','"+hamiltonchiropractic.getYes()+"','"+hamiltonchiropractic.getNo()+"','"+hamiltonchiropractic.getDay()+"','"+hamiltonchiropractic.getWork()+"','"+hamiltonchiropractic.getSleep()+"','"+hamiltonchiropractic.getOtherdaily()+"','"+hamiltonchiropractic.getOthercondition()+"','"+hamiltonchiropractic.getSameass()+"','"+hamiltonchiropractic.getImproved()+"','"+hamiltonchiropractic.getWorseass()+"','"+hamiltonchiropractic.getPlateau()+"','"+hamiltonchiropractic.getPreinjury()+"','"+hamiltonchiropractic.getSlight()+"','"+hamiltonchiropractic.getModeratly()+"','"+hamiltonchiropractic.getGreat()+"','"+hamiltonchiropractic.getChiropractic()+"','"+hamiltonchiropractic.getEms()+"','"+hamiltonchiropractic.getIceplan()+"','"+hamiltonchiropractic.getHeatplan()+"','"+hamiltonchiropractic.getNimmo()+"','"+hamiltonchiropractic.getUltrasound()+"','"+hamiltonchiropractic.getManualtraction()+"','"+hamiltonchiropractic.getMassageplan()+"','"+hamiltonchiropractic.getNeuromuscular()+"','"+hamiltonchiropractic.getStretching()+"','"+hamiltonchiropractic.getStrengthening()+"','"+hamiltonchiropractic.getRemobilization()+"','"+hamiltonchiropractic.getRehab()+"','"+hamiltonchiropractic.getModificat()+"','"+hamiltonchiropractic.getRelease()+"','"+hamiltonchiropractic.getRefer()+"','"+hamiltonchiropractic.getDecreasepain()+"','"+hamiltonchiropractic.getDecreasespam()+"','"+hamiltonchiropractic.getIncreaserom()+"','"+hamiltonchiropractic.getImproveadl()+"','"+hamiltonchiropractic.getImprovesubluxations()+"','"+hamiltonchiropractic.getFullactivity()+"','"+hamiltonchiropractic.getReturntowork()+"','"+hamiltonchiropractic.getRenewsports()+"','"+hamiltonchiropractic.getJacksons()+"','"+hamiltonchiropractic.getForamin_comp()+"','"+hamiltonchiropractic.getShoulder_depr()+"','"+hamiltonchiropractic.getGeorges()+"','"+hamiltonchiropractic.getBakody_sign()+"','"+hamiltonchiropractic.getDistraction_test()+"','"+hamiltonchiropractic.getValsalva()+"','"+hamiltonchiropractic.getSpinal_percuss()+"','"+hamiltonchiropractic.getGripdynamomright()+"','"+hamiltonchiropractic.getGripdynamomleft()+"','"+hamiltonchiropractic.getAdsons()+"','"+hamiltonchiropractic.getRustsign()+"','"+hamiltonchiropractic.getSpinal_percusst()+"','"+hamiltonchiropractic.getAdams_test()+"','"+hamiltonchiropractic.getSoto_hall()+"','"+hamiltonchiropractic.getCompression_test()+"','"+hamiltonchiropractic.getAntalgia()+"','"+hamiltonchiropractic.getSpinal_percussl()+"','"+hamiltonchiropractic.getValsalval()+"','"+hamiltonchiropractic.getMinors_sign()+"','"+hamiltonchiropractic.getBraggards_test()+"','"+hamiltonchiropractic.getSlr()+"','"+hamiltonchiropractic.getWlr()+"','"+hamiltonchiropractic.getHoovers()+"','"+hamiltonchiropractic.getDbl_leg_raise()+"','"+hamiltonchiropractic.getLong_leg_test()+"','"+hamiltonchiropractic.getAnvil_test()+"','"+hamiltonchiropractic.getThomas()+"','"+hamiltonchiropractic.getMilgrams_test()+"','"+hamiltonchiropractic.getObers()+"','"+hamiltonchiropractic.getIlliaccomp()+"','"+hamiltonchiropractic.getYeomans()+"','"+hamiltonchiropractic.getAllis_sign()+"','"+hamiltonchiropractic.getDugas()+"','"+hamiltonchiropractic.getSupraspinatus()+"','"+hamiltonchiropractic.getCodmans()+"','"+hamiltonchiropractic.getSpeeds_test()+"','"+hamiltonchiropractic.getYargasons()+"','"+hamiltonchiropractic.getTinelse()+"','"+hamiltonchiropractic.getLingaminstab()+"','"+hamiltonchiropractic.getGolfers_elbow()+"','"+hamiltonchiropractic.getTennis_elbow()+"','"+hamiltonchiropractic.getTinels()+"','"+hamiltonchiropractic.getPhalens()+"','"+hamiltonchiropractic.getFinkelsteins_test()+"','"+hamiltonchiropractic.getBracelet()+"','"+hamiltonchiropractic.getAllens()+"','"+hamiltonchiropractic.getValgus_varus()+"','"+hamiltonchiropractic.getPat_ball()+"','"+hamiltonchiropractic.getDrawer()+"','"+hamiltonchiropractic.getVal_varus()+"','"+hamiltonchiropractic.getApleys()+"','"+hamiltonchiropractic.getDrawera()+"','"+hamiltonchiropractic.getThompsons()+"','"+hamiltonchiropractic.getTinelsa()+"','"+hamiltonchiropractic.getStrunskys()+"','"+hamiltonchiropractic.getHomans()+"','"+hamiltonchiropractic.getClaudication_test()+"')"; 
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

	
public List<Hamiltonchiropractic> getHamiltonchiropractic(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Hamiltonchiropractic> Hamiltonchiropractic = new ArrayList<Hamiltonchiropractic>();
    try{
		resultSet = statement.executeQuery("select * from tbl_hamiltonchiropractic");
		while(resultSet.next()){
			Hamiltonchiropractic.add(new Hamiltonchiropractic(resultSet.getString("ha"),
		    		resultSet.getString("neck"),
		    		resultSet.getString("mb"),
		    		resultSet.getString("ribs"),
		    		resultSet.getString("shoulder"),
		    		resultSet.getString("elbow"),
		    		resultSet.getString("hand"),
		    		resultSet.getString("wrist"),
		    		resultSet.getString("lbp"),
		    		resultSet.getString("hip"),
		    		resultSet.getString("leg"),
		    		resultSet.getString("knee"),
		    		resultSet.getString("foot"),
		    		resultSet.getString("ankle"),
		    		resultSet.getString("suddenly"),
		    		resultSet.getString("gradually"),
		    		resultSet.getString("hours"),
		    		resultSet.getString("days"),
		    		resultSet.getString("date"),
		    		resultSet.getString("reason"),
		    		resultSet.getString("acute"),
		    		resultSet.getString("subacute"),
		    		resultSet.getString("chronic"),
		    		resultSet.getString("lyingdown"),
		    		resultSet.getString("sitting"),
		    		resultSet.getString("standing"),
		    		resultSet.getString("bending"),
		    		resultSet.getString("rest"),
		    		resultSet.getString("otherb"),
		    		resultSet.getString("othere"),
		    		resultSet.getString("ice"),
		    		resultSet.getString("heat"),
		    		resultSet.getString("massage"),
		    		resultSet.getString("aspirin"),
		    		resultSet.getString("otherdone"),
		    		resultSet.getString("otherit"),
		    		resultSet.getString("bendinworse"),
		    		resultSet.getString("twisting"),
		    		resultSet.getString("lifting"),
		    		resultSet.getString("walking"),
		    		resultSet.getString("activity"),
		    		resultSet.getString("otherworse"),
		    		resultSet.getString("otherfeel"),
		    		resultSet.getString("sharp"),
		    		resultSet.getString("severe"),
		    		resultSet.getString("dull"),
		    		resultSet.getString("burning"),
		    		resultSet.getString("nagging"),
		    		resultSet.getString("throbbing"),
		    		resultSet.getString("numb"),
		    		resultSet.getString("tingling"),
		    		resultSet.getString("stiff"),
		    		resultSet.getString("stabbing"),
		    		resultSet.getString("cramping"),
		    		resultSet.getString("otherdescribe"),
		    		resultSet.getString("otherpain"),
		    		resultSet.getString("constant"),
		    		resultSet.getString("intermittent"),
		    		resultSet.getString("local"),
		    		resultSet.getString("diffuse"),
		    		resultSet.getString("radiates"),
		    		resultSet.getString("otherradiates"),
		    		resultSet.getString("mild"),
		    		resultSet.getString("moderate"),
		    		resultSet.getString("severepain"),
		    		resultSet.getString("crippling"),
		    		resultSet.getString("am"),
		    		resultSet.getString("pm"),
		    		resultSet.getString("othertime"),
		    		resultSet.getString("otherdn"),
		    		resultSet.getString("better"),
		    		resultSet.getString("same"),
		    		resultSet.getString("worse"),
		    		resultSet.getString("yes"),
		    		resultSet.getString("no"),
		    		resultSet.getString("day"),
		    		resultSet.getString("work"),
		    		resultSet.getString("sleep"),
		    		resultSet.getString("otherdaily"),
		    		resultSet.getString("othercondition"),
		    		resultSet.getString("sameass"),
		    		resultSet.getString("improved"),
		    		resultSet.getString("worseass"),
		    		resultSet.getString("plateau"),
		    		resultSet.getString("preinjury"),
		    		resultSet.getString("slight"),
		    		resultSet.getString("moderatly"),
		    		resultSet.getString("great"),
		    		resultSet.getString("chiropractic"),
		    		resultSet.getString("ems"),
		    		resultSet.getString("iceplan"),
		    		resultSet.getString("heatplan"),
		    		resultSet.getString("nimmo"),
		    		resultSet.getString("ultrasound"),
		    		resultSet.getString("manualtraction"),
		    		resultSet.getString("massageplan"),
		    		resultSet.getString("neuromuscular"),
		    		resultSet.getString("stretching"),
		    		resultSet.getString("strengthening"),
		    		resultSet.getString("remobilization"),
		    		resultSet.getString("rehab"),
		    		resultSet.getString("modificat"),
		    		resultSet.getString("release"),
		    		resultSet.getString("refer"),
		    		resultSet.getString("decreasepain"),
		    		resultSet.getString("decreasespam"),
		    		resultSet.getString("increaserom"),
		    		resultSet.getString("improveadl"),
		    		resultSet.getString("improvesubluxations"),
		    		resultSet.getString("fullactivity"),
		    		resultSet.getString("returntowork"),
		    		resultSet.getString("renewsports"),
		    		resultSet.getString("jacksons"),
		    		resultSet.getString("foramin_comp"),
		    		resultSet.getString("shoulder_depr"),
		    		resultSet.getString("georges"),
		    		resultSet.getString("bakody_sign"),
		    		resultSet.getString("distraction_test"),
		    		resultSet.getString("valsalva"),
		    		resultSet.getString("spinal_percuss"),
		    		resultSet.getString("gripdynamomright"),
		    		resultSet.getString("gripdynamomleft"),
		    		resultSet.getString("adsons"),
		    		resultSet.getString("rustsign"),
		    		resultSet.getString("spinal_percusst"),
		    		resultSet.getString("adams_test"),
		    		resultSet.getString("soto_hall"),
		    		resultSet.getString("compression_test"),
		    		resultSet.getString("antalgia"),
		    		resultSet.getString("spinal_percussl"),
		    		resultSet.getString("valsalval"),
		    		resultSet.getString("minors_sign"),
		    		resultSet.getString("braggards_test"),
		    		resultSet.getString("slr"),
		    		resultSet.getString("wlr"),
		    		resultSet.getString("hoovers"),
		    		resultSet.getString("dbl_leg_raise"),
		    		resultSet.getString("long_leg_test"),
		    		resultSet.getString("anvil_test"),
		    		resultSet.getString("thomas"),
		    		resultSet.getString("milgrams_test"),
		    		resultSet.getString("obers"),
		    		resultSet.getString("illiaccomp"),
		    		resultSet.getString("yeomans"),
		    		resultSet.getString("allis_sign"),
		    		resultSet.getString("dugas"),
		    		resultSet.getString("supraspinatus"),
		    		resultSet.getString("codmans"),
		    		resultSet.getString("speeds_test"),
		    		resultSet.getString("yergasons"),
		    		resultSet.getString("tinelse"),
		    		resultSet.getString("lingaminstab"),
		    		resultSet.getString("golfers_elbow"),
		    		resultSet.getString("tennis_elbow"),
		    		resultSet.getString("tinelsa"),
		    		resultSet.getString("phalens"),
		    		resultSet.getString("finkelsteins_test"),
		    		resultSet.getString("bracelet"),
		    		resultSet.getString("allens"),
		    		resultSet.getString("valgus_varus"),
		    		resultSet.getString("pat_ball"),
		    		resultSet.getString("drawer"),
		    		resultSet.getString("val_varus"),
		    		resultSet.getString("apleys"),
		    		resultSet.getString("drawera"),
		    		resultSet.getString("thompsons"),
		    		resultSet.getString("tinels"),
		    		resultSet.getString("strunskys"),
		    		resultSet.getString("homans"),
		    		resultSet.getString("claudication_test")));
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
    return Hamiltonchiropractic;
	
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

	

