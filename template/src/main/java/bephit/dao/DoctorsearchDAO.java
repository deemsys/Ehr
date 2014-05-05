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
	public int Checkvalid(String username)
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
	    	String cmd="SELECT username from patient_details WHERE username='"+username+"'";
	    	 resultSet=statement.executeQuery(cmd);
	    	 while (resultSet.next())
	    	 {
	    		 username=resultSet.getString("username");
	    	
	    		 
	    	 }
	    	 String counts="";
	    	 countSet=statement.executeQuery("SELECT count(username) as count from patient_details WHERE username='"+username+"'");
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
	
	public int CheckDoctorsearch(String emailid)
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
	    	 String counts="";
	    	 countSet=statement.executeQuery("SELECT count(emailid) as count from tbl_doctorsearch WHERE emailid='"+emailid+"'");
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
	    	
    		 
	    //	 String cmd="INSERT INTO `tbl_doctorsearch`(`emailid`,`patientname`) VALUES ('"+doctorsearch.getEmailid()+"','"+doctorsearch.getPatientname()+"')";
	    	 //System.out.println(cmd);
	    	// statement.execute(cmd);	    	 
	    	
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
	public int getPatientdetails(String emailid,String patientname)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ResultSet resultSet1 = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try{
			 resultSet=statement.executeQuery("select emailid,patient_no from tbl_doctorsearch WHERE emailid='"+emailid+"' and patientname='"+patientname+"'");
    		 String  patient_no="";
			 while(resultSet.next())
    		 {
    			emailid=resultSet.getString("emailid"); 
    			patient_no=resultSet.getString("patient_no");
    		 }
			 
	    	 String patient_id="";
    		 String cmd2="SELECT Patient_id from patient_details WHERE emailid='"+emailid+"' and Name='"+patientname+"'";
    		 resultSet1=statement.executeQuery(cmd2);
    		 System.out.println(cmd2);
    		 while(resultSet1.next())
    		 {              
    			patient_id=resultSet1.getString("Patient_id"); 
    		 }
    		 String cmd3="update tbl_doctorsearch SET patient_id='"+patient_id+"' WHERE emailid='"+emailid+"' and patientname='"+patientname+"'";
    		 statement.execute(cmd3);
    		 System.out.println(cmd3);
    		
    		 
    		/*String cmd4="update tbl_soapnotes SET patient_no='"+patient_no+"' WHERE emailid='"+emailid+"'";*/
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
	public String getPatientid(String emailid,String name)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String patient_id="";
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try{
			 
    		 String cmd2="SELECT Patient_id from patient_details WHERE emailid='"+emailid+"' and Name='"+name+"'";
    		 resultSet=statement.executeQuery(cmd2);
    		 System.out.println(cmd2);
    		 while(resultSet.next())
    		 {              
    			patient_id=resultSet.getString("Patient_id"); 
    		 }   		
    		System.out.print(patient_id);
    		 
    		/*String cmd4="update tbl_soapnotes SET patient_no='"+patient_no+"' WHERE emailid='"+emailid+"'";*/
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
    		 
		return patient_id;
	
	}
	
	public int getUpdation(String emailid,String name)
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
	    	 String cmd1="UPDATE `tbl_doctorsearch` SET visit='1' where emailid='"+emailid+"' and patientname='"+name+"'";
	    	 System.out.println(cmd1);
	    	 statement.execute(cmd1);
	    	/* String cmd2="SELECT patient_id from `tbl_doctorsearch` where emailid='"+emailid+"'";
	    	 resultSet=statement.executeQuery(cmd2);
	    	 String patient_id="";
	    		if(resultSet.next())
	    		{
	    		patient_id=resultSet.getString("patient_id");
	    		}
	    		 System.out.println(cmd2);*/
	    		 
	    /*String cmd_role="insert into tbl_soapnotes(`patient_id`) values('"+patient_id+"')";
	    		 System.out.println(cmd_role);
		    	 statement.execute(cmd_ro*/
	    	 
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
		//		doctorsearch.add(new Doctorsearch(resultSet.getString("emailid"),resultSet.getString("patientname") ));
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
		public String getVisit(String emailid,String name){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			ResultSet visitSet=null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			/*List<Doctorsearch> doctorsearch = new ArrayList<Doctorsearch>();*/
			String visit="";		
			try{		    	
				
		    	String c2="SELECT visit from tbl_doctorsearch where emailid='"+emailid+"' and patientname='"+name+"'";
		    	 resultSet=statement.executeQuery(c2);
		    	 while(resultSet.next())
		    	 {
		    		 visit=resultSet.getString("visit");
		    	 }
		    	 System.out.println("visit.."+visit);
		    	
				}catch(Exception e){
		    	releaseResultSet(resultSet);
		    	releaseStatement(statement);
		    	releaseConnection(con);
		    }finally{
		    	releaseResultSet(resultSet);
		    	releaseStatement(statement);
		    	releaseConnection(con);	    	
		    }
			return visit;
			
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