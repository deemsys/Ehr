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

import bephit.model.Doctorsearch;


public class DoctorsearchDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int Checkvalid(String emailid,String patientname)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ResultSet countSet=null;
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
	    	String cmd="SELECT emailid,name from patient_details WHERE emailid='"+emailid+"' and name='"+patientname+"'";
	    	 resultSet=statement.executeQuery(cmd);
	    	 while (resultSet.next())
	    	 {
	    		 emailid=resultSet.getString("emailid");
	    		 patientname=resultSet.getString("name");
	    		 
	    	 }
	    	 String counts="";
	    	 countSet=statement.executeQuery("SELECT count(emailid) as count from patient_details WHERE emailid='"+emailid+"'");
	    	 while (countSet.next())
	    	 {
	    		 counts=countSet.getString("count");	    	
	    		 
	    	 }
	    
	    	 int count=Integer.parseInt(counts);
	    	 System.out.println("id count.."+count);
	    	 if(count>0)
	    	 {
	    		 return 1;
	    	 }
	    	 else
	    	 {
	    		 return 0;
	    	 }
	    	 
	    	 /*String cmd="INSERT INTO `tbl_doctorsearch`(`emailid`,`patientname`) VALUES ('"+doctorsearch.getEmailid()+"','"+doctorsearch.getPatientname()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);*/
	    	
	    	 
		 


	}
	    catch(Exception e){
	    	System.out.println(e.toString());
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    
	    	//return 0;
	    }finally{
	     	releaseStatement(statement);
	    	releaseConnection(con);	    
	    	
	    }
	    
    		
return 0;
	    
	}
	
	
	public int setDoctorsearch(Doctorsearch doctorsearch)
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
	    	 /*String cmd1="select emailid from patient_details";
	    	 resultSet=statement.executeQuery(cmd1);
	    	 String emailid="";
	    	 while (resultSet.next())
	    	 {
	    		 emailid=resultSet.getString("emailid");
	    		 
	    	 }
	    	 System.out.println("id.."+emailid);*/
	    	 
	    	 String cmd="INSERT INTO `tbl_doctorsearch`(`emailid`,`patientname`) VALUES ('"+doctorsearch.getEmailid()+"','"+doctorsearch.getPatientname()+"')";
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
	
	
	public List<Doctorsearch> getDoctorsearch(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Doctorsearch> doctorsearch = new ArrayList<Doctorsearch>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_doctorsearch");
			while(resultSet.next()){
				doctorsearch.add(new Doctorsearch(resultSet.getString("emailid"),resultSet.getString("patientname") ));
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
	    return doctorsearch;
		
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