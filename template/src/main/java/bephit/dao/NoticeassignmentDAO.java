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

import bephit.model.Lettertopatients;
import bephit.model.Noticeassignment;



 
public class NoticeassignmentDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setnoticeassignment(Noticeassignment noticeassignmentdetails)
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
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 
	    	 String cmd="INSERT INTO noticeassignment (nameofins,nameofattorney,address1,address2,regarding,patientname,dateofaccident,todaysdate,letter,letter1,treatingphysician) VALUES ('"+noticeassignmentdetails.getNameofins()+"','"+noticeassignmentdetails.getNameofattorney()+"','"+noticeassignmentdetails.getAddress1()+"','"+noticeassignmentdetails.getAddress2()+"','"+noticeassignmentdetails.getRegarding()+"','"+noticeassignmentdetails.getPatientname()+"','"+noticeassignmentdetails.getDateofaccident()+"','"+noticeassignmentdetails.getTodaysdate()+"','"+noticeassignmentdetails.getLetter()+"','"+noticeassignmentdetails.getLetter1()+"','"+noticeassignmentdetails.getTreatingphysician()+"')";
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
	    	

	
	public List<Noticeassignment> getnoticeassignment(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Noticeassignment> noticeassignment = new ArrayList<Noticeassignment>();
	    try{
			resultSet = statement.executeQuery("select * from noticeassignment");
			while(resultSet.next()){
				noticeassignment.add(new Noticeassignment
						(resultSet.getString("noticeid"),
								resultSet.getString("nameofins"),
								resultSet.getString("nameofattorney"),
								resultSet.getString("address1"),
								resultSet.getString("address2"),
								
								resultSet.getString("regarding"),
								resultSet.getString("patientname"),
								resultSet.getString("dateofaccident"),
								resultSet.getString("todaysdate"),
								resultSet.getString("letter"),
								resultSet.getString("letter1"),
								resultSet.getString("treatingphysician")
			    		
						
			    		 ));
			
				
			    	
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
	    return noticeassignment;
		
	} 	
	public List<Noticeassignment> getnoticeassignment(String noticeid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Noticeassignment> noticeassignment = new ArrayList<Noticeassignment>();
	    try{
			resultSet = statement.executeQuery("select * from noticeassignment where noticeid='"+noticeid+"'");
			while(resultSet.next()){
				noticeassignment.add(new Noticeassignment
						(resultSet.getString("noticeid"),
								resultSet.getString("nameofins"),
								resultSet.getString("nameofattorney"),
								resultSet.getString("address1"),
								resultSet.getString("address2"),
								
								resultSet.getString("regarding"),
								resultSet.getString("patientname"),
								resultSet.getString("dateofaccident"),
								resultSet.getString("todaysdate"),
								resultSet.getString("letter"),
								resultSet.getString("letter1"),
								resultSet.getString("treatingphysician")
			    		
						
			    		 ));
			
				
				
			    	
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
	    return noticeassignment;
		
	}
	public int updatenoticeassignment(Noticeassignment noticeassignmentdetails,String noticeid)
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
	    	String cmd="update noticeassignment set nameofins='"+noticeassignmentdetails.getNameofins()
    			
    +"',nameofattorney='"+noticeassignmentdetails.getNameofattorney()
    +"',address1='"+noticeassignmentdetails.getAddress1()
    +"',address2='"+noticeassignmentdetails.getAddress2()
   
    
    +"',regarding='"+ noticeassignmentdetails.getRegarding()
    +"',patientname='"+ noticeassignmentdetails.getPatientname()
    +"', dateofaccident='"+ noticeassignmentdetails.getDateofaccident()
   +"', todaysdate='"+ noticeassignmentdetails.getTodaysdate()
   +"', letter='"+ noticeassignmentdetails.getLetter()
   +"', letter1='"+ noticeassignmentdetails.getLetter1()
   +"', treatingphysician='"+ noticeassignmentdetails.getTreatingphysician()+"'where noticeid='"+noticeid+"'";
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
	
	public int deletenoticeassignment(String noticeid)
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
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 
	    	 String cmd="delete from noticeassignment where noticeid='"+noticeid+"'";
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
	
	
	