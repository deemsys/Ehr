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
import bephit.forms.PatientattorneyForm;
//import bephit.model.HippaPrivacy;
import bephit.model.Patientattorney;
import bephit.model.Perrychiropractic;
//import bephit.model.Symptom;



 
public class Patientattorney1DAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
		
	
	public int setpatientattorney(Patientattorney patientattorneydetails)
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
	    	 
	    	 String cmd="INSERT INTO patientattorney (name,address,reg,patientname,date,dearsir,nameofclinic,treat) VALUES ('"+patientattorneydetails.getName()+"','"+patientattorneydetails.getAddress()+"','"+patientattorneydetails.getReg()+"','"+patientattorneydetails.getPatientname()+"','"+patientattorneydetails.getDate()+"','"+patientattorneydetails.getDearsir()+"','"+patientattorneydetails.getNameofclinic()+"','"+patientattorneydetails.getTreat()+"')";
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
	
	
	
	public List<Patientattorney> getpatientattorney(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Patientattorney> patientattorney = new ArrayList<Patientattorney>();
	    try{
			resultSet = statement.executeQuery("select * from patientattorney");
			while(resultSet.next()){
				patientattorney.add(new Patientattorney
						(resultSet.getString("patientid"),
								resultSet.getString("name"),
						resultSet.getString("address"),
						resultSet.getString("reg"),
						resultSet.getString("patientname"),
						resultSet.getString("date"),
			    		resultSet.getString("dearsir"),
			    		resultSet.getString("nameofclinic"),
			    		resultSet.getString("treat")
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
	    return patientattorney;
		
	}

	
	
	public List<Patientattorney> getpatientattorney(String patientid){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Patientattorney> patientattorney = new ArrayList<Patientattorney>();
	    try{
			resultSet = statement.executeQuery("select * from patientattorney where patientid='"+patientid+"'");
			while(resultSet.next()){
				patientattorney.add(new Patientattorney
						(resultSet.getString("patientid"),
								resultSet.getString("name"),
						resultSet.getString("address"),
						resultSet.getString("reg"),
						resultSet.getString("patientname"),
						resultSet.getString("date"),
			    		resultSet.getString("dearsir"),
			    		resultSet.getString("nameofclinic"),
			    		resultSet.getString("treat")
			    		 ));
				System.out.println("Name::::::::::::::::::"+patientattorney.get(0).getName());
			    	
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
	    return patientattorney;
		
	}
	
	
	
	public int updatepatientattorney(Patientattorney patientattorney,String patientid)
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
	    	 String cmd="update patientattorney set name='"+patientattorney.getName()
	    			
	    +"',address='"+patientattorney.getAddress()
	    +"',reg='"+patientattorney.getReg()
	    +"',patientname='"+ patientattorney.getPatientname()
	    +"',date='"+ patientattorney.getDate()
	    +"',dearsir='"+ patientattorney.getDearsir()
	    +"',nameofclinic='"+ patientattorney.getNameofclinic()
	    +"',treat='"+ patientattorney.getTreat()
	    +"' where patientid='"+patientid+"'";
	          	           
		  		 
	    	 		 
	    	 		 
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
	
	
	public int deletepatientattorney(String patientid)
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
	    	 
	    	 String cmd="delete from patientattorney where patientid='"+patientid+"'";
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
	
	

	    	