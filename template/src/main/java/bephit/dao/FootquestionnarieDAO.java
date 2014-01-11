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


import bephit.model.Footquestionnarie;
import bephit.model.Lowback;
public class FootquestionnarieDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setFootquestionnarie(Footquestionnarie footquestionnarie)
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
	    	 String cmd="INSERT INTO `tbl_footquestionnarie`(`stiff`,`swollen`,`unevensurface`,`flatsurface`,`updownstairs`,`lyinginbed`,`sternous`,`moderateactivity`,`lightactivity`,`best`,`trouble`,`socks`,`heavywork`,`jogging`,`walking`,`stand`,`fewminutes`,`difficulty`,`women`,`dress`,`shoes`,`orthopedic`,`allversion`,`foot`,`ankle`,`date`,`birthdate`,`security`)VALUES ('"+footquestionnarie.getStiff()+"','"+footquestionnarie.getSwollen()+"','"+footquestionnarie.getUnevensurface()+"','"+footquestionnarie.getFlatsurface()+"','"+footquestionnarie.getUpdownstairs()+"','"+footquestionnarie.getLyinginbed()+"','"+footquestionnarie.getSternous()+"','"+footquestionnarie.getModerateactivity()+"','"+footquestionnarie.getLightactivity()+"','"+footquestionnarie.getBest()+"','"+footquestionnarie.getTrouble()+"','"+footquestionnarie.getSocks()+"','"+footquestionnarie.getHeavywork()+"','"+footquestionnarie.getJogging()+"','"+footquestionnarie.getWalking()+"','"+footquestionnarie.getStand()+"','"+footquestionnarie.getFewminutes()+"','"+footquestionnarie.getDifficulty()+"','"+footquestionnarie.getWomen()+"','"+footquestionnarie.getDress()+"','"+footquestionnarie.getShoes()+"','"+footquestionnarie.getOrthopedic()+"','"+footquestionnarie.getAllversion()+"','"+footquestionnarie.getFoot()+"','"+footquestionnarie.getAnkle()+"','"+footquestionnarie.getDate()+"','"+footquestionnarie.getBirthdate()+"','"+footquestionnarie.getSecurity()+"')";
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

	
public List<Footquestionnarie> getFootquestionnarie(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Footquestionnarie> footquestionnarie = new ArrayList<Footquestionnarie>();
    try{
		resultSet = statement.executeQuery("select * from tbl_footquestionnarie");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			footquestionnarie.add( new Footquestionnarie(resultSet.getString("footquestionno"), resultSet.getString("stiff"), resultSet.getString("swollen"), resultSet.getString("unevensurface"), resultSet.getString("flatsurface"), resultSet.getString("updownstairs"), resultSet.getString("lyinginbed"), resultSet.getString("sternous"), resultSet.getString("moderateactivity"), resultSet.getString("lightactivity"), resultSet.getString("best"), resultSet.getString("trouble"), resultSet.getString("socks"), resultSet.getString("heavywork"), resultSet.getString("jogging"), resultSet.getString("walking"), resultSet.getString("stand"), resultSet.getString("fewminutes"), resultSet.getString("difficulty"), resultSet.getString("women"), resultSet.getString("dress"), resultSet.getString("shoes"), resultSet.getString("orthopedic"), resultSet.getString("allversion"), resultSet.getString("foot"), resultSet.getString("ankle"), resultSet.getString("date"), resultSet.getString("birthdate"), resultSet.getString("security")));
			}
    }catch(Exception e){
    	System.out.println("e"+e);
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return footquestionnarie;
}

public List<Footquestionnarie> getFoot(String footquestionno){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Footquestionnarie> footquestionnarie = new ArrayList<Footquestionnarie>();
    try{
		resultSet = statement.executeQuery("select * from tbl_footquestionnarie WHERE footquestionno='"+footquestionno+"'");
		System.out.println(resultSet.toString());
		while(resultSet.next()){
			footquestionnarie.add( new Footquestionnarie(resultSet.getString("footquestionno"), resultSet.getString("stiff"), resultSet.getString("swollen"), resultSet.getString("unevensurface"), resultSet.getString("flatsurface"), resultSet.getString("updownstairs"), resultSet.getString("lyinginbed"), resultSet.getString("sternous"), resultSet.getString("moderateactivity"), resultSet.getString("lightactivity"), resultSet.getString("best"), resultSet.getString("trouble"), resultSet.getString("socks"), resultSet.getString("heavywork"), resultSet.getString("jogging"), resultSet.getString("walking"), resultSet.getString("stand"), resultSet.getString("fewminutes"), resultSet.getString("difficulty"), resultSet.getString("women"), resultSet.getString("dress"), resultSet.getString("shoes"), resultSet.getString("orthopedic"), resultSet.getString("allversion"), resultSet.getString("foot"), resultSet.getString("ankle"), resultSet.getString("date"), resultSet.getString("birthdate"), resultSet.getString("security")));
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
    return footquestionnarie;
}
public int updatefootquestionnarie(Footquestionnarie footquestionnarie,String footquestionno,String admin)
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
    	 System.out.println("updatepatient_id"+footquestionno);
    	 System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_footquestionnarie SET stiff='"+footquestionnarie.getStiff()+"',swollen='"+footquestionnarie.getSwollen()+"',unevensurface='"+footquestionnarie.getUnevensurface()+"',flatsurface='"+footquestionnarie.getFlatsurface()+"',updownstairs='"+footquestionnarie.getUpdownstairs()+"',lyinginbed='"+footquestionnarie.getLyinginbed()+"',sternous='"+footquestionnarie.getSternous()+"',moderateactivity='"+footquestionnarie.getModerateactivity()+"',lightactivity='"+footquestionnarie.getLightactivity()+"',best='"+footquestionnarie.getBest()+"',trouble='"+footquestionnarie.getTrouble()+"',socks='"+footquestionnarie.getSocks()+"',heavywork='"+footquestionnarie.getHeavywork()+"',jogging='"+footquestionnarie.getJogging()+"',walking='"+footquestionnarie.getWalking()+"',stand='"+footquestionnarie.getStand()+"',fewminutes='"+footquestionnarie.getFewminutes()+"',difficulty='"+footquestionnarie.getDifficulty()+"',women='"+footquestionnarie.getWomen()+"',dress='"+footquestionnarie.getDress()+"',shoes='"+footquestionnarie.getShoes()+"',orthopedic='"+footquestionnarie.getOrthopedic()+"',allversion='"+footquestionnarie.getAllversion()+"',foot='"+footquestionnarie.getFoot()+"',ankle='"+footquestionnarie.getAnkle()+"',date='"+footquestionnarie.getDate()+"',birthdate='"+footquestionnarie.getBirthdate()+"',security='"+footquestionnarie.getSecurity()+"' WHERE footquestionno='"+footquestionno+"';";
    			
    			
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

public int deletefoot(String footquestionno){
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
    	 String cmd_getpatient_pname="select footquestionno from tbl_footquestionnarie where footquestionno='"+footquestionno+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_footquestionnarie where footquestionno='"+footquestionno+"'");
			
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

