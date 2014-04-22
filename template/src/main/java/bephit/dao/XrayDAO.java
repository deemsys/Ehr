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
import bephit.forms.XrayForm;
import bephit.model.HippaPrivacy;
import bephit.model.Perrychiropractic;
import bephit.model.Xray;
import bephit.model.Symptom;



 
public class XrayDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setxray(Xray xraydetails,String username)
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
	    	 
	    	 String cmd="INSERT INTO xray (username,name,date,date1,sign,date2) VALUES ('"+username+"','"+xraydetails.getName()+"','"+xraydetails.getDate()+"','"+xraydetails.getDate1()+"','"+xraydetails.getSign()+"','"+xraydetails.getDate2()+"')";
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
	
	
	public List<Xray> getxray(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Xray> xray = new ArrayList<Xray>();
	    try{
			resultSet = statement.executeQuery("select * from xray ");
			while(resultSet.next()){
				xray.add(new Xray
						(resultSet.getString("xrayid"),
								resultSet.getString("name"),
						resultSet.getString("date"),
						resultSet.getString("date1"),
						resultSet.getString("sign"),
			    		resultSet.getString("date2")
			    		 ));
			    	
			}
	    }catch(Exception e){
	    	System.out.println("e"+e);
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return xray;
		
	}

	
	public List<Xray> getxray(String xrayid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Xray> xray = new ArrayList<Xray>();
	    try{
			resultSet = statement.executeQuery("select * from xray where xrayid='"+xrayid+"'");
			while(resultSet.next()){
				xray.add(new Xray
						(resultSet.getString("xrayid"),
								resultSet.getString("name"),
						resultSet.getString("date"),
						resultSet.getString("date1"),
						resultSet.getString("sign"),
			    		resultSet.getString("date2")
			    		 ));
				System.out.println("Name::::::::::::::::::"+xray.get(0).getName());
			    	
			}
	    }catch(Exception e){
	    	System.out.println("e"+e);
	    	System.out.println(e.toString());
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return xray;
		
	}
	
	
	public List<Xray> getusernamexray(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Xray> xray = new ArrayList<Xray>();
	    try{
			resultSet = statement.executeQuery("select * from xray where username='"+username+"'");
			while(resultSet.next()){
				xray.add(new Xray
						(resultSet.getString("xrayid"),
								resultSet.getString("name"),
						resultSet.getString("date"),
						resultSet.getString("date1"),
						resultSet.getString("sign"),
			    		resultSet.getString("date2")
			    		 ));
				System.out.println("Name::::::::::::::::::"+xray.get(0).getName());
			    	
			}
	    }catch(Exception e){
	    	System.out.println("e"+e);
	    	System.out.println(e.toString());
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return xray;
		
	}
	
	public int updatexray(Xray xray,String xrayid)
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
	    	 String cmd="update xray set name='"+xray.getName()
	    			
	    +"',date='"+xray.getDate()
	    +"',date1='"+xray.getDate1()
	    +"',sign='"+ xray.getSign()
	    +"',date2='"+ xray.getDate2()
	    +"' where xrayid='"+xrayid+"'";
	   
	        	 		 
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


	
	
	public int deletexray(String xrayid)
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
	    	 
	    	 String cmd="delete from xray where xrayid='"+xrayid+"'";
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
	    
	    
	    
	    