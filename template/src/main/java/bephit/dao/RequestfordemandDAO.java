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
import bephit.model.Faxcover;
import bephit.model.HippaPrivacy;
import bephit.model.Perrychiropractic;
import bephit.model.Requestfordemand;
import bephit.model.Symptom;



 
public class RequestfordemandDAO{
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setrequestfordemand(Requestfordemand requestfordemanddetails,String username)
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
	    	 
	    	 String cmd="INSERT INTO requestfordemand (username,faultinsurer,medpayinsurer,paidbenefits,bankrupt,treatment,other,txtare,copymedpay,copyform,copyassign,greencard,defaultattorney,clinicrep) VALUES ('"+username+"','"+requestfordemanddetails.getFaultinsurer()+"','"+requestfordemanddetails.getMedpayinsurer()+"','"+requestfordemanddetails.getPaidbenefits()+"','"+requestfordemanddetails.getBankrupt()+"','"+requestfordemanddetails.getTreatment()+"','"+requestfordemanddetails.getOther()+"','"+requestfordemanddetails.getTxtare()+"','"+requestfordemanddetails.getCopymedpay()+"','"+requestfordemanddetails.getCopyform()+"','"+requestfordemanddetails.getCopyassign()+"','"+requestfordemanddetails.getGreencard()+"','"+requestfordemanddetails.getDefaultattorney()+"','"+requestfordemanddetails.getClinicrep()+"')";
	    	    System.out.println("cmd insert value"+cmd);
	    	    statement.executeUpdate(cmd);
	    	    }
	    	    catch(Exception e){
	    	    	System.out.println("insert request for demand"+e.toString());
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
								resultSet.getString("faultinsurer"),
								resultSet.getString("medpayinsurer"),
								resultSet.getString("paidbenefits"),
								resultSet.getString("bankrupt"),
								resultSet.getString("treatment"),
								resultSet.getString("other"),
								resultSet.getString("txtare"),
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

	public List<Requestfordemand> getusernamerequestfordemand(String username){
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
								resultSet.getString("faultinsurer"),
								resultSet.getString("medpayinsurer"),
								resultSet.getString("paidbenefits"),
								resultSet.getString("bankrupt"),
								resultSet.getString("treatment"),
								resultSet.getString("other"),
								resultSet.getString("txtare"),
						resultSet.getString("copymedpay"),
						resultSet.getString("copyform"),
						resultSet.getString("copyassign"),
			    		resultSet.getString("greencard"),
			    		resultSet.getString("defaultattorney"),
						resultSet.getString("clinicrep")
			    		 ));
			//	System.out.println("Name::::::::::::::::::"+faxcover.get(0).getName());
			    	
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
	
	
	
	public List<Requestfordemand> getrequestfordemand(String username){
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
			resultSet = statement.executeQuery("select * from requestfordemand where username='"+username+"'");
			while(resultSet.next()){
				requestfordemand.add(new Requestfordemand
						(resultSet.getString("requestid"),
								resultSet.getString("faultinsurer"),
								resultSet.getString("medpayinsurer"),
								resultSet.getString("paidbenefits"),
								resultSet.getString("bankrupt"),
								resultSet.getString("treatment"),
								resultSet.getString("other"),
								resultSet.getString("txtare"),
						resultSet.getString("copymedpay"),
						resultSet.getString("copyform"),
						resultSet.getString("copyassign"),
			    		resultSet.getString("greencard"),
			    		resultSet.getString("defaultattorney"),
						resultSet.getString("clinicrep")
			    		 ));
			//	System.out.println("Name::::::::::::::::::"+requestfordemand.get(0).getFaultinsurer());
			    	
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
	    	 String cmd="update requestfordemand set faultinsurer='"+requestfordemand.getFaultinsurer()
	    			
	    +"',medpayinsurer='"+requestfordemand.getMedpayinsurer()
	    +"',paidbenefits='"+requestfordemand.getPaidbenefits()
	    +"',bankrupt='"+ requestfordemand.getBankrupt()
	    +"',treatment='"+ requestfordemand.getTreatment()
	    +"',other='"+ requestfordemand.getOther()
	    +"',txtare='"+ requestfordemand.getTxtare()
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