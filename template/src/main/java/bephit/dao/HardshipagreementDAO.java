package bephit.dao;

import java.security.Principal;
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
import bephit.model.Insuranceplan;
 



public class HardshipagreementDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setHardshipagreement(Hardshipagreement hardshipagreement,String username)
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
	    	 
	    	 String cmd="INSERT INTO `tbl_hardshipagreement` (username,`date`,`print_pat_name`,`pat_sign`,`witness_sign`) VALUES ('"+username+"','"+hardshipagreement.getDate()+"','"+hardshipagreement.getPrint_pat_name()+"','"+hardshipagreement.getPat_sign()+"','"+hardshipagreement.getWitness_sign()+"')";
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
	
	

	
public List<Hardshipagreement> getHardshipagreement(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Hardshipagreement> Hardshipagreement = new ArrayList<Hardshipagreement>();
    try{
		resultSet = statement.executeQuery("select * from tbl_hardshipagreement " );
		while(resultSet.next()){
			Hardshipagreement.add(new Hardshipagreement(resultSet.getString("agreement_no"),resultSet.getString("date"),
		    		resultSet.getString("print_pat_name"),
		    		resultSet.getString("pat_sign"),
		    		resultSet.getString("witness_sign")));
		    		
		    		
		}
		System.out.println(Hardshipagreement);
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
    return Hardshipagreement;
	
}
public List<Hardshipagreement> getUsernameHardshipagreement(Principal principal){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Hardshipagreement> Hardshipagreement = new ArrayList<Hardshipagreement>();
    try{
		resultSet = statement.executeQuery("select * from tbl_hardshipagreement where username='"+principal.getName()+"'" );
		while(resultSet.next()){
			Hardshipagreement.add(new Hardshipagreement(resultSet.getString("agreement_no"),resultSet.getString("date"),
		    		resultSet.getString("print_pat_name"),
		    		resultSet.getString("pat_sign"),
		    		resultSet.getString("witness_sign")));
		    		
		    		
		}
		System.out.println(Hardshipagreement);
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
    return Hardshipagreement;
	
}

public List<Hardshipagreement> getHardshipagreement(String agreement_no){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Hardshipagreement> Hardshipagreement = new ArrayList<Hardshipagreement>();
    try{
		resultSet = statement.executeQuery("select * from tbl_hardshipagreement where agreement_no='"+agreement_no+"'" );
		while(resultSet.next()){
			Hardshipagreement.add(new Hardshipagreement(resultSet.getString("agreement_no"),resultSet.getString("date"),
		    		resultSet.getString("print_pat_name"),
		    		resultSet.getString("pat_sign"),
		    		resultSet.getString("witness_sign")));
		    		
		    		
		}
		System.out.println(Hardshipagreement);
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
    return Hardshipagreement;
	
}

public int updatehardship(Hardshipagreement hardshipagreement,String agreement_no,String admin)
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
    	 
    	String cmd="UPDATE tbl_hardshipagreement SET date='"+hardshipagreement.getDate()+"',print_pat_name='"+hardshipagreement.getPrint_pat_name()+"',pat_sign='"+hardshipagreement.getPat_sign()+"',witness_sign='"+hardshipagreement.getWitness_sign()+"' where agreement_no='"+agreement_no+"';";
   
    	
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

public int deletehardship(Principal principal){
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
				
			statement.execute("delete from tbl_hardshipagreement where username='"+principal.getName()+"'");
			
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
public int deletehardship(String agreement_no){
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
    	 String cmd_getpat_pname="select print_pat_name from tbl_hardshipagreement where agreement_no='"+agreement_no+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpat_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_hardshipagreement where agreement_no='"+agreement_no+"'");
			
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
public List<Hardshipagreement> getlimitedhardshipagreement(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Hardshipagreement> Hardshipagreement = new ArrayList<Hardshipagreement>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_hardshipagreement order by print_pat_name asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			Hardshipagreement.add(new Hardshipagreement(resultSet.getString("agreement_no"),resultSet.getString("date"),
		    		resultSet.getString("print_pat_name"),
		    		resultSet.getString("pat_sign"),
		    		resultSet.getString("witness_sign")));
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
	return Hardshipagreement;

}
public int getnoofhardshipagreement() {
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
	List<Hardshipagreement> Hardshipagreement = new ArrayList<Hardshipagreement>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_hardshipagreement";
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

