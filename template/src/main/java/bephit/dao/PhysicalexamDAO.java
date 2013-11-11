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

import bephit.model.Autoaccident;
import bephit.model.Physicalexam;

public class PhysicalexamDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setPhysicalexam(Physicalexam physicalexam)
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
	    	 String cmd="INSERT INTO `tbl_physicalexam` (`sign`,`name`,`id`,`date`,`age`,`sex`,`height`,`weight`,`temp`,`bp`,`pulse`,`appearance`,`weight1`,`gait`,`head`,`posture`,`romber`,`exam`,`abnormal`,`headtilt`,`rotation`,`tmj`,`high`,`lord`,`lymph`,`paras`,`trapezius`,`vertebrae`,`flexnormal`,`flexpain`,`flexspasm`,`flexstiff`,`extnormal`,`extpain`,`extspasm`,`extstiff`,`rlfnormal`,`rlfpain`,`rlfspasm`,`rlfstiff`,`llfnormal`,`llfpain`,`llfspasm`,`llfstiff`,`rrnormal`,`rrpain`,`rrspasm`,`rrstiff`,`lrnormal`,`lrpain`,`lrspasm`,`lrstiff`,`c5`,`c5check`,`c6`,`c6check`,`c7`,`c7check`,`c8`,`c8check`,`t1`,`t1check`,`other`,`othercheck`,`deltoidright`,`deltoidleft`,`wristright`,`wristleft`,`wristflexright`,`wristflexleft`,`fingerflexright`,`fingerflexleft`,`fingeraddright`,`fingeraddleft`,`wristextright`,`wristextleft`,`bicepright`,`bicepleft`,`bracioradright`,`bracioradleft`,`tricepright`,`tricepleft`,`highshoulder`,`curvature`,`winging`,`ribhump`,`chestmeasure`,`kyphosis`,`para`,`ribs`,`verte`,`thoracicnormal`,`thoracicpain`,`thoracicspasm`,`thoracicstiff`,`thoextnormal`,`thoextpain`,`thoextspasm`,`thoextstiff`,`thorlfnormal`,`thorlfpain`,`thorlfspasm`,`thorlfstiff`,`thollfnormal`,`thollfpain`,`thollfspasm`,`thollfstiff`,`thorrnormal`,`thorrpain`,`thorrspasm`,`thorrstiff`,`tholrnormal`,`tholrpain`,`tholrspasm`,`tholrstiff`,`thot1`,`thot1check`,`thot4`,`thot4check`,`thot10`,`thot10check`,`thoother`,`thoothercheck`,`myotomes`,`positive`,`highcrest`,`highpsis`,`curve`,`lordosis`,`paraspinal`,`quad`,`hamstring`,`ver`,`abdomen`,`lumflexnormal`,`lumflexpain`,`lumflexspasm`,`lumflexstiff`,`lumextnormal`,`lumextpain`,`lumextspasm`,`lumextstiff`,`lumrlfnormal`,`lumrlfpain`,`lumrlfspasm`,`lumrlfstiff`,`lumllfnormal`,`lumllfpain`,`lumllfspasm`,`lumllfstiff`,`lumrrnormal`,`lumrrpain`,`lumrrspasm`,`lumrrstiff`,`lumlrnormal`,`lumlrpain`,`lumlrspasm`,`lumlrstiff`,`hipflexright`,`hipflexleft`,`legextright`,`legextleft`,`dorsiflexright`,`dorsiflexleft`,`digitflexright`,`digitflexleft`,`heelright`,`heelleft`,`toeright`,`toeleft`,`patellarright`,`patellarleft`,`achillesright`,`achillesleft`,`babinskiright`,`babinskileft`) VALUES ('"+physicalexam.getSign()+"','"+physicalexam.getName()+"','"+physicalexam.getId()+"','"+physicalexam.getDate()+"','"+physicalexam.getSex()+"','"+physicalexam.getHeight()+"','"+physicalexam.getWeight()+"','"+physicalexam.getTemp()+"','"+physicalexam.getBp()+"','"+physicalexam.getPulse()+"','"+physicalexam.getAppearance()+"','"+physicalexam.getWeight1()+"','"+physicalexam.getGait()+"','"+physicalexam.getHead()+"','"+physicalexam.getPosture()+"','"+physicalexam.getRomber()+"','"+physicalexam.getExam()+"','"+physicalexam.getAbnormal()+"','"+physicalexam.getHeadtilt()+"','"+physicalexam.getRotation()+"','"+physicalexam.getTmj()+"','"+physicalexam.getHigh()+"','"+physicalexam.getLord()+"','"+physicalexam.getLymph()+"','"+physicalexam.getParas()+"','"+physicalexam.getTrapezius()+"','"+physicalexam.getVertebrae()+"','"+physicalexam.getFlexnormal()+"','"+physicalexam.getFlexpain()+"','"+physicalexam.getFlexspasm()+"','"+physicalexam.getFlexstiff()+"','"+physicalexam.getExtnormal()+"','"+physicalexam.getExtpain()+"','"+physicalexam.getExtspasm()+"','"+physicalexam.getExtstiff()+"','"+physicalexam.getRlfnormal()+"','"+physicalexam.getRlfpain()+"','"+physicalexam.getRlfspasm()+"','"+physicalexam.getRlfstiff()+"','"+physicalexam.getLlfnormal()+"','"+physicalexam.getLlfpain()+"','"+physicalexam.getLlfspasm()+"','"+physicalexam.getLlfstiff()+"','"+physicalexam.getRrnormal()+"','"+physicalexam.getRrpain()+"','"+physicalexam.getRrspasm()+"','"+physicalexam.getRrstiff()+"','"+physicalexam.getLrnormal()+"','"+physicalexam.getLrpain()+"','"+physicalexam.getLrspasm()+"','"+physicalexam.getLrstiff()+"','"+physicalexam.getC5()+"','"+physicalexam.getC5check()+"','"+physicalexam.getC6()+"','"+physicalexam.getC6check()+"','"+physicalexam.getC7()+"','"+physicalexam.getC7check()+"','"+physicalexam.getC8()+"','"+physicalexam.getC8check()+"','"+physicalexam.getT1()+"','"+physicalexam.getT1check()+"','"+physicalexam.getOther()+"','"+physicalexam.getOthercheck()+"','"+physicalexam.getDeltoidright()+"','"+physicalexam.getDeltoidleft()+"','"+physicalexam.getWristright()+"','"+physicalexam.getWristleft()+"','"+physicalexam.getWristflexright()+"','"+physicalexam.getWristflexleft()+"','"+physicalexam.getFingerflexright()+"','"+physicalexam.getFingerflexleft()+"','"+physicalexam.getFingeraddright()+"','"+physicalexam.getFingeraddleft()+"','"+physicalexam.getWristextright()+"','"+physicalexam.getWristextleft()+"','"+physicalexam.getBicepright()+"','"+physicalexam.getBicepleft()+"','"+physicalexam.getBracioradright()+"','"+physicalexam.getBracioradleft()+"','"+physicalexam.getTricepright()+"','"+physicalexam.getTricepleft()+"','"+physicalexam.getHighshoulder()+"','"+physicalexam.getCurvature()+"','"+physicalexam.getWinging()+"','"+physicalexam.getRibhump()+"','"+physicalexam.getChestmeasure()+"','"+physicalexam.getKyphosis()+"','"+physicalexam.getPara()+"','"+physicalexam.getRibs()+"','"+physicalexam.getVerte()+"','"+physicalexam.getThoracicnormal()+"','"+physicalexam.getThoracicpain()+"','"+physicalexam.getThoracicspasm()+"','"+physicalexam.getThoracicstiff()+"','"+physicalexam.getThoextnormal()+"','"+physicalexam.getThoextpain()+"','"+physicalexam.getThoextspasm()+"','"+physicalexam.getThoextstiff()+"','"+physicalexam.getThorlfnormal()+"','"+physicalexam.getThorlfpain()+"','"+physicalexam.getThorlfspasm()+"','"+physicalexam.getThorlfstiff()+"','"+physicalexam.getThollfnormal()+"','"+physicalexam.getThollfpain()+"','"+physicalexam.getThollfspasm()+"','"+physicalexam.getThollfstiff()+"','"+physicalexam.getThorrnormal()+"','"+physicalexam.getThorrpain()+"','"+physicalexam.getThorrspasm()+"','"+physicalexam.getThorrstiff()+"','"+physicalexam.getTholrnormal()+"','"+physicalexam.getTholrpain()+"','"+physicalexam.getTholrspasm()+"','"+physicalexam.getTholrstiff()+"','"+physicalexam.getThot1()+"','"+physicalexam.getThot1check()+"','"+physicalexam.getThot4()+"','"+physicalexam.getThot4check()+"','"+physicalexam.getThot10()+"','"+physicalexam.getThot10check()+"','"+physicalexam.getThoother()+"','"+physicalexam.getThoothercheck()+"','"+physicalexam.getMyotomes()+"','"+physicalexam.getPositive()+"','"+physicalexam.getHighcrest()+"','"+physicalexam.getHighpsis()+"','"+physicalexam.getCurve()+"','"+physicalexam.getLordosis()+"','"+physicalexam.getParaspinal()+"','"+physicalexam.getQuad()+"','"+physicalexam.getHamstring()+"','"+physicalexam.getVer()+"','"+physicalexam.getAbdomen()+"','"+physicalexam.getLumflexnormal()+"','"+physicalexam.getLumflexpain()+"','"+physicalexam.getLumflexspasm()+"','"+physicalexam.getLumflexstiff()+"','"+physicalexam.getLumextnormal()+"','"+physicalexam.getLumextpain()+"','"+physicalexam.getLumextspasm()+"','"+physicalexam.getLumextstiff()+"','"+physicalexam.getLumrlfnormal()+"','"+physicalexam.getLumrlfpain()+"','"+physicalexam.getLumrlfspasm()+"','"+physicalexam.getLumrlfstiff()+"','"+physicalexam.getLumllfnormal()+"','"+physicalexam.getLumllfpain()+"','"+physicalexam.getLumllfspasm()+"','"+physicalexam.getLumllfstiff()+"','"+physicalexam.getLumrrnormal()+"','"+physicalexam.getLumrrpain()+"','"+physicalexam.getLumrrspasm()+"','"+physicalexam.getLumrrstiff()+"','"+physicalexam.getLumlrnormal()+"','"+physicalexam.getLumlrpain()+"','"+physicalexam.getLumlrspasm()+"','"+physicalexam.getLumlrstiff()+"','"+physicalexam.getHipflexright()+"','"+physicalexam.getHipflexleft()+"','"+physicalexam.getLegextright()+"','"+physicalexam.getLegextleft()+"','"+physicalexam.getDorsiflexright()+"','"+physicalexam.getDorsiflexleft()+"','"+physicalexam.getDigitflexright()+"','"+physicalexam.getDigitflexleft()+"','"+physicalexam.getHeelright()+"','"+physicalexam.getHeelleft()+"','"+physicalexam.getToeright()+"','"+physicalexam.getToeleft()+"','"+physicalexam.getPatellarright()+"','"+physicalexam.getPatellarleft()+"','"+physicalexam.getAchillesright()+"','"+physicalexam.getAchillesleft()+"','"+physicalexam.getBabinskiright()+"','"+physicalexam.getBabinskileft()+"')";
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
	    	System.out.println("error:"+e.toString());
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

	
public List<Physicalexam> getPhysicalexam(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Physicalexam> Physicalexam = new ArrayList<Physicalexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_physicalexam");
		while(resultSet.next()){
			Physicalexam.add(new Physicalexam(resultSet.getString("sign"),
		    		resultSet.getString("name"),
		    		resultSet.getString("id"),
		    		resultSet.getString("date"),
		    		resultSet.getString("age"),
		    		resultSet.getString("sex"),
		    		resultSet.getString("height"),
		    		resultSet.getString("weight"),
		    		resultSet.getString("temp"),
		    		resultSet.getString("bp"),
		    		resultSet.getString("pulse"),
		    		resultSet.getString("appearance"),
		    		resultSet.getString("weight1"),
		    		resultSet.getString("gait"),
		    		resultSet.getString("head"),
		    		resultSet.getString("posture"),
		    		resultSet.getString("romber"),
		    		resultSet.getString("exam"),
		    		resultSet.getString("abnormal"),
		    		resultSet.getString("headtilt"),
		    		resultSet.getString("rotation"),
		    		resultSet.getString("tmj"),
		    		resultSet.getString("high"),
		    		resultSet.getString("lord"),
		    		resultSet.getString("lymph"),
		    		resultSet.getString("paras"),
		    		resultSet.getString("trapezius"),
		    		resultSet.getString("vertebrae"),
		    		resultSet.getString("flexnormal"),
		    		resultSet.getString("flexpain"),
		    		resultSet.getString("flexspasm"),
		    		resultSet.getString("flexstiff"),
		    		resultSet.getString("extnormal"),
		    		resultSet.getString("extpain"),
		    		resultSet.getString("extspasm"),
		    		resultSet.getString("extstiff"),
		    		resultSet.getString("rlfnormal"),
		    		resultSet.getString("rlfpain"),
		    		resultSet.getString("rlfspasm"),
		    		resultSet.getString("rlfstiff"),
		    		resultSet.getString("llfnormal"),
		    		resultSet.getString("llfpain"),
		    		resultSet.getString("llfspasm"),
		    		resultSet.getString("llfstiff"),
		    		resultSet.getString("rrnormal"),
		    		resultSet.getString("rrpain"),
		    		resultSet.getString("rrspasm"),
		    		resultSet.getString("rrstiff"),
		    		resultSet.getString("lrnormal"),
		    		resultSet.getString("lrpain"),
		    		resultSet.getString("lrspasm"),
		    		resultSet.getString("lrstiff"),
		    		resultSet.getString("c5"),
		    		resultSet.getString("c5check"),
		    		
		    		resultSet.getString("c6"),
		    		resultSet.getString("c6check"),
		    		
		    		resultSet.getString("c7"),
		    		resultSet.getString("c7check"),
		    	
		    		resultSet.getString("c8"),
		    		resultSet.getString("c8check"),
		    		
		    		resultSet.getString("t1"),
		    		resultSet.getString("t1check"),
		    		
		    		resultSet.getString("other"),
		    		resultSet.getString("othercheck"),
		    		
		    		resultSet.getString("deltoidright"),
		    		resultSet.getString("deltoidleft"),
		    		resultSet.getString("wristright"),
		    		resultSet.getString("wristleft"),
		    		resultSet.getString("wristflexright"),
		    		resultSet.getString("wristflexleft"),
		    		resultSet.getString("fingerflexright"),
		    		resultSet.getString("fingerflexleft"),
		    		resultSet.getString("fingeraddright"),
		    		resultSet.getString("fingeraddleft"),
		    		resultSet.getString("wristextright"),
		    		resultSet.getString("wristextleft"),
		    		resultSet.getString("bicepright"),
		    		resultSet.getString("bicepleft"),
		    		resultSet.getString("bracioradright"),
		    		resultSet.getString("bracioradleft"),
		    		resultSet.getString("tricepright"),
		    		resultSet.getString("tricepleft"),
		    		resultSet.getString("highshoulder"),
		    		resultSet.getString("curvature"),
		    		resultSet.getString("winging"),
		    		resultSet.getString("ribhump"),
		    		resultSet.getString("chestmeasure"),
		    		resultSet.getString("kyphosis"),
		    		resultSet.getString("para"),
		    		resultSet.getString("ribs"),
		    		resultSet.getString("verte"),
		    		resultSet.getString("thoracicnormal"),
		    		resultSet.getString("thoracicpain"),
		    		resultSet.getString("thoracicspasm"),
		    		resultSet.getString("thoracicstiff"),
		    		resultSet.getString("thoextnormal"),
		    		resultSet.getString("thoextpain"),
		    		resultSet.getString("thoextspasm"),
		    		resultSet.getString("thoextstiff"),
		    		resultSet.getString("thorlfnormal"),
		    		resultSet.getString("thorlfpain"),
		    		resultSet.getString("thorlfspasm"),
		    		resultSet.getString("thorlfstiff"),
		    		resultSet.getString("thollfnormal"),
		    		resultSet.getString("thollfpain"),
		    		resultSet.getString("thollfspasm"),
		    		resultSet.getString("thollfstiff"),
		    		resultSet.getString("thorrnormal"),
		    		resultSet.getString("thorrpain"),
		    		resultSet.getString("thorrspasm"),
		    		resultSet.getString("thorrstiff"),
		    		resultSet.getString("tholrnormal"),
		    		resultSet.getString("tholrpain"),
		    		resultSet.getString("tholrspasm"),
		    		resultSet.getString("tholrstiff"),
		    		resultSet.getString("thot1"),
		    		resultSet.getString("thot1check"),
		    		
		    		resultSet.getString("thot4"),
		    		resultSet.getString("thot4check"),
		    		
		    		resultSet.getString("thot10"),
		    		resultSet.getString("thot10check"),
		    		
		    		resultSet.getString("thoother"),
		    		resultSet.getString("thoothercheck"),
		    		
		    		resultSet.getString("myotomes"),
		    		resultSet.getString("positive"),
		    		resultSet.getString("highcrest"),
		    		resultSet.getString("highpsis"),
		    		resultSet.getString("curve"),
		    		resultSet.getString("lordosis"),
		    		resultSet.getString("paraspinal"),
		    		resultSet.getString("quad"),
		    		resultSet.getString("hamstring"),
		    		resultSet.getString("ver"),
		    		resultSet.getString("abdomen"),
		    		resultSet.getString("lumflexnormal"),
		    		resultSet.getString("lumflexpain"),
		    		resultSet.getString("lumflexspasm"),
		    		resultSet.getString("lumflexstiff"),
		    		resultSet.getString("lumextnormal"),
		    		resultSet.getString("lumextpain"),
		    		resultSet.getString("lumextspasm"),
		    		resultSet.getString("lumextstiff"),
		    		resultSet.getString("lumrlfnormal"),
		    		resultSet.getString("lumrlfpain"),
		    		resultSet.getString("lumrlfspasm"),
		    		resultSet.getString("lumrlfstiff"),
		    		resultSet.getString("lumllfnormal"),
		    		resultSet.getString("lumllfpain"),
		    		resultSet.getString("lumllfspasm"),
		    		resultSet.getString("lumllfstiff"),
		    		resultSet.getString("lumrrnormal"),
		    		resultSet.getString("lumrrpain"),
		    		resultSet.getString("lumrrspasm"),
		    		resultSet.getString("lumrrstiff"),
		    		resultSet.getString("lumlrnormal"),
		    		resultSet.getString("lumlrpain"),
		    		resultSet.getString("lumlrspasm"),
		    		resultSet.getString("lumlrstiff"),
		    		resultSet.getString("hipflexright"),
		    		resultSet.getString("hipflexleft"),
		    		resultSet.getString("legextright"),
		    		resultSet.getString("legextleft"),
		    		resultSet.getString("dorsiflexright"),
		    		resultSet.getString("dorsiflexleft"),
		    		resultSet.getString("digitflexright"),
		    		resultSet.getString("digitflexleft"),
		    		resultSet.getString("heelright"),
		    		resultSet.getString("heelleft"),
		    		resultSet.getString("toeright"),
		    		resultSet.getString("toeleft"),
		    		resultSet.getString("patellarright"),
		    		resultSet.getString("patellarleft"),
		    		resultSet.getString("achillesright"),
		    		resultSet.getString("achillesleft"),
		    		resultSet.getString("babinskiright"),
		    		resultSet.getString("babinskileft")));
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
    return Physicalexam;
	
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

	
