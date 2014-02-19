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
import bephit.forms.RequestfordemandForm;
import bephit.model.HippaPrivacy;
import bephit.model.Perrychiropractic;
import bephit.model.Requestfordemand;
import bephit.model.Symptom;



 
public class RequestfordemandDAO{
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setrequestfordemand(Requestfordemand requestfordemanddetails)
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
	    	 
	    	 String cmd="INSERT INTO requestfordemand (other1,other2,other3,other4,copymedpay,copyform,copyassign,greencard,defaultattorney,clinicrep) VALUES ('"+requestfordemanddetails.getOther1()+"','"+requestfordemanddetails.getOther2()+"','"+requestfordemanddetails.getOther3()+"','"+requestfordemanddetails.getOther4()+"','"+requestfordemanddetails.getCopymedpay()+"','"+requestfordemanddetails.getCopyform()+"','"+requestfordemanddetails.getCopyassign()+"','"+requestfordemanddetails.getGreencard()+"','"+requestfordemanddetails.getDefaultattorney()+"','"+requestfordemanddetails.getClinicrep()+"')";
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
	    	
	
	public int deleterequestfordemand(String requestid)
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
	    	 
	    	 String cmd="delete from requestfordemand where requestid='"+requestid+"'";
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

	
	public List<Requestfordemand> getrequestfordemand(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Requestfordemand> requestfordemand = new ArrayList<Requestfordemand>();
	    try{
			resultSet = statement.executeQuery("select * from requestfordemand");
			while(resultSet.next()){
				requestfordemand.add(new Requestfordemand
						(resultSet.getString("requestid"),
								resultSet.getString("other1"),
								resultSet.getString("other2"),
								resultSet.getString("other3"),
								resultSet.getString("other4"),
						resultSet.getString("copymedpay"),
						resultSet.getString("copyform"),
						resultSet.getString("copyassign"),
			    		resultSet.getString("greencard"),
			    		resultSet.getString("defaultattorney"),
						resultSet.getString("clinicrep")
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
	    return requestfordemand;
		
	}

	
	public List<Requestfordemand> getrequestfordemand(String requestid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Requestfordemand> requestfordemand = new ArrayList<Requestfordemand>();
	    try{
			resultSet = statement.executeQuery("select * from requestfordemand where requestid='"+requestid+"'");
			while(resultSet.next()){
				requestfordemand.add(new Requestfordemand
						(resultSet.getString("requestid"),
								resultSet.getString("other1"),
								resultSet.getString("other2"),
								resultSet.getString("other3"),
								resultSet.getString("other4"),
						resultSet.getString("copymedpay"),
						resultSet.getString("copyform"),
						resultSet.getString("copyassign"),
			    		resultSet.getString("greencard"),
			    		resultSet.getString("defaultattorney"),
						resultSet.getString("clinicrep")
			    		 ));
				System.out.println("Name::::::::::::::::::"+requestfordemand.get(0).getOther1());
			    	
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
	    return requestfordemand;
		
	}
	
	
	public int updaterequestfordemand(Requestfordemand requestfordemand,String requestid)
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
	    	 String cmd="update requestfordemand set other1='"+requestfordemand.getOther1()
	    			
	    +"',other2='"+requestfordemand.getOther2()
	    +"',other3='"+requestfordemand.getOther3()
	    +"',other4='"+ requestfordemand.getOther4()
	    +"',copymedpay='"+ requestfordemand.getCopymedpay()
	    +"',copyform='"+requestfordemand.getCopyform()
	    +"',copyassign='"+requestfordemand.getCopyassign()+"',greencard='"+requestfordemand.getGreencard()+"',defaultattorney='"+requestfordemand.getDefaultattorney()+"',clinicrep='"+requestfordemand.getClinicrep()+"' where requestid='"+requestid+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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