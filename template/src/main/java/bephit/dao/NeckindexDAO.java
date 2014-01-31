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
public class NeckindexDAO
{
	
		private DataSource dataSource;
		 
		public void setDataSource(DataSource dataSource) {
			this.dataSource = dataSource;
		}
		public int insertneckindex(Neckindex neckindexdetails)
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
		    	String d="insert into neckindex(name,date,painintensity,work,personal,driving,lifting,sleeping,reading,recreation,headache,concentration,score,status)values('"
		    			+neckindexdetails.getName()
		    			+"','"+neckindexdetails.getDate()
						+"','"+neckindexdetails.getPainintensity()
						+"','"+neckindexdetails.getWork()
						+"','"+neckindexdetails.getPersonal()
						+"','"+neckindexdetails.getDriving()					
						+"','"+neckindexdetails.getLifting()					
						+"','"+neckindexdetails.getSleeping()					
						+"','"+neckindexdetails.getReading()
						+"','"+neckindexdetails.getRecreation()
						+"','"+neckindexdetails.getHeadache()					
						+"','"+neckindexdetails.getConcentration()
						+"','"+neckindexdetails.getScore()
						+"','"+neckindexdetails.getStatus()						
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
		public List<Neckindex> getneckindexDetails(){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Neckindex> neckindex = new ArrayList<Neckindex>();
		    try{
				resultSet = statement.executeQuery("select * from neckindex");
				while(resultSet.next()){
					neckindex.add(new Neckindex(
							resultSet.getString("neckindexno"),	
							resultSet.getString("name"),							
							resultSet.getString("date"),													
							resultSet.getString("painintensity"),
							resultSet.getString("work"),
							resultSet.getString("personal"),
							resultSet.getString("driving"),
							resultSet.getString("lifting"),
							resultSet.getString("sleeping"),
							resultSet.getString("reading"),
							resultSet.getString("recreation"),
							resultSet.getString("headache"),
							resultSet.getString("concentration"),							
							resultSet.getString("score"),
							resultSet.getString("status")
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
		    return neckindex;
			
		}
		public List<Neckindex> getneckindexDetails(String neckindexno){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Neckindex> neckindex = new ArrayList<Neckindex>();
		    try{
				resultSet = statement.executeQuery("select * from neckindex where neckindexno='"+neckindexno+"'");
				while(resultSet.next()){
					neckindex.add(new Neckindex(
							resultSet.getString("neckindexno"),	
							resultSet.getString("name"),							
							resultSet.getString("date"),													
							resultSet.getString("painintensity"),
							resultSet.getString("work"),
							resultSet.getString("personal"),
							resultSet.getString("driving"),
							resultSet.getString("lifting"),
							resultSet.getString("sleeping"),
							resultSet.getString("reading"),
							resultSet.getString("recreation"),
							resultSet.getString("headache"),
							resultSet.getString("concentration"),							
							resultSet.getString("score"),
							resultSet.getString("status")
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
		    return neckindex;
			
		}
		public int updateneckindex(Neckindex neckindexdetails,String neckindexno)
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
		    	String cmd="UPDATE neckindex SET " +		    			
		    			    "name='"+neckindexdetails.getName()
		    			    +"',date='"+neckindexdetails.getDate()
		    			    +"',painintensity='"+neckindexdetails.getPainintensity()
							+"',work='"+neckindexdetails.getWork()
							+"',personal='"+neckindexdetails.getPersonal()
							+"',driving='"+neckindexdetails.getDriving()					
							+"',lifting='"+neckindexdetails.getLifting()					
							+"',sleeping='"+neckindexdetails.getSleeping()					
							+"',reading='"+neckindexdetails.getReading()
							+"',recreation='"+neckindexdetails.getRecreation()
							+"',headache='"+neckindexdetails.getHeadache()
							+"',concentration='"+neckindexdetails.getConcentration()							
							+"',score='"+neckindexdetails.getScore()
							+"',status='"+neckindexdetails.getStatus()+"' WHERE neckindexno='"+neckindexno+"';";
		    	
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

		public int deleteneckindex(String neckindexno){
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
			statement.executeUpdate("delete from neckindex where neckindexno='"+neckindexno+"'");				
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
			
		public List<Neckindex> getlimitedneckindex(int page) {
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Neckindex> neckindex = new ArrayList<Neckindex>();
			try {

				String cmd;
				int offset = 5 * (page - 1);
				int limit = 5;
				
					
						cmd = "select * from neckindex order by name asc limit " + offset + ","+ limit+"" ;
		
				resultSet = statement.executeQuery(cmd);
				while (resultSet.next()) {
					neckindex.add(new Neckindex(
							resultSet.getString("neckindexno"),	
							resultSet.getString("name"),							
							resultSet.getString("date"),													
							resultSet.getString("painintensity"),
							resultSet.getString("work"),
							resultSet.getString("personal"),
							resultSet.getString("driving"),
							resultSet.getString("lifting"),
							resultSet.getString("sleeping"),
							resultSet.getString("reading"),
							resultSet.getString("recreation"),
							resultSet.getString("headache"),
							resultSet.getString("concentration"),							
							resultSet.getString("score"),
							resultSet.getString("status")
				    	    ));
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
			return neckindex;

		}
		public int getnoofneckindex() {
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
			List<Neckindex> neckindex = new ArrayList<Neckindex>();
			try {

				String cmd;
				
						cmd = "select count(*) as noofrecords from neckindex";
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