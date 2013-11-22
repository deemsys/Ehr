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

import bephit.model.Hardshipagreement;
import bephit.model.Treatform;

public class TreatDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setTreatDetails(Treatform treatdetails)
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
	    	 String cmd="INSERT INTO `Treat_Details`(`patientsname`,`patientssign`,`todaydate`,`witness`) VALUES ('"+treatdetails.getPatientsname()+"','"+treatdetails.getPatientssign()+"','"+treatdetails.getTodaydate()+"','"+treatdetails.getWitness()+"')";
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
	
	
	public List<Treatform> getTreatDetails(String treat_no){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Treatform> treat = new ArrayList<Treatform>();
	    try{
			resultSet = statement.executeQuery("select * from Treat_Details order by treat_no DESC");
			while(resultSet.next()){
				treat.add(new Treatform(resultSet.getString("treat_no"),resultSet.getString("patientsname"),
			    		resultSet.getString("patientssign"),
			    		resultSet.getString("todaydate"),
			    		resultSet.getString("witness")));
			    	
			}
			System.out.println(treat);
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
	    return treat;
		
	}
	
	public List<Treatform> getTreatDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Treatform> treat = new ArrayList<Treatform>();
	    try{
			resultSet = statement.executeQuery("select * from Treat_Details order by treat_no DESC");
			while(resultSet.next()){
				treat.add(new Treatform(resultSet.getString("treat_no"),resultSet.getString("patientsname"),
			    		resultSet.getString("patientssign"),
			    		resultSet.getString("todaydate"),
			    		resultSet.getString("witness")));
			    	
			}
			System.out.println(treat);
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
	    return treat;
		
	}
	
	
	
	public int updatetreatform(Treatform treatdetails,String treat_no)
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
	    	String cmd="UPDATE treat_details SET patientsname='"+treatdetails.getPatientsname()+"',patientssign='"+treatdetails.getPatientssign()+"',todaydate='"+treatdetails.getTodaydate()+"',witness='"+treatdetails.getWitness()+"' where treat_no='"+treat_no+"';";
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
	
	public int deletetreatform(String treat_no){
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
	    	 String cmd_getpat_pname="select patientsname from treat_details where treat_no='"+treat_no+"'";
	    	 String Desc="Delete report ";
	    	 resultSet=statement.executeQuery(cmd_getpat_pname);
				
				if(resultSet.next())
					Desc=Desc+resultSet.getString(1);
				statement.execute("delete from treat_details where treat_no='"+treat_no+"'");
				
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
