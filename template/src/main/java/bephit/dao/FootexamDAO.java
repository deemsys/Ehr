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

public class FootexamDAO
{
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int setfootexam(FootExam footexamdetails)
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
	    	 String cmd="INSERT INTO footexam(pname,date,gait,muscle,swelling,ao,pronation,supination,calcaneus,valgus,forefoot,forefootvalgus,dysfunction,note,functional,orthotpedic,plantarflexionleft,plantarflexionright,dorsiflexionleft,dorsiflexionright,inversionleft,inversionright,eversionleft,eversionright,greattoeextensionleft,greattoeextensionright,greattoeflexionleft,greattoeflexionright,tinelstapleft,tinelstapright,achillestapleft,achillestapright,longleft,longright,thompsonsleft,thompsonsright,drawerleft,drawerright,lateralleft,lateralright,medialstabilityleft,medialstabilityright,neurological,inguinalarealeft,inguinalarearight,antleft,antright,kneeleft,kneeright,medialleft,medialright,latleft,latright,plantarleft,plantarright,iliopsoasfirstleft,iliopsoasfirstright,iliopsoas1left,iliopsoas1right,kneeextensionleft,kneeextensionright,kneeflexionleft,kneeflexionright,dorsiflexionleft1,dorsiflexionright1,pfleft,pfright,patellarleft,patellarright,hsleft,hsright,achillesleft,achillesright,walking,standing,stairs,other,otherdefict,comments,patientstatus,diagnosis1,diagnosis2,diagnosis3,diagnosis4,diagnosis5,times,weeks,spinaldecompression,chiropractic,physicaltherapy,bracing,modalities,supplementation,hep,radiographic,mri,scan,conduction,emg,outsidereferral,dc,others,othervalue,signature)values('"
	    	 		 +footexamdetails.getPname()+
	    	 		 "','"+footexamdetails.getDate()
	    	 		 +"','"+footexamdetails.getGait()	    	 		
	    	 		 +"','"+footexamdetails.getMuscle()
	    	 		 +"','"+footexamdetails.getSwelling()
	    	 		 +"','"+footexamdetails.getAo()
	    	 		 +"','"+footexamdetails.getPronation()
	    	 		 +"','"+footexamdetails.getSupination()
	    	 		 +"','"+footexamdetails.getCalcaneus()
	    	 		 +"','"+footexamdetails.getValgus()
	    	 		 +"','"+footexamdetails.getForefoot()
	    	 		 +"','"+footexamdetails.getForefootvalgus()
	    	 		 +"','"+footexamdetails.getDysfunction()
	    	 		 +"','"+footexamdetails.getNote()	    	 		
	    	 		 +"','"+footexamdetails.getFunctional()
	    	 		 +"','"+footexamdetails.getOrthotpedic()
	    	 		 +"','"+footexamdetails.getPlantarflexionleft()
	    	 		 +"','"+footexamdetails.getPlantarflexionright()
	    	 		 +"','"+footexamdetails.getDorsiflexionleft()
	    	 		 +"','"+footexamdetails.getDorsiflexionright()
	    	 		 +"','"+footexamdetails.getInversionleft()
	    	 		 +"','"+footexamdetails.getInversionright()
	    	 		 +"','"+footexamdetails.getEversionleft()
	    	 		 +"','"+footexamdetails.getEversionright()
	    	 		 +"','"+footexamdetails.getGreattoeextensionleft()
	    	 		 +"','"+footexamdetails.getGreattoeextensionright()
	    	 		 +"','"+footexamdetails.getGreattoeflexionleft()
	    	 		 +"','"+footexamdetails.getGreattoeflexionright()
	    	 		 +"','"+footexamdetails.getTinelstapleft()
	    	 		 +"','"+footexamdetails.getTinelstapright()
	    	 		 +"','"+footexamdetails.getAchillestapleft()
	    	 		 +"','"+footexamdetails.getAchillestapright()
	    	 		 +"','"+footexamdetails.getLongleft()
	    	 		 +"','"+footexamdetails.getLongright()
	    	 		 +"','"+footexamdetails.getThompsonsleft()
	    	 		 +"','"+footexamdetails.getThompsonsright()
	    	 		 +"','"+footexamdetails.getDrawerleft()
	    	 		 +"','"+footexamdetails.getDrawerright()
	    	 		 +"','"+footexamdetails.getLateralleft()
	    	 		 +"','"+footexamdetails.getLateralright()
	    	 		 +"','"+footexamdetails.getMedialstabilityleft()
	    	 		 +"','"+footexamdetails.getMedialstabilityright()
	    	 		 +"','"+footexamdetails.getNeurological()
	    	 		 +"','"+footexamdetails.getInguinalarealeft()
	    	 		 +"','"+footexamdetails.getInguinalarearight()
	    	 		 +"','"+footexamdetails.getAntleft()
	    	 		 +"','"+footexamdetails.getAntright()
	    	 		 +"','"+footexamdetails.getKneeleft()
	    	 		 +"','"+footexamdetails.getKneeright()
	    	 		 +"','"+footexamdetails.getMedialleft()
	    	 		 +"','"+footexamdetails.getMedialright()
	    	 		 +"','"+footexamdetails.getLatleft()
	    	 		 +"','"+footexamdetails.getLatright()
	    	 		 +"','"+footexamdetails.getPlantarleft()
	    	 		 +"','"+footexamdetails.getPlantarright()
	    	 		 +"','"+footexamdetails.getIliopsoasfirstleft()
	    	 		 +"','"+footexamdetails.getIliopsoasfirstright()
	    	 		 +"','"+footexamdetails.getIliopsoas1left()
	    	 		 +"','"+footexamdetails.getIliopsoas1right()
	    	 		 +"','"+footexamdetails.getKneeextensionleft()
	    	 		 +"','"+footexamdetails.getKneeextensionright()
	    	 		 +"','"+footexamdetails.getKneeflexionleft()
	    	 		 +"','"+footexamdetails.getKneeflexionright()
	    	 		 +"','"+footexamdetails.getDorsiflexionleft1()
	    	 		 +"','"+footexamdetails.getDorsiflexionright1()
	    	 		 +"','"+footexamdetails.getPfleft()
	    	 		 +"','"+footexamdetails.getPfright()	    	 		
	    	 		+"','"+footexamdetails.getPatellarleft()
	    	 		+"','"+footexamdetails.getPatellarright()
	    	 		+"','"+footexamdetails.getHsleft()
	    	 		+"','"+footexamdetails.getHsright()
	    	 		+"','"+footexamdetails.getAchillesleft()
	    	 		+"','"+footexamdetails.getAchillesright()
	    	 		+"','"+footexamdetails.getWalking()
	    	 		+"','"+footexamdetails.getStanding()
	    	 		+"','"+footexamdetails.getStairs()
	    	 		+"','"+footexamdetails.getOther()
	    	 		+"','"+footexamdetails.getOtherdefict()
	    	 		+"','"+footexamdetails.getComments()
	    	 		+"','"+footexamdetails.getPatientstatus()
	    	 		+"','"+footexamdetails.getDiagnosis1()
	    	 		+"','"+footexamdetails.getDiagnosis2()
	    	 		+"','"+footexamdetails.getDiagnosis3()
	    	 		+"','"+footexamdetails.getDiagnosis4()
	    	 		+"','"+footexamdetails.getDiagnosis5()
	    	 		+"','"+footexamdetails.getTimes()
	    	 		+"','"+footexamdetails.getWeeks()
	    	 		+"','"+footexamdetails.getSpinaldecompression()
	    	 		+"','"+footexamdetails.getChiropractic()
	    	 		+"','"+footexamdetails.getPhysicaltherapy()
	    	 		+"','"+footexamdetails.getBracing()
	    	 		+"','"+footexamdetails.getModalities()
	    	 		+"','"+footexamdetails.getSupplementation()
	    	 		+"','"+footexamdetails.getHep()
	    	 		+"','"+footexamdetails.getRadiographic()
	    	 		+"','"+footexamdetails.getMri()
	    	 		+"','"+footexamdetails.getScan()
	    	 		+"','"+footexamdetails.getConduction()
	    	 		+"','"+footexamdetails.getEmg()
	    	 		+"','"+footexamdetails.getOutsidereferral()
	    	 		+"','"+footexamdetails.getDc()
	    	 	    +"','"+footexamdetails.getOthers()
	    	 	    +"','"+footexamdetails.getOthervalue()
	    	 		+"','"+footexamdetails.getSignature()+"')";
	    
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
	public int deletehipexamdetails(String footexamno)
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
			statement.executeUpdate("delete from footexam where footexamno='"+footexamno+"'");
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
	public int updatefootexam(FootExam footexamdetails,String footexamno)
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
	    	 String cmd="update footexam set pname='"+footexamdetails.getPname()
	    +"',date='"+footexamdetails.getDate()
	    +"',gait='"+footexamdetails.getGait()
	    +"',muscle='"+ footexamdetails.getMuscle()
	    +"',swelling='"+ footexamdetails.getSwelling()		    
	    +"',ao='"+footexamdetails.getAo()
	    +"',pronation='"+footexamdetails.getPronation()
	    +"',supination='"+footexamdetails.getSupination()
	    +"',calcaneus='"+footexamdetails.getCalcaneus()
	    +"',valgus='"+footexamdetails.getValgus()
	    +"',forefoot='"+footexamdetails.getForefoot()
	    +"',forefootvalgus='"+footexamdetails.getForefootvalgus()
	    +"',dysfunction='"+footexamdetails.getDysfunction()	    
	    +"',note='" +footexamdetails.getNote()
	    +"',functional='"+footexamdetails.getFunctional()
	    +"',orthotpedic='"+footexamdetails.getOrthotpedic()
	    +"',plantarflexionleft='"+footexamdetails.getPlantarflexionleft()
	    +"',plantarflexionright='"+footexamdetails.getPlantarflexionright()
	    +"',dorsiflexionleft='" +footexamdetails.getDorsiflexionleft()
	    +"',dorsiflexionright='"+footexamdetails.getDorsiflexionright()
	    +"',inversionleft='" +footexamdetails.getInversionleft()
	    +"',inversionright='"+footexamdetails.getInversionright()
	    +"',eversionleft='"+footexamdetails.getEversionleft()
	    +"',eversionright='"+footexamdetails.getEversionright()
	    +"',greattoeextensionleft='"+footexamdetails.getGreattoeextensionleft()
	    +"',greattoeextensionright='"+footexamdetails.getGreattoeextensionright()
	    +"',greattoeflexionleft='"+footexamdetails.getGreattoeflexionleft()
	    +"',greattoeflexionright='"+footexamdetails.getGreattoeflexionright()
	    +"',tinelstapleft='"+footexamdetails.getTinelstapleft()
	    +"',tinelstapright='"+footexamdetails.getTinelstapright()
	    +"',achillestapleft='"+ footexamdetails.getAchillestapleft()
	    +"',achillestapright='"+footexamdetails.getAchillestapright()
	    +"',longleft='"+footexamdetails.getLongleft()
	    +"',longright='"+footexamdetails.getLongright()
	    +"',thompsonsleft='"+footexamdetails.getThompsonsleft()
	    +"',thompsonsright='"+footexamdetails.getThompsonsright()
	    +"',drawerleft='"+footexamdetails.getDrawerleft()
	    +"',drawerright='"+footexamdetails.getDrawerright()
	    +"',lateralleft='"+footexamdetails.getLateralleft()
	    +"',lateralright='"+footexamdetails.getLateralright()
	    +"',medialstabilityleft='"+footexamdetails.getMedialstabilityleft()
	    +"',medialstabilityright='"+footexamdetails.getMedialstabilityright()
	    +"',neurological='"+footexamdetails.getNeurological()
	    +"',inguinalarealeft='"+footexamdetails.getInguinalarealeft()
	    +"',inguinalarearight='"+footexamdetails.getInguinalarearight()
	    +"',antleft='"+footexamdetails.getAntleft()
	    +"',antright='"+footexamdetails.getAntright()
	    +"',kneeleft='"+footexamdetails.getKneeleft()
	    +"',kneeright='"+footexamdetails.getKneeright()
	    +"',medialleft='"+footexamdetails.getMedialleft()
	    +"',medialright='"+footexamdetails.getMedialright()
	    +"',latleft='"+footexamdetails.getLatleft()
	    +"',latright='"+footexamdetails.getLatright()
	    +"',plantarleft='"+footexamdetails.getPlantarleft()
	    +"',plantarright='"+footexamdetails.getPlantarright()
	    +"',iliopsoasfirstleft='"+footexamdetails.getIliopsoasfirstleft()
	    +"',iliopsoasfirstright='"+footexamdetails.getIliopsoasfirstright()
	    +"',iliopsoas1left='"+footexamdetails.getIliopsoas1left()
	    +"',iliopsoas1right='"+footexamdetails.getIliopsoas1right()
	    +"',kneeextensionleft='"+footexamdetails.getKneeextensionleft()
	    +"',kneeextensionright='"+footexamdetails.getKneeextensionright()
	    +"',kneeflexionleft='"+footexamdetails.getKneeflexionleft()
	    +"',kneeflexionright='"+footexamdetails.getKneeflexionright()
	    +"',dorsiflexionleft1='"+footexamdetails.getDorsiflexionleft1()
	    +"',dorsiflexionright1='"+footexamdetails.getDorsiflexionright1()
	    +"',pfleft='"+footexamdetails.getPfleft()
	    +"',pfright='"+footexamdetails.getPfright()
	    +"',patellarleft='"+footexamdetails.getPatellarleft()
	    +"',patellarright='"+footexamdetails.getPatellarright()
	    +"',hsleft='"+footexamdetails.getHsleft()
	    +"',hsright='"+footexamdetails.getHsright()
	    +"',achillesleft='"+footexamdetails.getAchillesleft()
	    +"',achillesright='"+footexamdetails.getAchillesright()
	    +"',walking='"+ footexamdetails.getWalking()
	    +"',standing='"+footexamdetails.getStanding()
	    +"',stairs='"+footexamdetails.getStairs()
	    +"',other='"+footexamdetails.getOther()
	    +"',otherdefict='"+footexamdetails.getOtherdefict()
	    +"',comments='"+footexamdetails.getComments()
	    +"',patientstatus='"+footexamdetails.getPatientstatus()
	    +"',diagnosis1='"+footexamdetails.getDiagnosis1()
	    +"',diagnosis2='"+footexamdetails.getDiagnosis2()
	    +"',diagnosis3='"+footexamdetails.getDiagnosis3()
	    +"',diagnosis4='"+footexamdetails.getDiagnosis4()
	    +"',diagnosis5='"+footexamdetails.getDiagnosis5()
	    +"',times='"+footexamdetails.getTimes()
	    +"',weeks='"+footexamdetails.getWeeks()
	    +"',spinaldecompression='"+footexamdetails.getSpinaldecompression()
	    +"',chiropractic='"+footexamdetails.getChiropractic()
	    +"',physicaltherapy='"+footexamdetails.getPhysicaltherapy()
	    +"',bracing='"+ footexamdetails.getBracing()
	    +"',modalities='"+footexamdetails.getModalities()
	    +"',supplementation='"+footexamdetails.getSupplementation()
	    +"',hep='"+footexamdetails.getHep()
	    +"',radiographic='"+footexamdetails.getRadiographic()
	    +"',mri='"+footexamdetails.getMri()
	    +"',scan='"+footexamdetails.getScan()
	    +"',conduction='"+footexamdetails.getConduction()
	    +"',emg='"+footexamdetails.getEmg()
	    +"',outsidereferral='"+footexamdetails.getOutsidereferral()
	    +"',dc='"+footexamdetails.getDc()
	    +"',others='"+footexamdetails.getOthers()
	    +"',othervalue='"+footexamdetails.getOthervalue()
	    +"',signature='"+footexamdetails.getSignature()+"' where footexamno='"+footexamno+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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
	
	
	public List<FootExam> getfootexamDetails(String footexamno){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<FootExam> footexam = new ArrayList<FootExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from footexam where footexamno='"+footexamno+"'");
			while(resultSet.next()){
				footexam.add(new FootExam(resultSet.getString("footexamno"),
						resultSet.getString("pname"),
						resultSet.getString("date"),
						resultSet.getString("gait"),
						resultSet.getString("muscle"),
						resultSet.getString("swelling"),
						resultSet.getString("ao"),
						resultSet.getString("pronation"),
						resultSet.getString("supination"),
						resultSet.getString("calcaneus"),
						resultSet.getString("valgus"),
						resultSet.getString("forefoot"),
						resultSet.getString("forefootvalgus"),
						resultSet.getString("dysfunction"),
						resultSet.getString("note"),
						resultSet.getString("functional"),
						resultSet.getString("orthotpedic"),
						resultSet.getString("plantarflexionleft"),
						resultSet.getString("plantarflexionright"),
						resultSet.getString("dorsiflexionleft"),
						resultSet.getString("dorsiflexionright"),
						resultSet.getString("inversionleft"),
						resultSet.getString("inversionright"),
						resultSet.getString("eversionleft"),
						resultSet.getString("eversionleft"),
						resultSet.getString("greattoeextensionleft"),
						resultSet.getString("greattoeextensionright"),
						resultSet.getString("greattoeflexionleft"),
						resultSet.getString("greattoeflexionright")
						,resultSet.getString("tinelstapleft"),
						resultSet.getString("tinelstapright"),
						resultSet.getString("achillestapleft"),
						resultSet.getString("achillestapright"),
						resultSet.getString("longleft"),
						resultSet.getString("longright"),
						resultSet.getString("thompsonsleft"),
						resultSet.getString("thompsonsright"),
						resultSet.getString("drawerleft"),
						resultSet.getString("drawerright"),
						resultSet.getString("lateralleft"),
						resultSet.getString("lateralright"),
						resultSet.getString("medialstabilityleft"),
						resultSet.getString("medialstabilityright"),resultSet.getString("neurological")
						,resultSet.getString("inguinalarealeft"),
						resultSet.getString("inguinalarearight"),
						resultSet.getString("antleft"),
						resultSet.getString("antright"),
						resultSet.getString("kneeleft"),
						resultSet.getString("kneeright"),
						resultSet.getString("medialleft"),
						resultSet.getString("medialright"),
			    	resultSet.getString("latleft"),
			    	resultSet.getString("latright"),
			    	resultSet.getString("plantarleft"),
			    	resultSet.getString("plantarright"),
			    	resultSet.getString("iliopsoasfirstleft"),
			    	resultSet.getString("iliopsoasfirstright"),
			    	resultSet.getString("iliopsoas1left"),
			    	resultSet.getString("iliopsoas1right"),
			    	resultSet.getString("kneeextensionleft"),
			    	resultSet.getString("kneeextensionright"),
			    	resultSet.getString("kneeflexionleft"),
			    	resultSet.getString("kneeflexionright"),
			    	resultSet.getString("dorsiflexionleft1"),
			    	resultSet.getString("dorsiflexionright1"),
			    	resultSet.getString("pfleft"),
			    	resultSet.getString("pfright"),
			    	resultSet.getString("patellarleft"),
			    	resultSet.getString("patellarright"),
			    	resultSet.getString("hsleft"),
			    	resultSet.getString("hsright"),
			    	resultSet.getString("achillesleft"),
			    	resultSet.getString("achillesright"),
			    	resultSet.getString("walking"),
			    	resultSet.getString("standing"),
			    	resultSet.getString("stairs"),
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
			    	resultSet.getString("outsidereferral"),
			    	resultSet.getString("dc"),
			    	resultSet.getString("others"),
			    	resultSet.getString("othervalue"),
			    	resultSet.getString("signature")));
			    	    
			System.out.println("patientname"+footexam.get(0).getPname());    	
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
	    return footexam;
		
	}

	public List<FootExam> getfootexamDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<FootExam> footexam = new ArrayList<FootExam>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from footexam");
			while(resultSet.next()){
				footexam.add(new FootExam(resultSet.getString("footexamno"),
						resultSet.getString("pname"),
						resultSet.getString("date"),
						resultSet.getString("gait"),
						resultSet.getString("muscle"),
						resultSet.getString("swelling"),
						resultSet.getString("ao"),
						resultSet.getString("pronation"),
						resultSet.getString("supination"),
						resultSet.getString("calcaneus"),
						resultSet.getString("valgus"),
						resultSet.getString("forefoot"),
						resultSet.getString("forefootvalgus"),
						resultSet.getString("dysfunction"),
						resultSet.getString("note"),
						resultSet.getString("functional"),
						resultSet.getString("orthotpedic"),
						resultSet.getString("plantarflexionleft"),
						resultSet.getString("plantarflexionright"),
						resultSet.getString("dorsiflexionleft"),
						resultSet.getString("dorsiflexionright"),
						resultSet.getString("inversionleft"),
						resultSet.getString("inversionright"),
						resultSet.getString("eversionleft"),
						resultSet.getString("eversionleft"),
						resultSet.getString("greattoeextensionleft"),
						resultSet.getString("greattoeextensionright"),
						resultSet.getString("greattoeflexionleft"),
						resultSet.getString("greattoeflexionright")
						,resultSet.getString("tinelstapleft"),
						resultSet.getString("tinelstapright"),
						resultSet.getString("achillestapleft"),
						resultSet.getString("achillestapright"),
						resultSet.getString("longleft"),
						resultSet.getString("longright"),
						resultSet.getString("thompsonsleft"),
						resultSet.getString("thompsonsright"),
						resultSet.getString("drawerleft"),
						resultSet.getString("drawerright"),
						resultSet.getString("lateralleft"),
						resultSet.getString("lateralright"),
						resultSet.getString("medialstabilityleft"),
						resultSet.getString("medialstabilityright"),resultSet.getString("neurological")
						,resultSet.getString("inguinalarealeft"),
						resultSet.getString("inguinalarearight"),
						resultSet.getString("antleft"),
						resultSet.getString("antright"),
						resultSet.getString("kneeleft"),
						resultSet.getString("kneeright"),
						resultSet.getString("medialleft"),
						resultSet.getString("medialright"),
			    	resultSet.getString("latleft"),
			    	resultSet.getString("latright"),
			    	resultSet.getString("plantarleft"),
			    	resultSet.getString("plantarright"),
			    	resultSet.getString("iliopsoasfirstleft"),
			    	resultSet.getString("iliopsoasfirstright"),
			    	resultSet.getString("iliopsoas1left"),
			    	resultSet.getString("iliopsoas1right"),
			    	resultSet.getString("kneeextensionleft"),
			    	resultSet.getString("kneeextensionright"),
			    	resultSet.getString("kneeflexionleft"),
			    	resultSet.getString("kneeflexionright"),
			    	resultSet.getString("dorsiflexionleft1"),
			    	resultSet.getString("dorsiflexionright1"),
			    	resultSet.getString("pfleft"),
			    	resultSet.getString("pfright"),
			    	resultSet.getString("patellarleft"),
			    	resultSet.getString("patellarright"),
			    	resultSet.getString("hsleft"),
			    	resultSet.getString("hsright"),
			    	resultSet.getString("achillesleft"),
			    	resultSet.getString("achillesright"),
			    	resultSet.getString("walking"),
			    	resultSet.getString("standing"),
			    	resultSet.getString("stairs"),
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
			    	resultSet.getString("outsidereferral"),
			    	resultSet.getString("dc"),
			    	resultSet.getString("others"),
			    	resultSet.getString("othervalue"),
			    	resultSet.getString("signature")));
			    	    
			System.out.println("patientname"+footexam.get(0).getPname());    	
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
	    return footexam;
		
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