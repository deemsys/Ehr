package bephit.dao;
import java.security.Principal;
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
public class OswestryDAO
{
	
		private DataSource dataSource;
		 
		public void setDataSource(DataSource dataSource) {
			this.dataSource = dataSource;
		}
		public int insertoswestryindex(Oswestry oswestryindexdetails,String username)
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
		    	String d="insert into oswestryindex(symptom,username,painintensity,standing,personal,sleeping,lifting,life,walking,social,sitting,traveling,comments,name,date,scores,painscale,painscale1,job,joboptional,work,worka,workb,workc,sport,sportoptional,instrument,instrumenta,instrumentb,instrumentc)values('"
		    			+oswestryindexdetails.getSymptom()			
		    		    +"','"+username
		    			+"','"+oswestryindexdetails.getPainintensity()			
		    		    +"','"+oswestryindexdetails.getStanding()
						+"','"+oswestryindexdetails.getPersonal()
						+"','"+oswestryindexdetails.getSleeping()						
						+"','"+oswestryindexdetails.getLifting()					
						+"','"+oswestryindexdetails.getLife()					
						+"','"+oswestryindexdetails.getWalking()					
						+"','"+oswestryindexdetails.getSocial()
						+"','"+oswestryindexdetails.getSitting()
						+"','"+oswestryindexdetails.getTraveling()					
						+"','"+oswestryindexdetails.getComments()
						+"','"+oswestryindexdetails.getName()
						+"','"+oswestryindexdetails.getDate()
						+"','"+oswestryindexdetails.getScores()
						+"','"+oswestryindexdetails.getPainscale()
						+"','"+oswestryindexdetails.getPainscale1()
						+"','"+oswestryindexdetails.getJob()
						+"','"+oswestryindexdetails.getJoboptional()
						+"','"+oswestryindexdetails.getWork()
						+"','"+oswestryindexdetails.getWorka()
						+"','"+oswestryindexdetails.getWorkb()
						+"','"+oswestryindexdetails.getWorkc()
						+"','"+oswestryindexdetails.getSport()
						+"','"+oswestryindexdetails.getSportoptional()
						+"','"+oswestryindexdetails.getInstrument()
						+"','"+oswestryindexdetails.getInstrumenta()
						+"','"+oswestryindexdetails.getInstrumentb()
						+"','"+oswestryindexdetails.getInstrumentc()						
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
		public List<Oswestry> getoswestryindexDetails(){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Oswestry> oswestryindex = new ArrayList<Oswestry>();
		    try{
				resultSet = statement.executeQuery("select * from oswestryindex");
				while(resultSet.next()){
					oswestryindex.add(new Oswestry(
							resultSet.getString("oswestryno"),
							resultSet.getString("painintensity"),
							resultSet.getString("standing"),
							resultSet.getString("personal"),
							resultSet.getString("sleeping"),
							resultSet.getString("lifting"),
							resultSet.getString("life"),
							resultSet.getString("walking"),
							resultSet.getString("social"),
							resultSet.getString("sitting"),
							resultSet.getString("traveling"),
							resultSet.getString("comments"),
							resultSet.getString("name"),
							resultSet.getString("date"),
							resultSet.getString("scores"),
							resultSet.getString("painscale"),
							resultSet.getString("painscale1"),
							resultSet.getString("job"),
							resultSet.getString("joboptional"),
							resultSet.getString("work"),
							resultSet.getString("worka"),
							resultSet.getString("workb"),
							resultSet.getString("workc"),
							resultSet.getString("sport"),
							resultSet.getString("sportoptional"),
							resultSet.getString("instrument"),
							resultSet.getString("instrumenta"),
							resultSet.getString("instrumentb"),
							resultSet.getString("instrumentc")));
				    	
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
		    return oswestryindex;
			
		}
		public List<Oswestry> getoswestryindexDetails(String oswestryindexno){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Oswestry> oswestryindex = new ArrayList<Oswestry>();
		    try{
				resultSet = statement.executeQuery("select * from oswestryindex where oswestryno='"+oswestryindexno+"'");
				while(resultSet.next()){
					oswestryindex.add(new Oswestry(
							resultSet.getString("oswestryno"),
							resultSet.getString("painintensity"),
							resultSet.getString("standing"),
							resultSet.getString("personal"),
							resultSet.getString("sleeping"),
							resultSet.getString("lifting"),
							resultSet.getString("life"),
							resultSet.getString("walking"),
							resultSet.getString("social"),
							resultSet.getString("sitting"),
							resultSet.getString("traveling"),
							resultSet.getString("comments"),
							resultSet.getString("name"),
							resultSet.getString("date"),
							resultSet.getString("scores"),
							resultSet.getString("painscale"),
							resultSet.getString("painscale1"),
							resultSet.getString("job"),
							resultSet.getString("joboptional"),
							resultSet.getString("work"),
							resultSet.getString("worka"),
							resultSet.getString("workb"),
							resultSet.getString("workc"),
							resultSet.getString("sport"),
							resultSet.getString("sportoptional"),
							resultSet.getString("instrument"),
							resultSet.getString("instrumenta"),
							resultSet.getString("instrumentb"),
							resultSet.getString("instrumentc")));
				    			    	
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
		    return oswestryindex;
			
		}
		
		public List<Oswestry> getsymptomoswestryindexDetails(String symptom,Principal principal){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Oswestry> oswestryindex = new ArrayList<Oswestry>();
		    try{
				resultSet = statement.executeQuery("select * from oswestryindex where symptom='"+symptom+"' and username='"+principal.getName()+"'");
				while(resultSet.next()){
					oswestryindex.add(new Oswestry(
							resultSet.getString("oswestryno"),
							resultSet.getString("painintensity"),
							resultSet.getString("standing"),
							resultSet.getString("personal"),
							resultSet.getString("sleeping"),
							resultSet.getString("lifting"),
							resultSet.getString("life"),
							resultSet.getString("walking"),
							resultSet.getString("social"),
							resultSet.getString("sitting"),
							resultSet.getString("traveling"),
							resultSet.getString("comments"),
							resultSet.getString("name"),
							resultSet.getString("date"),
							resultSet.getString("scores"),
							resultSet.getString("painscale"),
							resultSet.getString("painscale1"),
							resultSet.getString("job"),
							resultSet.getString("joboptional"),
							resultSet.getString("work"),
							resultSet.getString("worka"),
							resultSet.getString("workb"),
							resultSet.getString("workc"),
							resultSet.getString("sport"),
							resultSet.getString("sportoptional"),
							resultSet.getString("instrument"),
							resultSet.getString("instrumenta"),
							resultSet.getString("instrumentb"),
							resultSet.getString("instrumentc")));
				    			    	
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
		    return oswestryindex;
			
		}
		public int updateoswestryindex(Oswestry oswestryindexdetails,String oswestryindexno)
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
		    	String cmd="UPDATE oswestryindex SET " +
		    			"painintensity='"+oswestryindexdetails.getPainintensity()			
		    		    +"',standing='"+oswestryindexdetails.getStanding()
						+"',personal='"+oswestryindexdetails.getPersonal()
						+"',sleeping='"+oswestryindexdetails.getSleeping()						
						+"',lifting='"+oswestryindexdetails.getLifting()					
						+"',life='"+oswestryindexdetails.getLife()					
						+"',walking='"+oswestryindexdetails.getWalking()					
						+"',social='"+oswestryindexdetails.getSocial()
						+"',sitting='"+oswestryindexdetails.getSitting()
						+"',traveling='"+oswestryindexdetails.getTraveling()					
						+"',comments='"+oswestryindexdetails.getComments()
						+"',name='"+oswestryindexdetails.getName()
						+"',date='"+oswestryindexdetails.getDate()
						+"',scores='"+oswestryindexdetails.getScores()
						+"',painscale='"+oswestryindexdetails.getPainscale()
						+"',painscale1='"+oswestryindexdetails.getPainscale1()
						+"',job='"+oswestryindexdetails.getJob()
						+"',joboptional='"+oswestryindexdetails.getJoboptional()
						+"',work='"+oswestryindexdetails.getWork()
						+"',worka='"+oswestryindexdetails.getWorka()
						+"',workb='"+oswestryindexdetails.getWorkb()
						+"',workc='"+oswestryindexdetails.getWorkc()
						+"',sport='"+oswestryindexdetails.getSport()
						+"',sportoptional='"+oswestryindexdetails.getSportoptional()
						+"',instrument='"+oswestryindexdetails.getInstrument()
						+"',instrumenta='"+oswestryindexdetails.getInstrumenta()
						+"',instrumentb='"+oswestryindexdetails.getInstrumentb()
						+"',instrumentc='"+oswestryindexdetails.getInstrumentc()   			
		    			+"' WHERE oswestryno='"+oswestryindexno+"'";
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

		public int deleteoswestryindex(String oswestryno){
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
			statement.executeUpdate("delete from oswestryindex where oswestryno='"+oswestryno+"'");				
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
			
		public List<Oswestry> getlimitedoswestry(int page) {
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Oswestry> oswestryindex = new ArrayList<Oswestry>();
			try {

				String cmd;
				int offset = 5 * (page - 1);
				int limit = 5;
				
					
						cmd = "select * from oswestryindex order by name asc limit " + offset + ","+ limit+"" ;
		
				resultSet = statement.executeQuery(cmd);
				while (resultSet.next()) {
					oswestryindex.add(new Oswestry(
							resultSet.getString("oswestryno"),
							resultSet.getString("painintensity"),
							resultSet.getString("standing"),
							resultSet.getString("personal"),
							resultSet.getString("sleeping"),
							resultSet.getString("lifting"),
							resultSet.getString("life"),
							resultSet.getString("walking"),
							resultSet.getString("social"),
							resultSet.getString("sitting"),
							resultSet.getString("traveling"),
							resultSet.getString("comments"),
							resultSet.getString("name"),
							resultSet.getString("date"),
							resultSet.getString("scores"),
							resultSet.getString("painscale"),
							resultSet.getString("painscale1"),
							resultSet.getString("job"),
							resultSet.getString("joboptional"),
							resultSet.getString("work"),
							resultSet.getString("worka"),
							resultSet.getString("workb"),
							resultSet.getString("workc"),
							resultSet.getString("sport"),
							resultSet.getString("sportoptional"),
							resultSet.getString("instrument"),
							resultSet.getString("instrumenta"),
							resultSet.getString("instrumentb"),
							resultSet.getString("instrumentc")));
				}
			} catch (Exception e) {
				/*logger.info(e.toString());*/
				releaseResultSet(resultSet);
				releaseStatement(statement);
				releaseConnection(con);
			} finally {
				releaseResultSet(resultSet);
				releaseStatement(statement);
				releaseConnection(con);
			}
			return oswestryindex;

		}
		public int getnoofoswestryindex() {
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			int noofRecords = 0;
			
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Oswestry> oswestryindex = new ArrayList<Oswestry>();
			try {

				String cmd;
				
						cmd = "select count(*) as noofrecords from oswestryindex";
						System.out.println("command"+cmd);			
				resultSet = statement.executeQuery(cmd);
				if (resultSet.next())
					noofRecords = resultSet.getInt("noofrecords");

			} catch (Exception e) {
				releaseResultSet(resultSet);
				releaseStatement(statement);
				releaseConnection(con);
			} finally {
				releaseResultSet(resultSet);
				releaseStatement(statement);
				releaseConnection(con);
			}
			return noofRecords;

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