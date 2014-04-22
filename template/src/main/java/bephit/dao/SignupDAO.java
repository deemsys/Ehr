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

import bephit.model.Signup;
 



public class SignupDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setSignup(Signup signup)
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
	    	 String cmd="INSERT INTO `tbl_signup` (`username`,`password`,`confirm`,`email`) VALUES ('"+signup.getUsername()+"','"+signup.getPassword()+"','"+signup.getConfirm()+"','"+signup.getEmail()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	    	 String cmd_login="INSERT INTO login (`username`,`password`,`email`,`role`) VALUES ('"+signup.getUsername()+"','"+signup.getPassword()+"','"+signup.getEmail()+"','0')";
	    	 System.out.println(cmd_login);
	    	 statement.execute(cmd_login);
	    	 String cmd_getid="SELECT LAST_INSERT_ID() as lastid";
	    	 resultSet=statement.executeQuery(cmd_getid);
	    		resultSet.next();
	    		int lastinsertedid=Integer.parseInt(resultSet.getString("lastid"));
	    		String cmd_role="insert into user_roles(user_id,authority) values('"+lastinsertedid+"','ROLE_USER')";
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

	public List<Signup> getPatientusername(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Signup> Signup = new ArrayList<Signup>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_signup where username='"+username+"'");
			while(resultSet.next()){
				Signup.add(new Signup(resultSet.getString("username"),
			    		resultSet.getString("password"),
			    		resultSet.getString("confirm"),
			    		resultSet.getString("email")));
			    		
			    		
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
	    return Signup;
		
	}
public List<Signup> getSignup(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Signup> Signup = new ArrayList<Signup>();
    try{
		resultSet = statement.executeQuery("select * from tbl_signup");
		while(resultSet.next()){
			Signup.add(new Signup(resultSet.getString("username"),
		    		resultSet.getString("password"),
		    		resultSet.getString("confirm"),
		    		resultSet.getString("email")));
		    		
		    		
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
    return Signup;
	
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

