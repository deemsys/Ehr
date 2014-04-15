
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
import java.util.logging.Logger;

import javax.sql.DataSource;

import bephit.model.ParticipantsDetails;
import bephit.model.Dutiesunderduress;
import bephit.model.RadiologicReport;



public class DutiesunderDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setDuties(Dutiesunderduress dutiesunderduress,Principal principal)
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
	    	 String cmd="INSERT INTO `tbl_dutiesunderduress`(username,`pname`,`date`,`jobdescription`,`lifting1`,`incresedpain1`,`restrictedmovement1`,`weekness1`,`sincemva1`,`ongoing1`,`bending1`,`incresedpain2`,`restrictedmovement2`,`weekness2`,`sincemva2`,`ongoing2`,`sitting1`,`incresedpain3`,`restrictedmovement3`,`weekness3`,`sincemva3`,`ongoing3`,`walking1`,`incresedpain4`,`restrictedmovement4`,`weekness4`,`sincemva4`,`ongoing4`,`computerduties1`,`incresedpain5`,`restrictedmovement5`,`weekness5`,`sincemva5`,`ongoing5`,`other1`,`incresedpain6`,`restrictedmovement6`,`weekness6`,`sincemva6`,`ongoing6`,`other2`,`incresedpain7`,`restrictedmovement7`,`weekness7`,`sincemva7`,`ongoing7`,`lifting2`,`incresedpain8`,`restrictedmovement8`,`weekness8`,`sincemva8`,`ongoing8`,`bending2`,`incresedpain9`,`restrictedmovement9`,`weekness9`,`sincemva9`,`ongoing9`,`sitting2`,`incresedpain10`,`restrictedmovement10`,`weekness10`,`sincemva10`,`ongoing10`,`walking2`,`incresedpain11`,`restrictedmovement11`,`weekness11`,`sincemva11`,`ongoing11`,`computerduties2`,`incresedpain12`,`restrictedmovement12`,`weekness12`,`sincemva12`,`ongoing12`,`studying`,`incresedpainstudy`,`restrictedmovementstudy`,`weeknessstudy`,`sincemvastudy`,`ongoingstudy`,`concentrating`,`incresedpainconcentrate`,`restrictedmovementconcentrate`,`weeknessconcentrate`,`sincemvaconcentrate`,`ongoingconcentrate`,`other3`,`incresedpain13`,`restrictedmovement13`,`weekness13`,`sincemva13`,`ongoing13`,`other4`,`incresedpain14`,`restrictedmovement14`,`weekness14`,`sincemva14`,`ongoing14`,`vacumming`,`incresedpain15`,`restrictedmovement15`,`weekness15`,`sincemva15`,`ongoing15`,`takingcareofkids`,`incresedpain16`,`restrictedmovement16`,`weekness16`,`sincemva16`,`ongoing16`,`cleaning`,`incresedpain17`,`restrictedmovement17`,`weekness17`,`sincemva17`,`ongoing17`,`preparingmeals`,`incresedpain18`,`restrictedmovement18`,`weekness18`,`sincemva18`,`ongoing18`,`other5`,`incresedpain20`,`restrictedmovement20`,`weekness20`,`sincemva20`,`ongoing20`,`other6`,`incresedpain21`,`restrictedmovement21`,`weekness21`,`sincemva21`,`ongoing21`,`yardwork`,`incresedpain22`,`restrictedmovement22`,`weekness22`,`sincemva22`,`ongoing22`,`transportation`,`incresedpain23`,`restrictedmovement23`,`weekness23`,`sincemva23`,`ongoing23`,`shopping`,`incresedpain24`,`restrictedmovement24`,`weekness24`,`sincemva24`,`ongoing24`,`takingouttrash`,`incresedpain25`,`restrictedmovement25`,`weekness25`,`sincemva25`,`ongoing25`,`other7`,`incresedpain27`,`restrictedmovement27`,`weekness27`,`sincemva27`,`ongoing27`,`other8`,`incresedpain28`,`restrictedmovement28`,`weekness28`,`sincemva28`,`ongoing28`)VALUES ('"+principal.getName()+"','"+dutiesunderduress.getPname()+"','"+dutiesunderduress.getDate()+"','"+dutiesunderduress.getJobdescription()+"','"+dutiesunderduress.getLifting1()+"','"+dutiesunderduress.getIncresedpain1()+"','"+dutiesunderduress.getRestrictedmovement1()+"','"+dutiesunderduress.getWeekness1()+"','"+dutiesunderduress.getSincemva1()+"','"+dutiesunderduress.getOngoing1()+"','"+dutiesunderduress.getBending1()+"','"+dutiesunderduress.getIncresedpain2()+"','"+dutiesunderduress.getRestrictedmovement2()+"','"+dutiesunderduress.getWeekness2()+"','"+dutiesunderduress.getSincemva2()+"','"+dutiesunderduress.getOngoing2()+"','"+dutiesunderduress.getSitting1()+"','"+dutiesunderduress.getIncresedpain3()+"','"+dutiesunderduress.getRestrictedmovement3()+"','"+dutiesunderduress.getWeekness3()+"','"+dutiesunderduress.getSincemva3()+"','"+dutiesunderduress.getOngoing3()+"','"+dutiesunderduress.getWalking1()+"','"+dutiesunderduress.getIncresedpain4()+"','"+dutiesunderduress.getRestrictedmovement4()+"','"+dutiesunderduress.getWeekness4()+"','"+dutiesunderduress.getSincemva4()+"','"+dutiesunderduress.getOngoing4()+"','"+dutiesunderduress.getComputerduties1()+"','"+dutiesunderduress.getIncresedpain5()+"','"+dutiesunderduress.getRestrictedmovement5()+"','"+dutiesunderduress.getWeekness5()+"','"+dutiesunderduress.getSincemva5()+"','"+dutiesunderduress.getOngoing5()+"','"+dutiesunderduress.getOther1()+"','"+dutiesunderduress.getIncresedpain6()+"','"+dutiesunderduress.getRestrictedmovement6()+"','"+dutiesunderduress.getWeekness6()+"','"+dutiesunderduress.getSincemva6()+"','"+dutiesunderduress.getOngoing6()+"','"+dutiesunderduress.getOther2()+"','"+dutiesunderduress.getIncresedpain7()+"','"+dutiesunderduress.getRestrictedmovement7()+"','"+dutiesunderduress.getWeekness7()+"','"+dutiesunderduress.getSincemva7()+"','"+dutiesunderduress.getOngoing7()+"','"+dutiesunderduress.getLifting2()+"','"+dutiesunderduress.getIncresedpain8()+"','"+dutiesunderduress.getRestrictedmovement8()+"','"+dutiesunderduress.getWeekness8()+"','"+dutiesunderduress.getSincemva8()+"','"+dutiesunderduress.getOngoing8()+"','"+dutiesunderduress.getBending2()+"','"+dutiesunderduress.getIncresedpain9()+"','"+dutiesunderduress.getRestrictedmovement9()+"','"+dutiesunderduress.getWeekness9()+"','"+dutiesunderduress.getSincemva9()+"','"+dutiesunderduress.getOngoing9()+"','"+dutiesunderduress.getSitting2()+"','"+dutiesunderduress.getIncresedpain10()+"','"+dutiesunderduress.getRestrictedmovement10()+"','"+dutiesunderduress.getWeekness10()+"','"+dutiesunderduress.getSincemva10()+"','"+dutiesunderduress.getOngoing10()+"','"+dutiesunderduress.getWalking2()+"','"+dutiesunderduress.getIncresedpain11()+"','"+dutiesunderduress.getRestrictedmovement11()+"','"+dutiesunderduress.getWeekness11()+"','"+dutiesunderduress.getSincemva11()+"','"+dutiesunderduress.getOngoing11()+"','"+dutiesunderduress.getComputerduties2()+"','"+dutiesunderduress.getIncresedpain12()+"','"+dutiesunderduress.getRestrictedmovement12()+"','"+dutiesunderduress.getWeekness12()+"','"+dutiesunderduress.getSincemva12()+"','"+dutiesunderduress.getOngoing12()+"','"+dutiesunderduress.getStudying()+"','"+dutiesunderduress.getIncresedpainstudy()+"','"+dutiesunderduress.getRestrictedmovementstudy()+"','"+dutiesunderduress.getWeeknessstudy()+"','"+dutiesunderduress.getSincemvastudy()+"','"+dutiesunderduress.getOngoingstudy()+"','"+dutiesunderduress.getConcentrating()+"','"+dutiesunderduress.getIncresedpainconcentrate()+"','"+dutiesunderduress.getRestrictedmovementstudy()+"','"+dutiesunderduress.getWeeknessconcentrate()+"','"+dutiesunderduress.getSincemvaconcentrate()+"','"+dutiesunderduress.getOngoingconcentrate()+"','"+dutiesunderduress.getOther3()+"','"+dutiesunderduress.getIncresedpain13()+"','"+dutiesunderduress.getRestrictedmovement13()+"','"+dutiesunderduress.getWeekness13()+"','"+dutiesunderduress.getSincemva13()+"','"+dutiesunderduress.getOngoing13()+"','"+dutiesunderduress.getOther4()+"','"+dutiesunderduress.getIncresedpain14()+"','"+dutiesunderduress.getRestrictedmovement14()+"','"+dutiesunderduress.getWeekness14()+"','"+dutiesunderduress.getSincemva14()+"','"+dutiesunderduress.getOngoing14()+"','"+dutiesunderduress.getVacumming()+"','"+dutiesunderduress.getIncresedpain15()+"','"+dutiesunderduress.getRestrictedmovement15()+"','"+dutiesunderduress.getWeekness15()+"','"+dutiesunderduress.getSincemva15()+"','"+dutiesunderduress.getOngoing15()+"','"+dutiesunderduress.getTakingcareofkids()+"','"+dutiesunderduress.getIncresedpain16()+"','"+dutiesunderduress.getRestrictedmovement16()+"','"+dutiesunderduress.getWeekness16()+"','"+dutiesunderduress.getSincemva16()+"','"+dutiesunderduress.getOngoing16()+"','"+dutiesunderduress.getCleaning()+"','"+dutiesunderduress.getIncresedpain17()+"','"+dutiesunderduress.getRestrictedmovement17()+"','"+dutiesunderduress.getWeekness17()+"','"+dutiesunderduress.getSincemva17()+"','"+dutiesunderduress.getOngoing17()+"','"+dutiesunderduress.getPreparingmeals()+"','"+dutiesunderduress.getIncresedpain18()+"','"+dutiesunderduress.getRestrictedmovement18()+"','"+dutiesunderduress.getWeekness18()+"','"+dutiesunderduress.getSincemva18()+"','"+dutiesunderduress.getOngoing18()+"','"+dutiesunderduress.getOther5()+"','"+dutiesunderduress.getIncresedpain20()+"','"+dutiesunderduress.getRestrictedmovement20()+"','"+dutiesunderduress.getWeekness20()+"','"+dutiesunderduress.getSincemva20()+"','"+dutiesunderduress.getOngoing20()+"','"+dutiesunderduress.getOther6()+"','"+dutiesunderduress.getIncresedpain21()+"','"+dutiesunderduress.getRestrictedmovement21()+"','"+dutiesunderduress.getWeekness21()+"','"+dutiesunderduress.getSincemva21()+"','"+dutiesunderduress.getOngoing21()+"','"+dutiesunderduress.getYardwork()+"','"+dutiesunderduress.getIncresedpain22()+"','"+dutiesunderduress.getRestrictedmovement22()+"','"+dutiesunderduress.getWeekness22()+"','"+dutiesunderduress.getSincemva22()+"','"+dutiesunderduress.getOngoing22()+"','"+dutiesunderduress.getTransportation()+"','"+dutiesunderduress.getIncresedpain23()+"','"+dutiesunderduress.getRestrictedmovement23()+"','"+dutiesunderduress.getWeekness23()+"','"+dutiesunderduress.getSincemva23()+"','"+dutiesunderduress.getOngoing23()+"','"+dutiesunderduress.getShopping()+"','"+dutiesunderduress.getIncresedpain24()+"','"+dutiesunderduress.getRestrictedmovement24()+"','"+dutiesunderduress.getWeekness24()+"','"+dutiesunderduress.getSincemva24()+"','"+dutiesunderduress.getOngoing24()+"','"+dutiesunderduress.getTakingouttrash()+"','"+dutiesunderduress.getIncresedpain25()+"','"+dutiesunderduress.getRestrictedmovement25()+"','"+dutiesunderduress.getWeekness25()+"','"+dutiesunderduress.getSincemva25()+"','"+dutiesunderduress.getOngoing25()+"','"+dutiesunderduress.getOther7()+"','"+dutiesunderduress.getIncresedpain27()+"','"+dutiesunderduress.getRestrictedmovement27()+"','"+dutiesunderduress.getWeekness27()+"','"+dutiesunderduress.getSincemva27()+"','"+dutiesunderduress.getOngoing27()+"','"+dutiesunderduress.getOther8()+"','"+dutiesunderduress.getIncresedpain28()+"','"+dutiesunderduress.getRestrictedmovement28()+"','"+dutiesunderduress.getWeekness28()+"','"+dutiesunderduress.getSincemva28()+"','"+dutiesunderduress.getOngoing28()+"')";
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

	
public List<Dutiesunderduress> getDuties(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Dutiesunderduress> dutiesunderduress = new ArrayList<Dutiesunderduress>();
    try{
		resultSet = statement.executeQuery("select * from tbl_dutiesunderduress");
		System.out.println(resultSet.toString());
		while(resultSet.next()){
			dutiesunderduress.add(new Dutiesunderduress(resultSet.getString("dutiesno"), resultSet.getString("pname"), resultSet.getString("date"), resultSet.getString("jobdescription"), resultSet.getString("lifting1"), resultSet.getString("incresedpain1"), resultSet.getString("restrictedmovement1"), resultSet.getString("weekness1"), resultSet.getString("sincemva1"), resultSet.getString("ongoing1"), resultSet.getString("bending1"), resultSet.getString("incresedpain2"), resultSet.getString("restrictedmovement2"), resultSet.getString("weekness2"), resultSet.getString("sincemva2"), resultSet.getString("ongoing2"), resultSet.getString("sitting1"), resultSet.getString("incresedpain3"), resultSet.getString("restrictedmovement3"), resultSet.getString("weekness3"), resultSet.getString("sincemva3"), resultSet.getString("ongoing3"), resultSet.getString("walking1"), resultSet.getString("incresedpain4"), resultSet.getString("restrictedmovement4"), resultSet.getString("weekness4"), resultSet.getString("sincemva4"), resultSet.getString("ongoing4"), resultSet.getString("computerduties1"), resultSet.getString("incresedpain5"), resultSet.getString("restrictedmovement5"), resultSet.getString("weekness5"), resultSet.getString("sincemva5"), resultSet.getString("ongoing5"), resultSet.getString("other1"), resultSet.getString("incresedpain6"), resultSet.getString("restrictedmovement6"), resultSet.getString("weekness6"), resultSet.getString("sincemva6"), resultSet.getString("ongoing6"), resultSet.getString("other2"), resultSet.getString("incresedpain7"), resultSet.getString("restrictedmovement7"), resultSet.getString("weekness7"), resultSet.getString("sincemva7"), resultSet.getString("ongoing7"), resultSet.getString("lifting2"), resultSet.getString("incresedpain8"), resultSet.getString("restrictedmovement8"), resultSet.getString("weekness8"), resultSet.getString("sincemva8"), resultSet.getString("ongoing8"), resultSet.getString("bending2"), resultSet.getString("incresedpain9"), resultSet.getString("restrictedmovement9"), resultSet.getString("weekness9"), resultSet.getString("sincemva9"), resultSet.getString("ongoing9"), resultSet.getString("sitting2"), resultSet.getString("incresedpain10"), resultSet.getString("restrictedmovement10"), resultSet.getString("weekness10"), resultSet.getString("sincemva10"), resultSet.getString("ongoing10"), resultSet.getString("walking2"), resultSet.getString("incresedpain11"), resultSet.getString("restrictedmovement11"), resultSet.getString("weekness11"), resultSet.getString("sincemva11"), resultSet.getString("ongoing11"), resultSet.getString("computerduties2"), resultSet.getString("incresedpain12"), resultSet.getString("restrictedmovement12"), resultSet.getString("weekness12"), resultSet.getString("sincemva12"), resultSet.getString("ongoing12"), resultSet.getString("studying"), resultSet.getString("incresedpainstudy"), resultSet.getString("restrictedmovementstudy"), resultSet.getString("weeknessstudy"), resultSet.getString("sincemvastudy"), resultSet.getString("ongoingstudy"), resultSet.getString("concentrating"), resultSet.getString("incresedpainconcentrate"), resultSet.getString("restrictedmovementconcentrate"), resultSet.getString("weeknessconcentrate"), resultSet.getString("sincemvaconcentrate"), resultSet.getString("ongoingconcentrate"), resultSet.getString("other3"), resultSet.getString("incresedpain13"), resultSet.getString("restrictedmovement13"), resultSet.getString("weekness13"), resultSet.getString("sincemva13"), resultSet.getString("ongoing13"), resultSet.getString("other4"), resultSet.getString("incresedpain14"), resultSet.getString("restrictedmovement14"), resultSet.getString("weekness14"), resultSet.getString("sincemva14"), resultSet.getString("ongoing14"), resultSet.getString("vacumming"), resultSet.getString("incresedpain15"), resultSet.getString("restrictedmovement15"), resultSet.getString("weekness15"), resultSet.getString("sincemva15"), resultSet.getString("ongoing15"), resultSet.getString("takingcareofkids"), resultSet.getString("incresedpain16"), resultSet.getString("restrictedmovement16"), resultSet.getString("weekness16"), resultSet.getString("sincemva16"), resultSet.getString("ongoing16"), resultSet.getString("cleaning"), resultSet.getString("incresedpain17"), resultSet.getString("restrictedmovement17"), resultSet.getString("weekness17"), resultSet.getString("sincemva17"), resultSet.getString("ongoing17"), resultSet.getString("preparingmeals"), resultSet.getString("incresedpain18"), resultSet.getString("restrictedmovement18"), resultSet.getString("weekness18"), resultSet.getString("sincemva18"), resultSet.getString("ongoing18"), resultSet.getString("other5"), resultSet.getString("incresedpain20"), resultSet.getString("restrictedmovement20"), resultSet.getString("weekness20"), resultSet.getString("sincemva20"), resultSet.getString("ongoing20"), resultSet.getString("other6"), resultSet.getString("incresedpain21"), resultSet.getString("restrictedmovement21"), resultSet.getString("weekness21"), resultSet.getString("sincemva21"), resultSet.getString("ongoing21"), resultSet.getString("yardwork"), resultSet.getString("incresedpain22"), resultSet.getString("restrictedmovement22"), resultSet.getString("weekness22"), resultSet.getString("sincemva22"), resultSet.getString("ongoing22"), resultSet.getString("transportation"), resultSet.getString("incresedpain23"), resultSet.getString("restrictedmovement23"), resultSet.getString("weekness23"), resultSet.getString("sincemva23"), resultSet.getString("ongoing23"), resultSet.getString("shopping"), resultSet.getString("incresedpain24"), resultSet.getString("restrictedmovement24"), resultSet.getString("weekness24"), resultSet.getString("sincemva24"), resultSet.getString("ongoing24"), resultSet.getString("takingouttrash"), resultSet.getString("incresedpain25"), resultSet.getString("restrictedmovement25"), resultSet.getString("weekness25"), resultSet.getString("sincemva25"), resultSet.getString("ongoing25"),  resultSet.getString("other7"), resultSet.getString("incresedpain27"), resultSet.getString("restrictedmovement27"), resultSet.getString("weekness27"), resultSet.getString("sincemva27"), resultSet.getString("ongoing27"), resultSet.getString("other8"), resultSet.getString("incresedpain28"), resultSet.getString("restrictedmovement28"), resultSet.getString("weekness28"), resultSet.getString("sincemva28"), resultSet.getString("ongoing28")));
		    
		}
    }catch(Exception e){
    	System.out.println("exception"+e);
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return dutiesunderduress;
}

public List<Dutiesunderduress> getDutiesunderduress(String dutiesno){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Dutiesunderduress> dutiesunderduress = new ArrayList<Dutiesunderduress>();
    try{
		resultSet = statement.executeQuery("select * from tbl_dutiesunderduress WHERE dutiesno='"+dutiesno+"'");
		System.out.println(resultSet.toString());
		while(resultSet.next()){
	
			dutiesunderduress.add(new Dutiesunderduress(resultSet.getString("dutiesno"), resultSet.getString("pname"), resultSet.getString("date"), resultSet.getString("jobdescription"), resultSet.getString("lifting1"), resultSet.getString("incresedpain1"), resultSet.getString("restrictedmovement1"), resultSet.getString("weekness1"), resultSet.getString("sincemva1"), resultSet.getString("ongoing1"), resultSet.getString("bending1"), resultSet.getString("incresedpain2"), resultSet.getString("restrictedmovement2"), resultSet.getString("weekness2"), resultSet.getString("sincemva2"), resultSet.getString("ongoing2"), resultSet.getString("sitting1"), resultSet.getString("incresedpain3"), resultSet.getString("restrictedmovement3"), resultSet.getString("weekness3"), resultSet.getString("sincemva3"), resultSet.getString("ongoing3"), resultSet.getString("walking1"), resultSet.getString("incresedpain4"), resultSet.getString("restrictedmovement4"), resultSet.getString("weekness4"), resultSet.getString("sincemva4"), resultSet.getString("ongoing4"), resultSet.getString("computerduties1"), resultSet.getString("incresedpain5"), resultSet.getString("restrictedmovement5"), resultSet.getString("weekness5"), resultSet.getString("sincemva5"), resultSet.getString("ongoing5"), resultSet.getString("other1"), resultSet.getString("incresedpain6"), resultSet.getString("restrictedmovement6"), resultSet.getString("weekness6"), resultSet.getString("sincemva6"), resultSet.getString("ongoing6"), resultSet.getString("other2"), resultSet.getString("incresedpain7"), resultSet.getString("restrictedmovement7"), resultSet.getString("weekness7"), resultSet.getString("sincemva7"), resultSet.getString("ongoing7"), resultSet.getString("lifting2"), resultSet.getString("incresedpain8"), resultSet.getString("restrictedmovement8"), resultSet.getString("weekness8"), resultSet.getString("sincemva8"), resultSet.getString("ongoing8"), resultSet.getString("bending2"), resultSet.getString("incresedpain9"), resultSet.getString("restrictedmovement9"), resultSet.getString("weekness9"), resultSet.getString("sincemva9"), resultSet.getString("ongoing9"), resultSet.getString("sitting2"), resultSet.getString("incresedpain10"), resultSet.getString("restrictedmovement10"), resultSet.getString("weekness10"), resultSet.getString("sincemva10"), resultSet.getString("ongoing10"), resultSet.getString("walking2"), resultSet.getString("incresedpain11"), resultSet.getString("restrictedmovement11"), resultSet.getString("weekness11"), resultSet.getString("sincemva11"), resultSet.getString("ongoing11"), resultSet.getString("computerduties2"), resultSet.getString("incresedpain12"), resultSet.getString("restrictedmovement12"), resultSet.getString("weekness12"), resultSet.getString("sincemva12"), resultSet.getString("ongoing12"), resultSet.getString("studying"), resultSet.getString("incresedpainstudy"), resultSet.getString("restrictedmovementstudy"), resultSet.getString("weeknessstudy"), resultSet.getString("sincemvastudy"), resultSet.getString("ongoingstudy"), resultSet.getString("concentrating"), resultSet.getString("incresedpainconcentrate"), resultSet.getString("restrictedmovementconcentrate"), resultSet.getString("weeknessconcentrate"), resultSet.getString("sincemvaconcentrate"), resultSet.getString("ongoingconcentrate"), resultSet.getString("other3"), resultSet.getString("incresedpain13"), resultSet.getString("restrictedmovement13"), resultSet.getString("weekness13"), resultSet.getString("sincemva13"), resultSet.getString("ongoing13"), resultSet.getString("other4"), resultSet.getString("incresedpain14"), resultSet.getString("restrictedmovement14"), resultSet.getString("weekness14"), resultSet.getString("sincemva14"), resultSet.getString("ongoing14"), resultSet.getString("vacumming"), resultSet.getString("incresedpain15"), resultSet.getString("restrictedmovement15"), resultSet.getString("weekness15"), resultSet.getString("sincemva15"), resultSet.getString("ongoing15"), resultSet.getString("takingcareofkids"), resultSet.getString("incresedpain16"), resultSet.getString("restrictedmovement16"), resultSet.getString("weekness16"), resultSet.getString("sincemva16"), resultSet.getString("ongoing16"), resultSet.getString("cleaning"), resultSet.getString("incresedpain17"), resultSet.getString("restrictedmovement17"), resultSet.getString("weekness17"), resultSet.getString("sincemva17"), resultSet.getString("ongoing17"), resultSet.getString("preparingmeals"), resultSet.getString("incresedpain18"), resultSet.getString("restrictedmovement18"), resultSet.getString("weekness18"), resultSet.getString("sincemva18"), resultSet.getString("ongoing18"), resultSet.getString("other5"), resultSet.getString("incresedpain20"), resultSet.getString("restrictedmovement20"), resultSet.getString("weekness20"), resultSet.getString("sincemva20"), resultSet.getString("ongoing20"), resultSet.getString("other6"), resultSet.getString("incresedpain21"), resultSet.getString("restrictedmovement21"), resultSet.getString("weekness21"), resultSet.getString("sincemva21"), resultSet.getString("ongoing21"), resultSet.getString("yardwork"), resultSet.getString("incresedpain22"), resultSet.getString("restrictedmovement22"), resultSet.getString("weekness22"), resultSet.getString("sincemva22"), resultSet.getString("ongoing22"), resultSet.getString("transportation"), resultSet.getString("incresedpain23"), resultSet.getString("restrictedmovement23"), resultSet.getString("weekness23"), resultSet.getString("sincemva23"), resultSet.getString("ongoing23"), resultSet.getString("shopping"), resultSet.getString("incresedpain24"), resultSet.getString("restrictedmovement24"), resultSet.getString("weekness24"), resultSet.getString("sincemva24"), resultSet.getString("ongoing24"), resultSet.getString("takingouttrash"), resultSet.getString("incresedpain25"), resultSet.getString("restrictedmovement25"), resultSet.getString("weekness25"), resultSet.getString("sincemva25"), resultSet.getString("ongoing25"),  resultSet.getString("other7"), resultSet.getString("incresedpain27"), resultSet.getString("restrictedmovement27"), resultSet.getString("weekness27"), resultSet.getString("sincemva27"), resultSet.getString("ongoing27"), resultSet.getString("other8"), resultSet.getString("incresedpain28"), resultSet.getString("restrictedmovement28"), resultSet.getString("weekness28"), resultSet.getString("sincemva28"), resultSet.getString("ongoing28")));
		}
    }catch(Exception e){
    	releaseResultSet(resultSet);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return dutiesunderduress;
}
public int updatedutiesunderduress(Dutiesunderduress dutiesunderduress,String dutiesno,String admin)
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
    	 System.out.println("updatepatient_id"+dutiesno);
    	 System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_dutiesunderduress SET pname='"+dutiesunderduress.getPname()+"',date='"+dutiesunderduress.getDate()+"',jobdescription='"+dutiesunderduress.getJobdescription()+"',lifting1='"+dutiesunderduress.getLifting1()+"',incresedpain1='"+dutiesunderduress.getIncresedpain1()+"',restrictedmovement1='"+dutiesunderduress.getRestrictedmovement1()+"',weekness1='"+dutiesunderduress.getWeekness1()+"',sincemva1='"+dutiesunderduress.getSincemva1()+"',ongoing1='"+dutiesunderduress.getOngoing1()+"',bending1='"+dutiesunderduress.getBending1()+"',incresedpain2='"+dutiesunderduress.getIncresedpain2()+"',restrictedmovement2='"+dutiesunderduress.getRestrictedmovement2()+"',weekness2='"+dutiesunderduress.getWeekness2()+"',sincemva2='"+dutiesunderduress.getSincemva2()+"',ongoing2='"+dutiesunderduress.getOngoing2()+"',sitting1='"+dutiesunderduress.getSitting1()+"',incresedpain3='"+dutiesunderduress.getIncresedpain3()+"',restrictedmovement3='"+dutiesunderduress.getRestrictedmovement3()+"',weekness3='"+dutiesunderduress.getWeekness3()+"',sincemva3='"+dutiesunderduress.getSincemva3()+"',ongoing3='"+dutiesunderduress.getOngoing3()+"',walking1='"+dutiesunderduress.getWalking1()+"',incresedpain4='"+dutiesunderduress.getIncresedpain4()+"',restrictedmovement4='"+dutiesunderduress.getRestrictedmovement4()+"',weekness4='"+dutiesunderduress.getWeekness4()+"',sincemva4='"+dutiesunderduress.getSincemva4()+"',ongoing4='"+dutiesunderduress.getOngoing4()+"',computerduties1='"+dutiesunderduress.getComputerduties1()+"',incresedpain5='"+dutiesunderduress.getIncresedpain5()+"',restrictedmovement5='"+dutiesunderduress.getRestrictedmovement5()+"',weekness5='"+dutiesunderduress.getWeekness5()+"',sincemva5='"+dutiesunderduress.getSincemva5()+"',ongoing5='"+dutiesunderduress.getOngoing5()+"',other1='"+dutiesunderduress.getOther1()+"',incresedpain6='"+dutiesunderduress.getIncresedpain6()+"',restrictedmovement6='"+dutiesunderduress.getRestrictedmovement6()+"',weekness6='"+dutiesunderduress.getWeekness6()+"',sincemva6='"+dutiesunderduress.getSincemva6()+"',ongoing6='"+dutiesunderduress.getOngoing6()+"',other2='"+dutiesunderduress.getOther2()+"',incresedpain7='"+dutiesunderduress.getIncresedpain7()+"',restrictedmovement7='"+dutiesunderduress.getRestrictedmovement7()+"',weekness7='"+dutiesunderduress.getWeekness7()+"',sincemva7='"+dutiesunderduress.getSincemva7()+"',ongoing7='"+dutiesunderduress.getOngoing7()+"',lifting2='"+dutiesunderduress.getLifting2()+"',incresedpain8='"+dutiesunderduress.getIncresedpain8()+"',restrictedmovement8='"+dutiesunderduress.getRestrictedmovement8()+"',weekness8='"+dutiesunderduress.getWeekness8()+"',sincemva8='"+dutiesunderduress.getSincemva8()+"',ongoing8='"+dutiesunderduress.getOngoing8()+"',bending2='"+dutiesunderduress.getBending2()+"',incresedpain9='"+dutiesunderduress.getIncresedpain9()+"',restrictedmovement9='"+dutiesunderduress.getRestrictedmovement9()+"',weekness9='"+dutiesunderduress.getWeekness9()+"',sincemva9='"+dutiesunderduress.getSincemva9()+"',ongoing9='"+dutiesunderduress.getOngoing9()+"',sitting2='"+dutiesunderduress.getSitting2()+"',incresedpain10='"+dutiesunderduress.getIncresedpain10()+"',restrictedmovement10='"+dutiesunderduress.getRestrictedmovement10()+"',weekness10='"+dutiesunderduress.getWeekness10()+"',sincemva10='"+dutiesunderduress.getSincemva10()+"',ongoing10='"+dutiesunderduress.getOngoing10()+"',walking2='"+dutiesunderduress.getWalking2()+"',incresedpain11='"+dutiesunderduress.getIncresedpain11()+"',restrictedmovement11='"+dutiesunderduress.getRestrictedmovement11()+"',weekness11='"+dutiesunderduress.getWeekness11()+"',sincemva11='"+dutiesunderduress.getSincemva11()+"',ongoing11='"+dutiesunderduress.getOngoing11()+"',computerduties2='"+dutiesunderduress.getComputerduties2()+"',incresedpain12='"+dutiesunderduress.getIncresedpain12()+"',restrictedmovement12='"+dutiesunderduress.getRestrictedmovement12()+"',weekness12='"+dutiesunderduress.getWeekness12()+"',sincemva12='"+dutiesunderduress.getSincemva12()+"',ongoing12='"+dutiesunderduress.getOngoing12()+"',studying='"+dutiesunderduress.getStudying()+"',incresedpainstudy='"+dutiesunderduress.getIncresedpainstudy()+"',restrictedmovementstudy='"+dutiesunderduress.getRestrictedmovementstudy()+"',weeknessstudy='"+dutiesunderduress.getWeeknessstudy()+"',sincemvastudy='"+dutiesunderduress.getSincemvastudy()+"',ongoingstudy='"+dutiesunderduress.getOngoingstudy()+"',concentrating='"+dutiesunderduress.getConcentrating()+"',incresedpainconcentrate='"+dutiesunderduress.getIncresedpainconcentrate()+"',restrictedmovementconcentrate='"+dutiesunderduress.getRestrictedmovementconcentrate()+"',weeknessconcentrate='"+dutiesunderduress.getWeeknessconcentrate()+"',sincemvaconcentrate='"+dutiesunderduress.getSincemvaconcentrate()+"',ongoingconcentrate='"+dutiesunderduress.getOngoingconcentrate()+"',other3='"+dutiesunderduress.getOther3()+"',incresedpain13='"+dutiesunderduress.getIncresedpain13()+"',restrictedmovement13='"+dutiesunderduress.getRestrictedmovement13()+"',weekness13='"+dutiesunderduress.getWeekness13()+"',sincemva13='"+dutiesunderduress.getSincemva13()+"',ongoing13='"+dutiesunderduress.getOngoing13()+"',other4='"+dutiesunderduress.getOther4()+"',incresedpain14='"+dutiesunderduress.getIncresedpain14()+"',restrictedmovement14='"+dutiesunderduress.getRestrictedmovement14()+"',weekness14='"+dutiesunderduress.getWeekness14()+"',sincemva14='"+dutiesunderduress.getSincemva14()+"',ongoing14='"+dutiesunderduress.getOngoing14()+"',vacumming='"+dutiesunderduress.getVacumming()+"',incresedpain15='"+dutiesunderduress.getIncresedpain15()+"',restrictedmovement15='"+dutiesunderduress.getRestrictedmovement15()+"',weekness15='"+dutiesunderduress.getWeekness15()+"',sincemva15='"+dutiesunderduress.getSincemva15()+"',ongoing15='"+dutiesunderduress.getOngoing15()+"',takingcareofkids='"+dutiesunderduress.getTakingcareofkids()+"',incresedpain16='"+dutiesunderduress.getIncresedpain16()+"',restrictedmovement16='"+dutiesunderduress.getRestrictedmovement16()+"',weekness16='"+dutiesunderduress.getWeekness2()+"',sincemva16='"+dutiesunderduress.getSincemva16()+"',ongoing16='"+dutiesunderduress.getOngoing16()+"',cleaning='"+dutiesunderduress.getCleaning()+"',incresedpain17='"+dutiesunderduress.getIncresedpain17()+"',restrictedmovement17='"+dutiesunderduress.getRestrictedmovement17()+"',weekness17='"+dutiesunderduress.getWeekness17()+"',sincemva17='"+dutiesunderduress.getSincemva17()+"',ongoing17='"+dutiesunderduress.getOngoing17()+"',preparingmeals='"+dutiesunderduress.getPreparingmeals()+"',incresedpain18='"+dutiesunderduress.getIncresedpain18()+"',restrictedmovement18='"+dutiesunderduress.getRestrictedmovement18()+"',weekness18='"+dutiesunderduress.getWeekness18()+"',sincemva18='"+dutiesunderduress.getSincemva18()+"',ongoing18='"+dutiesunderduress.getOngoing18()+"',other5='"+dutiesunderduress.getOther5()+"',incresedpain20='"+dutiesunderduress.getIncresedpain20()+"',restrictedmovement20='"+dutiesunderduress.getRestrictedmovement20()+"',weekness20='"+dutiesunderduress.getWeekness20()+"',sincemva20='"+dutiesunderduress.getSincemva20()+"',ongoing20='"+dutiesunderduress.getOngoing20()+"',other6='"+dutiesunderduress.getOther6()+"',incresedpain21='"+dutiesunderduress.getIncresedpain21()+"',restrictedmovement21='"+dutiesunderduress.getRestrictedmovement21()+"',weekness21='"+dutiesunderduress.getWeekness21()+"',sincemva21='"+dutiesunderduress.getSincemva21()+"',ongoing21='"+dutiesunderduress.getOngoing21()+"',yardwork='"+dutiesunderduress.getYardwork()+"',incresedpain22='"+dutiesunderduress.getIncresedpain22()+"',restrictedmovement22='"+dutiesunderduress.getRestrictedmovement22()+"',weekness22='"+dutiesunderduress.getWeekness22()+"',sincemva22='"+dutiesunderduress.getSincemva22()+"',ongoing22='"+dutiesunderduress.getOngoing22()+"',transportation='"+dutiesunderduress.getTransportation()+"',incresedpain23='"+dutiesunderduress.getIncresedpain23()+"',restrictedmovement23='"+dutiesunderduress.getRestrictedmovement23()+"',weekness24='"+dutiesunderduress.getWeekness24()+"',sincemva24='"+dutiesunderduress.getSincemva24()+"',ongoing24='"+dutiesunderduress.getOngoing24()+"',takingouttrash='"+dutiesunderduress.getTakingouttrash()+"',incresedpain25='"+dutiesunderduress.getIncresedpain25()+"',restrictedmovement25='"+dutiesunderduress.getRestrictedmovement25()+"',weekness25='"+dutiesunderduress.getWeekness25()+"',sincemva25='"+dutiesunderduress.getSincemva25()+"',ongoing25='"+dutiesunderduress.getOngoing25()+"',other7='"+dutiesunderduress.getOther7()+"',incresedpain27='"+dutiesunderduress.getIncresedpain27()+"',restrictedmovement27='"+dutiesunderduress.getRestrictedmovement27()+"',weekness28='"+dutiesunderduress.getWeekness28()+"',sincemva28='"+dutiesunderduress.getSincemva28()+"',ongoing28='"+dutiesunderduress.getOngoing28()+"' WHERE dutiesno='"+dutiesno+"';";
    			
    			String Desc="Update dutiesunderduress "+dutiesunderduress.getPname();
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

public int deletedutiesunderduress(String dutiesno){
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
    	 String cmd_getpatient_pname="select pname from tbl_dutiesunderduress where dutiesno='"+dutiesno+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_dutiesunderduress where dutiesno='"+dutiesno+"'");
			
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
public List<Dutiesunderduress> getlimitedduties(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Dutiesunderduress> dutiesunderduress = new ArrayList<Dutiesunderduress>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_dutiesunderduress order by pname asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			dutiesunderduress.add(new Dutiesunderduress(resultSet.getString("dutiesno"), resultSet.getString("pname"), resultSet.getString("date"), resultSet.getString("jobdescription"), resultSet.getString("lifting1"), resultSet.getString("incresedpain1"), resultSet.getString("restrictedmovement1"), resultSet.getString("weekness1"), resultSet.getString("sincemva1"), resultSet.getString("ongoing1"), resultSet.getString("bending1"), resultSet.getString("incresedpain2"), resultSet.getString("restrictedmovement2"), resultSet.getString("weekness2"), resultSet.getString("sincemva2"), resultSet.getString("ongoing2"), resultSet.getString("sitting1"), resultSet.getString("incresedpain3"), resultSet.getString("restrictedmovement3"), resultSet.getString("weekness3"), resultSet.getString("sincemva3"), resultSet.getString("ongoing3"), resultSet.getString("walking1"), resultSet.getString("incresedpain4"), resultSet.getString("restrictedmovement4"), resultSet.getString("weekness4"), resultSet.getString("sincemva4"), resultSet.getString("ongoing4"), resultSet.getString("computerduties1"), resultSet.getString("incresedpain5"), resultSet.getString("restrictedmovement5"), resultSet.getString("weekness5"), resultSet.getString("sincemva5"), resultSet.getString("ongoing5"), resultSet.getString("other1"), resultSet.getString("incresedpain6"), resultSet.getString("restrictedmovement6"), resultSet.getString("weekness6"), resultSet.getString("sincemva6"), resultSet.getString("ongoing6"), resultSet.getString("other2"), resultSet.getString("incresedpain7"), resultSet.getString("restrictedmovement7"), resultSet.getString("weekness7"), resultSet.getString("sincemva7"), resultSet.getString("ongoing7"), resultSet.getString("lifting2"), resultSet.getString("incresedpain8"), resultSet.getString("restrictedmovement8"), resultSet.getString("weekness8"), resultSet.getString("sincemva8"), resultSet.getString("ongoing8"), resultSet.getString("bending2"), resultSet.getString("incresedpain9"), resultSet.getString("restrictedmovement9"), resultSet.getString("weekness9"), resultSet.getString("sincemva9"), resultSet.getString("ongoing9"), resultSet.getString("sitting2"), resultSet.getString("incresedpain10"), resultSet.getString("restrictedmovement10"), resultSet.getString("weekness10"), resultSet.getString("sincemva10"), resultSet.getString("ongoing10"), resultSet.getString("walking2"), resultSet.getString("incresedpain11"), resultSet.getString("restrictedmovement11"), resultSet.getString("weekness11"), resultSet.getString("sincemva11"), resultSet.getString("ongoing11"), resultSet.getString("computerduties2"), resultSet.getString("incresedpain12"), resultSet.getString("restrictedmovement12"), resultSet.getString("weekness12"), resultSet.getString("sincemva12"), resultSet.getString("ongoing12"), resultSet.getString("studying"), resultSet.getString("incresedpainstudy"), resultSet.getString("restrictedmovementstudy"), resultSet.getString("weeknessstudy"), resultSet.getString("sincemvastudy"), resultSet.getString("ongoingstudy"), resultSet.getString("concentrating"), resultSet.getString("incresedpainconcentrate"), resultSet.getString("restrictedmovementconcentrate"), resultSet.getString("weeknessconcentrate"), resultSet.getString("sincemvaconcentrate"), resultSet.getString("ongoingconcentrate"), resultSet.getString("other3"), resultSet.getString("incresedpain13"), resultSet.getString("restrictedmovement13"), resultSet.getString("weekness13"), resultSet.getString("sincemva13"), resultSet.getString("ongoing13"), resultSet.getString("other4"), resultSet.getString("incresedpain14"), resultSet.getString("restrictedmovement14"), resultSet.getString("weekness14"), resultSet.getString("sincemva14"), resultSet.getString("ongoing14"), resultSet.getString("vacumming"), resultSet.getString("incresedpain15"), resultSet.getString("restrictedmovement15"), resultSet.getString("weekness15"), resultSet.getString("sincemva15"), resultSet.getString("ongoing15"), resultSet.getString("takingcareofkids"), resultSet.getString("incresedpain16"), resultSet.getString("restrictedmovement16"), resultSet.getString("weekness16"), resultSet.getString("sincemva16"), resultSet.getString("ongoing16"), resultSet.getString("cleaning"), resultSet.getString("incresedpain17"), resultSet.getString("restrictedmovement17"), resultSet.getString("weekness17"), resultSet.getString("sincemva17"), resultSet.getString("ongoing17"), resultSet.getString("preparingmeals"), resultSet.getString("incresedpain18"), resultSet.getString("restrictedmovement18"), resultSet.getString("weekness18"), resultSet.getString("sincemva18"), resultSet.getString("ongoing18"), resultSet.getString("other5"), resultSet.getString("incresedpain20"), resultSet.getString("restrictedmovement20"), resultSet.getString("weekness20"), resultSet.getString("sincemva20"), resultSet.getString("ongoing20"), resultSet.getString("other6"), resultSet.getString("incresedpain21"), resultSet.getString("restrictedmovement21"), resultSet.getString("weekness21"), resultSet.getString("sincemva21"), resultSet.getString("ongoing21"), resultSet.getString("yardwork"), resultSet.getString("incresedpain22"), resultSet.getString("restrictedmovement22"), resultSet.getString("weekness22"), resultSet.getString("sincemva22"), resultSet.getString("ongoing22"), resultSet.getString("transportation"), resultSet.getString("incresedpain23"), resultSet.getString("restrictedmovement23"), resultSet.getString("weekness23"), resultSet.getString("sincemva23"), resultSet.getString("ongoing23"), resultSet.getString("shopping"), resultSet.getString("incresedpain24"), resultSet.getString("restrictedmovement24"), resultSet.getString("weekness24"), resultSet.getString("sincemva24"), resultSet.getString("ongoing24"), resultSet.getString("takingouttrash"), resultSet.getString("incresedpain25"), resultSet.getString("restrictedmovement25"), resultSet.getString("weekness25"), resultSet.getString("sincemva25"), resultSet.getString("ongoing25"),  resultSet.getString("other7"), resultSet.getString("incresedpain27"), resultSet.getString("restrictedmovement27"), resultSet.getString("weekness27"), resultSet.getString("sincemva27"), resultSet.getString("ongoing27"), resultSet.getString("other8"), resultSet.getString("incresedpain28"), resultSet.getString("restrictedmovement28"), resultSet.getString("weekness28"), resultSet.getString("sincemva28"), resultSet.getString("ongoing28")));				
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
	return dutiesunderduress;

}
public int getnoofduties() {
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
	List<Dutiesunderduress> dutiesunderduress = new ArrayList<Dutiesunderduress>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_dutiesunderduress";
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
