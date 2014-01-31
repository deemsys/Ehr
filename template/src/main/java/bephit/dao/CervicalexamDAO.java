
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

import bephit.model.Kneeexam;
import bephit.model.ParticipantsDetails;
import bephit.model.Cervicalexam;



public class CervicalexamDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setCervicalexam(Cervicalexam cervicalexam)
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
	    	 /*String cmd="INSERT INTO `tbl_cervicalexam`(`pname`,`date`,`muscle`,`swelling`,`headposture`,`roundshoulder`,`ao`,`allsoft`,`suboccipitall`,`suboccipitalr`,`scalenesl`,`scalenesr`,`levatorl`,`levatorr`,`teresminorl`,`teresminorr`,`teresmajorl`,`teresmajorr`,`rhomboidsl`,`rhomboidsr`,`trapeziusl`,`trapeziusr`,`pectoralisl`,`pectoralisr`,`paraspinalsl`,`paraspinalsr`,`othernotes`,`functionalrangeofmotion`,`subluxation`,`orthopedic`,`flexion`,`c01`,`c12`,`c23`,`hautantl`,`hautantr`,`extension`,`c34`,`c45`,`c56`,`foraminall`,`foraminalr`,`lflexion`,`rflexion`,`c67`,`c7t1`,`t12`,`sotohalll`,`sotohallr`,`lrotation`,`rrotation`,`t23`,`t34`,`t45`,`adsonsl`,`adsonsr`,`t56`,`t67`,`t78`,`ulttl`,`ulttr`,`neurologicaltest`,`c5l`,`c5r`,`c51l`,`c51r`,`c53l`,`c53r`,`c6l`,`c6r`,`c61l`,`c61r`,`c63l`,`c63r`,`c7l`,`c7r`,`c71l`,`c71r`,`c73l`,`c73r`,`c8l`,`c8r`,`c81l`,`c81r`,`t1l`,`t1r`,`t11l`,`t11r`,`sitting`,`standing`,`driving`,`computeruse`,`otherfunctional`,`break_text3`,`assessment`,`patientstatus`,`diagnosis1`,`diagnosis2`,`diagnosis3`,`diagnosis4`,`diagnosis5`,`diagnosis6`,`times`,`week`,`spinal`,`chiropractic`,`physical`,`orthotics`,`modalities`,`supplementation`,`hep`,`radiographic`,`mri`,`ctscan`,`nerve`,`emg`,`outside`,`dc`,`otheraddress`,`break_text4`,`sign`)VALUES ('"+cervicalexam.getPname()+"','"+cervicalexam.getDate()+"','"+cervicalexam.getMuscle()+"','"+cervicalexam.getSwelling()+"','"+cervicalexam.getHeadposture()+"','"+cervicalexam.getRoundshoulder()+"','"+cervicalexam.getAo()+"','"+cervicalexam.getAllsoft()+"','"+cervicalexam.getSuboccipitall()+"','"+cervicalexam.getSuboccipitalr()+"','"+cervicalexam.getScalenesl()+"','"+cervicalexam.getScalenesr()+"','"+cervicalexam.getLevatorl()+"','"+cervicalexam.getLevatorr()+"','"+cervicalexam.getTeresminorl()+"','"+cervicalexam.getTeresminorr()+"','"+cervicalexam.getTeresmajorl()+"','"+cervicalexam.getTeresmajorr()+"','"+cervicalexam.getRhomboidsl()+"','"+cervicalexam.getRhomboidsr()+"','"+cervicalexam.getTrapeziusl()+"','"+cervicalexam.getTrapeziusr()+"','"+cervicalexam.getPectoralisl()+"','"+cervicalexam.getPectoralisr()+"','"+cervicalexam.getParaspinalsl()+"','"+cervicalexam.getParaspinalsr()+"','"+cervicalexam.getOthernotes()+"','"+cervicalexam.getFunctionalrangeofmotion()+"','"+cervicalexam.getSubluxation()+"','"+cervicalexam.getOrthopedic()+"','"+cervicalexam.getFlexion()+"','"+cervicalexam.getC01()+"','"+cervicalexam.getC12()+"','"+cervicalexam.getC23()+"','"+cervicalexam.getHautantl()+"','"+cervicalexam.getHautantr()+"','"+cervicalexam.getExtension()+"','"+cervicalexam.getC34()+"','"+cervicalexam.getC45()+"','"+cervicalexam.getC56()+"','"+cervicalexam.getForaminall()+"','"+cervicalexam.getForaminalr()+"','"+cervicalexam.getLflexion()+"','"+cervicalexam.getRflexion()+"','"+cervicalexam.getC67()+"','"+cervicalexam.getC7t1()+"','"+cervicalexam.getT12()+"','"+cervicalexam.getSotohalll()+"','"+cervicalexam.getSotohallr()+"','"+cervicalexam.getLrotation()+"','"+cervicalexam.getRrotation()+"','"+cervicalexam.getT23()+"','"+cervicalexam.getT34()+"','"+cervicalexam.getT45()+"','"+cervicalexam.getAdsonsl()+"','"+cervicalexam.getAdsonsr()+"','"+cervicalexam.getT56()+"','"+cervicalexam.getT67()+"','"+cervicalexam.getT78()+"','"+cervicalexam.getUlttl()+"','"+cervicalexam.getUlttr()+"','"+cervicalexam.getNeurologicaltest()+"','"+cervicalexam.getC5l()+"','"+cervicalexam.getC5r()+"','"+cervicalexam.getC51l()+"','"+cervicalexam.getC51r()+"','"+cervicalexam.getC53l()+"','"+cervicalexam.getC53r()+"','"+cervicalexam.getC6l()+"','"+cervicalexam.getC6r()+"','"+cervicalexam.getC61l()+"','"+cervicalexam.getC61r()+"','"+cervicalexam.getC63l()+"','"+cervicalexam.getC63r()+"','"+cervicalexam.getC7l()+"','"+cervicalexam.getC7r()+"','"+cervicalexam.getC71l()+"','"+cervicalexam.getC71r()+"','"+cervicalexam.getC73l()+"','"+cervicalexam.getC73r()+"','"+cervicalexam.getC8l()+"','"+cervicalexam.getC8r()+"','"+cervicalexam.getC81l()+"','"+cervicalexam.getC81r()+"','"+cervicalexam.getT1l()+"','"+cervicalexam.getT1r()+"','"+cervicalexam.getT11l()+"','"+cervicalexam.getT11r()+"','"+cervicalexam.getSitting()+"','"+cervicalexam.getStanding()+"','"+cervicalexam.getDriving()+"','"+cervicalexam.getComputeruse()+"','"+cervicalexam.getOtherfunctional()+"','"+cervicalexam.getBreak_text3()+"','"+cervicalexam.getAssessment()+"','"+cervicalexam.getPatientstatus()+"','"+cervicalexam.getDiagnosis1()+"','"+cervicalexam.getDiagnosis2()+"','"+cervicalexam.getDiagnosis3()+"','"+cervicalexam.getDiagnosis4()+"','"+cervicalexam.getDiagnosis5()+"','"+cervicalexam.getDiagnosis6()+"','"+cervicalexam.getTimes()+"','"+cervicalexam.getWeek()+"','"+cervicalexam.getSpinal()+"','"+cervicalexam.getChiropractic()+"','"+cervicalexam.getPhysical()+"','"+cervicalexam.getOrthotics()+"','"+cervicalexam.getModalities()+"','"+cervicalexam.getSupplementation()+"','"+cervicalexam.getHep()+"','"+cervicalexam.getRadiographic()+"','"+cervicalexam.getMri()+"','"+cervicalexam.getCtscan()+"','"+cervicalexam.getNerve()+"','"+cervicalexam.getEmg()+"','"+cervicalexam.getOutside()+"','"+cervicalexam.getDc()+"','"+cervicalexam.getOtheraddress()+"','"+cervicalexam.getSign()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);*/
	    	 String cmd="INSERT INTO `tbl_cervicalexam`(`pname`,`date`,`muscle`,`swelling`,`headposture`,`roundshoulder`,`ao`,`allsoft`,`suboccipital`,`scalenes`,`levator`,`teresminor`,`teresmajor`,`rhomboids`,`trapezius`,`pectoralis`,`paraspinals`,`othernotes`,`functionalrangeofmotion`,`subluxation`,`orthopedic`,`flexion`,`c01`,`c12`,`c23`,`hautantl`,`hautantr`,`extension`,`c34`,`c45`,`c56`,`foraminall`,`foraminalr`,`lflexion`,`rflexion`,`c67`,`c7t1`,`t12`,`sotohalll`,`sotohallr`,`lrotation`,`rrotation`,`t23`,`t34`,`t45`,`adsonsl`,`adsonsr`,`t56`,`t67`,`t78`,`ulttl`,`ulttr`,`neurologicaltest`,`c5l`,`c5r`,`c51l`,`c51r`,`c53l`,`c53r`,`c6l`,`c6r`,`c61l`,`c61r`,`c63l`,`c63r`,`c7l`,`c7r`,`c71l`,`c71r`,`c73l`,`c73r`,`c8l`,`c8r`,`c81l`,`c81r`,`t1l`,`t1r`,`t11l`,`t11r`,`sitting`,`standing`,`driving`,`computeruse`,`otherfunctional`,`break_text3`,`assessment`,`patientstatus`,`diagnosis1`,`diagnosis2`,`diagnosis3`,`diagnosis4`,`diagnosis5`,`diagnosis6`,`times`,`week`,`spinal`,`chiropractic`,`physical`,`orthotics`,`modalities`,`supplementation`,`hep`,`radiographic`,`mri`,`ctscan`,`nerve`,`emg`,`outside`,`dc`,`otheraddress`,`break_text4`,`sign`)VALUES ('"+cervicalexam.getPname()+"','"+cervicalexam.getDate()+"','"+cervicalexam.getMuscle()+"','"+cervicalexam.getSwelling()+"','"+cervicalexam.getHeadposture()+"','"+cervicalexam.getRoundshoulder()+"','"+cervicalexam.getAo()+"','"+cervicalexam.getAllsoft()+"','"+cervicalexam.getSuboccipital()+"','"+cervicalexam.getScalenes()+"','"+cervicalexam.getLevator()+"','"+cervicalexam.getTeresminor()+"','"+cervicalexam.getTeresmajor()+"','"+cervicalexam.getRhomboids()+"','"+cervicalexam.getTrapezius()+"','"+cervicalexam.getPectoralis()+"','"+cervicalexam.getParaspinals()+"','"+cervicalexam.getOthernotes()+"','"+cervicalexam.getFunctionalrangeofmotion()+"','"+cervicalexam.getSubluxation()+"','"+cervicalexam.getOrthopedic()+"','"+cervicalexam.getFlexion()+"','"+cervicalexam.getC01()+"','"+cervicalexam.getC12()+"','"+cervicalexam.getC23()+"','"+cervicalexam.getHautantl()+"','"+cervicalexam.getHautantr()+"','"+cervicalexam.getExtension()+"','"+cervicalexam.getC34()+"','"+cervicalexam.getC45()+"','"+cervicalexam.getC56()+"','"+cervicalexam.getForaminall()+"','"+cervicalexam.getForaminalr()+"','"+cervicalexam.getLflexion()+"','"+cervicalexam.getRflexion()+"','"+cervicalexam.getC67()+"','"+cervicalexam.getC7t1()+"','"+cervicalexam.getT12()+"','"+cervicalexam.getSotohalll()+"','"+cervicalexam.getSotohallr()+"','"+cervicalexam.getLrotation()+"','"+cervicalexam.getRrotation()+"','"+cervicalexam.getT23()+"','"+cervicalexam.getT34()+"','"+cervicalexam.getT45()+"','"+cervicalexam.getAdsonsl()+"','"+cervicalexam.getAdsonsr()+"','"+cervicalexam.getT56()+"','"+cervicalexam.getT67()+"','"+cervicalexam.getT78()+"','"+cervicalexam.getUlttl()+"','"+cervicalexam.getUlttr()+"','"+cervicalexam.getNeurologicaltest()+"','"+cervicalexam.getC5l()+"','"+cervicalexam.getC5r()+"','"+cervicalexam.getC51l()+"','"+cervicalexam.getC51r()+"','"+cervicalexam.getC53l()+"','"+cervicalexam.getC53r()+"','"+cervicalexam.getC6l()+"','"+cervicalexam.getC6r()+"','"+cervicalexam.getC61l()+"','"+cervicalexam.getC61r()+"','"+cervicalexam.getC63l()+"','"+cervicalexam.getC63r()+"','"+cervicalexam.getC7l()+"','"+cervicalexam.getC7r()+"','"+cervicalexam.getC71l()+"','"+cervicalexam.getC71r()+"','"+cervicalexam.getC73l()+"','"+cervicalexam.getC73r()+"','"+cervicalexam.getC8l()+"','"+cervicalexam.getC8r()+"','"+cervicalexam.getC81l()+"','"+cervicalexam.getC81r()+"','"+cervicalexam.getT1l()+"','"+cervicalexam.getT1r()+"','"+cervicalexam.getT11l()+"','"+cervicalexam.getT11r()+"','"+cervicalexam.getSitting()+"','"+cervicalexam.getStanding()+"','"+cervicalexam.getDriving()+"','"+cervicalexam.getComputeruse()+"','"+cervicalexam.getOtherfunctional()+"','"+cervicalexam.getBreak_text3()+"','"+cervicalexam.getAssessment()+"','"+cervicalexam.getPatientstatus()+"','"+cervicalexam.getDiagnosis1()+"','"+cervicalexam.getDiagnosis2()+"','"+cervicalexam.getDiagnosis3()+"','"+cervicalexam.getDiagnosis4()+"','"+cervicalexam.getDiagnosis5()+"','"+cervicalexam.getDiagnosis6()+"','"+cervicalexam.getTimes()+"','"+cervicalexam.getWeek()+"','"+cervicalexam.getSpinal()+"','"+cervicalexam.getChiropractic()+"','"+cervicalexam.getPhysical()+"','"+cervicalexam.getOrthotics()+"','"+cervicalexam.getModalities()+"','"+cervicalexam.getSupplementation()+"','"+cervicalexam.getHep()+"','"+cervicalexam.getRadiographic()+"','"+cervicalexam.getMri()+"','"+cervicalexam.getCtscan()+"','"+cervicalexam.getNerve()+"','"+cervicalexam.getEmg()+"','"+cervicalexam.getOutside()+"','"+cervicalexam.getDc()+"','"+cervicalexam.getOtheraddress()+"','"+cervicalexam.getBreak_text4()+"','"+cervicalexam.getSign()+"')";
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

	
public List<Cervicalexam> getCervicalexam(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Cervicalexam> cervicalexam = new ArrayList<Cervicalexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_cervicalexam");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			cervicalexam.add( new Cervicalexam(resultSet.getString("cervicalexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"),resultSet.getString("headposture"),resultSet.getString("roundshoulder"), resultSet.getString("ao"),resultSet.getString("allsoft"),resultSet.getString("suboccipital"),resultSet.getString("scalenes"),resultSet.getString("levator"),resultSet.getString("teresminor"),resultSet.getString("teresmajor"),resultSet.getString("rhomboids"),resultSet.getString("trapezius"), resultSet.getString("pectoralis"),  resultSet.getString("paraspinals"),  resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("subluxation"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("c01"), resultSet.getString("c12"),resultSet.getString("c23"), resultSet.getString("hautantl"), resultSet.getString("hautantr"), resultSet.getString("extension"), resultSet.getString("c34"), resultSet.getString("c45"),resultSet.getString("c56"), resultSet.getString("foraminall"),resultSet.getString("foraminalr"), resultSet.getString("lflexion"),resultSet.getString("rflexion"), resultSet.getString("c67"),resultSet.getString("c7t1"),resultSet.getString("t12"),resultSet.getString("sotohalll"), resultSet.getString("sotohalll"), resultSet.getString("lrotation"),resultSet.getString("rrotation"),resultSet.getString("t23"),resultSet.getString("t34"),resultSet.getString("t45"), resultSet.getString("adsonsl"), resultSet.getString("adsonsr"),resultSet.getString("t56"),resultSet.getString("t67"),resultSet.getString("t78"), resultSet.getString("ulttl"),resultSet.getString("ulttl"),resultSet.getString("neurologicaltest"),resultSet.getString("c5l"),resultSet.getString("c5r"),resultSet.getString("c51l"), resultSet.getString("c51r"),resultSet.getString("c53l"),resultSet.getString("c53r"),resultSet.getString("c6l"),resultSet.getString("c6r"),resultSet.getString("c61l"), resultSet.getString("c61r"),resultSet.getString("c63l"),resultSet.getString("c63r"),resultSet.getString("c7l"),resultSet.getString("c7r"),resultSet.getString("c71l"), resultSet.getString("c71r"),resultSet.getString("c73l"),resultSet.getString("c73r"),resultSet.getString("c8l"),resultSet.getString("c8r"),resultSet.getString("c81l"), resultSet.getString("c81r"),resultSet.getString("t1l"),resultSet.getString("t1r"),resultSet.getString("t11l"), resultSet.getString("t11r"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("driving"),resultSet.getString("computeruse"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return cervicalexam;
}

public List<Cervicalexam> getCervical(String cervicalexamid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Cervicalexam> cervicalexam = new ArrayList<Cervicalexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_cervicalexam WHERE cervicalexamid='"+cervicalexamid+"'");
		/*System.out.println(resultSet.toString());*/
		while(resultSet.next()){
			cervicalexam.add( new Cervicalexam(resultSet.getString("cervicalexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"),resultSet.getString("headposture"),resultSet.getString("roundshoulder"), resultSet.getString("ao"),resultSet.getString("allsoft"),resultSet.getString("suboccipital"),resultSet.getString("scalenes"),resultSet.getString("levator"),resultSet.getString("teresminor"),resultSet.getString("teresmajor"),resultSet.getString("rhomboids"),resultSet.getString("trapezius"), resultSet.getString("pectoralis"),  resultSet.getString("paraspinals"),  resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("subluxation"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("c01"), resultSet.getString("c12"),resultSet.getString("c23"), resultSet.getString("hautantl"), resultSet.getString("hautantr"), resultSet.getString("extension"), resultSet.getString("c34"), resultSet.getString("c45"),resultSet.getString("c56"), resultSet.getString("foraminall"),resultSet.getString("foraminalr"), resultSet.getString("lflexion"),resultSet.getString("rflexion"), resultSet.getString("c67"),resultSet.getString("c7t1"),resultSet.getString("t12"),resultSet.getString("sotohalll"), resultSet.getString("sotohalll"), resultSet.getString("lrotation"),resultSet.getString("rrotation"),resultSet.getString("t23"),resultSet.getString("t34"),resultSet.getString("t45"), resultSet.getString("adsonsl"), resultSet.getString("adsonsr"),resultSet.getString("t56"),resultSet.getString("t67"),resultSet.getString("t78"), resultSet.getString("ulttl"),resultSet.getString("ulttl"),resultSet.getString("neurologicaltest"),resultSet.getString("c5l"),resultSet.getString("c5r"),resultSet.getString("c51l"), resultSet.getString("c51r"),resultSet.getString("c53l"),resultSet.getString("c53r"),resultSet.getString("c6l"),resultSet.getString("c6r"),resultSet.getString("c61l"), resultSet.getString("c61r"),resultSet.getString("c63l"),resultSet.getString("c63r"),resultSet.getString("c7l"),resultSet.getString("c7r"),resultSet.getString("c71l"), resultSet.getString("c71r"),resultSet.getString("c73l"),resultSet.getString("c73r"),resultSet.getString("c8l"),resultSet.getString("c8r"),resultSet.getString("c81l"), resultSet.getString("c81r"),resultSet.getString("t1l"),resultSet.getString("t1r"),resultSet.getString("t11l"), resultSet.getString("t11r"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("driving"),resultSet.getString("computeruse"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));
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
    return cervicalexam;
}
public int updatecervicalexam(Cervicalexam cervicalexam,String cervicalexamid,String admin)
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
    	 /*DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	 Date date = new Date();
    	 System.out.println("updatepatient_id"+patient_id);
    	 *///System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_cervicalexam SET pname='"+cervicalexam.getPname()+"',date='"+cervicalexam.getDate()+"',muscle='"+cervicalexam.getMuscle()+"',swelling='"+cervicalexam.getSwelling()+"',headposture='"+cervicalexam.getHeadposture()+"',roundshoulder='"+cervicalexam.getRoundshoulder()+"',ao='"+cervicalexam.getAo()+"',allsoft='"+cervicalexam.getAllsoft()+"',suboccipital='"+cervicalexam.getSuboccipital()+"',scalenes='"+cervicalexam.getScalenes()+"',levator='"+cervicalexam.getLevator()+"',teresminor='"+cervicalexam.getTeresminor()+"',teresmajor='"+cervicalexam.getTeresmajor()+"',rhomboids='"+cervicalexam.getRhomboids()+"',trapezius='"+cervicalexam.getTrapezius()+"',pectoralis='"+cervicalexam.getPectoralis()+"',paraspinals='"+cervicalexam.getParaspinals()+"',othernotes='"+cervicalexam.getOthernotes()+"',functionalrangeofmotion='"+cervicalexam.getFunctionalrangeofmotion()+"',subluxation='"+cervicalexam.getSubluxation()+"',orthopedic='"+cervicalexam.getOrthopedic()+"',flexion='"+cervicalexam.getFlexion()+"',c01='"+cervicalexam.getC01()+"',c12='"+cervicalexam.getC12()+"',c23='"+cervicalexam.getC23()+"',hautantl='"+cervicalexam.getHautantl()+"',hautantr='"+cervicalexam.getHautantr()+"',extension='"+cervicalexam.getExtension()+"',c34='"+cervicalexam.getC34()+"',c45='"+cervicalexam.getC45()+"',c56='"+cervicalexam.getC56()+"',foraminall='"+cervicalexam.getForaminall()+"',foraminalr='"+cervicalexam.getForaminalr()+"',lflexion='"+cervicalexam.getLflexion()+"',rflexion='"+cervicalexam.getRflexion()+"',c67='"+cervicalexam.getC67()+"',c7t1='"+cervicalexam.getC7t1()+"',t12='"+cervicalexam.getT12()+"',sotohalll='"+cervicalexam.getSotohalll()+"',sotohallr='"+cervicalexam.getSotohallr()+"',lrotation='"+cervicalexam.getLrotation()+"',rrotation='"+cervicalexam.getRrotation()+"',t23='"+cervicalexam.getT23()+"',t34='"+cervicalexam.getT34()+"',t45='"+cervicalexam.getT45()+"',adsonsl='"+cervicalexam.getAdsonsl()+"',adsonsr='"+cervicalexam.getAdsonsr()+"',t56='"+cervicalexam.getT56()+"',t67='"+cervicalexam.getT67()+"',t78='"+cervicalexam.getT78()+"',ulttl='"+cervicalexam.getUlttl()+"',ulttr='"+cervicalexam.getUlttr()+"',neurologicaltest='"+cervicalexam.getNeurologicaltest()+"',c5l='"+cervicalexam.getC5l()+"',c5r='"+cervicalexam.getC5r()+"',c51l='"+cervicalexam.getC51l()+"',c51r='"+cervicalexam.getC51r()+"',c53l='"+cervicalexam.getC53l()+"',c53r='"+cervicalexam.getC53r()+"',c6l='"+cervicalexam.getC6l()+"',c6r='"+cervicalexam.getC6r()+"',c61l='"+cervicalexam.getC61l()+"',c63l='"+cervicalexam.getC63r()+"',c7l='"+cervicalexam.getC7l()+"',c7r='"+cervicalexam.getC7r()+"',c71l='"+cervicalexam.getC71l()+"',c71r='"+cervicalexam.getC71r()+"',c73l='"+cervicalexam.getC73l()+"',c73r='"+cervicalexam.getC73r()+"',c8l='"+cervicalexam.getC8l()+"',c8r='"+cervicalexam.getC8r()+"',c81l='"+cervicalexam.getC81l()+"',c81r='"+cervicalexam.getC81r()+"',t1l='"+cervicalexam.getT1l()+"',t1r='"+cervicalexam.getT1r()+"',t11l='"+cervicalexam.getT11l()+"',t11r='"+cervicalexam.getT11r()+"',sitting='"+cervicalexam.getSitting()+"',standing='"+cervicalexam.getStanding()+"',driving='"+cervicalexam.getDriving()+"',computeruse='"+cervicalexam.getComputeruse()+"',otherfunctional='"+cervicalexam.getOtherfunctional()+"',break_text3='"+cervicalexam.getBreak_text3()+"',assessment='"+cervicalexam.getAssessment()+"',patientstatus='"+cervicalexam.getPatientstatus()+"',diagnosis1='"+cervicalexam.getDiagnosis1()+"',diagnosis2='"+cervicalexam.getDiagnosis2()+"',diagnosis3='"+cervicalexam.getDiagnosis3()+"',diagnosis4='"+cervicalexam.getDiagnosis4()+"',diagnosis5='"+cervicalexam.getDiagnosis5()+"',diagnosis6='"+cervicalexam.getDiagnosis6()+"',times='"+cervicalexam.getTimes()+"',week='"+cervicalexam.getWeek()+"',spinal='"+cervicalexam.getSpinal()+"',chiropractic='"+cervicalexam.getChiropractic()+"',physical='"+cervicalexam.getPhysical()+"',orthotics='"+cervicalexam.getOrthotics()+"',modalities='"+cervicalexam.getModalities()+"',supplementation='"+cervicalexam.getSupplementation()+"',hep='"+cervicalexam.getHep()+"',radiographic='"+cervicalexam.getRadiographic()+"',mri='"+cervicalexam.getMri()+"',ctscan='"+cervicalexam.getCtscan()+"',nerve='"+cervicalexam.getNerve()+"',emg='"+cervicalexam.getEmg()+"',outside='"+cervicalexam.getOutside()+"',dc='"+cervicalexam.getDc()+"',otheraddress='"+cervicalexam.getOtheraddress()+"',break_text4='"+cervicalexam.getBreak_text4()+"',sign='"+cervicalexam.getSign()+"' WHERE cervicalexamid='"+cervicalexamid+"';";
    			
    			String Desc="Update cervicalexam "+cervicalexam.getPname();
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

public int deletecervicalexam(String cervicalexamid){
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
    	 String cmd_getpatient_pname="select pname from tbl_cervicalexam where cervicalexamid='"+cervicalexamid+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_cervicalexam where cervicalexamid='"+cervicalexamid+"'");
			
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
public List<Cervicalexam> getlimitedcervicalexam(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Cervicalexam> cervicalexam = new ArrayList<Cervicalexam>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_cervicalexam order by pname asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			cervicalexam.add( new Cervicalexam(resultSet.getString("cervicalexamid"),resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("muscle"),resultSet.getString("swelling"),resultSet.getString("headposture"),resultSet.getString("roundshoulder"), resultSet.getString("ao"),resultSet.getString("allsoft"),resultSet.getString("suboccipital"),resultSet.getString("scalenes"),resultSet.getString("levator"),resultSet.getString("teresminor"),resultSet.getString("teresmajor"),resultSet.getString("rhomboids"),resultSet.getString("trapezius"), resultSet.getString("pectoralis"),  resultSet.getString("paraspinals"),  resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("subluxation"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("c01"), resultSet.getString("c12"),resultSet.getString("c23"), resultSet.getString("hautantl"), resultSet.getString("hautantr"), resultSet.getString("extension"), resultSet.getString("c34"), resultSet.getString("c45"),resultSet.getString("c56"), resultSet.getString("foraminall"),resultSet.getString("foraminalr"), resultSet.getString("lflexion"),resultSet.getString("rflexion"), resultSet.getString("c67"),resultSet.getString("c7t1"),resultSet.getString("t12"),resultSet.getString("sotohalll"), resultSet.getString("sotohalll"), resultSet.getString("lrotation"),resultSet.getString("rrotation"),resultSet.getString("t23"),resultSet.getString("t34"),resultSet.getString("t45"), resultSet.getString("adsonsl"), resultSet.getString("adsonsr"),resultSet.getString("t56"),resultSet.getString("t67"),resultSet.getString("t78"), resultSet.getString("ulttl"),resultSet.getString("ulttl"),resultSet.getString("neurologicaltest"),resultSet.getString("c5l"),resultSet.getString("c5r"),resultSet.getString("c51l"), resultSet.getString("c51r"),resultSet.getString("c53l"),resultSet.getString("c53r"),resultSet.getString("c6l"),resultSet.getString("c6r"),resultSet.getString("c61l"), resultSet.getString("c61r"),resultSet.getString("c63l"),resultSet.getString("c63r"),resultSet.getString("c7l"),resultSet.getString("c7r"),resultSet.getString("c71l"), resultSet.getString("c71r"),resultSet.getString("c73l"),resultSet.getString("c73r"),resultSet.getString("c8l"),resultSet.getString("c8r"),resultSet.getString("c81l"), resultSet.getString("c81r"),resultSet.getString("t1l"),resultSet.getString("t1r"),resultSet.getString("t11l"), resultSet.getString("t11r"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("driving"),resultSet.getString("computeruse"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("diagnosis6"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("break_text4"),resultSet.getString("sign")));				
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
	return cervicalexam;

}
public int getnoofcervicalexam() {
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
	List<Cervicalexam> cervicalexam = new ArrayList<Cervicalexam>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_cervicalexam";
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
