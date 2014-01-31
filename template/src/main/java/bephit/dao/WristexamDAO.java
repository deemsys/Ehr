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
import bephit.model.*;
public class WristexamDAO
{
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int setwristexam(WristExam wristexamdetails)
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
	    try{
	    	 String cmd="INSERT INTO wristexam(pname,date,muscle,swelling,dominanthand,ao,dysfunction,thenareminence,flexorcarpiradialis,commonflexors,hypothenareminence,extensorcarpiradialis,commonextensor,abductorpolliuslongus,abductorpollicisbrevis,extensorpollicisbrevis,note,functional,orthotpedic,flexionleft,flexionright,extensionleft,extensionright,ulnarleft,ulnarright,radialleft,radialright,pronationleft,pronationright,allenleft,allenright,phalenleft,phalenright,reverseleft,reverseright,tenosynovitisleft,tenosynovitisright,tinnelsleft,tinnelsright,ulttleft,ulttright,neurological,latdeltoidleft,latdeltoidright,latarmleft,latarmright,thirdleft,thirdright,medforearmleft,medforearmright,medelbowleft,medelbowright,shdleft,shdright,elbflexleft,elbflexright,elbextleft,elbextright,digitflexionleft,digitflexionright,digitabdleft,digitabdright,bicepsleft,bicepsright,brachioradleft,brachioradright,tricepsleft,tricepsright,typing,driving,other,otherdefict,comments,patientstatus,diagnosis1,diagnosis2,diagnosis3,diagnosis4,diagnosis5,diagnosis6,times,weeks,spinaldecompression,chiropractic,physicaltherapy,bracing,modalities,supplementation,hep,radiographic,mri,scan,conduction,emg,outsiderefferal,dc,others,othervalue,signature)values('"
	    	 		 +wristexamdetails.getPname()+
	    	 		 "','"+wristexamdetails.getDate()	    	 			    	 		
	    	 		 +"','"+wristexamdetails.getMuscle()
	    	 		 +"','"+wristexamdetails.getSwelling()
	    	 		 +"','"+wristexamdetails.getDominanthand()
	    	 		 +"','"+wristexamdetails.getAo()	    	 		
	    	 		 +"','"+wristexamdetails.getDysfunction()
	    	 		 +"','"+wristexamdetails.getThenareminence()
	    	 		 +"','"+wristexamdetails.getFlexorcarpiradialis()
	    	 		 +"','"+wristexamdetails.getCommonflexors()
	    	 		 +"','"+wristexamdetails.getHypothenareminence()
	    	 		 +"','"+wristexamdetails.getExtensorcarpiradialis()
	    	 		 +"','"+wristexamdetails.getCommonextensor()
	    	 		 +"','"+wristexamdetails.getAbductorpolliuslongus()
	    	 		 +"','"+wristexamdetails.getAbductorpollicisbrevis()
	    	 		 +"','"+wristexamdetails.getExtensorpollicisbrevis()
	    	 		 +"','"+wristexamdetails.getNote()	    	 		
	    	 		 +"','"+wristexamdetails.getFunctional()
	    	 		 +"','"+wristexamdetails.getOrthotpedic()
	    	 		 +"','"+wristexamdetails.getFlexionleft()
	    	 		 +"','"+wristexamdetails.getFlexionright()
	    	 		 +"','"+wristexamdetails.getExtensionleft()
	    	 		 +"','"+wristexamdetails.getExtensionright()
	    	 		 +"','"+wristexamdetails.getUlnarleft()
	    	 		 +"','"+wristexamdetails.getUlnarright()
	    	 		 +"','"+wristexamdetails.getRadialleft()
	    	 		 +"','"+wristexamdetails.getRadialright()
	    	 		 +"','"+wristexamdetails.getPronationleft()
	    	 		 +"','"+wristexamdetails.getPronationright()
	    	 		 +"','"+wristexamdetails.getAllenleft()
	    	 		 +"','"+wristexamdetails.getAllenright()
	    	 		 +"','"+wristexamdetails.getPhalenleft()
	    	 		 +"','"+wristexamdetails.getPhalenright()
	    	 		 +"','"+wristexamdetails.getReverseleft()
	    	 		 +"','"+wristexamdetails.getReverseright()
	    	 		 +"','"+wristexamdetails.getTenosynovitisleft()
	    	 		 +"','"+wristexamdetails.getTenosynovitisright()
	    	 		 +"','"+wristexamdetails.getTinnelsleft()
	    	 		 +"','"+wristexamdetails.getTinnelsright()
	    	 		 +"','"+wristexamdetails.getUlttleft()
	    	 		 +"','"+wristexamdetails.getUlttright()	    	 		 
	    	 		 +"','"+wristexamdetails.getNeurological()
	    	 		 +"','"+wristexamdetails.getLatdeltoidleft()
	    	 		 +"','"+wristexamdetails.getLatdeltoidright()
	    	 		 +"','"+wristexamdetails.getLatarmleft()
	    	 		 +"','"+wristexamdetails.getLatarmright()
	    	 		 +"','"+wristexamdetails.getThirdleft()
	    	 		 +"','"+wristexamdetails.getThirdright()
	    	 		 +"','"+wristexamdetails.getMedforearmleft()
	    	 		 +"','"+wristexamdetails.getMedforearmright()
	    	 		 +"','"+wristexamdetails.getMedelbowleft()
	    	 		 +"','"+wristexamdetails.getMedelbowright()
	    	 		 +"','"+wristexamdetails.getShdleft()
	    	 		 +"','"+wristexamdetails.getShdright()
	    	 		 +"','"+wristexamdetails.getElbflexleft()
	    	 		 +"','"+wristexamdetails.getElbflexright()
	    	 		 +"','"+wristexamdetails.getElbextleft()
	    	 		 +"','"+wristexamdetails.getElbextright()
	    	 		 +"','"+wristexamdetails.getDigitflexionleft()
	    	 		 +"','"+wristexamdetails.getDigitflexionright()
	    	 		 +"','"+wristexamdetails.getDigitabdleft()
	    	 		 +"','"+wristexamdetails.getDigitabdright()
	    	 		 +"','"+wristexamdetails.getBicepsleft()
	    	 		 +"','"+wristexamdetails.getBicepsright()
	    	 		 +"','"+wristexamdetails.getBrachioradleft()
	    	 		 +"','"+wristexamdetails.getBrachioradright()	    	 		
	    	 		+"','"+wristexamdetails.getTricepsleft()
	    	 		+"','"+wristexamdetails.getTricepsright()	    	 		
	    	 		+"','"+wristexamdetails.getTyping()
	    	 		+"','"+wristexamdetails.getDriving()	    	 		
	    	 		+"','"+wristexamdetails.getOther()
	    	 		+"','"+wristexamdetails.getOtherdefict()
	    	 		+"','"+wristexamdetails.getComments()
	    	 		+"','"+wristexamdetails.getPatientstatus()
	    	 		+"','"+wristexamdetails.getDiagnosis1()
	    	 		+"','"+wristexamdetails.getDiagnosis2()
	    	 		+"','"+wristexamdetails.getDiagnosis3()
	    	 		+"','"+wristexamdetails.getDiagnosis4()
	    	 		+"','"+wristexamdetails.getDiagnosis5()
	    	 		+"','"+wristexamdetails.getDiagnosis6()
	    	 		+"','"+wristexamdetails.getTimes()
	    	 		+"','"+wristexamdetails.getWeeks()
	    	 		+"','"+wristexamdetails.getSpinaldecompression()
	    	 		+"','"+wristexamdetails.getChiropractic()
	    	 		+"','"+wristexamdetails.getPhysicaltherapy()
	    	 		+"','"+wristexamdetails.getBracing()
	    	 		+"','"+wristexamdetails.getModalities()
	    	 		+"','"+wristexamdetails.getSupplementation()
	    	 		+"','"+wristexamdetails.getHep()
	    	 		+"','"+wristexamdetails.getRadiographic()
	    	 		+"','"+wristexamdetails.getMri()
	    	 		+"','"+wristexamdetails.getScan()
	    	 		+"','"+wristexamdetails.getConduction()
	    	 		+"','"+wristexamdetails.getEmg()
	    	 		+"','"+wristexamdetails.getOutsiderefferal()
	    	 		+"','"+wristexamdetails.getDc()
	    	 	    +"','"+wristexamdetails.getOthers()
	    	 	    +"','"+wristexamdetails.getOthervalue()
	    	 		+"','"+wristexamdetails.getSignature()+"')";
	    

	    System.out.println("cmd insert value"+cmd);
	    statement.executeUpdate(cmd);
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
	
	public int updatewristexam(WristExam wristexamdetails,String wristexamno)
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
	    try{
	    	 String cmd="update wristexam set pname='"+wristexamdetails.getPname()
	    +"',date='"+wristexamdetails.getDate()
	    +"',muscle='"+wristexamdetails.getMuscle()
	    +"',swelling='"+ wristexamdetails.getSwelling()
	    +"',dominanthand='"+wristexamdetails.getDominanthand()
	    +"',ao='"+wristexamdetails.getAo()
	    +"',dysfunction='"+wristexamdetails.getDysfunction()
	    +"',thenareminence='"+wristexamdetails.getThenareminence()
	    +"',flexorcarpiradialis='"+wristexamdetails.getFlexorcarpiradialis()
	    +"',commonflexors='"+wristexamdetails.getCommonflexors()
	    +"',hypothenareminence='"+wristexamdetails.getHypothenareminence()
	    +"',extensorcarpiradialis='"+wristexamdetails.getExtensorcarpiradialis()
	    +"',commonextensor='"+wristexamdetails.getCommonextensor()
	    +"',abductorpolliuslongus='"+wristexamdetails.getAbductorpolliuslongus()
	    +"',abductorpollicisbrevis='"+wristexamdetails.getAbductorpollicisbrevis()	   
	    +"',extensorpollicisbrevis='"+wristexamdetails.getExtensorpollicisbrevis()
	    +"',note='" +wristexamdetails.getNote()
	    +"',functional='"+wristexamdetails.getFunctional()
	    +"',orthotpedic='"+wristexamdetails.getOrthotpedic()
	    +"',flexionleft='"+wristexamdetails.getFlexionleft()
	    +"',flexionright='"+wristexamdetails.getFlexionright()
	    +"',extensionleft='" +wristexamdetails.getExtensionleft()
	    +"',extensionright='"+wristexamdetails.getExtensionright()
	    +"',ulnarleft='" +wristexamdetails.getUlnarleft()
	    +"',ulnarright='"+wristexamdetails.getUlnarright()
	    +"',radialleft='"+wristexamdetails.getRadialleft()
	    +"',radialright='"+wristexamdetails.getRadialright()
	    +"',pronationleft='"+wristexamdetails.getPronationleft()
	    +"',pronationright='"+wristexamdetails.getPronationright()
	    +"',allenleft='"+wristexamdetails.getAllenleft()
	    +"',allenright='"+wristexamdetails.getAllenright()
	    +"',phalenleft='"+wristexamdetails.getPhalenleft()
	    +"',phalenright='"+wristexamdetails.getPhalenright()
	    +"',reverseleft='"+ wristexamdetails.getReverseleft()
	    +"',reverseright='"+wristexamdetails.getReverseright()
	    +"',tenosynovitisleft='"+wristexamdetails.getTenosynovitisleft()
	    +"',tenosynovitisright='"+wristexamdetails.getTenosynovitisright()
	    +"',tinnelsleft='"+wristexamdetails.getTinnelsleft()
	    +"',tinnelsright='"+wristexamdetails.getTinnelsright()
	    +"',ulttleft='"+wristexamdetails.getUlttleft()
	    +"',ulttright='"+wristexamdetails.getUlttright()	    
	    +"',neurological='"+wristexamdetails.getNeurological()	    
	    +"',latdeltoidleft='"+wristexamdetails.getLatdeltoidleft()
	    +"',latdeltoidright='"+wristexamdetails.getLatdeltoidright()
	    +"',latarmleft='"+wristexamdetails.getLatarmleft()
	    +"',latarmright='"+wristexamdetails.getLatarmright()
	    +"',thirdleft='"+wristexamdetails.getThirdleft()
	    +"',thirdright='"+wristexamdetails.getThirdright()
	    +"',medforearmleft='"+wristexamdetails.getMedforearmleft()
	    +"',medforearmright='"+wristexamdetails.getMedforearmright()
	    +"',medelbowleft='"+wristexamdetails.getMedelbowleft()
	    +"',medelbowright='"+wristexamdetails.getMedelbowright()
	    +"',shdleft='"+wristexamdetails.getShdleft()
	    +"',shdright='"+wristexamdetails.getShdright()
	    +"',elbflexleft='"+wristexamdetails.getElbflexleft()
	    +"',elbflexright='"+wristexamdetails.getElbflexright()
	    +"',elbextleft='"+wristexamdetails.getElbextleft()
	    +"',elbextright='"+wristexamdetails.getElbextright()
	    +"',digitflexionleft='"+wristexamdetails.getDigitflexionleft()
	    +"',digitflexionright='"+wristexamdetails.getDigitflexionright()
	    +"',digitabdleft='"+wristexamdetails.getDigitabdleft()
	    +"',digitabdright='"+wristexamdetails.getDigitabdright()
	    +"',bicepsleft='"+wristexamdetails.getBicepsleft()
	    +"',bicepsright='"+wristexamdetails.getBicepsright()
	    +"',brachioradleft='"+wristexamdetails.getBrachioradleft()
	    +"',brachioradright='"+wristexamdetails.getBrachioradright()
	    +"',tricepsleft='"+wristexamdetails.getTricepsleft()
	    +"',tricepsright='"+wristexamdetails.getTricepsright()
	    +"',typing='"+ wristexamdetails.getTyping()
	    +"',driving='"+wristexamdetails.getDriving()	    
	    +"',other='"+wristexamdetails.getOther()
	    +"',otherdefict='"+wristexamdetails.getOtherdefict()
	    +"',comments='"+wristexamdetails.getComments()
	    +"',patientstatus='"+wristexamdetails.getPatientstatus()
	    +"',diagnosis1='"+wristexamdetails.getDiagnosis1()
	    +"',diagnosis2='"+wristexamdetails.getDiagnosis2()
	    +"',diagnosis3='"+wristexamdetails.getDiagnosis3()
	    +"',diagnosis4='"+wristexamdetails.getDiagnosis4()
	    +"',diagnosis5='"+wristexamdetails.getDiagnosis5()
	    +"',diagnosis6='"+wristexamdetails.getDiagnosis6()
	    +"',times='"+wristexamdetails.getTimes()
	    +"',weeks='"+wristexamdetails.getWeeks()
	    +"',spinaldecompression='"+wristexamdetails.getSpinaldecompression()
	    +"',chiropractic='"+wristexamdetails.getChiropractic()
	    +"',physicaltherapy='"+wristexamdetails.getPhysicaltherapy()
	    +"',bracing='"+ wristexamdetails.getBracing()
	    +"',modalities='"+wristexamdetails.getModalities()
	    +"',supplementation='"+wristexamdetails.getSupplementation()
	    +"',hep='"+wristexamdetails.getHep()
	    +"',radiographic='"+wristexamdetails.getRadiographic()
	    +"',mri='"+wristexamdetails.getMri()
	    +"',scan='"+wristexamdetails.getScan()
	    +"',conduction='"+wristexamdetails.getConduction()
	    +"',emg='"+wristexamdetails.getEmg()
	    +"',outsiderefferal='"+wristexamdetails.getOutsiderefferal()
	    +"',dc='"+wristexamdetails.getDc()
	    +"',others='"+wristexamdetails.getOthers()
	    +"',othervalue='"+wristexamdetails.getOthervalue()
	    +"',signature='"+wristexamdetails.getSignature()+"' where wristexamno='"+wristexamno+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
	    System.out.println("cmd insert value"+cmd);
	    statement.executeUpdate(cmd);
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
	
	public List<WristExam> getwristexamallDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<WristExam> wristexam = new ArrayList<WristExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from wristexam");
			while(resultSet.next()){
				wristexam.add(new WristExam(resultSet.getString("wristexamno"),
						resultSet.getString("pname"),
						resultSet.getString("date"),						
						resultSet.getString("muscle"),
						resultSet.getString("swelling"),
						resultSet.getString("dominanthand"),
						resultSet.getString("ao"),
						resultSet.getString("dysfunction"),
						resultSet.getString("thenareminence"),
						resultSet.getString("flexorcarpiradialis"),
						resultSet.getString("commonflexors"),
						resultSet.getString("hypothenareminence"),
						resultSet.getString("extensorcarpiradialis"),
						resultSet.getString("commonextensor"),
						resultSet.getString("abductorpolliuslongus"),
						resultSet.getString("abductorpollicisbrevis"),
						resultSet.getString("extensorpollicisbrevis"),
						resultSet.getString("note"),
						resultSet.getString("functional"),
						resultSet.getString("orthotpedic"),
						resultSet.getString("flexionleft"),
						resultSet.getString("flexionright"),
						resultSet.getString("extensionleft"),
						resultSet.getString("extensionright"),
						resultSet.getString("ulnarleft"),
						resultSet.getString("ulnarright"),
						resultSet.getString("radialleft"),
						resultSet.getString("radialright"),
						resultSet.getString("pronationleft"),
						resultSet.getString("pronationright"),
						resultSet.getString("allenleft"),
						resultSet.getString("allenright")
						,resultSet.getString("phalenleft"),
						resultSet.getString("phalenright"),
						resultSet.getString("reverseleft"),
						resultSet.getString("reverseright"),
						resultSet.getString("tenosynovitisleft"),
						resultSet.getString("tenosynovitisright"),
						resultSet.getString("tinnelsleft"),
						resultSet.getString("tinnelsright"),
						resultSet.getString("ulttleft"),
						resultSet.getString("ulttright"),						
						resultSet.getString("neurological")
						,resultSet.getString("latdeltoidleft"),
						resultSet.getString("latdeltoidright"),
						resultSet.getString("latarmleft"),
						resultSet.getString("latarmright"),
						resultSet.getString("thirdleft"),
						resultSet.getString("thirdright"),
						resultSet.getString("medforearmleft"),
						resultSet.getString("medforearmright"),
			    	resultSet.getString("medelbowleft"),
			    	resultSet.getString("medelbowright"),
			    	resultSet.getString("shdleft"),
			    	resultSet.getString("shdright"),
			    	resultSet.getString("elbflexleft"),
			    	resultSet.getString("elbflexright"),
			    	resultSet.getString("elbextleft"),
			    	resultSet.getString("elbextright"),
			    	resultSet.getString("digitflexionleft"),
			    	resultSet.getString("digitflexionright"),
			    	resultSet.getString("digitabdleft"),
			    	resultSet.getString("digitabdright"),
			    	resultSet.getString("bicepsleft"),
			    	resultSet.getString("bicepsright"),
			    	resultSet.getString("brachioradleft"),
			    	resultSet.getString("brachioradright"),
			    	resultSet.getString("tricepsleft"),
			    	resultSet.getString("tricepsright"),
			    	resultSet.getString("typing"),
			    	resultSet.getString("driving"),			    	
			    	resultSet.getString("other"),
			    	resultSet.getString("otherdefict"),
			    	resultSet.getString("comments"),
			    	resultSet.getString("patientstatus"),
			    	resultSet.getString("diagnosis1"),
			    	resultSet.getString("diagnosis2"),
			    	resultSet.getString("diagnosis3"),
			    	resultSet.getString("diagnosis4"),
			    	resultSet.getString("diagnosis5"),
			    	resultSet.getString("diagnosis6"),
			    	resultSet.getString("times"),
			    	resultSet.getString("weeks"),
			    	resultSet.getString("spinaldecompression"),
			    	resultSet.getString("chiropractic"),
			    	resultSet.getString("physicaltherapy"),
			    	resultSet.getString("bracing"),
			    	resultSet.getString("modalities"),
			    	resultSet.getString("supplementation"),
			    	resultSet.getString("hep"),
			    	resultSet.getString("radiographic"),
			    	resultSet.getString("mri"),
			    	resultSet.getString("scan"),
			    	resultSet.getString("conduction"),
			    	resultSet.getString("emg") ,
			    	resultSet.getString("outsiderefferal"),
			    	resultSet.getString("dc"),
			    	resultSet.getString("others"),
			    	resultSet.getString("othervalue"),
			    	resultSet.getString("signature")));
				System.out.println("patient name"+wristexam.get(0).getPname());
			    	
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
	    return wristexam;
		
	}
	public int deletewristexamdetails(String wristexamno)
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
		
	    try{
	    	System.out.print("database");
			statement.executeUpdate("delete from wristexam where wristexamno='"+wristexamno+"'");
	        System.out.println("deleted");
	        flag=1;
	}catch(Exception e){
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    	flag=0;
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    if(flag==1)
    {
    	return 1;
    }
    	
  
		return 0;
	}
	
	public List<WristExam> getwristexamDetails(String wristexamno){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<WristExam> wristexam = new ArrayList<WristExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from wristexam where wristexamno='"+wristexamno+"'");
			while(resultSet.next()){
				
				wristexam.add(new WristExam(resultSet.getString("wristexamno"),
						resultSet.getString("pname"),
						resultSet.getString("date"),						
						resultSet.getString("muscle"),
						resultSet.getString("swelling"),
						resultSet.getString("dominanthand"),
						resultSet.getString("ao"),
						resultSet.getString("dysfunction"),
						resultSet.getString("thenareminence"),
						resultSet.getString("flexorcarpiradialis"),
						resultSet.getString("commonflexors"),
						resultSet.getString("hypothenareminence"),
						resultSet.getString("extensorcarpiradialis"),
						resultSet.getString("commonextensor"),
						resultSet.getString("abductorpolliuslongus"),
						resultSet.getString("abductorpollicisbrevis"),
						resultSet.getString("extensorpollicisbrevis"),
						resultSet.getString("note"),
						resultSet.getString("functional"),
						resultSet.getString("orthotpedic"),
						resultSet.getString("flexionleft"),
						resultSet.getString("flexionright"),
						resultSet.getString("extensionleft"),
						resultSet.getString("extensionright"),
						resultSet.getString("ulnarleft"),
						resultSet.getString("ulnarright"),
						resultSet.getString("radialleft"),
						resultSet.getString("radialright"),
						resultSet.getString("pronationleft"),
						resultSet.getString("pronationright"),
						resultSet.getString("allenleft"),
						resultSet.getString("allenright")
						,resultSet.getString("phalenleft"),
						resultSet.getString("phalenright"),
						resultSet.getString("reverseleft"),
						resultSet.getString("reverseright"),
						resultSet.getString("tenosynovitisleft"),
						resultSet.getString("tenosynovitisright"),
						resultSet.getString("tinnelsleft"),
						resultSet.getString("tinnelsright"),
						resultSet.getString("ulttleft"),
						resultSet.getString("ulttright"),						
						resultSet.getString("neurological")
						,resultSet.getString("latdeltoidleft"),
						resultSet.getString("latdeltoidright"),
						resultSet.getString("latarmleft"),
						resultSet.getString("latarmright"),
						resultSet.getString("thirdleft"),
						resultSet.getString("thirdright"),
						resultSet.getString("medforearmleft"),
						resultSet.getString("medforearmright"),
			    	resultSet.getString("medelbowleft"),
			    	resultSet.getString("medelbowright"),
			    	resultSet.getString("shdleft"),
			    	resultSet.getString("shdright"),
			    	resultSet.getString("elbflexleft"),
			    	resultSet.getString("elbflexright"),
			    	resultSet.getString("elbextleft"),
			    	resultSet.getString("elbextright"),
			    	resultSet.getString("digitflexionleft"),
			    	resultSet.getString("digitflexionright"),
			    	resultSet.getString("digitabdleft"),
			    	resultSet.getString("digitabdright"),
			    	resultSet.getString("bicepsleft"),
			    	resultSet.getString("bicepsright"),
			    	resultSet.getString("brachioradleft"),
			    	resultSet.getString("brachioradright"),
			    	resultSet.getString("tricepsleft"),
			    	resultSet.getString("tricepsright"),
			    	resultSet.getString("typing"),
			    	resultSet.getString("driving"),			    	
			    	resultSet.getString("other"),
			    	resultSet.getString("otherdefict"),
			    	resultSet.getString("comments"),
			    	resultSet.getString("patientstatus"),
			    	resultSet.getString("diagnosis1"),
			    	resultSet.getString("diagnosis2"),
			    	resultSet.getString("diagnosis3"),
			    	resultSet.getString("diagnosis4"),
			    	resultSet.getString("diagnosis5"),
			    	resultSet.getString("diagnosis6"),
			    	resultSet.getString("times"),
			    	resultSet.getString("weeks"),
			    	resultSet.getString("spinaldecompression"),
			    	resultSet.getString("chiropractic"),
			    	resultSet.getString("physicaltherapy"),
			    	resultSet.getString("bracing"),
			    	resultSet.getString("modalities"),
			    	resultSet.getString("supplementation"),
			    	resultSet.getString("hep"),
			    	resultSet.getString("radiographic"),
			    	resultSet.getString("mri"),
			    	resultSet.getString("scan"),
			    	resultSet.getString("conduction"),
			    	resultSet.getString("emg") ,
			    	resultSet.getString("outsiderefferal"),
			    	resultSet.getString("dc"),
			    	resultSet.getString("others"),
			    	resultSet.getString("othervalue"),
			    	resultSet.getString("signature")));
				}
			}
				    	    
			   	
			
	    catch(Exception e){
	    	System.out.println(e.toString());
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return wristexam;
		
	}
	public List<WristExam> getlimitedwristexam(int page) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<WristExam> wristexam = new ArrayList<WristExam>();
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from wristexam order by pname asc limit " + offset + ","+ limit+"" ;

			resultSet = statement.executeQuery(cmd);
			while (resultSet.next()) {
				wristexam.add(new WristExam(resultSet.getString("wristexamno"),
						resultSet.getString("pname"),
						resultSet.getString("date"),						
						resultSet.getString("muscle"),
						resultSet.getString("swelling"),
						resultSet.getString("dominanthand"),
						resultSet.getString("ao"),
						resultSet.getString("dysfunction"),
						resultSet.getString("thenareminence"),
						resultSet.getString("flexorcarpiradialis"),
						resultSet.getString("commonflexors"),
						resultSet.getString("hypothenareminence"),
						resultSet.getString("extensorcarpiradialis"),
						resultSet.getString("commonextensor"),
						resultSet.getString("abductorpolliuslongus"),
						resultSet.getString("abductorpollicisbrevis"),
						resultSet.getString("extensorpollicisbrevis"),
						resultSet.getString("note"),
						resultSet.getString("functional"),
						resultSet.getString("orthotpedic"),
						resultSet.getString("flexionleft"),
						resultSet.getString("flexionright"),
						resultSet.getString("extensionleft"),
						resultSet.getString("extensionright"),
						resultSet.getString("ulnarleft"),
						resultSet.getString("ulnarright"),
						resultSet.getString("radialleft"),
						resultSet.getString("radialright"),
						resultSet.getString("pronationleft"),
						resultSet.getString("pronationright"),
						resultSet.getString("allenleft"),
						resultSet.getString("allenright")
						,resultSet.getString("phalenleft"),
						resultSet.getString("phalenright"),
						resultSet.getString("reverseleft"),
						resultSet.getString("reverseright"),
						resultSet.getString("tenosynovitisleft"),
						resultSet.getString("tenosynovitisright"),
						resultSet.getString("tinnelsleft"),
						resultSet.getString("tinnelsright"),
						resultSet.getString("ulttleft"),
						resultSet.getString("ulttright"),						
						resultSet.getString("neurological")
						,resultSet.getString("latdeltoidleft"),
						resultSet.getString("latdeltoidright"),
						resultSet.getString("latarmleft"),
						resultSet.getString("latarmright"),
						resultSet.getString("thirdleft"),
						resultSet.getString("thirdright"),
						resultSet.getString("medforearmleft"),
						resultSet.getString("medforearmright"),
			    	resultSet.getString("medelbowleft"),
			    	resultSet.getString("medelbowright"),
			    	resultSet.getString("shdleft"),
			    	resultSet.getString("shdright"),
			    	resultSet.getString("elbflexleft"),
			    	resultSet.getString("elbflexright"),
			    	resultSet.getString("elbextleft"),
			    	resultSet.getString("elbextright"),
			    	resultSet.getString("digitflexionleft"),
			    	resultSet.getString("digitflexionright"),
			    	resultSet.getString("digitabdleft"),
			    	resultSet.getString("digitabdright"),
			    	resultSet.getString("bicepsleft"),
			    	resultSet.getString("bicepsright"),
			    	resultSet.getString("brachioradleft"),
			    	resultSet.getString("brachioradright"),
			    	resultSet.getString("tricepsleft"),
			    	resultSet.getString("tricepsright"),
			    	resultSet.getString("typing"),
			    	resultSet.getString("driving"),			    	
			    	resultSet.getString("other"),
			    	resultSet.getString("otherdefict"),
			    	resultSet.getString("comments"),
			    	resultSet.getString("patientstatus"),
			    	resultSet.getString("diagnosis1"),
			    	resultSet.getString("diagnosis2"),
			    	resultSet.getString("diagnosis3"),
			    	resultSet.getString("diagnosis4"),
			    	resultSet.getString("diagnosis5"),
			    	resultSet.getString("diagnosis6"),
			    	resultSet.getString("times"),
			    	resultSet.getString("weeks"),
			    	resultSet.getString("spinaldecompression"),
			    	resultSet.getString("chiropractic"),
			    	resultSet.getString("physicaltherapy"),
			    	resultSet.getString("bracing"),
			    	resultSet.getString("modalities"),
			    	resultSet.getString("supplementation"),
			    	resultSet.getString("hep"),
			    	resultSet.getString("radiographic"),
			    	resultSet.getString("mri"),
			    	resultSet.getString("scan"),
			    	resultSet.getString("conduction"),
			    	resultSet.getString("emg") ,
			    	resultSet.getString("outsiderefferal"),
			    	resultSet.getString("dc"),
			    	resultSet.getString("others"),
			    	resultSet.getString("othervalue"),
			    	resultSet.getString("signature")));
						
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
		return wristexam;

	}
	public int getnoofwristexam() {
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
		List<WristExam> wristexam = new ArrayList<WristExam>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from wristexam";
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