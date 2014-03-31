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
import bephit.forms.FormbillForm;
import bephit.model.Formbill;
import bephit.model.HippaPrivacy;
import bephit.model.Perrychiropractic;
import bephit.model.Symptom;



 
public class FormbillDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setformbill(Formbill formbilldetails)
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
	    	 
	    	 String cmd="INSERT INTO formbill (date,insurance,address1,name,address3,patientsname,address5,medicalfee,amount) VALUES ('"+formbilldetails.getDate()+"','"+formbilldetails.getInsurance()+"','"+formbilldetails.getAddress1()+"','"+formbilldetails.getName()+"','"+formbilldetails.getAddress3()+"','"+formbilldetails.getPatientsname()+"','"+formbilldetails.getAddress5()+"','"+formbilldetails.getMedicalfee()+"','"+formbilldetails.getAmount()+"')";
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
	
	
	public List<Formbill> getformbill(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Formbill> formbill = new ArrayList<Formbill>();
	    try{
			resultSet = statement.executeQuery("select * from formbill");
			while(resultSet.next()){
				formbill.add(new Formbill(resultSet.getString("formid"),
						resultSet.getString("date"),
						resultSet.getString("insurance"),
						resultSet.getString("address1"),
						
			    		resultSet.getString("name"),
			    		resultSet.getString("address3"),
						
						resultSet.getString("patientsname"),
						resultSet.getString("address5"),
						
						resultSet.getString("medicalfee"),
						resultSet.getString("amount")));
			    		 
			    	
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
	    return formbill;
		
	}

	
	
	
	
	
	
	
	public List<Formbill> getformbill(String formid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Formbill> formbill = new ArrayList<Formbill>();
	    try{
			resultSet = statement.executeQuery("select * from formbill where formid='"+formid+"'");
			while(resultSet.next()){
				formbill.add(new Formbill(resultSet.getString("formid"),
								resultSet.getString("date"),
						resultSet.getString("insurance"),
						resultSet.getString("address1"),
						
			    		resultSet.getString("name"),
			    		resultSet.getString("address3"),
						
						resultSet.getString("patientsname"),
						resultSet.getString("address5"),
						
						resultSet.getString("medicalfee"),
						resultSet.getString("amount")));
				System.out.println("Name::::::::::::::::::"+formbill.get(0).getName());
			    	
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
	    return formbill;
		
	}
	
	
	
	
	
	
	
	
	public int updateformbill(Formbill formbill,String formid)
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
	    	 String cmd="update formbill set date='"+formbill.getDate()+"', insurance='"+formbill.getInsurance()
	    			
	    +"',address1='"+formbill.getAddress1()
	    
	    +"',name='"+ formbill.getName()
	    +"',address3='"+ formbill.getAddress3()
	    
	    +"',patientsname='"+formbill.getPatientsname()
	    +"',address5='"+formbill.getAddress5()
	    
	    +"',medicalfee='"+formbill.getMedicalfee()
	   
	    +"',amount='"+formbill.getAmount()+"' where formid='"+formid+"'";
	   
	       
	     
	       
		  	 		 
	    	 		 
	    	 		 
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

	
	
	
	
	
	
	
	
	public int deleteformbill(String formid)
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
	    	 
	    	 String cmd="delete from formbill where formid='"+formid+"'";
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
	
	
	    	