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
import bephit.model.Lettertopatients;;



 
public class LettertopatientsDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setlettertopatients(Lettertopatients lettertopatientsdetails)
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
	    	 
	    	 String cmd="INSERT INTO tbl_lettertopatient (re,ssn,claim,doi,adjuster,date1,date2,letter,sign) VALUES ('"+lettertopatientsdetails.getRe()+"','"+lettertopatientsdetails.getSsn()+"','"+lettertopatientsdetails.getClaim()+"','"+lettertopatientsdetails.getDoi()+"','"+lettertopatientsdetails.getAdjuster()+"','"+lettertopatientsdetails.getDate1()+"','"+lettertopatientsdetails.getDate2()+"','"+lettertopatientsdetails.getLetter()+"','"+lettertopatientsdetails.getSign()+"')";
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
	    	
	public List<Lettertopatients> getlettertopatients(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Lettertopatients> lettertopatients = new ArrayList<Lettertopatients>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_lettertopatient");
			while(resultSet.next()){
				lettertopatients.add(new Lettertopatients
						(resultSet.getString("letterid"),
						resultSet.getString("re"),
						resultSet.getString("ssn"),
						resultSet.getString("claim"),
						resultSet.getString("doi"),
						resultSet.getString("adjuster"),
						resultSet.getString("date1"),
						resultSet.getString("date2"),
						resultSet.getString("letter"),
						resultSet.getString("sign")
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
	    return lettertopatients;
		
	}
	public List<Lettertopatients> getlettertopatients(String letterid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Lettertopatients> lettertopatients = new ArrayList<Lettertopatients>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_lettertopatient where letterid='"+letterid+"'");
			while(resultSet.next()){
				lettertopatients.add(new Lettertopatients
						(resultSet.getString("letterid"),
								resultSet.getString("re"),
								resultSet.getString("ssn"),
								resultSet.getString("claim"),
								resultSet.getString("doi"),
								resultSet.getString("adjuster"),
								resultSet.getString("date1"),
								resultSet.getString("date2"),
								resultSet.getString("letter"),
								resultSet.getString("sign")
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
	    return lettertopatients;
		
	}
	
	public int updatelettertopatients(Lettertopatients lettertopatientsdetails,String letterid)
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
	    	 String cmd="update tbl_lettertopatient set re='"+lettertopatientsdetails.getRe()
		    			
	    			    +"',ssn='"+lettertopatientsdetails.getSsn()
	    			    +"',claim='"+lettertopatientsdetails.getClaim()
	    			    +"',doi='"+ lettertopatientsdetails.getDoi()
	    			    +"',adjuster='"+ lettertopatientsdetails.getAdjuster()
	    			    +"',date1='"+ lettertopatientsdetails.getDate1()
	    			    +"',date2='"+ lettertopatientsdetails.getDate2()
	    			    +"',letter='"+ lettertopatientsdetails.getLetter()
	    			    +"',sign='"+ lettertopatientsdetails.getSign()+"' where letterid='"+letterid+"'";			

	    
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
	
	public int deletelettertopatients(String letterid)
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
	    	 
	    	 String cmd="delete from tbl_lettertopatient where letterid='"+letterid+"'";
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
	
	
	