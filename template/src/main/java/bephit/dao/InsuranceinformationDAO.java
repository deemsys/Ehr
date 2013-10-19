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

import bephit.model.Insuranceinformation;
 



public class InsuranceinformationDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setInsuranceinformation(Insuranceinformation insuranceinformation)
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
	    	 String cmd="INSERT INTO `tbl_insuranceinformation` (`patient_name`,`date_of_accident`,`have_insurance`,`employers_name`,`insurance_company`,`phone`,`policy`,`group`,`supplemental_company`,`sup_phone`,`patient_sign`,`date`,`spouse_sign`,`date1`) VALUES ('"+insuranceinformation.getPatient_name()+"','"+insuranceinformation.getDate_of_accident()+"','"+insuranceinformation.getHave_insurance()+"','"+insuranceinformation.getEmployers_name()+"','"+insuranceinformation.getInsurance_company()+"','"+insuranceinformation.getPhone()+"','"+insuranceinformation.getPolicy()+"','"+insuranceinformation.getGroup()+"','"+insuranceinformation.getSupplemental_company()+"','"+insuranceinformation.getSup_phone()+"','"+insuranceinformation.getPatient_sign()+"','"+insuranceinformation.getDate()+"','"+insuranceinformation.getSpouse_sign()+"','"+insuranceinformation.getDate1()+"')";
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

	
public List<Insuranceinformation> getInsuranceinformation(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Insuranceinformation> Insuranceinformation = new ArrayList<Insuranceinformation>();
    try{
		resultSet = statement.executeQuery("select * from tbl_insuranceinformation order by Number DESC");
		while(resultSet.next()){
			Insuranceinformation.add(new Insuranceinformation(resultSet.getString("patient_name"),
		    		resultSet.getString("date_of_accident"),
		    		resultSet.getString("have_insurance"),
		    		resultSet.getString("employers_name"),
		    		resultSet.getString("insurance_company"),
		    		resultSet.getString("phone"),
		    		resultSet.getString("policy"),
		    		resultSet.getString("group"),
		    		resultSet.getString("supplemental_company"),
		    		resultSet.getString("sup_phone"),
		    		resultSet.getString("patient_sign"),
		    		resultSet.getString("date"),
		    		resultSet.getString("spouse_sign"),
		    		resultSet.getString("date1")));
		    		
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
    return Insuranceinformation;
	
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

	