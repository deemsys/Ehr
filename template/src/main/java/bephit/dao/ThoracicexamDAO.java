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


import bephit.model.Thoracicexam;
import bephit.model.SoapNotes;
 



public class ThoracicexamDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setThoracicexam(Thoracicexam thoracicexam)
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
	    	 String cmd="INSERT INTO `tbl_thoracicexam`(`pname`,`date`,`muscle`,`swelling`,`acromion`,`inferior`,`iliac`,`ribhumping`,`allsoft`,`rectus`,`obliques`,`levator`,`serratus`,`pectoralis`,`trapezius`,`rhomboids`,`pectoralisminor`,`paraspinals`,`othernotes`,`functionalrangeofmotion`,`subluxation`,`orthopedic`,`flexion`,`t12`,`t23`,`adamsignl`,`adamsignr`,`extension`,`t34`,`t45`,`schepelmanl`,`schepelmanr`,`lflexion`,`rflexion`,`t56`,`t67`,`valsalval`,`valsalvar`,`lrotation`,`rrotation`,`t78`,`t89`,`dejerinel`,`dejeriner`,`t910`,`t1011`,`sotohalll`,`sotohallr`,`t1112`,`t12l1`,`sternall`,`sternalr`,`beevorl`,`beevorr`,`neurologicaltest`,`notes`,`intercostal`,`sitting`,`standing`,`driving`,`otherfunctional`,`break_text3`,`assessment`,`patientstatus`,`diagnosis1`,`diagnosis2`,`diagnosis3`,`diagnosis4`,`diagnosis5`,`diagnosis6`,`times`,`week`,`spinal`,`chiropractic`,`physical`,`orthotics`,`modalities`,`supplementation`,`hep`,`radiographic`,`mri`,`ctscan`,`nerve`,`emg`,`outside`,`dc`,`otheraddress`,`break_text4`,`sign`)VALUES ('"+thoracicexam.getPname()+"','"+thoracicexam.getDate()+"','"+thoracicexam.getMuscle()+"','"+thoracicexam.getSwelling()+"','"+thoracicexam.getAcromion()+"','"+thoracicexam.getInferior()+"','"+thoracicexam.getIliac()+"','"+thoracicexam.getRibhumping()+"','"+thoracicexam.getAllsoft()+"','"+thoracicexam.getRectus()+"','"+thoracicexam.getObliques()+"','"+thoracicexam.getLevator()+"','"+thoracicexam.getSerratus()+"','"+thoracicexam.getPectoralis()+"','"+thoracicexam.getTrapezius()+"','"+thoracicexam.getRhomboids()+"','"+thoracicexam.getPectoralisminor()+"','"+thoracicexam.getParaspinals()+"','"+thoracicexam.getOthernotes()+"','"+thoracicexam.getFunctionalrangeofmotion()+"','"+thoracicexam.getSubluxation()+"','"+thoracicexam.getOrthopedic()+"','"+thoracicexam.getFlexion()+"','"+thoracicexam.getT12()+"','"+thoracicexam.getT23()+"','"+thoracicexam.getAdamsignl()+"','"+thoracicexam.getAdamsignr()+"','"+thoracicexam.getExtension()+"','"+thoracicexam.getT34()+"','"+thoracicexam.getT45()+"','"+thoracicexam.getSchepelmanl()+"','"+thoracicexam.getSchepelmanr()+"','"+thoracicexam.getLflexion()+"','"+thoracicexam.getRflexion()+"','"+thoracicexam.getT56()+"','"+thoracicexam.getT67()+"','"+thoracicexam.getValsalval()+"','"+thoracicexam.getValsalvar()+"','"+thoracicexam.getLrotation()+"','"+thoracicexam.getRrotation()+"','"+thoracicexam.getT78()+"','"+thoracicexam.getT89()+"','"+thoracicexam.getDejerinel()+"','"+thoracicexam.getDejeriner()+"','"+thoracicexam.getT910()+"','"+thoracicexam.getT1011()+"','"+thoracicexam.getSotohalll()+"','"+thoracicexam.getSotohallr()+"','"+thoracicexam.getT1112()+"','"+thoracicexam.getT12l1()+"','"+thoracicexam.getSternall()+"','"+thoracicexam.getSternalr()+"','"+thoracicexam.getBeevorl()+"','"+thoracicexam.getBeevorr()+"','"+thoracicexam.getNeurologicaltest()+"','"+thoracicexam.getNotes()+"','"+thoracicexam.getIntercostal()+"','"+thoracicexam.getSitting()+"','"+thoracicexam.getStanding()+"','"+thoracicexam.getDriving()+"','"+thoracicexam.getOtherfunctional()+"','"+thoracicexam.getBreak_text3()+"','"+thoracicexam.getAssessment()+"','"+thoracicexam.getPatientstatus()+"','"+thoracicexam.getDiagnosis1()+"','"+thoracicexam.getDiagnosis2()+"','"+thoracicexam.getDiagnosis3()+"','"+thoracicexam.getDiagnosis4()+"','"+thoracicexam.getDiagnosis5()+"','"+thoracicexam.getDiagnosis6()+"','"+thoracicexam.getTimes()+"','"+thoracicexam.getWeek()+"','"+thoracicexam.getSpinal()+"','"+thoracicexam.getChiropractic()+"','"+thoracicexam.getPhysical()+"','"+thoracicexam.getOrthotics()+"','"+thoracicexam.getModalities()+"','"+thoracicexam.getSupplementation()+"','"+thoracicexam.getHep()+"','"+thoracicexam.getRadiographic()+"','"+thoracicexam.getMri()+"','"+thoracicexam.getCtscan()+"','"+thoracicexam.getNerve()+"','"+thoracicexam.getEmg()+"','"+thoracicexam.getOutside()+"','"+thoracicexam.getDc()+"','"+thoracicexam.getOtheraddress()+"','"+thoracicexam.getBreak_text4()+"','"+thoracicexam.getSign()+"')";
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

	
public List<Thoracicexam> getThoracicexam(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Thoracicexam> thoracicexam = new ArrayList<Thoracicexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_thoracicexam");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			thoracicexam.add( new Thoracicexam(resultSet.getString("thoracicexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"), resultSet.getString("acromion"),resultSet.getString("inferior"),resultSet.getString("iliac"),resultSet.getString("ribhumping"),resultSet.getString("allsoft"),resultSet.getString("rectus"),resultSet.getString("obliques"),resultSet.getString("levator"),resultSet.getString("serratus"),resultSet.getString("pectoralis"),resultSet.getString("trapezius"),resultSet.getString("rhomboids"), resultSet.getString("pectoralisminor"), resultSet.getString("paraspinals"), resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("subluxation"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("t12"), resultSet.getString("t23"), resultSet.getString("adamsignl"), resultSet.getString("adamsignr"), resultSet.getString("extension"), resultSet.getString("t34"), resultSet.getString("t45"), resultSet.getString("schepelmanl"),resultSet.getString("schepelmanr"), resultSet.getString("lflexion"),resultSet.getString("rflexion"), resultSet.getString("t56"),resultSet.getString("t67"),resultSet.getString("valsalval"), resultSet.getString("valsalvar"), resultSet.getString("lrotation"),resultSet.getString("rrotation"),resultSet.getString("t78"),resultSet.getString("t89"), resultSet.getString("dejerinel"), resultSet.getString("dejeriner"),resultSet.getString("t910"),resultSet.getString("t1011"), resultSet.getString("sotohalll"),resultSet.getString("sotohallr"),resultSet.getString("t1112"),resultSet.getString("t12l1"), resultSet.getString("sternall"),resultSet.getString("sternalr"),  resultSet.getString("beevorl"), resultSet.getString("beevorr"),resultSet.getString("neurologicaltest"),resultSet.getString("notes"),resultSet.getString("intercostal"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("driving"),resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return thoracicexam;
}

public List<Thoracicexam> getThoracic(String thoracicexamid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Thoracicexam> thoracicexam = new ArrayList<Thoracicexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_thoracicexam where thoracicexamid='"+thoracicexamid+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			thoracicexam.add( new Thoracicexam(resultSet.getString("thoracicexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"), resultSet.getString("acromion"),resultSet.getString("inferior"),resultSet.getString("iliac"),resultSet.getString("ribhumping"),resultSet.getString("allsoft"),resultSet.getString("rectus"),resultSet.getString("obliques"),resultSet.getString("levator"),resultSet.getString("serratus"),resultSet.getString("pectoralis"),resultSet.getString("trapezius"),resultSet.getString("rhomboids"), resultSet.getString("pectoralisminor"), resultSet.getString("paraspinals"), resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("subluxation"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("t12"), resultSet.getString("t23"), resultSet.getString("adamsignl"), resultSet.getString("adamsignr"), resultSet.getString("extension"), resultSet.getString("t34"), resultSet.getString("t45"), resultSet.getString("schepelmanl"),resultSet.getString("schepelmanr"), resultSet.getString("lflexion"),resultSet.getString("rflexion"), resultSet.getString("t56"),resultSet.getString("t67"),resultSet.getString("valsalval"), resultSet.getString("valsalvar"), resultSet.getString("lrotation"),resultSet.getString("rrotation"),resultSet.getString("t78"),resultSet.getString("t89"), resultSet.getString("dejerinel"), resultSet.getString("dejeriner"),resultSet.getString("t910"),resultSet.getString("t1011"), resultSet.getString("sotohalll"),resultSet.getString("sotohallr"),resultSet.getString("t1112"),resultSet.getString("t12l1"), resultSet.getString("sternall"),resultSet.getString("sternalr"),  resultSet.getString("beevorl"),resultSet.getString("beevorr"),resultSet.getString("neurologicaltest"),resultSet.getString("notes"),resultSet.getString("intercostal"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("driving"),resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return thoracicexam;
}

public int updateThoracicexam(Thoracicexam thoracicexam,String thoracicexamid,String admin)
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
    	 System.out.println("updatepatient_id"+thoracicexamid);
    	 //System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_thoracicexam SET pname='"+thoracicexam.getPname()+"',date='"+thoracicexam.getDate()+"',muscle='"+thoracicexam.getMuscle()+"',swelling='"+thoracicexam.getSwelling()+"',acromion='"+thoracicexam.getAcromion()+"',inferior='"+thoracicexam.getInferior()+"',iliac='"+thoracicexam.getIliac()+"',ribhumping='"+thoracicexam.getRibhumping()+"',allsoft='"+thoracicexam.getAllsoft()+"',rectus='"+thoracicexam.getRectus()+"',obliques='"+thoracicexam.getObliques()+"',levator='"+thoracicexam.getLevator()+"',serratus='"+thoracicexam.getSerratus()+"',pectoralis='"+thoracicexam.getPectoralis()+"',trapezius='"+thoracicexam.getTrapezius()+"',rhomboids='"+thoracicexam.getRhomboids()+"',pectoralisminor='"+thoracicexam.getPectoralisminor()+"',paraspinals='"+thoracicexam.getParaspinals()+"',othernotes='"+thoracicexam.getOthernotes()+"',functionalrangeofmotion='"+thoracicexam.getFunctionalrangeofmotion()+"',subluxation='"+thoracicexam.getSubluxation()+"',orthopedic='"+thoracicexam.getOrthopedic()+"',flexion='"+thoracicexam.getFlexion()+"',t12='"+thoracicexam.getT12()+"',t23='"+thoracicexam.getT23()+"',adamsignl='"+thoracicexam.getAdamsignl()+"',adamsignr='"+thoracicexam.getAdamsignr()+"',extension='"+thoracicexam.getExtension()+"',t34='"+thoracicexam.getT34()+"',t45='"+thoracicexam.getT45()+"',schepelmanl='"+thoracicexam.getSchepelmanl()+"',schepelmanr='"+thoracicexam.getSchepelmanr()+"',lflexion='"+thoracicexam.getLflexion()+"',rflexion='"+thoracicexam.getRflexion()+"',lrotation='"+thoracicexam.getLrotation()+"',rrotation='"+thoracicexam.getRrotation()+"',t78='"+thoracicexam.getT78()+"',t89='"+thoracicexam.getT89()+"',dejerinel='"+thoracicexam.getDejerinel()+"',dejeriner='"+thoracicexam.getDejeriner()+"',t910='"+thoracicexam.getT910()+"',t1011='"+thoracicexam.getT1011()+"',sotohalll='"+thoracicexam.getSotohalll()+"',sotohallr='"+thoracicexam.getSotohallr()+"',t1112='"+thoracicexam.getT1112()+"',t12l1='"+thoracicexam.getT12l1()+"',sternall='"+thoracicexam.getSternall()+"',sternalr='"+thoracicexam.getSternalr()+"',beevorl='"+thoracicexam.getBeevorl()+"',beevorr='"+thoracicexam.getBeevorr()+"',neurologicaltest='"+thoracicexam.getNeurologicaltest()+"',notes='"+thoracicexam.getNotes()+"',intercostal='"+thoracicexam.getIntercostal()+"',sitting='"+thoracicexam.getSitting()+"',standing='"+thoracicexam.getStanding()+"',driving='"+thoracicexam.getDriving()+"',otherfunctional='"+thoracicexam.getOtherfunctional()+"',break_text3='"+thoracicexam.getBreak_text3()+"',assessment='"+thoracicexam.getAssessment()+"',patientstatus='"+thoracicexam.getPatientstatus()+"',diagnosis1='"+thoracicexam.getDiagnosis1()+"',diagnosis2='"+thoracicexam.getDiagnosis2()+"',diagnosis3='"+thoracicexam.getDiagnosis3()+"',diagnosis4='"+thoracicexam.getDiagnosis4()+"',diagnosis5='"+thoracicexam.getDiagnosis5()+"',diagnosis6='"+thoracicexam.getDiagnosis6()+"',times='"+thoracicexam.getTimes()+"',week='"+thoracicexam.getWeek()+"',spinal='"+thoracicexam.getSpinal()+"',chiropractic='"+thoracicexam.getChiropractic()+"',physical='"+thoracicexam.getPhysical()+"',orthotics='"+thoracicexam.getOrthotics()+"',modalities='"+thoracicexam.getModalities()+"',supplementation='"+thoracicexam.getSupplementation()+"',hep='"+thoracicexam.getHep()+"',radiographic='"+thoracicexam.getRadiographic()+"',mri='"+thoracicexam.getMri()+"',ctscan='"+thoracicexam.getCtscan()+"',nerve='"+thoracicexam.getNerve()+"',emg='"+thoracicexam.getEmg()+"',outside='"+thoracicexam.getOutside()+"',dc='"+thoracicexam.getDc()+"',otheraddress='"+thoracicexam.getOtheraddress()+"',break_text4='"+thoracicexam.getBreak_text4()+"',sign='"+thoracicexam.getSign()+"' WHERE thoracicexamid='"+thoracicexamid+"';";
    			
    			String Desc="Update thoracicexam "+thoracicexam.getPname();
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

public int deleteThoracicexam(String thoracicexamid){
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
    	 String cmd_getpatient_pname="select pname from tbl_thoracicexam where thoracicexamid='"+thoracicexamid+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_thoracicexam where thoracicexamid='"+thoracicexamid+"'");
			
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
