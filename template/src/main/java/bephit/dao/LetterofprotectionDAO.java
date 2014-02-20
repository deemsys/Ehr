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
 



public class LetterofprotectionDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setletterofprotection(Letterofprotection letterofprotectiondetails)
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
	    	 
	    	 String cmd="INSERT INTO `tbl_letterofprotection` (`date`,`myclient`,`dateofaccident`,`dear`,`truly`) VALUES ('"+letterofprotectiondetails.getDate()+"','"+letterofprotectiondetails.getMyclient()+"','"+letterofprotectiondetails.getDateofaccident()+"','"+letterofprotectiondetails.getDear()+"','"+letterofprotectiondetails.getTruly()+"')";
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
	public List<Letterofprotection> getletterofprotection(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Letterofprotection> letterofprotection = new ArrayList<Letterofprotection>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_letterofprotection");
			while(resultSet.next()){
				letterofprotection.add(new Letterofprotection
						(resultSet.getString("letterid"),
								resultSet.getString("date"),
						resultSet.getString("myclient"),
						resultSet.getString("dateofaccident"),
						resultSet.getString("dear"),
			    		resultSet.getString("truly")
			    		
						
			    		 ));
				System.out.println("letter"+letterofprotection.get(0).getDate());
			    	
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
	    return letterofprotection;
		
	}
	public List<Letterofprotection> getletterofprotection(String letterid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Letterofprotection> letterofprotection = new ArrayList<Letterofprotection>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_letterofprotection where letterid='"+letterid+"'");
			while(resultSet.next()){
				letterofprotection.add(new Letterofprotection
						(resultSet.getString("letterid"),
								resultSet.getString("date"),
						resultSet.getString("myclient"),
						resultSet.getString("dateofaccident"),
						resultSet.getString("dear"),
			    		resultSet.getString("truly")
			    		
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
	    return letterofprotection;
		
	}
	public int updateletterofprotection(Letterofprotection letterofprotectiondetails,String letterid)
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
	    	 String cmd="update tbl_letterofprotection set date='"+letterofprotectiondetails.getDate()
	    			
	    +"',myclient='"+letterofprotectiondetails.getMyclient()
	    +"',dateofaccident='"+letterofprotectiondetails.getDateofaccident()
	    +"',dear='"+ letterofprotectiondetails.getDear()
	    +"',truly='"+ letterofprotectiondetails.getTruly()+"' where letterid='"+letterid+"'";
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
	public int deleteletterofprotection(String letterid)
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
	    	 
	    	 String cmd="delete from tbl_letterofprotection where letterid='"+letterid+"'";
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