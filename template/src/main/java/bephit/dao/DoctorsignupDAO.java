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

import bephit.model.Doctorsignup;
 



public class DoctorsignupDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setDoctorsignup(Doctorsignup doctorsignup)
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
	    	 String cmd="INSERT INTO `tbl_doctorsignup` (`doctorusername`,`doctorpassword`,`doctorconfirm`,`doctoremail`) VALUES ('"+doctorsignup.getDoctorusername()+"','"+doctorsignup.getDoctorpassword()+"','"+doctorsignup.getDoctorconfirm()+"','"+doctorsignup.getDoctoremail()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	    	 String cmd_login="INSERT INTO login (`username`,`password`,`email`,`role`) VALUES ('"+doctorsignup.getDoctorusername()+"','"+doctorsignup.getDoctorpassword()+"','"+doctorsignup.getDoctoremail()+"','1')";
	    	 System.out.println(cmd_login);
	    	 statement.execute(cmd_login);
	    	 String cmd_getid="SELECT LAST_INSERT_ID() as lastid";
	    	 resultSet=statement.executeQuery(cmd_getid);
	    		resultSet.next();
	    		int lastinsertedid=Integer.parseInt(resultSet.getString("lastid"));
	    		String cmd_role="insert into user_roles(user_id,authority) values('"+lastinsertedid+"','ROLE_DOCTOR')";
			  
			  System.out.println(cmd_role);
		    	 statement.execute(cmd_role);
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

	
public List<Doctorsignup> getDoctorsignup(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Doctorsignup> Doctorsignup = new ArrayList<Doctorsignup>();
    try{
		resultSet = statement.executeQuery("select * from tbl_doctorsignup");
		while(resultSet.next()){
			Doctorsignup.add(new Doctorsignup(resultSet.getString("doctorusername"),
		    		resultSet.getString("doctorpassword"),
		    		resultSet.getString("doctorconfirm"),
		    		resultSet.getString("doctoremail")));
		    		
		    		
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
    return Doctorsignup;
	
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

