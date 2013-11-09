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
	    	 String cmd="INSERT INTO `tbl_hamiltonchiropractic`(`hacheck`,`ha`,`neckcheck`,`neck`,`mbcheck`,`mb`,`ribscheck`,`ribs`,`shouldercheck`,`shoulder`,`elbowcheck`,`elbow`,`handcheck`,`hand`,`wristcheck`,`wrist`,`lbpcheck`,`lbp`,`hipcheck`,`hip`,`legcheck`,`leg`,'kneecheck`,`knee`,`footcheck`,`foot`,anklecheck`,`ankle`,`begin`,`hours`,`days`,`date`,`reason`,`chronic`,`bestfeel`,`othere`,`solution`,`otherit`,`worsefeel`,`otherfeel`,`paindes`,`otherpain`,`consinter`,`pain`,`otherradiates`,`description`,`worse`,`otherdn`,`conditionw`,`work`,`day`,`condition`,`othercondition`,`assessment`,`treatmentplan`,`shortterm`,`longterm`,`jacksons`,`foramin_comp`,`shoulder_depr`,`georges`,`odono`,`bakody_sign`,`distraction_test`,`valsalva`,`spinal_percuss`,`gripdynamomright`,`gripdynamomleft`,`adsons`,`rustsign`,`spinal_percusst`,`adams_test`,`sheppal_sign`,`soto_hall`,`compression_test`,`antalgia`,`spinal_percussl`,`valsalval`,`minors_sign`,`braggards_test`,`slr`,`wlr`,`hoovers`,`dbl_leg_raise`,`long_leg_test`,`anvil_test`,`thomas`,`milgrams_test`,`obers`,`illiaccomp`,`yeomans`,`allis_sign`,`dugas`,`supraspinatus`,`codmans`,`speeds_test`,`yergasons`,`tinelse`,`lingaminstab`,`golfers_elbow`,`tennis_elbow`,`tinels`,`phalens`,`finkelsteins_test`,`bracelet`,`allens`,`valgus_varus`,`pat_ball`,`drawer`,`val_varus`,`apleys`,`drawera`,`thompsons`,`tinelsa`,`strunskys`,`homans`,`claudication_test`) VALUES ('"+hamiltonchiropractic.getHacheck()+"','"+hamiltonchiropractic.getHa()+"','"+hamiltonchiropractic.getNeckcheck()+"','"+hamiltonchiropractic.getNeck()+"','"+hamiltonchiropractic.getMbcheck()+"','"+hamiltonchiropractic.getMb()+"','"+hamiltonchiropractic.getRibscheck()+"','"+hamiltonchiropractic.getRibs()+"','"+hamiltonchiropractic.getShouldercheck()+"','"+hamiltonchiropractic.getShoulder()+"','"+hamiltonchiropractic.getElbowcheck()+"','"+hamiltonchiropractic.getElbow()+"','"+hamiltonchiropractic.getHandcheck()+"','"+hamiltonchiropractic.getHand()+"','"+hamiltonchiropractic.getWristcheck()+"','"+hamiltonchiropractic.getWrist()+"','"+hamiltonchiropractic.getLbpcheck()+"','"+hamiltonchiropractic.getLbp()+"','"+hamiltonchiropractic.getHipcheck()+"','"+hamiltonchiropractic.getHip()+"','"+hamiltonchiropractic.getLegcheck()+"','"+hamiltonchiropractic.getLeg()+"','"+hamiltonchiropractic.getKneecheck()+"','"+hamiltonchiropractic.getKnee()+"','"+hamiltonchiropractic.getFootcheck()+"','"+hamiltonchiropractic.getFoot()+"','"+hamiltonchiropractic.getAnklecheck()+"','"+hamiltonchiropractic.getAnkle()+"','"+hamiltonchiropractic.getBegin()+"','"+hamiltonchiropractic.getHours()+"','"+hamiltonchiropractic.getDays()+"','"+hamiltonchiropractic.getDate()+"','"+hamiltonchiropractic.getReason()+"','"+hamiltonchiropractic.getChronic()+"','"+hamiltonchiropractic.getBestfeel()+"','"+hamiltonchiropractic.getOthere()+"','"+hamiltonchiropractic.getSolution()+"','"+hamiltonchiropractic.getOtherit()+"','"+hamiltonchiropractic.getWorsefeel()+"','"+hamiltonchiropractic.getOtherfeel()+"','"+hamiltonchiropractic.getPaindes()+"','"+hamiltonchiropractic.getOtherpain()+"','"+hamiltonchiropractic.getConsinter()+"','"+hamiltonchiropractic.getPain()+"','"+hamiltonchiropractic.getOtherradiates()+"','"+hamiltonchiropractic.getDescription()+"','"+hamiltonchiropractic.getWorse()+"','"+hamiltonchiropractic.getOtherdn()+"','"+hamiltonchiropractic.getConditionw()+"','"+hamiltonchiropractic.getWork()+"','"+hamiltonchiropractic.getDay()+"','"+hamiltonchiropractic.getCondition()+"','"+hamiltonchiropractic.getOthercondition()+"','"+hamiltonchiropractic.getAssessment()+"','"+hamiltonchiropractic.getTreatmentplan()+"','"+hamiltonchiropractic.getShortterm()+"','"+hamiltonchiropractic.getLongterm()+"','"+hamiltonchiropractic.getJacksons()+"',,'"+hamiltonchiropractic.getForamin_comp()+"','"+hamiltonchiropractic.getShoulder_depr()+"','"+hamiltonchiropractic.getGeorges()+"','"+hamiltonchiropractic.getOdono()+"','"+hamiltonchiropractic.getBakody_sign()+"','"+hamiltonchiropractic.getDistraction_test()+"','"+hamiltonchiropractic.getValsalva()+"','"+hamiltonchiropractic.getSpinal_percuss()+"','"+hamiltonchiropractic.getGripdynamomright()+"','"+hamiltonchiropractic.getGripdynamomleft()+"','"+hamiltonchiropractic.getAdsons()+"','"+hamiltonchiropractic.getRustsign()+"','"+hamiltonchiropractic.getSpinal_percusst()+"','"+hamiltonchiropractic.getAdams_test()+"','"+hamiltonchiropractic.getSheppal_sign()+"','"+hamiltonchiropractic.getSoto_hall()+"','"+hamiltonchiropractic.getCompression_test()+"','"+hamiltonchiropractic.getAntalgia()+"','"+hamiltonchiropractic.getSpinal_percussl()+"','"+hamiltonchiropractic.getValsalval()+"','"+hamiltonchiropractic.getMinors_sign()+"','"+hamiltonchiropractic.getBraggards_test()+"','"+hamiltonchiropractic.getSlr()+"','"+hamiltonchiropractic.getWlr()+"','"+hamiltonchiropractic.getHoovers()+"','"+hamiltonchiropractic.getDbl_leg_raise()+"','"+hamiltonchiropractic.getLong_leg_test()+"','"+hamiltonchiropractic.getAnvil_test()+"','"+hamiltonchiropractic.getThomas()+"','"+hamiltonchiropractic.getMilgrams_test()+"','"+hamiltonchiropractic.getObers()+"','"+hamiltonchiropractic.getIlliaccomp()+"','"+hamiltonchiropractic.getYeomans()+"','"+hamiltonchiropractic.getAllis_sign()+"','"+hamiltonchiropractic.getDugas()+"','"+hamiltonchiropractic.getSupraspinatus()+"','"+hamiltonchiropractic.getCodmans()+"','"+hamiltonchiropractic.getSpeeds_test()+"','"+hamiltonchiropractic.getYergasons()+"','"+hamiltonchiropractic.getTinelse()+"','"+hamiltonchiropractic.getLingaminstab()+"','"+hamiltonchiropractic.getGolfers_elbow()+"','"+hamiltonchiropractic.getTennis_elbow()+"','"+hamiltonchiropractic.getTinels()+"','"+hamiltonchiropractic.getPhalens()+"','"+hamiltonchiropractic.getFinkelsteins_test()+"','"+hamiltonchiropractic.getBracelet()+"','"+hamiltonchiropractic.getAllens()+"','"+hamiltonchiropractic.getValgus_varus()+"','"+hamiltonchiropractic.getPat_ball()+"','"+hamiltonchiropractic.getDrawer()+"','"+hamiltonchiropractic.getVal_varus()+"','"+hamiltonchiropractic.getApleys()+"','"+hamiltonchiropractic.getDrawera()+"','"+hamiltonchiropractic.getThompsons()+"','"+hamiltonchiropractic.getTinelsa()+"','"+hamiltonchiropractic.getStrunskys()+"','"+hamiltonchiropractic.getHomans()+"','"+hamiltonchiropractic.getClaudication_test()+"')"; 
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
	
	List<Hamiltonchiropractic> hamiltonchiropractic = new ArrayList<Hamiltonchiropractic>();
    try{
		resultSet = statement.executeQuery("select * from tbl_hamiltonchiropractic");
		while(resultSet.next()){
			hamiltonchiropractic.add( new Hamiltonchiropractic(resultSet.getString("hacheck"),resultSet.getString(" ha"), resultSet.getString("neckcheck"),resultSet.getString(" neck"),resultSet.getString(" mbcheck"),resultSet.getString(" mb"),resultSet.getString(" ribscheck"),resultSet.getString(" ribs"),resultSet.getString(" shouldercheck"),resultSet.getString(" shoulder"),resultSet.getString(" elbowcheck"), resultSet.getString("elbow"), resultSet.getString("handcheck"), resultSet.getString("hand"), resultSet.getString("wristcheck"), resultSet.getString("wrist"), resultSet.getString("lbpcheck"), resultSet.getString("lbp"), resultSet.getString("hipcheck"), resultSet.getString("hip"), resultSet.getString("legcheck"),resultSet.getString("leg"), resultSet.getString("kneecheck"), resultSet.getString("knee"), resultSet.getString("footcheck"), resultSet.getString("foot"), resultSet.getString("anklecheck"), resultSet.getString("ankle"), resultSet.getString("begin"), resultSet.getString("hours"), resultSet.getString("days"), resultSet.getString("date"), resultSet.getString("reason"), resultSet.getString("chronic"), resultSet.getString("bestfeel"), resultSet.getString("othere"), resultSet.getString("solution"), resultSet.getString("otherit"), resultSet.getString("worsefeel"), resultSet.getString("otherfeel"), resultSet.getString("paindes"), resultSet.getString("otherpain"), resultSet.getString("consinter"), resultSet.getString("pain"), resultSet.getString("radiates"), resultSet.getString("otherradiates"), resultSet.getString("description"), resultSet.getString("worse"), resultSet.getString("otherdn"), resultSet.getString("conditionw"), resultSet.getString("work"), resultSet.getString("day"), resultSet.getString("condition"), resultSet.getString("othercondition"), resultSet.getString("assessment"), resultSet.getString("treatmentplan"), resultSet.getString("shortterm"), resultSet.getString("longterm"), resultSet.getString("jacksons"), resultSet.getString("foramin_comp"), resultSet.getString("shoulder_depr"), resultSet.getString("georges"), resultSet.getString("odono"), resultSet.getString("bakody_sign"), resultSet.getString("distraction_test"), resultSet.getString("valsalva"), resultSet.getString("spinal_percuss"), resultSet.getString("gripdynamomright"), resultSet.getString("gripdynamomleft"), resultSet.getString("adsons"), resultSet.getString("rustsign"), resultSet.getString("spinal_percusst"), resultSet.getString("adams_test"), resultSet.getString("sheppal_sign"), resultSet.getString("soto_hall"), resultSet.getString("compression_test"), resultSet.getString("antalgia"), resultSet.getString("spinal_percussl"), resultSet.getString("valsalval"), resultSet.getString("minors_sign"), resultSet.getString("braggards_test"), resultSet.getString("slr"), resultSet.getString("wlr"), resultSet.getString("hoovers"), resultSet.getString("dbl_leg_raise"), resultSet.getString("long_leg_test"), resultSet.getString("anvil_test"), resultSet.getString("thomas"), resultSet.getString("milgrams_test"), resultSet.getString("obers"), resultSet.getString("illiaccomp"), resultSet.getString("yeomans"), resultSet.getString("allis_sign"), resultSet.getString("dugas"), resultSet.getString("supraspinatus"), resultSet.getString("codmans"), resultSet.getString("speeds_test"), resultSet.getString("yergasons"), resultSet.getString("tinelse"), resultSet.getString("lingaminstab"), resultSet.getString("golfers_elbow"), resultSet.getString("tennis_elbow"), resultSet.getString("tinels"), resultSet.getString("phalens"), resultSet.getString("finkelsteins_test"), resultSet.getString("bracelet"), resultSet.getString("allens"), resultSet.getString("valgus_varus"), resultSet.getString("pat_ball"), resultSet.getString("drawer"), resultSet.getString("val_varus"), resultSet.getString("apleys"), resultSet.getString("drawera"), resultSet.getString("thompsons"), resultSet.getString("tinelsa"),resultSet.getString("strunskys"),resultSet.getString("homans"),resultSet.getString("claudication_test")));
			
			
			
			
		
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
    return hamiltonchiropractic;
	
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

	

