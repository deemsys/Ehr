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

import bephit.model.*;


public class CopyofrequestDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int insertcopy(Copyofrequest copyofrequest,String username)
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
	    	 String cmd="INSERT INTO `tbl_copyofrequest`(username,`patient`,`address`,`regarding`,`dateofaccident`,`claimnumber`,`todaydate`,`dear`,`sign`)VALUES ('"+username+"','"+copyofrequest.getPatient()+"','"+copyofrequest.getAddress()+"','"+copyofrequest.getRegarding()+"','"+copyofrequest.getDateofaccident()+"','"+copyofrequest.getClaimnumber()+"','"+copyofrequest.getTodaydate()+"','"+copyofrequest.getDear()+"','"+copyofrequest.getSign()+"')";
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
	public List<Copyofrequest> viewcopyrequest(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Copyofrequest> copyofrequest = new ArrayList<Copyofrequest>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_copyofrequest");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				copyofrequest.add( new Copyofrequest(resultSet.getString("copyofrequestno"),resultSet.getString("patient"), resultSet.getString("address"), resultSet.getString("regarding"), resultSet.getString("dateofaccident"), resultSet.getString("claimnumber"), resultSet.getString("todaydate"), resultSet.getString("dear"), resultSet.getString("sign")));
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
	    return copyofrequest;
	}
	
	public List<Copyofrequest> getusernamecopyrequest(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Copyofrequest> copyofrequest = new ArrayList<Copyofrequest>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_copyofrequest where username='"+username+"'");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				copyofrequest.add( new Copyofrequest(resultSet.getString("copyofrequestno"),resultSet.getString("patient"), resultSet.getString("address"), resultSet.getString("regarding"), resultSet.getString("dateofaccident"), resultSet.getString("claimnumber"), resultSet.getString("todaydate"), resultSet.getString("dear"), resultSet.getString("sign")));
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
	    return copyofrequest;
	}
	
	public List<Copyofrequest> viewallcopyrequest(String copyofrequestno){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Copyofrequest> copyofrequest = new ArrayList<Copyofrequest>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_copyofrequest where copyofrequestno='"+copyofrequestno+"'");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				copyofrequest.add( new Copyofrequest(resultSet.getString("copyofrequestno"),resultSet.getString("patient"), resultSet.getString("address"), resultSet.getString("regarding"), resultSet.getString("dateofaccident"), resultSet.getString("claimnumber"), resultSet.getString("todaydate"), resultSet.getString("dear"), resultSet.getString("sign")));
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
	    return copyofrequest;
	}
	public int updatecopyofrequest(Copyofrequest copyofrequest,String copyofrequestno,String admin)
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
	    	String cmd="UPDATE tbl_copyofrequest SET patient='"+copyofrequest.getPatient()+"',address='"+copyofrequest.getAddress()+"',regarding='"+copyofrequest.getRegarding()+"',dateofaccident='"+copyofrequest.getDateofaccident()+"',claimnumber='"+copyofrequest.getClaimnumber()+"',todaydate='"+copyofrequest.getTodaydate()+"',dear='"+copyofrequest.getDear()+"',sign='"+copyofrequest.getSign()+"' WHERE copyofrequestno='"+copyofrequestno+"';";
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
	
	public int deletecopyofrequest(String copyofrequestno){
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
	    	 String cmd_getpatient_pname="select patient from tbl_copyofrequest where copyofrequestno='"+copyofrequestno+"'";
	    	 String Desc="Delete report ";
	    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
				
				if(resultSet.next())
					Desc=Desc+resultSet.getString(1);
				statement.execute("delete from tbl_copyofrequest where copyofrequestno='"+copyofrequestno+"'");
				
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
	public List<Copyofrequest> getlimitedcopyofrequest(int page) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Copyofrequest> copyofrequest = new ArrayList<Copyofrequest>();
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from tbl_copyofrequest order by patient asc limit " + offset + ","+ limit+"" ;
	
			resultSet = statement.executeQuery(cmd);
			while(resultSet.next()){
				copyofrequest.add( new Copyofrequest(resultSet.getString("copyofrequestno"),resultSet.getString("patient"), resultSet.getString("address"), resultSet.getString("regarding"), resultSet.getString("dateofaccident"), resultSet.getString("claimnumber"), resultSet.getString("todaydate"), resultSet.getString("dear"), resultSet.getString("sign")));
				}
				
			} catch (Exception e) {
			/*logger.info(e.toString());*/
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		} finally{
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		}
		return copyofrequest;

	}
	public int getnoofcopyofrequest() {
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
		List<Copyofrequest> copyofrequest = new ArrayList<Copyofrequest>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from tbl_copyofrequest";
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