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

import bephit.model.RadiologicReport;
import bephit.model.TreatMinor;
import bephit.model.Treatform;

public class TreatMinorDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setMinorDetails(TreatMinor minordetails,Principal principal)
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
	    	 String cmd="INSERT INTO `minor_details`(username,`guardian`,`age`,`Drname`,`signed`,`pdate`,`pwitness`) VALUES ('"+principal.getName()+"','"+minordetails.getGuardian()+"','"+minordetails.getAge()+"','"+minordetails.getDrname()+"','"+minordetails.getSigned()+"','"+minordetails.getPdate()+"','"+minordetails.getPwitness()+"')";
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
	
	
	public List<TreatMinor> getMinorDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<TreatMinor> minor = new ArrayList<TreatMinor>();
	    try{
			resultSet = statement.executeQuery("select * from minor_details");
			while(resultSet.next()){
				minor.add(new TreatMinor(resultSet.getString("minor_no"),resultSet.getString("guardian"),resultSet.getString("age"),resultSet.getString("drname"),resultSet.getString("signed"),
			    		resultSet.getString("pdate"),
			    		resultSet.getString("pwitness")));
			    System.out.println(minor);	
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
	    return minor;
		
	}
	
	public List<TreatMinor> getusernameMinorDetails(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<TreatMinor> minor = new ArrayList<TreatMinor>();
	    try{
			resultSet = statement.executeQuery("select * from minor_details where username='"+username+"'");
			while(resultSet.next()){
				minor.add(new TreatMinor(resultSet.getString("minor_no"),resultSet.getString("guardian"),resultSet.getString("age"),resultSet.getString("drname"),resultSet.getString("signed"),
			    		resultSet.getString("pdate"),
			    		resultSet.getString("pwitness")));

			    System.out.println(minor);	
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
	    return minor;
		
	}	
	public List<TreatMinor> getusernameMinorDetails(Principal principal){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<TreatMinor> minor = new ArrayList<TreatMinor>();
	    try{
			resultSet = statement.executeQuery("select * from minor_details where username='"+principal.getName()+"'");
			while(resultSet.next()){
				minor.add(new TreatMinor(resultSet.getString("minor_no"),resultSet.getString("guardian"),resultSet.getString("age"),resultSet.getString("drname"),resultSet.getString("signed"),
			    		resultSet.getString("pdate"),
			    		resultSet.getString("pwitness")));

			    System.out.println(minor);	
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
	    return minor;
		
	}	
	public List<TreatMinor> getMinorDetails(String minor_no){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<TreatMinor> minor = new ArrayList<TreatMinor>();
	    try{
			resultSet = statement.executeQuery("select * from minor_details where minor_no='"+minor_no+"'");
			while(resultSet.next()){
				minor.add(new TreatMinor(resultSet.getString("minor_no"),resultSet.getString("guardian"),resultSet.getString("age"),resultSet.getString("drname"),resultSet.getString("signed"),
			    		resultSet.getString("pdate"),
			    		resultSet.getString("pwitness")));

			    System.out.println(minor);	
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
	    return minor;
		
	}
	
	public int updatetreatminor(TreatMinor minordetails,String minor_no)
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
		//List<ParticipantsDetails> participants = new ArrayList<ParticipantsDetails>();
	    try{
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 //System.out.println(dateFormat.format(date));
	    	String cmd="UPDATE minor_details SET guardian='"+minordetails.getGuardian()+"',age='"+minordetails.getAge()+"',drname='"+minordetails.getDrname()+"',signed='"+minordetails.getSigned()+"',pdate='"+minordetails.getPdate()+"',pwitness='"+minordetails.getPwitness()+"' where minor_no='"+minor_no+"';";
	    /*	String Desc="Update hardship "+hardshipagreement.getPrint_pat_name();
	    	*/
	    	
	    	
	    	//String cmd_activity="insert into admin_log_activity_table(admin_id,ip_address,admin_date_time,admin_desc) values('"+admin+"','127.0.0.1','"+dateFormat.format(date)+"','"+Desc+"')";
	    	    	
	    	System.out.println(cmd);
	    	//System.out.println(cmd_activity);
			
	    	statement.execute(cmd);
			//statement.execute(cmd_activity);
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
	
	public int deletetreatminor(String minor_no){
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
	    	 String cmd_getpat_pname="select guardian from minor_details where minor_no='"+minor_no+"'";
	    	 String Desc="Delete report ";
	    	 resultSet=statement.executeQuery(cmd_getpat_pname);
				
				if(resultSet.next())
					Desc=Desc+resultSet.getString(1);
				statement.execute("delete from minor_details where minor_no='"+minor_no+"'");
				
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
	public int deletetreat(Principal principal){
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
			
				statement.execute("delete from minor_details where username='"+principal.getName()+"'");
				
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
	public List<TreatMinor> getlimitedtreatminor(int page) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<TreatMinor> minor = new ArrayList<TreatMinor>();
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from minor_details order by guardian asc limit " + offset + ","+ limit+"" ;
	
			resultSet = statement.executeQuery(cmd);
			while (resultSet.next()) {
				minor.add(new TreatMinor(resultSet.getString("minor_no"),resultSet.getString("guardian"),resultSet.getString("age"),resultSet.getString("drname"),resultSet.getString("signed"),
			    		resultSet.getString("pdate"),
			    		resultSet.getString("pwitness")));

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
		return minor;

	}
	public int getnoofminordetails() {
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
		List<TreatMinor> minor = new ArrayList<TreatMinor>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from minor_details";
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
