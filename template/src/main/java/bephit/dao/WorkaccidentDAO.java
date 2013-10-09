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

import bephit.model.Workaccident;
 



public class WorkaccidentDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setWorkaccident(Workaccident workaccident)
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
	    	 String cmd="INSERT INTO `tbl_workaccident` (`job_classification`,`doyou_pos`,`doyou`,`pick`,`carry`,`injury_occur`,`saw_accident`,`title`,`present_job`,`time_loss`,`absenteeism`,`type_of_light`,`lighting`,`pick_lift`,`how_much`,`how_often`,`where_to_where`,`lift_from`,`liftin_orout`,`workpos`,`push_pull`,`jobpp`,`work_area`,`warea`,`levers`,`overhead`,`no_of_employees`,`like_job`,`return_job`,`changes_in_job`) VALUES ('"+workaccident.getJob_classification()+"','"+workaccident.getDoyou_pos()+"','"+workaccident.getDoyou()+"','"+workaccident.getPick()+"','"+workaccident.getCarry()+"','"+workaccident.getInjury_occur()+"','"+workaccident.getSaw_accident()+"','"+workaccident.getTitle()+"','"+workaccident.getPresent_job()+"','"+workaccident.getTime_loss()+"','"+workaccident.getAbsenteeism()+"','"+workaccident.getType_of_light()+"','"+workaccident.getLighting()+"','"+workaccident.getPick_lift()+"','"+workaccident.getHow_much()+"','"+workaccident.getHow_often()+"','"+workaccident.getWhere_to_where()+"','"+workaccident.getLift_from()+"','"+workaccident.getLiftin_orout()+"','"+workaccident.getWorkpos()+"','"+workaccident.getPush_pull()+"','"+workaccident.getJobpp()+"','"+workaccident.getWork_area()+"','"+workaccident.getWarea()+"','"+workaccident.getLevers()+"','"+workaccident.getOverhead()+"','"+workaccident.getNo_of_employees()+"','"+workaccident.getLike_job()+"','"+workaccident.getReturn_job()+"','"+workaccident.getChanges_in_job()+"')";
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

	
public List<Workaccident> getWorkaccident(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Workaccident> Workaccident = new ArrayList<Workaccident>();
    try{
		resultSet = statement.executeQuery("select * from tbl_workaccident");
		while(resultSet.next()){
			Workaccident.add(new Workaccident(resultSet.getString("job_classification"),
					resultSet.getString("doyou_pos"),
					resultSet.getString("doyou"),
					resultSet.getString("pick"),
					resultSet.getString("carry"),
					resultSet.getString("injury_occur"),
					resultSet.getString("saw_accident"),
					resultSet.getString("title"),
					resultSet.getString("present_job"),
					resultSet.getString("time_loss"),
					resultSet.getString("absenteeism"),
					resultSet.getString("type_of_light"),
					resultSet.getString("lighting"),
					resultSet.getString("pick_lift"),
					resultSet.getString("how_much"),
					resultSet.getString("how_often"),
					resultSet.getString("where_to_where"),
					resultSet.getString("lift_from"),
					resultSet.getString("liftin_orout"),
					resultSet.getString("workpos"),
					resultSet.getString("push_pull"),
					resultSet.getString("jobpp"),
					resultSet.getString("work_area"),
					resultSet.getString("warea"),
					resultSet.getString("levers"),
					resultSet.getString("overhead"),
					resultSet.getString("no_of_employees"),
					resultSet.getString("like_job"),
					resultSet.getString("return_job"),
					resultSet.getString("changes_in_job")));
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
    return Workaccident;
	
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

	

					
					
		