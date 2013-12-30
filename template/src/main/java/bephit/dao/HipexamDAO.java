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

import bephit.model.*;;

;
public class HipexamDAO
{
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int sethipexam(HipExam hipexamdetails)
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
	    	 String cmd="INSERT INTO hipexam(pname,date,gait,pelvic,ao,dysfunction,shortlegleft,shortlegleftvalue,shortlegleftother,shortlegright,shortlegrightvalue,shortlegrightother,piriformisleft,gluteusleft,iliopsoasleft,hamstringsleft,note,functional,orthotpedic,flexionleft,flexionright,extensionleft,extensionright,abductionleft,abductionright,adductionleft,adductionright,internalrotationleft,internalrotationright,externalrotationleft,externalrotationright,fabereleft,fabereright,nachlasleft,nachlasright,elysleft,elysright,yeomansleft,yeomansright,obersleft,obersright,thomasleft,thomasright,neurological,inguinalarealeft,inguinalarearight,antleft,antright,kneeleft,kneeright,medialleft,medialright,latleft,latright,plantarleft,plantarright,iliopsoasfirstleft,iliopsoasfirstright,iliopsoas1left,iliopsoas1right,iliopsoas2left,iliopsoas2right,femleft,femright,medleft,medright,maxleft,maxright,patellarleft,patellarright,hsleft,hsright,achillesleft,achillesright,walking,standing,stairs,other,otherdefict,comments,patientstatus,diagnosis1,diagnosis2,diagnosis3,diagnosis4,diagnosis5,times,weeks,spinaldecompression,chiropractic,physicaltherapy,bracing,modalities,supplementation,hep,radiographic,mri,scan,conduction,emg,outsidereferral,dc,signature)values('"
	    	 		 +hipexamdetails.getPname()+"','"+hipexamdetails.getDate()+"','"+hipexamdetails.getGait()+"','"+hipexamdetails.getPelvic()+"','"+hipexamdetails.getAo()+"','"+hipexamdetails.getDysfunction()+"','"+hipexamdetails.getShortlegleft()+"','"+hipexamdetails.getShortlegleftvalue()+"','"+
	    	 		  hipexamdetails.getShortlegleftother()+"','"+hipexamdetails.getShortlegright()+"','"+hipexamdetails.getShortlegrightvalue()+"','"+hipexamdetails.getShortlegrightother()+"','"+hipexamdetails.getPiriformisleft()+"','"+hipexamdetails.getGluteusleft()+"','"+
	    	 		 hipexamdetails.getIliopsoasleft()+"','"+hipexamdetails.getHamstringsleft()+"','"+hipexamdetails.getNote()+"','"+hipexamdetails.getFunctional()+"','"+hipexamdetails.getOrthotpedic()+"','"+hipexamdetails.getFlexionleft()+"','"+hipexamdetails.getFlexionright()+"','"+
	    	 		 hipexamdetails.getExtensionleft()+"','"+hipexamdetails.getExtensionright()+"','"+hipexamdetails.getAbductionleft()+"','"+hipexamdetails.getAbductionright()+"','"+hipexamdetails.getAdductionleft()+"','"+hipexamdetails.getAdductionright()+"','"+hipexamdetails.getInternalrotationleft()+"','"+hipexamdetails.getInternalrotationright()+"','"+hipexamdetails.getExternalrotationleft()+"','"+hipexamdetails.getExternalrotationright()+"','"+hipexamdetails.getFabereleft()+"','"+hipexamdetails.getFabereright()+"','"+
	    	 		 hipexamdetails.getNachlasleft()+"','"+hipexamdetails.getNachlasright()+"','"+hipexamdetails.getElysleft()+"','"+hipexamdetails.getElysright()+"','"+hipexamdetails.getYeomansleft()+"','"+hipexamdetails.getYeomansright()+"','"+hipexamdetails.getObersleft()+"','"+hipexamdetails.getObersright()+"','"+hipexamdetails.getThomasleft()+"','"+hipexamdetails.getThomasright()+"','"+hipexamdetails.getNeurological()+"','"+hipexamdetails.getInguinalarealeft()+"','"+hipexamdetails.getInguinalarearight()+"','"+
	    	 		 hipexamdetails.getAntleft()+"','"+hipexamdetails.getAntright()+"','"+hipexamdetails.getKneeleft()+"','"+hipexamdetails.getKneeright()+"','"+hipexamdetails.getMedialleft()+"','"+hipexamdetails.getMedialright()+"','"+hipexamdetails.getLatleft()+"','"+hipexamdetails.getLatright()+"','"+hipexamdetails.getPlantarleft()+"','"+hipexamdetails.getPlantarright()+"','"+hipexamdetails.getIliopsoasfirstleft()+"','"+hipexamdetails.getIliopsoasfirstright()+"','"+hipexamdetails.getIliopsoas1left()+"','"+
	    	 		 hipexamdetails.getIliopsoas1right()+"','"+hipexamdetails.getIliopsoas2left()+"','"+hipexamdetails.getIliopsoas2right()+"','"+hipexamdetails.getFemleft()+"','"+hipexamdetails.getFemright()+"','"+hipexamdetails.getMedleft()+"','"+hipexamdetails.getMedright()+"','"+hipexamdetails.getMaxleft()+"','"+hipexamdetails.getMaxright()+"','"+hipexamdetails.getPatellarleft()+"','"+hipexamdetails.getPatellarright()+"','"+hipexamdetails.getHsleft()+"','"+hipexamdetails.getHsright()+"','"+hipexamdetails.getAchillesleft()+"','"+hipexamdetails.getAchillesright()+"','"+
	    	 		 hipexamdetails.getWalking()+"','"+hipexamdetails.getStanding()+"','"+hipexamdetails.getStairs()+"','"+hipexamdetails.getOther()+"','"+hipexamdetails.getOtherdefict()+"','"+hipexamdetails.getComments()+"','"+hipexamdetails.getPatientstatus()+"','"+hipexamdetails.getDiagnosis1()+"','"+hipexamdetails.getDiagnosis2()+"','"+hipexamdetails.getDiagnosis3()+"','"+hipexamdetails.getDiagnosis4()+"','"+hipexamdetails.getDiagnosis5()+"','"+hipexamdetails.getTimes()+"','"+hipexamdetails.getWeeks()+"','"+hipexamdetails.getSpinaldecompression()+"','"+hipexamdetails.getChiropractic()+"','"+hipexamdetails.getPhysicaltherapy()+"','"+
	    	 		 hipexamdetails.getBracing()+"','"+hipexamdetails.getModalities()+"','"+hipexamdetails.getSupplementation()+"','"+hipexamdetails.getHep()+"','"+hipexamdetails.getRadiographic()+"','"+hipexamdetails.getMri()+"','"+hipexamdetails.getScan()+"','"+hipexamdetails.getConduction()+"','"+hipexamdetails.getEmg()+"','"+hipexamdetails.getOutsidereferral()+"','"+hipexamdetails.getDc()+"','"+hipexamdetails.getSignature()+"')";
	    
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
	
	public int updatehipexam(HipExam hipexamdetails,String hipexamno)
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
	    	 String cmd="update hipexam set pname='"+hipexamdetails.getPname()
	    +"',date='"+hipexamdetails.getDate()
	    +"',gait='"+hipexamdetails.getGait()
	    +"',pelvic='"+ hipexamdetails.getPelvic()
	    +"',ao='"+hipexamdetails.getAo()
	    +"',dysfunction='"+hipexamdetails.getDysfunction()
	    +"',shortlegleft='"+hipexamdetails.getShortlegleft()
	    +"',shortlegleftvalue='"+hipexamdetails.getShortlegleftvalue()
	    +"',shortlegleftother='"+hipexamdetails.getShortlegleftother()
	    +"',shortlegright='"+hipexamdetails.getShortlegright()
	    +"',shortlegrightvalue='"+hipexamdetails.getShortlegrightvalue()
	    +"',shortlegrightother='"+hipexamdetails.getShortlegrightother()
	    +"',piriformisleft='"+hipexamdetails.getPiriformisleft()
	    +"',gluteusleft='"+hipexamdetails.getGluteusleft()
	    +"',iliopsoasleft='" +hipexamdetails.getIliopsoasleft()
	    +"',hamstringsleft='"+hipexamdetails.getHamstringsleft()
	    +"',note='" +hipexamdetails.getNote()
	    +"',functional='"+hipexamdetails.getFunctional()
	    +"',orthotpedic='"+hipexamdetails.getOrthotpedic()
	    +"',flexionleft='"+hipexamdetails.getFlexionleft()
	    +"',flexionright='"+hipexamdetails.getFlexionright()
	    +"',extensionleft='" +hipexamdetails.getExtensionleft()
	    +"',extensionright='"+hipexamdetails.getExtensionright()
	    +"',abductionleft='" +hipexamdetails.getAbductionleft()
	    +"',abductionright='"+hipexamdetails.getAbductionright()
	    +"',adductionleft='"+hipexamdetails.getAdductionleft()
	    +"',adductionright='"+hipexamdetails.getAdductionright()
	    +"',internalrotationleft='"+hipexamdetails.getInternalrotationleft()
	    +"',internalrotationright='"+hipexamdetails.getInternalrotationright()
	    +"',externalrotationleft='"+hipexamdetails.getExternalrotationleft()
	    +"',externalrotationright='"+hipexamdetails.getExternalrotationright()
	    +"',fabereleft='"+hipexamdetails.getFabereleft()
	    +"',fabereright='"+hipexamdetails.getFabereright()
	    +"',nachlasleft='"+ hipexamdetails.getNachlasleft()
	    +"',nachlasright='"+hipexamdetails.getNachlasright()
	    +"',elysleft='"+hipexamdetails.getElysleft()
	    +"',elysright='"+hipexamdetails.getElysright()
	    +"',yeomansleft='"+hipexamdetails.getYeomansleft()
	    +"',yeomansright='"+hipexamdetails.getYeomansright()
	    +"',obersleft='"+hipexamdetails.getObersleft()
	    +"',obersright='"+hipexamdetails.getObersright()
	    +"',thomasleft='"+hipexamdetails.getThomasleft()
	    +"',thomasright='"+hipexamdetails.getThomasright()
	    +"',neurological='"+hipexamdetails.getNeurological()
	    +"',inguinalarealeft='"+hipexamdetails.getInguinalarealeft()
	    +"',inguinalarearight='"+hipexamdetails.getInguinalarearight()
	    +"',antleft='"+hipexamdetails.getAntleft()
	    +"',antright='"+hipexamdetails.getAntright()
	    +"',kneeleft='"+hipexamdetails.getKneeleft()
	    +"',kneeright='"+hipexamdetails.getKneeright()
	    +"',medialleft='"+hipexamdetails.getMedialleft()
	    +"',medialright='"+hipexamdetails.getMedialright()
	    +"',latleft='"+hipexamdetails.getLatleft()
	    +"',latright='"+hipexamdetails.getLatright()
	    +"',plantarleft='"+hipexamdetails.getPlantarleft()
	    +"',plantarright='"+hipexamdetails.getPlantarright()
	    +"',iliopsoasfirstleft='"+hipexamdetails.getIliopsoasfirstleft()
	    +"',iliopsoasfirstright='"+hipexamdetails.getIliopsoasfirstright()
	    +"',iliopsoas1left='"+hipexamdetails.getIliopsoas1left()
	    +"',iliopsoas1right='"+hipexamdetails.getIliopsoas1right()
	    +"',iliopsoas2left='"+hipexamdetails.getIliopsoas2left()
	    +"',iliopsoas2right='"+hipexamdetails.getIliopsoas2right()
	    +"',femleft='"+hipexamdetails.getFemleft()
	    +"',femright='"+hipexamdetails.getFemright()
	    +"',medleft='"+hipexamdetails.getMedleft()
	    +"',medright='"+hipexamdetails.getMedright()
	    +"',maxleft='"+hipexamdetails.getMaxleft()
	    +"',maxright='"+hipexamdetails.getMaxright()
	    +"',patellarleft='"+hipexamdetails.getPatellarleft()
	    +"',patellarright='"+hipexamdetails.getPatellarright()
	    +"',hsleft='"+hipexamdetails.getHsleft()
	    +"',hsright='"+hipexamdetails.getHsright()
	    +"',achillesleft='"+hipexamdetails.getAchillesleft()
	    +"',achillesright='"+hipexamdetails.getAchillesright()
	    +"',walking='"+ hipexamdetails.getWalking()
	    +"',standing='"+hipexamdetails.getStanding()
	    +"',stairs='"+hipexamdetails.getStairs()
	    +"',other='"+hipexamdetails.getOther()
	    +"',otherdefict='"+hipexamdetails.getOtherdefict()
	    +"',comments='"+hipexamdetails.getComments()
	    +"',patientstatus='"+hipexamdetails.getPatientstatus()
	    +"',diagnosis1='"+hipexamdetails.getDiagnosis1()
	    +"',diagnosis2='"+hipexamdetails.getDiagnosis2()
	    +"',diagnosis3='"+hipexamdetails.getDiagnosis3()
	    +"',diagnosis4='"+hipexamdetails.getDiagnosis4()
	    +"',diagnosis5='"+hipexamdetails.getDiagnosis5()
	    +"',times='"+hipexamdetails.getTimes()
	    +"',weeks='"+hipexamdetails.getWeeks()
	    +"',spinaldecompression='"+hipexamdetails.getSpinaldecompression()
	    +"',chiropractic='"+hipexamdetails.getChiropractic()
	    +"',physicaltherapy='"+hipexamdetails.getPhysicaltherapy()
	    +"',bracing='"+ hipexamdetails.getBracing()
	    +"',modalities='"+hipexamdetails.getModalities()
	    +"',supplementation='"+hipexamdetails.getSupplementation()
	    +"',hep='"+hipexamdetails.getHep()
	    +"',radiographic='"+hipexamdetails.getRadiographic()
	    +"',mri='"+hipexamdetails.getMri()
	    +"',scan='"+hipexamdetails.getScan()
	    +"',conduction='"+hipexamdetails.getConduction()
	    +"',emg='"+hipexamdetails.getEmg()
	    +"',outsidereferral='"+hipexamdetails.getOutsidereferral()
	    +"',dc='"+hipexamdetails.getDc()
	    +"',signature='"+hipexamdetails.getSignature()+"' where hipexamno='"+hipexamno+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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
	
	public List<HipExam> gethipexamallDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<HipExam> hipexam = new ArrayList<HipExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from hipexam");
			while(resultSet.next()){
				hipexam.add(new HipExam(resultSet.getString("hipexamno"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("gait"),resultSet.getString("pelvic"),resultSet.getString("ao"),resultSet.getString("dysfunction"),resultSet.getString("shortlegleft"),resultSet.getString("shortlegleftvalue"),resultSet.getString("shortlegleftother"),resultSet.getString("shortlegright"),resultSet.getString("shortlegrightvalue"),resultSet.getString("shortlegrightother"),resultSet.getString("piriformisleft"),resultSet.getString("gluteusleft"),resultSet.getString("iliopsoasleft"),resultSet.getString("hamstringsleft"),resultSet.getString("note"),resultSet.getString("functional"),resultSet.getString("orthotpedic"),resultSet.getString("flexionleft"),resultSet.getString("flexionright"),resultSet.getString("extensionleft"),resultSet.getString("extensionright"),resultSet.getString("abductionleft"),resultSet.getString("abductionright"),resultSet.getString("adductionleft"),resultSet.getString("adductionright"),resultSet.getString("internalrotationleft"),resultSet.getString("internalrotationright"),resultSet.getString("externalrotationleft"),resultSet.getString("externalrotationright"),resultSet.getString("fabereleft"),resultSet.getString("fabereright"),
						resultSet.getString("nachlasleft"),
						resultSet.getString("nachlasright"),
						resultSet.getString("elysleft"),
						resultSet.getString("elysright"),
						resultSet.getString("yeomansleft"),
						resultSet.getString("yeomansright"),
						resultSet.getString("obersleft"),
						resultSet.getString("obersright"),
						resultSet.getString("hibbsleft"),
						resultSet.getString("hibbsright"),
						resultSet.getString("thomasleft"),
						resultSet.getString("thomasright"),resultSet.getString("neurological")
						,resultSet.getString("inguinalarealeft"),
						resultSet.getString("inguinalarearight"),
						resultSet.getString("antleft"),
						resultSet.getString("antright"),resultSet.getString("kneeleft"),
						resultSet.getString("kneeright"),resultSet.getString("medialleft"),resultSet.getString("medialright"),
			    	resultSet.getString("latleft"),resultSet.getString("latright"),resultSet.getString("plantarleft"),resultSet.getString("plantarright"),resultSet.getString("iliopsoasfirstleft"),resultSet.getString("iliopsoasfirstright"),resultSet.getString("iliopsoas1left"),resultSet.getString("iliopsoas1right"),resultSet.getString("iliopsoas2left"),resultSet.getString("iliopsoas2right"),resultSet.getString("femleft"),resultSet.getString("femright"),resultSet.getString("medleft"),resultSet.getString("medright"),resultSet.getString("maxleft"),resultSet.getString("maxright"),resultSet.getString("patellarleft"),resultSet.getString("patellarright"),resultSet.getString("hsleft"),resultSet.getString("hsright"),
			    	resultSet.getString("achillesleft"),resultSet.getString("achillesright"),resultSet.getString("walking"),resultSet.getString("standing"),resultSet.getString("stairs"),resultSet.getString("other"),resultSet.getString("otherdefict"),resultSet.getString("comments"),resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("times"),resultSet.getString("weeks"),resultSet.getString("spinaldecompression"),resultSet.getString("chiropractic"),resultSet.getString("physicaltherapy"),resultSet.getString("bracing"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("scan"),resultSet.getString("conduction"),resultSet.getString("emg") ,resultSet.getString("outsidereferral"),resultSet.getString("dc"),resultSet.getString("signature")));
			    	    
			System.out.println("patientname"+hipexam.get(0).getPname());    	
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
	    return hipexam;
		
	}
	public int deletehipexamdetails(String hipexamno)
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
			statement.executeUpdate("delete from hipexam where hipexamno='"+hipexamno+"'");
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
	
	public List<HipExam> gethipexamDetails(String hipexamno){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<HipExam> hipexam = new ArrayList<HipExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from hipexam where hipexamno='"+hipexamno+"'");
			while(resultSet.next()){
				hipexam.add(new HipExam(resultSet.getString("hipexamno"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("gait"),resultSet.getString("pelvic"),resultSet.getString("ao"),resultSet.getString("dysfunction"),resultSet.getString("shortlegleft"),resultSet.getString("shortlegleftvalue"),resultSet.getString("shortlegleftother"),resultSet.getString("shortlegright"),resultSet.getString("shortlegrightvalue"),resultSet.getString("shortlegrightother"),resultSet.getString("piriformisleft"),resultSet.getString("gluteusleft"),resultSet.getString("iliopsoasleft"),resultSet.getString("hamstringsleft"),resultSet.getString("note"),resultSet.getString("functional"),resultSet.getString("orthotpedic"),resultSet.getString("flexionleft"),resultSet.getString("flexionright"),resultSet.getString("extensionleft"),resultSet.getString("extensionright"),resultSet.getString("abductionleft"),resultSet.getString("abductionright"),resultSet.getString("adductionleft"),resultSet.getString("adductionright"),resultSet.getString("internalrotationleft"),resultSet.getString("internalrotationright"),resultSet.getString("externalrotationleft"),resultSet.getString("externalrotationright"),resultSet.getString("fabereleft"),resultSet.getString("fabereright"),
						resultSet.getString("nachlasleft"),
						resultSet.getString("nachlasright"),
						resultSet.getString("elysleft"),
						resultSet.getString("elysright"),
						resultSet.getString("yeomansleft"),
						resultSet.getString("yeomansright"),
						resultSet.getString("obersleft"),
						resultSet.getString("obersright"),
						resultSet.getString("hibbsleft"),
						resultSet.getString("hibbsright"),
						resultSet.getString("thomasleft"),
						resultSet.getString("thomasright"),resultSet.getString("neurological")
						,resultSet.getString("inguinalarealeft"),
						resultSet.getString("inguinalarearight"),
						resultSet.getString("antleft"),
						resultSet.getString("antright"),resultSet.getString("kneeleft"),
						resultSet.getString("kneeright"),resultSet.getString("medialleft"),resultSet.getString("medialright"),
			    	resultSet.getString("latleft"),resultSet.getString("latright"),resultSet.getString("plantarleft"),resultSet.getString("plantarright"),resultSet.getString("iliopsoasfirstleft"),resultSet.getString("iliopsoasfirstright"),resultSet.getString("iliopsoas1left"),resultSet.getString("iliopsoas1right"),resultSet.getString("iliopsoas2left"),resultSet.getString("iliopsoas2right"),resultSet.getString("femleft"),resultSet.getString("femright"),resultSet.getString("medleft"),resultSet.getString("medright"),resultSet.getString("maxleft"),resultSet.getString("maxright"),resultSet.getString("patellarleft"),resultSet.getString("patellarright"),resultSet.getString("hsleft"),resultSet.getString("hsright"),
			    	resultSet.getString("achillesleft"),resultSet.getString("achillesright"),resultSet.getString("walking"),resultSet.getString("standing"),resultSet.getString("stairs"),resultSet.getString("other"),resultSet.getString("otherdefict"),resultSet.getString("comments"),resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("times"),resultSet.getString("weeks"),resultSet.getString("spinaldecompression"),resultSet.getString("chiropractic"),resultSet.getString("physicaltherapy"),resultSet.getString("bracing"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("scan"),resultSet.getString("conduction"),resultSet.getString("emg") ,resultSet.getString("outsidereferral"),resultSet.getString("dc"),resultSet.getString("signature")));
			    	    
			System.out.println("patientname"+hipexam.get(0).getPname());    	
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
	    return hipexam;
		
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