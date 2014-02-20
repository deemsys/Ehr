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

import bephit.model.Letterofprotection;
import bephit.model.Workschool;
 



public class WorkschoolDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setworkschool(Workschool workschooldetails)
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
	    	 
	    	 String cmd="INSERT INTO `tbl_workschool` (`date`,`letter`,`beexcused`,`excused`,`beconfined`,`confined`,`lifting`,`lift`,`pushing`,`push`,`drive`,`sitting`,`sit`,`standing`,`stand`,`bend`,`entry`,`light`,`froms`,`tos`,`returns`,`returndate`,`diagnosis`) VALUES ('"+workschooldetails.getDate()+"','"+workschooldetails.getLetter()+"','"+workschooldetails.getBeexcused()+"','"+workschooldetails.getExcused()+"','"+workschooldetails.getBeconfined()+"','"+workschooldetails.getConfined()+"','"+workschooldetails.getLifting()+"','"+workschooldetails.getLift()+"','"+workschooldetails.getPushing()+"','"+workschooldetails.getPush()+"','"+workschooldetails.getDrive()+"','"+workschooldetails.getSitting()+"','"+workschooldetails.getSit()+"','"+workschooldetails.getStanding()+"','"+workschooldetails.getStand()+"','"+workschooldetails.getBend()+"','"+workschooldetails.getEntry()+"','"+workschooldetails.getLight()+"','"+workschooldetails.getFroms()+"','"+workschooldetails.getTos()+"','"+workschooldetails.getReturns()+"','"+workschooldetails.getReturndate()+"','"+workschooldetails.getDiagnosis()+"')";
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
	public List<Workschool> getworkschool(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Workschool> workschool = new ArrayList<Workschool>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_workschool");
			while(resultSet.next()){
				workschool.add(new Workschool
						(resultSet.getString("workid"),
								resultSet.getString("date"),
						resultSet.getString("letter"),
						resultSet.getString("beexcused"),
						resultSet.getString("excused"),
			    		resultSet.getString("beconfined"),
			    		resultSet.getString("confined"),
			    		resultSet.getString("lifting"),
								resultSet.getString("lift"),
						resultSet.getString("pushing"),
						resultSet.getString("push"),
						resultSet.getString("drive"),
			    		resultSet.getString("sitting"),
			    		resultSet.getString("sit"),
								resultSet.getString("standing"),
						resultSet.getString("stand"),
						resultSet.getString("bend"),
						resultSet.getString("entry"),
			    		resultSet.getString("light"),
			    		resultSet.getString("froms"),
								resultSet.getString("tos"),
						resultSet.getString("returns"),
						resultSet.getString("returndate"),
						resultSet.getString("diagnosis")
			    		
			    		
						
			    		 ));
			
			    	
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
	    return workschool;
		
	}
	
	public List<Workschool> getworkschool(String workid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Workschool> workschool = new ArrayList<Workschool>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_workschool where workid='"+workid+"'");
			while(resultSet.next()){
				workschool.add(new Workschool
						(resultSet.getString("workid"),
								resultSet.getString("date"),
						resultSet.getString("letter"),
						resultSet.getString("beexcused"),
						resultSet.getString("excused"),
			    		resultSet.getString("beconfined"),
			    		resultSet.getString("confined"),
			    		resultSet.getString("lifting"),
								resultSet.getString("lift"),
						resultSet.getString("pushing"),
						resultSet.getString("push"),
						resultSet.getString("drive"),
			    		resultSet.getString("sitting"),
			    		resultSet.getString("sit"),
								resultSet.getString("standing"),
						resultSet.getString("stand"),
						resultSet.getString("bend"),
						resultSet.getString("entry"),
			    		resultSet.getString("light"),
			    		resultSet.getString("froms"),
								resultSet.getString("tos"),
						resultSet.getString("returns"),
						resultSet.getString("returndate"),
						resultSet.getString("diagnosis")
			    		
			    		
						
			    		 ));
			
				
			    	
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
	    return workschool;
		
	}
	public int updateworkschool(Workschool workschooldetails,String workid)
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
	    	
	    	 String cmd="UPDATE tbl_workschool SET date='"+workschooldetails.getDate()+"',letter='"+workschooldetails.getLetter()+"',beexcused='"+workschooldetails.getBeexcused() +"',excused='"+ workschooldetails.getExcused()+"',beconfined='"+ workschooldetails.getBeconfined()+"',confined='"+ workschooldetails.getConfined()+"',lifting='"+ workschooldetails.getLifting()+"',lift='"+ workschooldetails.getLift()+"',pushing='"+ workschooldetails.getPushing()+"', push='"+ workschooldetails.getPush()+"',drive='"+ workschooldetails.getDrive()+"',sitting='"+ workschooldetails.getSitting()+"',sit='"+ workschooldetails.getSit()+"',standing='"+ workschooldetails.getStanding()+"',stand='"+ workschooldetails.getStand()+"',bend='"+ workschooldetails.getBend()+"',entry='"+ workschooldetails.getEntry()+"',light='"+ workschooldetails.getLight()+"',froms='"+ workschooldetails.getFroms()+"',tos='"+ workschooldetails.getTos()+"',returns='"+ workschooldetails.getReturns()+"',returndate='"+ workschooldetails.getReturndate()+"',diagnosis='"+ workschooldetails.getDiagnosis()+"' where workid='"+workid+"'";
	   	   
	    statement.execute(cmd);
	    System.out.println("cmd insert value"+cmd);
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
	public int deleteworkschool(String workid)
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
	    	 
	    	 String cmd="delete from tbl_workschool where workid='"+workid+"'";
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