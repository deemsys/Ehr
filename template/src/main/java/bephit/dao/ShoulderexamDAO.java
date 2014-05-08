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
import bephit.model.*;
public class ShoulderexamDAO
{
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int setshoulderexam(ShoulderExam shoulderexamdetails,String username)
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
	    	 String cmd="INSERT INTO shoulderexam(username,pname,date,muscle,swelling,ao,dysfunction,pectoralisminor,supraspinatus,infraspinatus,serratusant,teresminor,teresmajor,rhomboids,trapezius,note,functional,orthotpedic,flexionleft,flexionright,extensionleft,extensionright,abductionleft,abductionright,adductionleft,adductionright,internalrotationleft,internalrotationright,externalrotationleft,externalrotationright,emptycanleft,emptycanright,impingementsignleft,impingementsignright,apleysscratchleft,apleysscratchright,subacrominalpushleft,subacrominalpushright,dawbarnsleft,dawbarnsright,yergasonsleft,yergasonsright,codmansleft,codmansright,apprehensionleft,apprehensionright,neurological,latdeltoidleft,latdeltoidright,latarmleft,latarmright,thirdleft,thirdright,medforearmleft,medforearmright,medelbowleft,medelbowright,shdleft,shdright,elbflexleft,elbflexright,elbextleft,elbextright,digitflexionleft,digitflexionright,digitabdleft,digitabdright,bicepsleft,bicepsright,brachioradleft,brachioradright,tricepsleft,tricepsright,overhead,lifting,other,otherdefict,comments,patientstatus,diagnosis1,diagnosis2,diagnosis3,diagnosis4,diagnosis5,times,weeks,spinaldecompression,chiropractic,physicaltherapy,bracing,modalities,supplementation,hep,radiographic,mri,scan,conduction,emg,outsiderefferal,dc,others,othervalue,signature)values('"
	    			 +username+
	    			"','"+shoulderexamdetails.getPname()
	    			+"','"+shoulderexamdetails.getDate()	    	 			    	 		
	    	 		 +"','"+shoulderexamdetails.getMuscle()
	    	 		 +"','"+shoulderexamdetails.getSwelling()
	    	 		 +"','"+shoulderexamdetails.getAo()	    	 		
	    	 		 +"','"+shoulderexamdetails.getDysfunction()
	    	 		 +"','"+shoulderexamdetails.getPectoralisminor()
	    	 		 +"','"+shoulderexamdetails.getSupraspinatus()
	    	 		 +"','"+shoulderexamdetails.getInfraspinatus()
	    	 		 +"','"+shoulderexamdetails.getSerratusant()
	    	 		 +"','"+shoulderexamdetails.getTeresminor()
	    	 		 +"','"+shoulderexamdetails.getTeresmajor()
	    	 		 +"','"+shoulderexamdetails.getRhomboids()
	    	 		 +"','"+shoulderexamdetails.getTrapezius()
	    	 		 +"','"+shoulderexamdetails.getNote()	    	 		
	    	 		 +"','"+shoulderexamdetails.getFunctional()
	    	 		 +"','"+shoulderexamdetails.getOrthotpedic()
	    	 		 +"','"+shoulderexamdetails.getFlexionleft()
	    	 		 +"','"+shoulderexamdetails.getFlexionright()
	    	 		 +"','"+shoulderexamdetails.getExtensionleft()
	    	 		 +"','"+shoulderexamdetails.getExtensionright()
	    	 		 +"','"+shoulderexamdetails.getAbductionleft()
	    	 		 +"','"+shoulderexamdetails.getAbductionright()
	    	 		 +"','"+shoulderexamdetails.getAdductionleft()
	    	 		 +"','"+shoulderexamdetails.getAdductionright()
	    	 		 +"','"+shoulderexamdetails.getInternalrotationleft()
	    	 		 +"','"+shoulderexamdetails.getInternalrotationright()
	    	 		 +"','"+shoulderexamdetails.getExternalrotationleft()
	    	 		 +"','"+shoulderexamdetails.getExternalrotationright()
	    	 		 +"','"+shoulderexamdetails.getEmptycanleft()
	    	 		 +"','"+shoulderexamdetails.getEmptycanright()
	    	 		 +"','"+shoulderexamdetails.getImpingementsignleft()
	    	 		 +"','"+shoulderexamdetails.getImpingementsignright()
	    	 		 +"','"+shoulderexamdetails.getApleysscratchleft()
	    	 		 +"','"+shoulderexamdetails.getApleysscratchright()
	    	 		 +"','"+shoulderexamdetails.getSubacrominalpushleft()
	    	 		 +"','"+shoulderexamdetails.getSubacrominalpushright()
	    	 		 +"','"+shoulderexamdetails.getDawbarnsleft()
	    	 		 +"','"+shoulderexamdetails.getDawbarnsright()
	    	 		 +"','"+shoulderexamdetails.getYergasonsleft()
	    	 		 +"','"+shoulderexamdetails.getYergasonsright()
	    	 		 +"','"+shoulderexamdetails.getCodmansleft()
	    	 		 +"','"+shoulderexamdetails.getCodmansright()
	    	 		 +"','"+shoulderexamdetails.getApprehensionleft()
	    	 		 +"','"+shoulderexamdetails.getApprehensionright()
	    	 		 +"','"+shoulderexamdetails.getNeurological()
	    	 		 +"','"+shoulderexamdetails.getLatdeltoidleft()
	    	 		 +"','"+shoulderexamdetails.getLatdeltoidright()
	    	 		 +"','"+shoulderexamdetails.getLatarmleft()
	    	 		 +"','"+shoulderexamdetails.getLatarmright()
	    	 		 +"','"+shoulderexamdetails.getThirdleft()
	    	 		 +"','"+shoulderexamdetails.getThirdright()
	    	 		 +"','"+shoulderexamdetails.getMedforearmleft()
	    	 		 +"','"+shoulderexamdetails.getMedforearmright()
	    	 		 +"','"+shoulderexamdetails.getMedelbowleft()
	    	 		 +"','"+shoulderexamdetails.getMedelbowright()
	    	 		 +"','"+shoulderexamdetails.getShdleft()
	    	 		 +"','"+shoulderexamdetails.getShdright()
	    	 		 +"','"+shoulderexamdetails.getElbflexleft()
	    	 		 +"','"+shoulderexamdetails.getElbflexright()
	    	 		 +"','"+shoulderexamdetails.getElbextleft()
	    	 		 +"','"+shoulderexamdetails.getElbextright()
	    	 		 +"','"+shoulderexamdetails.getDigitflexionleft()
	    	 		 +"','"+shoulderexamdetails.getDigitflexionright()
	    	 		 +"','"+shoulderexamdetails.getDigitabdleft()
	    	 		 +"','"+shoulderexamdetails.getDigitabdright()
	    	 		 +"','"+shoulderexamdetails.getBicepsleft()
	    	 		 +"','"+shoulderexamdetails.getBicepsright()
	    	 		 +"','"+shoulderexamdetails.getBrachioradleft()
	    	 		 +"','"+shoulderexamdetails.getBrachioradright()	    	 		
	    	 		+"','"+shoulderexamdetails.getTricepsleft()
	    	 		+"','"+shoulderexamdetails.getTricepsright()	    	 		
	    	 		+"','"+shoulderexamdetails.getOverhead()
	    	 		+"','"+shoulderexamdetails.getLifting()	    	 		
	    	 		+"','"+shoulderexamdetails.getOther()
	    	 		+"','"+shoulderexamdetails.getOtherdefict()
	    	 		+"','"+shoulderexamdetails.getComments()
	    	 		+"','"+shoulderexamdetails.getPatientstatus()
	    	 		+"','"+shoulderexamdetails.getDiagnosis1()
	    	 		+"','"+shoulderexamdetails.getDiagnosis2()
	    	 		+"','"+shoulderexamdetails.getDiagnosis3()
	    	 		+"','"+shoulderexamdetails.getDiagnosis4()
	    	 		+"','"+shoulderexamdetails.getDiagnosis5()
	    	 		+"','"+shoulderexamdetails.getTimes()
	    	 		+"','"+shoulderexamdetails.getWeeks()
	    	 		+"','"+shoulderexamdetails.getSpinaldecompression()
	    	 		+"','"+shoulderexamdetails.getChiropractic()
	    	 		+"','"+shoulderexamdetails.getPhysicaltherapy()
	    	 		+"','"+shoulderexamdetails.getBracing()
	    	 		+"','"+shoulderexamdetails.getModalities()
	    	 		+"','"+shoulderexamdetails.getSupplementation()
	    	 		+"','"+shoulderexamdetails.getHep()
	    	 		+"','"+shoulderexamdetails.getRadiographic()
	    	 		+"','"+shoulderexamdetails.getMri()
	    	 		+"','"+shoulderexamdetails.getScan()
	    	 		+"','"+shoulderexamdetails.getConduction()
	    	 		+"','"+shoulderexamdetails.getEmg()
	    	 		+"','"+shoulderexamdetails.getOutsiderefferal()
	    	 		+"','"+shoulderexamdetails.getDc()
	    	 	    +"','"+shoulderexamdetails.getOthers()
	    	 	    +"','"+shoulderexamdetails.getOthervalue()
	    	 		+"','"+shoulderexamdetails.getSignature()+"')";
	    

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
	
	public int updateshoulderexam(ShoulderExam shoulderexamdetails,String shoulderexamno)
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
	    	 String cmd="update shoulderexam set pname='"+shoulderexamdetails.getPname()
	    +"',date='"+shoulderexamdetails.getDate()
	    +"',muscle='"+shoulderexamdetails.getMuscle()
	    +"',swelling='"+ shoulderexamdetails.getSwelling()
	    +"',ao='"+shoulderexamdetails.getAo()
	    +"',dysfunction='"+shoulderexamdetails.getDysfunction()
	    +"',pectoralisminor='"+shoulderexamdetails.getPectoralisminor()
	    +"',supraspinatus='"+shoulderexamdetails.getSupraspinatus()
	    +"',infraspinatus='"+shoulderexamdetails.getInfraspinatus()
	    +"',serratusant='"+shoulderexamdetails.getSerratusant()
	    +"',teresminor='"+shoulderexamdetails.getTeresminor()
	    +"',teresmajor='"+shoulderexamdetails.getTeresmajor()
	    +"',rhomboids='"+shoulderexamdetails.getRhomboids()
	    +"',trapezius='"+shoulderexamdetails.getTrapezius()	   
	    +"',note='" +shoulderexamdetails.getNote()
	    +"',functional='"+shoulderexamdetails.getFunctional()
	    +"',orthotpedic='"+shoulderexamdetails.getOrthotpedic()
	    +"',flexionleft='"+shoulderexamdetails.getFlexionleft()
	    +"',flexionright='"+shoulderexamdetails.getFlexionright()
	    +"',extensionleft='" +shoulderexamdetails.getExtensionleft()
	    +"',extensionright='"+shoulderexamdetails.getExtensionright()
	    +"',abductionleft='" +shoulderexamdetails.getAbductionleft()
	    +"',abductionright='"+shoulderexamdetails.getAbductionright()
	    +"',adductionleft='"+shoulderexamdetails.getAdductionleft()
	    +"',adductionright='"+shoulderexamdetails.getAdductionright()
	    +"',internalrotationleft='"+shoulderexamdetails.getInternalrotationleft()
	    +"',internalrotationright='"+shoulderexamdetails.getInternalrotationright()
	    +"',externalrotationleft='"+shoulderexamdetails.getExternalrotationleft()
	    +"',externalrotationright='"+shoulderexamdetails.getExternalrotationright()
	    +"',emptycanleft='"+shoulderexamdetails.getEmptycanleft()
	    +"',emptycanright='"+shoulderexamdetails.getEmptycanright()
	    +"',impingementsignleft='"+ shoulderexamdetails.getImpingementsignleft()
	    +"',impingementsignright='"+shoulderexamdetails.getImpingementsignright()
	    +"',apleysscratchleft='"+shoulderexamdetails.getApleysscratchleft()
	    +"',apleysscratchright='"+shoulderexamdetails.getApleysscratchright()
	    +"',subacrominalpushleft='"+shoulderexamdetails.getSubacrominalpushleft()
	    +"',subacrominalpushright='"+shoulderexamdetails.getSubacrominalpushright()
	    +"',dawbarnsleft='"+shoulderexamdetails.getDawbarnsleft()
	    +"',dawbarnsright='"+shoulderexamdetails.getDawbarnsright()
	    +"',yergasonsleft='"+shoulderexamdetails.getYergasonsleft()
	    +"',yergasonsright='"+shoulderexamdetails.getYergasonsright()
	    +"',codmansleft='"+shoulderexamdetails.getCodmansleft()
	    +"',codmansright='"+shoulderexamdetails.getCodmansright()
	    +"',apprehensionleft='"+shoulderexamdetails.getApprehensionleft()
	    +"',apprehensionright='"+shoulderexamdetails.getApprehensionright()
	    +"',neurological='"+shoulderexamdetails.getNeurological()	    
	    +"',latdeltoidleft='"+shoulderexamdetails.getLatdeltoidleft()
	    +"',latdeltoidright='"+shoulderexamdetails.getLatdeltoidright()
	    +"',latarmleft='"+shoulderexamdetails.getLatarmleft()
	    +"',latarmright='"+shoulderexamdetails.getLatarmright()
	    +"',thirdleft='"+shoulderexamdetails.getThirdleft()
	    +"',thirdright='"+shoulderexamdetails.getThirdright()
	    +"',medforearmleft='"+shoulderexamdetails.getMedforearmleft()
	    +"',medforearmright='"+shoulderexamdetails.getMedforearmright()
	    +"',medelbowleft='"+shoulderexamdetails.getMedelbowleft()
	    +"',medelbowright='"+shoulderexamdetails.getMedelbowright()
	    +"',shdleft='"+shoulderexamdetails.getShdleft()
	    +"',shdright='"+shoulderexamdetails.getShdright()
	    +"',elbflexleft='"+shoulderexamdetails.getElbflexleft()
	    +"',elbflexright='"+shoulderexamdetails.getElbflexright()
	    +"',elbextleft='"+shoulderexamdetails.getElbextleft()
	    +"',elbextright='"+shoulderexamdetails.getElbextright()
	    +"',digitflexionleft='"+shoulderexamdetails.getDigitflexionleft()
	    +"',digitflexionright='"+shoulderexamdetails.getDigitflexionright()
	    +"',digitabdleft='"+shoulderexamdetails.getDigitabdleft()
	    +"',digitabdright='"+shoulderexamdetails.getDigitabdright()
	    +"',bicepsleft='"+shoulderexamdetails.getBicepsleft()
	    +"',bicepsright='"+shoulderexamdetails.getBicepsright()
	    +"',brachioradleft='"+shoulderexamdetails.getBrachioradleft()
	    +"',brachioradright='"+shoulderexamdetails.getBrachioradright()
	    +"',tricepsleft='"+shoulderexamdetails.getTricepsleft()
	    +"',tricepsright='"+shoulderexamdetails.getTricepsright()
	    +"',overhead='"+ shoulderexamdetails.getOverhead()
	    +"',lifting='"+shoulderexamdetails.getLifting()	    
	    +"',other='"+shoulderexamdetails.getOther()
	    +"',otherdefict='"+shoulderexamdetails.getOtherdefict()
	    +"',comments='"+shoulderexamdetails.getComments()
	    +"',patientstatus='"+shoulderexamdetails.getPatientstatus()
	    +"',diagnosis1='"+shoulderexamdetails.getDiagnosis1()
	    +"',diagnosis2='"+shoulderexamdetails.getDiagnosis2()
	    +"',diagnosis3='"+shoulderexamdetails.getDiagnosis3()
	    +"',diagnosis4='"+shoulderexamdetails.getDiagnosis4()
	    +"',diagnosis5='"+shoulderexamdetails.getDiagnosis5()
	    +"',times='"+shoulderexamdetails.getTimes()
	    +"',weeks='"+shoulderexamdetails.getWeeks()
	    +"',spinaldecompression='"+shoulderexamdetails.getSpinaldecompression()
	    +"',chiropractic='"+shoulderexamdetails.getChiropractic()
	    +"',physicaltherapy='"+shoulderexamdetails.getPhysicaltherapy()
	    +"',bracing='"+ shoulderexamdetails.getBracing()
	    +"',modalities='"+shoulderexamdetails.getModalities()
	    +"',supplementation='"+shoulderexamdetails.getSupplementation()
	    +"',hep='"+shoulderexamdetails.getHep()
	    +"',radiographic='"+shoulderexamdetails.getRadiographic()
	    +"',mri='"+shoulderexamdetails.getMri()
	    +"',scan='"+shoulderexamdetails.getScan()
	    +"',conduction='"+shoulderexamdetails.getConduction()
	    +"',emg='"+shoulderexamdetails.getEmg()
	    +"',outsiderefferal='"+shoulderexamdetails.getOutsiderefferal()
	    +"',dc='"+shoulderexamdetails.getDc()
	    +"',others='"+shoulderexamdetails.getOthers()
	    +"',othervalue='"+shoulderexamdetails.getOthervalue()
	    +"',signature='"+shoulderexamdetails.getSignature()+"' where shoulderexamno='"+shoulderexamno+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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
	
	public List<ShoulderExam> getshoulderexamallDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<ShoulderExam> shoulderexam = new ArrayList<ShoulderExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from shoulderexam");
			while(resultSet.next()){
				shoulderexam.add(new ShoulderExam(resultSet.getString("shoulderexamno"),
						resultSet.getString("pname"),
						resultSet.getString("date"),						
						resultSet.getString("muscle"),
						resultSet.getString("swelling"),
						resultSet.getString("ao"),
						resultSet.getString("dysfunction"),
						resultSet.getString("pectoralisminor"),
						resultSet.getString("supraspinatus"),
						resultSet.getString("infraspinatus"),
						resultSet.getString("serratusant"),
						resultSet.getString("teresminor"),
						resultSet.getString("teresmajor"),
						resultSet.getString("rhomboids"),
						resultSet.getString("trapezius"),
						resultSet.getString("note"),
						resultSet.getString("functional"),
						resultSet.getString("orthotpedic"),
						resultSet.getString("flexionleft"),
						resultSet.getString("flexionright"),
						resultSet.getString("extensionleft"),
						resultSet.getString("extensionright"),
						resultSet.getString("abductionleft"),
						resultSet.getString("abductionright"),
						resultSet.getString("adductionleft"),
						resultSet.getString("adductionright"),
						resultSet.getString("internalrotationleft"),
						resultSet.getString("internalrotationright"),
						resultSet.getString("externalrotationleft"),
						resultSet.getString("externalrotationright")
						,resultSet.getString("emptycanleft"),
						resultSet.getString("emptycanright"),
						resultSet.getString("impingementsignleft"),
						resultSet.getString("impingementsignright"),
						resultSet.getString("apleysscratchleft"),
						resultSet.getString("apleysscratchright"),
						resultSet.getString("subacrominalpushleft"),
						resultSet.getString("subacrominalpushright"),
						resultSet.getString("dawbarnsleft"),
						resultSet.getString("dawbarnsright"),
						resultSet.getString("yergasonsleft"),
						resultSet.getString("yergasonsright"),
						resultSet.getString("codmansleft"),
						resultSet.getString("codmansright"),
						resultSet.getString("apprehensionleft"),
						resultSet.getString("apprehensionright"),
						resultSet.getString("neurological")
						,resultSet.getString("latdeltoidleft"),
						resultSet.getString("latdeltoidright"),
						resultSet.getString("latarmleft"),
						resultSet.getString("latarmright"),
						resultSet.getString("thirdleft"),
						resultSet.getString("thirdright"),
						resultSet.getString("medforearmleft"),
						resultSet.getString("medforearmright"),
			    	resultSet.getString("medelbowleft"),
			    	resultSet.getString("medelbowright"),
			    	resultSet.getString("shdleft"),
			    	resultSet.getString("shdright"),
			    	resultSet.getString("elbflexleft"),
			    	resultSet.getString("elbflexright"),
			    	resultSet.getString("elbextleft"),
			    	resultSet.getString("elbextright"),
			    	resultSet.getString("digitflexionleft"),
			    	resultSet.getString("digitflexionright"),
			    	resultSet.getString("digitabdleft"),
			    	resultSet.getString("digitabdright"),
			    	resultSet.getString("bicepsleft"),
			    	resultSet.getString("bicepsright"),
			    	resultSet.getString("brachioradleft"),
			    	resultSet.getString("brachioradright"),
			    	resultSet.getString("tricepsleft"),
			    	resultSet.getString("tricepsright"),
			    	resultSet.getString("overhead"),
			    	resultSet.getString("lifting"),			    	
			    	resultSet.getString("other"),
			    	resultSet.getString("otherdefict"),
			    	resultSet.getString("comments"),
			    	resultSet.getString("patientstatus"),
			    	resultSet.getString("diagnosis1"),
			    	resultSet.getString("diagnosis2"),
			    	resultSet.getString("diagnosis3"),
			    	resultSet.getString("diagnosis4"),
			    	resultSet.getString("diagnosis5"),
			    	resultSet.getString("times"),
			    	resultSet.getString("weeks"),
			    	resultSet.getString("spinaldecompression"),
			    	resultSet.getString("chiropractic"),
			    	resultSet.getString("physicaltherapy"),
			    	resultSet.getString("bracing"),
			    	resultSet.getString("modalities"),
			    	resultSet.getString("supplementation"),
			    	resultSet.getString("hep"),
			    	resultSet.getString("radiographic"),
			    	resultSet.getString("mri"),
			    	resultSet.getString("scan"),
			    	resultSet.getString("conduction"),
			    	resultSet.getString("emg") ,
			    	resultSet.getString("outsiderefferal"),
			    	resultSet.getString("dc"),
			    	resultSet.getString("others"),
			    	resultSet.getString("othervalue"),
			    	resultSet.getString("signature")));
				System.out.println("patient name"+shoulderexam.get(0).getPname());
			    	
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
	    return shoulderexam;
		
	}
	public int deleteshoulderexamdetails(String shoulderexamno)
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
			statement.executeUpdate("delete from shoulderexam where shoulderexamno='"+shoulderexamno+"'");
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
	
	public List<ShoulderExam> getShoulderexamDetails(String shoulderexamno){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<ShoulderExam> shoulderexam = new ArrayList<ShoulderExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from shoulderexam where shoulderexamno='"+shoulderexamno+"'");
			while(resultSet.next()){
				
					shoulderexam.add(new ShoulderExam(resultSet.getString("shoulderexamno"),
							resultSet.getString("pname"),
							resultSet.getString("date"),						
							resultSet.getString("muscle"),
							resultSet.getString("swelling"),
							resultSet.getString("ao"),
							resultSet.getString("dysfunction"),
							resultSet.getString("pectoralisminor"),
							resultSet.getString("supraspinatus"),
							resultSet.getString("infraspinatus"),
							resultSet.getString("serratusant"),
							resultSet.getString("teresminor"),
							resultSet.getString("teresmajor"),
							resultSet.getString("rhomboids"),
							resultSet.getString("trapezius"),
							resultSet.getString("note"),
							resultSet.getString("functional"),
							resultSet.getString("orthotpedic"),
							resultSet.getString("flexionleft"),
							resultSet.getString("flexionright"),
							resultSet.getString("extensionleft"),
							resultSet.getString("extensionright"),
							resultSet.getString("abductionleft"),
							resultSet.getString("abductionright"),
							resultSet.getString("adductionleft"),
							resultSet.getString("adductionright"),
							resultSet.getString("internalrotationleft"),
							resultSet.getString("internalrotationright"),
							resultSet.getString("externalrotationleft"),
							resultSet.getString("externalrotationright")
							,resultSet.getString("emptycanleft"),
							resultSet.getString("emptycanright"),
							resultSet.getString("impingementsignleft"),
							resultSet.getString("impingementsignright"),
							resultSet.getString("apleysscratchleft"),
							resultSet.getString("apleysscratchright"),
							resultSet.getString("subacrominalpushleft"),
							resultSet.getString("subacrominalpushright"),
							resultSet.getString("dawbarnsleft"),
							resultSet.getString("dawbarnsright"),
							resultSet.getString("yergasonsleft"),
							resultSet.getString("yergasonsright"),
							resultSet.getString("codmansleft"),
							resultSet.getString("codmansright"),
							resultSet.getString("apprehensionleft"),
							resultSet.getString("apprehensionright"),
							resultSet.getString("neurological")
							,resultSet.getString("latdeltoidleft"),
							resultSet.getString("latdeltoidright"),
							resultSet.getString("latarmleft"),
							resultSet.getString("latarmright"),
							resultSet.getString("thirdleft"),
							resultSet.getString("thirdright"),
							resultSet.getString("medforearmleft"),
							resultSet.getString("medforearmright"),
				    	resultSet.getString("medelbowleft"),
				    	resultSet.getString("medelbowright"),
				    	resultSet.getString("shdleft"),
				    	resultSet.getString("shdright"),
				    	resultSet.getString("elbflexleft"),
				    	resultSet.getString("elbflexright"),
				    	resultSet.getString("elbextleft"),
				    	resultSet.getString("elbextright"),
				    	resultSet.getString("digitflexionleft"),
				    	resultSet.getString("digitflexionright"),
				    	resultSet.getString("digitabdleft"),
				    	resultSet.getString("digitabdright"),
				    	resultSet.getString("bicepsleft"),
				    	resultSet.getString("bicepsright"),
				    	resultSet.getString("brachioradleft"),
				    	resultSet.getString("brachioradright"),
				    	resultSet.getString("tricepsleft"),
				    	resultSet.getString("tricepsright"),
				    	resultSet.getString("overhead"),
				    	resultSet.getString("lifting"),			    	
				    	resultSet.getString("other"),
				    	resultSet.getString("otherdefict"),
				    	resultSet.getString("comments"),
				    	resultSet.getString("patientstatus"),
				    	resultSet.getString("diagnosis1"),
				    	resultSet.getString("diagnosis2"),
				    	resultSet.getString("diagnosis3"),
				    	resultSet.getString("diagnosis4"),
				    	resultSet.getString("diagnosis5"),
				    	resultSet.getString("times"),
				    	resultSet.getString("weeks"),
				    	resultSet.getString("spinaldecompression"),
				    	resultSet.getString("chiropractic"),
				    	resultSet.getString("physicaltherapy"),
				    	resultSet.getString("bracing"),
				    	resultSet.getString("modalities"),
				    	resultSet.getString("supplementation"),
				    	resultSet.getString("hep"),
				    	resultSet.getString("radiographic"),
				    	resultSet.getString("mri"),
				    	resultSet.getString("scan"),
				    	resultSet.getString("conduction"),
				    	resultSet.getString("emg") ,
				    	resultSet.getString("outsiderefferal"),
				    	resultSet.getString("dc"),
				    	resultSet.getString("others"),
				    	resultSet.getString("othervalue"),
				    	resultSet.getString("signature"))); 
				}
			}
				    	    
			   	
			
	    catch(Exception e){
	    	System.out.println(e.toString());
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return shoulderexam;
		
	}
	public List<ShoulderExam> getusernameShoulderexamDetails(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<ShoulderExam> shoulderexam = new ArrayList<ShoulderExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from shoulderexam where username='"+username+"'");
			while(resultSet.next()){
				
					shoulderexam.add(new ShoulderExam(resultSet.getString("shoulderexamno"),
							resultSet.getString("pname"),
							resultSet.getString("date"),						
							resultSet.getString("muscle"),
							resultSet.getString("swelling"),
							resultSet.getString("ao"),
							resultSet.getString("dysfunction"),
							resultSet.getString("pectoralisminor"),
							resultSet.getString("supraspinatus"),
							resultSet.getString("infraspinatus"),
							resultSet.getString("serratusant"),
							resultSet.getString("teresminor"),
							resultSet.getString("teresmajor"),
							resultSet.getString("rhomboids"),
							resultSet.getString("trapezius"),
							resultSet.getString("note"),
							resultSet.getString("functional"),
							resultSet.getString("orthotpedic"),
							resultSet.getString("flexionleft"),
							resultSet.getString("flexionright"),
							resultSet.getString("extensionleft"),
							resultSet.getString("extensionright"),
							resultSet.getString("abductionleft"),
							resultSet.getString("abductionright"),
							resultSet.getString("adductionleft"),
							resultSet.getString("adductionright"),
							resultSet.getString("internalrotationleft"),
							resultSet.getString("internalrotationright"),
							resultSet.getString("externalrotationleft"),
							resultSet.getString("externalrotationright")
							,resultSet.getString("emptycanleft"),
							resultSet.getString("emptycanright"),
							resultSet.getString("impingementsignleft"),
							resultSet.getString("impingementsignright"),
							resultSet.getString("apleysscratchleft"),
							resultSet.getString("apleysscratchright"),
							resultSet.getString("subacrominalpushleft"),
							resultSet.getString("subacrominalpushright"),
							resultSet.getString("dawbarnsleft"),
							resultSet.getString("dawbarnsright"),
							resultSet.getString("yergasonsleft"),
							resultSet.getString("yergasonsright"),
							resultSet.getString("codmansleft"),
							resultSet.getString("codmansright"),
							resultSet.getString("apprehensionleft"),
							resultSet.getString("apprehensionright"),
							resultSet.getString("neurological")
							,resultSet.getString("latdeltoidleft"),
							resultSet.getString("latdeltoidright"),
							resultSet.getString("latarmleft"),
							resultSet.getString("latarmright"),
							resultSet.getString("thirdleft"),
							resultSet.getString("thirdright"),
							resultSet.getString("medforearmleft"),
							resultSet.getString("medforearmright"),
				    	resultSet.getString("medelbowleft"),
				    	resultSet.getString("medelbowright"),
				    	resultSet.getString("shdleft"),
				    	resultSet.getString("shdright"),
				    	resultSet.getString("elbflexleft"),
				    	resultSet.getString("elbflexright"),
				    	resultSet.getString("elbextleft"),
				    	resultSet.getString("elbextright"),
				    	resultSet.getString("digitflexionleft"),
				    	resultSet.getString("digitflexionright"),
				    	resultSet.getString("digitabdleft"),
				    	resultSet.getString("digitabdright"),
				    	resultSet.getString("bicepsleft"),
				    	resultSet.getString("bicepsright"),
				    	resultSet.getString("brachioradleft"),
				    	resultSet.getString("brachioradright"),
				    	resultSet.getString("tricepsleft"),
				    	resultSet.getString("tricepsright"),
				    	resultSet.getString("overhead"),
				    	resultSet.getString("lifting"),			    	
				    	resultSet.getString("other"),
				    	resultSet.getString("otherdefict"),
				    	resultSet.getString("comments"),
				    	resultSet.getString("patientstatus"),
				    	resultSet.getString("diagnosis1"),
				    	resultSet.getString("diagnosis2"),
				    	resultSet.getString("diagnosis3"),
				    	resultSet.getString("diagnosis4"),
				    	resultSet.getString("diagnosis5"),
				    	resultSet.getString("times"),
				    	resultSet.getString("weeks"),
				    	resultSet.getString("spinaldecompression"),
				    	resultSet.getString("chiropractic"),
				    	resultSet.getString("physicaltherapy"),
				    	resultSet.getString("bracing"),
				    	resultSet.getString("modalities"),
				    	resultSet.getString("supplementation"),
				    	resultSet.getString("hep"),
				    	resultSet.getString("radiographic"),
				    	resultSet.getString("mri"),
				    	resultSet.getString("scan"),
				    	resultSet.getString("conduction"),
				    	resultSet.getString("emg") ,
				    	resultSet.getString("outsiderefferal"),
				    	resultSet.getString("dc"),
				    	resultSet.getString("others"),
				    	resultSet.getString("othervalue"),
				    	resultSet.getString("signature"))); 
				}
			}
				    	    
			   	
			
	    catch(Exception e){
	    	System.out.println(e.toString());
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return shoulderexam;
		
	}
	
	public List<ShoulderExam> getlimitedshoulderexam(int page) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<ShoulderExam> shoulderexam = new ArrayList<ShoulderExam>();
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from shoulderexam order by pname asc limit " + offset + ","+ limit+"" ;

			resultSet = statement.executeQuery(cmd);
			while (resultSet.next()) {
				shoulderexam.add(new ShoulderExam(resultSet.getString("shoulderexamno"),
						resultSet.getString("pname"),
						resultSet.getString("date"),						
						resultSet.getString("muscle"),
						resultSet.getString("swelling"),
						resultSet.getString("ao"),
						resultSet.getString("dysfunction"),
						resultSet.getString("pectoralisminor"),
						resultSet.getString("supraspinatus"),
						resultSet.getString("infraspinatus"),
						resultSet.getString("serratusant"),
						resultSet.getString("teresminor"),
						resultSet.getString("teresmajor"),
						resultSet.getString("rhomboids"),
						resultSet.getString("trapezius"),
						resultSet.getString("note"),
						resultSet.getString("functional"),
						resultSet.getString("orthotpedic"),
						resultSet.getString("flexionleft"),
						resultSet.getString("flexionright"),
						resultSet.getString("extensionleft"),
						resultSet.getString("extensionright"),
						resultSet.getString("abductionleft"),
						resultSet.getString("abductionright"),
						resultSet.getString("adductionleft"),
						resultSet.getString("adductionright"),
						resultSet.getString("internalrotationleft"),
						resultSet.getString("internalrotationright"),
						resultSet.getString("externalrotationleft"),
						resultSet.getString("externalrotationright")
						,resultSet.getString("emptycanleft"),
						resultSet.getString("emptycanright"),
						resultSet.getString("impingementsignleft"),
						resultSet.getString("impingementsignright"),
						resultSet.getString("apleysscratchleft"),
						resultSet.getString("apleysscratchright"),
						resultSet.getString("subacrominalpushleft"),
						resultSet.getString("subacrominalpushright"),
						resultSet.getString("dawbarnsleft"),
						resultSet.getString("dawbarnsright"),
						resultSet.getString("yergasonsleft"),
						resultSet.getString("yergasonsright"),
						resultSet.getString("codmansleft"),
						resultSet.getString("codmansright"),
						resultSet.getString("apprehensionleft"),
						resultSet.getString("apprehensionright"),
						resultSet.getString("neurological")
						,resultSet.getString("latdeltoidleft"),
						resultSet.getString("latdeltoidright"),
						resultSet.getString("latarmleft"),
						resultSet.getString("latarmright"),
						resultSet.getString("thirdleft"),
						resultSet.getString("thirdright"),
						resultSet.getString("medforearmleft"),
						resultSet.getString("medforearmright"),
			    	resultSet.getString("medelbowleft"),
			    	resultSet.getString("medelbowright"),
			    	resultSet.getString("shdleft"),
			    	resultSet.getString("shdright"),
			    	resultSet.getString("elbflexleft"),
			    	resultSet.getString("elbflexright"),
			    	resultSet.getString("elbextleft"),
			    	resultSet.getString("elbextright"),
			    	resultSet.getString("digitflexionleft"),
			    	resultSet.getString("digitflexionright"),
			    	resultSet.getString("digitabdleft"),
			    	resultSet.getString("digitabdright"),
			    	resultSet.getString("bicepsleft"),
			    	resultSet.getString("bicepsright"),
			    	resultSet.getString("brachioradleft"),
			    	resultSet.getString("brachioradright"),
			    	resultSet.getString("tricepsleft"),
			    	resultSet.getString("tricepsright"),
			    	resultSet.getString("overhead"),
			    	resultSet.getString("lifting"),			    	
			    	resultSet.getString("other"),
			    	resultSet.getString("otherdefict"),
			    	resultSet.getString("comments"),
			    	resultSet.getString("patientstatus"),
			    	resultSet.getString("diagnosis1"),
			    	resultSet.getString("diagnosis2"),
			    	resultSet.getString("diagnosis3"),
			    	resultSet.getString("diagnosis4"),
			    	resultSet.getString("diagnosis5"),
			    	resultSet.getString("times"),
			    	resultSet.getString("weeks"),
			    	resultSet.getString("spinaldecompression"),
			    	resultSet.getString("chiropractic"),
			    	resultSet.getString("physicaltherapy"),
			    	resultSet.getString("bracing"),
			    	resultSet.getString("modalities"),
			    	resultSet.getString("supplementation"),
			    	resultSet.getString("hep"),
			    	resultSet.getString("radiographic"),
			    	resultSet.getString("mri"),
			    	resultSet.getString("scan"),
			    	resultSet.getString("conduction"),
			    	resultSet.getString("emg") ,
			    	resultSet.getString("outsiderefferal"),
			    	resultSet.getString("dc"),
			    	resultSet.getString("others"),
			    	resultSet.getString("othervalue"),
			    	resultSet.getString("signature"))); 
					
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
		return shoulderexam;

	}
	public int getnoofshoulderexam() {
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
		List<ShoulderExam> shoulderexam = new ArrayList<ShoulderExam>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from shoulderexam";
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