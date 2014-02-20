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
import bephit.forms.PimedpayForm;
//import bephit.model.HippaPrivacy;
import bephit.model.Pimedpay;
//import bephit.model.Symptom;



 
public class PimedpayDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setpimedpay(Pimedpay pimedpaydetails)
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
	    	 
	    	 String cmd="INSERT INTO pimedpay (insurance,address,reg,nameofperson,dateofaccident,subject) VALUES ('"+pimedpaydetails.getInsurance()+"','"+pimedpaydetails.getAddress()+"','"+pimedpaydetails.getReg()+"','"+pimedpaydetails.getNameofperson()+"','"+pimedpaydetails.getDateofaccident()+"','"+pimedpaydetails.getSubject()+"')";
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
	    	
	public int deletepimedpay(String medpayid)
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
	    	 
	    	 String cmd="delete from  pimedpay  where  medpayid='"+ medpayid+"'";
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
	
	public List<Pimedpay> getpimedpay(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Pimedpay> pimedpay = new ArrayList<Pimedpay>();
	    try{
			resultSet = statement.executeQuery("select * from pimedpay");
			while(resultSet.next()){
				pimedpay.add(new Pimedpay
						(resultSet.getString("medpayid"),
								resultSet.getString("insurance"),
						resultSet.getString("address"),
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
	    return pimedpay;
		
	}

	public List<Pimedpay> getpimedpay(String medpayid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Pimedpay> pimedpay = new ArrayList<Pimedpay>();
	    try{
			resultSet = statement.executeQuery("select * from pimedpay where medpayid='"+medpayid+"'");
			while(resultSet.next()){
				pimedpay.add(new Pimedpay
						(resultSet.getString("medpayid"),
								resultSet.getString("insurance"),
						resultSet.getString("address"),
						resultSet.getString("reg"),
			    		resultSet.getString("nameofperson"),
			    		resultSet.getString("DateofAccident"),
						resultSet.getString("subject")
			    		 ));
				System.out.println("Name::::::::::::::::::"+pimedpay.get(0).getNameofperson());
			    	
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
	    return pimedpay;
		
	}
	public int updatepimedpay(Pimedpay pimedpay,String medpayid)
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
	    	 String cmd="update pimedpay set insurance='"+pimedpay.getInsurance()
	    			
	    +"',address='"+pimedpay.getAddress()
	    //+"',address1='"+perrychiropractic.getAddress1()
	    +"',reg='"+ pimedpay.getReg()
	    +"',nameofperson='"+ pimedpay.getNameofperson()
	    +"',DateOfAccident='"+pimedpay.getDateofaccident()
	    +"',subject='"+pimedpay.getSubject()
	    +"' where medpayid='"+medpayid+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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
	
	
	