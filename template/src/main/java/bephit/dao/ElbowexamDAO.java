
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

import bephit.model.ParticipantsDetails;
import bephit.model.Elbowexam;
import bephit.model.ShoulderExam;



public class ElbowexamDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setElbowexam(Elbowexam elbowexam,String username)
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
	    	 String cmd="INSERT INTO `tbl_elbowexam`(username,`pname`,`date`,`muscle`,`swelling`,`dominanthand`,`allsoft`,`biceps`,`triceps`,`common`,`pronator`,`anconeus`,`commonextensors`,`othernotes`,`functionalrangeofmotion`,`orthopedic`,`flexionl`,`flexionr`,`mcll`,`mclr`,`extensionl`,`extensionr`,`lcll`,`lclr`,`pronationl`,`pronationr`,`varusl`,`varusr`,`suppinationl`,`suppinationr`,`mcl1l`,`mcl1r`,`tinnelsl`,`tinnelsr`,`ulttl`,`ulttr`,`neurologicaltest`,`c5l`,`c5r`,`c51l`,`c51r`,`c53l`,`c53r`,`c6l`,`c6r`,`c61l`,`c61r`,`c63l`,`c63r`,`c7l`,`c7r`,`c71l`,`c71r`,`c73l`,`c73r`,`c8l`,`c8r`,`c81l`,`c81r`,`t1l`,`t1r`,`t11l`,`t11r`,`overheadactivities`,`lifting`,`otherfunctional`,`break_text3`,`assessment`,`patientstatus`,`diagnosis1`,`diagnosis2`,`diagnosis3`,`diagnosis4`,`diagnosis5`,`diagnosis6`,`times`,`week`,`spinal`,`chiropractic`,`physical`,`orthotics`,`modalities`,`supplementation`,`hep`,`radiographic`,`mri`,`ctscan`,`nerve`,`emg`,`outside`,`dc`,`otheraddress`,`break_text4`,`sign`)VALUES ('"+username+"','"+elbowexam.getPname()+"','"+elbowexam.getDate()+"','"+elbowexam.getMuscle()+"','"+elbowexam.getSwelling()+"','"+elbowexam.getDominanthand()+"','"+elbowexam.getAllsoft()+"','"+elbowexam.getBiceps()+"','"+elbowexam.getTriceps()+"','"+elbowexam.getCommon()+"','"+elbowexam.getPronator()+"','"+elbowexam.getAnconeus()+"','"+elbowexam.getCommonextensors()+"','"+elbowexam.getOthernotes()+"','"+elbowexam.getFunctionalrangeofmotion()+"','"+elbowexam.getOrthopedic()+"','"+elbowexam.getFlexionl()+"','"+elbowexam.getFlexionr()+"','"+elbowexam.getMcll()+"','"+elbowexam.getMclr()+"','"+elbowexam.getExtensionl()+"','"+elbowexam.getExtensionr()+"','"+elbowexam.getLcll()+"','"+elbowexam.getLclr()+"','"+elbowexam.getPronationl()+"','"+elbowexam.getPronationr()+"','"+elbowexam.getVarusl()+"','"+elbowexam.getVarusr()+"','"+elbowexam.getSuppinationl()+"','"+elbowexam.getSuppinationr()+"','"+elbowexam.getMcl1l()+"','"+elbowexam.getMcl1r()+"','"+elbowexam.getTinnelsl()+"','"+elbowexam.getTinnelsr()+"','"+elbowexam.getUlttl()+"','"+elbowexam.getUlttr()+"','"+elbowexam.getNeurologicaltest()+"','"+elbowexam.getC5l()+"','"+elbowexam.getC5r()+"','"+elbowexam.getC51l()+"','"+elbowexam.getC51r()+"','"+elbowexam.getC53l()+"','"+elbowexam.getC53r()+"','"+elbowexam.getC6l()+"','"+elbowexam.getC6r()+"','"+elbowexam.getC61l()+"','"+elbowexam.getC61r()+"','"+elbowexam.getC63l()+"','"+elbowexam.getC63r()+"','"+elbowexam.getC7l()+"','"+elbowexam.getC7r()+"','"+elbowexam.getC71l()+"','"+elbowexam.getC71r()+"','"+elbowexam.getC73l()+"','"+elbowexam.getC73r()+"','"+elbowexam.getC8l()+"','"+elbowexam.getC8r()+"','"+elbowexam.getC81l()+"','"+elbowexam.getC81r()+"','"+elbowexam.getT1l()+"','"+elbowexam.getT1r()+"','"+elbowexam.getT11l()+"','"+elbowexam.getT11r()+"','"+elbowexam.getOverheadactivities()+"','"+elbowexam.getLifting()+"','"+elbowexam.getOtherfunctional()+"','"+elbowexam.getBreak_text3()+"','"+elbowexam.getAssessment()+"','"+elbowexam.getPatientstatus()+"','"+elbowexam.getDiagnosis1()+"','"+elbowexam.getDiagnosis2()+"','"+elbowexam.getDiagnosis3()+"','"+elbowexam.getDiagnosis4()+"','"+elbowexam.getDiagnosis5()+"','"+elbowexam.getDiagnosis6()+"','"+elbowexam.getTimes()+"','"+elbowexam.getWeek()+"','"+elbowexam.getSpinal()+"','"+elbowexam.getChiropractic()+"','"+elbowexam.getPhysical()+"','"+elbowexam.getOrthotics()+"','"+elbowexam.getModalities()+"','"+elbowexam.getSupplementation()+"','"+elbowexam.getHep()+"','"+elbowexam.getRadiographic()+"','"+elbowexam.getMri()+"','"+elbowexam.getCtscan()+"','"+elbowexam.getNerve()+"','"+elbowexam.getEmg()+"','"+elbowexam.getOutside()+"','"+elbowexam.getDc()+"','"+elbowexam.getOtheraddress()+"','"+elbowexam.getBreak_text4()+"','"+elbowexam.getSign()+"')";
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

	
public List<Elbowexam> getElbowexam(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Elbowexam> elbowexam = new ArrayList<Elbowexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_elbowexam");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			elbowexam.add( new Elbowexam(resultSet.getString("elbowexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"),resultSet.getString("dominanthand"),resultSet.getString("allsoft"),resultSet.getString("biceps"),resultSet.getString("triceps"),resultSet.getString("common"),resultSet.getString("pronator"),resultSet.getString("anconeus"),resultSet.getString("commonextensors"), resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("orthopedic"), resultSet.getString("flexionl"),resultSet.getString("flexionr"), resultSet.getString("mcll"),resultSet.getString("mclr"), resultSet.getString("extensionl"), resultSet.getString("extensionr"),  resultSet.getString("lcll"), resultSet.getString("lclr"),resultSet.getString("pronationl"), resultSet.getString("pronationr"),resultSet.getString("varusl"), resultSet.getString("varusr"),resultSet.getString("suppinationl"), resultSet.getString("suppinationr"),resultSet.getString("mcl1l"),resultSet.getString("mcl1r"),resultSet.getString("tinnelsl"), resultSet.getString("tinnelsr"), resultSet.getString("ulttl"),resultSet.getString("ulttl"),resultSet.getString("neurologicaltest"),resultSet.getString("c5l"),resultSet.getString("c5r"),resultSet.getString("c51l"), resultSet.getString("c51r"),resultSet.getString("c53l"),resultSet.getString("c53r"),resultSet.getString("c6l"),resultSet.getString("c6r"),resultSet.getString("c61l"), resultSet.getString("c61r"),resultSet.getString("c63l"),resultSet.getString("c63r"),resultSet.getString("c7l"),resultSet.getString("c7r"),resultSet.getString("c71l"), resultSet.getString("c71r"),resultSet.getString("c73l"),resultSet.getString("c73r"),resultSet.getString("c8l"),resultSet.getString("c8r"),resultSet.getString("c81l"), resultSet.getString("c81r"),resultSet.getString("t1l"),resultSet.getString("t1r"),resultSet.getString("t11l"), resultSet.getString("t11r"),resultSet.getString("overheadactivities"),resultSet.getString("lifting"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return elbowexam;
}

public List<Elbowexam> getElbow(String elbowexamid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Elbowexam> elbowexam = new ArrayList<Elbowexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_elbowexam WHERE elbowexamid='"+elbowexamid+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			elbowexam.add( new Elbowexam(resultSet.getString("elbowexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"),resultSet.getString("dominanthand"),resultSet.getString("allsoft"),resultSet.getString("biceps"),resultSet.getString("triceps"),resultSet.getString("common"),resultSet.getString("pronator"),resultSet.getString("anconeus"),resultSet.getString("commonextensors"), resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("orthopedic"), resultSet.getString("flexionl"),resultSet.getString("flexionr"), resultSet.getString("mcll"),resultSet.getString("mclr"), resultSet.getString("extensionl"), resultSet.getString("extensionr"),  resultSet.getString("lcll"), resultSet.getString("lclr"),resultSet.getString("pronationl"), resultSet.getString("pronationr"),resultSet.getString("varusl"), resultSet.getString("varusr"),resultSet.getString("suppinationl"), resultSet.getString("suppinationr"),resultSet.getString("mcl1l"),resultSet.getString("mcl1r"),resultSet.getString("tinnelsl"), resultSet.getString("tinnelsr"), resultSet.getString("ulttl"),resultSet.getString("ulttl"),resultSet.getString("neurologicaltest"),resultSet.getString("c5l"),resultSet.getString("c5r"),resultSet.getString("c51l"), resultSet.getString("c51r"),resultSet.getString("c53l"),resultSet.getString("c53r"),resultSet.getString("c6l"),resultSet.getString("c6r"),resultSet.getString("c61l"), resultSet.getString("c61r"),resultSet.getString("c63l"),resultSet.getString("c63r"),resultSet.getString("c7l"),resultSet.getString("c7r"),resultSet.getString("c71l"), resultSet.getString("c71r"),resultSet.getString("c73l"),resultSet.getString("c73r"),resultSet.getString("c8l"),resultSet.getString("c8r"),resultSet.getString("c81l"), resultSet.getString("c81r"),resultSet.getString("t1l"),resultSet.getString("t1r"),resultSet.getString("t11l"), resultSet.getString("t11r"),resultSet.getString("overheadactivities"),resultSet.getString("lifting"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return elbowexam;
}
public List<Elbowexam> getusernameElbow(String username){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Elbowexam> elbowexam = new ArrayList<Elbowexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_elbowexam WHERE username='"+username+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			elbowexam.add( new Elbowexam(resultSet.getString("elbowexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"),resultSet.getString("dominanthand"),resultSet.getString("allsoft"),resultSet.getString("biceps"),resultSet.getString("triceps"),resultSet.getString("common"),resultSet.getString("pronator"),resultSet.getString("anconeus"),resultSet.getString("commonextensors"), resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("orthopedic"), resultSet.getString("flexionl"),resultSet.getString("flexionr"), resultSet.getString("mcll"),resultSet.getString("mclr"), resultSet.getString("extensionl"), resultSet.getString("extensionr"),  resultSet.getString("lcll"), resultSet.getString("lclr"),resultSet.getString("pronationl"), resultSet.getString("pronationr"),resultSet.getString("varusl"), resultSet.getString("varusr"),resultSet.getString("suppinationl"), resultSet.getString("suppinationr"),resultSet.getString("mcl1l"),resultSet.getString("mcl1r"),resultSet.getString("tinnelsl"), resultSet.getString("tinnelsr"), resultSet.getString("ulttl"),resultSet.getString("ulttl"),resultSet.getString("neurologicaltest"),resultSet.getString("c5l"),resultSet.getString("c5r"),resultSet.getString("c51l"), resultSet.getString("c51r"),resultSet.getString("c53l"),resultSet.getString("c53r"),resultSet.getString("c6l"),resultSet.getString("c6r"),resultSet.getString("c61l"), resultSet.getString("c61r"),resultSet.getString("c63l"),resultSet.getString("c63r"),resultSet.getString("c7l"),resultSet.getString("c7r"),resultSet.getString("c71l"), resultSet.getString("c71r"),resultSet.getString("c73l"),resultSet.getString("c73r"),resultSet.getString("c8l"),resultSet.getString("c8r"),resultSet.getString("c81l"), resultSet.getString("c81r"),resultSet.getString("t1l"),resultSet.getString("t1r"),resultSet.getString("t11l"), resultSet.getString("t11r"),resultSet.getString("overheadactivities"),resultSet.getString("lifting"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return elbowexam;
}

public int updateelbowexam(Elbowexam elbowexam,String elbowexamid,String admin)
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
    	 System.out.println("updatepatient_id"+elbowexamid);
    	 System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_elbowexam SET pname='"+elbowexam.getPname()+"',date='"+elbowexam.getDate()+"',muscle='"+elbowexam.getMuscle()+"',swelling='"+elbowexam.getSwelling()+"',dominanthand='"+elbowexam.getDominanthand()+"',allsoft='"+elbowexam.getAllsoft()+"',biceps='"+elbowexam.getBiceps()+"',triceps='"+elbowexam.getTriceps()+"',common='"+elbowexam.getCommon()+"',pronator='"+elbowexam.getPronator()+"',anconeus='"+elbowexam.getAnconeus()+"',commonextensors='"+elbowexam.getCommonextensors()+"',othernotes='"+elbowexam.getOthernotes()+"',functionalrangeofmotion='"+elbowexam.getFunctionalrangeofmotion()+"',orthopedic='"+elbowexam.getOrthopedic()+"',flexionl='"+elbowexam.getFlexionl()+"',flexionr='"+elbowexam.getFlexionr()+"',mcll='"+elbowexam.getMcll()+"',mclr='"+elbowexam.getMclr()+"',extensionl='"+elbowexam.getExtensionl()+"',extensionr='"+elbowexam.getExtensionr()+"',lcll='"+elbowexam.getLcll()+"',lclr='"+elbowexam.getLclr()+"',pronationl='"+elbowexam.getPronationl()+"',pronationr='"+elbowexam.getPronationr()+"',varusl='"+elbowexam.getVarusl()+"',varusr='"+elbowexam.getVarusr()+"',suppinationl='"+elbowexam.getSuppinationl()+"',suppinationr='"+elbowexam.getSuppinationr()+"',mcl1l='"+elbowexam.getMcl1l()+"',mcl1r='"+elbowexam.getMcl1r()+"',tinnelsl='"+elbowexam.getTinnelsl()+"',tinnelsr='"+elbowexam.getTinnelsr()+"',ulttl='"+elbowexam.getUlttl()+"',ulttr='"+elbowexam.getUlttr()+"',neurologicaltest='"+elbowexam.getNeurologicaltest()+"',c5l='"+elbowexam.getC5l()+"',c5r='"+elbowexam.getC5r()+"',c51l='"+elbowexam.getC51l()+"',c51r='"+elbowexam.getC51r()+"',c53l='"+elbowexam.getC53l()+"',c53r='"+elbowexam.getC53r()+"',c6l='"+elbowexam.getC6l()+"',c6r='"+elbowexam.getC6r()+"',c61l='"+elbowexam.getC61l()+"',c61r='"+elbowexam.getC61r()+"',c63l='"+elbowexam.getC63r()+"',c7l='"+elbowexam.getC7l()+"',c7r='"+elbowexam.getC7r()+"',c71l='"+elbowexam.getC71l()+"',c71r='"+elbowexam.getC71r()+"',c73l='"+elbowexam.getC73l()+"',c73r='"+elbowexam.getC73r()+"',c8l='"+elbowexam.getC8l()+"',c8r='"+elbowexam.getC8r()+"',c81l='"+elbowexam.getC81l()+"',c81r='"+elbowexam.getC81r()+"',t1l='"+elbowexam.getT1l()+"',t1r='"+elbowexam.getT1r()+"',t11l='"+elbowexam.getT11l()+"',t11r='"+elbowexam.getT11r()+"',overheadactivities='"+elbowexam.getOverheadactivities()+"',lifting='"+elbowexam.getLifting()+"',otherfunctional='"+elbowexam.getOtherfunctional()+"',break_text3='"+elbowexam.getBreak_text3()+"',assessment='"+elbowexam.getAssessment()+"',patientstatus='"+elbowexam.getPatientstatus()+"',diagnosis1='"+elbowexam.getDiagnosis1()+"',diagnosis2='"+elbowexam.getDiagnosis2()+"',diagnosis3='"+elbowexam.getDiagnosis3()+"',diagnosis4='"+elbowexam.getDiagnosis4()+"',diagnosis5='"+elbowexam.getDiagnosis5()+"',diagnosis6='"+elbowexam.getDiagnosis6()+"',times='"+elbowexam.getTimes()+"',week='"+elbowexam.getWeek()+"',spinal='"+elbowexam.getSpinal()+"',chiropractic='"+elbowexam.getChiropractic()+"',physical='"+elbowexam.getPhysical()+"',orthotics='"+elbowexam.getOrthotics()+"',modalities='"+elbowexam.getModalities()+"',supplementation='"+elbowexam.getSupplementation()+"',hep='"+elbowexam.getHep()+"',radiographic='"+elbowexam.getRadiographic()+"',mri='"+elbowexam.getMri()+"',ctscan='"+elbowexam.getCtscan()+"',nerve='"+elbowexam.getNerve()+"',emg='"+elbowexam.getEmg()+"',outside='"+elbowexam.getOutside()+"',dc='"+elbowexam.getDc()+"',otheraddress='"+elbowexam.getOtheraddress()+"',break_text4='"+elbowexam.getBreak_text4()+"',sign='"+elbowexam.getSign()+"' WHERE elbowexamid='"+elbowexamid+"';";
    			
    			String Desc="Update elbowexam "+elbowexam.getPname();
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

public int deleteelbowexam(String elbowexamid){
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
    	 String cmd_getpatient_pname="select pname from tbl_elbowexam where elbowexamid='"+elbowexamid+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_elbowexam where elbowexamid='"+elbowexamid+"'");
			
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
public List<Elbowexam> getlimitedelbowexam(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Elbowexam> elbowexam = new ArrayList<Elbowexam>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_elbowexam order by pname asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			elbowexam.add( new Elbowexam(resultSet.getString("elbowexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"),resultSet.getString("dominanthand"),resultSet.getString("allsoft"),resultSet.getString("biceps"),resultSet.getString("triceps"),resultSet.getString("common"),resultSet.getString("pronator"),resultSet.getString("anconeus"),resultSet.getString("commonextensors"), resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("orthopedic"), resultSet.getString("flexionl"),resultSet.getString("flexionr"), resultSet.getString("mcll"),resultSet.getString("mclr"), resultSet.getString("extensionl"), resultSet.getString("extensionr"),  resultSet.getString("lcll"), resultSet.getString("lclr"),resultSet.getString("pronationl"), resultSet.getString("pronationr"),resultSet.getString("varusl"), resultSet.getString("varusr"),resultSet.getString("suppinationl"), resultSet.getString("suppinationr"),resultSet.getString("mcl1l"),resultSet.getString("mcl1r"),resultSet.getString("tinnelsl"), resultSet.getString("tinnelsr"), resultSet.getString("ulttl"),resultSet.getString("ulttl"),resultSet.getString("neurologicaltest"),resultSet.getString("c5l"),resultSet.getString("c5r"),resultSet.getString("c51l"), resultSet.getString("c51r"),resultSet.getString("c53l"),resultSet.getString("c53r"),resultSet.getString("c6l"),resultSet.getString("c6r"),resultSet.getString("c61l"), resultSet.getString("c61r"),resultSet.getString("c63l"),resultSet.getString("c63r"),resultSet.getString("c7l"),resultSet.getString("c7r"),resultSet.getString("c71l"), resultSet.getString("c71r"),resultSet.getString("c73l"),resultSet.getString("c73r"),resultSet.getString("c8l"),resultSet.getString("c8r"),resultSet.getString("c81l"), resultSet.getString("c81r"),resultSet.getString("t1l"),resultSet.getString("t1r"),resultSet.getString("t11l"), resultSet.getString("t11r"),resultSet.getString("overheadactivities"),resultSet.getString("lifting"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));				
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
	return elbowexam;

}
public int getnoofelbowexam() {
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
	List<Elbowexam> elbowexam = new ArrayList<Elbowexam>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_elbowexam";
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
