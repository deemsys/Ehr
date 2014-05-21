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


import bephit.model.Kneeexam;
import bephit.model.RadiologicReport;
import bephit.model.SoapNotes;
 



public class KneeexamDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setKneeexam(Kneeexam kneeexam,String username)
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
	    	 String cmd="INSERT INTO `tbl_kneeexam`(username,`pname`,`date`,`gait`,`pelvicunleveling`,`ao`,`allsoft`,`leglengthl`,`leglengthtextl`,`leglengthr`,`leglengthtextr`,`vmo`,`quads`,`semimemb`,`semitend`,`gastroc`,`soleus`,`iliotibband`,`bicepsfem`,`functionalrangeofmotion`,`orthopedic`,`flexion`,`acll`,`aclr`,`extension`,`pcll`,`pclr`,`internalrotationl`,`internalrotationr`,`lcll`,`lclr`,`externalrotationl`,`externalrotationr`,`mcll`,`mclr`,`circumferential`,`meniscusl`,`meniscusr`,`apleysl`,`apleysr`,`cmabovel`,`suprapatellarl`,`infrapatellarl`,`belowl`,`distractionl`,`distractionr`,`cmabover`,`suprapatellarr`,`infrapatellarr`,`belowr`,`cmpl`,`cmpr`,`patdll`,`patdlr`,`neurologicaltest`,`l1l`,`l1r`,`l15l`,`l15r`,`l2l`,`l2r`,`l25l`,`l25r`,`l3l`,`l3r`,`l35l`,`l35r`,`l4l`,`l4r`,`l45l`,`l45r`,`l4l3`,`l4r3`,`l5l`,`l5r`,`l55l`,`l55r`,`l5l3`,`l5r3`,`sl`,`sr`,`s5l`,`s5r`,`sil`,`sir`,`walking`,`standing`,`stairs`,`otherfunctional`,`break_text3`,`assessment`,`patientstatus`,`diagnosis1`,`diagnosis2`,`diagnosis3`,`diagnosis4`,`diagnosis5`,`diagnosis6`,`times`,`week`,`spinal`,`chiropractic`,`physical`,`orthotics`,`modalities`,`supplementation`,`hep`,`radiographic`,`mri`,`ctscan`,`nerve`,`emg`,`outside`,`dc`,`otheraddress`,`break_text4`,`sign`)VALUES ('"+username+"','"+kneeexam.getPname()+"','"+kneeexam.getDate()+"','"+kneeexam.getGait()+"','"+kneeexam.getPelvicunleveling()+"','"+kneeexam.getAo()+"','"+kneeexam.getAllsoft()+"','"+kneeexam.getLeglengthl()+"','"+kneeexam.getLeglengthtextl()+"','"+kneeexam.getLeglengthr()+"','"+kneeexam.getLeglengthtextr()+"','"+kneeexam.getVmo()+"','"+kneeexam.getQuads()+"','"+kneeexam.getSemimemb()+"','"+kneeexam.getSemitend()+"','"+kneeexam.getGastroc()+"','"+kneeexam.getSoleus()+"','"+kneeexam.getIliotibband()+"','"+kneeexam.getBicepsfem()+"','"+kneeexam.getFunctionalrangeofmotion()+"','"+kneeexam.getOrthopedic()+"','"+kneeexam.getFlexion()+"','"+kneeexam.getAcll()+"','"+kneeexam.getAclr()+"','"+kneeexam.getExtension()+"','"+kneeexam.getPcll()+"','"+kneeexam.getPclr()+"','"+kneeexam.getInternalrotationl()+"','"+kneeexam.getInternalrotationr()+"','"+kneeexam.getLcll()+"','"+kneeexam.getLclr()+"','"+kneeexam.getExternalrotationl()+"','"+kneeexam.getExternalrotationr()+"','"+kneeexam.getMcll()+"','"+kneeexam.getMclr()+"','"+kneeexam.getCircumferential()+"','"+kneeexam.getMeniscusl()+"','"+kneeexam.getMeniscusr()+"','"+kneeexam.getApleysl()+"','"+kneeexam.getApleysr()+"','"+kneeexam.getCmabovel()+"','"+kneeexam.getSuprapatellarl()+"','"+kneeexam.getInfrapatellarl()+"','"+kneeexam.getBelowl()+"','"+kneeexam.getDistractionl()+"','"+kneeexam.getDistractionr()+"','"+kneeexam.getCmabover()+"','"+kneeexam.getSuprapatellarr()+"','"+kneeexam.getInfrapatellarr()+"','"+kneeexam.getBelowr()+"','"+kneeexam.getCmpl()+"','"+kneeexam.getCmpr()+"','"+kneeexam.getPatdll()+"','"+kneeexam.getPatdlr()+"','"+kneeexam.getNeurologicaltest()+"','"+kneeexam.getL1l()+"','"+kneeexam.getL1r()+"','"+kneeexam.getL15l()+"','"+kneeexam.getL15r()+"','"+kneeexam.getL2l()+"','"+kneeexam.getL2r()+"','"+kneeexam.getL25l()+"','"+kneeexam.getL25r()+"','"+kneeexam.getL3l()+"','"+kneeexam.getL3r()+"','"+kneeexam.getL35l()+"','"+kneeexam.getL35r()+"','"+kneeexam.getL4l()+"','"+kneeexam.getL4r()+"','"+kneeexam.getL45l()+"','"+kneeexam.getL45r()+"','"+kneeexam.getL4l3()+"','"+kneeexam.getL4r3()+"','"+kneeexam.getL5l()+"','"+kneeexam.getL5r()+"','"+kneeexam.getL55l()+"','"+kneeexam.getL55r()+"','"+kneeexam.getL5l3()+"','"+kneeexam.getL5r3()+"','"+kneeexam.getSl()+"','"+kneeexam.getSr()+"','"+kneeexam.getS5l()+"','"+kneeexam.getS5r()+"','"+kneeexam.getSil()+"','"+kneeexam.getSir()+"','"+kneeexam.getWalking()+"','"+kneeexam.getStanding()+"','"+kneeexam.getStairs()+"','"+kneeexam.getOtherfunctional()+"','"+kneeexam.getBreak_text3()+"','"+kneeexam.getAssessment()+"','"+kneeexam.getPatientstatus()+"','"+kneeexam.getDiagnosis1()+"','"+kneeexam.getDiagnosis2()+"','"+kneeexam.getDiagnosis3()+"','"+kneeexam.getDiagnosis4()+"','"+kneeexam.getDiagnosis5()+"','"+kneeexam.getDiagnosis6()+"','"+kneeexam.getTimes()+"','"+kneeexam.getWeek()+"','"+kneeexam.getSpinal()+"','"+kneeexam.getChiropractic()+"','"+kneeexam.getPhysical()+"','"+kneeexam.getOrthotics()+"','"+kneeexam.getModalities()+"','"+kneeexam.getSupplementation()+"','"+kneeexam.getHep()+"','"+kneeexam.getRadiographic()+"','"+kneeexam.getMri()+"','"+kneeexam.getCtscan()+"','"+kneeexam.getNerve()+"','"+kneeexam.getEmg()+"','"+kneeexam.getOutside()+"','"+kneeexam.getDc()+"','"+kneeexam.getOtheraddress()+"','"+kneeexam.getBreak_text4()+"','"+kneeexam.getSign()+"')";
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

	
public List<Kneeexam> getKneeexam(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Kneeexam> kneeexam = new ArrayList<Kneeexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_kneeexam");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			kneeexam.add( new Kneeexam(resultSet.getString("kneeexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("gait"),resultSet.getString("pelvicunleveling"), resultSet.getString("ao"),resultSet.getString("allsoft"),resultSet.getString("leglengthl"),resultSet.getString("leglengthtextl"),resultSet.getString("leglengthr"),resultSet.getString("leglengthtextr"),resultSet.getString("vmo"),resultSet.getString("quads"),resultSet.getString("semimemb"),resultSet.getString("semitend"), resultSet.getString("gastroc"), resultSet.getString("soleus"), resultSet.getString("iliotibband"), resultSet.getString("bicepsfem"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("acll"), resultSet.getString("aclr"), resultSet.getString("extension"), resultSet.getString("pcll"), resultSet.getString("pclr"), resultSet.getString("internalrotationl"),resultSet.getString("internalrotationr"), resultSet.getString("lcll"), resultSet.getString("lclr"),resultSet.getString("externalrotationl"),resultSet.getString("externalrotationr"), resultSet.getString("mcll"),resultSet.getString("mclr"), resultSet.getString("circumferential"),resultSet.getString("meniscusl"),resultSet.getString("meniscusr"), resultSet.getString("apleysl"), resultSet.getString("apleysr"),resultSet.getString("cmabovel"),resultSet.getString("suprapatellarl"),resultSet.getString("infrapatellarl"), resultSet.getString("belowl"), resultSet.getString("distractionl"),resultSet.getString("distractionr"),resultSet.getString("cmabover"), resultSet.getString("suprapatellarr"),resultSet.getString("infrapatellarr"),resultSet.getString("belowr"),resultSet.getString("cmpl"), resultSet.getString("cmpr"),resultSet.getString("patdll"),  resultSet.getString("patdlr"),resultSet.getString("neurologicaltest"),resultSet.getString("l1l"),resultSet.getString("l1r"),resultSet.getString("l15l"), resultSet.getString("l15r"),resultSet.getString("l2l"),resultSet.getString("l2r"),resultSet.getString("l25l"),resultSet.getString("l25r"),resultSet.getString("l3l"),resultSet.getString("l3r"), resultSet.getString("l35l"), resultSet.getString("l35r"),resultSet.getString("l4l"),resultSet.getString("l4r"),resultSet.getString("l45l"),resultSet.getString("l45r"),resultSet.getString("l4l3"),resultSet.getString("l4r3"),resultSet.getString("l5l"),resultSet.getString("l5r"),resultSet.getString("l55l"),resultSet.getString("l55r"),resultSet.getString("l5l3"),resultSet.getString("l5r3"),resultSet.getString("sl"),resultSet.getString("sr"),resultSet.getString("s5l"), resultSet.getString("s5r"),resultSet.getString("sil"), resultSet.getString("sir"),resultSet.getString("walking"),resultSet.getString("standing"),resultSet.getString("stairs"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return kneeexam;
}

public List<Kneeexam> getKnee(String kneeexamid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Kneeexam> kneeexam = new ArrayList<Kneeexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_kneeexam where kneeexamid='"+kneeexamid+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			kneeexam.add( new Kneeexam(resultSet.getString("kneeexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("gait"),resultSet.getString("pelvicunleveling"), resultSet.getString("ao"),resultSet.getString("allsoft"),resultSet.getString("leglengthl"),resultSet.getString("leglengthtextl"),resultSet.getString("leglengthr"),resultSet.getString("leglengthtextr"),resultSet.getString("vmo"),resultSet.getString("quads"),resultSet.getString("semimemb"),resultSet.getString("semitend"), resultSet.getString("gastroc"), resultSet.getString("soleus"), resultSet.getString("iliotibband"), resultSet.getString("bicepsfem"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("acll"), resultSet.getString("aclr"), resultSet.getString("extension"), resultSet.getString("pcll"), resultSet.getString("pclr"), resultSet.getString("internalrotationl"),resultSet.getString("internalrotationr"), resultSet.getString("lcll"), resultSet.getString("lclr"),resultSet.getString("externalrotationl"),resultSet.getString("externalrotationr"), resultSet.getString("mcll"),resultSet.getString("mclr"), resultSet.getString("circumferential"),resultSet.getString("meniscusl"),resultSet.getString("meniscusr"), resultSet.getString("apleysl"), resultSet.getString("apleysr"),resultSet.getString("cmabovel"),resultSet.getString("suprapatellarl"),resultSet.getString("infrapatellarl"), resultSet.getString("belowl"), resultSet.getString("distractionl"),resultSet.getString("distractionr"),resultSet.getString("cmabover"), resultSet.getString("suprapatellarr"),resultSet.getString("infrapatellarr"),resultSet.getString("belowr"),resultSet.getString("cmpl"), resultSet.getString("cmpr"),resultSet.getString("patdll"),  resultSet.getString("patdlr"),resultSet.getString("neurologicaltest"),resultSet.getString("l1l"),resultSet.getString("l1r"),resultSet.getString("l15l"), resultSet.getString("l15r"),resultSet.getString("l2l"),resultSet.getString("l2r"),resultSet.getString("l25l"),resultSet.getString("l25r"),resultSet.getString("l3l"),resultSet.getString("l3r"), resultSet.getString("l35l"), resultSet.getString("l35r"),resultSet.getString("l4l"),resultSet.getString("l4r"),resultSet.getString("l45l"),resultSet.getString("l45r"),resultSet.getString("l4l3"),resultSet.getString("l4r3"),resultSet.getString("l5l"),resultSet.getString("l5r"),resultSet.getString("l55l"),resultSet.getString("l55r"),resultSet.getString("l5l3"),resultSet.getString("l5r3"),resultSet.getString("sl"),resultSet.getString("sr"),resultSet.getString("s5l"), resultSet.getString("s5r"),resultSet.getString("sil"), resultSet.getString("sir"),resultSet.getString("walking"),resultSet.getString("standing"),resultSet.getString("stairs"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return kneeexam;
}

public List<Kneeexam> getusernameKnee(String username){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Kneeexam> kneeexam = new ArrayList<Kneeexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_kneeexam where username='"+username+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			kneeexam.add( new Kneeexam(resultSet.getString("kneeexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("gait"),resultSet.getString("pelvicunleveling"), resultSet.getString("ao"),resultSet.getString("allsoft"),resultSet.getString("leglengthl"),resultSet.getString("leglengthtextl"),resultSet.getString("leglengthr"),resultSet.getString("leglengthtextr"),resultSet.getString("vmo"),resultSet.getString("quads"),resultSet.getString("semimemb"),resultSet.getString("semitend"), resultSet.getString("gastroc"), resultSet.getString("soleus"), resultSet.getString("iliotibband"), resultSet.getString("bicepsfem"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("acll"), resultSet.getString("aclr"), resultSet.getString("extension"), resultSet.getString("pcll"), resultSet.getString("pclr"), resultSet.getString("internalrotationl"),resultSet.getString("internalrotationr"), resultSet.getString("lcll"), resultSet.getString("lclr"),resultSet.getString("externalrotationl"),resultSet.getString("externalrotationr"), resultSet.getString("mcll"),resultSet.getString("mclr"), resultSet.getString("circumferential"),resultSet.getString("meniscusl"),resultSet.getString("meniscusr"), resultSet.getString("apleysl"), resultSet.getString("apleysr"),resultSet.getString("cmabovel"),resultSet.getString("suprapatellarl"),resultSet.getString("infrapatellarl"), resultSet.getString("belowl"), resultSet.getString("distractionl"),resultSet.getString("distractionr"),resultSet.getString("cmabover"), resultSet.getString("suprapatellarr"),resultSet.getString("infrapatellarr"),resultSet.getString("belowr"),resultSet.getString("cmpl"), resultSet.getString("cmpr"),resultSet.getString("patdll"),  resultSet.getString("patdlr"),resultSet.getString("neurologicaltest"),resultSet.getString("l1l"),resultSet.getString("l1r"),resultSet.getString("l15l"), resultSet.getString("l15r"),resultSet.getString("l2l"),resultSet.getString("l2r"),resultSet.getString("l25l"),resultSet.getString("l25r"),resultSet.getString("l3l"),resultSet.getString("l3r"), resultSet.getString("l35l"), resultSet.getString("l35r"),resultSet.getString("l4l"),resultSet.getString("l4r"),resultSet.getString("l45l"),resultSet.getString("l45r"),resultSet.getString("l4l3"),resultSet.getString("l4r3"),resultSet.getString("l5l"),resultSet.getString("l5r"),resultSet.getString("l55l"),resultSet.getString("l55r"),resultSet.getString("l5l3"),resultSet.getString("l5r3"),resultSet.getString("sl"),resultSet.getString("sr"),resultSet.getString("s5l"), resultSet.getString("s5r"),resultSet.getString("sil"), resultSet.getString("sir"),resultSet.getString("walking"),resultSet.getString("standing"),resultSet.getString("stairs"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return kneeexam;
}
public int updateknee(Kneeexam kneeexam,String kneeexamid,String admin)
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
    	 /*System.out.println("updatepatient_id"+patient_id);*/
    	 //System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_kneeexam SET pname='"+kneeexam.getPname()+"',date='"+kneeexam.getDate()+"',gait='"+kneeexam.getGait()+"',pelvicunleveling='"+kneeexam.getPelvicunleveling()+"',ao='"+kneeexam.getAo()+"',allsoft='"+kneeexam.getAllsoft()+"',leglengthl='"+kneeexam.getLeglengthl()+"',leglengthtextl='"+kneeexam.getLeglengthtextl()+"',leglengthr='"+kneeexam.getLeglengthr()+"',leglengthtextr='"+kneeexam.getLeglengthtextr()+"',vmo='"+kneeexam.getVmo()+"',quads='"+kneeexam.getQuads()+"',semimemb='"+kneeexam.getSemimemb()+"',semitend='"+kneeexam.getSemitend()+"',gastroc='"+kneeexam.getGastroc()+"',soleus='"+kneeexam.getSoleus()+"',iliotibband='"+kneeexam.getIliotibband()+"',bicepsfem='"+kneeexam.getBicepsfem()+"',functionalrangeofmotion='"+kneeexam.getFunctionalrangeofmotion()+"',orthopedic='"+kneeexam.getOrthopedic()+"',flexion='"+kneeexam.getFlexion()+"',acll='"+kneeexam.getAcll()+"',aclr='"+kneeexam.getAclr()+"',extension='"+kneeexam.getExtension()+"',pcll='"+kneeexam.getPcll()+"',pclr='"+kneeexam.getPclr()+"',internalrotationl='"+kneeexam.getInternalrotationl()+"',internalrotationr='"+kneeexam.getInternalrotationr()+"',lcll='"+kneeexam.getLcll()+"',lclr='"+kneeexam.getLclr()+"',externalrotationl='"+kneeexam.getExternalrotationl()+"',externalrotationr='"+kneeexam.getExternalrotationr()+"',mcll='"+kneeexam.getMcll()+"',mclr='"+kneeexam.getMclr()+"',circumferential='"+kneeexam.getCircumferential()+"',meniscusl='"+kneeexam.getMeniscusl()+"',meniscusr='"+kneeexam.getMeniscusr()+"',apleysl='"+kneeexam.getApleysl()+"',apleysr='"+kneeexam.getApleysr()+"',cmabovel='"+kneeexam.getCmabovel()+"',suprapatellarl='"+kneeexam.getSuprapatellarl()+"',infrapatellarl='"+kneeexam.getInfrapatellarl()+"',belowl='"+kneeexam.getBelowl()+"',distractionl='"+kneeexam.getDistractionl()+"',distractionr='"+kneeexam.getDistractionr()+"',cmabover='"+kneeexam.getCmabover()+"',suprapatellarr='"+kneeexam.getSuprapatellarr()+"',infrapatellarr='"+kneeexam.getInfrapatellarr()+"',belowr='"+kneeexam.getBelowr()+"',cmpl='"+kneeexam.getCmpl()+"',cmpr='"+kneeexam.getCmpr()+"',patdll='"+kneeexam.getPatdll()+"',patdlr='"+kneeexam.getPatdlr()+"',neurologicaltest='"+kneeexam.getNeurologicaltest()+"',l1l='"+kneeexam.getL1l()+"',l1r='"+kneeexam.getL1r()+"',l15l='"+kneeexam.getL15l()+"',l15r='"+kneeexam.getL15r()+"',l2l='"+kneeexam.getL2l()+"',l2r='"+kneeexam.getL2r()+"',l25l='"+kneeexam.getL25l()+"',l25r='"+kneeexam.getL25r()+"',l3l='"+kneeexam.getL3l()+"',l3r='"+kneeexam.getL3r()+"',l35l='"+kneeexam.getL35l()+"',l35r='"+kneeexam.getL35r()+"',l4l='"+kneeexam.getL4l()+"',l4r='"+kneeexam.getL4r()+"',l45l='"+kneeexam.getL45l()+"',l45r='"+kneeexam.getL45r()+"',l4l3='"+kneeexam.getL4l3()+"',l4r3='"+kneeexam.getL4r3()+"',l5l='"+kneeexam.getL5l()+"',l5r='"+kneeexam.getL5r()+"',l55l='"+kneeexam.getL55l()+"',l55r='"+kneeexam.getL55r()+"',l5l3='"+kneeexam.getL5l3()+"',l5r3='"+kneeexam.getL5r3()+"',sl='"+kneeexam.getSl()+"',sr='"+kneeexam.getSr()+"',s5l='"+kneeexam.getS5l()+"',s5r='"+kneeexam.getS5r()+"',sil='"+kneeexam.getSil()+"',sir='"+kneeexam.getSir()+"',walking='"+kneeexam.getWalking()+"',standing='"+kneeexam.getStanding()+"',stairs='"+kneeexam.getStairs()+"',otherfunctional='"+kneeexam.getOtherfunctional()+"',break_text3='"+kneeexam.getBreak_text3()+"',assessment='"+kneeexam.getAssessment()+"',patientstatus='"+kneeexam.getPatientstatus()+"',diagnosis1='"+kneeexam.getDiagnosis1()+"',diagnosis2='"+kneeexam.getDiagnosis2()+"',diagnosis3='"+kneeexam.getDiagnosis3()+"',diagnosis4='"+kneeexam.getDiagnosis4()+"',diagnosis5='"+kneeexam.getDiagnosis5()+"',diagnosis6='"+kneeexam.getDiagnosis6()+"',times='"+kneeexam.getTimes()+"',week='"+kneeexam.getWeek()+"',spinal='"+kneeexam.getSpinal()+"',chiropractic='"+kneeexam.getChiropractic()+"',physical='"+kneeexam.getPhysical()+"',orthotics='"+kneeexam.getOrthotics()+"',modalities='"+kneeexam.getModalities()+"',supplementation='"+kneeexam.getSupplementation()+"',hep='"+kneeexam.getHep()+"',radiographic='"+kneeexam.getRadiographic()+"',mri='"+kneeexam.getMri()+"',ctscan='"+kneeexam.getCtscan()+"',nerve='"+kneeexam.getNerve()+"',emg='"+kneeexam.getEmg()+"',outside='"+kneeexam.getOutside()+"',dc='"+kneeexam.getDc()+"',otheraddress='"+kneeexam.getOtheraddress()+"',break_text4='"+kneeexam.getBreak_text4()+"',sign='"+kneeexam.getSign()+"' WHERE kneeexamid='"+kneeexamid+"';";
    			
    			String Desc="Update kneeexam "+kneeexam.getPname();
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

public int deletekneeexam(String kneeexamid){
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
    	 String cmd_getpatient_pname="select pname from tbl_kneeexam where kneeexamid='"+kneeexamid+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_kneeexam where kneeexamid='"+kneeexamid+"'");
			
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
public List<Kneeexam> getlimitedkneeexam(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Kneeexam> kneeexam = new ArrayList<Kneeexam>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_kneeexam order by pname asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			kneeexam.add( new Kneeexam(resultSet.getString("kneeexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("gait"),resultSet.getString("pelvicunleveling"), resultSet.getString("ao"),resultSet.getString("allsoft"),resultSet.getString("leglengthl"),resultSet.getString("leglengthtextl"),resultSet.getString("leglengthr"),resultSet.getString("leglengthtextr"),resultSet.getString("vmo"),resultSet.getString("quads"),resultSet.getString("semimemb"),resultSet.getString("semitend"), resultSet.getString("gastroc"), resultSet.getString("soleus"), resultSet.getString("iliotibband"), resultSet.getString("bicepsfem"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("acll"), resultSet.getString("aclr"), resultSet.getString("extension"), resultSet.getString("pcll"), resultSet.getString("pclr"), resultSet.getString("internalrotationl"),resultSet.getString("internalrotationr"), resultSet.getString("lcll"), resultSet.getString("lclr"),resultSet.getString("externalrotationl"),resultSet.getString("externalrotationr"), resultSet.getString("mcll"),resultSet.getString("mclr"), resultSet.getString("circumferential"),resultSet.getString("meniscusl"),resultSet.getString("meniscusr"), resultSet.getString("apleysl"), resultSet.getString("apleysr"),resultSet.getString("cmabovel"),resultSet.getString("suprapatellarl"),resultSet.getString("infrapatellarl"), resultSet.getString("belowl"), resultSet.getString("distractionl"),resultSet.getString("distractionr"),resultSet.getString("cmabover"), resultSet.getString("suprapatellarr"),resultSet.getString("infrapatellarr"),resultSet.getString("belowr"),resultSet.getString("cmpl"), resultSet.getString("cmpr"),resultSet.getString("patdll"),  resultSet.getString("patdlr"),resultSet.getString("neurologicaltest"),resultSet.getString("l1l"),resultSet.getString("l1r"),resultSet.getString("l15l"), resultSet.getString("l15r"),resultSet.getString("l2l"),resultSet.getString("l2r"),resultSet.getString("l25l"),resultSet.getString("l25r"),resultSet.getString("l3l"),resultSet.getString("l3r"), resultSet.getString("l35l"), resultSet.getString("l35r"),resultSet.getString("l4l"),resultSet.getString("l4r"),resultSet.getString("l45l"),resultSet.getString("l45r"),resultSet.getString("l4l3"),resultSet.getString("l4r3"),resultSet.getString("l5l"),resultSet.getString("l5r"),resultSet.getString("l55l"),resultSet.getString("l55r"),resultSet.getString("l5l3"),resultSet.getString("l5r3"),resultSet.getString("sl"),resultSet.getString("sr"),resultSet.getString("s5l"), resultSet.getString("s5r"),resultSet.getString("sil"), resultSet.getString("sir"),resultSet.getString("walking"),resultSet.getString("standing"),resultSet.getString("stairs"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));				
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
	return kneeexam;

}
public int getnoofkneeexam() {
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
	List<Kneeexam> kneeexam = new ArrayList<Kneeexam>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_kneeexam";
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
