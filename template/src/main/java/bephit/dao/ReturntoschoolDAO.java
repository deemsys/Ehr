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
import bephit.forms.ReturntoschoolForm;
//import bephit.model.Perrychiropractic;
//import bephit.model.HippaPrivacy;
import bephit.model.Returntoschool;
//import bephit.model.Symptom;



 
public class ReturntoschoolDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setreturntoschool(Returntoschool returntoschooldetails)
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
	    	 
	    	 String cmd="INSERT INTO returntoschool1 (date,name,from,to,capability,force,distance,sittime,standtime,repetitive,cause, recreate,fromdate,todate,returnto,ondate,diagnosis,dr) VALUES ('"+returntoschooldetails.getDate()+"','"+returntoschooldetails.getName()+"','"+returntoschooldetails.getFrom()+"','"+returntoschooldetails.getTo()+"','"+returntoschooldetails.getCapability()+"','"+returntoschooldetails.getForce()+"','"+returntoschooldetails.getDistance()+"','"+returntoschooldetails.getSittime()+"','"+returntoschooldetails.getStandtime()+"','"+returntoschooldetails.getRepetitive()+"','"+returntoschooldetails.getCause()+"','"+returntoschooldetails.getRecreate()+"','"+returntoschooldetails.getFromdate()+"','"+returntoschooldetails.getTodate()+"','"+returntoschooldetails.getReturnto()+"','"+returntoschooldetails.getOndate()+"','"+returntoschooldetails.getDiagnosis()+"','"+returntoschooldetails.getDr()+"')";
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
	
	
	
	
	public int deletereturntoschool(String schoolid)
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
	    	 
	    	 String cmd="delete from returntoschool1 where schoolid='"+schoolid+"'";
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
	
	
	
	
	

	public List<Returntoschool> getreturntoschool(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Returntoschool> returntoschool = new ArrayList<Returntoschool>();
	    try{
			resultSet = statement.executeQuery("select * from returntoschool1");
			while(resultSet.next()){
				returntoschool.add(new Returntoschool
						(resultSet.getString("schoolid"),
								resultSet.getString("date"),
						resultSet.getString("name"),
						resultSet.getString("from"),
						resultSet.getString("to"),
			    		resultSet.getString(" capability"),
			    		resultSet.getString("force"),
			    		resultSet.getString("distance"),
			    		resultSet.getString("sittime"),
			    		resultSet.getString(" standtime"),
			    		resultSet.getString("repetitive"),
			    		resultSet.getString("cause"),
			    		resultSet.getString(" recreate"),
			    		resultSet.getString("fromdate"),
			    		resultSet.getString("todate"),
						resultSet.getString("returnto"),
						resultSet.getString("ondate"),
						resultSet.getString("diagnosis"),
						resultSet.getString("dr")
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
	    return returntoschool;
		
	}
	
	
	
	public List<Returntoschool> getreturntoschool(String schoolid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Returntoschool> returntoschool = new ArrayList<Returntoschool>();
	    try{
			resultSet = statement.executeQuery("select * from returntoschool1 where schoolid='"+schoolid+"'");
			while(resultSet.next()){
				returntoschool.add(new Returntoschool
						(resultSet.getString("schoolid"),
								resultSet.getString("date"),
						resultSet.getString("name"),
						resultSet.getString("from"),
						resultSet.getString("to"),
			    		resultSet.getString(" capability"),
			    		resultSet.getString("force"),
			    		resultSet.getString("distance"),
			    		resultSet.getString("sittime"),
			    		resultSet.getString(" standtime"),
			    		resultSet.getString("repetitive"),
			    		resultSet.getString("cause"),
			    		resultSet.getString(" recreate"),
			    		resultSet.getString("fromdate"),
			    		resultSet.getString("todate"),
						resultSet.getString("returnto"),
						resultSet.getString("ondate"),
						resultSet.getString("diagnosis"),
						resultSet.getString("dr")
			    		 ));
				System.out.println("Name::::::::::::::::::"+returntoschool.get(0).getName());
			    	
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
	    return returntoschool;
		
	}
	
	
	
	public int updatereturntoschool(Returntoschool returntoschool,String schoolid)
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
	    	 String cmd="update returntoschool1 set date='"+returntoschool.getDate()
	    			
	    +"',name='"+returntoschool.getName()
	    +"',from='"+returntoschool.getFrom()
	    +"',to='"+ returntoschool.getTo()
	    +"',capability='"+ returntoschool.getCapability()
	    +"',force='"+returntoschool.getForce()
	    +"',distance='"+returntoschool.getDistance()
	    +"',sittime='"+returntoschool.getSittime()
	    +"',standtime='"+returntoschool.getStandtime()
	    +"',repetitive='"+returntoschool.getRepetitive()
	    +"',cause='"+returntoschool.getCause()
	    +"',recreate='"+returntoschool.getRecreate()
	    +"',fromdate='"+returntoschool.getFromdate()
	    +"',todate='"+returntoschool.getTodate()
	    +"',returnto='"+returntoschool.getReturnto()
	    +"',ondate='"+returntoschool.getOndate()
	    
	    +"',diagnosis='"+returntoschool.getDiagnosis()+"',dr='"+returntoschool.getDr()+"' where schoolid='"+schoolid+"'";
	   
	            
	      
	    	   	 		 
	    	 		 
	    	 		 
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
	
	
	    	