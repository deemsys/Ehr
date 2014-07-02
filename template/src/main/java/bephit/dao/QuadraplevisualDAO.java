package bephit.dao;

import java.security.Principal;
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



public class QuadraplevisualDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setQuadraplevisual(Quadraplevisual quadraplevisual,String username)
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
	    	
	    	 String cmd="INSERT INTO `tbl_quadraplevisual`(username,symptom,`name`,`number`,`date`,painname,otherpainname,`painscale`,`painscale1`,`painscale2`,`painscale3`,`awakehours`)VALUES ('"+username+"','"+quadraplevisual.getSymptom()+"','"+quadraplevisual.getName()+"','"+quadraplevisual.getNumber()+"','"+quadraplevisual.getDate()+"','"+quadraplevisual.getPainname()+"','"+quadraplevisual.getOtherpainname()+"','"+quadraplevisual.getPainscale()+"','"+quadraplevisual.getPainscale1()+"','"+quadraplevisual.getPainscale2()+"','"+quadraplevisual.getPainscale3()+"','"+quadraplevisual.getAwakehours()+"')";
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
	

	public int deletequadruple(String quadrapleno)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet=null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	    try{
	    	String symptom="",username="",painname="";
	    	System.out.println("delete from tbl_quadraplevisual where quadrapleno='"+quadrapleno+"'");
	    	resultSet=statement.executeQuery("select username,symptom,painname from tbl_quadraplevisual where quadrapleno='"+quadrapleno+"'");
	    	while(resultSet.next())
	    	{
	    	username=resultSet.getString("username");
	    	symptom=resultSet.getString("symptom");	
	    	painname=resultSet.getString("painname");
	       	}
	    	if(painname.equals("Wrist/Hand"))
	    	{
	     statement.executeUpdate("delete from wristindex where username='"+username+"' and symptom='"+symptom+"'");
	    	}
	    	if(painname.equals("Low Back"))
	    	{
	    		  statement.executeUpdate("delete from tbl_lowback where username='"+username+"' and symptom='"+symptom+"'");
	    	}
	    	if(painname.equals("Neck/Mid Back"))
	    	{
	    		 statement.executeUpdate("delete from neckindex where username='"+username+"' and symptom='"+symptom+"'");
	    	}
	    	if(painname.equals("Oswestry"))
	    	{
	    		statement.executeUpdate("delete from oswestryindex where username='"+username+"' and symptom='"+symptom+"'");
	    	}
	    	if(painname.equals("Shoulder"))
	    	{
	    		statement.executeUpdate("delete from tbl_shoulderpainscore where username='"+username+"' and symptom='"+symptom+"'");
	    	}
	    	statement.executeUpdate("delete from tbl_quadraplevisual where quadrapleno='"+quadrapleno+"'");
	    
	    	
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
	
	
	
	public int updatequadruple(Quadraplevisual quadruplevisual)
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
	    	String cmd="UPDATE tbl_quadraplevisual SET name='"+quadruplevisual.getName()
	    	+"',number='"+quadruplevisual.getNumber()
	    	+"',date='"+quadruplevisual.getDate()
	    	+"',painname='"+quadruplevisual.getPainname()
	    	+"',otherpainname='"+quadruplevisual.getOtherpainname()
	    	+"',painscale='"+quadruplevisual.getPainscale()
	    	+"',painscale1='"+quadruplevisual.getPainscale1()
	    	+"',painscale2='"+quadruplevisual.getPainscale2()
	    	+"',painscale3='"+quadruplevisual.getPainscale3()
	    	+"',awakehours='"+quadruplevisual.getAwakehours()
	    	+"' WHERE quadrapleno='"+quadruplevisual.getQuadrapleno()+"';";
	    			
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

	
	public List<Quadraplevisual> getQuadraplevisual(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Quadraplevisual> quadraplevisual = new ArrayList<Quadraplevisual>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_quadraplevisual");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				quadraplevisual.add( new Quadraplevisual(resultSet.getString("quadrapleno"),resultSet.getString("patient_id"),resultSet.getString("username"),resultSet.getString("symptom"),resultSet.getString("name"), resultSet.getString("number"), resultSet.getString("date"),resultSet.getString("painname"), resultSet.getString("painscale"), resultSet.getString("painscale1"), resultSet.getString("painscale2"), resultSet.getString("painscale3"), resultSet.getString("awakehours")));
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
	    return quadraplevisual;
	}

	public List<Quadraplevisual> getQuadraplepatientid(String patient_id){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Quadraplevisual> quadraplevisual = new ArrayList<Quadraplevisual>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_quadraplevisual where patient_id='"+patient_id+"'");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				quadraplevisual.add( new Quadraplevisual(resultSet.getString("quadrapleno"),resultSet.getString("patient_id"),resultSet.getString("username"),resultSet.getString("symptom"),resultSet.getString("name"), resultSet.getString("number"), resultSet.getString("date"), resultSet.getString("painname"),resultSet.getString("painscale"), resultSet.getString("painscale1"), resultSet.getString("painscale2"), resultSet.getString("painscale3"), resultSet.getString("awakehours")));
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
	    return quadraplevisual;
	}
	public List<Quadraplevisual> checkusernameQuadraple(String symptom,String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Quadraplevisual> quadraplevisual = new ArrayList<Quadraplevisual>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_quadraplevisual where symptom='"+symptom+"' and username='"+username+"'");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				quadraplevisual.add( new Quadraplevisual(resultSet.getString("quadrapleno"),resultSet.getString("username"),resultSet.getString("symptom"),resultSet.getString("name"), resultSet.getString("number"), resultSet.getString("date"), resultSet.getString("painname"),resultSet.getString("otherpainname"),resultSet.getString("painscale"), resultSet.getString("painscale1"), resultSet.getString("painscale2"), resultSet.getString("painscale3"), resultSet.getString("awakehours")));
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
	    return quadraplevisual;
	}
	
	public List<Quadraplevisual> checkQuadraplepain(Quadraplevisual quadraple,Principal principal){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Quadraplevisual> quadraplevisual = new ArrayList<Quadraplevisual>();
	    try{
			resultSet = statement.executeQuery("select * from tbl_quadraplevisual where symptom='"+quadraple.getSymptom()+"' and username='"+principal.getName()+"' and painname='"+quadraple.getPainname()+"'");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				quadraplevisual.add( new Quadraplevisual(resultSet.getString("quadrapleno"),resultSet.getString("username"),resultSet.getString("symptom"),resultSet.getString("name"), resultSet.getString("number"), resultSet.getString("date"), resultSet.getString("painname"),resultSet.getString("otherpainname"),resultSet.getString("painscale"), resultSet.getString("painscale1"), resultSet.getString("painscale2"), resultSet.getString("painscale3"), resultSet.getString("awakehours")));
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
	    return quadraplevisual;
	}
	
	public List<Quadraplevisual> getQuadrapledetails(String quadrupleno){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		List<Quadraplevisual> quadraplevisual = new ArrayList<Quadraplevisual>();
	    try{
			String cmd="select * from tbl_quadraplevisual where quadrapleno='"+quadrupleno+"'";
			System.out.println(cmd);
	    	resultSet = statement.executeQuery("select * from tbl_quadraplevisual where quadrapleno='"+quadrupleno+"'");
			/*System.out.println(resultSet.toString());*/
			while(resultSet.next()){
				quadraplevisual.add( new Quadraplevisual(resultSet.getString("quadrapleno"),resultSet.getString("username"),resultSet.getString("symptom"),resultSet.getString("name"), resultSet.getString("number"), resultSet.getString("date"), resultSet.getString("painname"),resultSet.getString("otherpainname"),resultSet.getString("painscale"), resultSet.getString("painscale1"), resultSet.getString("painscale2"), resultSet.getString("painscale3"), resultSet.getString("awakehours")));
				}
			
			System.out.println(quadraplevisual.get(0).getDate());
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
	    return quadraplevisual;
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