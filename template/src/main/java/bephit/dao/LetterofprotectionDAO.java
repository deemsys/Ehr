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
import bephit.forms.LetterofprotectionForm;
import bephit.model.HippaPrivacy;
import bephit.model.Letterofprotection;
import bephit.model.Letterofprotection;
import bephit.model.Symptom;






 
public class LetterofprotectionDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setletterofprotection(Letterofprotection letterofprotectiondetails,String username)
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
	    	 
	    	 String cmd="INSERT INTO letterofprotection (username,date,dc,clinicname,address1,myclient,dateofaccident,dearsir,esq) VALUES ('"+username+"','"+letterofprotectiondetails.getDate()+"','"+letterofprotectiondetails.getDc()+"','"+letterofprotectiondetails.getClinicname()+"','"+letterofprotectiondetails.getAddress1()+"','"+letterofprotectiondetails.getMyclient()+"','"+letterofprotectiondetails.getDateofaccident()+"','"+letterofprotectiondetails.getDearsir()+"','"+letterofprotectiondetails.getEsq()+"')";
	    	    System.out.println("cmd insert value"+cmd);
	    	    statement.executeUpdate(cmd);
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

	
	public int deleteletterofprotection(String letterid)
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
	    	 
	    	 String cmd="delete from letterofprotection where letterid='"+letterid+"'";
	    	    System.out.println("cmd insert value"+cmd);
	    	    statement.executeUpdate(cmd);
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
	
	
	
	
	public List<Letterofprotection> getletterofprotection(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Letterofprotection> letterofprotection = new ArrayList<Letterofprotection>();
	    try{
			resultSet = statement.executeQuery("select * from letterofprotection");
			while(resultSet.next()){
				letterofprotection.add(new Letterofprotection
						(resultSet.getString("letterid"),
								resultSet.getString("date"),
						resultSet.getString("dc"),
						resultSet.getString("clinicname"),
						resultSet.getString("address1"),
			    		resultSet.getString("myclient"),
						resultSet.getString("dateofaccident"),
						resultSet.getString("dearsir"),
						resultSet.getString("esq")
			    		 ));
			    	
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
	    return letterofprotection;
		
	}


	public List<Letterofprotection> getletterofprotection(String letterid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Letterofprotection> letterofprotection = new ArrayList<Letterofprotection>();
	    try{
			resultSet = statement.executeQuery("select * from letterofprotection where letterid='"+letterid+"'");
			while(resultSet.next()){
				letterofprotection.add(new Letterofprotection
						(resultSet.getString("letterid"),
								resultSet.getString("date"),
						resultSet.getString("dc"),
						resultSet.getString("clinicname"),
						resultSet.getString("address1"),
			    		resultSet.getString("myclient"),
						resultSet.getString("dateofaccident"),
						resultSet.getString("dearsir"),
						resultSet.getString("esq")
			    		 ));
				System.out.println("Name::::::::::::::::::"+letterofprotection.get(0).getClinicname());
			    	
			}
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
	    return letterofprotection;
		
	}
	
	
	
	public List<Letterofprotection> getusernameletterofprotection(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Letterofprotection> letterofprotection = new ArrayList<Letterofprotection>();
	    try{
			resultSet = statement.executeQuery("select * from letterofprotection where username='"+username+"'");
			while(resultSet.next()){
				letterofprotection.add(new Letterofprotection
						(resultSet.getString("letterid"),
								resultSet.getString("date"),
						resultSet.getString("dc"),
						resultSet.getString("clinicname"),
						resultSet.getString("address1"),
			    		resultSet.getString("myclient"),
						resultSet.getString("dateofaccident"),
						resultSet.getString("dearsir"),
						resultSet.getString("esq")
			    		 ));
				System.out.println("Name::::::::::::::::::"+letterofprotection.get(0).getClinicname());
			    	
			}
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
	    return letterofprotection;
		
	}
	
	public int updateletterofprotection(Letterofprotection letterofprotection,String letterid)
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
	    	 String cmd="update letterofprotection set date='"+letterofprotection.getDate()
	    			
	    +"',dc='"+letterofprotection.getDc()
	    +"',clinicname='"+letterofprotection.getClinicname()
	    +"',address1='"+ letterofprotection.getAddress1()
	    +"',myclient='"+letterofprotection.getMyclient()
	    +"',dateofaccident='"+letterofprotection.getDateofaccident()+"',dearsir='"+letterofprotection.getDearsir()
	    +"',esq='"+letterofprotection.getEsq()+"' where letterid='"+letterid+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
	    System.out.println("cmd insert value"+cmd);
	    statement.executeUpdate(cmd);
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