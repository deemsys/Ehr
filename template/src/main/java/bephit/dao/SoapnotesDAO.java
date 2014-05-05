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


import bephit.model.RadiologicReport;
import bephit.model.SoapNotes;
 



public class SoapnotesDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setSoapnotes(SoapNotes soapnotes)
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
	    	 String cmd="INSERT INTO `tbl_soapnotes`(`username`,`pname`,`headache`,`neckpain`,`rightshoulderpain`,`leftshoulderpain`,`chestpain`,`rightarmpain`,rightproxi,`leftarmpain`,leftproxi,`rightelbowpain`,`leftelbowpain`,`rightwristpain`,`leftwristpain`,`righthandpain`,`lefthandpain`,`mbp`,`rightribpain`,painscale1,`leftribpain`,painscale2,`lbp`,`rightsipain`,`leftsipain`,`righthippain`,`lefthippain`,`rightgluteulpain`,`leftgluteulpain`,`rightlegpain`,`leftlegpain`,`rightkneepain`,`leftkneepain`,`rightanklepain`,`leftanklepain`,`rightfootpain`,`leftfootpain`,`date1`,`improved`,`worsened`,`painscale`,`e1e2`,`xray`,`offwork1`,`reeval1`,`date2`,`improved1`,`worsened1`,`fixation1`,`notimproved1`,`scsm1`,`date3`,`improved2`,`worsened2`,`fixation2`,`notimproved2`,`scsm2`,`date4`,`improved3`,`worsened3`,`fixation3`,`notimproved3`,`scsm3`,`date5`,`improved4`,`worsened4`,`fixation4`,`notimproved4`,`scsm4`,`date6`,`improved5`,`worsened5`,`fixation5`,`notimproved5`,`scsm5`,`date7`,`improved6`,`worsened6`,`fixation6`,`notimproved6`,`scsm6`,`date8`,`improved7`,`worsened7`,`fixation7`,`notimproved7`,`scsm7`,`date9`,`improved8`,`worsened8`,`fixation8`,`notimproved8`,`scsm8`,`sign`)VALUES ('"
	    	         +soapnotes.getUsername()
	    	         +"','"+soapnotes.getPname()
	    			 +"','"+soapnotes.getHeadache()
	    			 +"','"+soapnotes.getNeckpain()
	    			 +"','"+soapnotes.getRightshoulderpain()
	    			 +"','"+soapnotes.getLeftshoulderpain()
	    			 +"','"+soapnotes.getChestpain()
	    			 +"','"+soapnotes.getRightarmpain()
	    			 +"','"+soapnotes.getRightproxi()
	    			 +"','"+soapnotes.getLeftarmpain()
	    			  +"','"+soapnotes.getLeftproxi()
	    			 +"','"+soapnotes.getRightelbowpain()
	    			 +"','"+soapnotes.getLeftelbowpain()
	    			 +"','"+soapnotes.getRightwristpain()
	    			 +"','"+soapnotes.getLeftwristpain()
	    			 +"','"+soapnotes.getRighthandpain()
	    			 +"','"+soapnotes.getLefthandpain()
	    			 +"','"+soapnotes.getMbp()
	    			 +"','"+soapnotes.getRightribpain()
	    			 +"','"+soapnotes.getPainscale1()
	    			 +"','"+soapnotes.getLeftribpain()
	    			 +"','"+soapnotes.getPainscale2()
	    			 +"','"+soapnotes.getLbp()
	    			 +"','"+soapnotes.getRightsipain()
	    			 +"','"+soapnotes.getLeftsipain()
	    			 +"','"+soapnotes.getRighthippain()
	    			 +"','"+soapnotes.getLefthippain()
	    			 +"','"+soapnotes.getRightgluteulpain()
	    			 +"','"+soapnotes.getLeftgluteulpain()
	    			 +"','"+soapnotes.getRightlegpain()
	    			 +"','"+soapnotes.getLeftlegpain()
	    			 +"','"+soapnotes.getRightkneepain()
	    			 +"','"+soapnotes.getLeftkneepain()
	    			 +"','"+soapnotes.getRightanklepain()
	    			 +"','"+soapnotes.getLeftanklepain()
	    			 +"','"+soapnotes.getRightfootpain()
	    			 +"','"+soapnotes.getLeftfootpain()
	    			 +"','"+soapnotes.getDate1()
	    			 +"','"+soapnotes.getImproved()
	    			 +"','"+soapnotes.getWorsened()
	    			 +"','"+soapnotes.getPainscale()	    			
	    			 +"','"+soapnotes.getE1e2()
	    			 +"','"+soapnotes.getXray()
	    			 +"','"+soapnotes.getOffwork1()
	    			 +"','"+soapnotes.getReeval1()
	    			 +"','"+soapnotes.getDate2()
	    			 +"','"+soapnotes.getImproved1()
	    			 +"','"+soapnotes.getWorsened1()
	    			 +"','"+soapnotes.getFixation1()
	    			 +"','"+soapnotes.getNotimproved1()
	    			 +"','"+soapnotes.getScsm1()
	    			 +"','"+soapnotes.getDate3()
	    			 +"','"+soapnotes.getImproved2()
	    			 +"','"+soapnotes.getWorsened2()
	    			 +"','"+soapnotes.getFixation2()
	    			 +"','"+soapnotes.getNotimproved2()
	    			 +"','"+soapnotes.getScsm2()
	    			 +"','"+soapnotes.getDate4()
	    			 +"','"+soapnotes.getImproved3()
	    			 +"','"+soapnotes.getWorsened3()
	    			 +"','"+soapnotes.getFixation3()
	    			 +"','"+soapnotes.getNotimproved3()
	    			 +"','"+soapnotes.getScsm3()
	    			 +"','"+soapnotes.getDate5()
	    			 +"','"+soapnotes.getImproved4()
	    			 +"','"+soapnotes.getWorsened4()
	    			 +"','"+soapnotes.getFixation4()
	    			 +"','"+soapnotes.getNotimproved4()
	    			 +"','"+soapnotes.getScsm4()
	    			 +"','"+soapnotes.getDate6()
	    			 +"','"+soapnotes.getImproved5()
	    			 +"','"+soapnotes.getWorsened5()
	    			 +"','"+soapnotes.getFixation5()
	    			 +"','"+soapnotes.getNotimproved5()
	    			 +"','"+soapnotes.getScsm5()
	    			 +"','"+soapnotes.getDate7()
	    			 +"','"+soapnotes.getImproved6()
	    			 +"','"+soapnotes.getWorsened6()
	    			 +"','"+soapnotes.getFixation6()
	    			 +"','"+soapnotes.getNotimproved6()
	    			 +"','"+soapnotes.getScsm6()
	    			 +"','"+soapnotes.getDate8()
	    			 +"','"+soapnotes.getImproved7()
	    			 +"','"+soapnotes.getWorsened7()
	    			 +"','"+soapnotes.getFixation7()
	    			 +"','"+soapnotes.getNotimproved7()
	    			 +"','"+soapnotes.getScsm7()
	    			 +"','"+soapnotes.getDate9()
	    			 +"','"+soapnotes.getImproved8()
	    			 +"','"+soapnotes.getWorsened8()
	    			 +"','"+soapnotes.getFixation8()
	    			 +"','"+soapnotes.getNotimproved8()
	    			 +"','"+soapnotes.getScsm8()
	    			 +"','"+soapnotes.getSign()+"')";
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

	
public List<SoapNotes> getSoapnotes(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<SoapNotes> soapnotes = new ArrayList<SoapNotes>();
    try{
		resultSet = statement.executeQuery("select * from tbl_soapnotes");
		System.out.println(resultSet.toString());
		while(resultSet.next()){
			soapnotes.add( new SoapNotes(resultSet.getString("username"),resultSet.getString("soapid"),resultSet.getString("pname"),resultSet.getString("headache"), resultSet.getString("neckpain"),resultSet.getString("rightshoulderpain"),resultSet.getString("leftshoulderpain"),resultSet.getString("chestpain"),resultSet.getString("rightarmpain"),resultSet.getString("leftarmpain"),resultSet.getString("rightelbowpain"),resultSet.getString("leftelbowpain"),resultSet.getString("rightwristpain"), resultSet.getString("leftwristpain"), resultSet.getString("righthandpain"), resultSet.getString("lefthandpain"), resultSet.getString("mbp"), resultSet.getString("rightribpain"), resultSet.getString("leftribpain"), resultSet.getString("lbp"), resultSet.getString("rightsipain"), resultSet.getString("leftsipain"), resultSet.getString("righthippain"),resultSet.getString("lefthippain"), resultSet.getString("rightgluteulpain"), resultSet.getString("leftgluteulpain"), resultSet.getString("rightlegpain"), resultSet.getString("leftlegpain"), resultSet.getString("rightkneepain"), resultSet.getString("leftkneepain"), resultSet.getString("rightanklepain"),resultSet.getString("leftanklepain"), resultSet.getString("rightfootpain"), resultSet.getString("leftfootpain"),resultSet.getString("date1"),resultSet.getString("improved"),resultSet.getString("worsened"),resultSet.getString("painscale"), resultSet.getString("diagnosis1"), resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"), resultSet.getString("e1e2"), resultSet.getString("xray"),resultSet.getString("offwork1"),resultSet.getString("reeval1"),resultSet.getString("date2"), resultSet.getString("improved1"),resultSet.getString("worsened1"),resultSet.getString("fixation1"),resultSet.getString("notimproved1"), resultSet.getString("scsm1"),resultSet.getString("date3"),  resultSet.getString("improved2"),resultSet.getString("worsened2"),resultSet.getString("fixation2"),resultSet.getString("notimproved2"),resultSet.getString("scsm2"),resultSet.getString("date4"),resultSet.getString("improved3"), resultSet.getString("worsened3"),resultSet.getString("fixation3"),resultSet.getString("notimproved3"),resultSet.getString("scsm3"),resultSet.getString("date5"),resultSet.getString("improved4"),resultSet.getString("worsened4"), resultSet.getString("fixation4"), resultSet.getString("notimproved4"),resultSet.getString("scsm4"),resultSet.getString("date6"),resultSet.getString("improved5"),resultSet.getString("worsened5"),resultSet.getString("fixation5"),resultSet.getString("notimproved5"),resultSet.getString("scsm5"),resultSet.getString("date7"),resultSet.getString("improved6"),resultSet.getString("worsened6"),resultSet.getString("fixation6"),resultSet.getString("notimproved6"),resultSet.getString("scsm6"),resultSet.getString("date8"),resultSet.getString("improved7"), resultSet.getString("worsened7"),resultSet.getString("fixation7"), resultSet.getString("notimproved7"),resultSet.getString("scsm7"),resultSet.getString("date9"),resultSet.getString("improved8"),resultSet.getString("worsened8"), resultSet.getString("fixation8"),resultSet.getString("notimproved8"), resultSet.getString("scsm8"), resultSet.getString("sign")));
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
    return soapnotes;
	
}
public List<SoapNotes> getusernameSoapnotes(String username){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<SoapNotes> soapnotes = new ArrayList<SoapNotes>();
    try{
		resultSet = statement.executeQuery("select * from tbl_soapnotes where username='"+username+"'");
		System.out.println(resultSet.toString());
		while(resultSet.next()){
			soapnotes.add( new SoapNotes(resultSet.getString("username"),resultSet.getString("soapid"),resultSet.getString("pname"),resultSet.getString("headache"), resultSet.getString("neckpain"),resultSet.getString("rightshoulderpain"),resultSet.getString("leftshoulderpain"),resultSet.getString("chestpain"),resultSet.getString("rightarmpain"),resultSet.getString("rightproxi"),resultSet.getString("leftarmpain"),resultSet.getString("leftproxi"),resultSet.getString("rightelbowpain"),resultSet.getString("leftelbowpain"),resultSet.getString("rightwristpain"), resultSet.getString("leftwristpain"), resultSet.getString("righthandpain"), resultSet.getString("lefthandpain"), resultSet.getString("mbp"), resultSet.getString("rightribpain"),resultSet.getString("painscale1"), resultSet.getString("leftribpain"),resultSet.getString("painscale2"), resultSet.getString("lbp"), resultSet.getString("rightsipain"), resultSet.getString("leftsipain"), resultSet.getString("righthippain"),resultSet.getString("lefthippain"), resultSet.getString("rightgluteulpain"), resultSet.getString("leftgluteulpain"), resultSet.getString("rightlegpain"), resultSet.getString("leftlegpain"), resultSet.getString("rightkneepain"), resultSet.getString("leftkneepain"), resultSet.getString("rightanklepain"),resultSet.getString("leftanklepain"), resultSet.getString("rightfootpain"), resultSet.getString("leftfootpain"),resultSet.getString("date1"),resultSet.getString("improved"),resultSet.getString("worsened"),resultSet.getString("painscale"),resultSet.getString("e1e2"), resultSet.getString("xray"),resultSet.getString("offwork1"),resultSet.getString("reeval1"),resultSet.getString("date2"), resultSet.getString("improved1"),resultSet.getString("worsened1"),resultSet.getString("fixation1"),resultSet.getString("notimproved1"), resultSet.getString("scsm1"),resultSet.getString("date3"),  resultSet.getString("improved2"),resultSet.getString("worsened2"),resultSet.getString("fixation2"),resultSet.getString("notimproved2"),resultSet.getString("scsm2"),resultSet.getString("date4"),resultSet.getString("improved3"), resultSet.getString("worsened3"),resultSet.getString("fixation3"),resultSet.getString("notimproved3"),resultSet.getString("scsm3"),resultSet.getString("date5"),resultSet.getString("improved4"),resultSet.getString("worsened4"), resultSet.getString("fixation4"), resultSet.getString("notimproved4"),resultSet.getString("scsm4"),resultSet.getString("date6"),resultSet.getString("improved5"),resultSet.getString("worsened5"),resultSet.getString("fixation5"),resultSet.getString("notimproved5"),resultSet.getString("scsm5"),resultSet.getString("date7"),resultSet.getString("improved6"),resultSet.getString("worsened6"),resultSet.getString("fixation6"),resultSet.getString("notimproved6"),resultSet.getString("scsm6"),resultSet.getString("date8"),resultSet.getString("improved7"), resultSet.getString("worsened7"),resultSet.getString("fixation7"), resultSet.getString("notimproved7"),resultSet.getString("scsm7"),resultSet.getString("date9"),resultSet.getString("improved8"),resultSet.getString("worsened8"), resultSet.getString("fixation8"),resultSet.getString("notimproved8"), resultSet.getString("scsm8"), resultSet.getString("sign")));
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
    return soapnotes;
	
}
public List<SoapNotes> getSoap(String soapid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<SoapNotes> soapnotes = new ArrayList<SoapNotes>();
    try{
    	/*String cmd="select soapid from tbl_soapnotes where tbl_doctorsearch.patient_id=tbl_soapnotes.patient_id ";
    	System.out.println(cmd);
		resultSet = statement.executeQuery(cmd);
    	while(resultSet.next())
    	{
    		soapid=resultSet.getString("soapid");
		}*/
    	String cmd1="select * from tbl_soapnotes where soapid='"+soapid+"'";
    	System.out.println(soapid);
		resultSet = statement.executeQuery(cmd1);
    	while(resultSet.next())
    	{
    		soapnotes.add( new SoapNotes(resultSet.getString("username"),resultSet.getString("soapid"),resultSet.getString("pname"),resultSet.getString("headache"), resultSet.getString("neckpain"),resultSet.getString("rightshoulderpain"),resultSet.getString("leftshoulderpain"),resultSet.getString("chestpain"),resultSet.getString("rightarmpain"),resultSet.getString("leftarmpain"),resultSet.getString("rightelbowpain"),resultSet.getString("leftelbowpain"),resultSet.getString("rightwristpain"), resultSet.getString("leftwristpain"), resultSet.getString("righthandpain"), resultSet.getString("lefthandpain"), resultSet.getString("mbp"), resultSet.getString("rightribpain"), resultSet.getString("leftribpain"), resultSet.getString("lbp"), resultSet.getString("rightsipain"), resultSet.getString("leftsipain"), resultSet.getString("righthippain"),resultSet.getString("lefthippain"), resultSet.getString("rightgluteulpain"), resultSet.getString("leftgluteulpain"), resultSet.getString("rightlegpain"), resultSet.getString("leftlegpain"), resultSet.getString("rightkneepain"), resultSet.getString("leftkneepain"), resultSet.getString("rightanklepain"),resultSet.getString("leftanklepain"), resultSet.getString("rightfootpain"), resultSet.getString("leftfootpain"),resultSet.getString("date1"),resultSet.getString("improved"),resultSet.getString("worsened"),resultSet.getString("painscale"), resultSet.getString("diagnosis1"), resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"), resultSet.getString("e1e2"),resultSet.getString("xray"), resultSet.getString("offwork1"),resultSet.getString("reeval1"),resultSet.getString("date2"), resultSet.getString("improved1"),resultSet.getString("worsened1"),resultSet.getString("fixation1"),resultSet.getString("notimproved1"), resultSet.getString("scsm1"),resultSet.getString("date3"),  resultSet.getString("improved2"),resultSet.getString("worsened2"),resultSet.getString("fixation2"),resultSet.getString("notimproved2"),resultSet.getString("scsm2"),resultSet.getString("date4"),resultSet.getString("improved3"), resultSet.getString("worsened3"),resultSet.getString("fixation3"),resultSet.getString("notimproved3"),resultSet.getString("scsm3"),resultSet.getString("date5"),resultSet.getString("improved4"),resultSet.getString("worsened4"), resultSet.getString("fixation4"), resultSet.getString("notimproved4"),resultSet.getString("scsm4"),resultSet.getString("date6"),resultSet.getString("improved5"),resultSet.getString("worsened5"),resultSet.getString("fixation5"),resultSet.getString("notimproved5"),resultSet.getString("scsm5"),resultSet.getString("date7"),resultSet.getString("improved6"),resultSet.getString("worsened6"),resultSet.getString("fixation6"),resultSet.getString("notimproved6"),resultSet.getString("scsm6"),resultSet.getString("date8"),resultSet.getString("improved7"), resultSet.getString("worsened7"),resultSet.getString("fixation7"), resultSet.getString("notimproved7"),resultSet.getString("scsm7"),resultSet.getString("date9"),resultSet.getString("improved8"),resultSet.getString("worsened8"), resultSet.getString("fixation8"),resultSet.getString("notimproved8"), resultSet.getString("scsm8"), resultSet.getString("sign")));
		}
    }catch(Exception e)
    {
    	System.out.println(e.toString());
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return soapnotes;
	

    }
public List<SoapNotes> getSoapid(String username){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<SoapNotes> soapnotes = new ArrayList<SoapNotes>();
    try{
    	/*String cmd="select patient_id from tbl_soapnotes where tbl_doctorsearch.patient_id=tbl_soapnotes.patient_id ";
    	System.out.println(cmd);
		resultSet = statement.executeQuery(cmd);
    	while(resultSet.next())
    	{
    		patient_id=resultSet.getString("patient_id");
		}*/
    	String cmd1="select * from tbl_soapnotes where username='"+username+"'";
    	System.out.println(username);
		resultSet = statement.executeQuery(cmd1);
    	while(resultSet.next())
    	{
    		soapnotes.add( new SoapNotes(resultSet.getString("username"),resultSet.getString("soapid"),resultSet.getString("pname"),resultSet.getString("headache"), resultSet.getString("neckpain"),resultSet.getString("rightshoulderpain"),resultSet.getString("leftshoulderpain"),resultSet.getString("chestpain"),resultSet.getString("rightarmpain"),resultSet.getString("leftarmpain"),resultSet.getString("rightelbowpain"),resultSet.getString("leftelbowpain"),resultSet.getString("rightwristpain"), resultSet.getString("leftwristpain"), resultSet.getString("righthandpain"), resultSet.getString("lefthandpain"), resultSet.getString("mbp"), resultSet.getString("rightribpain"), resultSet.getString("leftribpain"), resultSet.getString("lbp"), resultSet.getString("rightsipain"), resultSet.getString("leftsipain"), resultSet.getString("righthippain"),resultSet.getString("lefthippain"), resultSet.getString("rightgluteulpain"), resultSet.getString("leftgluteulpain"), resultSet.getString("rightlegpain"), resultSet.getString("leftlegpain"), resultSet.getString("rightkneepain"), resultSet.getString("leftkneepain"), resultSet.getString("rightanklepain"),resultSet.getString("leftanklepain"), resultSet.getString("rightfootpain"), resultSet.getString("leftfootpain"),resultSet.getString("date1"),resultSet.getString("improved"),resultSet.getString("worsened"),resultSet.getString("painscale"), resultSet.getString("diagnosis1"), resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"), resultSet.getString("e1e2"),resultSet.getString("xray"), resultSet.getString("offwork1"),resultSet.getString("reeval1"),resultSet.getString("date2"), resultSet.getString("improved1"),resultSet.getString("worsened1"),resultSet.getString("fixation1"),resultSet.getString("notimproved1"), resultSet.getString("scsm1"),resultSet.getString("date3"),  resultSet.getString("improved2"),resultSet.getString("worsened2"),resultSet.getString("fixation2"),resultSet.getString("notimproved2"),resultSet.getString("scsm2"),resultSet.getString("date4"),resultSet.getString("improved3"), resultSet.getString("worsened3"),resultSet.getString("fixation3"),resultSet.getString("notimproved3"),resultSet.getString("scsm3"),resultSet.getString("date5"),resultSet.getString("improved4"),resultSet.getString("worsened4"), resultSet.getString("fixation4"), resultSet.getString("notimproved4"),resultSet.getString("scsm4"),resultSet.getString("date6"),resultSet.getString("improved5"),resultSet.getString("worsened5"),resultSet.getString("fixation5"),resultSet.getString("notimproved5"),resultSet.getString("scsm5"),resultSet.getString("date7"),resultSet.getString("improved6"),resultSet.getString("worsened6"),resultSet.getString("fixation6"),resultSet.getString("notimproved6"),resultSet.getString("scsm6"),resultSet.getString("date8"),resultSet.getString("improved7"), resultSet.getString("worsened7"),resultSet.getString("fixation7"), resultSet.getString("notimproved7"),resultSet.getString("scsm7"),resultSet.getString("date9"),resultSet.getString("improved8"),resultSet.getString("worsened8"), resultSet.getString("fixation8"),resultSet.getString("notimproved8"), resultSet.getString("scsm8"), resultSet.getString("sign")));
		}
    	//int i=soapnotes.size();
    }catch(Exception e)
    {
    	System.out.println(e.toString());
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return soapnotes;
    }
public int updatesoapnotes(SoapNotes soapnotes,String username,String admin)
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
    	 System.out.println("updatepatient_id"+username);
    	 //System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_soapnotes SET username='"+soapnotes.getUsername()+"',pname='"+soapnotes.getPname()+"',headache='"+soapnotes.getHeadache()+"',neckpain='"+soapnotes.getNeckpain()+"',rightshoulderpain='"+soapnotes.getRightshoulderpain()+"',leftshoulderpain='"+soapnotes.getLeftshoulderpain()+"',chestpain='"+soapnotes.getChestpain()+"',rightarmpain='"+soapnotes.getRightarmpain()+"',rightproxi='"+soapnotes.getRightproxi()+"',leftarmpain='"+soapnotes.getLeftarmpain()+"',leftproxi='"+soapnotes.getLeftproxi()+"',rightelbowpain='"+soapnotes.getRightelbowpain()+"',leftelbowpain='"+soapnotes.getLeftelbowpain()+"',rightwristpain='"+soapnotes.getRightwristpain()+"',leftwristpain='"+soapnotes.getLeftwristpain()+"',righthandpain='"+soapnotes.getRighthandpain()+"',lefthandpain='"+soapnotes.getLefthandpain()+"',mbp='"+soapnotes.getMbp()+"',rightribpain='"+soapnotes.getRightribpain()+"',painscale1='"+soapnotes.getPainscale1()+"',leftribpain='"+soapnotes.getLeftribpain()+"',painscale2='"+soapnotes.getPainscale2()+"',lbp='"+soapnotes.getLbp()+"',rightsipain='"+soapnotes.getRightsipain()+"',leftsipain='"+soapnotes.getLeftsipain()+"',righthippain='"+soapnotes.getRighthippain()+"',lefthippain='"+soapnotes.getLefthippain()+"',rightgluteulpain='"+soapnotes.getRightgluteulpain()+"',leftgluteulpain='"+soapnotes.getLeftgluteulpain()+"',rightlegpain='"+soapnotes.getRightlegpain()+"',leftlegpain='"+soapnotes.getLeftlegpain()+"',rightkneepain='"+soapnotes.getRightkneepain()+"',leftkneepain='"+soapnotes.getLeftkneepain()+"',rightanklepain='"+soapnotes.getRightanklepain()+"',leftanklepain='"+soapnotes.getLeftanklepain()+"',rightfootpain='"+soapnotes.getRightfootpain()+"',leftfootpain='"+soapnotes.getLeftfootpain()+"',date1='"+soapnotes.getDate1()+"',improved='"+soapnotes.getImproved()+"',worsened='"+soapnotes.getWorsened()+"',painscale='"+soapnotes.getPainscale()+"',e1e2='"+soapnotes.getE1e2()+"',xray='"+soapnotes.getXray()+"',offwork1='"+soapnotes.getOffwork1()+"',reeval1='"+soapnotes.getReeval1()+"',date2='"+soapnotes.getDate2()+"',improved1='"+soapnotes.getImproved1()+"',worsened1='"+soapnotes.getWorsened1()+"',fixation1='"+soapnotes.getFixation1()+"',notimproved1='"+soapnotes.getNotimproved1()+"',scsm1='"+soapnotes.getScsm1()+"',date3='"+soapnotes.getDate3()+"',improved2='"+soapnotes.getImproved2()+"',worsened2='"+soapnotes.getWorsened2()+"',fixation2='"+soapnotes.getFixation2()+"',notimproved2='"+soapnotes.getNotimproved2()+"',scsm2='"+soapnotes.getScsm2()+"',date4='"+soapnotes.getDate4()+"',improved3='"+soapnotes.getImproved3()+"',worsened3='"+soapnotes.getWorsened3()+"',fixation3='"+soapnotes.getFixation3()+"',notimproved3='"+soapnotes.getNotimproved3()+"',scsm3='"+soapnotes.getScsm3()+"',date5='"+soapnotes.getDate5()+"',improved4='"+soapnotes.getImproved4()+"',worsened4='"+soapnotes.getWorsened4()+"',fixation4='"+soapnotes.getFixation4()+"',notimproved4='"+soapnotes.getNotimproved4()+"',scsm4='"+soapnotes.getScsm4()+"',date6='"+soapnotes.getDate6()+"',improved5='"+soapnotes.getImproved5()+"',worsened5='"+soapnotes.getWorsened5()+"',fixation5='"+soapnotes.getFixation5()+"',notimproved5='"+soapnotes.getNotimproved5()+"',scsm5='"+soapnotes.getScsm5()+"',date7='"+soapnotes.getDate7()+"',improved6='"+soapnotes.getImproved6()+"',worsened6='"+soapnotes.getWorsened6()+"',fixation6='"+soapnotes.getFixation6()+"',notimproved6='"+soapnotes.getNotimproved6()+"',scsm6='"+soapnotes.getScsm6()+"',date8='"+soapnotes.getDate8()+"',improved7='"+soapnotes.getImproved7()+"',worsened7='"+soapnotes.getWorsened7()+"',fixation7='"+soapnotes.getFixation7()+"',notimproved7='"+soapnotes.getNotimproved7()+"',scsm7='"+soapnotes.getScsm7()+"',date9='"+soapnotes.getDate9()+"',improved8='"+soapnotes.getImproved8()+"',worsened8='"+soapnotes.getWorsened8()+"',fixation8='"+soapnotes.getFixation8()+"',notimproved8='"+soapnotes.getNotimproved8()+"',scsm8='"+soapnotes.getScsm8()+"',sign='"+soapnotes.getSign()+"' WHERE username='"+username+"';";
    			
    			String Desc="Update soapnotes "+soapnotes.getPname();
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

public int deletesoapnotes(String soapid){
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
    	 String cmd_getpatient_pname="select pname from tbl_soapnotes where soapid='"+soapid+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_soapnotes where soapid='"+soapid+"'");
			
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
public int deletediagnosis(String[] diagnosis,String username)
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
    for (String diag : diagnosis) {
    	statement.executeUpdate("delete from soapnotes_diagnosis where username='"+username+"' and diagnosis='"+diag+"'");
    	 String cmd="delete from soapnotes_diagnosis where username='"+username+"' and diagnosis='"+diag+"'";
    	 System.out.println(cmd);
    	 statement.executeUpdate(cmd);
	}
    	
   
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
public int diagnosis(String[] diagnosis,String username)
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
    for (String diag : diagnosis) {
    	 String cmd="insert into soapnotes_diagnosis (username,diagnosis) values('"+username+"','"+diag+"')";
    	 System.out.println(cmd);
    	 statement.executeUpdate(cmd);
	}
    	
   
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

	
public List<String> getdiagnosis(String username)
{
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	List<String> soapnote=new ArrayList<String>();
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
  resultSet =statement.executeQuery("select * from soapnotes_diagnosis where username='"+username+"'");
  while(resultSet.next())
  {
	soapnote.add(resultSet.getString("diagnosis")); 
  }
    	
   
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
return soapnote;
	
}
	
public List<SoapNotes> getlimitedsoapnotes(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<SoapNotes> soapnotes = new ArrayList<SoapNotes>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_soapnotes order by pname asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			soapnotes.add( new SoapNotes(resultSet.getString("username"),resultSet.getString("soapid"),resultSet.getString("pname"),resultSet.getString("headache"), resultSet.getString("neckpain"),resultSet.getString("rightshoulderpain"),resultSet.getString("leftshoulderpain"),resultSet.getString("chestpain"),resultSet.getString("rightarmpain"),resultSet.getString("leftarmpain"),resultSet.getString("rightelbowpain"),resultSet.getString("leftelbowpain"),resultSet.getString("rightwristpain"), resultSet.getString("leftwristpain"), resultSet.getString("righthandpain"), resultSet.getString("lefthandpain"), resultSet.getString("mbp"), resultSet.getString("rightribpain"), resultSet.getString("leftribpain"), resultSet.getString("lbp"), resultSet.getString("rightsipain"), resultSet.getString("leftsipain"), resultSet.getString("righthippain"),resultSet.getString("lefthippain"), resultSet.getString("rightgluteulpain"), resultSet.getString("leftgluteulpain"), resultSet.getString("rightlegpain"), resultSet.getString("leftlegpain"), resultSet.getString("rightkneepain"), resultSet.getString("leftkneepain"), resultSet.getString("rightanklepain"),resultSet.getString("leftanklepain"), resultSet.getString("rightfootpain"), resultSet.getString("leftfootpain"),resultSet.getString("date1"),resultSet.getString("improved"),resultSet.getString("worsened"),resultSet.getString("painscale"), resultSet.getString("diagnosis1"), resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"), resultSet.getString("e1e2"), resultSet.getString("xray"),resultSet.getString("offwork1"),resultSet.getString("reeval1"),resultSet.getString("date2"), resultSet.getString("improved1"),resultSet.getString("worsened1"),resultSet.getString("fixation1"),resultSet.getString("notimproved1"), resultSet.getString("scsm1"),resultSet.getString("date3"),  resultSet.getString("improved2"),resultSet.getString("worsened2"),resultSet.getString("fixation2"),resultSet.getString("notimproved2"),resultSet.getString("scsm2"),resultSet.getString("date4"),resultSet.getString("improved3"), resultSet.getString("worsened3"),resultSet.getString("fixation3"),resultSet.getString("notimproved3"),resultSet.getString("scsm3"),resultSet.getString("date5"),resultSet.getString("improved4"),resultSet.getString("worsened4"), resultSet.getString("fixation4"), resultSet.getString("notimproved4"),resultSet.getString("scsm4"),resultSet.getString("date6"),resultSet.getString("improved5"),resultSet.getString("worsened5"),resultSet.getString("fixation5"),resultSet.getString("notimproved5"),resultSet.getString("scsm5"),resultSet.getString("date7"),resultSet.getString("improved6"),resultSet.getString("worsened6"),resultSet.getString("fixation6"),resultSet.getString("notimproved6"),resultSet.getString("scsm6"),resultSet.getString("date8"),resultSet.getString("improved7"), resultSet.getString("worsened7"),resultSet.getString("fixation7"), resultSet.getString("notimproved7"),resultSet.getString("scsm7"),resultSet.getString("date9"),resultSet.getString("improved8"),resultSet.getString("worsened8"), resultSet.getString("fixation8"),resultSet.getString("notimproved8"), resultSet.getString("scsm8"), resultSet.getString("sign")));				
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
	return soapnotes;

}
public int getnoofsoapnotes() {
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
	List<SoapNotes> soapnotes = new ArrayList<SoapNotes>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_soapnotes";
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