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
		public List<Wristindex> getwristindexDetails(){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Wristindex> wristindex = new ArrayList<Wristindex>();
		    try{
				resultSet = statement.executeQuery("select * from wristindex");
				while(resultSet.next()){
					wristindex.add(new Wristindex(
							resultSet.getString("wristindexno"),
							resultSet.getString("name"),
							resultSet.getString("date"),
							resultSet.getString("painintensity"),
							resultSet.getString("work"),
							resultSet.getString("numbness"),
							resultSet.getString("driving"),
							resultSet.getString("personal"),
							resultSet.getString("sleeping"),
							resultSet.getString("strength"),
							resultSet.getString("house"),
							resultSet.getString("writing"),
							resultSet.getString("recreation"),
							resultSet.getString("painscale"),
							resultSet.getString("score"),
							resultSet.getString("total")
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
		    return wristindex;
			
		}
		public List<Wristindex> getwristindexDetails(String wristindexno){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Wristindex> wristindex = new ArrayList<Wristindex>();
		    try{
				resultSet = statement.executeQuery("select * from wristindex where wristindexno='"+wristindexno+"'");
				while(resultSet.next()){
					wristindex.add(new Wristindex(
							resultSet.getString("wristindexno"),
							resultSet.getString("name"),
							resultSet.getString("date"),
							resultSet.getString("painintensity"),
							resultSet.getString("work"),
							resultSet.getString("numbness"),
							resultSet.getString("driving"),
							resultSet.getString("personal"),
							resultSet.getString("sleeping"),
							resultSet.getString("strength"),
							resultSet.getString("house"),
							resultSet.getString("writing"),
							resultSet.getString("recreation"),
							resultSet.getString("painscale"),
							resultSet.getString("score"),
							resultSet.getString("total")
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
		    return wristindex;
			
		}
		public int updatewristindex(Wristindex wristindexdetails,String wristindexno)
		{
			Connection con = null;
			Statement statement = null;
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
		    	 //System.out.println(dateFormat.format(date));
		    	String cmd="UPDATE wristindex SET " +
		    			 "name='"+wristindexdetails.getName()
							+"',date='"+wristindexdetails.getDate()
							+"',painintensity='"+wristindexdetails.getPainintensity()
							+"',work='"+wristindexdetails.getWork()
							+"',numbness='"+wristindexdetails.getNumbness()
							+"',driving='"+wristindexdetails.getDriving()					
							+"',personal='"+wristindexdetails.getPersonal()					
							+"',sleeping='"+wristindexdetails.getSleeping()					
							+"',strength='"+wristindexdetails.getStrength()
							+"',house='"+wristindexdetails.getHouse()
							+"',writing='"+wristindexdetails.getWriting()
							+"',recreation='"+wristindexdetails.getRecreation()
							+"',painscale='"+wristindexdetails.getPainscale()
							+"',score='"+wristindexdetails.getScore()
							+"',total='"+wristindexdetails.getTotal()+"' WHERE wristindexno='"+wristindexno+"';";
		    	
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

		public int deleteassignment(String assignment_no){
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
		    	 String cmd_getpatient_name="select patientname from assignment_details where assignment_no='"+assignment_no+"'";
		    	 String Desc="Delete report ";
		    	 resultSet=statement.executeQuery(cmd_getpatient_name);
					
					if(resultSet.next())
						Desc=Desc+resultSet.getString(1);
					statement.execute("delete from assignment_details where assignment_no='"+assignment_no+"'");
					
					flag=1;
					
			    }catch(Exception e){
			    	System.out.println(e.toString());
			    	flag=0;
			    	releaseResultSet(resultSet);
			    	releaseStatement(statement);
			    	releaseConnection(con);
			    }finally{
			    	
			    	releaseResultSet(resultSet);
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