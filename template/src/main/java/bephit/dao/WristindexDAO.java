package bephit.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import bephit.model.*;
public class WristindexDAO
{
	
		private DataSource dataSource;
		 
		public void setDataSource(DataSource dataSource) {
			this.dataSource = dataSource;
		}
		public int insertwristindex(Wristindex wristindexdetails)
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
		    	String d="insert into wristindex(name,date,painintensity,work,numbness,driving,personal,sleeping,strength,house,writing,recreation,painscale,score,total)values('"
		    			+wristindexdetails.getName()
						+"','"+wristindexdetails.getDate()
						+"','"+wristindexdetails.getPainintensity()
						+"','"+wristindexdetails.getWork()
						+"','"+wristindexdetails.getNumbness()
						+"','"+wristindexdetails.getDriving()					
						+"','"+wristindexdetails.getPersonal()					
						+"','"+wristindexdetails.getSleeping()					
						+"','"+wristindexdetails.getStrength()
						+"','"+wristindexdetails.getHouse()
						+"','"+wristindexdetails.getWriting()
						+"','"+wristindexdetails.getRecreation()
						+"','"+wristindexdetails.getPainscale()
						+"','"+wristindexdetails.getScore()
						+"','"+wristindexdetails.getTotal()						
						+"')";
		    			System.out.print(d);
		    			statement.executeUpdate(d);
		    			
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