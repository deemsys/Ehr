
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

import bephit.model.Autoaccident;
import bephit.model.Physicalexam;
import bephit.model.RadiologicReport;
import bephit.model.Treatform;

public class PhysicalexamDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setPhysicalexam(Physicalexam physicalexam)
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
	    	 //System.out.println(dateFormat.format(date));
	    	 String cmd="INSERT INTO tbl_physicalexam (patient_id,sign,name,id,date,age,sex,height,height1,weight,temp,bp,pulse,appearance,weight1,gait,head,path,path1,posture,romber,exam,abnormal,headtiltright,headtiltleft,headtiltnormal,rotationright,rotationleft,rotationnormal,tmjright,tmjleft,tmjnormal,highright,highleft,highnormal,lordhyper,lordhypo,lordnormal,lymphedema,lymphnormal,paraspain,parasspasm,parasedema,parastriggerpoint,trapeziusrl,trapeziustono,trapeziusnormal,scmrl,scmtono,scmnormal,vertebraefix,vertebraenofix,flexpain,flexspasm,flexstiff,extpain,extspasm,extstiff,rlfpain,rlfspasm,rlfstiff,llfpain,llfspasm,llfstiff,rrpain,rrspasm,rrstiff,lrpain,lrspasm,lrstiff,c5,c5right,c5left,c6,c6right,c6left,c7,c7right,c7left,c8,c8right,c8left,t1,t1right,t1left,other,otherright,otherleft,deltoidright,deltoidleft,wristright,wristleft,wristflexright,wristflexleft,fingerflexright,fingerflexleft,fingeraddright,fingeraddleft,wristextright,wristextleft,bicepright,bicepleft,bracioradright,bracioradleft,tricepright,tricepleft,presentvisual,presentrl,highshoulderright,highshoulderleft,highshouldernormal,curvatureright,curvatureleft,curvaturenormal,wingingright,wingingleft,wingingnormal,ribhumpright,ribhumpleft,ribhumpnormal,chestmeasurein,kyphosishyper,kyphosishypo,kyphosisnormal,parapain,paraspasm,paraedema,paratriggerpoint,ribspost,ribsnor,vertefix,vertenofix,thoracicpain,thoracicspasm,thoracicstiff,thoextpain,thoextspasm,thoextstiff,thorlfpain,thorlfspasm,thorlfstiff,thollfpain,thollfspasm,thollfstiff,thorrpain,thorrspasm,thorrstiff,tholrpain,tholrspasm,tholrstiff,thot1,thot1right,thot1left,thot4,thot4right,thot4left,thot10,thot10right,thot10left,thoother,thootherright,thootherleft,myotomes,positiveruq,positiveluq,positiverlq,positivellq,patientsmoker,highcrestright,highcrestleft,highcrestnormal,highpsisright,highpsisleft,highpsisnormal,curveright,curveleft,curvenormal,lordosishyper,lordosishypo,lordosisnormal,paraspinalpain,paraspinalspasm,paraspinaledema,paraspinaltp,quadrl,quadtono,quadnor,hamstringrl,hamstringtono,hamstringnor,verfix,vernofix,abdomentender,abdomenpulse,abdomenascites,lumflexpain,lumflexspasm,lumflexstiff,lumextpain,lumextspasm,lumextstiff,lumrlfpain,lumrlfspasm,lumrlfstiff,lumllfpain,lumllfspasm,lumllfstiff,lumrrpain,lumrrspasm,lumrrstiff,lumlrpain,lumlrspasm,lumlrstiff,lu1,lu1right,lu1left,lu2,lu2right,lu2left,lu3,lu3right,lu3left,lu4,lu4right,lu4left,lu5,lu5right,lu5left,lu6,lu6right,lu6left,lu7,lu7right,lu7left,hipflexright,hipflexleft,legextright,legextleft,dorsiflexright,dorsiflexleft,digitflexright,digitflexleft,heelright,heelleft,toeright,toeleft,patellarright,patellarleft,achillesright,achillesleft,babinskiright,babinskileft) VALUES ('"+physicalexam.getPatient_id()+"','"+physicalexam.getSign()+"','"+physicalexam.getName()+"','"+physicalexam.getId()+"','"+physicalexam.getDate()+"','"+physicalexam.getAge()+"','"+physicalexam.getSex()+"','"+physicalexam.getHeight()+"','"+physicalexam.getHeight1()+"','"+physicalexam.getWeight()+"','"+physicalexam.getTemp()+"','"+physicalexam.getBp()+"','"+physicalexam.getPulse()+"','"+physicalexam.getAppearance()+"','"+physicalexam.getWeight1()+"','"+physicalexam.getGait()+"','"+physicalexam.getHead()+"','"+physicalexam.getPath()+"','"+physicalexam.getPath1()+"','"+physicalexam.getPosture()+"','"+physicalexam.getRomber()+"','"+physicalexam.getExam()+"','"+physicalexam.getAbnormal()+"','"+physicalexam.getHeadtiltright()+"','"+physicalexam.getHeadtiltleft()+"','"+physicalexam.getHeadtiltnormal()+"','"+physicalexam.getRotationright()+"','"+physicalexam.getRotationleft()+"','"+physicalexam.getRotationnormal()+"','"+physicalexam.getTmjright()+"','"+physicalexam.getTmjleft()+"','"+physicalexam.getTmjnormal()+"','"+physicalexam.getHighright()+"','"+physicalexam.getHighleft()+"','"+physicalexam.getHighnormal()+"','"+physicalexam.getLordhyper()+"','"+physicalexam.getLordhypo()+"','"+physicalexam.getLordnormal()+"','"+physicalexam.getLymphedema()+"','"+physicalexam.getLymphnormal()+"','"+physicalexam.getParaspain()+"','"+physicalexam.getParasspasm()+"','"+physicalexam.getParasedema()+"','"+physicalexam.getParastriggerpoint()+"','"+physicalexam.getTrapeziusrl()+"','"+physicalexam.getTrapeziustono()+"','"+physicalexam.getTrapeziusnormal()+"','"+physicalexam.getTrapeziusrl()+"','"+physicalexam.getTrapeziustono()+"','"+physicalexam.getTrapeziusnormal()+"','"+physicalexam.getVertebraefix()+"','"+physicalexam.getVertebraenofix()+"','"+physicalexam.getFlexpain()+"','"+physicalexam.getFlexspasm()+"','"+physicalexam.getFlexstiff()+"','"+physicalexam.getExtpain()+"','"+physicalexam.getExtspasm()+"','"+physicalexam.getExtstiff()+"','"+physicalexam.getRlfpain()+"','"+physicalexam.getRlfspasm()+"','"+physicalexam.getRlfstiff()+"','"+physicalexam.getLlfpain()+"','"+physicalexam.getLlfspasm()+"','"+physicalexam.getLlfstiff()+"','"+physicalexam.getRrpain()+"','"+physicalexam.getRrspasm()+"','"+physicalexam.getRrstiff()+"','"+physicalexam.getLrpain()+"','"+physicalexam.getLrspasm()+"','"+physicalexam.getLrstiff()+"','"+physicalexam.getC5()+"','"+physicalexam.getC5right()+"','"+physicalexam.getC5left()+"','"+physicalexam.getC6()+"','"+physicalexam.getC6right()+"','"+physicalexam.getC6left()+"','"+physicalexam.getC7()+"','"+physicalexam.getC7right()+"','"+physicalexam.getC7left()+"','"+physicalexam.getC8()+"','"+physicalexam.getC8right()+"','"+physicalexam.getC8left()+"','"+physicalexam.getT1()+"','"+physicalexam.getT1right()+"','"+physicalexam.getT1left()+"','"+physicalexam.getOther()+"','"+physicalexam.getOtherright()+"','"+physicalexam.getOtherleft()+"','"+physicalexam.getDeltoidright()+"','"+physicalexam.getDeltoidleft()+"','"+physicalexam.getWristright()+"','"+physicalexam.getWristleft()+"','"+physicalexam.getWristflexright()+"','"+physicalexam.getWristflexleft()+"','"+physicalexam.getFingerflexright()+"','"+physicalexam.getFingerflexleft()+"','"+physicalexam.getFingeraddright()+"','"+physicalexam.getFingeraddleft()+"','"+physicalexam.getWristextright()+"','"+physicalexam.getWristextleft()+"','"+physicalexam.getBicepright()+"','"+physicalexam.getBicepleft()+"','"+physicalexam.getBracioradright()+"','"+physicalexam.getBracioradleft()+"','"+physicalexam.getTricepright()+"','"+physicalexam.getTricepleft()+"','"+physicalexam.getpresentvisual()+"','"+physicalexam.getPresentrl()+"','"+physicalexam.getHighshoulderright()+"','"+physicalexam.getHighshoulderleft()+"','"+physicalexam.getHighshouldernormal()+"','"+physicalexam.getCurvatureright()+"','"+physicalexam.getCurvatureleft()+"','"+physicalexam.getCurvaturenormal()+"','"+physicalexam.getWingingright()+"','"+physicalexam.getWingingleft()+"','"+physicalexam.getWingingnormal()+"','"+physicalexam.getRibhumpright()+"','"+physicalexam.getRibhumpleft()+"','"+physicalexam.getRibhumpnormal()+"','"+physicalexam.getChestmeasurein()+"','"+physicalexam.getKyphosishyper()+"','"+physicalexam.getKyphosishypo()+"','"+physicalexam.getKyphosisnormal()+"','"+physicalexam.getParapain()+"','"+physicalexam.getParaspasm()+"','"+physicalexam.getParaedema()+"','"+physicalexam.getParatriggerpoint()+"','"+physicalexam.getRibspost()+"','"+physicalexam.getRibsnor()+"','"+physicalexam.getVertefix()+"','"+physicalexam.getVertenofix()+"','"+physicalexam.getThoracicpain()+"','"+physicalexam.getThoracicspasm()+"','"+physicalexam.getThoracicstiff()+"','"+physicalexam.getThoextpain()+"','"+physicalexam.getThoextspasm()+"','"+physicalexam.getThoextstiff()+"','"+physicalexam.getThorlfpain()+"','"+physicalexam.getThorlfspasm()+"','"+physicalexam.getThorlfstiff()+"','"+physicalexam.getThollfpain()+"','"+physicalexam.getThollfspasm()+"','"+physicalexam.getThollfstiff()+"','"+physicalexam.getThorrpain()+"','"+physicalexam.getThorrspasm()+"','"+physicalexam.getThorrstiff()+"','"+physicalexam.getTholrpain()+"','"+physicalexam.getTholrspasm()+"','"+physicalexam.getTholrstiff()+"','"+physicalexam.getThot1()+"','"+physicalexam.getThot1right()+"','"+physicalexam.getThot1left()+"','"+physicalexam.getThot4()+"','"+physicalexam.getThot4right()+"','"+physicalexam.getThot4left()+"','"+physicalexam.getThot10()+"','"+physicalexam.getThot10right()+"','"+physicalexam.getThot10left()+"','"+physicalexam.getThoother()+"','"+physicalexam.getThootherright()+"','"+physicalexam.getThootherleft()+"','"+physicalexam.getMyotomes()+"','"+physicalexam.getPositiveruq()+"','"+physicalexam.getPositiveluq()+"','"+physicalexam.getPositiverlq()+"','"+physicalexam.getPositivellq()+"','"+physicalexam.getPatientsmoker()+"','"+physicalexam.getHighcrestright()+"','"+physicalexam.getHighcrestleft()+"','"+physicalexam.getHighcrestnormal()+"','"+physicalexam.getHighpsisright()+"','"+physicalexam.getHighpsisleft()+"','"+physicalexam.getHighpsisnormal()+"','"+physicalexam.getCurveright()+"','"+physicalexam.getCurveleft()+"','"+physicalexam.getCurvaturenormal()+"','"+physicalexam.getLordosishyper()+"','"+physicalexam.getLordosishypo()+"','"+physicalexam.getLordosisnormal()+"','"+physicalexam.getParaspinalpain()+"','"+physicalexam.getParaspinalspasm()+"','"+physicalexam.getParaspinaledema()+"','"+physicalexam.getParaspinaltp()+"','"+physicalexam.getQuadrl()+"','"+physicalexam.getQuadtono()+"','"+physicalexam.getQuadnor()+"','"+physicalexam.getHamstringrl()+"','"+physicalexam.getHamstringtono()+"','"+physicalexam.getHamstringnor()+"','"+physicalexam.getVerfix()+"','"+physicalexam.getVernofix()+"','"+physicalexam.getAbdomentender()+"','"+physicalexam.getAbdomenpulse()+"','"+physicalexam.getAbdomenascites()+"','"+physicalexam.getLumflexpain()+"','"+physicalexam.getLumflexspasm()+"','"+physicalexam.getLumflexstiff()+"','"+physicalexam.getLumextpain()+"','"+physicalexam.getLumextspasm()+"','"+physicalexam.getLumextstiff()+"','"+physicalexam.getLumrlfpain()+"','"+physicalexam.getLumrlfspasm()+"','"+physicalexam.getLumrlfstiff()+"','"+physicalexam.getLumllfpain()+"','"+physicalexam.getLumllfspasm()+"','"+physicalexam.getLumllfstiff()+"','"+physicalexam.getLumrrpain()+"','"+physicalexam.getLumrrspasm()+"','"+physicalexam.getLumrrstiff()+"','"+physicalexam.getLumlrpain()+"','"+physicalexam.getLumlrspasm()+"','"+physicalexam.getLumlrstiff()+"','"+physicalexam.getLu1()+"','"+physicalexam.getLu1right()+"','"+physicalexam.getLu1left()+"','"+physicalexam.getLu2()+"','"+physicalexam.getLu2right()+"','"+physicalexam.getLu2left()+"','"+physicalexam.getLu3()+"','"+physicalexam.getLu3right()+"','"+physicalexam.getLu3left()+"','"+physicalexam.getLu4()+"','"+physicalexam.getLu4right()+"','"+physicalexam.getLu4left()+"','"+physicalexam.getLu5()+"','"+physicalexam.getLu5right()+"','"+physicalexam.getLu5left()+"','"+physicalexam.getLu6()+"','"+physicalexam.getLu6right()+"','"+physicalexam.getLu6left()+"','"+physicalexam.getLu7()+"','"+physicalexam.getLu7right()+"','"+physicalexam.getLu7left()+"','"+physicalexam.getHipflexright()+"','"+physicalexam.getHipflexleft()+"','"+physicalexam.getLegextright()+"','"+physicalexam.getLegextleft()+"','"+physicalexam.getDorsiflexright()+"','"+physicalexam.getDorsiflexleft()+"','"+physicalexam.getDigitflexright()+"','"+physicalexam.getDigitflexleft()+"','"+physicalexam.getHeelright()+"','"+physicalexam.getHeelleft()+"','"+physicalexam.getToeright()+"','"+physicalexam.getToeleft()+"','"+physicalexam.getPatellarright()+"','"+physicalexam.getPatellarleft()+"','"+physicalexam.getAchillesright()+"','"+physicalexam.getAchillesleft()+"','"+physicalexam.getBabinskiright()+"','"+physicalexam.getBabinskileft()+"')";
	    	 
	    /*	 String cmd="insert into tbl_physicalexam(sign,name,id,date,age,sex) values('"+physicalexam.getSign()+"','"+physicalexam.getName()+"','"+physicalexam.getId()+"','"+physicalexam.getDate()+"','"+physicalexam.getSex()+"')";
	    */	 System.out.println(cmd+""+physicalexam.getPatient_id());
	    	 statement.execute(cmd);
	    	/* String cmd_getparticipantname="select fname from participants_table where participants_id='"+participant_id+"'";
	    	 resultSet=statement.executeQuery(cmd_getparticipantname);
	    	 String Desc="added participants"+Autoaccident.getClaimnumber();
	    	 if(resultSet.next())
			Desc=Desc+resultSet.getString(1);
	    	String cmd_activity="insert into admin_log_activity_table(admin_id,ip_address,admin_date_time,admin_desc) values('"+admin_id+"','127.0.0.1','"+dateFormat.format(date)+"','"+Desc+"')";
	    	System.out.println(cmd_activity);
	    	statement.execute(cmd_activity);*/
			flag=1;
	 }
	    catch(Exception e){
	    	System.out.println("error:"+e.toString());
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

	
public List<Physicalexam> getPhysicalexam(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		
		e1.printStackTrace();
	}
	
	List<Physicalexam> Physicalexam = new ArrayList<Physicalexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_physicalexam");
		while(resultSet.next()){
			Physicalexam.add(new Physicalexam(resultSet.getString("physical_id"),
					resultSet.getString("patient_id"),
					resultSet.getString("sign"),
		    		resultSet.getString("name"),
		    		resultSet.getString("id"),
		    		resultSet.getString("date"),
		    		resultSet.getString("age"),
		    		resultSet.getString("sex"),
		    		resultSet.getString("height"),
		    		resultSet.getString("height1"),
		    		resultSet.getString("weight"),
		    		resultSet.getString("temp"),
		    		resultSet.getString("bp"),
		    		resultSet.getString("pulse"),
		    		resultSet.getString("appearance"),
		    		resultSet.getString("weight1"),
		    		resultSet.getString("gait"),
		    		resultSet.getString("head"),
		    		resultSet.getString("path"),
		    		resultSet.getString("path1"),
		    		resultSet.getString("posture"),
		    		resultSet.getString("romber"),
		    		resultSet.getString("exam"),
		    		resultSet.getString("abnormal"),
		    		resultSet.getString("headtiltright"),
		    		resultSet.getString("headtiltleft"),
		    		resultSet.getString("headtiltnormal"),
		    		resultSet.getString("rotationright"),
		    		resultSet.getString("rotationleft"),
		    		resultSet.getString("rotationnormal"),
		    		resultSet.getString("tmjright"),
		    		resultSet.getString("tmjleft"),
		    		resultSet.getString("tmjnormal"),
		    		resultSet.getString("highright"),
		    		resultSet.getString("highleft"),
		    		resultSet.getString("highnormal"),
		    		resultSet.getString("lordhyper"),
		    		resultSet.getString("lordhypo"),
		    		resultSet.getString("lordnormal"),
		    		resultSet.getString("lymphedema"),
		    		resultSet.getString("lymphnormal"),
		    		resultSet.getString("paraspain"),
		    		resultSet.getString("parasspasm"),
		    		resultSet.getString("parasedema"),
		    		resultSet.getString("parastriggerpoint"),
		    		resultSet.getString("trapeziusrl"),
		    		resultSet.getString("trapeziustono"),
		    		resultSet.getString("trapeziusnormal"),
		    		resultSet.getString("vertebraefix"),
		    		resultSet.getString("vertebraenofix"),
		    		resultSet.getString("scmrl"),
		    		resultSet.getString("scmtono"),
		    		resultSet.getString("scmnormal"),
		    		
		    		resultSet.getString("flexpain"),
		    		resultSet.getString("flexspasm"),
		    		resultSet.getString("flexstiff"),
		    		
		    		resultSet.getString("extpain"),
		    		resultSet.getString("extspasm"),
		    		resultSet.getString("extstiff"),
		    		
		    		resultSet.getString("rlfpain"),
		    		resultSet.getString("rlfspasm"),
		    		resultSet.getString("rlfstiff"),
		    		
		    		resultSet.getString("llfpain"),
		    		resultSet.getString("llfspasm"),
		    		resultSet.getString("llfstiff"),
		    		
		    		resultSet.getString("rrpain"),
		    		resultSet.getString("rrspasm"),
		    		resultSet.getString("rrstiff"),
		    		
		    		resultSet.getString("lrpain"),
		    		resultSet.getString("lrspasm"),
		    		resultSet.getString("lrstiff"),
		    		resultSet.getString("c5"),
		    		resultSet.getString("c5right"),
		    		resultSet.getString("c5left"),
		    		
		    		resultSet.getString("c6"),
		    		resultSet.getString("c6right"),
		    		resultSet.getString("c6left"),
		    		
		    		resultSet.getString("c7"),
		    		resultSet.getString("c7right"),
		    		resultSet.getString("c7left"),
		    	
		    		resultSet.getString("c8"),
		    		resultSet.getString("c8right"),
		    		resultSet.getString("c8left"),		    		
		    		resultSet.getString("t1"),
		    		resultSet.getString("t1right"),
		    		resultSet.getString("t1left"),
		    		
		    		resultSet.getString("other"),
		    		resultSet.getString("otherright"),
		    		resultSet.getString("otherleft"),
		    		resultSet.getString("deltoidright"),
		    		resultSet.getString("deltoidleft"),
		    		resultSet.getString("wristright"),
		    		resultSet.getString("wristleft"),
		    		resultSet.getString("wristflexright"),
		    		resultSet.getString("wristflexleft"),
		    		resultSet.getString("fingerflexright"),
		    		resultSet.getString("fingerflexleft"),
		    		resultSet.getString("fingeraddright"),
		    		resultSet.getString("fingeraddleft"),
		    		resultSet.getString("wristextright"),
		    		resultSet.getString("wristextleft"),
		    		resultSet.getString("bicepright"),
		    		resultSet.getString("bicepleft"),
		    		resultSet.getString("bracioradright"),
		    		resultSet.getString("bracioradleft"),
		    		resultSet.getString("tricepright"),
		    		resultSet.getString("tricepleft"),
		    		resultSet.getString("presentvisual"),
		    		resultSet.getString("presentrl"),
		    		
		    		resultSet.getString("highshoulderright"),
		    		resultSet.getString("highshoulderleft"),
		    		resultSet.getString("highshouldernormal"),
		    		resultSet.getString("curvatureright"),
		    		resultSet.getString("curvatureleft"),
		    		resultSet.getString("curvaturenormal"),
		    		resultSet.getString("wingingright"),
		    		resultSet.getString("wingingleft"),
		    		resultSet.getString("wingingnormal"),
		    		resultSet.getString("ribhumpright"),
		    		resultSet.getString("ribhumpleft"),
		    		resultSet.getString("ribhumpnormal"),
		    		resultSet.getString("chestmeasurein"),
		    		
		    		resultSet.getString("kyphosishyper"),
		    		resultSet.getString("kyphosishypo"),
		    		resultSet.getString("kyphosisnormal"),
		    		resultSet.getString("parapain"),
		    		resultSet.getString("paraspasm"),
		    		resultSet.getString("paraedema"),
		    		resultSet.getString("paratriggerpoint"),
		    		resultSet.getString("ribspost"),
		    		resultSet.getString("ribsnor"),
		    		resultSet.getString("vertefix"),
		    		resultSet.getString("vertenofix"),
		    		
		    		resultSet.getString("thoracicpain"),
		    		resultSet.getString("thoracicspasm"),
		    		resultSet.getString("thoracicstiff"),
		    		
		    		resultSet.getString("thoextpain"),
		    		resultSet.getString("thoextspasm"),
		    		resultSet.getString("thoextstiff"),
		    		
		    		resultSet.getString("thorlfpain"),
		    		resultSet.getString("thorlfspasm"),
		    		resultSet.getString("thorlfstiff"),
		    		
		    		resultSet.getString("thollfpain"),
		    		resultSet.getString("thollfspasm"),
		    		resultSet.getString("thollfstiff"),
		    		
		    		resultSet.getString("thorrpain"),
		    		resultSet.getString("thorrspasm"),
		    		resultSet.getString("thorrstiff"),
		    		
		    		resultSet.getString("tholrpain"),
		    		resultSet.getString("tholrspasm"),
		    		resultSet.getString("tholrstiff"),
		    		resultSet.getString("thot1"),
		    		resultSet.getString("thot1right"),
		    		resultSet.getString("thot1left"),
		    		
		    		resultSet.getString("thot4"),
		    		resultSet.getString("thot4right"),
		    		resultSet.getString("thot4left"),
		    		resultSet.getString("thot10"),
		    		resultSet.getString("thot10right"),
		    		resultSet.getString("thot10left"),
		    		
		    		resultSet.getString("thoother"),
		    		resultSet.getString("thootherright"),
		    		resultSet.getString("thootherleft"),
		    		resultSet.getString("myotomes"),
		    		resultSet.getString("positiveruq"),
		    		resultSet.getString("positiveluq"),
		    		resultSet.getString("positiverlq"),
		    		resultSet.getString("positivellq"),
		    		resultSet.getString("patientsmoker"),
		    		
		    		resultSet.getString("highcrestright"),
		    		resultSet.getString("highcrestleft"),
		    		resultSet.getString("highcrestnormal"),
		    		resultSet.getString("highpsisright"),
		    		resultSet.getString("highpsisleft"),
		    		resultSet.getString("highpsisnormal"),
		    		resultSet.getString("curveright"),
		    		resultSet.getString("curveleft"),
		    		resultSet.getString("curvenormal"),
		    		resultSet.getString("lordosishyper"),
		    		resultSet.getString("lordosishypo"),
		    		resultSet.getString("lordosisnormal"),
		    		resultSet.getString("paraspinalpain"),
		    		resultSet.getString("paraspinalspasm"),
		    		resultSet.getString("paraspinaledema"),
		    		resultSet.getString("paraspinaltp"),
		    		resultSet.getString("quadrl"),
		    		resultSet.getString("quadtono"),
		    		resultSet.getString("quadnor"),
		    		resultSet.getString("hamstringrl"),
		    		resultSet.getString("hamstringtono"),
		    		resultSet.getString("hamstringnor"),
		    		resultSet.getString("verfix"),
		    		resultSet.getString("vernofix"),
		    		resultSet.getString("abdomentender"),
		    		resultSet.getString("abdomenpulse"),
		    		resultSet.getString("abdomenascites"),
		    		
		    		resultSet.getString("lumflexpain"),
		    		resultSet.getString("lumflexspasm"),
		    		resultSet.getString("lumflexstiff"),
		    		
		    		resultSet.getString("lumextpain"),
		    		resultSet.getString("lumextspasm"),
		    		resultSet.getString("lumextstiff"),
		    		
		    		resultSet.getString("lumrlfpain"),
		    		resultSet.getString("lumrlfspasm"),
		    		resultSet.getString("lumrlfstiff"),
		    		
		    		resultSet.getString("lumllfpain"),
		    		resultSet.getString("lumllfspasm"),
		    		resultSet.getString("lumllfstiff"),
		    		
		    		resultSet.getString("lumrrpain"),
		    		resultSet.getString("lumrrspasm"),
		    		resultSet.getString("lumrrstiff"),
		    		
		    		resultSet.getString("lumlrpain"),
		    		resultSet.getString("lumlrspasm"),
		    		resultSet.getString("lumlrstiff"),
		    		resultSet.getString("lu1"),
		    		resultSet.getString("lu1right"),
		    		resultSet.getString("lu1left"),
		    		resultSet.getString("lu2"),
		    		resultSet.getString("lu2right"),
		    		resultSet.getString("lu2left"),
		    		resultSet.getString("lu3"),
		    		resultSet.getString("lu3right"),
		    		resultSet.getString("lu3left"),
		    		resultSet.getString("lu4"),
		    		resultSet.getString("lu4right"),
		    		resultSet.getString("lu4left"),
		    		resultSet.getString("lu5"),
		    		resultSet.getString("lu5right"),
		    		resultSet.getString("lu5left"),
		    		resultSet.getString("lu6"),
		    		resultSet.getString("lu6right"),
		    		resultSet.getString("lu6left"),
		    		resultSet.getString("lu7"),
		    		resultSet.getString("lu7right"),
		    		resultSet.getString("lu7left"),
		    		
		    		
		    		
		    		
		    		
		    		
		    		
		    		resultSet.getString("hipflexright"),
		    		resultSet.getString("hipflexleft"),
		    		resultSet.getString("legextright"),
		    		resultSet.getString("legextleft"),
		    		resultSet.getString("dorsiflexright"),
		    		resultSet.getString("dorsiflexleft"),
		    		resultSet.getString("digitflexright"),
		    		resultSet.getString("digitflexleft"),
		    		resultSet.getString("heelright"),
		    		resultSet.getString("heelleft"),
		    		resultSet.getString("toeright"),
		    		resultSet.getString("toeleft"),
		    		resultSet.getString("patellarright"),
		    		resultSet.getString("patellarleft"),
		    		resultSet.getString("achillesright"),
		    		resultSet.getString("achillesleft"),
		    		resultSet.getString("babinskiright"),
		    		resultSet.getString("babinskileft")));
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
    return Physicalexam;
	
}
public List<Physicalexam> getPhysical(String physical_id){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Physicalexam> Physicalexam = new ArrayList<Physicalexam>();
    try{
    	String cmd="select * from tbl_physicalexam where physical_id='"+physical_id+"'";
    	System.out.println(physical_id);
		resultSet = statement.executeQuery(cmd);
		System.out.println(cmd);
		while(resultSet.next()){
			Physicalexam.add(new Physicalexam(resultSet.getString("physical_id"),
					resultSet.getString("patient_id"),
					resultSet.getString("sign"),
		    		resultSet.getString("name"),
		    		resultSet.getString("id"),
		    		resultSet.getString("date"),
		    		resultSet.getString("age"),
		    		resultSet.getString("sex"),
		    		resultSet.getString("height"),
		    		resultSet.getString("height1"),
		    		resultSet.getString("weight"),
		    		resultSet.getString("temp"),
		    		resultSet.getString("bp"),
		    		resultSet.getString("pulse"),
		    		resultSet.getString("appearance"),
		    		resultSet.getString("weight1"),
		    		resultSet.getString("gait"),
		    		resultSet.getString("head"),
		    		resultSet.getString("path"),
		    		resultSet.getString("path1"),
		    		resultSet.getString("posture"),
		    		resultSet.getString("romber"),
		    		resultSet.getString("exam"),
		    		resultSet.getString("abnormal"),
		    		resultSet.getString("headtiltright"),
		    		resultSet.getString("headtiltleft"),
		    		resultSet.getString("headtiltnormal"),
		    		resultSet.getString("rotationright"),
		    		resultSet.getString("rotationleft"),
		    		resultSet.getString("rotationnormal"),
		    		resultSet.getString("tmjright"),
		    		resultSet.getString("tmjleft"),
		    		resultSet.getString("tmjnormal"),
		    		resultSet.getString("highright"),
		    		resultSet.getString("highleft"),
		    		resultSet.getString("highnormal"),
		    		resultSet.getString("lordhyper"),
		    		resultSet.getString("lordhypo"),
		    		resultSet.getString("lordnormal"),
		    		resultSet.getString("lymphedema"),
		    		resultSet.getString("lymphnormal"),
		    		resultSet.getString("paraspain"),
		    		resultSet.getString("parasspasm"),
		    		resultSet.getString("parasedema"),
		    		resultSet.getString("parastriggerpoint"),
		    		resultSet.getString("trapeziusrl"),
		    		resultSet.getString("trapeziustono"),
		    		resultSet.getString("trapeziusnormal"),
		    		resultSet.getString("vertebraefix"),
		    		resultSet.getString("vertebraenofix"),
		    		resultSet.getString("scmrl"),
		    		resultSet.getString("scmtono"),
		    		resultSet.getString("scmnormal"),
		    		
		    		resultSet.getString("flexpain"),
		    		resultSet.getString("flexspasm"),
		    		resultSet.getString("flexstiff"),
		    		
		    		resultSet.getString("extpain"),
		    		resultSet.getString("extspasm"),
		    		resultSet.getString("extstiff"),
		    		
		    		resultSet.getString("rlfpain"),
		    		resultSet.getString("rlfspasm"),
		    		resultSet.getString("rlfstiff"),
		    		
		    		resultSet.getString("llfpain"),
		    		resultSet.getString("llfspasm"),
		    		resultSet.getString("llfstiff"),
		    		
		    		resultSet.getString("rrpain"),
		    		resultSet.getString("rrspasm"),
		    		resultSet.getString("rrstiff"),
		    		
		    		resultSet.getString("lrpain"),
		    		resultSet.getString("lrspasm"),
		    		resultSet.getString("lrstiff"),
		    		resultSet.getString("c5"),
		    		resultSet.getString("c5right"),
		    		resultSet.getString("c5left"),
		    		
		    		resultSet.getString("c6"),
		    		resultSet.getString("c6right"),
		    		resultSet.getString("c6left"),
		    		
		    		resultSet.getString("c7"),
		    		resultSet.getString("c7right"),
		    		resultSet.getString("c7left"),
		    	
		    		resultSet.getString("c8"),
		    		resultSet.getString("c8right"),
		    		resultSet.getString("c8left"),		    		
		    		resultSet.getString("t1"),
		    		resultSet.getString("t1right"),
		    		resultSet.getString("t1left"),
		    		
		    		resultSet.getString("other"),
		    		resultSet.getString("otherright"),
		    		resultSet.getString("otherleft"),
		    		resultSet.getString("deltoidright"),
		    		resultSet.getString("deltoidleft"),
		    		resultSet.getString("wristright"),
		    		resultSet.getString("wristleft"),
		    		resultSet.getString("wristflexright"),
		    		resultSet.getString("wristflexleft"),
		    		resultSet.getString("fingerflexright"),
		    		resultSet.getString("fingerflexleft"),
		    		resultSet.getString("fingeraddright"),
		    		resultSet.getString("fingeraddleft"),
		    		resultSet.getString("wristextright"),
		    		resultSet.getString("wristextleft"),
		    		resultSet.getString("bicepright"),
		    		resultSet.getString("bicepleft"),
		    		resultSet.getString("bracioradright"),
		    		resultSet.getString("bracioradleft"),
		    		resultSet.getString("tricepright"),
		    		resultSet.getString("tricepleft"),
		    		resultSet.getString("presentvisual"),
		    		resultSet.getString("presentrl"),
		    		
		    		resultSet.getString("highshoulderright"),
		    		resultSet.getString("highshoulderleft"),
		    		resultSet.getString("highshouldernormal"),
		    		resultSet.getString("curvatureright"),
		    		resultSet.getString("curvatureleft"),
		    		resultSet.getString("curvaturenormal"),
		    		resultSet.getString("wingingright"),
		    		resultSet.getString("wingingleft"),
		    		resultSet.getString("wingingnormal"),
		    		resultSet.getString("ribhumpright"),
		    		resultSet.getString("ribhumpleft"),
		    		resultSet.getString("ribhumpnormal"),
		    		resultSet.getString("chestmeasurein"),
		    		
		    		resultSet.getString("kyphosishyper"),
		    		resultSet.getString("kyphosishypo"),
		    		resultSet.getString("kyphosisnormal"),
		    		resultSet.getString("parapain"),
		    		resultSet.getString("paraspasm"),
		    		resultSet.getString("paraedema"),
		    		resultSet.getString("paratriggerpoint"),
		    		resultSet.getString("ribspost"),
		    		resultSet.getString("ribsnor"),
		    		resultSet.getString("vertefix"),
		    		resultSet.getString("vertenofix"),
		    		
		    		resultSet.getString("thoracicpain"),
		    		resultSet.getString("thoracicspasm"),
		    		resultSet.getString("thoracicstiff"),
		    		
		    		resultSet.getString("thoextpain"),
		    		resultSet.getString("thoextspasm"),
		    		resultSet.getString("thoextstiff"),
		    		
		    		resultSet.getString("thorlfpain"),
		    		resultSet.getString("thorlfspasm"),
		    		resultSet.getString("thorlfstiff"),
		    		
		    		resultSet.getString("thollfpain"),
		    		resultSet.getString("thollfspasm"),
		    		resultSet.getString("thollfstiff"),
		    		
		    		resultSet.getString("thorrpain"),
		    		resultSet.getString("thorrspasm"),
		    		resultSet.getString("thorrstiff"),
		    		
		    		resultSet.getString("tholrpain"),
		    		resultSet.getString("tholrspasm"),
		    		resultSet.getString("tholrstiff"),
		    		resultSet.getString("thot1"),
		    		resultSet.getString("thot1right"),
		    		resultSet.getString("thot1left"),
		    		
		    		resultSet.getString("thot4"),
		    		resultSet.getString("thot4right"),
		    		resultSet.getString("thot4left"),
		    		resultSet.getString("thot10"),
		    		resultSet.getString("thot10right"),
		    		resultSet.getString("thot10left"),
		    		
		    		resultSet.getString("thoother"),
		    		resultSet.getString("thootherright"),
		    		resultSet.getString("thootherleft"),
		    		resultSet.getString("myotomes"),
		    		resultSet.getString("positiveruq"),
		    		resultSet.getString("positiveluq"),
		    		resultSet.getString("positiverlq"),
		    		resultSet.getString("positivellq"),
		    		resultSet.getString("patientsmoker"),
		    		
		    		resultSet.getString("highcrestright"),
		    		resultSet.getString("highcrestleft"),
		    		resultSet.getString("highcrestnormal"),
		    		resultSet.getString("highpsisright"),
		    		resultSet.getString("highpsisleft"),
		    		resultSet.getString("highpsisnormal"),
		    		resultSet.getString("curveright"),
		    		resultSet.getString("curveleft"),
		    		resultSet.getString("curvenormal"),
		    		resultSet.getString("lordosishyper"),
		    		resultSet.getString("lordosishypo"),
		    		resultSet.getString("lordosisnormal"),
		    		resultSet.getString("paraspinalpain"),
		    		resultSet.getString("paraspinalspasm"),
		    		resultSet.getString("paraspinaledema"),
		    		resultSet.getString("paraspinaltp"),
		    		resultSet.getString("quadrl"),
		    		resultSet.getString("quadtono"),
		    		resultSet.getString("quadnor"),
		    		resultSet.getString("hamstringrl"),
		    		resultSet.getString("hamstringtono"),
		    		resultSet.getString("hamstringnor"),
		    		resultSet.getString("verfix"),
		    		resultSet.getString("vernofix"),
		    		resultSet.getString("abdomentender"),
		    		resultSet.getString("abdomenpulse"),
		    		resultSet.getString("abdomenascites"),
		    		
		    		resultSet.getString("lumflexpain"),
		    		resultSet.getString("lumflexspasm"),
		    		resultSet.getString("lumflexstiff"),
		    		
		    		resultSet.getString("lumextpain"),
		    		resultSet.getString("lumextspasm"),
		    		resultSet.getString("lumextstiff"),
		    		
		    		resultSet.getString("lumrlfpain"),
		    		resultSet.getString("lumrlfspasm"),
		    		resultSet.getString("lumrlfstiff"),
		    		
		    		resultSet.getString("lumllfpain"),
		    		resultSet.getString("lumllfspasm"),
		    		resultSet.getString("lumllfstiff"),
		    		
		    		resultSet.getString("lumrrpain"),
		    		resultSet.getString("lumrrspasm"),
		    		resultSet.getString("lumrrstiff"),
		    		
		    		resultSet.getString("lumlrpain"),
		    		resultSet.getString("lumlrspasm"),
		    		resultSet.getString("lumlrstiff"),
		    		resultSet.getString("lu1"),
		    		resultSet.getString("lu1right"),
		    		resultSet.getString("lu1left"),
		    		resultSet.getString("lu2"),
		    		resultSet.getString("lu2right"),
		    		resultSet.getString("lu2left"),
		    		resultSet.getString("lu3"),
		    		resultSet.getString("lu3right"),
		    		resultSet.getString("lu3left"),
		    		resultSet.getString("lu4"),
		    		resultSet.getString("lu4right"),
		    		resultSet.getString("lu4left"),
		    		resultSet.getString("lu5"),
		    		resultSet.getString("lu5right"),
		    		resultSet.getString("lu5left"),
		    		resultSet.getString("lu6"),
		    		resultSet.getString("lu6right"),
		    		resultSet.getString("lu6left"),
		    		resultSet.getString("lu7"),
		    		resultSet.getString("lu7right"),
		    		resultSet.getString("lu7left"),
		    		
		    		
		    		
		    		
		    		
		    		
		    		
		    		resultSet.getString("hipflexright"),
		    		resultSet.getString("hipflexleft"),
		    		resultSet.getString("legextright"),
		    		resultSet.getString("legextleft"),
		    		resultSet.getString("dorsiflexright"),
		    		resultSet.getString("dorsiflexleft"),
		    		resultSet.getString("digitflexright"),
		    		resultSet.getString("digitflexleft"),
		    		resultSet.getString("heelright"),
		    		resultSet.getString("heelleft"),
		    		resultSet.getString("toeright"),
		    		resultSet.getString("toeleft"),
		    		resultSet.getString("patellarright"),
		    		resultSet.getString("patellarleft"),
		    		resultSet.getString("achillesright"),
		    		resultSet.getString("achillesleft"),
		    		resultSet.getString("babinskiright"),
		    		resultSet.getString("babinskileft")));
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
    return Physicalexam;
	
}
public List<Physicalexam> getPhysicalpatient_id(String patientid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Physicalexam> Physicalexam = new ArrayList<Physicalexam>();
    try{
    	String cmd="select * from tbl_physicalexam where patient_id='"+patientid+"'";
    	
		resultSet = statement.executeQuery(cmd);
		System.out.println(cmd);
		while(resultSet.next()){
			Physicalexam.add(new Physicalexam(resultSet.getString("physical_id"),
					resultSet.getString("patient_id"),
					resultSet.getString("sign"),
		    		resultSet.getString("name"),
		    		resultSet.getString("id"),
		    		resultSet.getString("date"),
		    		resultSet.getString("age"),
		    		resultSet.getString("sex"),
		    		resultSet.getString("height"),
		    		resultSet.getString("height1"),
		    		resultSet.getString("weight"),
		    		resultSet.getString("temp"),
		    		resultSet.getString("bp"),
		    		resultSet.getString("pulse"),
		    		resultSet.getString("appearance"),
		    		resultSet.getString("weight1"),
		    		resultSet.getString("gait"),
		    		resultSet.getString("head"),
		    		resultSet.getString("path"),
		    		resultSet.getString("path1"),
		    		resultSet.getString("posture"),
		    		resultSet.getString("romber"),
		    		resultSet.getString("exam"),
		    		resultSet.getString("abnormal"),
		    		resultSet.getString("headtiltright"),
		    		resultSet.getString("headtiltleft"),
		    		resultSet.getString("headtiltnormal"),
		    		resultSet.getString("rotationright"),
		    		resultSet.getString("rotationleft"),
		    		resultSet.getString("rotationnormal"),
		    		resultSet.getString("tmjright"),
		    		resultSet.getString("tmjleft"),
		    		resultSet.getString("tmjnormal"),
		    		resultSet.getString("highright"),
		    		resultSet.getString("highleft"),
		    		resultSet.getString("highnormal"),
		    		resultSet.getString("lordhyper"),
		    		resultSet.getString("lordhypo"),
		    		resultSet.getString("lordnormal"),
		    		resultSet.getString("lymphedema"),
		    		resultSet.getString("lymphnormal"),
		    		resultSet.getString("paraspain"),
		    		resultSet.getString("parasspasm"),
		    		resultSet.getString("parasedema"),
		    		resultSet.getString("parastriggerpoint"),
		    		resultSet.getString("trapeziusrl"),
		    		resultSet.getString("trapeziustono"),
		    		resultSet.getString("trapeziusnormal"),
		    		resultSet.getString("vertebraefix"),
		    		resultSet.getString("vertebraenofix"),
		    		resultSet.getString("scmrl"),
		    		resultSet.getString("scmtono"),
		    		resultSet.getString("scmnormal"),
		    		
		    		resultSet.getString("flexpain"),
		    		resultSet.getString("flexspasm"),
		    		resultSet.getString("flexstiff"),
		    		
		    		resultSet.getString("extpain"),
		    		resultSet.getString("extspasm"),
		    		resultSet.getString("extstiff"),
		    		
		    		resultSet.getString("rlfpain"),
		    		resultSet.getString("rlfspasm"),
		    		resultSet.getString("rlfstiff"),
		    		
		    		resultSet.getString("llfpain"),
		    		resultSet.getString("llfspasm"),
		    		resultSet.getString("llfstiff"),
		    		
		    		resultSet.getString("rrpain"),
		    		resultSet.getString("rrspasm"),
		    		resultSet.getString("rrstiff"),
		    		
		    		resultSet.getString("lrpain"),
		    		resultSet.getString("lrspasm"),
		    		resultSet.getString("lrstiff"),
		    		resultSet.getString("c5"),
		    		resultSet.getString("c5right"),
		    		resultSet.getString("c5left"),
		    		
		    		resultSet.getString("c6"),
		    		resultSet.getString("c6right"),
		    		resultSet.getString("c6left"),
		    		
		    		resultSet.getString("c7"),
		    		resultSet.getString("c7right"),
		    		resultSet.getString("c7left"),
		    	
		    		resultSet.getString("c8"),
		    		resultSet.getString("c8right"),
		    		resultSet.getString("c8left"),		    		
		    		resultSet.getString("t1"),
		    		resultSet.getString("t1right"),
		    		resultSet.getString("t1left"),
		    		
		    		resultSet.getString("other"),
		    		resultSet.getString("otherright"),
		    		resultSet.getString("otherleft"),
		    		resultSet.getString("deltoidright"),
		    		resultSet.getString("deltoidleft"),
		    		resultSet.getString("wristright"),
		    		resultSet.getString("wristleft"),
		    		resultSet.getString("wristflexright"),
		    		resultSet.getString("wristflexleft"),
		    		resultSet.getString("fingerflexright"),
		    		resultSet.getString("fingerflexleft"),
		    		resultSet.getString("fingeraddright"),
		    		resultSet.getString("fingeraddleft"),
		    		resultSet.getString("wristextright"),
		    		resultSet.getString("wristextleft"),
		    		resultSet.getString("bicepright"),
		    		resultSet.getString("bicepleft"),
		    		resultSet.getString("bracioradright"),
		    		resultSet.getString("bracioradleft"),
		    		resultSet.getString("tricepright"),
		    		resultSet.getString("tricepleft"),
		    		resultSet.getString("presentvisual"),
		    		resultSet.getString("presentrl"),
		    		
		    		resultSet.getString("highshoulderright"),
		    		resultSet.getString("highshoulderleft"),
		    		resultSet.getString("highshouldernormal"),
		    		resultSet.getString("curvatureright"),
		    		resultSet.getString("curvatureleft"),
		    		resultSet.getString("curvaturenormal"),
		    		resultSet.getString("wingingright"),
		    		resultSet.getString("wingingleft"),
		    		resultSet.getString("wingingnormal"),
		    		resultSet.getString("ribhumpright"),
		    		resultSet.getString("ribhumpleft"),
		    		resultSet.getString("ribhumpnormal"),
		    		resultSet.getString("chestmeasurein"),
		    		
		    		resultSet.getString("kyphosishyper"),
		    		resultSet.getString("kyphosishypo"),
		    		resultSet.getString("kyphosisnormal"),
		    		resultSet.getString("parapain"),
		    		resultSet.getString("paraspasm"),
		    		resultSet.getString("paraedema"),
		    		resultSet.getString("paratriggerpoint"),
		    		resultSet.getString("ribspost"),
		    		resultSet.getString("ribsnor"),
		    		resultSet.getString("vertefix"),
		    		resultSet.getString("vertenofix"),
		    		
		    		resultSet.getString("thoracicpain"),
		    		resultSet.getString("thoracicspasm"),
		    		resultSet.getString("thoracicstiff"),
		    		
		    		resultSet.getString("thoextpain"),
		    		resultSet.getString("thoextspasm"),
		    		resultSet.getString("thoextstiff"),
		    		
		    		resultSet.getString("thorlfpain"),
		    		resultSet.getString("thorlfspasm"),
		    		resultSet.getString("thorlfstiff"),
		    		
		    		resultSet.getString("thollfpain"),
		    		resultSet.getString("thollfspasm"),
		    		resultSet.getString("thollfstiff"),
		    		
		    		resultSet.getString("thorrpain"),
		    		resultSet.getString("thorrspasm"),
		    		resultSet.getString("thorrstiff"),
		    		
		    		resultSet.getString("tholrpain"),
		    		resultSet.getString("tholrspasm"),
		    		resultSet.getString("tholrstiff"),
		    		resultSet.getString("thot1"),
		    		resultSet.getString("thot1right"),
		    		resultSet.getString("thot1left"),
		    		
		    		resultSet.getString("thot4"),
		    		resultSet.getString("thot4right"),
		    		resultSet.getString("thot4left"),
		    		resultSet.getString("thot10"),
		    		resultSet.getString("thot10right"),
		    		resultSet.getString("thot10left"),
		    		
		    		resultSet.getString("thoother"),
		    		resultSet.getString("thootherright"),
		    		resultSet.getString("thootherleft"),
		    		resultSet.getString("myotomes"),
		    		resultSet.getString("positiveruq"),
		    		resultSet.getString("positiveluq"),
		    		resultSet.getString("positiverlq"),
		    		resultSet.getString("positivellq"),
		    		resultSet.getString("patientsmoker"),
		    		
		    		resultSet.getString("highcrestright"),
		    		resultSet.getString("highcrestleft"),
		    		resultSet.getString("highcrestnormal"),
		    		resultSet.getString("highpsisright"),
		    		resultSet.getString("highpsisleft"),
		    		resultSet.getString("highpsisnormal"),
		    		resultSet.getString("curveright"),
		    		resultSet.getString("curveleft"),
		    		resultSet.getString("curvenormal"),
		    		resultSet.getString("lordosishyper"),
		    		resultSet.getString("lordosishypo"),
		    		resultSet.getString("lordosisnormal"),
		    		resultSet.getString("paraspinalpain"),
		    		resultSet.getString("paraspinalspasm"),
		    		resultSet.getString("paraspinaledema"),
		    		resultSet.getString("paraspinaltp"),
		    		resultSet.getString("quadrl"),
		    		resultSet.getString("quadtono"),
		    		resultSet.getString("quadnor"),
		    		resultSet.getString("hamstringrl"),
		    		resultSet.getString("hamstringtono"),
		    		resultSet.getString("hamstringnor"),
		    		resultSet.getString("verfix"),
		    		resultSet.getString("vernofix"),
		    		resultSet.getString("abdomentender"),
		    		resultSet.getString("abdomenpulse"),
		    		resultSet.getString("abdomenascites"),
		    		
		    		resultSet.getString("lumflexpain"),
		    		resultSet.getString("lumflexspasm"),
		    		resultSet.getString("lumflexstiff"),
		    		
		    		resultSet.getString("lumextpain"),
		    		resultSet.getString("lumextspasm"),
		    		resultSet.getString("lumextstiff"),
		    		
		    		resultSet.getString("lumrlfpain"),
		    		resultSet.getString("lumrlfspasm"),
		    		resultSet.getString("lumrlfstiff"),
		    		
		    		resultSet.getString("lumllfpain"),
		    		resultSet.getString("lumllfspasm"),
		    		resultSet.getString("lumllfstiff"),
		    		
		    		resultSet.getString("lumrrpain"),
		    		resultSet.getString("lumrrspasm"),
		    		resultSet.getString("lumrrstiff"),
		    		
		    		resultSet.getString("lumlrpain"),
		    		resultSet.getString("lumlrspasm"),
		    		resultSet.getString("lumlrstiff"),
		    		resultSet.getString("lu1"),
		    		resultSet.getString("lu1right"),
		    		resultSet.getString("lu1left"),
		    		resultSet.getString("lu2"),
		    		resultSet.getString("lu2right"),
		    		resultSet.getString("lu2left"),
		    		resultSet.getString("lu3"),
		    		resultSet.getString("lu3right"),
		    		resultSet.getString("lu3left"),
		    		resultSet.getString("lu4"),
		    		resultSet.getString("lu4right"),
		    		resultSet.getString("lu4left"),
		    		resultSet.getString("lu5"),
		    		resultSet.getString("lu5right"),
		    		resultSet.getString("lu5left"),
		    		resultSet.getString("lu6"),
		    		resultSet.getString("lu6right"),
		    		resultSet.getString("lu6left"),
		    		resultSet.getString("lu7"),
		    		resultSet.getString("lu7right"),
		    		resultSet.getString("lu7left"),
		    		
		    		
		    		
		    		
		    		
		    		
		    		
		    		resultSet.getString("hipflexright"),
		    		resultSet.getString("hipflexleft"),
		    		resultSet.getString("legextright"),
		    		resultSet.getString("legextleft"),
		    		resultSet.getString("dorsiflexright"),
		    		resultSet.getString("dorsiflexleft"),
		    		resultSet.getString("digitflexright"),
		    		resultSet.getString("digitflexleft"),
		    		resultSet.getString("heelright"),
		    		resultSet.getString("heelleft"),
		    		resultSet.getString("toeright"),
		    		resultSet.getString("toeleft"),
		    		resultSet.getString("patellarright"),
		    		resultSet.getString("patellarleft"),
		    		resultSet.getString("achillesright"),
		    		resultSet.getString("achillesleft"),
		    		resultSet.getString("babinskiright"),
		    		resultSet.getString("babinskileft")));
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
    return Physicalexam;
	
}

public int updatephysicalexam(Physicalexam physicalexam,String physical_id,String admin)
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
    	 //System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_physicalexam SET sign='"+physicalexam.getSign()+"','"+physicalexam.getName()+"','"+physicalexam.getId()+"','"+physicalexam.getDate()+"','"+physicalexam.getAge()+"','"+physicalexam.getSex()+"','"+physicalexam.getHeight()+"','"+physicalexam.getHeight1()+"','"+physicalexam.getWeight()+"','"+physicalexam.getTemp()+"','"+physicalexam.getBp()+"','"+physicalexam.getPulse()+"','"+physicalexam.getAppearance()+"','"+physicalexam.getWeight1()+"','"+physicalexam.getGait()+"','"+physicalexam.getHead()+"','"+physicalexam.getPath()+"','"+physicalexam.getPath1()+"','"+physicalexam.getPosture()+"','"+physicalexam.getRomber()+"','"+physicalexam.getExam()+"','"+physicalexam.getAbnormal()+"','"+physicalexam.getHeadtiltright()+"','"+physicalexam.getHeadtiltleft()+"','"+physicalexam.getHeadtiltnormal()+"','"+physicalexam.getRotationright()+"','"+physicalexam.getRotationleft()+"','"+physicalexam.getRotationnormal()+"','"+physicalexam.getTmjright()+"','"+physicalexam.getTmjleft()+"','"+physicalexam.getTmjnormal()+"','"+physicalexam.getHighright()+"','"+physicalexam.getHighleft()+"','"+physicalexam.getHighnormal()+"','"+physicalexam.getLordhyper()+"','"+physicalexam.getLordhypo()+"','"+physicalexam.getLordnormal()+"','"+physicalexam.getLymphedema()+"','"+physicalexam.getLymphnormal()+"','"+physicalexam.getParaspain()+"','"+physicalexam.getParasspasm()+"','"+physicalexam.getParasedema()+"','"+physicalexam.getParastriggerpoint()+"','"+physicalexam.getTrapeziusrl()+"','"+physicalexam.getTrapeziustono()+"','"+physicalexam.getTrapeziusnormal()+"','"+physicalexam.getTrapeziusrl()+"','"+physicalexam.getTrapeziustono()+"','"+physicalexam.getTrapeziusnormal()+"','"+physicalexam.getVertebraefix()+"','"+physicalexam.getVertebraenofix()+"','"+physicalexam.getFlexpain()+"','"+physicalexam.getFlexspasm()+"','"+physicalexam.getFlexstiff()+"','"+physicalexam.getExtpain()+"','"+physicalexam.getExtspasm()+"','"+physicalexam.getExtstiff()+"','"+physicalexam.getRlfpain()+"','"+physicalexam.getRlfspasm()+"','"+physicalexam.getRlfstiff()+"','"+physicalexam.getLlfpain()+"','"+physicalexam.getLlfspasm()+"','"+physicalexam.getLlfstiff()+"','"+physicalexam.getRrpain()+"','"+physicalexam.getRrspasm()+"','"+physicalexam.getRrstiff()+"','"+physicalexam.getLrpain()+"','"+physicalexam.getLrspasm()+"','"+physicalexam.getLrstiff()+"','"+physicalexam.getC5()+"','"+physicalexam.getC5right()+"','"+physicalexam.getC5left()+"','"+physicalexam.getC6()+"','"+physicalexam.getC6right()+"','"+physicalexam.getC6left()+"','"+physicalexam.getC7()+"','"+physicalexam.getC7right()+"','"+physicalexam.getC7left()+"','"+physicalexam.getC8()+"','"+physicalexam.getC8right()+"','"+physicalexam.getC8left()+"','"+physicalexam.getT1()+"','"+physicalexam.getT1right()+"','"+physicalexam.getT1left()+"','"+physicalexam.getOther()+"','"+physicalexam.getOtherright()+"','"+physicalexam.getOtherleft()+"','"+physicalexam.getDeltoidright()+"','"+physicalexam.getDeltoidleft()+"','"+physicalexam.getWristright()+"','"+physicalexam.getWristleft()+"','"+physicalexam.getWristflexright()+"','"+physicalexam.getWristflexleft()+"','"+physicalexam.getFingerflexright()+"','"+physicalexam.getFingerflexleft()+"','"+physicalexam.getFingeraddright()+"','"+physicalexam.getFingeraddleft()+"','"+physicalexam.getWristextright()+"','"+physicalexam.getWristextleft()+"','"+physicalexam.getBicepright()+"','"+physicalexam.getBicepleft()+"','"+physicalexam.getBracioradright()+"','"+physicalexam.getBracioradleft()+"','"+physicalexam.getTricepright()+"','"+physicalexam.getTricepleft()+"','"+physicalexam.getpresentvisual()+"','"+physicalexam.getPresentrl()+"','"+physicalexam.getHighshoulderright()+"','"+physicalexam.getHighshoulderleft()+"','"+physicalexam.getHighshouldernormal()+"','"+physicalexam.getCurvatureright()+"','"+physicalexam.getCurvatureleft()+"','"+physicalexam.getCurvaturenormal()+"','"+physicalexam.getWingingright()+"','"+physicalexam.getWingingleft()+"','"+physicalexam.getWingingnormal()+"','"+physicalexam.getRibhumpright()+"','"+physicalexam.getRibhumpleft()+"','"+physicalexam.getRibhumpnormal()+"','"+physicalexam.getChestmeasurein()+"','"+physicalexam.getKyphosishyper()+"','"+physicalexam.getKyphosishypo()+"','"+physicalexam.getKyphosisnormal()+"','"+physicalexam.getParapain()+"','"+physicalexam.getParaspasm()+"','"+physicalexam.getParaedema()+"','"+physicalexam.getParatriggerpoint()+"','"+physicalexam.getRibspost()+"','"+physicalexam.getRibsnor()+"','"+physicalexam.getVertefix()+"','"+physicalexam.getVertenofix()+"','"+physicalexam.getThoracicpain()+"','"+physicalexam.getThoracicspasm()+"','"+physicalexam.getThoracicstiff()+"','"+physicalexam.getThoextpain()+"','"+physicalexam.getThoextspasm()+"','"+physicalexam.getThoextstiff()+"','"+physicalexam.getThorlfpain()+"','"+physicalexam.getThorlfspasm()+"','"+physicalexam.getThorlfstiff()+"','"+physicalexam.getThollfpain()+"','"+physicalexam.getThollfspasm()+"','"+physicalexam.getThollfstiff()+"','"+physicalexam.getThorrpain()+"','"+physicalexam.getThorrspasm()+"','"+physicalexam.getThorrstiff()+"','"+physicalexam.getTholrpain()+"','"+physicalexam.getTholrspasm()+"','"+physicalexam.getTholrstiff()+"','"+physicalexam.getThot1()+"','"+physicalexam.getThot1right()+"','"+physicalexam.getThot1left()+"','"+physicalexam.getThot4()+"','"+physicalexam.getThot4right()+"','"+physicalexam.getThot4left()+"','"+physicalexam.getThot10()+"','"+physicalexam.getThot10right()+"','"+physicalexam.getThot10left()+"','"+physicalexam.getThoother()+"','"+physicalexam.getThootherright()+"','"+physicalexam.getThootherleft()+"','"+physicalexam.getMyotomes()+"','"+physicalexam.getPositiveruq()+"','"+physicalexam.getPositiveluq()+"','"+physicalexam.getPositiverlq()+"','"+physicalexam.getPositivellq()+"','"+physicalexam.getPatientsmoker()+"','"+physicalexam.getHighcrestright()+"','"+physicalexam.getHighcrestleft()+"','"+physicalexam.getHighcrestnormal()+"','"+physicalexam.getHighpsisright()+"','"+physicalexam.getHighpsisleft()+"','"+physicalexam.getHighpsisnormal()+"','"+physicalexam.getCurveright()+"','"+physicalexam.getCurveleft()+"','"+physicalexam.getCurvaturenormal()+"','"+physicalexam.getLordosishyper()+"','"+physicalexam.getLordosishypo()+"','"+physicalexam.getLordosisnormal()+"','"+physicalexam.getParaspinalpain()+"','"+physicalexam.getParaspinalspasm()+"','"+physicalexam.getParaspinaledema()+"','"+physicalexam.getParaspinaltp()+"','"+physicalexam.getQuadrl()+"','"+physicalexam.getQuadtono()+"','"+physicalexam.getQuadnor()+"','"+physicalexam.getHamstringrl()+"','"+physicalexam.getHamstringtono()+"','"+physicalexam.getHamstringnor()+"','"+physicalexam.getVerfix()+"','"+physicalexam.getVernofix()+"','"+physicalexam.getAbdomentender()+"','"+physicalexam.getAbdomenpulse()+"','"+physicalexam.getAbdomenascites()+"','"+physicalexam.getLumflexpain()+"','"+physicalexam.getLumflexspasm()+"','"+physicalexam.getLumflexstiff()+"','"+physicalexam.getLumextpain()+"','"+physicalexam.getLumextspasm()+"','"+physicalexam.getLumextstiff()+"','"+physicalexam.getLumrlfpain()+"','"+physicalexam.getLumrlfspasm()+"','"+physicalexam.getLumrlfstiff()+"','"+physicalexam.getLumllfpain()+"','"+physicalexam.getLumllfspasm()+"','"+physicalexam.getLumllfstiff()+"','"+physicalexam.getLumrrpain()+"','"+physicalexam.getLumrrspasm()+"','"+physicalexam.getLumrrstiff()+"','"+physicalexam.getLumlrpain()+"','"+physicalexam.getLumlrspasm()+"','"+physicalexam.getLumlrstiff()+"','"+physicalexam.getLu1()+"','"+physicalexam.getLu1right()+"','"+physicalexam.getLu1left()+"','"+physicalexam.getLu2()+"','"+physicalexam.getLu2right()+"','"+physicalexam.getLu2left()+"','"+physicalexam.getLu3()+"','"+physicalexam.getLu3right()+"','"+physicalexam.getLu3left()+"','"+physicalexam.getLu4()+"','"+physicalexam.getLu4right()+"','"+physicalexam.getLu4left()+"','"+physicalexam.getLu5()+"','"+physicalexam.getLu5right()+"','"+physicalexam.getLu5left()+"','"+physicalexam.getLu6()+"','"+physicalexam.getLu6right()+"','"+physicalexam.getLu6left()+"','"+physicalexam.getLu7()+"','"+physicalexam.getLu7right()+"','"+physicalexam.getLu7left()+"','"+physicalexam.getHipflexright()+"','"+physicalexam.getHipflexleft()+"','"+physicalexam.getLegextright()+"','"+physicalexam.getLegextleft()+"','"+physicalexam.getDorsiflexright()+"','"+physicalexam.getDorsiflexleft()+"','"+physicalexam.getDigitflexright()+"','"+physicalexam.getDigitflexleft()+"','"+physicalexam.getHeelright()+"','"+physicalexam.getHeelleft()+"','"+physicalexam.getToeright()+"','"+physicalexam.getToeleft()+"','"+physicalexam.getPatellarright()+"','"+physicalexam.getPatellarleft()+"','"+physicalexam.getAchillesright()+"','"+physicalexam.getAchillesleft()+"','"+physicalexam.getBabinskiright()+"','"+physicalexam.getBabinskileft()+"' WHERE physical_id='"+physical_id+"';";
    			
    			String Desc="Update physicalexam "+physicalexam.getName();
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
public int deletephysicalexam(String physical_id){
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
    	 String cmd_getpatient_name="select name from tbl_physicalexam where physical_id='"+physical_id+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_name);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_physicalexam where physical_id='"+physical_id+"'");
			
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
public List<Physicalexam> getlimitedphysicalexam(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Physicalexam> Physicalexam = new ArrayList<Physicalexam>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_physicalexam order by name asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			Physicalexam.add(new Physicalexam(resultSet.getString("physical_id"),
					resultSet.getString("patient_id"),
					resultSet.getString("sign"),
		    		resultSet.getString("name"),
		    		resultSet.getString("id"),
		    		resultSet.getString("date"),
		    		resultSet.getString("age"),
		    		resultSet.getString("sex"),
		    		resultSet.getString("height"),
		    		resultSet.getString("height1"),
		    		resultSet.getString("weight"),
		    		resultSet.getString("temp"),
		    		resultSet.getString("bp"),
		    		resultSet.getString("pulse"),
		    		resultSet.getString("appearance"),
		    		resultSet.getString("weight1"),
		    		resultSet.getString("gait"),
		    		resultSet.getString("head"),
		    		resultSet.getString("path"),
		    		resultSet.getString("path1"),
		    		resultSet.getString("posture"),
		    		resultSet.getString("romber"),
		    		resultSet.getString("exam"),
		    		resultSet.getString("abnormal"),
		    		resultSet.getString("headtiltright"),
		    		resultSet.getString("headtiltleft"),
		    		resultSet.getString("headtiltnormal"),
		    		resultSet.getString("rotationright"),
		    		resultSet.getString("rotationleft"),
		    		resultSet.getString("rotationnormal"),
		    		resultSet.getString("tmjright"),
		    		resultSet.getString("tmjleft"),
		    		resultSet.getString("tmjnormal"),
		    		resultSet.getString("highright"),
		    		resultSet.getString("highleft"),
		    		resultSet.getString("highnormal"),
		    		resultSet.getString("lordhyper"),
		    		resultSet.getString("lordhypo"),
		    		resultSet.getString("lordnormal"),
		    		resultSet.getString("lymphedema"),
		    		resultSet.getString("lymphnormal"),
		    		resultSet.getString("paraspain"),
		    		resultSet.getString("parasspasm"),
		    		resultSet.getString("parasedema"),
		    		resultSet.getString("parastriggerpoint"),
		    		resultSet.getString("trapeziusrl"),
		    		resultSet.getString("trapeziustono"),
		    		resultSet.getString("trapeziusnormal"),
		    		resultSet.getString("vertebraefix"),
		    		resultSet.getString("vertebraenofix"),
		    		resultSet.getString("scmrl"),
		    		resultSet.getString("scmtono"),
		    		resultSet.getString("scmnormal"),
		    		
		    		resultSet.getString("flexpain"),
		    		resultSet.getString("flexspasm"),
		    		resultSet.getString("flexstiff"),
		    		
		    		resultSet.getString("extpain"),
		    		resultSet.getString("extspasm"),
		    		resultSet.getString("extstiff"),
		    		
		    		resultSet.getString("rlfpain"),
		    		resultSet.getString("rlfspasm"),
		    		resultSet.getString("rlfstiff"),
		    		
		    		resultSet.getString("llfpain"),
		    		resultSet.getString("llfspasm"),
		    		resultSet.getString("llfstiff"),
		    		
		    		resultSet.getString("rrpain"),
		    		resultSet.getString("rrspasm"),
		    		resultSet.getString("rrstiff"),
		    		
		    		resultSet.getString("lrpain"),
		    		resultSet.getString("lrspasm"),
		    		resultSet.getString("lrstiff"),
		    		resultSet.getString("c5"),
		    		resultSet.getString("c5right"),
		    		resultSet.getString("c5left"),
		    		
		    		resultSet.getString("c6"),
		    		resultSet.getString("c6right"),
		    		resultSet.getString("c6left"),
		    		
		    		resultSet.getString("c7"),
		    		resultSet.getString("c7right"),
		    		resultSet.getString("c7left"),
		    	
		    		resultSet.getString("c8"),
		    		resultSet.getString("c8right"),
		    		resultSet.getString("c8left"),		    		
		    		resultSet.getString("t1"),
		    		resultSet.getString("t1right"),
		    		resultSet.getString("t1left"),
		    		
		    		resultSet.getString("other"),
		    		resultSet.getString("otherright"),
		    		resultSet.getString("otherleft"),
		    		resultSet.getString("deltoidright"),
		    		resultSet.getString("deltoidleft"),
		    		resultSet.getString("wristright"),
		    		resultSet.getString("wristleft"),
		    		resultSet.getString("wristflexright"),
		    		resultSet.getString("wristflexleft"),
		    		resultSet.getString("fingerflexright"),
		    		resultSet.getString("fingerflexleft"),
		    		resultSet.getString("fingeraddright"),
		    		resultSet.getString("fingeraddleft"),
		    		resultSet.getString("wristextright"),
		    		resultSet.getString("wristextleft"),
		    		resultSet.getString("bicepright"),
		    		resultSet.getString("bicepleft"),
		    		resultSet.getString("bracioradright"),
		    		resultSet.getString("bracioradleft"),
		    		resultSet.getString("tricepright"),
		    		resultSet.getString("tricepleft"),
		    		resultSet.getString("presentvisual"),
		    		resultSet.getString("presentrl"),
		    		
		    		resultSet.getString("highshoulderright"),
		    		resultSet.getString("highshoulderleft"),
		    		resultSet.getString("highshouldernormal"),
		    		resultSet.getString("curvatureright"),
		    		resultSet.getString("curvatureleft"),
		    		resultSet.getString("curvaturenormal"),
		    		resultSet.getString("wingingright"),
		    		resultSet.getString("wingingleft"),
		    		resultSet.getString("wingingnormal"),
		    		resultSet.getString("ribhumpright"),
		    		resultSet.getString("ribhumpleft"),
		    		resultSet.getString("ribhumpnormal"),
		    		resultSet.getString("chestmeasurein"),
		    		
		    		resultSet.getString("kyphosishyper"),
		    		resultSet.getString("kyphosishypo"),
		    		resultSet.getString("kyphosisnormal"),
		    		resultSet.getString("parapain"),
		    		resultSet.getString("paraspasm"),
		    		resultSet.getString("paraedema"),
		    		resultSet.getString("paratriggerpoint"),
		    		resultSet.getString("ribspost"),
		    		resultSet.getString("ribsnor"),
		    		resultSet.getString("vertefix"),
		    		resultSet.getString("vertenofix"),
		    		
		    		resultSet.getString("thoracicpain"),
		    		resultSet.getString("thoracicspasm"),
		    		resultSet.getString("thoracicstiff"),
		    		
		    		resultSet.getString("thoextpain"),
		    		resultSet.getString("thoextspasm"),
		    		resultSet.getString("thoextstiff"),
		    		
		    		resultSet.getString("thorlfpain"),
		    		resultSet.getString("thorlfspasm"),
		    		resultSet.getString("thorlfstiff"),
		    		
		    		resultSet.getString("thollfpain"),
		    		resultSet.getString("thollfspasm"),
		    		resultSet.getString("thollfstiff"),
		    		
		    		resultSet.getString("thorrpain"),
		    		resultSet.getString("thorrspasm"),
		    		resultSet.getString("thorrstiff"),
		    		
		    		resultSet.getString("tholrpain"),
		    		resultSet.getString("tholrspasm"),
		    		resultSet.getString("tholrstiff"),
		    		resultSet.getString("thot1"),
		    		resultSet.getString("thot1right"),
		    		resultSet.getString("thot1left"),
		    		
		    		resultSet.getString("thot4"),
		    		resultSet.getString("thot4right"),
		    		resultSet.getString("thot4left"),
		    		resultSet.getString("thot10"),
		    		resultSet.getString("thot10right"),
		    		resultSet.getString("thot10left"),
		    		
		    		resultSet.getString("thoother"),
		    		resultSet.getString("thootherright"),
		    		resultSet.getString("thootherleft"),
		    		resultSet.getString("myotomes"),
		    		resultSet.getString("positiveruq"),
		    		resultSet.getString("positiveluq"),
		    		resultSet.getString("positiverlq"),
		    		resultSet.getString("positivellq"),
		    		resultSet.getString("patientsmoker"),
		    		
		    		resultSet.getString("highcrestright"),
		    		resultSet.getString("highcrestleft"),
		    		resultSet.getString("highcrestnormal"),
		    		resultSet.getString("highpsisright"),
		    		resultSet.getString("highpsisleft"),
		    		resultSet.getString("highpsisnormal"),
		    		resultSet.getString("curveright"),
		    		resultSet.getString("curveleft"),
		    		resultSet.getString("curvenormal"),
		    		resultSet.getString("lordosishyper"),
		    		resultSet.getString("lordosishypo"),
		    		resultSet.getString("lordosisnormal"),
		    		resultSet.getString("paraspinalpain"),
		    		resultSet.getString("paraspinalspasm"),
		    		resultSet.getString("paraspinaledema"),
		    		resultSet.getString("paraspinaltp"),
		    		resultSet.getString("quadrl"),
		    		resultSet.getString("quadtono"),
		    		resultSet.getString("quadnor"),
		    		resultSet.getString("hamstringrl"),
		    		resultSet.getString("hamstringtono"),
		    		resultSet.getString("hamstringnor"),
		    		resultSet.getString("verfix"),
		    		resultSet.getString("vernofix"),
		    		resultSet.getString("abdomentender"),
		    		resultSet.getString("abdomenpulse"),
		    		resultSet.getString("abdomenascites"),
		    		
		    		resultSet.getString("lumflexpain"),
		    		resultSet.getString("lumflexspasm"),
		    		resultSet.getString("lumflexstiff"),
		    		
		    		resultSet.getString("lumextpain"),
		    		resultSet.getString("lumextspasm"),
		    		resultSet.getString("lumextstiff"),
		    		
		    		resultSet.getString("lumrlfpain"),
		    		resultSet.getString("lumrlfspasm"),
		    		resultSet.getString("lumrlfstiff"),
		    		
		    		resultSet.getString("lumllfpain"),
		    		resultSet.getString("lumllfspasm"),
		    		resultSet.getString("lumllfstiff"),
		    		
		    		resultSet.getString("lumrrpain"),
		    		resultSet.getString("lumrrspasm"),
		    		resultSet.getString("lumrrstiff"),
		    		
		    		resultSet.getString("lumlrpain"),
		    		resultSet.getString("lumlrspasm"),
		    		resultSet.getString("lumlrstiff"),
		    		resultSet.getString("lu1"),
		    		resultSet.getString("lu1right"),
		    		resultSet.getString("lu1left"),
		    		resultSet.getString("lu2"),
		    		resultSet.getString("lu2right"),
		    		resultSet.getString("lu2left"),
		    		resultSet.getString("lu3"),
		    		resultSet.getString("lu3right"),
		    		resultSet.getString("lu3left"),
		    		resultSet.getString("lu4"),
		    		resultSet.getString("lu4right"),
		    		resultSet.getString("lu4left"),
		    		resultSet.getString("lu5"),
		    		resultSet.getString("lu5right"),
		    		resultSet.getString("lu5left"),
		    		resultSet.getString("lu6"),
		    		resultSet.getString("lu6right"),
		    		resultSet.getString("lu6left"),
		    		resultSet.getString("lu7"),
		    		resultSet.getString("lu7right"),
		    		resultSet.getString("lu7left"),
		    		
		    		
		    		
		    		
		    		
		    		
		    		
		    		resultSet.getString("hipflexright"),
		    		resultSet.getString("hipflexleft"),
		    		resultSet.getString("legextright"),
		    		resultSet.getString("legextleft"),
		    		resultSet.getString("dorsiflexright"),
		    		resultSet.getString("dorsiflexleft"),
		    		resultSet.getString("digitflexright"),
		    		resultSet.getString("digitflexleft"),
		    		resultSet.getString("heelright"),
		    		resultSet.getString("heelleft"),
		    		resultSet.getString("toeright"),
		    		resultSet.getString("toeleft"),
		    		resultSet.getString("patellarright"),
		    		resultSet.getString("patellarleft"),
		    		resultSet.getString("achillesright"),
		    		resultSet.getString("achillesleft"),
		    		resultSet.getString("babinskiright"),
		    		resultSet.getString("babinskileft")));

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
	return Physicalexam;

}
public int getnoofphysicalexam() {
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
	List<Physicalexam> Physicalexam = new ArrayList<Physicalexam>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_physicalexam";
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

	
