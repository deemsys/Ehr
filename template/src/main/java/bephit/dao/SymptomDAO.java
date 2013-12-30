package bephit.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import bephit.model.*;

public class SymptomDAO
{ 
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int updatefootexam(Symptom symptomdetails,String symptomno)
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
	    	 String cmd="update symptom set pname='"+symptomdetails.getPname()
	    			 +"',number='"+symptomdetails.getNumber()
	    +"',date='"+symptomdetails.getDate()
	    +"',achepath='"+symptomdetails.getAchepath()
	    +"',acheleft='"+ symptomdetails.getAcheleft()
	    +"',achetop='"+ symptomdetails.getAchetop()
	    +"',achepath1='"+symptomdetails.getAchepath1()
	    +"',acheleft1='"+ symptomdetails.getAcheleft1()
	    +"',achetop1='"+ symptomdetails.getAchetop1()
	    +"',achepath2='"+symptomdetails.getAchepath2()
	    +"',acheleft2='"+ symptomdetails.getAcheleft2()
	    +"',achetop2='"+ symptomdetails.getAchetop2()
	    +"',achepath3='"+symptomdetails.getAchepath3()
	    +"',acheleft3='"+ symptomdetails.getAcheleft3()
	    +"',achetop3='"+ symptomdetails.getAchetop3()
	    +"',achepath4='"+symptomdetails.getAchepath4()
	    +"',acheleft4='"+ symptomdetails.getAcheleft4()
	    +"',achetop4='"+ symptomdetails.getAchetop4()
	    +"',numbpath='"+symptomdetails.getNumbpath()
	    +"',numbleft='"+ symptomdetails.getNumbleft()
	    +"',numbtop='"+ symptomdetails.getNumbtop()
	     +"',numbpath1='"+symptomdetails.getNumbpath1()
	    +"',numbleft1='"+ symptomdetails.getNumbleft1()
	    +"',numbtop1='"+ symptomdetails.getNumbtop1()
	     +"',numbpath2='"+symptomdetails.getNumbpath2()
	    +"',numbleft2='"+ symptomdetails.getNumbleft2()
	    +"',numbtop2='"+ symptomdetails.getNumbtop2()
	     +"',numbpath3='"+symptomdetails.getNumbpath3()
	    +"',numbleft3='"+ symptomdetails.getNumbleft3()
	    +"',numbtop3='"+ symptomdetails.getNumbtop3()
	     +"',numbpath4='"+symptomdetails.getNumbpath4()
	    +"',numbleft4='"+ symptomdetails.getNumbleft4()
	    +"',numbtop4='"+ symptomdetails.getNumbtop4()
	     +"',pinpath='"+symptomdetails.getPinpath()
	    +"',pinleft='"+ symptomdetails.getPinleft()
	    +"',pintop='"+ symptomdetails.getPintop()
	    +"',pinpath1='"+symptomdetails.getPinpath1()
	    +"',pinleft1='"+ symptomdetails.getPinleft1()
	    +"',pintop1='"+ symptomdetails.getPintop1()
	    +"',pinpath2='"+symptomdetails.getPinpath2()
	    +"',pinleft2='"+ symptomdetails.getPinleft2()
	    +"',pintop2='"+ symptomdetails.getPintop2()
	    +"',pinpath3='"+symptomdetails.getPinpath3()
	    +"',pinleft3='"+ symptomdetails.getPinleft3()
	    +"',pintop3='"+ symptomdetails.getPintop3()
	    +"',pinpath4='"+symptomdetails.getPinpath4()
	    +"',pinleft4='"+ symptomdetails.getPinleft4()
	    +"',pintop4='"+ symptomdetails.getPintop4()
	    +"',burnpath='"+symptomdetails.getBurnpath()
	    +"',burnleft='"+ symptomdetails.getBurnleft()
	    +"',burntop='"+ symptomdetails.getBurntop()
	    +"',burnpath1='"+symptomdetails.getBurnpath1()
	    +"',burnleft1='"+ symptomdetails.getBurnleft1()
	    +"',burntop1='"+ symptomdetails.getBurntop1()
	    +"',burnpath2='"+symptomdetails.getBurnpath2()
	    +"',burnleft2='"+ symptomdetails.getBurnleft2()
	    +"',burntop2='"+ symptomdetails.getBurntop2()
	    +"',burnpath3='"+symptomdetails.getBurnpath3()
	    +"',burnleft3='"+ symptomdetails.getBurnleft3()
	    +"',burntop3='"+ symptomdetails.getBurntop3()
	    +"',burnpath4='"+symptomdetails.getBurnpath4()
	    +"',burnleft4='"+ symptomdetails.getBurnleft4()
	    +"',burntop4='"+ symptomdetails.getBurntop4()
	    +"',stabpath='"+symptomdetails.getStabpath()
	    +"',stableft='"+ symptomdetails.getStableft()
	    +"',stabtop='"+ symptomdetails.getStabtop()
	     +"',stabpath1='"+symptomdetails.getStabpath1()
	    +"',stableft1='"+ symptomdetails.getStableft1()
	    +"',stabtop1='"+ symptomdetails.getStabtop1()
	     +"',stabpath2='"+symptomdetails.getStabpath2()
	    +"',stableft2='"+ symptomdetails.getStableft2()
	    +"',stabtop2='"+ symptomdetails.getStabtop2()
	     +"',stabpath3='"+symptomdetails.getStabpath3()
	    +"',stableft3='"+ symptomdetails.getStableft3()
	    +"',stabtop3='"+ symptomdetails.getStabtop3()
	     +"',stabpath4='"+symptomdetails.getStabpath4()
	    +"',stableft4='"+ symptomdetails.getStableft4()
	    +"',stabtop4='"+ symptomdetails.getStabtop4()+"' where symptomno='"+symptomno+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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
	
	public int insertsymptomimage(Symptom symptom)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
			String d;
			d=("insert into symptom(pname,number,date,achepath,acheleft,achetop,achepath1,acheleft1,achetop1,achepath2,acheleft2,achetop2,achepath3,acheleft3,achetop3,achepath4,acheleft4,achetop4,numbpath,numbleft,numbtop,numbpath1,numbleft1,numbtop1,numbpath2,numbleft2,numbtop2,numbpath3,numbleft3,numbtop3,numbpath4,numbleft4,numbtop4,pinpath,pinleft,pintop,pinpath1,pinleft1,pintop1,pinpath2,pinleft2,pintop2,pinpath3,pinleft3,pintop3,pinpath4,pinleft4,pintop4,burnpath,burnleft,burntop,burnpath1,burnleft1,burntop1,burnpath2,burnleft2,burntop2,burnpath3,burnleft3,burntop3,burnpath4,burnleft4,burntop4,stabpath,stableft,stabtop,stabpath1,stableft1,stabtop1,stabpath2,stableft2,stabtop2,stabpath3,stableft3,stabtop3,stabpath4,stableft4,stabtop4)values('"
					+symptom.getPname()
					+"','" +symptom.getNumber()
					+"','" +symptom.getDate()
					+"','"+symptom.getAchepath()
					+"','" +symptom.getAcheleft()
					+"','"+symptom.getAchetop()
					+"','"+symptom.getAchepath1()
					+"','" +symptom.getAcheleft1()
					+"','"+symptom.getAchetop1()
					+"','"+symptom.getAchepath2()
					+"','" +symptom.getAcheleft2()
					+"','"+symptom.getAchetop2()
					+"','"+symptom.getAchepath3()
					+"','" +symptom.getAcheleft3()
					+"','"+symptom.getAchetop3()
					+"','"+symptom.getAchepath4()
					+"','" +symptom.getAcheleft4()
					+"','"+symptom.getAchetop4()
					+"','"+symptom.getNumbpath()
					+"','" +symptom.getNumbleft()
					+"','"+symptom.getNumbtop()
					+"','"+symptom.getNumbpath1()
					+"','" +symptom.getNumbleft1()
					+"','"+symptom.getNumbtop1()
					+"','"+symptom.getNumbpath2()
					+"','" +symptom.getNumbleft2()
					+"','"+symptom.getNumbtop2()
					+"','"+symptom.getNumbpath3()
					+"','" +symptom.getNumbleft3()
					+"','"+symptom.getNumbtop3()
					+"','"+symptom.getNumbpath4()
					+"','" +symptom.getNumbleft4()
					+"','"+symptom.getNumbtop4()
					+"','"+symptom.getPinpath()
					+"','" +symptom.getPinleft()
					+"','"+symptom.getPintop()
					+"','"+symptom.getPinpath1()
					+"','" +symptom.getPinleft1()
					+"','"+symptom.getPintop1()
					+"','"+symptom.getPinpath2()
					+"','" +symptom.getPinleft2()
					+"','"+symptom.getPintop2()
					+"','"+symptom.getPinpath3()
					+"','" +symptom.getPinleft3()
					+"','"+symptom.getPintop3()
					+"','"+symptom.getPinpath4()
					+"','" +symptom.getPinleft4()
					+"','"+symptom.getPintop4()
					+"','"+symptom.getBurnpath()
					+"','" +symptom.getBurnleft()
					+"','"+symptom.getBurntop()
					+"','"+symptom.getBurnpath1()
					+"','" +symptom.getBurnleft1()
					+"','"+symptom.getBurntop1()
					+"','"+symptom.getBurnpath2()
					+"','" +symptom.getBurnleft2()
					+"','"+symptom.getBurntop2()
					+"','"+symptom.getBurnpath3()
					+"','" +symptom.getBurnleft3()
					+"','"+symptom.getBurntop3()
					+"','"+symptom.getBurnpath4()
					+"','" +symptom.getBurnleft4()
					+"','"+symptom.getBurntop4()
					+"','"+symptom.getStabpath()
					+"','" +symptom.getStableft()
					+"','"+symptom.getStabtop()
					+"','"+symptom.getStabpath1()
					+"','" +symptom.getStableft1()
					+"','"+symptom.getStabtop1()
					+"','"+symptom.getStabpath2()
					+"','" +symptom.getStableft2()
					+"','"+symptom.getStabtop2()
					+"','"+symptom.getStabpath3()
					+"','" +symptom.getStableft3()
					+"','"+symptom.getStabtop3()
					+"','"+symptom.getStabpath4()
					+"','" +symptom.getStableft4()
					+"','"+symptom.getStabtop4()		
					+"')");
			System.out.println("d"+d);
			statement.executeUpdate(d);
			
		} catch (SQLException e1) {
			
			
			e1.printStackTrace();
		}
	    try{ }
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
	public List<Symptom> getsymptomDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Symptom> symptom = new ArrayList<Symptom>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from symptom");
			while(resultSet.next()){
				symptom.add(new Symptom(resultSet.getString("symptomno"),resultSet.getString("pname"),
						resultSet.getString("number"),
						resultSet.getString("date"),
						resultSet.getString("achepath"),
						resultSet.getString("acheleft"),
						resultSet.getString("achetop"),
						resultSet.getString("achepath1"),
						resultSet.getString("acheleft1"),
						resultSet.getString("achetop1"),
						resultSet.getString("achepath2"),
						resultSet.getString("acheleft2"),
						resultSet.getString("achetop2"),
						resultSet.getString("achepath3"),
						resultSet.getString("acheleft3"),
						resultSet.getString("achetop3"),
						resultSet.getString("achepath4"),
						resultSet.getString("acheleft4"),
						resultSet.getString("achetop4"),
						resultSet.getString("numbpath"),
						resultSet.getString("numbleft"),
						resultSet.getString("numbtop"),
						resultSet.getString("numbpath1"),
						resultSet.getString("numbleft1"),
						resultSet.getString("numbtop1"),
						resultSet.getString("numbpath2"),
						resultSet.getString("numbleft2"),
						resultSet.getString("numbtop2"),
						resultSet.getString("numbpath3"),
						resultSet.getString("numbleft3"),
						resultSet.getString("numbtop3"),
						resultSet.getString("numbpath4"),
						resultSet.getString("numbleft4"),
						resultSet.getString("numbtop4"),
						resultSet.getString("pinpath"),
						resultSet.getString("pinleft"),
						resultSet.getString("pintop"),
						resultSet.getString("pinpath1"),
						resultSet.getString("pinleft1"),
						resultSet.getString("pintop1"),
						resultSet.getString("pinpath2"),
						resultSet.getString("pinleft2"),
						resultSet.getString("pintop2"),
						resultSet.getString("pinpath3"),
						resultSet.getString("pinleft3"),
						resultSet.getString("pintop3"),
						resultSet.getString("pinpath4"),
						resultSet.getString("pinleft4"),
						resultSet.getString("pintop4"),
						resultSet.getString("burnpath"),
						resultSet.getString("burnleft"),
						resultSet.getString("burntop"),
						resultSet.getString("burnpath1"),
						resultSet.getString("burnleft1"),
						resultSet.getString("burntop1"),
						resultSet.getString("burnpath2"),
						resultSet.getString("burnleft2"),
						resultSet.getString("burntop2"),
						resultSet.getString("burnpath3"),
						resultSet.getString("burnleft3"),
						resultSet.getString("burntop3"),
						resultSet.getString("burnpath4"),
						resultSet.getString("burnleft4"),
						resultSet.getString("burntop4"),
						resultSet.getString("stabpath"),
						resultSet.getString("stableft"),
						resultSet.getString("stabtop"),
						resultSet.getString("stabpath1"),
						resultSet.getString("stableft1"),
						resultSet.getString("stabtop1"),
						resultSet.getString("stabpath2"),
						resultSet.getString("stableft2"),
						resultSet.getString("stabtop2"),
						resultSet.getString("stabpath3"),
						resultSet.getString("stableft3"),
						resultSet.getString("stabtop3"),
						resultSet.getString("stabpath4"),
						resultSet.getString("stableft4"),
						resultSet.getString("stabtop4")							
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
	    return symptom;
		
	}
	public int deletesymptomdetails(String symptomno)
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
	    	System.out.print("database");
			statement.executeUpdate("delete from symptom where symptomno='"+symptomno+"'");
	        System.out.println("deleted");
	        flag=1;
	}catch(Exception e){
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    	flag=0;
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    if(flag==1)
    {
    	return 1;
    }
    	
  
		return 0;
	}
	public List<Symptom> getsymptomDetails(String symptomexamno){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Symptom> symptom = new ArrayList<Symptom>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from symptom where symptomno='"+symptomexamno+"'");
			while(resultSet.next()){
				symptom.add(new Symptom(resultSet.getString("symptomno"),
						resultSet.getString("pname"),
						resultSet.getString("number"),
						resultSet.getString("date"),
						resultSet.getString("achepath"),
						resultSet.getString("acheleft"),
						resultSet.getString("achetop"),
						resultSet.getString("achepath1"),
						resultSet.getString("acheleft1"),
						resultSet.getString("achetop1"),
						resultSet.getString("achepath2"),
						resultSet.getString("acheleft2"),
						resultSet.getString("achetop2"),
						resultSet.getString("achepath3"),
						resultSet.getString("acheleft3"),
						resultSet.getString("achetop3"),
						resultSet.getString("achepath4"),
						resultSet.getString("acheleft4"),
						resultSet.getString("achetop4"),
						resultSet.getString("numbpath"),
						resultSet.getString("numbleft"),
						resultSet.getString("numbtop"),
						resultSet.getString("numbpath1"),
						resultSet.getString("numbleft1"),
						resultSet.getString("numbtop1"),
						resultSet.getString("numbpath2"),
						resultSet.getString("numbleft2"),
						resultSet.getString("numbtop2"),
						resultSet.getString("numbpath3"),
						resultSet.getString("numbleft3"),
						resultSet.getString("numbtop3"),
						resultSet.getString("numbpath4"),
						resultSet.getString("numbleft4"),
						resultSet.getString("numbtop4"),
						resultSet.getString("pinpath"),
						resultSet.getString("pinleft"),
						resultSet.getString("pintop"),
						resultSet.getString("pinpath1"),
						resultSet.getString("pinleft1"),
						resultSet.getString("pintop1"),
						resultSet.getString("pinpath2"),
						resultSet.getString("pinleft2"),
						resultSet.getString("pintop2"),
						resultSet.getString("pinpath3"),
						resultSet.getString("pinleft3"),
						resultSet.getString("pintop3"),
						resultSet.getString("pinpath4"),
						resultSet.getString("pinleft4"),
						resultSet.getString("pintop4"),
						resultSet.getString("burnpath"),
						resultSet.getString("burnleft"),
						resultSet.getString("burntop"),
						resultSet.getString("burnpath1"),
						resultSet.getString("burnleft1"),
						resultSet.getString("burntop1"),
						resultSet.getString("burnpath2"),
						resultSet.getString("burnleft2"),
						resultSet.getString("burntop2"),
						resultSet.getString("burnpath3"),
						resultSet.getString("burnleft3"),
						resultSet.getString("burntop3"),
						resultSet.getString("burnpath4"),
						resultSet.getString("burnleft4"),
						resultSet.getString("burntop4"),
						resultSet.getString("stabpath"),
						resultSet.getString("stableft"),
						resultSet.getString("stabtop"),
						resultSet.getString("stabpath1"),
						resultSet.getString("stableft1"),
						resultSet.getString("stabtop1"),
						resultSet.getString("stabpath2"),
						resultSet.getString("stableft2"),
						resultSet.getString("stabtop2"),
						resultSet.getString("stabpath3"),
						resultSet.getString("stableft3"),
						resultSet.getString("stabtop3"),
						resultSet.getString("stabpath4"),
						resultSet.getString("stableft4"),
						resultSet.getString("stabtop4")							
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
	    return symptom;
		
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