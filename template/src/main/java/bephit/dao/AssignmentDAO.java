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

import bephit.model.Assignment;

public class AssignmentDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setAssignmentDetails(Assignment assignmentdetails)
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
	    	 String cmd="INSERT INTO `Assignment_Details`(`Day`,`month`,`year`,`day1`,`month1`,`patientname`,`patientsign`,`patientdate`,`parentname`,`parentsign`,`parentdate`,`representative`,`representativedate`) VALUES ('"+assignmentdetails.getDay()+"','"+assignmentdetails.getMonth()+"','"+assignmentdetails.getYear()+"','"+assignmentdetails.getDay1()+"','"+assignmentdetails.getMonth1()+"','"+assignmentdetails.getPatientname()+"','"+assignmentdetails.getPatientsign()+"','"+assignmentdetails.getPatientdate()+"','"+assignmentdetails.getParentname()+"','"+assignmentdetails.getParentsign()+"','"+assignmentdetails.getParentdate()+"','"+assignmentdetails.getRepresentative()+"','"+assignmentdetails.getRepresentativedate()+"')";
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
	
	
	public List<Assignment> getAssignmentDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Assignment> assignment = new ArrayList<Assignment>();
	    try{
			resultSet = statement.executeQuery("select * from Assignment_Details");
			while(resultSet.next()){
				assignment.add(new Assignment(resultSet.getString("Day"),
			    		resultSet.getString("month"),
			    		resultSet.getString("year"),
			    		resultSet.getString("day1"),
			    		resultSet.getString("month1"),
			    		resultSet.getString("patientname"),
			    		resultSet.getString("patientsign"),
			    		resultSet.getString("Patientdate"),
			    		resultSet.getString("parentname"),
			    		resultSet.getString("parentsign"),
			    		resultSet.getString("parentdate"),
			    		resultSet.getString("representative"),
			    		resultSet.getString("representativedate")
			    	
			    	    ));
			    	
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
	    return assignment;
		
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
