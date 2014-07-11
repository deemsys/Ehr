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
public class HipquestionnaireDAO
{
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int inserthipquestionnaire(Hipquestionnaire hipquestionnairedetails,String username)
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
	    	String d="insert into hipquestionnaire(username,stiff,swollen,flatrighthip,flatlefthip,flatrightknee,flatleftknee,stairsrighthip,stairslefthip,stairsrightknee,stairsleftknee,bedrighthip,bedlefthip,bedrightknee,bedleftknee,best,socks,date,birthdate,security)values('"
	    			+username
	    			+"','"+hipquestionnairedetails.getStiff()
					+"','"+hipquestionnairedetails.getSwollen()
					+"','"+hipquestionnairedetails.getFlatrighthip()
					+"','"+hipquestionnairedetails.getFlatlefthip()
					+"','"+hipquestionnairedetails.getFlatrightknee()
					+"','"+hipquestionnairedetails.getFlatleftknee()					
					+"','"+hipquestionnairedetails.getStairsrighthip()
					+"','"+hipquestionnairedetails.getStairslefthip()					
					+"','"+hipquestionnairedetails.getStairsrightknee()
					+"','"+hipquestionnairedetails.getStairsleftknee()
					+"','"+hipquestionnairedetails.getBedrighthip()
					+"','"+hipquestionnairedetails.getBedlefthip()
					+"','"+hipquestionnairedetails.getBedrightknee()
					+"','"+hipquestionnairedetails.getBedleftknee()
					+"','"+hipquestionnairedetails.getBest()
					+"','"+hipquestionnairedetails.getSocks()
					+"','"+hipquestionnairedetails.getDate()
					+"','"+hipquestionnairedetails.getBirthdate()
					+"','"+hipquestionnairedetails.getSecurity()
					+"')";
	    			System.out.print("output"+d);
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
	public List<Hipquestionnaire> gethipquestionnairedetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Hipquestionnaire> hipquestionnairedetails = new ArrayList<Hipquestionnaire>();
	    try{
			resultSet = statement.executeQuery("select * from hipquestionnaire");
			while(resultSet.next()){
				hipquestionnairedetails.add(new Hipquestionnaire(
						 resultSet.getString("hipquestionno"),
							resultSet.getString("stiff"),
							resultSet.getString("swollen"),
							resultSet.getString("flatrighthip"),
							resultSet.getString("flatlefthip"),							
							resultSet.getString("flatrightknee"),
							resultSet.getString("flatleftknee"),
							resultSet.getString("stairsrighthip"),
							resultSet.getString("stairslefthip"),
							resultSet.getString("stairsrightknee"),
							resultSet.getString("stairsleftknee"),							
							resultSet.getString("bedrighthip"),
							resultSet.getString("bedlefthip"),
							resultSet.getString("bedrightknee"),
							resultSet.getString("bedleftknee"),							
							resultSet.getString("best"),
							resultSet.getString("socks"),
							resultSet.getString("date"),
							resultSet.getString("birthdate"),
							resultSet.getString("security")
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
	    return hipquestionnairedetails;
		
	}
	public List<Hipquestionnaire> gethipquestionnairedetails(String hipquestionnaireno){
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Hipquestionnaire> hipquestionnairedetails = new ArrayList<Hipquestionnaire>();
	    try{
			resultSet = statement.executeQuery("select * from hipquestionnaire where hipquestionno='"+hipquestionnaireno+"'");
			while(resultSet.next()){
				hipquestionnairedetails.add(new Hipquestionnaire(
						 resultSet.getString("hipquestionno"),
							resultSet.getString("stiff"),
							resultSet.getString("swollen"),
							resultSet.getString("flatrighthip"),
							resultSet.getString("flatlefthip"),
							resultSet.getString("flatrightknee"),
							resultSet.getString("flatleftknee"),							
							resultSet.getString("stairsrighthip"),
							resultSet.getString("stairslefthip"),
							resultSet.getString("stairsrightknee"),
							resultSet.getString("stairsleftknee"),							
							resultSet.getString("bedrighthip"),
							resultSet.getString("bedlefthip"),
							resultSet.getString("bedrightknee"),
							resultSet.getString("bedleftknee"),							
							resultSet.getString("best"),
							resultSet.getString("socks"),
							resultSet.getString("date"),
							resultSet.getString("birthdate"),
							resultSet.getString("security")
			    	    ));
			    	
			}
	    }catch(Exception e){
	    	System.out.println(e);
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return hipquestionnairedetails;
		
	}
public List<Hipquestionnaire> getusernamehipquestionnairedetails(String username){
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Hipquestionnaire> hipquestionnairedetails = new ArrayList<Hipquestionnaire>();
	    try{
			resultSet = statement.executeQuery("select * from hipquestionnaire where username='"+username+"'");
			while(resultSet.next()){
				hipquestionnairedetails.add(new Hipquestionnaire(
						 resultSet.getString("hipquestionno"),
							resultSet.getString("stiff"),
							resultSet.getString("swollen"),
							resultSet.getString("flatrighthip"),
							resultSet.getString("flatlefthip"),
							resultSet.getString("flatrightknee"),
							resultSet.getString("flatleftknee"),							
							resultSet.getString("stairsrighthip"),
							resultSet.getString("stairslefthip"),
							resultSet.getString("stairsrightknee"),
							resultSet.getString("stairsleftknee"),							
							resultSet.getString("bedrighthip"),
							resultSet.getString("bedlefthip"),
							resultSet.getString("bedrightknee"),
							resultSet.getString("bedleftknee"),							
							resultSet.getString("best"),
							resultSet.getString("socks"),
							resultSet.getString("date"),
							resultSet.getString("birthdate"),
							resultSet.getString("security")
			    	    ));
			    	
			}
	    }catch(Exception e){
	    	System.out.println(e);
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return hipquestionnairedetails;
		
	}
	
	
	
	public int updatequestionnaire(Hipquestionnaire hipquestionnairedetails,String questionnaireno)
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
	    	String cmd="UPDATE hipquestionnaire SET " +
	    			"stiff='"+hipquestionnairedetails.getStiff()
					+"',swollen='"+hipquestionnairedetails.getSwollen()
					+"',flatrighthip='"+hipquestionnairedetails.getFlatrighthip()
					+"',flatlefthip='"+hipquestionnairedetails.getFlatlefthip()
					+"',flatrightknee='"+hipquestionnairedetails.getFlatrightknee()
					+"',flatleftknee='"+hipquestionnairedetails.getFlatleftknee()					
					+"',stairsrighthip='"+hipquestionnairedetails.getStairsrighthip()
					+"',stairslefthip='"+hipquestionnairedetails.getStairslefthip()
					+"',stairsrightknee='"+hipquestionnairedetails.getStairsrightknee()
					+"',stairsleftknee='"+hipquestionnairedetails.getStairsleftknee()
					+"',bedrighthip='"+hipquestionnairedetails.getBedrighthip()
					+"',bedlefthip='"+hipquestionnairedetails.getBedlefthip()
					+"',bedrightknee='"+hipquestionnairedetails.getBedrightknee()
					+"',bedleftknee='"+hipquestionnairedetails.getBedleftknee()
					+"',best='"+hipquestionnairedetails.getBest()
					+"',socks='"+hipquestionnairedetails.getSocks()
					+"',date='"+hipquestionnairedetails.getDate()
					+"',birthdate='"+hipquestionnairedetails.getBirthdate()
					+"',security='"+hipquestionnairedetails.getSecurity() 
	    			
	    			+"' WHERE hipquestionno='"+questionnaireno+"';";
	    	
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

	public int deletequestionnaire(String questionnaireno){
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
		statement.executeUpdate("delete from hipquestionnaire where hipquestionno='"+questionnaireno+"'");				
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
	public int deletequestionnairedetails(String username){
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
		statement.executeUpdate("delete from hipquestionnaire where username='"+username+"'");				
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
		
	public List<Hipquestionnaire> getlimitedhipquestionnaire(int page) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Hipquestionnaire> hipquestionnairedetails = new ArrayList<Hipquestionnaire>();
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from hipquestionnaire order by hipquestionno asc limit " + offset + ","+ limit+"" ;
	
			resultSet = statement.executeQuery(cmd);
			while (resultSet.next()) {
				hipquestionnairedetails.add(new Hipquestionnaire(
						 resultSet.getString("hipquestionno"),
							resultSet.getString("stiff"),
							resultSet.getString("swollen"),
							resultSet.getString("flatrighthip"),
							resultSet.getString("flatlefthip"),
							resultSet.getString("flatrightknee"),
							resultSet.getString("flatleftknee"),							
							resultSet.getString("stairsrighthip"),
							resultSet.getString("stairslefthip"),
							resultSet.getString("stairsrightknee"),
							resultSet.getString("stairsleftknee"),							
							resultSet.getString("bedrighthip"),
							resultSet.getString("bedlefthip"),
							resultSet.getString("bedrightknee"),
							resultSet.getString("bedleftknee"),							
							resultSet.getString("best"),
							resultSet.getString("socks"),
							resultSet.getString("date"),
							resultSet.getString("birthdate"),
							resultSet.getString("security")
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
		return hipquestionnairedetails;

	}
	public int getnoofhipquestionnaire() {
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
		List<Hipquestionnaire> hipquestionnairedetails = new ArrayList<Hipquestionnaire>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from hipquestionnaire";
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
