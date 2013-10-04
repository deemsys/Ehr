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

import bephit.model.Autoaccident;
import bephit.model.ParticipantsDetails;

public class AutoaccidentDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int setAutoaccident(Autoaccident autoaccident)
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
		//List<ParticipantsDetails> participants = new ArrayList<ParticipantsDetails>();
	    try{
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 //System.out.println(dateFormat.format(date));
	    	 String cmd="INSERT INTO `tbl_autoaccident` (`claimnumber`,`adjustersname`,`estimate`,`seating`,`companion`,`vehicle_desc`,`vehicle_hit`,`other_vehicle_desc`,`carstopped`,`driverposition`,`vehicle_moving_time`,`wascar`,`estimated_rate`,`time_of_day`,`road_conditions`,`head_restraints`) VALUES ('"+autoaccident.getClaimnumber()+"','"+autoaccident.getAdjustersname()+"','"+autoaccident.getEstimate()+"','"+autoaccident.getSeating()+"','"+autoaccident.getCompanion()+"','"+autoaccident.getVehicle_desc()+"','"+autoaccident.getVehicle_hit()+"','"+autoaccident.getOther_vehicle_desc()+"','"+autoaccident.getCarstopped()+"','"+autoaccident.getDriverposition()+"','"+autoaccident.getVehicle_moving_time()+"','"+autoaccident.getWascar()+"','"+autoaccident.getEstimated_rate()+"','"+autoaccident.getTime_of_day()+"','"+autoaccident.getRoad_conditions()+"','"+autoaccident.getHead_restraints()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	    	/* String cmd_getparticipantname="select fname from participants_table where participants_id='"+participant_id+"'";
	    	 resultSet=statement.executeQuery(cmd_getparticipantname);
	    	 String Desc="added participants"+Autoaccident.getClaimnumber();
	    	 if(resultSet.next())
			Desc=Desc+resultSet.getString(1);
	    	String cmd_activity="insert into admin_log_activity_table(admin_id,ip_address,admin_date_time,admin_desc) values('"+admin_id+"','127.0.0.1','"+dateFormat.format(date)+"','"+Desc+"')";
	    	System.out.println(cmd_activity);
	    	statement.execute(cmd_activity);*/
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

	
public List<Autoaccident> getAutoaccident(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Autoaccident> Autoaccident = new ArrayList<Autoaccident>();
    try{
		resultSet = statement.executeQuery("select * from tbl_autoaccident");
		while(resultSet.next()){
			Autoaccident.add(new Autoaccident(resultSet.getString("claimnumber"),
		    		resultSet.getString("adjustersname"),
		    		resultSet.getString("estimate"),
		    		resultSet.getString("seating"),
		    		resultSet.getString("companion"),
		    		resultSet.getString("vehicle_desc"),
		    		resultSet.getString("vehicle_hit"),
		    		resultSet.getString("other_vehicle_desc"),
		    		resultSet.getString("carstopped"),
		    		resultSet.getString("driverposition"),
		    		resultSet.getString("vehicle_moving_time"),
		    		resultSet.getString("wascar"),
		    		resultSet.getString("estimated_rate"),
		    		resultSet.getString("time_of_day"),
		    		resultSet.getString("road_conditions"),
		    		resultSet.getString("head_restraints")));
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
    return Autoaccident;
	
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

	
