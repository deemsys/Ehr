
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
import java.util.logging.Logger;

import javax.sql.DataSource;

import bephit.model.ParticipantsDetails;
import bephit.model.Lowback;



public class LowbackDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setLowback(Lowback lowback)
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
	    	 String cmd="INSERT INTO `tbl_lowback`(`pname`,`date`,`tolerate`,`withoutpain`,`badpain`,`withpain`,`complete`,`onehour`,`moderate`,`thirtyminutes`,`little`,`tenminutes`,`noeffect`,`atall`,`withoutcausingpain`,`sleepingwell`,`extrapain`,`tablets`,`slow`,`sixhour`,`personalcare`,`fourhours`,`littlehelp`,`twohours`,`difficulty`,`atall1`,`canlift`,`normal`,`canliftwithpain`,`normalwithpain`,`heavyweights`,`significanteffect`,`mediumweights`,`restricted`,`verylightweight`,`myhome`,`carryatall`,`nosociallife`,`walkingdistance`,`travelwithoutpain`,`onemile`,`travelwithpain`,`onehalfmile`,`journey2hours`,`onequartermile`,`onehourless`,`usingstick`,`journeys30mins`,`bedtime`,`todoctor`,`cansit`,`rapidlybetter`,`favoritechair`,`flucutates`,`sitonehour`,`slowimprovement`,`sit30mins`,`samepain`,`sit10mins`,`graduallyworsening`,`allthetime`,`rapidlyworsening`,`score`,`section`,`adl`,`adl2`,`comment`)VALUES ('"+lowback.getPname()+"','"+lowback.getDate()+"','"+lowback.getTolerate()+"','"+lowback.getWithoutpain()+"','"+lowback.getBadpain()+"','"+lowback.getWithpain()+"','"+lowback.getComplete()+"','"+lowback.getOnehour()+"','"+lowback.getModerate()+"','"+lowback.getThirtyminutes()+"','"+lowback.getLittle()+"','"+lowback.getTenminutes()+"','"+lowback.getNoeffect()+"','"+lowback.getAtall()+"','"+lowback.getWithoutcausingpain()+"','"+lowback.getSleepingwell()+"','"+lowback.getExtrapain()+"','"+lowback.getTablets()+"','"+lowback.getSlow()+"','"+lowback.getSixhour()+"','"+lowback.getPersonalcare()+"','"+lowback.getFourhours()+"','"+lowback.getLittlehelp()+"','"+lowback.getTwohours()+"','"+lowback.getDifficulty()+"','"+lowback.getAtall1()+"','"+lowback.getCanlift()+"','"+lowback.getNormal()+"','"+lowback.getCanliftwithpain()+"','"+lowback.getNormalwithpain()+"','"+lowback.getHeavyweights()+"','"+lowback.getSignificanteffect()+"','"+lowback.getMediumweights()+"','"+lowback.getRestricted()+"','"+lowback.getVerylightweight()+"','"+lowback.getMyhome()+"','"+lowback.getCarryatall()+"','"+lowback.getNosociallife()+"','"+lowback.getWalkingdistance()+"','"+lowback.getTravelwithoutpain()+"','"+lowback.getOnemile()+"','"+lowback.getTravelwithpain()+"','"+lowback.getOnehalfmile()+"','"+lowback.getJourney2hours()+"','"+lowback.getOnequartermile()+"','"+lowback.getOnehourless()+"','"+lowback.getUsingstick()+"','"+lowback.getJourneys30mins()+"','"+lowback.getBedtime()+"','"+lowback.getTodoctor()+"','"+lowback.getCansit()+"','"+lowback.getRapidlybetter()+"','"+lowback.getFavoritechair()+"','"+lowback.getFlucutates()+"','"+lowback.getSitonehour()+"','"+lowback.getSlowimprovement()+"','"+lowback.getSit30mins()+"','"+lowback.getSamepain()+"','"+lowback.getSit10mins()+"','"+lowback.getGraduallyworsening()+"','"+lowback.getAllthetime()+"','"+lowback.getRapidlyworsening()+"','"+lowback.getScore()+"','"+lowback.getSection()+"','"+lowback.getAdl()+"','"+lowback.getAdl2()+"','"+lowback.getComment()+"')";
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

	
public List<Lowback> getLowback(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Lowback> lowback = new ArrayList<Lowback>();
    try{
		resultSet = statement.executeQuery("select * from tbl_lowback");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			lowback.add( new Lowback(resultSet.getString("lowbackno"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("tolerate"),resultSet.getString("withoutpain"),resultSet.getString("badpain"),resultSet.getString("withpain"),resultSet.getString("complete"),resultSet.getString("onehour"),resultSet.getString("moderate"),resultSet.getString("thirtyminutes"),resultSet.getString("little"),resultSet.getString("tenminutes"), resultSet.getString("noeffect"), resultSet.getString("atall"), resultSet.getString("withoutcausingpain"), resultSet.getString("sleepingwell"),resultSet.getString("extrapain"), resultSet.getString("tablets"),resultSet.getString("slow"), resultSet.getString("sixhour"), resultSet.getString("personalcare"),  resultSet.getString("fourhours"), resultSet.getString("littlehelp"),resultSet.getString("twohours"), resultSet.getString("difficulty"),resultSet.getString("atall1"), resultSet.getString("canlift"),resultSet.getString("normal"), resultSet.getString("canliftwithpain"),resultSet.getString("normalwithpain"),resultSet.getString("heavyweights"),resultSet.getString("significanteffect"), resultSet.getString("mediumweights"), resultSet.getString("restricted"),resultSet.getString("verylightweight"),resultSet.getString("myhome"),resultSet.getString("carryatall"),resultSet.getString("nosociallife"),resultSet.getString("walkingdistance"), resultSet.getString("travelwithoutpain"),resultSet.getString("onemile"),resultSet.getString("travelwithpain"),resultSet.getString("onehalfmile"),resultSet.getString("journey2hours"),resultSet.getString("onequartermile"), resultSet.getString("onehourless"),resultSet.getString("usingstick"),resultSet.getString("journeys30mins"),resultSet.getString("bedtime"),resultSet.getString("todoctor"),resultSet.getString("cansit"), resultSet.getString("rapidlybetter"),resultSet.getString("favoritechair"),resultSet.getString("flucutates"),resultSet.getString("sitonehour"),resultSet.getString("slowimprovement"),resultSet.getString("sit30mins"), resultSet.getString("samepain"),resultSet.getString("sit10mins"),resultSet.getString("graduallyworsening"),resultSet.getString("allthetime"), resultSet.getString("rapidlyworsening"),resultSet.getString("score"),resultSet.getString("section"), resultSet.getString("adl"),resultSet.getString("adl2"), resultSet.getString("comment")));
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
    return lowback;
}

public List<Lowback> getLow(String lowbackno){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Lowback> lowback = new ArrayList<Lowback>();
    try{
		resultSet = statement.executeQuery("select * from tbl_lowback WHERE lowbackno='"+lowbackno+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			lowback.add( new Lowback(resultSet.getString("lowbackno"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("tolerate"),resultSet.getString("withoutpain"),resultSet.getString("badpain"),resultSet.getString("withpain"),resultSet.getString("complete"),resultSet.getString("onehour"),resultSet.getString("moderate"),resultSet.getString("thirtyminutes"),resultSet.getString("little"),resultSet.getString("tenminutes"), resultSet.getString("noeffect"), resultSet.getString("atall"), resultSet.getString("withoutcausingpain"), resultSet.getString("sleepingwell"),resultSet.getString("extrapain"), resultSet.getString("tablets"),resultSet.getString("slow"), resultSet.getString("sixhour"), resultSet.getString("personalcare"),  resultSet.getString("fourhours"), resultSet.getString("littlehelp"),resultSet.getString("twohours"), resultSet.getString("difficulty"),resultSet.getString("atall1"), resultSet.getString("canlift"),resultSet.getString("normal"), resultSet.getString("canliftwithpain"),resultSet.getString("normalwithpain"),resultSet.getString("heavyweights"),resultSet.getString("significanteffect"), resultSet.getString("mediumweights"), resultSet.getString("restricted"),resultSet.getString("verylightweight"),resultSet.getString("myhome"),resultSet.getString("carryatall"),resultSet.getString("nosociallife"),resultSet.getString("walkingdistance"), resultSet.getString("travelwithoutpain"),resultSet.getString("onemile"),resultSet.getString("travelwithpain"),resultSet.getString("onehalfmile"),resultSet.getString("journey2hours"),resultSet.getString("onequartermile"), resultSet.getString("onehourless"),resultSet.getString("usingstick"),resultSet.getString("journeys30mins"),resultSet.getString("bedtime"),resultSet.getString("todoctor"),resultSet.getString("cansit"), resultSet.getString("rapidlybetter"),resultSet.getString("favoritechair"),resultSet.getString("flucutates"),resultSet.getString("sitonehour"),resultSet.getString("slowimprovement"),resultSet.getString("sit30mins"), resultSet.getString("samepain"),resultSet.getString("sit10mins"),resultSet.getString("graduallyworsening"),resultSet.getString("allthetime"), resultSet.getString("rapidlyworsening"),resultSet.getString("score"),resultSet.getString("section"), resultSet.getString("adl"),resultSet.getString("adl2"), resultSet.getString("comment")));
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
    return lowback;
}
public int updatelowback(Lowback lowback,String lowbackno,String admin)
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
    	 System.out.println("updatepatient_id"+lowbackno);
    	 System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_lowback SET pname='"+lowback.getPname()+"',date='"+lowback.getDate()+"',tolerate='"+lowback.getTolerate()+"',withoutpain='"+lowback.getWithoutpain()+"',badpain='"+lowback.getBadpain()+"',withpain='"+lowback.getWithpain()+"',complete='"+lowback.getComplete()+"',onehour='"+lowback.getOnehour()+"',moderate='"+lowback.getModerate()+"',thirtyminutes='"+lowback.getThirtyminutes()+"',little='"+lowback.getLittle()+"',tenminutes='"+lowback.getTenminutes()+"',noeffect='"+lowback.getNoeffect()+"',atall='"+lowback.getAtall()+"',withoutcausingpain='"+lowback.getWithoutcausingpain()+"',sleepingwell='"+lowback.getSleepingwell()+"',extrapain='"+lowback.getExtrapain()+"',tablets='"+lowback.getTablets()+"',slow='"+lowback.getSlow()+"',sixhour='"+lowback.getSixhour()+"',personalcare='"+lowback.getPersonalcare()+"',fourhours='"+lowback.getFourhours()+"',littlehelp='"+lowback.getLittlehelp()+"',twohours='"+lowback.getTwohours()+"',difficulty='"+lowback.getDifficulty()+"',atall1='"+lowback.getAtall1()+"',canlift='"+lowback.getCanlift()+"',normal='"+lowback.getNormal()+"',canliftwithpain='"+lowback.getCanliftwithpain()+"',normalwithpain='"+lowback.getNormalwithpain()+"',heavyweights='"+lowback.getHeavyweights()+"',significanteffect='"+lowback.getSignificanteffect()+"',mediumweights='"+lowback.getMediumweights()+"',restricted='"+lowback.getRestricted()+"',verylightweight='"+lowback.getVerylightweight()+"',myhome='"+lowback.getMyhome()+"',carryatall='"+lowback.getCarryatall()+"',nosociallife='"+lowback.getNosociallife()+"',walkingdistance='"+lowback.getWalkingdistance()+"',travelwithoutpain='"+lowback.getTravelwithoutpain()+"',onemile='"+lowback.getOnemile()+"',travelwithpain='"+lowback.getTravelwithpain()+"',onehalfmile='"+lowback.getOnehalfmile()+"',journey2hours='"+lowback.getJourney2hours()+"',onequartermile='"+lowback.getOnequartermile()+"',onehourless='"+lowback.getOnehourless()+"',usingstick='"+lowback.getUsingstick()+"',journeys30mins='"+lowback.getJourneys30mins()+"',bedtime='"+lowback.getBedtime()+"',todoctor='"+lowback.getTodoctor()+"',cansit='"+lowback.getCansit()+"',rapidlybetter='"+lowback.getRapidlybetter()+"',favoritechair='"+lowback.getFavoritechair()+"',flucutates='"+lowback.getFlucutates()+"',sitonehour='"+lowback.getSitonehour()+"',slowimprovement='"+lowback.getSlowimprovement()+"',sit30mins='"+lowback.getSit30mins()+"',samepain='"+lowback.getSamepain()+"',sit10mins='"+lowback.getSit10mins()+"',graduallyworsening='"+lowback.getGraduallyworsening()+"',allthetime='"+lowback.getAllthetime()+"',rapidlyworsening='"+lowback.getRapidlyworsening()+"',score='"+lowback.getScore()+"',section='"+lowback.getSection()+"',adl='"+lowback.getAdl()+"',adl2='"+lowback.getAdl2()+"',comment='"+lowback.getComment()+"' WHERE lowbackno='"+lowbackno+"';";
    			
    			String Desc="Update lowback "+lowback.getPname();
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

public int deletelowback(String lowbackno){
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
    	 String cmd_getpatient_pname="select pname from tbl_lowback where lowbackno='"+lowbackno+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_lowback where lowbackno='"+lowbackno+"'");
			
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
