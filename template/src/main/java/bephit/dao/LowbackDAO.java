
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
import java.util.logging.Logger;

import javax.sql.DataSource;

import bephit.model.ParticipantsDetails;
import bephit.model.Lowback;
import bephit.model.RadiologicReport;



public class LowbackDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setLowback(Lowback lowback,String username)
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
	    	 String cmd="INSERT INTO `tbl_lowback`(symptom,username,`pname`,`date`,`tolerate`,`withoutpain`,`withoutcausingpain`,`sleepingwell`,`canlift`,`normal`,`walkingdistance`,`withoutextrapain`,`cansit`,`rapidlybetter`,`score`,`section`,`adl`,`adl2`,`comment`)VALUES ('"+lowback.getSymptom()+"','"+username+"','"+lowback.getPname()+"','"+lowback.getDate()+"','"+lowback.getTolerate()+"','"+lowback.getWithoutpain()+"','"+lowback.getWithoutcausingpain()+"','"+lowback.getSleepingwell()+"','"+lowback.getCanlift()+"','"+lowback.getNormal()+"','"+lowback.getWalkingdistance()+"','"+lowback.getWithoutextrapain()+"','"+lowback.getCansit()+"','"+lowback.getRapidlybetter()+"','"+lowback.getScore()+"','"+lowback.getSection()+"','"+lowback.getAdl()+"','"+lowback.getAdl2()+"','"+lowback.getComment()+"')";
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

	
public List<Lowback> getLowback(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Lowback> lowback = new ArrayList<Lowback>();
    try{
		resultSet = statement.executeQuery("select * from tbl_lowback");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			lowback.add( new Lowback(resultSet.getString("lowbackno"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("tolerate"),resultSet.getString("withoutpain"), resultSet.getString("withoutcausingpain"), resultSet.getString("sleepingwell"), resultSet.getString("canlift"),resultSet.getString("normal"),resultSet.getString("walkingdistance"), resultSet.getString("withoutextrapain"),resultSet.getString("cansit"), resultSet.getString("rapidlybetter"),resultSet.getString("score"),resultSet.getString("section"), resultSet.getString("adl"),resultSet.getString("adl2"), resultSet.getString("comment")));
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
    return lowback;
}

public List<Lowback> getLowbackdetails(String symptom,String username){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Lowback> lowback = new ArrayList<Lowback>();
    try{
		resultSet = statement.executeQuery("select * from tbl_lowback WHERE symptom='"+symptom+"' and username='"+username+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			lowback.add( new Lowback(resultSet.getString("lowbackno"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("tolerate"),resultSet.getString("withoutpain"), resultSet.getString("withoutcausingpain"), resultSet.getString("sleepingwell"), resultSet.getString("canlift"),resultSet.getString("normal"),resultSet.getString("walkingdistance"), resultSet.getString("withoutextrapain"),resultSet.getString("cansit"), resultSet.getString("rapidlybetter"),resultSet.getString("score"),resultSet.getString("section"), resultSet.getString("adl"),resultSet.getString("adl2"), resultSet.getString("comment")));
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
    return lowback;
}
public List<Lowback> getLow(String lowbackno){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Lowback> lowback = new ArrayList<Lowback>();
    try{
		resultSet = statement.executeQuery("select * from tbl_lowback WHERE lowbackno='"+lowbackno+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			lowback.add( new Lowback(resultSet.getString("lowbackno"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("tolerate"),resultSet.getString("withoutpain"), resultSet.getString("withoutcausingpain"), resultSet.getString("sleepingwell"), resultSet.getString("canlift"),resultSet.getString("normal"),resultSet.getString("walkingdistance"), resultSet.getString("withoutextrapain"),resultSet.getString("cansit"), resultSet.getString("rapidlybetter"),resultSet.getString("score"),resultSet.getString("section"), resultSet.getString("adl"),resultSet.getString("adl2"), resultSet.getString("comment")));
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
    return lowback;
}
public int updatelowback(Lowback lowback,String lowbackno,String admin)
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
    	 System.out.println("updatepatient_id"+lowbackno);
    	 System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_lowback SET pname='"+lowback.getPname()+"',date='"+lowback.getDate()+"',tolerate='"+lowback.getTolerate()+"',withoutpain='"+lowback.getWithoutpain()+"',withoutcausingpain='"+lowback.getWithoutcausingpain()+"',sleepingwell='"+lowback.getSleepingwell()+"',canlift='"+lowback.getCanlift()+"',normal='"+lowback.getNormal()+"',walkingdistance='"+lowback.getWalkingdistance()+"',withoutextrapain='"+lowback.getWithoutextrapain()+"',cansit='"+lowback.getCansit()+"',rapidlybetter='"+lowback.getRapidlybetter()+"',score='"+lowback.getScore()+"',section='"+lowback.getSection()+"',adl='"+lowback.getAdl()+"',adl2='"+lowback.getAdl2()+"',comment='"+lowback.getComment()+"' WHERE lowbackno='"+lowbackno+"';";
    			
    			String Desc="Update lowback "+lowback.getPname();
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

public int deletelowback(String lowbackno){
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
    	 String cmd_getpatient_pname="select pname from tbl_lowback where lowbackno='"+lowbackno+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_lowback where lowbackno='"+lowbackno+"'");
			
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
public List<Lowback> getlimitedlowback(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Lowback> lowback = new ArrayList<Lowback>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_lowback order by pname asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			lowback.add( new Lowback(resultSet.getString("lowbackno"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("tolerate"),resultSet.getString("withoutpain"), resultSet.getString("withoutcausingpain"), resultSet.getString("sleepingwell"), resultSet.getString("canlift"),resultSet.getString("normal"),resultSet.getString("walkingdistance"), resultSet.getString("withoutextrapain"),resultSet.getString("cansit"), resultSet.getString("rapidlybetter"),resultSet.getString("score"),resultSet.getString("section"), resultSet.getString("adl"),resultSet.getString("adl2"), resultSet.getString("comment")));				
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
	return lowback;

}
public int getnooflowback() {
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
	List<Lowback> lowback = new ArrayList<Lowback>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_lowback";
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
