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

import bephit.model.Assignment;
import bephit.model.Hardshipagreement;
import bephit.model.RadiologicReport;
import bephit.model.SoapNotes;

public class AssignmentDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setAssignmentDetails(Assignment assignmentdetails,Principal principal)
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
	    	 String cmd="INSERT INTO `assignment_details`(username,`day`,`month`,`year`,`day1`,`month1`,`patientname`,`patientsign`,`patientdate`,`parentname`,`parentsign`,`parentdate`,`representative`,`representativedate`) VALUES ('"+principal.getName()+"','"+assignmentdetails.getDay()+"','"+assignmentdetails.getMonth()+"','"+assignmentdetails.getYear()+"','"+assignmentdetails.getDay1()+"','"+assignmentdetails.getMonth1()+"','"+assignmentdetails.getPatientname()+"','"+assignmentdetails.getPatientsign()+"','"+assignmentdetails.getPatientdate()+"','"+assignmentdetails.getParentname()+"','"+assignmentdetails.getParentsign()+"','"+assignmentdetails.getParentdate()+"','"+assignmentdetails.getRepresentative()+"','"+assignmentdetails.getRepresentativedate()+"')";
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
			resultSet = statement.executeQuery("select * from assignment_details");
			while(resultSet.next()){
				assignment.add(new Assignment(resultSet.getString("assignment_no"),resultSet.getString("day"),
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
	

	public List<Assignment> getUsernameAssignment(String username){
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
			String cmd="select * from assignment_details where username='"+username+"'";
			
			resultSet = statement.executeQuery(cmd);
			while(resultSet.next()){
				assignment.add(new Assignment(resultSet.getString("assignment_no"),resultSet.getString("day"),
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
	public List<Assignment> getUsernameAssignment(Principal principal){
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
			String cmd="select * from assignment_details where username='"+principal.getName()+"'";
			
			resultSet = statement.executeQuery(cmd);
			while(resultSet.next()){
				assignment.add(new Assignment(resultSet.getString("assignment_no"),resultSet.getString("day"),
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
	public List<Assignment> getAssignment(String assignment_no){
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
			String cmd="select * from assignment_details where assignment_no='"+assignment_no+"'";
			System.out.println(assignment_no);
			resultSet = statement.executeQuery(cmd);
			while(resultSet.next()){
				assignment.add(new Assignment(resultSet.getString("assignment_no"),resultSet.getString("day"),
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
	public int updateassignment(Assignment assignment,String assignment_no,String admin)
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
	    	String cmd="UPDATE assignment_details SET day='"+assignment.getDay()+"',month='"+assignment.getMonth()+"',year='"+assignment.getYear()+"',day1='"+assignment.getDay1()+"',month1='"+assignment.getMonth1()+"',patientname='"+assignment.getPatientname()+"',patientsign='"+assignment.getPatientsign()+"',patientdate='"+assignment.getPatientdate()+"',parentname='"+assignment.getParentname()+"',parentsign='"+assignment.getParentsign()+"',parentdate='"+assignment.getParentdate()+"',representative='"+assignment.getRepresentative()+"',representativedate='"+assignment.getRepresentativedate()+"' WHERE assignment_no='"+assignment_no+"';";
	    			
	    			String Desc="Update assignment "+assignment.getPatientname();
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

	public int deleteassignment(String assignment_no){
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
	    	 String cmd_getpatient_name="select patientname from assignment_details where assignment_no='"+assignment_no+"'";
	    	 String Desc="Delete report ";
	    	 resultSet=statement.executeQuery(cmd_getpatient_name);
				
				if(resultSet.next())
					Desc=Desc+resultSet.getString(1);
				statement.execute("delete from assignment_details where assignment_no='"+assignment_no+"'");
				
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
	public int deleteusernameassignment(String username){
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
			
				statement.execute("delete from assignment_details where username='"+username+"'");
				
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
		
	public List<Assignment> getlimitedassignment(int page) {
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
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from assignment_details order by patientname asc limit " + offset + ","+ limit+"" ;
	
			resultSet = statement.executeQuery(cmd);
			while (resultSet.next()) {
				assignment.add(new Assignment(resultSet.getString("assignment_no"),resultSet.getString("day"),
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
		return assignment;

	}
	public int getnoofassignment() {
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
		List<Assignment> assignment = new ArrayList<Assignment>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from assignment_details";
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
