package bephit.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import bephit.model.*;

public class ManualtherapyDAO
{ 
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int updatemanualtherapy(Manualtherapy therapy,String therapyno)
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
	    	 String cmd="update manualtherapy set pid='"+therapy.getPid()	    		                 
	    		  	+"', date='"+therapy.getDate()
	    		  	+"', pname='"+therapy.getPname()
	    		  	+"', timein='"+therapy.getTimein()
	    		  	+"', timeout='"+therapy.getTimeout()
	    		  	+"', majorcomplaint='"+therapy.getMajorcomplaint()
	    		  	+"', standing='"+therapy.getStanding()
	    		  	+"', sitting='"+therapy.getSitting()
	    		  	+"', walking='"+therapy.getWalking()
	    		  	+"', sleeping='"+therapy.getSleeping()
	    		  	+"', lifting='"+therapy.getLifting()
	    		  	+"', bending='"+therapy.getBending()
	    		  	+"', headache='"+therapy.getHeadache()
	    		  	+"', neckpain='"+therapy.getNeckpain()
	    		  	+"', upperback='"+therapy.getUpperback()
	    		  	+"', midback='"+therapy.getMidback()
	    		  	+"', lowback='"+therapy.getLowback()
	    		  	+"', tmjpain='"+therapy.getTmjpain()
	    		  	+"', other='"+therapy.getOther()
	    		  	+"', shoulder='"+therapy.getShoulder()
	    		  	+"', elbow='"+therapy.getElbow()
	    		  	+"', wrist='"+therapy.getWrist()
	    		  	+"', ribs='"+therapy.getRibs()
	    		  	+"', hip='"+therapy.getHip()
	    		  	+"', leg='"+therapy.getLeg()
	    		  	+"', ankle='"+therapy.getAnkle()
	    		  	+"', armsweakness='"+therapy.getArmsweakness()	
	    		  	+"', handsweakness='"+therapy.getHandsweakness()
	    		  	+"', legsweakness='"+therapy.getLegsweakness()	
	    		  	+"', feetweakness='"+therapy.getFeetweakness()	
	    		  	+"', armspins='"+therapy.getArmspins()	
	    		  	+"', handspins='"+therapy.getHandspins()	
	    		  	+"', legspins='"+therapy.getLegspins()	
	    		  	+"', feetpins='"+therapy.getFeetpins()
	    		  	+"', armsnumbness='"+therapy.getArmsnumbness()	
	    		  	+"', handsnumbness='"+therapy.getHandsnumbness()	
	    		  	+"', legsnumbness='"+therapy.getLegsnumbness()
	    		  	+"', feetnumbness='"+therapy.getFeetnumbness()	
	    		  	+"', armscoldness='"+therapy.getArmscoldness()	
	    		  	+"', handscoldness='"+therapy.getHandscoldness()	
	    		  	+"', legscoldness='"+therapy.getLegscoldness()	
	    		  	+"', feetcoldness='"+therapy.getFeetcoldness()
	    		  	+"', painscale='"+therapy.getPainscale()
	    		  	+"', paraspinals='"+therapy.getParaspinals()	
	    		  	+"', scm='"+therapy.getScm()	
	    		  	+"', uppertraps='"+therapy.getUppertraps()	
	    		  	+"', suboccipitals='"+therapy.getSuboccipitals()	
	    		  	+"', scalenes='"+therapy.getScalenes()	
	    		  	+"', triceps='"+therapy.getTriceps()	
	    		  	+"', biceps='"+therapy.getBiceps()	
	    		  	+"', brachioradialis='"+therapy.getBrachioradialis()	
	    		  	+"', wristflex='"+therapy.getWristflex()	
	    		  	+"', hand='"+therapy.getHand()	
	    		  	+"', pectoralis='"+therapy.getPectoralis()	
	    		  	+"', trapezius='"+therapy.getTrapezius()	
	    		  	+"', supra='"+therapy.getSupra()	
	    		  	+"', subscapularis='"+therapy.getSubscapularis()	
	    		  	+"', dorsi='"+therapy.getDorsi()	
	    		  	+"', levator='"+therapy.getLevator()
	    		  	+"', rhomboids='"+therapy.getRhomboids()
	    		  	+"', supraspinatus='"+therapy.getSupraspinatus()
	    		  	+"', anterior='"+therapy.getAnterior()
	    		  	+"', paraspinalslum='"+therapy.getParaspinalslum()
	    		  	+"', iliopsoas='"+therapy.getIliopsoas()
	    		  	+"', maximus='"+therapy.getMaximus()
	    		  	+"', medius='"+therapy.getMedius()
	    		  	+"', piriformis='"+therapy.getPiriformis()
	    		  	+"', sartorius='"+therapy.getSartorius()
	    		  	+"', hamstrings='"+therapy.getHamstrings()
	    		  	+"', TFL='"+therapy.getTFL()
	    		  	+"', HIP1='"+therapy.getHIP1()
	    		  	+"', achilles='"+therapy.getAchilles()
	    		  	+"', tibialis='"+therapy.getTibialis()
	    		  	+"', QLS='"+therapy.getQLS()
	    		  	+"', ankles='"+therapy.getAnkles()
	    		  	+"', gracilis='"+therapy.getGracilis()
	    		  	+"', myofasical='"+therapy.getMyofasical()
	    		  	+"', manualtraction='"+therapy.getManualtraction()
	    		  	+"', triggerpoint='"+therapy.getTriggerpoint()
	    		  	+"', lymphaticdrainage='"+therapy.getLymphaticdrainage()
	    		  	+"', effleurage='"+therapy.getEffleurage()
	    		  	+"', taponnement='"+therapy.getTaponnement()
	    		  	+"', crossfrictionfiber='"+therapy.getCrossfrictionfiber()
	    		  	+"', PNF='"+therapy.getPNF()
	    		  	+"', neuromuscular='"+therapy.getNeuromuscular()
	    		  	+"', unit='"+therapy.getUnit()	    		  	
	    		  	+"', units='"+therapy.getUnits()		  	
	    		    +"', unitperform='"+therapy.getUnitperform()	    		  	
	    		  	+"', MT='"+therapy.getMT()
	    		  	+"', TE='"+therapy.getTE()
	    		  	+"', MA='"+therapy.getMA()
	    		  	+"', therapist='"+therapy.getTherapist()
	    		  	+"', therapistrecommend='"+therapy.getTherapistrecommend()
	    		  	+"', futurerecommend='"+therapy.getFuturerecommend()
	    		  	+"', session='"+therapy.getSession()
	    		  	+"', weeks='"+therapy.getWeeks()
	    		  	+"', signature='"+therapy.getSignature()
	    		  	+"', daily='"+therapy.getDaily()+"' where manualtherapyno='"+therapyno+"'";
	   
	        
	    
	    
	   
	    
		   	 		 
	    	 		 
	    	 		 
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
	
	public int inserttherapydetails(Manualtherapy therapy)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
			String d;
			d="insert into manualtherapy(pid,date,pname,timein,timeout,majorcomplaint,standing,sitting,walking,sleeping,lifting,bending,headache,neckpain,upperback,midback,lowback,tmjpain,other,shoulder,elbow,wrist,ribs,hip,leg,ankle,armsweakness,handsweakness,legsweakness,feetweakness,armspins,handspins,legspins,feetpins,armsnumbness,handsnumbness,legsnumbness,feetnumbness,armscoldness,handscoldness,legscoldness,feetcoldness,painscale,paraspinals,scm,uppertraps,suboccipitals,scalenes,triceps,biceps,brachioradialis,wristflex,hand,pectoralis,trapezius,supra,subscapularis,dorsi,levator,rhomboids,supraspinatus,anterior,paraspinalslum,iliopsoas,maximus,medius,piriformis,sartorius,hamstrings,TFL,HIP1,achilles,tibialis,QLS,ankles,gracilis,myofasical,manualtraction,triggerpoint,lymphaticdrainage,effleurage,taponnement,crossfrictionfiber,PNF,neuromuscular,unit,units,unitperform,MT,TE,MA,therapist,therapistrecommend,futurerecommend,session,weeks,signature,daily)values('"
					+therapy.getPid()
					+"','" +therapy.getDate()
					+"','"+therapy.getPname()
					+"','" +therapy.getTimein()
					+"','"+therapy.getTimeout()
					+"','"+therapy.getMajorcomplaint()
					+"','" +therapy.getStanding()
					+"','"+therapy.getSitting()
					+"','"+therapy.getWalking()
					+"','" +therapy.getSleeping()
					+"','"+therapy.getLifting()
					+"','"+therapy.getBending()
					+"','" +therapy.getHeadache()
					+"','"+therapy.getNeckpain()
					+"','"+therapy.getUpperback()
					+"','" +therapy.getMidback()
					+"','"+therapy.getLowback()
					+"','"+therapy.getTmjpain()
					+"','" +therapy.getOther()
					+"','"+therapy.getShoulder()
					+"','"+therapy.getElbow()
					+"','" +therapy.getWrist()
					+"','"+therapy.getRibs()
					+"','"+therapy.getHip()
					+"','" +therapy.getLeg()
					+"','"+therapy.getAnkle()
					+"','"+therapy.getArmsweakness()
					+"','" +therapy.getHandsweakness()
					+"','"+therapy.getLegsweakness()
					+"','"+therapy.getFeetweakness()
					+"','" +therapy.getArmspins()
					+"','"+therapy.getHandspins()
					+"','"+therapy.getLegspins()
					+"','" +therapy.getFeetpins()
					+"','"+therapy.getArmsnumbness()
					+"','"+therapy.getHandsnumbness()
					+"','" +therapy.getLegsnumbness()
					+"','"+therapy.getFeetnumbness()
					+"','"+therapy.getArmscoldness()
					+"','" +therapy.getHandscoldness()
					+"','"+therapy.getLegscoldness()
					+"','"+therapy.getFeetcoldness()
					+"','" +therapy.getPainscale()
					+"','"+therapy.getParaspinals()
					+"','"+therapy.getScm()
					+"','" +therapy.getUppertraps()
					+"','"+therapy.getSuboccipitals()
					+"','"+therapy.getScalenes()
					+"','" +therapy.getTriceps()
					+"','"+therapy.getBiceps()
					+"','"+therapy.getBrachioradialis()
					+"','" +therapy.getWristflex()
					+"','"+therapy.getHand()
					+"','"+therapy.getPectoralis()
					+"','" +therapy.getTrapezius()
					+"','"+therapy.getSupra()
					+"','"+therapy.getSubscapularis()
					+"','" +therapy.getDorsi()
					+"','"+therapy.getLevator()
					+"','"+therapy.getRhomboids()
					+"','" +therapy.getSupraspinatus()
					+"','"+therapy.getAnterior()
					+"','"+therapy.getParaspinalslum()
					+"','" +therapy.getIliopsoas()
					+"','"+therapy.getMaximus()
					+"','"+therapy.getMedius()
					+"','" +therapy.getPiriformis()
					+"','"+therapy.getSartorius()
					+"','"+therapy.getHamstrings()
					+"','" +therapy.getTFL()
					+"','"+therapy.getHIP1()
					+"','"+therapy.getAchilles()
					+"','" +therapy.getTibialis()
					+"','"+therapy.getQLS()
					+"','"+therapy.getAnkles()
					+"','" +therapy.getGracilis()
					+"','"+therapy.getMyofasical()	
					+"','"+therapy.getManualtraction()
					+"','"+therapy.getTriggerpoint()
					+"','"+therapy.getLymphaticdrainage()
					+"','"+therapy.getEffleurage()
					+"','"+therapy.getTaponnement()
					+"','"+therapy.getCrossfrictionfiber()
					+"','"+therapy.getPNF()
					+"','"+therapy.getNeuromuscular()
					+"','"+therapy.getUnit()					
					+"','"+therapy.getUnits()					
					+"','"+therapy.getUnitperform()					
					+"','"+therapy.getMT()
					+"','"+therapy.getTE()
					+"','"+therapy.getMA()
					+"','"+therapy.getTherapist()
					+"','"+therapy.getTherapistrecommend()
					+"','"+therapy.getFuturerecommend()
					+"','"+therapy.getSession()
					+"','"+therapy.getWeeks()
					+"','"+therapy.getSignature()
					+"','"+therapy.getDaily()				
					
					+"')";
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
	public List<Manualtherapy> getmanualtherapyDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Manualtherapy> manualtherapy = new ArrayList<Manualtherapy>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from manualtherapy");
			while(resultSet.next()){
				 manualtherapy.add(new Manualtherapy(resultSet.getString("manualtherapyno"),
						 resultSet.getString("pid"),
						 resultSet.getString("date"),
						 resultSet.getString("pname"),
						 resultSet.getString("timein"),
						 resultSet.getString("timeout"),
						 resultSet.getString("majorcomplaint"),
						 resultSet.getString("standing"),
						 resultSet.getString("sitting"),
						 resultSet.getString("walking"),
						 resultSet.getString("sleeping"),
						 resultSet.getString("lifting"),
						 resultSet.getString("bending"),
						 resultSet.getString("headache"),
						 resultSet.getString("neckpain"),
						 resultSet.getString("upperback"),
						 resultSet.getString("midback"),
						 resultSet.getString("lowback"),
						 resultSet.getString("tmjpain"),
						 resultSet.getString("other"),
						 resultSet.getString("shoulder"),
						 resultSet.getString("elbow"),
						 resultSet.getString("wrist"),
						 resultSet.getString("ribs"),
						 resultSet.getString("hip"),
						 resultSet.getString("leg"),
						 resultSet.getString("ankle"),
						 resultSet.getString("armsweakness"),	
						 resultSet.getString("handsweakness"),	
						 resultSet.getString("legsweakness"),	
						 resultSet.getString("feetweakness"),	
						 resultSet.getString("armspins"),	
						 resultSet.getString("handspins"),	
						 resultSet.getString("legspins"),	
						 resultSet.getString("feetpins"),
						 resultSet.getString("armsnumbness"),	
						 resultSet.getString("handsnumbness"),	
						 resultSet.getString("legsnumbness"),
						 resultSet.getString("feetnumbness"),	
						 resultSet.getString("armscoldness"),	
						 resultSet.getString("handscoldness"),	
						 resultSet.getString("legscoldness"),	
						 resultSet.getString("feetcoldness"),
						 resultSet.getString("painscale"),
						 resultSet.getString("paraspinals"),	
						 resultSet.getString("scm"),	
						 resultSet.getString("uppertraps"),	
						 resultSet.getString("suboccipitals"),	
						 resultSet.getString("scalenes"),	
						 resultSet.getString("triceps"),	
						 resultSet.getString("biceps"),	
						 resultSet.getString("brachioradialis"),	
						 resultSet.getString("wristflex"),	
						 resultSet.getString("hand"),	
						 resultSet.getString("pectoralis"),	
						 resultSet.getString("trapezius"),	
						 resultSet.getString("supra"),	
						 resultSet.getString("subscapularis"),	
						 resultSet.getString("dorsi"),	
						 resultSet.getString("levator"),
						 resultSet.getString("rhomboids"),
						 resultSet.getString("supraspinatus"),
						 resultSet.getString("anterior"),
						 resultSet.getString("paraspinalslum"),
						 resultSet.getString("iliopsoas"),
						 resultSet.getString("maximus"),
						 resultSet.getString("medius"),
						 resultSet.getString("piriformis"),
						 resultSet.getString("sartorius"),
						 resultSet.getString("hamstrings"),
						 resultSet.getString("TFL"),
						 resultSet.getString("HIP1"),
						 resultSet.getString("achilles"),
						 resultSet.getString("tibialis"),
						 resultSet.getString("QLS"),
						 resultSet.getString("ankles"),
						 resultSet.getString("gracilis"),
						 resultSet.getString("myofasical"),
						 resultSet.getString("manualtraction"),
						 resultSet.getString("triggerpoint"),
						 resultSet.getString("lymphaticdrainage"),
						 resultSet.getString("effleurage"),
						 resultSet.getString("taponnement"),
						 resultSet.getString("crossfrictionfiber"),
						 resultSet.getString("PNF"),
						 resultSet.getString("neuromuscular"),
						 resultSet.getString("unit"),						 
						 resultSet.getString("units"),						 
						 resultSet.getString("unitperform"),						 
						 resultSet.getString("MT"),
						 resultSet.getString("TE"),
						 resultSet.getString("MA"),
						 resultSet.getString("therapist"),
						 resultSet.getString("therapistrecommend"),
						 resultSet.getString("futurerecommend"),
						 resultSet.getString("session"),
						 resultSet.getString("weeks"),
						 resultSet.getString("signature"),
						 resultSet.getString("daily")
							
						));
			}
	    }catch(Exception e){
	    	System.out.print(e);
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return manualtherapy;
		
	}
	public int deletemanualtherapydetails(String manualtherapyno)
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
			statement.executeUpdate("delete from manualtherapy where manualtherapyno='"+manualtherapyno+"'");
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
	public List<Manualtherapy> getmanualtherapyDetails(String manualtherapyno){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Manualtherapy> manualtherapy = new ArrayList<Manualtherapy>();
	    try{
	    	System.out.print("database");
			resultSet = statement.executeQuery("select * from manualtherapy where manualtherapyno='"+manualtherapyno+"'");
			while(resultSet.next()){
				 manualtherapy.add(new Manualtherapy(resultSet.getString("manualtherapyno"),
						 resultSet.getString("pid"),
						 resultSet.getString("date"),
						 resultSet.getString("pname"),
						 resultSet.getString("timein"),
						 resultSet.getString("timeout"),
						 resultSet.getString("majorcomplaint"),
						 resultSet.getString("standing"),
						 resultSet.getString("sitting"),
						 resultSet.getString("walking"),
						 resultSet.getString("sleeping"),
						 resultSet.getString("lifting"),
						 resultSet.getString("bending"),
						 resultSet.getString("headache"),
						 resultSet.getString("neckpain"),
						 resultSet.getString("upperback"),
						 resultSet.getString("midback"),
						 resultSet.getString("lowback"),
						 resultSet.getString("tmjpain"),
						 resultSet.getString("other"),
						 resultSet.getString("shoulder"),
						 resultSet.getString("elbow"),
						 resultSet.getString("wrist"),
						 resultSet.getString("ribs"),
						 resultSet.getString("hip"),
						 resultSet.getString("leg"),
						 resultSet.getString("ankle"),
						 resultSet.getString("armsweakness"),	
						 resultSet.getString("handsweakness"),	
						 resultSet.getString("legsweakness"),	
						 resultSet.getString("feetweakness"),	
						 resultSet.getString("armspins"),	
						 resultSet.getString("handspins"),	
						 resultSet.getString("legspins"),	
						 resultSet.getString("feetpins"),
						 resultSet.getString("armsnumbness"),	
						 resultSet.getString("handsnumbness"),	
						 resultSet.getString("legsnumbness"),
						 resultSet.getString("feetnumbness"),	
						 resultSet.getString("armscoldness"),	
						 resultSet.getString("handscoldness"),	
						 resultSet.getString("legscoldness"),	
						 resultSet.getString("feetcoldness"),
						 resultSet.getString("painscale"),
						 resultSet.getString("paraspinals"),	
						 resultSet.getString("scm"),	
						 resultSet.getString("uppertraps"),	
						 resultSet.getString("suboccipitals"),	
						 resultSet.getString("scalenes"),	
						 resultSet.getString("triceps"),	
						 resultSet.getString("biceps"),	
						 resultSet.getString("brachioradialis"),	
						 resultSet.getString("wristflex"),	
						 resultSet.getString("hand"),	
						 resultSet.getString("pectoralis"),	
						 resultSet.getString("trapezius"),	
						 resultSet.getString("supra"),	
						 resultSet.getString("subscapularis"),	
						 resultSet.getString("dorsi"),	
						 resultSet.getString("levator"),
						 resultSet.getString("rhomboids"),
						 resultSet.getString("supraspinatus"),
						 resultSet.getString("anterior"),
						 resultSet.getString("paraspinalslum"),
						 resultSet.getString("iliopsoas"),
						 resultSet.getString("maximus"),
						 resultSet.getString("medius"),
						 resultSet.getString("piriformis"),
						 resultSet.getString("sartorius"),
						 resultSet.getString("hamstrings"),
						 resultSet.getString("TFL"),
						 resultSet.getString("HIP1"),
						 resultSet.getString("achilles"),
						 resultSet.getString("tibialis"),
						 resultSet.getString("QLS"),
						 resultSet.getString("ankles"),
						 resultSet.getString("gracilis"),
						 resultSet.getString("myofasical"),
						 resultSet.getString("manualtraction"),
						 resultSet.getString("triggerpoint"),
						 resultSet.getString("lymphaticdrainage"),
						 resultSet.getString("effleurage"),
						 resultSet.getString("taponnement"),
						 resultSet.getString("crossfrictionfiber"),
						 resultSet.getString("PNF"),
						 resultSet.getString("neuromuscular"),
						 resultSet.getString("unit"),
						 resultSet.getString("units"),						 
						 resultSet.getString("unitperform"),						
						 resultSet.getString("MT"),
						 resultSet.getString("TE"),
						 resultSet.getString("MA"),
						 resultSet.getString("therapist"),
						 resultSet.getString("therapistrecommend"),
						 resultSet.getString("futurerecommend"),
						 resultSet.getString("session"),
						 resultSet.getString("weeks"),
						 resultSet.getString("signature"),
						 resultSet.getString("daily")
							
						));
				 System.out.println("painscale value"+manualtherapy.get(0).getPainscale());
			}
	    }catch(Exception e){
	    	System.out.print(e);
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return manualtherapy;
		
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