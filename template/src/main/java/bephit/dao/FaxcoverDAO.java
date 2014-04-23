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

import bephit.model.Faxcover;
import bephit.model.Letterofprotection;
 



public class FaxcoverDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setfaxcover(Faxcover faxcoverdetails,String username)
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
	    	 
	    	 String cmd="INSERT INTO tbl_faxdetails (username,`date`,`tos`,`faxno`,`froms`,`reply`,`regarding`,`pages`,`msg`,`claimno`,`doi`) VALUES ('"+username+"','"+faxcoverdetails.getDate()+"','"+faxcoverdetails.getTos()+"','"+faxcoverdetails.getFaxno()+"','"+faxcoverdetails.getFroms()+"','"+faxcoverdetails.getReply()+"','"+faxcoverdetails.getRegarding()+"','"+faxcoverdetails.getPages()+"','"+faxcoverdetails.getMsg()+"','"+faxcoverdetails.getClaimno()+"','"+faxcoverdetails.getDoi()+"')";
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
	public List<Faxcover> getfaxcover(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Faxcover> faxcover = new ArrayList<Faxcover>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_faxdetails");
			while(resultSet.next()){
				faxcover.add(new Faxcover
						(resultSet.getString("faxid"),
							resultSet.getString("date"),
						resultSet.getString("tos"),
						resultSet.getString("faxno"),
						resultSet.getString("froms"),
			    		resultSet.getString("reply"),
			    		resultSet.getString("regarding"),
						resultSet.getString("pages"),
				resultSet.getString("msg"),
				resultSet.getString("claimno"),
				resultSet.getString("doi")
	    		
			    		
						
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
	    return faxcover;
		
	}
	public List<Faxcover> getfaxcover(String faxid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Faxcover> faxcover = new ArrayList<Faxcover>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_faxdetails where faxid='"+faxid+"'");
			while(resultSet.next()){
				faxcover.add(new Faxcover
						(resultSet.getString("faxid"),
								resultSet.getString("date"),
						resultSet.getString("tos"),
						resultSet.getString("faxno"),
						resultSet.getString("froms"),
			    		resultSet.getString("reply"),
			    		resultSet.getString("regarding"),
						resultSet.getString("pages"),
				resultSet.getString("msg"),
				resultSet.getString("claimno"),
				resultSet.getString("doi")
	    		
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
	    return faxcover;
		
	}
	public List<Faxcover> getusernamefaxcover(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Faxcover> faxcover = new ArrayList<Faxcover>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_faxdetails where username='"+username+"'");
			while(resultSet.next()){
				faxcover.add(new Faxcover
						(resultSet.getString("faxid"),
								resultSet.getString("date"),
						resultSet.getString("tos"),
						resultSet.getString("faxno"),
						resultSet.getString("froms"),
			    		resultSet.getString("reply"),
			    		resultSet.getString("regarding"),
						resultSet.getString("pages"),
				resultSet.getString("msg"),
				resultSet.getString("claimno"),
				resultSet.getString("doi")
	    		
			    		 ));
			//	System.out.println("Name::::::::::::::::::"+faxcover.get(0).getName());
			    	
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
	    return faxcover;
		
	}
	public int updatefaxcover(Faxcover faxcoverdetails,String faxid)
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
	    	String cmd="update tbl_faxdetails set date='"+faxcoverdetails.getDate()
	    			
	    		    +"',tos='"+faxcoverdetails.getTos()
	    		    +"',faxno='"+faxcoverdetails.getFaxno()
	    		    +"',froms='"+faxcoverdetails.getFroms()
	    		    +"',reply='"+faxcoverdetails.getReply()
	    		    +"',regarding='"+faxcoverdetails.getRegarding()
	    		    +"',pages='"+faxcoverdetails.getPages()
	    		    +"',msg='"+faxcoverdetails.getMsg()
	    	
	    		   +"', claimno='"+ faxcoverdetails.getClaimno()
	    		   +"', doi='"+ faxcoverdetails.getDoi()+"'where faxid='"+faxid+"'";
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
	public int deletefaxcover(String faxid)
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
	    	 
	    	 String cmd="delete from tbl_faxdetails where faxid='"+faxid+"'";
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