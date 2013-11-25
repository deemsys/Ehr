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
import bephit.model.Staffchecklist;
 



public class StaffchecklistDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setStaffchecklist(Staffchecklist staffchecklist)
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
	    	 String cmd="INSERT INTO `tbl_staffchecklist` (`patinfo`,`screening`,`aob`,`history`,`xray_sheet`,`consent`,`report`,`pat_name`,`insure`,`damage_amount`,`fault_insure`,`med_pay`,`other_attorney`,`protect_received`,`bill`,`re_date`) VALUES ('"+staffchecklist.getPatinfo()+"','"+staffchecklist.getScreening()+"','"+staffchecklist.getAob()+"','"+staffchecklist.getHistory()+"','"+staffchecklist.getXray_sheet()+"','"+staffchecklist.getConsent()+"','"+staffchecklist.getReport()+"','"+staffchecklist.getPat_name()+"','"+staffchecklist.getInsure()+"','"+staffchecklist.getDamage_amount()+"','"+staffchecklist.getFault_insure()+"','"+staffchecklist.getMed_pay()+"','"+staffchecklist.getOther_attorney()+"','"+staffchecklist.getProtect_received()+"','"+staffchecklist.getBill()+"','"+staffchecklist.getRe_date()+"')";
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

	
public List<Staffchecklist> getStaffchecklist(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Staffchecklist> Staffchecklist = new ArrayList<Staffchecklist>();
    try{
		resultSet = statement.executeQuery("select * from tbl_staffchecklist");
		while(resultSet.next()){
			Staffchecklist.add(new Staffchecklist(resultSet.getString("form_no"),resultSet.getString("patinfo"),
		    		resultSet.getString("screening"),
		    		resultSet.getString("aob"),
		    		resultSet.getString("history"),
		    		resultSet.getString("xray_sheet"),
		    		resultSet.getString("consent"),
		    		resultSet.getString("report"),
		    		resultSet.getString("pat_name"),
		    		resultSet.getString("insure"),
		    		resultSet.getString("damage_amount"),
		    		resultSet.getString("fault_insure"),
		    		resultSet.getString("med_pay"),
		    		resultSet.getString("other_attorney"),
		    		resultSet.getString("protect_received"),
		    		resultSet.getString("bill"),
		    		resultSet.getString("re_date")));
		    		
		    		
		}
		System.out.println(Staffchecklist);
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
    return Staffchecklist;
	
}
public List<Staffchecklist> getStaff(String form_no){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Staffchecklist> Staffchecklist = new ArrayList<Staffchecklist>();
    try{
		resultSet = statement.executeQuery("select * from tbl_staffchecklist where form_no='"+form_no+"'");
		while(resultSet.next()){
			Staffchecklist.add(new Staffchecklist(resultSet.getString("form_no"),resultSet.getString("patinfo"),
		    		resultSet.getString("screening"),
		    		resultSet.getString("aob"),
		    		resultSet.getString("history"),
		    		resultSet.getString("xray_sheet"),
		    		resultSet.getString("consent"),
		    		resultSet.getString("report"),
		    		resultSet.getString("pat_name"),
		    		resultSet.getString("insure"),
		    		resultSet.getString("damage_amount"),
		    		resultSet.getString("fault_insure"),
		    		resultSet.getString("med_pay"),
		    		resultSet.getString("other_attorney"),
		    		resultSet.getString("protect_received"),
		    		resultSet.getString("bill"),
		    		resultSet.getString("re_date")));
		    		
		    		
		}
		System.out.println(Staffchecklist);
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
    return Staffchecklist;
	
}

public int updatestaffchecklist(Staffchecklist staffchecklist,String form_no,String admin)
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
    	String cmd="UPDATE tbl_staffchecklist SET patinfo='"+staffchecklist.getPatinfo()+"',screening='"+staffchecklist.getScreening()+"',aob='"+staffchecklist.getAob()+"',history='"+staffchecklist.getHistory()+"',xray_sheet='"+staffchecklist.getXray_sheet()+"',consent='"+staffchecklist.getConsent()+"',report='"+staffchecklist.getReport()+"',pat_name='"+staffchecklist.getPat_name()+"',insure='"+staffchecklist.getInsure()+"',damage_amount='"+staffchecklist.getDamage_amount()+"',fault_insure='"+staffchecklist.getFault_insure()+"',med_pay='"+staffchecklist.getMed_pay()+"',other_attorney='"+staffchecklist.getOther_attorney()+"',protect_received='"+staffchecklist.getProtect_received()+"',bill='"+staffchecklist.getBill()+"',re_date='"+staffchecklist.getRe_date()+"' WHERE form_no='"+form_no+"';";
    	String Desc="Update staffchecklist "+staffchecklist.getPat_name();
    	
    	
    	
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
public int deletestaffchecklist(String form_no){
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
    	 String cmd_getpatient_name="select pat_name from tbl_staffchecklist where form_no='"+form_no+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_name);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_staffchecklist where form_no='"+form_no+"'");
			
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

