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

import bephit.model.HippaPrivacy;
import bephit.model.SoapNotes;

public class HippaDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setPrivacyDetails(HippaPrivacy privacydetails)
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
	    	 String cmd="INSERT INTO `hippa_privacy`(`date`,`printpname`,`printpdate`,`legalguardian`,`staffwitness`) VALUES ('"+privacydetails.getDate()+"','"+privacydetails.getPrintpname()+"','"+privacydetails.getPrintpdate()+"','"+privacydetails.getLegalguardian()+"','"+privacydetails.getStaffwitness()+"')";
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
	
	
	public List<HippaPrivacy> getPrivacyDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<HippaPrivacy> privacy = new ArrayList<HippaPrivacy>();
	    try{
			resultSet = statement.executeQuery("select * from hippa_privacy order by hippa_no DESC");
			while(resultSet.next()){
				privacy.add(new HippaPrivacy(resultSet.getString("hippa_no"),resultSet.getString("date"),
						resultSet.getString("printpname"),
						resultSet.getString("printpdate"),
						resultSet.getString("legalguardian"),
			    		resultSet.getString("staffwitness")
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
	    return privacy;
		
	}
	
	public List<HippaPrivacy> getHippa(String hippa_no){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<HippaPrivacy> privacy = new ArrayList<HippaPrivacy>();
	    try{
	    	String cmd="select * from hippa_privacy where hippa_no='"+hippa_no+"'";
	    	System.out.println(hippa_no);
			resultSet = statement.executeQuery(cmd);
	    	while(resultSet.next())
	    	{
	    		privacy.add( new HippaPrivacy(resultSet.getString("hippa_no"),resultSet.getString("date"),
						resultSet.getString("printpname"),
						resultSet.getString("printpdate"),
						resultSet.getString("legalguardian"),
			    		resultSet.getString("staffwitness")));
			}
	    }catch(Exception e)
	    {
	    	System.out.println(e.toString());
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return privacy;
		

	    }
	public int updatehippaprivacy(HippaPrivacy privacydetails,String hippa_no,String admin)
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
	    	String cmd="UPDATE hippa_privacy SET date='"+privacydetails.getDate()+"',printpname='"+privacydetails.getPrintpname()+"',printpdate='"+privacydetails.getPrintpdate()+"',legalguardian='"+privacydetails.getLegalguardian()+"',staffwitness='"+privacydetails.getStaffwitness()+"' WHERE hippa_no='"+hippa_no+"';";
	    			
	    			String Desc="Update privacydetails "+privacydetails.getPrintpname();
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
	public int deletehippaprivacy(String hippa_no){
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
	    	 String cmd_getpatient_pname="select printpname from hippa_privacy where hippa_no='"+hippa_no+"'";
	    	 String Desc="Delete report ";
	    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
				
				if(resultSet.next())
					Desc=Desc+resultSet.getString(1);
				statement.execute("delete from hippa_privacy where hippa_no='"+hippa_no+"'");
				
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
