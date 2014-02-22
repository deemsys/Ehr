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
import bephit.forms.PerrychiropracticForm;
import bephit.model.HippaPrivacy;
import bephit.model.Perrychiropractic;
import bephit.model.Symptom;



 
public class PerrychiropracticDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setperrychiropractic(Perrychiropractic perrychiropracticdetails)
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
	    	 
	    	 String cmd="INSERT INTO perrychiropractic (insurance,address,address1,reg,nameofperson,dateofaccident,subject) VALUES ('"+perrychiropracticdetails.getInsurance()+"','"+perrychiropracticdetails.getAddress()+"','"+perrychiropracticdetails.getAddress1()+"','"+perrychiropracticdetails.getReg()+"','"+perrychiropracticdetails.getNameofperson()+"','"+perrychiropracticdetails.getDateofaccident()+"','"+perrychiropracticdetails.getSubject()+"')";
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
	    	
	public int deleteperrychiropractic(String perryid)
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
	    	 
	    	 String cmd="delete from perrychiropractic where perryid='"+perryid+"'";
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
	
	public List<Perrychiropractic> getperrychiropractic(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Perrychiropractic> perrychiropractic = new ArrayList<Perrychiropractic>();
	    try{
			resultSet = statement.executeQuery("select * from perrychiropractic");
			while(resultSet.next()){
				perrychiropractic.add(new Perrychiropractic
						(resultSet.getString("perryid"),
								resultSet.getString("insurance"),
						resultSet.getString("address"),
						resultSet.getString("address1"),
						resultSet.getString("reg"),
			    		resultSet.getString("nameofperson"),
			    		resultSet.getString("DateofAccident"),
						resultSet.getString("subject")
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
	    return perrychiropractic;
		
	}

	public List<Perrychiropractic> getperrychiropractic(String perryid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Perrychiropractic> perrychiropractic = new ArrayList<Perrychiropractic>();
	    try{
			resultSet = statement.executeQuery("select * from perrychiropractic where perryid='"+perryid+"'");
			while(resultSet.next()){
				perrychiropractic.add(new Perrychiropractic
						(resultSet.getString("perryid"),
								resultSet.getString("insurance"),
						resultSet.getString("address"),
						resultSet.getString("address1"),
						resultSet.getString("reg"),
			    		resultSet.getString("nameofperson"),
			    		resultSet.getString("DateofAccident"),
						resultSet.getString("subject")
			    		 ));
				System.out.println("Name::::::::::::::::::"+perrychiropractic.get(0).getNameofperson());
			    	
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
	    return perrychiropractic;
		
	}
	public int updateperrychiropractic(Perrychiropractic perrychiropractic,String perryid)
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
	    	 String cmd="update perrychiropractic set insurance='"+perrychiropractic.getInsurance()
	    			
	    +"',address='"+perrychiropractic.getAddress()
	    +"',address1='"+perrychiropractic.getAddress1()
	    +"',reg='"+ perrychiropractic.getReg()
	    +"',nameofperson='"+ perrychiropractic.getNameofperson()
	    +"',DateOfAccident='"+perrychiropractic.getDateofaccident()
	    +"',subject='"+perrychiropractic.getSubject()+"' where perryid='"+perryid+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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
	
	
	