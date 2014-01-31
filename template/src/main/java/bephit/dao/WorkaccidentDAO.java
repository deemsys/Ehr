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
import bephit.model.RadiologicReport;
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
	    	 String cmd="INSERT INTO `tbl_workaccident` (`job_classification`,`doyou_pos`,`doyou`,`pick`,`carry`,`injury_occur`,`saw_accident`,`title`,`present_job`,`time_loss`,`absenteeism`,`type_of_light`,`lighting`,`pick_lift`,`how_much`,`how_often`,`where_to_where`,`lift_from`,`liftin_orout`,`workpos`,`push_pull`,`jobpp`,`work_area`,`warea`,`levers`,`overhead`,`no_of_employees`,`like_job`,`pre_employment`,`return_job`,`changes_in_job`) VALUES ('"+workaccident.getJob_classification()+"','"+workaccident.getDoyou_pos()+"','"+workaccident.getDoyou()+"','"+workaccident.getPick()+"','"+workaccident.getCarry()+"','"+workaccident.getInjury_occur()+"','"+workaccident.getSaw_accident()+"','"+workaccident.getTitle()+"','"+workaccident.getPresent_job()+"','"+workaccident.getTime_loss()+"','"+workaccident.getAbsenteeism()+"','"+workaccident.getType_of_light()+"','"+workaccident.getLighting()+"','"+workaccident.getPick_lift()+"','"+workaccident.getHow_much()+"','"+workaccident.getHow_often()+"','"+workaccident.getWhere_to_where()+"','"+workaccident.getLift_from()+"','"+workaccident.getLiftin_orout()+"','"+workaccident.getWorkpos()+"','"+workaccident.getPush_pull()+"','"+workaccident.getJobpp()+"','"+workaccident.getWork_area()+"','"+workaccident.getWarea()+"','"+workaccident.getLevers()+"','"+workaccident.getOverhead()+"','"+workaccident.getNo_of_employees()+"','"+workaccident.getLike_job()+"','"+workaccident.getPre_employment()+"','"+workaccident.getReturn_job()+"','"+workaccident.getChanges_in_job()+"')";
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
			Workaccident.add(new Workaccident(resultSet.getString("patient_no"),resultSet.getString("job_classification"),
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
					resultSet.getString("pre_employment"),
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
public List<Workaccident> getWorkaccident(String patient_no){
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
    	String cmd = "select * from tbl_workaccident where patient_no='"+patient_no+"'";
		resultSet = statement.executeQuery(cmd);
		System.out.println(cmd);
		while(resultSet.next()){
			Workaccident.add(new Workaccident(resultSet.getString("patient_no"),resultSet.getString("job_classification"),
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
					resultSet.getString("pre_employment"),
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
public int updateWorkAccident(Workaccident workAcc,String patient_no,String admin)
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
    	 
    	String cmd="UPDATE tbl_workaccident SET job_classification ='"+workAcc.getJob_classification()+"',doyou_pos='"+workAcc.getDoyou_pos()+"',doyou='"+workAcc.getDoyou()+"',pick='"+workAcc.getPick()+"',carry='"+workAcc.getCarry()+"',injury_occur='"+workAcc.getInjury_occur()+"',saw_accident='"+workAcc.getSaw_accident()+"',title='"+workAcc.getTitle()+"',present_job='"+workAcc.getPresent_job()+"',time_loss='"+workAcc.getTime_loss()+"',absenteeism='"+workAcc.getAbsenteeism()+"',type_of_light='"+workAcc.getType_of_light()+"',lighting='"+workAcc.getLighting()+"',pick_lift='"+workAcc.getPick_lift()+"',how_much='"+workAcc.getHow_much()+"',how_often='"+workAcc.getHow_often()+"',where_to_where='"+workAcc.getWhere_to_where()+"',lift_from='"+workAcc.getLift_from()+"',liftin_orout='"+workAcc.getLiftin_orout()+"',workpos='"+workAcc.getWorkpos()+"',push_pull='"+workAcc.getPush_pull()+"',jobpp='"+workAcc.getJobpp()+"',work_area='"+workAcc.getWork_area()+"',warea='"+workAcc.getWarea()+"',levers='"+workAcc.getLevers()+"',overhead='"+workAcc.getOverhead()+"',no_of_employees='"+workAcc.getNo_of_employees()+"',like_job='"+workAcc.getLike_job()+"',pre_employment='"+workAcc.getPre_employment()+"',return_job='"+workAcc.getReturn_job()+"',changes_in_job='"+workAcc.getChanges_in_job()+"' WHERE patient_no='"+patient_no+"';"; 
    	//String Desc="Update workAcc "+workAcc.getJob_classification();
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
public int deleteWorkAccident(String patient_no,String admin){
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
    	 String cmd_getjob_classification="select job_classification from tbl_workaccident where patient_no='"+patient_no+"'";
    	 String Desc="Delete workAcc ";
    	 resultSet=statement.executeQuery(cmd_getjob_classification);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_workaccident where patient_no='"+patient_no+"'");
			
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
public List<Workaccident> getlimitedworkaccident(int page) {
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
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_workaccident order by patient_no asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			
	               Workaccident.add(new Workaccident(resultSet.getString("patient_no"),resultSet.getString("job_classification"),
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
							resultSet.getString("pre_employment"),
							resultSet.getString("return_job"),
							resultSet.getString("changes_in_job")));

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
	return Workaccident;

}
public int getnoofworkaccident() {
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
	List<Workaccident> Workaccident = new ArrayList<Workaccident>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_workaccident";
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

	

					
					
		