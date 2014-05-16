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

import bephit.model.Faxcover;
import bephit.model.Letterofprotection;
import bephit.model.Responseattorney;
 



public class ResponseattorneyDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setresponseattorney(Responseattorney responseattorneydetails,String username)
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
	    	 
	    	 String cmd="INSERT INTO `tbl_responseattorney` (username,`name`,`address`,`regarding`,`patientname`,`dateofaccident`,`dearname`,`nameofclinic`,`treatingphysician`) VALUES ('"+username+"','"+responseattorneydetails.getName()+"','"+responseattorneydetails.getAddress()+"','"+responseattorneydetails.getRegarding()+"','"+responseattorneydetails.getPatientname()+"','"+responseattorneydetails.getDateofaccident()+"','"+responseattorneydetails.getDearname()+"','"+responseattorneydetails.getNameofclinic()+"','"+responseattorneydetails.getTreatingphysician()+"')";
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
	public List<Responseattorney> getresponseattorney(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Responseattorney> responseattorney = new ArrayList<Responseattorney>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_responseattorney");
			while(resultSet.next()){
				responseattorney.add(new Responseattorney
						(resultSet.getString("responseid"),
								resultSet.getString("name"),
						resultSet.getString("address"),
			
			    		resultSet.getString("regarding"),
			    		resultSet.getString("patientname"),
			    		resultSet.getString("dateofaccident"),
			    		resultSet.getString("dearname"),
			    		resultSet.getString("nameofclinic"),
			    		resultSet.getString("treatingphysician")
			    		 ));
				
			    	
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
	    return responseattorney;
		
	}
	public List<Responseattorney> getresponseattorney(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Responseattorney> responseattorney = new ArrayList<Responseattorney>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_responseattorney where username='"+username+"'");
			while(resultSet.next()){
				responseattorney.add(new Responseattorney
						(resultSet.getString("responseid"),
								resultSet.getString("name"),
						resultSet.getString("address"),
					
			    		resultSet.getString("regarding"),
			    		resultSet.getString("patientname"),
			    		resultSet.getString("dateofaccident"),
			    		resultSet.getString("dearname"),
			    		resultSet.getString("nameofclinic"),
			    		resultSet.getString("treatingphysician")
			    		 ));
				
			    	
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
	    return responseattorney;
		
	}
	public List<Responseattorney> getusernameresponseattorney(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Responseattorney> responseattorney = new ArrayList<Responseattorney>();
	    try{
	    	resultSet = statement.executeQuery("select * from tbl_responseattorney where username='"+username+"'");
			while(resultSet.next()){
				responseattorney.add(new Responseattorney
						(resultSet.getString("responseid"),
								resultSet.getString("name"),
						resultSet.getString("address"),
					
			    		resultSet.getString("regarding"),
			    		resultSet.getString("patientname"),
			    		resultSet.getString("dateofaccident"),
			    		resultSet.getString("dearname"),
			    		resultSet.getString("nameofclinic"),
			    		resultSet.getString("treatingphysician")
			    		 ));
				
			//	System.out.println("Name::::::::::::::::::"+faxcover.get(0).getName());
			    	
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
	    return responseattorney;
		
	}
	
	
	public int updateresponseattorney(Responseattorney responseattorneydetail,String responseid)	{
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
	    	 String cmd="update tbl_responseattorney set name='"+responseattorneydetail.getName()
	    			
	    +"',address='"+responseattorneydetail.getAddress()
	   
	    +"',regarding='"+responseattorneydetail.getRegarding()
	    +"',patientname='"+responseattorneydetail.getPatientname()	
	    +"',dateofaccident='"+responseattorneydetail.getDateofaccident()
	    +"',dearname='"+responseattorneydetail.getDearname()
	    +"',nameofclinic='"+ responseattorneydetail.getNameofclinic()
	    +"',treatingphysician='"+ responseattorneydetail.getTreatingphysician()+"' where responseid='"+responseid+"'";
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
	public int deleteresponseattorney(String responseid)
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
	    	 
	    	 String cmd="delete from tbl_responseattorney where responseid='"+responseid+"'";
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