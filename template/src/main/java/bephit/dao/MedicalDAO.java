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

import bephit.model.Hardshipagreement;
import bephit.model.Insuranceplan;
import bephit.model.MedicalRecords;

public class MedicalDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setMedicalDetails(MedicalRecords medicaldetails,Principal principal)
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
	    	 String cmd="INSERT INTO `Medical_Details`(username,`name`,`medicalinformation`,`patientsignature`) VALUES ('"+principal.getName()+"','"+medicaldetails.getName()+"','"+medicaldetails.getMedicalinformation()+"','"+medicaldetails.getPatientsignature()+"')";
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
	public List<MedicalRecords> getUsernameMedicalDetails(Principal principal){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<MedicalRecords> medical = new ArrayList<MedicalRecords>();
	    try{
			resultSet = statement.executeQuery("select * from Medical_Details where username='"+principal.getName()+"'");
			while(resultSet.next()){
				medical.add(new MedicalRecords(resultSet.getString("medical_no"),resultSet.getString("name"),
						resultSet.getString("medicalinformation"),
						resultSet.getString("patientsignature")
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
	    return medical;
		
	}
	public List<MedicalRecords> getMedicalDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<MedicalRecords> medical = new ArrayList<MedicalRecords>();
	    try{
			resultSet = statement.executeQuery("select * from Medical_Details");
			while(resultSet.next()){
				medical.add(new MedicalRecords(resultSet.getString("medical_no"),resultSet.getString("name"),
						resultSet.getString("medicalinformation"),
						resultSet.getString("patientsignature")
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
	    return medical;
		
	}
	
	public List<MedicalRecords> getMedicalDetails(String medical_no){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<MedicalRecords> medical = new ArrayList<MedicalRecords>();
	    try{
			resultSet = statement.executeQuery("select * from Medical_Details where medical_no='"+medical_no+"'");
			while(resultSet.next()){
				medical.add(new MedicalRecords(resultSet.getString("medical_no"),resultSet.getString("name"),
						resultSet.getString("medicalinformation"),
						resultSet.getString("patientsignature")
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
	    return medical;
		
	}
	
	public int updatemedical(MedicalRecords medicaldetails,String medical_no,String admin)
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
		//List<ParticipantsDetails> participants = new ArrayList<ParticipantsDetails>();
	    try{
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 //System.out.println(dateFormat.format(date));
	    	String cmd="UPDATE medical_details SET name='"+medicaldetails.getName()+"',medicalinformation='"+medicaldetails.getMedicalinformation()+"',patientsignature='"+medicaldetails.getPatientsignature()+"' WHERE medical_no='"+medical_no+"';";
	    	
	    	System.out.println(cmd);
	    	//System.out.println(cmd_activity);
			
	    	statement.execute(cmd);
			//statement.execute(cmd_activity);
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
	
	
	public int deletemedicalrecords(Principal principal){
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
			
				statement.execute("delete from medical_details where username='"+principal.getName()+"'");
				
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
	public int deletemedicalrecords(String medical_no){
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
	    	 String cmd_getpatient_name="select name from medical_details where medical_no='"+medical_no+"'";
	    	 String Desc="Delete report ";
	    	 resultSet=statement.executeQuery(cmd_getpatient_name);
				
				if(resultSet.next())
					Desc=Desc+resultSet.getString(1);
				statement.execute("delete from medical_details where medical_no='"+medical_no+"'");
				
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
	public List<MedicalRecords> getlimitedmedicalrecords(int page) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<MedicalRecords> medical = new ArrayList<MedicalRecords>();
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from medical_details order by name asc limit " + offset + ","+ limit+"" ;

			resultSet = statement.executeQuery(cmd);
			while (resultSet.next()) {
				medical.add(new MedicalRecords(resultSet.getString("medical_no"),resultSet.getString("name"),
						resultSet.getString("medicalinformation"),
						resultSet.getString("patientsignature")
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
		return medical;

	}
	public int getnoofmedicalrecords() {
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
		List<MedicalRecords> medical = new ArrayList<MedicalRecords>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from medical_details";
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
