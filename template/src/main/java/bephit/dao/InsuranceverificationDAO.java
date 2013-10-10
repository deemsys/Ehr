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
		//List<ParticipantsDetails> participants = new ArrayList<ParticipantsDetails>();
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
		resultSet = statement.executeQuery("select * from tbl_insuranceverification");
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

	