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

import bephit.model.Perrychiropractic;
import bephit.model.Updateletter;;



 
public class UpdateletterDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setupdateletter(Updateletter updateletterdetails,String username)
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
	    	 
	    	 String cmd="INSERT INTO updateletter (username,toattorney1,toattorney2,toattorney3,reg,injury,todaydate) VALUES ('"+username+"','"+updateletterdetails.getToattorney1()+"','"+updateletterdetails.getToattorney2()+"','"+updateletterdetails.getToattorney3()+"','"+updateletterdetails.getReg()+"','"+updateletterdetails.getInjury()+"','"+updateletterdetails.getTodaydate()+"')";
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
	    	

	public int deleteupdateletter(String updateid)
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
	    	 
	    	 String cmd="delete from updateletter where updateid='"+updateid+"'";
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
	
	
	
	public List<Updateletter> getupdateletter(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Updateletter> updateletter = new ArrayList<Updateletter>();
	    try{
			resultSet = statement.executeQuery("select * from updateletter");
			while(resultSet.next()){
				updateletter.add(new Updateletter
						(resultSet.getString("updateid"),
								resultSet.getString("toattorney1"),
						resultSet.getString("toattorney2"),
						resultSet.getString("toattorney3"),
						resultSet.getString("reg"),
			    		resultSet.getString("injury"),
			    		resultSet.getString("todaydate")
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
	    return updateletter;
		
	}

	
	
	public List<Updateletter> getupdateletter(String updateid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Updateletter> updateletter = new ArrayList<Updateletter>();
	    try{
			resultSet = statement.executeQuery("select * from updateletter where updateid='"+updateid+"'");
			while(resultSet.next()){
				updateletter.add(new Updateletter
						(resultSet.getString("updateid"),
								resultSet.getString("toattorney1"),
								resultSet.getString("toattorney2"),
								resultSet.getString("toattorney3"),
								resultSet.getString("reg"),
					    		resultSet.getString("injury"),
					    		resultSet.getString("todaydate")
			    		 ));
				System.out.println("Name::::::::::::::::::"+updateletter.get(0).getToattorney1());
			    	
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
	    return updateletter;
		
	}
	public List<Updateletter> getusernameupdateletter(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Updateletter> updateletter = new ArrayList<Updateletter>();
	    try{
			resultSet = statement.executeQuery("select * from updateletter where username='"+username+"'");
			while(resultSet.next()){
				updateletter.add(new Updateletter
						(resultSet.getString("updateid"),
								resultSet.getString("toattorney1"),
								resultSet.getString("toattorney2"),
								resultSet.getString("toattorney3"),
								resultSet.getString("reg"),
					    		resultSet.getString("injury"),
					    		resultSet.getString("todaydate")
			    		 ));
				//System.out.println("Name::::::::::::::::::"+updateletter.get(0).getToattorney1());
			    	
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
	    return updateletter;
		
	}
	public int updateupdateletter(Updateletter updateletter,String updateid)
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
	    	 String cmd="update updateletter set toattorney1='"+updateletter.getToattorney1()
	    			
	    +"',toattorney2='"+updateletter.getToattorney2()
	    +"',toattorney3='"+updateletter.getToattorney3()
	    +"',reg='"+ updateletter.getReg()
	    +"',injury='"+ updateletter.getInjury()
	    +"',todaydate='"+updateletter.getTodaydate()
	    +"' where updateid='"+updateid+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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
	
	
	