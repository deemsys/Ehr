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
import bephit.model.Insuranceverification;
 



public class InsuranceverificationDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setInsuranceverification(Insuranceverification insuranceverification)
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
	    	 //System.out.println(dateFormat.format(date));
	    	 String cmd="INSERT INTO `tbl_insuranceverification` (`verify_name`,`spoke_with`,`date`,`fax`,`amount_deduct`,`amount_deduct_met`,`max_visit`,`is_chiropractic`,`at_what`,`xray_cover`,`atwhat`,`subject_deduct`,`benefits_honored`,`network_benefits`,`deductible`,`covered`,`cm`,`pt`,`ov`,`xray_deduct`,`doctors_assign`,`mail_claims`) VALUES ('"+insuranceverification.getVerify_name()+"','"+insuranceverification.getSpoke_with()+"','"+insuranceverification.getDate()+"','"+insuranceverification.getFax()+"','"+insuranceverification.getAmount_deduct()+"','"+insuranceverification.getAmount_deduct_met()+"','"+insuranceverification.getMax_visit()+"','"+insuranceverification.getIs_chiropractic()+"','"+insuranceverification.getAt_what()+"','"+insuranceverification.getXray_cover()+"','"+insuranceverification.getAtwhat()+"','"+insuranceverification.getSubject_deduct()+"','"+insuranceverification.getBenefits_honored()+"','"+insuranceverification.getNetwork_benefits()+"','"+insuranceverification.getDeductible()+"','"+insuranceverification.getCovered()+"','"+insuranceverification.getCm()+"','"+insuranceverification.getPt()+"','"+insuranceverification.getOv()+"','"+insuranceverification.getXray_deduct()+"','"+insuranceverification.getDoctors_assign()+"','"+insuranceverification.getMail_claims()+"')";
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
	
	public int updateinsuranceverification(Insuranceverification insuranceverification,String form_no)
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
	    	String cmd="UPDATE tbl_insuranceverification SET verify_name='"+insuranceverification.getVerify_name()+"',spoke_with='"+insuranceverification.getSpoke_with()+"',date='"+insuranceverification.getDate()+"',fax='"+insuranceverification.getFax()+"',amount_deduct='"+insuranceverification.getAmount_deduct()+"',amount_deduct_met='"+insuranceverification.getAmount_deduct_met()+"',max_visit='"+insuranceverification.getMax_visit()+"',is_chiropractic='"+insuranceverification.getIs_chiropractic()+"',at_what='"+insuranceverification.getAt_what()+"',xray_cover='"+insuranceverification.getXray_cover()+"',atwhat='"+insuranceverification.getAtwhat()+"',subject_deduct='"+insuranceverification.getSubject_deduct()+"',benefits_honored='"+insuranceverification.getBenefits_honored()+"',network_benefits='"+insuranceverification.getNetwork_benefits()+"',deductible='"+insuranceverification.getDeductible()+"',covered='"+insuranceverification.getCovered()+"',cm='"+insuranceverification.getCm()+"',pt='"+insuranceverification.getPt()+"',ov='"+insuranceverification.getOv()+"',xray_deduct='"+insuranceverification.getXray_deduct()+"',doctors_assign='"+insuranceverification.getDoctors_assign()+"',mail_claims='"+insuranceverification.getMail_claims()+"';";
	    		
	    	String Desc="Update insuranceverification "+insuranceverification.getVerify_name();
	    	
	    	
	    	
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

	
public List<Insuranceverification> getInsuranceverification(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Insuranceverification> Insuranceverification = new ArrayList<Insuranceverification>();
    try{
		resultSet = statement.executeQuery("select * from tbl_insuranceverification order by form_no DESC");
		while(resultSet.next()){
			Insuranceverification.add(new Insuranceverification(resultSet.getString("verify_name"),
		    		resultSet.getString("spoke_with"),
		    		resultSet.getString("date"),
		    		resultSet.getString("fax"),
		    		resultSet.getString("amount_deduct"),
		    		resultSet.getString("amount_deduct_met"),
		    		resultSet.getString("max_visit"),
		    		resultSet.getString("is_chiropractic"),
		    		resultSet.getString("at_what"),
		    		resultSet.getString("xray_cover"),
		    		resultSet.getString("atwhat"),
		    		resultSet.getString("subject_deduct"),
		    		resultSet.getString("benefits_honored"),
		    		resultSet.getString("network_benefits"),
		    		resultSet.getString("deductible"),
		    		resultSet.getString("covered"),
		    		resultSet.getString("cm"),
		    		resultSet.getString("pt"),
		    		resultSet.getString("ov"),
		    		resultSet.getString("xray_deduct"),
		    		resultSet.getString("doctors_assign"),
		    		resultSet.getString("mail_claims")));
		    		
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
    return Insuranceverification;
	
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

	