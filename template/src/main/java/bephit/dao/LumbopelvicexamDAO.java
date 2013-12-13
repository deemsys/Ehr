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


import bephit.model.Lumbopelvicexam;
 



public class LumbopelvicexamDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setLumbopelvicexam(Lumbopelvicexam lumbopelvicexam)
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
	    	 String cmd="INSERT INTO `tbl_lumbopelvicexam`(`pname`,`date`,`gait`,`pelvicunleveling`,`ao`,`allsoft`,`except`,`leglengthl`,`leglengthr`,`piriformis`,`quadlumb`,`paraspinals`,`gluteus`,`gluteusmedius`,`hamstrings`,`iliopsoas`,`rectus`,`obliques`,`othernotes`,`functionalrangeofmotion`,`subluxation`,`orthopedic`,`flexion`,`t89`,`t910`,`trendelburgl`,`trendelburgr`,`extension`,`t1011`,`t1112`,`kempsl`,`kempsr`,`lflexion`,`t12l1`,`l12`,`slumpl`,`slumpr`,`lrotation`,`l23`,`l34`,`straightlegl`,`straightlegr`,`l45`,`l5s1`,`welllegl`,`welllegr`,`lsi`,`rsi`,`nachlasl`,`nachlasr`,`positiveminor`,`positiveadam`,`neurologicaltest`,`exceptn`,`l1l`,`l1r`,`l15l`,`l15r`,`l2l`,`l2r`,`l25l`,`l25r`,`l3l`,`l3r`,`l35l`,`l35r`,`l4l`,`l4r`,`l45l`,`l45r`,`l4l3`,`l4r3`,`l5l`,`l5r`,`l55l`,`l55r`,`l5l3`,`l5r3`,`sl`,`sr`,`s5l`,`s5r`,`sil`,`sir`,`sitting`,`lifting`,`walking`,`stairs`,`otherfunctional`,`break_text3`,`assessment`,`patientstatus`,`diagnosis1`,`diagnosis2`,`diagnosis3`,`diagnosis4`,`diagnosis5`,`times`,`week`,`spinal`,`chiropractic`,`physical`,`orthotics`,`modalities`,`supplementation`,`hep`,`radiographic`,`mri`,`ctscan`,`nerve`,`emg`,`outside`,`dc`,`otheraddress`,`sign`)VALUES ('"+lumbopelvicexam.getPname()+"','"+lumbopelvicexam.getDate()+"','"+lumbopelvicexam.getGait()+"','"+lumbopelvicexam.getPelvicunleveling()+"','"+lumbopelvicexam.getAo()+"','"+lumbopelvicexam.getAllsoft()+"','"+lumbopelvicexam.getExcept()+"','"+lumbopelvicexam.getLeglengthl()+"','"+lumbopelvicexam.getLeglengthr()+"','"+lumbopelvicexam.getPiriformis()+"','"+lumbopelvicexam.getQuadlumb()+"','"+lumbopelvicexam.getParaspinals()+"','"+lumbopelvicexam.getGluteus()+"','"+lumbopelvicexam.getGluteusmedius()+"','"+lumbopelvicexam.getHamstrings()+"','"+lumbopelvicexam.getIliopsoas()+"','"+lumbopelvicexam.getRectus()+"','"+lumbopelvicexam.getObliques()+"','"+lumbopelvicexam.getOthernotes()+"','"+lumbopelvicexam.getFunctionalrangeofmotion()+"','"+lumbopelvicexam.getSubluxation()+"','"+lumbopelvicexam.getOrthopedic()+"','"+lumbopelvicexam.getFlexion()+"','"+lumbopelvicexam.getT89()+"','"+lumbopelvicexam.getT910()+"','"+lumbopelvicexam.getTrendelburgl()+"','"+lumbopelvicexam.getTrendelburgr()+"','"+lumbopelvicexam.getExtension()+"','"+lumbopelvicexam.getT1011()+"','"+lumbopelvicexam.getT1112()+"','"+lumbopelvicexam.getKempsl()+"','"+lumbopelvicexam.getKempsr()+"','"+lumbopelvicexam.getLflexion()+"','"+lumbopelvicexam.getT12l1()+"','"+lumbopelvicexam.getL12()+"','"+lumbopelvicexam.getSlumpl()+"','"+lumbopelvicexam.getSlumpr()+"','"+lumbopelvicexam.getLrotation()+"','"+lumbopelvicexam.getL23()+"','"+lumbopelvicexam.getL34()+"','"+lumbopelvicexam.getStraightlegl()+"','"+lumbopelvicexam.getStraightlegr()+"','"+lumbopelvicexam.getL45()+"','"+lumbopelvicexam.getL5s1()+"','"+lumbopelvicexam.getWelllegl()+"','"+lumbopelvicexam.getWelllegr()+"','"+lumbopelvicexam.getLsi()+"','"+lumbopelvicexam.getRsi()+"','"+lumbopelvicexam.getNachlasl()+"','"+lumbopelvicexam.getNachlasr()+"','"+lumbopelvicexam.getPositiveminor()+"','"+lumbopelvicexam.getPositiveadam()+"','"+lumbopelvicexam.getNeurologicaltest()+"','"+lumbopelvicexam.getExceptn()+"','"+lumbopelvicexam.getL1l()+"','"+lumbopelvicexam.getL1r()+"','"+lumbopelvicexam.getL15l()+"','"+lumbopelvicexam.getL15r()+"','"+lumbopelvicexam.getL2l()+"','"+lumbopelvicexam.getL2r()+"','"+lumbopelvicexam.getL25l()+"','"+lumbopelvicexam.getL25r()+"','"+lumbopelvicexam.getL3l()+"','"+lumbopelvicexam.getL3r()+"','"+lumbopelvicexam.getL35l()+"','"+lumbopelvicexam.getL35r()+"','"+lumbopelvicexam.getL4l()+"','"+lumbopelvicexam.getL4r()+"','"+lumbopelvicexam.getL45l()+"','"+lumbopelvicexam.getL45r()+"','"+lumbopelvicexam.getL4l3()+"','"+lumbopelvicexam.getL4r3()+"','"+lumbopelvicexam.getL5l()+"','"+lumbopelvicexam.getL5r()+"','"+lumbopelvicexam.getL55l()+"','"+lumbopelvicexam.getL55r()+"','"+lumbopelvicexam.getL5l3()+"','"+lumbopelvicexam.getL5r3()+"','"+lumbopelvicexam.getSl()+"','"+lumbopelvicexam.getSr()+"','"+lumbopelvicexam.getS5l()+"','"+lumbopelvicexam.getS5r()+"','"+lumbopelvicexam.getSil()+"','"+lumbopelvicexam.getSir()+"','"+lumbopelvicexam.getSitting()+"','"+lumbopelvicexam.getLifting()+"','"+lumbopelvicexam.getWalking()+"','"+lumbopelvicexam.getStairs()+"','"+lumbopelvicexam.getOtherfunctional()+"','"+lumbopelvicexam.getBreak_text3()+"','"+lumbopelvicexam.getAssessment()+"','"+lumbopelvicexam.getPatientstatus()+"','"+lumbopelvicexam.getDiagnosis1()+"','"+lumbopelvicexam.getDiagnosis2()+"','"+lumbopelvicexam.getDiagnosis3()+"','"+lumbopelvicexam.getDiagnosis4()+"','"+lumbopelvicexam.getDiagnosis5()+"','"+lumbopelvicexam.getTimes()+"','"+lumbopelvicexam.getWeek()+"','"+lumbopelvicexam.getSpinal()+"','"+lumbopelvicexam.getChiropractic()+"','"+lumbopelvicexam.getPhysical()+"','"+lumbopelvicexam.getOrthotics()+"','"+lumbopelvicexam.getModalities()+"','"+lumbopelvicexam.getSupplementation()+"','"+lumbopelvicexam.getHep()+"','"+lumbopelvicexam.getRadiographic()+"','"+lumbopelvicexam.getMri()+"','"+lumbopelvicexam.getCtscan()+"','"+lumbopelvicexam.getNerve()+"','"+lumbopelvicexam.getEmg()+"','"+lumbopelvicexam.getOutside()+"','"+lumbopelvicexam.getDc()+"','"+lumbopelvicexam.getOtheraddress()+"','"+lumbopelvicexam.getSign()+"')";
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

	
public List<Lumbopelvicexam> getLumbopelvicexam(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Lumbopelvicexam> lumbopelvicexam = new ArrayList<Lumbopelvicexam>();
    try{
		resultSet = statement.executeQuery("select * from tbl_lumbopelvicexam");
		System.out.println(resultSet.toString());
		while(resultSet.next()){
			lumbopelvicexam.add( new Lumbopelvicexam(resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("gait"),resultSet.getString("pelvicunleveling"), resultSet.getString("ao"),resultSet.getString("allsoft"),resultSet.getString("except"),resultSet.getString("leglengthl"),resultSet.getString("leglengthr"),resultSet.getString("piriformis"),resultSet.getString("quadlumb"),resultSet.getString("paraspinals"),resultSet.getString("gluteus"), resultSet.getString("gluteusmedius"), resultSet.getString("hamstrings"), resultSet.getString("iliopsoas"), resultSet.getString("rectus"), resultSet.getString("obliques"), resultSet.getString("othernotes"), resultSet.getString("functionalrangeofmotion"), resultSet.getString("subluxation"), resultSet.getString("orthopedic"), resultSet.getString("flexion"),resultSet.getString("t89"), resultSet.getString("t910"), resultSet.getString("trendelburgl"), resultSet.getString("trendelburgr"), resultSet.getString("extension"), resultSet.getString("t1011"), resultSet.getString("t1112"), resultSet.getString("kempsl"),resultSet.getString("kempsr"), resultSet.getString("lflexion"), resultSet.getString("t12l1"),resultSet.getString("l12"),resultSet.getString("slumpl"), resultSet.getString("slumpr"), resultSet.getString("lrotation"),resultSet.getString("l23"),resultSet.getString("l34"), resultSet.getString("straightlegl"), resultSet.getString("straightlegr"),resultSet.getString("l45"),resultSet.getString("l5s1"), resultSet.getString("welllegl"),resultSet.getString("welllegr"),resultSet.getString("lsi"),resultSet.getString("rsi"), resultSet.getString("nachlasl"),resultSet.getString("nachlasr"),  resultSet.getString("positiveminor"),resultSet.getString("positiveadam"),resultSet.getString("neurologicaltest"),resultSet.getString("exceptn"),resultSet.getString("l1l"),resultSet.getString("l1r"),resultSet.getString("l15l"), resultSet.getString("l15r"),resultSet.getString("l2l"),resultSet.getString("l2r"),resultSet.getString("l25l"),resultSet.getString("l25r"),resultSet.getString("l3l"),resultSet.getString("l3r"), resultSet.getString("l35l"), resultSet.getString("l35r"),resultSet.getString("l4l"),resultSet.getString("l4r"),resultSet.getString("l45l"),resultSet.getString("l45r"),resultSet.getString("l4l3"),resultSet.getString("l4r3"),resultSet.getString("l5l"),resultSet.getString("l5r"),resultSet.getString("l55l"),resultSet.getString("l55r"),resultSet.getString("l5l3"),resultSet.getString("l5r3"),resultSet.getString("sl"),resultSet.getString("sr"),resultSet.getString("s5l"), resultSet.getString("s5r"),resultSet.getString("sil"), resultSet.getString("sir"),resultSet.getString("sitting"),resultSet.getString("lifting"),resultSet.getString("walking"),resultSet.getString("stairs"), resultSet.getString("otherfunctional"),resultSet.getString("break_text3"), resultSet.getString("assessment"), resultSet.getString("patientstatus"),resultSet.getString("diagnosis1"),resultSet.getString("diagnosis2"),resultSet.getString("diagnosis3"),resultSet.getString("diagnosis4"),resultSet.getString("diagnosis5"),resultSet.getString("times"),resultSet.getString("week"),resultSet.getString("spinal"),resultSet.getString("chiropractic"),resultSet.getString("physical"),resultSet.getString("orthotics"),resultSet.getString("modalities"),resultSet.getString("supplementation"),resultSet.getString("hep"),resultSet.getString("radiographic"),resultSet.getString("mri"),resultSet.getString("ctscan"),resultSet.getString("nerve"),resultSet.getString("emg"),resultSet.getString("outside"),resultSet.getString("dc"),resultSet.getString("otheraddress"),resultSet.getString("sign")));
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
    return lumbopelvicexam;
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
