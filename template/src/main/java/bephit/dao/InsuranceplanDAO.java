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

import bephit.model.Insuranceplan;
 



public class InsuranceplanDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setInsuranceplan(Insuranceplan insuranceplan)
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
	    	 String cmd="INSERT INTO `tbl_insuranceplan` (`insure_comp`,`addr`,`pat_name`,`accident_date`,`enrollee`,`no_objection`,`agentname`,`fax`,`name_of_clinic`,`pat`,`authorized`) VALUES ('"+insuranceplan.getInsure_comp()+"','"+insuranceplan.getAddr()+"','"+insuranceplan.getPat_name()+"','"+insuranceplan.getAccident_date()+"','"+insuranceplan.getEnrollee()+"','"+insuranceplan.getNo_objection()+"','"+insuranceplan.getAgentname()+"','"+insuranceplan.getFax()+"','"+insuranceplan.getName_of_clinic()+"','"+insuranceplan.getPat()+"','"+insuranceplan.getAuthorized()+"')";
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
	
	
	
public List<Insuranceplan> getInsuranceplan(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Insuranceplan> Insuranceplan = new ArrayList<Insuranceplan>();
    try{
		resultSet = statement.executeQuery("select * from tbl_insuranceplan order by no DESC");
		while(resultSet.next()){
			Insuranceplan.add(new Insuranceplan(resultSet.getString("no"),resultSet.getString("insure_comp"),
		    		resultSet.getString("addr"),
		    		resultSet.getString("pat_name"),
		    		resultSet.getString("accident_date"),
		    		resultSet.getString("enrollee"),
		    		resultSet.getString("no_objection"),
		    		resultSet.getString("agentname"),
		    		resultSet.getString("fax"),
		    		resultSet.getString("name_of_clinic"),
		    		resultSet.getString("pat"),
		    		resultSet.getString("authorized")));
		    		
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
    return Insuranceplan;
	
}

public List<Insuranceplan> getInsurance(String no){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Insuranceplan> Insuranceplan = new ArrayList<Insuranceplan>();
    try{
		resultSet = statement.executeQuery("select * from tbl_insuranceplan order by no DESC");
		while(resultSet.next()){
			Insuranceplan.add(new Insuranceplan(resultSet.getString("no"),resultSet.getString("insure_comp"),
		    		resultSet.getString("addr"),
		    		resultSet.getString("pat_name"),
		    		resultSet.getString("accident_date"),
		    		resultSet.getString("enrollee"),
		    		resultSet.getString("no_objection"),
		    		resultSet.getString("agentname"),
		    		resultSet.getString("fax"),
		    		resultSet.getString("name_of_clinic"),
		    		resultSet.getString("pat"),
		    		resultSet.getString("authorized")));
		    		
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
    return Insuranceplan;
	
}

public int updateinsuranceplan(Insuranceplan insuranceplan,String no,String admin)
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
    	String cmd="UPDATE tbl_insuranceplan SET insure_comp='"+insuranceplan.getInsure_comp()+"',addr='"+insuranceplan.getAddr()+"',pat_name='"+insuranceplan.getPat_name()+"',accident_date='"+insuranceplan.getAccident_date()+"',enrollee='"+insuranceplan.getEnrollee()+"',no_objection='"+insuranceplan.getNo_objection()+"',agentname='"+insuranceplan.getAgentname()+"',fax='"+insuranceplan.getFax()+"',name_of_clinic='"+insuranceplan.getName_of_clinic()+"',pat='"+insuranceplan.getPat()+"',authorized='"+insuranceplan.getAuthorized()+"' WHERE no='"+no+"';";
    	String Desc="Update insuranceplan "+insuranceplan.getPat_name();
    	
    	
    	
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

public int deleteinsuranceplan(String no){
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
    	 String cmd_getpatient_pname="select pat_name from tbl_insuranceplan where no='"+no+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_insuranceplan where no='"+no+"'");
			
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

	