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
public class NarrativereportDAO
{
	
		private DataSource dataSource;
		 
		public void setDataSource(DataSource dataSource) {
			this.dataSource = dataSource;
		}
		public int insertnarrativereport(Narrativereport narrativereport)
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
		    	/*String d="insert into tbl_narrativereport(reportdate,patient,dateofinjury,dateoffirstvisit,towhom,patientname,gender,accident,name,dateofconsultation,gender1,gender2,accidentdate,gender3,gender4,gender5,name1,gendernew,gender6,gender7,gender8,gender9,gender10,slammed,slammed1,symptom,appeared,priordate,gender11,name3,gender12,pastmedicalhistory,gender13,gender14,gender15,gender16,gender17,gender18,name4,clinicdate,gender19,vehicleaccident,gender20,gender21,gender22,gender23,gender24,gendernew2,gendernew3,gender25,gender26,gender27,gender28,gender29,gender30,age,age1,lb,gender31,gender32,gender33,gender34,gendernew4,gender35,gender36,gender37,gender38,gender39,gendernew5,tenderness,gender40,gendernew6,gender41,noted,rangeofmotion,painres1,tonicity1,painres2,tonicity2,painres3,tonicity3,painres4,tonicity4,painres5,tonicity5,painres6,tonicity6,painres7,tonicity7,painres8,tonicity8,painres9,tonicity9,painres10,tonicity10,painres11,tonicity11,painres12,tonicity12,dermatome,gender42,gender43,gender44,level1,level,gender45,level2,orthopedictest1,jacksonsr,jacksonsl,orthopedictest2,doublelegraiser,doublelegraisel,orthopedictest3,yeomansr,yeomansl,orthopedictest4,foraminalr,foraminall,orthopedictest5,orthopedicr,orthopedicl,gender46,gender47,gender48,gender49,gender50,gender51,fracture,gender52,gender53,gender54,presentlevel,gender55,osteophytes,gender56,gender57,gender58,gender59,gender60,subluxations,icd1,description1,icd2,description2,icd3,description3,icd4,description4,gender61,pname,date9,gender62,gender63,pname1,datenew,gender64,poor,gender67,gender68,gender69,gender70,pname2,gender71,gender72,gender73,gender74,gender75,pname3,sign)values('"+narrativereport.getReportdate()+"','"+narrativereport.getPatient()+"','"+narrativereport.getDateofinjury()+"','"+narrativereport.getDateoffirstvisit()+"','"+narrativereport.getTowhom()+"','"+narrativereport.getPatientname()+"','"+narrativereport.getGender()+"','"+narrativereport.getAccident()+"','"+narrativereport.getName()+"','"+narrativereport.getDateofconsultation()+"','"+narrativereport.getGender1()+"','"+narrativereport.getGender2()+"','"+narrativereport.getAccidentdate()+"','"+narrativereport.getGender3()+"','"+narrativereport.getGender4()+"','"+narrativereport.getGender5()+"','"+narrativereport.getName1()+"','"+narrativereport.getGendernew()+"','"+narrativereport.getGender6()+"','"+narrativereport.getGender7()+"','"+narrativereport.getGender8()+"','"+narrativereport.getGender9()+"','"+narrativereport.getGender10()+"','"+narrativereport.getSlammed()+"','"+narrativereport.getSlammed1()+"','"+narrativereport.getSymptom()+"','"+narrativereport.getAppeared()+"','"+narrativereport.getPriordate()+"','"+narrativereport.getGender11()+"','"+narrativereport.getName3()+"','"+narrativereport.getGender12()+"','"+narrativereport.getPastmedicalhistory()+"','"+narrativereport.getGender13()+"','"+narrativereport.getGender14()+"','"+narrativereport.getGender15()+"','"+narrativereport.getGender16()+"','"+narrativereport.getGender17()+"','"+narrativereport.getGender18()+"','"+narrativereport.getName4()+"','"+narrativereport.getClinicdate()+"','"+narrativereport.getGender19()+"','"+narrativereport.getVehicleaccident()+"','"+narrativereport.getGender20()+"','"+narrativereport.getGender21()+"','"+narrativereport.getGender22()+"','"+narrativereport.getGender23()+"','"+narrativereport.getGender24()+"','"+narrativereport.getGendernew2()+"','"+narrativereport.getGendernew3()+"','"+narrativereport.getGender25()+"','"+narrativereport.getGender26()+"','"+narrativereport.getGender27()+"','"+narrativereport.getGender28()+"','"+narrativereport.getGender29()+"','"+narrativereport.getGender30()+"','"+narrativereport.getAge()+"','"+narrativereport.getAge1()+"','"+narrativereport.getLb()+"','"+narrativereport.getGender31()+"','"+narrativereport.getGender32()+"','"+narrativereport.getGender33()+"','"+narrativereport.getGender34()+"','"+narrativereport.getGendernew4()+"','"+narrativereport.getGender35()+"','"+narrativereport.getGender36()+"','"+narrativereport.getGender37()+"','"+narrativereport.getGender38()+"','"+narrativereport.getGender39()+"','"+narrativereport.getGendernew5()+"','"+narrativereport.getTenderness()+"','"+narrativereport.getGender40()+"','"+narrativereport.getGendernew6()+"','"+narrativereport.getGender41()+"','"+narrativereport.getNoted()+"','"+narrativereport.getRangeofmotion()+"','"+narrativereport.getPainres1()+"','"+narrativereport.getTonicity1()+"','"+narrativereport.getPainres2()+"','"+narrativereport.getTonicity2()+"','"+narrativereport.getPainres3()+"','"+narrativereport.getTonicity3()+"','"+narrativereport.getPainres4()+"','"+narrativereport.getTonicity4()+"','"+narrativereport.getPainres5()+"','"+narrativereport.getTonicity5()+"','"+narrativereport.getPainres6()+"','"+narrativereport.getTonicity6()+"','"+narrativereport.getPainres7()+"','"+narrativereport.getTonicity7()+"','"+narrativereport.getPainres8()+"','"+narrativereport.getTonicity8()+"','"+narrativereport.getPainres9()+"','"+narrativereport.getTonicity9()+"','"+narrativereport.getPainres10()+"','"+narrativereport.getTonicity10()+"','"+narrativereport.getPainres11()+"','"+narrativereport.getTonicity11()+"','"+narrativereport.getPainres12()+"','"+narrativereport.getPainres12()+"','"+narrativereport.getDermatome()+"','"+narrativereport.getGender42()+"','"+narrativereport.getGender43()+"','"+narrativereport.getGender44()+"','"+narrativereport.getLevel1()+"','"+narrativereport.getLevel()+"','"+narrativereport.getGender45()+"','"+narrativereport.getLevel2()+"','"+narrativereport.getOrthopedictest1()+"','"+narrativereport.getJacksonsr()+"','"+narrativereport.getJacksonsl()+"','"+narrativereport.getOrthopedictest2()+"','"+narrativereport.getDoublelegraiser()+"','"+narrativereport.getDoublelegraisel()+"','"+narrativereport.getOrthopedictest3()+"','"+narrativereport.getYeomansr()+"','"+narrativereport.getYeomansl()+"','"+narrativereport.getOrthopedictest4()+"','"+narrativereport.getForaminalr()+"','"+narrativereport.getForaminall()+"','"+narrativereport.getOrthopedictest5()+"','"+narrativereport.getOrthopedicr()+"','"+narrativereport.getOrthopedicl()+"','"+narrativereport.getGender46()+"','"+narrativereport.getGender47()+"','"+narrativereport.getGender48()+"','"+narrativereport.getGender49()+"','"+narrativereport.getGender50()+"','"+narrativereport.getGender51()+"','"+narrativereport.getFracture()+"','"+narrativereport.getGender52()+"','"+narrativereport.getGender53()+"','"+narrativereport.getGender54()+"','"+narrativereport.getPresentlevel()+"','"+narrativereport.getGender55()+"','"+narrativereport.getOsteophytes()+"','"+narrativereport.getGender56()+"','"+narrativereport.getGender57()+"','"+narrativereport.getGender58()+"','"+narrativereport.getGender59()+"','"+narrativereport.getGender60()+"','"+narrativereport.getSubluxations()+"','"+narrativereport.getIcd1()+"','"+narrativereport.getDescription1()+"','"+narrativereport.getIcd2()+"','"+narrativereport.getDescription2()+"','"+narrativereport.getIcd3()+"','"+narrativereport.getDescription3()+"','"+narrativereport.getIcd4()+"','"+narrativereport.getDescription4()+"','"+narrativereport.getGender61()+"','"+narrativereport.getPname()+"','"+narrativereport.getDate9()+"','"+narrativereport.getGender62()+"','"+narrativereport.getGender63()+"','"+narrativereport.getGender64()+"','"+narrativereport.getGender65()+"','"+narrativereport.getPoor()+"','"+narrativereport.getGender67()+"','"+narrativereport.getGender68()+"','"+narrativereport.getGender69()+"','"+narrativereport.getGender70()+"','"+narrativereport.getPname2()+"','"+narrativereport.getGender71()+"','"+narrativereport.getGender72()+"','"+narrativereport.getGender73()+"','"+narrativereport.getGender74()+"','"+narrativereport.getGender75()+"','"+narrativereport.getPname3()+"','"+narrativereport.getSign()+"')";*/
		    	String d="insert into tbl_narrativereport(reportdate,patient,dateofinjury,dateoffirstvisit,towhom,patientname,gender,accident,name,dateofconsultation,gender1,gender2,accidentdate,gender3,gender4,gender5,name1,gendernew,gender6,gender7,gender8,gender9,name2,body,gender10,slammed,slammed1,symptom,appeared,priordate,gender11,name3,gender12,pastmedicalhistory,gender13,gender14,gender15,gender16,gender17,gender18,name4,clinicdate,gender19,vehicleaccident,gender20,gender21,allieviated,gender22,gender23,gender24,gendernew2,gendernew3,gender25,gender26,gender27,gender28,gender29,gender30,age,age1,lb,gender31,gender32,gender33,gender34,gendernew4,gender35,gender36,gender37,gender38,gender39,gendernew5,tenderness,gender40,gendernew6,gender41,noted,rangeofmotion,painres1,tonicity1,painres2,tonicity2,painres3,tonicity3,painres4,tonicity4,painres5,tonicity5,painres6,tonicity6,painres7,tonicity7,painres8,tonicity8,painres9,tonicity9,painres10,tonicity10,painres11,tonicity11,painres12,tonicity12,dermatome,gender42,gender43,gender44,level1,level,gender45,level2,orthopedictest1,jacksonsr,jacksonsl,orthopedictest2,doublelegraiser,doublelegraisel,orthopedictest3,yeomansr,yeomansl,orthopedictest4,foraminalr,foraminall,orthopedictest5,shoulderr,shoulderl,orthopedictest6,orthopedicr,orthopedicl,gender46,gender47,gender48,gender49,gender50,gender51,fracture,gender52,gender53,gender54,presentlevel,gender55,osteophytes,gender56,gender57,gender58,gender59,gender60,subluxations,icd1,description1,icd2,description2,icd3,description3,icd4,description4,gender61,pname,date9,gender62,gender63,pname1,datenew,gender64,poor,gender67,gender68,gender69,gender70,pname2,gender71,gender72,gender73,gender74,gender75,pname3,sign)values('"+narrativereport.getReportdate()+"','"+narrativereport.getPatient()+"','"+narrativereport.getDateofinjury()+"','"+narrativereport.getDateoffirstvisit()+"','"+narrativereport.getTowhom()+"','"+narrativereport.getPatientname()+"','"+narrativereport.getGender()+"','"+narrativereport.getAccident()+"','"+narrativereport.getName()+"','"+narrativereport.getDateofconsultation()+"','"+narrativereport.getGender1()+"','"+narrativereport.getGender2()+"','"+narrativereport.getAccidentdate()+"','"+narrativereport.getGender3()+"','"+narrativereport.getGender4()+"','"+narrativereport.getGender5()+"','"+narrativereport.getName1()+"','"+narrativereport.getGendernew()+"','"+narrativereport.getGender6()+"','"+narrativereport.getGender7()+"','"+narrativereport.getGender8()+"','"+narrativereport.getGender9()+"','"+narrativereport.getName2()+"','"+narrativereport.getBody()+"','"+narrativereport.getGender10()+"','"+narrativereport.getSlammed()+"','"+narrativereport.getSlammed1()+"','"+narrativereport.getSymptom()+"','"+narrativereport.getAppeared()+"','"+narrativereport.getPriordate()+"','"+narrativereport.getGender11()+"','"+narrativereport.getName3()+"','"+narrativereport.getGender12()+"','"+narrativereport.getPastmedicalhistory()+"','"+narrativereport.getGender13()+"','"+narrativereport.getGender14()+"','"+narrativereport.getGender15()+"','"+narrativereport.getGender16()+"','"+narrativereport.getGender17()+"','"+narrativereport.getGender18()+"','"+narrativereport.getName4()+"','"+narrativereport.getClinicdate()+"','"+narrativereport.getGender19()+"','"+narrativereport.getVehicleaccident()+"','"+narrativereport.getGender20()+"','"+narrativereport.getGender21()+"','"+narrativereport.getAllieviated()+"','"+narrativereport.getGender22()+"','"+narrativereport.getGender23()+"','"+narrativereport.getGender24()+"','"+narrativereport.getGendernew2()+"','"+narrativereport.getGendernew3()+"','"+narrativereport.getGender25()+"','"+narrativereport.getGender26()+"','"+narrativereport.getGender27()+"','"+narrativereport.getGender28()+"','"+narrativereport.getGender29()+"','"+narrativereport.getGender30()+"','"+narrativereport.getAge()+"','"+narrativereport.getAge1()+"','"+narrativereport.getLb()+"','"+narrativereport.getGender31()+"','"+narrativereport.getGender32()+"','"+narrativereport.getGender33()+"','"+narrativereport.getGender34()+"','"+narrativereport.getGendernew4()+"','"+narrativereport.getGender35()+"','"+narrativereport.getGender36()+"','"+narrativereport.getGender37()+"','"+narrativereport.getGender38()+"','"+narrativereport.getGender39()+"','"+narrativereport.getGendernew5()+"','"+narrativereport.getTenderness()+"','"+narrativereport.getGender40()+"','"+narrativereport.getGendernew6()+"','"+narrativereport.getGender41()+"','"+narrativereport.getNoted()+"','"+narrativereport.getRangeofmotion()+"','"+narrativereport.getPainres1()+"','"+narrativereport.getTonicity1()+"','"+narrativereport.getPainres2()+"','"+narrativereport.getTonicity2()+"','"+narrativereport.getPainres3()+"','"+narrativereport.getTonicity3()+"','"+narrativereport.getPainres4()+"','"+narrativereport.getTonicity4()+"','"+narrativereport.getPainres5()+"','"+narrativereport.getTonicity5()+"','"+narrativereport.getPainres6()+"','"+narrativereport.getTonicity6()+"','"+narrativereport.getPainres7()+"','"+narrativereport.getTonicity7()+"','"+narrativereport.getPainres8()+"','"+narrativereport.getTonicity8()+"','"+narrativereport.getPainres9()+"','"+narrativereport.getTonicity9()+"','"+narrativereport.getPainres10()+"','"+narrativereport.getTonicity10()+"','"+narrativereport.getPainres11()+"','"+narrativereport.getTonicity11()+"','"+narrativereport.getPainres12()+"','"+narrativereport.getTonicity12()+"','"+narrativereport.getDermatome()+"','"+narrativereport.getGender42()+"','"+narrativereport.getGender43()+"','"+narrativereport.getGender44()+"','"+narrativereport.getLevel1()+"','"+narrativereport.getLevel()+"','"+narrativereport.getGender45()+"','"+narrativereport.getLevel2()+"','"+narrativereport.getOrthopedictest1()+"','"+narrativereport.getJacksonsr()+"','"+narrativereport.getJacksonsl()+"','"+narrativereport.getOrthopedictest2()+"','"+narrativereport.getDoublelegraiser()+"','"+narrativereport.getDoublelegraisel()+"','"+narrativereport.getOrthopedictest3()+"','"+narrativereport.getYeomansr()+"','"+narrativereport.getYeomansl()+"','"+narrativereport.getOrthopedictest4()+"','"+narrativereport.getForaminalr()+"','"+narrativereport.getForaminall()+"','"+narrativereport.getOrthopedictest5()+"','"+narrativereport.getShoulderr()+"','"+narrativereport.getShoulderl()+"','"+narrativereport.getOrthopedictest6()+"','"+narrativereport.getOrthopedicr()+"','"+narrativereport.getOrthopedicl()+"','"+narrativereport.getGender46()+"','"+narrativereport.getGender47()+"','"+narrativereport.getGender48()+"','"+narrativereport.getGender49()+"','"+narrativereport.getGender50()+"','"+narrativereport.getGender51()+"','"+narrativereport.getFracture()+"','"+narrativereport.getGender52()+"','"+narrativereport.getGender53()+"','"+narrativereport.getGender54()+"','"+narrativereport.getPresentlevel()+"','"+narrativereport.getGender55()+"','"+narrativereport.getOsteophytes()+"','"+narrativereport.getGender56()+"','"+narrativereport.getGender57()+"','"+narrativereport.getGender58()+"','"+narrativereport.getGender59()+"','"+narrativereport.getGender60()+"','"+narrativereport.getSubluxations()+"','"+narrativereport.getIcd1()+"','"+narrativereport.getDescription1()+"','"+narrativereport.getIcd2()+"','"+narrativereport.getDescription2()+"','"+narrativereport.getIcd3()+"','"+narrativereport.getDescription3()+"','"+narrativereport.getIcd4()+"','"+narrativereport.getDescription4()+"','"+narrativereport.getGender61()+"','"+narrativereport.getPname()+"','"+narrativereport.getDate9()+"','"+narrativereport.getGender62()+"','"+narrativereport.getGender63()+"','"+narrativereport.getPname1()+"','"+narrativereport.getGender64()+"','"+narrativereport.getGender65()+"','"+narrativereport.getPoor()+"','"+narrativereport.getGender67()+"','"+narrativereport.getGender68()+"','"+narrativereport.getGender69()+"','"+narrativereport.getGender70()+"','"+narrativereport.getPname2()+"','"+narrativereport.getGender71()+"','"+narrativereport.getGender72()+"','"+narrativereport.getGender73()+"','"+narrativereport.getGender74()+"','"+narrativereport.getGender75()+"','"+narrativereport.getPname3()+"','"+narrativereport.getSign()+"')";		
		    	System.out.print(d);
		    			statement.executeUpdate(d);
		    			
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
		
		public List<Narrativereport> viewnarrativereport(){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Narrativereport> narrativereport = new ArrayList<Narrativereport>();
		    try{
		    	System.out.print("database");
				resultSet = statement.executeQuery("select * from tbl_narrativereport");
				while(resultSet.next()){
					narrativereport.add(new Narrativereport(resultSet.getString("narrativeno"), resultSet.getString("reportdate"), resultSet.getString("patient"), resultSet.getString("dateofinjury"), resultSet.getString("dateoffirstvisit"), resultSet.getString("towhom"), resultSet.getString("patientname"), resultSet.getString("gender"), resultSet.getString("accident"), resultSet.getString("name"), resultSet.getString("dateofconsultation"), resultSet.getString("gender1"), resultSet.getString("gender2"), resultSet.getString("accidentdate"), resultSet.getString("gender3"), resultSet.getString("gender4"), resultSet.getString("gender5"), resultSet.getString("name1"), resultSet.getString("gendernew"), resultSet.getString("gender6"), resultSet.getString("gender7"), resultSet.getString("gender8"), resultSet.getString("gender9"),resultSet.getString("name2"),resultSet.getString("body"), resultSet.getString("gender10"), resultSet.getString("slammed"), resultSet.getString("slammed1"), resultSet.getString("symptom"), resultSet.getString("appeared"), resultSet.getString("priordate"), resultSet.getString("gender11"), resultSet.getString("name3"), resultSet.getString("gender12"), resultSet.getString("pastmedicalhistory"), resultSet.getString("gender13"), resultSet.getString("gender14"), resultSet.getString("gender15"), resultSet.getString("gender16"), resultSet.getString("gender17"), resultSet.getString("gender18"), resultSet.getString("name4"), resultSet.getString("clinicdate"), resultSet.getString("gender19"), resultSet.getString("vehicleaccident"), resultSet.getString("gender20"), resultSet.getString("gender21"),resultSet.getString("allieviated"), resultSet.getString("gender22"), resultSet.getString("gender23"), resultSet.getString("gender24"), resultSet.getString("gendernew2"), resultSet.getString("gendernew3"), resultSet.getString("gender25"), resultSet.getString("gender26"), resultSet.getString("gender27"), resultSet.getString("gender28"), resultSet.getString("gender29"), resultSet.getString("gender30"), resultSet.getString("age"), resultSet.getString("age1"), resultSet.getString("lb"), resultSet.getString("gender31"), resultSet.getString("gender32"), resultSet.getString("gender33"), resultSet.getString("gender34"), resultSet.getString("gendernew4"), resultSet.getString("gender35"), resultSet.getString("gender36"), resultSet.getString("gender37"), resultSet.getString("gender38"), resultSet.getString("gender39"), resultSet.getString("gendernew5"), resultSet.getString("tenderness"), resultSet.getString("gender40"), resultSet.getString("gendernew6"), resultSet.getString("gender41"), resultSet.getString("noted"), resultSet.getString("rangeofmotion"), resultSet.getString("painres1"), resultSet.getString("tonicity1"), resultSet.getString("painres2"), resultSet.getString("tonicity2"), resultSet.getString("painres3"), resultSet.getString("tonicity3"), resultSet.getString("painres4"), resultSet.getString("tonicity4"), resultSet.getString("painres5"), resultSet.getString("tonicity5"), resultSet.getString("painres6"), resultSet.getString("tonicity6"), resultSet.getString("painres7"), resultSet.getString("tonicity7"), resultSet.getString("painres8"), resultSet.getString("tonicity8"), resultSet.getString("painres9"), resultSet.getString("tonicity9"), resultSet.getString("painres10"), resultSet.getString("tonicity10"), resultSet.getString("painres11"), resultSet.getString("tonicity11"), resultSet.getString("painres12"), resultSet.getString("tonicity12"), resultSet.getString("dermatome"), resultSet.getString("gender42"), resultSet.getString("gender43"), resultSet.getString("gender44"), resultSet.getString("level1"), resultSet.getString("level"), resultSet.getString("gender45"), resultSet.getString("level2"), resultSet.getString("orthopedictest1"), resultSet.getString("jacksonsr"), resultSet.getString("jacksonsl"), resultSet.getString("orthopedictest2"), resultSet.getString("doublelegraiser"), resultSet.getString("doublelegraisel"), resultSet.getString("orthopedictest3"), resultSet.getString("yeomansr"), resultSet.getString("yeomansl"), resultSet.getString("orthopedictest4"), resultSet.getString("foraminalr"), resultSet.getString("foraminall"), resultSet.getString("orthopedictest5"), resultSet.getString("shoulderr"),resultSet.getString("shoulderl"),resultSet.getString("orthopedictest6"),resultSet.getString("orthopedicr"), resultSet.getString("orthopedicl"), resultSet.getString("gender46"), resultSet.getString("gender47"), resultSet.getString("gender48"), resultSet.getString("gender49"), resultSet.getString("gender50"), resultSet.getString("gender51"), resultSet.getString("fracture"), resultSet.getString("gender52"), resultSet.getString("gender53"), resultSet.getString("gender54"), resultSet.getString("presentlevel"), resultSet.getString("gender55"), resultSet.getString("osteophytes"), resultSet.getString("gender56"), resultSet.getString("gender57"), resultSet.getString("gender58"), resultSet.getString("gender59"), resultSet.getString("gender60"), resultSet.getString("subluxations"), resultSet.getString("icd1"), resultSet.getString("description1"), resultSet.getString("icd2"), resultSet.getString("description2"), resultSet.getString("icd3"), resultSet.getString("description3"), resultSet.getString("icd4"), resultSet.getString("description4"), resultSet.getString("gender61"), resultSet.getString("pname"), resultSet.getString("date9"), resultSet.getString("gender62"), resultSet.getString("gender63"), resultSet.getString("pname1"), resultSet.getString("datenew"), resultSet.getString("gender64"), resultSet.getString("gender65"), resultSet.getString("poor"), resultSet.getString("gender67"), resultSet.getString("gender68"), resultSet.getString("gender69"), resultSet.getString("gender70"), resultSet.getString("pname2"), resultSet.getString("gender71"), resultSet.getString("gender72"), resultSet.getString("gender73"), resultSet.getString("gender74"), resultSet.getString("gender75"), resultSet.getString("pname3"), resultSet.getString("sign")));				}
		    }catch(Exception e){
		    	System.out.println("e"+e);
		    	releaseResultSet(resultSet);
		    	releaseStatement(statement);
		    	releaseConnection(con);
		    }finally{
		    	releaseResultSet(resultSet);
		    	releaseStatement(statement);
		    	releaseConnection(con);	    	
		    }
		    return narrativereport;
			
		}
		public List<Narrativereport> viewnarrativereportlist(String narrativeno){
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Narrativereport> narrativereport = new ArrayList<Narrativereport>();
		    try{
		    	System.out.print("database");
				resultSet = statement.executeQuery("select * from tbl_narrativereport where narrativeno='"+narrativeno+"'");
				while(resultSet.next()){
					narrativereport.add(new Narrativereport(resultSet.getString("narrativeno"), resultSet.getString("reportdate"), resultSet.getString("patient"), resultSet.getString("dateofinjury"), resultSet.getString("dateoffirstvisit"), resultSet.getString("towhom"), resultSet.getString("patientname"), resultSet.getString("gender"), resultSet.getString("accident"), resultSet.getString("name"), resultSet.getString("dateofconsultation"), resultSet.getString("gender1"), resultSet.getString("gender2"), resultSet.getString("accidentdate"), resultSet.getString("gender3"), resultSet.getString("gender4"), resultSet.getString("gender5"), resultSet.getString("name1"), resultSet.getString("gendernew"), resultSet.getString("gender6"), resultSet.getString("gender7"), resultSet.getString("gender8"), resultSet.getString("gender9"),resultSet.getString("name2"),resultSet.getString("body"), resultSet.getString("gender10"), resultSet.getString("slammed"), resultSet.getString("slammed1"), resultSet.getString("symptom"), resultSet.getString("appeared"), resultSet.getString("priordate"), resultSet.getString("gender11"), resultSet.getString("name3"), resultSet.getString("gender12"), resultSet.getString("pastmedicalhistory"), resultSet.getString("gender13"), resultSet.getString("gender14"), resultSet.getString("gender15"), resultSet.getString("gender16"), resultSet.getString("gender17"), resultSet.getString("gender18"), resultSet.getString("name4"), resultSet.getString("clinicdate"), resultSet.getString("gender19"), resultSet.getString("vehicleaccident"), resultSet.getString("gender20"), resultSet.getString("gender21"),resultSet.getString("allieviated"), resultSet.getString("gender22"), resultSet.getString("gender23"), resultSet.getString("gender24"), resultSet.getString("gendernew2"), resultSet.getString("gendernew3"), resultSet.getString("gender25"), resultSet.getString("gender26"), resultSet.getString("gender27"), resultSet.getString("gender28"), resultSet.getString("gender29"), resultSet.getString("gender30"), resultSet.getString("age"), resultSet.getString("age1"), resultSet.getString("lb"), resultSet.getString("gender31"), resultSet.getString("gender32"), resultSet.getString("gender33"), resultSet.getString("gender34"), resultSet.getString("gendernew4"), resultSet.getString("gender35"), resultSet.getString("gender36"), resultSet.getString("gender37"), resultSet.getString("gender38"), resultSet.getString("gender39"), resultSet.getString("gendernew5"), resultSet.getString("tenderness"), resultSet.getString("gender40"), resultSet.getString("gendernew6"), resultSet.getString("gender41"), resultSet.getString("noted"), resultSet.getString("rangeofmotion"), resultSet.getString("painres1"), resultSet.getString("tonicity1"), resultSet.getString("painres2"), resultSet.getString("tonicity2"), resultSet.getString("painres3"), resultSet.getString("tonicity3"), resultSet.getString("painres4"), resultSet.getString("tonicity4"), resultSet.getString("painres5"), resultSet.getString("tonicity5"), resultSet.getString("painres6"), resultSet.getString("tonicity6"), resultSet.getString("painres7"), resultSet.getString("tonicity7"), resultSet.getString("painres8"), resultSet.getString("tonicity8"), resultSet.getString("painres9"), resultSet.getString("tonicity9"), resultSet.getString("painres10"), resultSet.getString("tonicity10"), resultSet.getString("painres11"), resultSet.getString("tonicity11"), resultSet.getString("painres12"), resultSet.getString("tonicity12"), resultSet.getString("dermatome"), resultSet.getString("gender42"), resultSet.getString("gender43"), resultSet.getString("gender44"), resultSet.getString("level1"), resultSet.getString("level"), resultSet.getString("gender45"), resultSet.getString("level2"), resultSet.getString("orthopedictest1"), resultSet.getString("jacksonsr"), resultSet.getString("jacksonsl"), resultSet.getString("orthopedictest2"), resultSet.getString("doublelegraiser"), resultSet.getString("doublelegraisel"), resultSet.getString("orthopedictest3"), resultSet.getString("yeomansr"), resultSet.getString("yeomansl"), resultSet.getString("orthopedictest4"), resultSet.getString("foraminalr"), resultSet.getString("foraminall"), resultSet.getString("orthopedictest5"), resultSet.getString("shoulderr"),resultSet.getString("shoulderl"),resultSet.getString("orthopedictest6"),resultSet.getString("orthopedicr"), resultSet.getString("orthopedicl"), resultSet.getString("gender46"), resultSet.getString("gender47"), resultSet.getString("gender48"), resultSet.getString("gender49"), resultSet.getString("gender50"), resultSet.getString("gender51"), resultSet.getString("fracture"), resultSet.getString("gender52"), resultSet.getString("gender53"), resultSet.getString("gender54"), resultSet.getString("presentlevel"), resultSet.getString("gender55"), resultSet.getString("osteophytes"), resultSet.getString("gender56"), resultSet.getString("gender57"), resultSet.getString("gender58"), resultSet.getString("gender59"), resultSet.getString("gender60"), resultSet.getString("subluxations"), resultSet.getString("icd1"), resultSet.getString("description1"), resultSet.getString("icd2"), resultSet.getString("description2"), resultSet.getString("icd3"), resultSet.getString("description3"), resultSet.getString("icd4"), resultSet.getString("description4"), resultSet.getString("gender61"), resultSet.getString("pname"), resultSet.getString("date9"), resultSet.getString("gender62"), resultSet.getString("gender63"), resultSet.getString("pname1"), resultSet.getString("datenew"), resultSet.getString("gender64"), resultSet.getString("gender65"), resultSet.getString("poor"), resultSet.getString("gender67"), resultSet.getString("gender68"), resultSet.getString("gender69"), resultSet.getString("gender70"), resultSet.getString("pname2"), resultSet.getString("gender71"), resultSet.getString("gender72"), resultSet.getString("gender73"), resultSet.getString("gender74"), resultSet.getString("gender75"), resultSet.getString("pname3"), resultSet.getString("sign")));				}
		    }catch(Exception e){
		    	releaseResultSet(resultSet);
		    	releaseStatement(statement);
		    	releaseConnection(con);
		    }finally{
		    	releaseResultSet(resultSet);
		    	releaseStatement(statement);
		    	releaseConnection(con);	    	
		    }
		    return narrativereport;
			
		}
		public int updatenarrativereport(Narrativereport narrativereport,String narrativeno)
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
			//List<ParticipantsDetails> participants = new ArrayList<ParticipantsDetails>();
		    try{
		    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		    	 Date date = new Date();
		    	 //System.out.println(dateFormat.format(date));
		    	String cmd="UPDATE tbl_narrativereport SET reportdate='"+narrativereport.getReportdate()+"',patient='"+narrativereport.getPatient()+"',dateofinjury='"+narrativereport.getDateofinjury()+"',dateoffirstvisit='"+narrativereport.getDateoffirstvisit()+"',towhom='"+narrativereport.getTowhom()+"',patientname='"+narrativereport.getPatientname()+"',gender='"+narrativereport.getGender()+"',accident='"+narrativereport.getAccident()+"',name='"+narrativereport.getName()+"',dateofconsultation='"+narrativereport.getDateofconsultation()+"',gender1='"+narrativereport.getGender1()+"',gender2='"+narrativereport.getGender2()+"',accidentdate='"+narrativereport.getAccidentdate()+"',gender3='"+narrativereport.getGender3()+"',gender4='"+narrativereport.getGender4()+"',gender5='"+narrativereport.getGender5()+"',name1='"+narrativereport.getName1()+"',gendernew='"+narrativereport.getGendernew()+"',gender6='"+narrativereport.getGender6()+"',gender7='"+narrativereport.getGender7()+"',gender8='"+narrativereport.getGender8()+"',gender9='"+narrativereport.getGender9()+"',name2='"+narrativereport.getName2()+"',body='"+narrativereport.getBody()+"',gender10='"+narrativereport.getGender10()+"',slammed='"+narrativereport.getSlammed()+"',slammed1='"+narrativereport.getSlammed1()+"',symptom='"+narrativereport.getSymptom()+"',appeared='"+narrativereport.getAppeared()+"',priordate='"+narrativereport.getPriordate()+"',gendernew='"+narrativereport.getGendernew()+"',gender11='"+narrativereport.getGender11()+"',name3='"+narrativereport.getName3()+"',gender12='"+narrativereport.getGender12()+"',pastmedicalhistory='"+narrativereport.getPastmedicalhistory()+"',gender13='"+narrativereport.getGender13()+"',gender14='"+narrativereport.getGender14()+"',gender15='"+narrativereport.getGender15()+"',gender16='"+narrativereport.getGender16()+"',gender17='"+narrativereport.getGender17()+"',gender18='"+narrativereport.getGender18()+"',name4='"+narrativereport.getName4()+"',clinicdate='"+narrativereport.getClinicdate()+"',gender19='"+narrativereport.getGender19()+"',vehicleaccident='"+narrativereport.getVehicleaccident()+"',gender20='"+narrativereport.getGender20()+"',gender21='"+narrativereport.getGender21()+"',allieviated='"+narrativereport.getAllieviated()+"',gender22='"+narrativereport.getGender22()+"',gender23='"+narrativereport.getGender23()+"',gender24='"+narrativereport.getGender24()+"',gendernew2='"+narrativereport.getGendernew2()+"',gendernew3='"+narrativereport.getGendernew3()+"',gender25='"+narrativereport.getGender25()+"',gender26='"+narrativereport.getGender26()+"',gender27='"+narrativereport.getGender27()+"',gender28='"+narrativereport.getGender28()+"',gender29='"+narrativereport.getGender29()+"',gender30='"+narrativereport.getGender30()+"',age='"+narrativereport.getAge()+"',age1='"+narrativereport.getAge1()+"',lb='"+narrativereport.getLb()+"',gender31='"+narrativereport.getGender31()+"',gender32='"+narrativereport.getGender32()+"',gender33='"+narrativereport.getGender33()+"',gender34='"+narrativereport.getGender34()+"',gendernew4='"+narrativereport.getGendernew4()+"',gender35='"+narrativereport.getGender35()+"',gender36='"+narrativereport.getGender36()+"',gender37='"+narrativereport.getGender37()+"',gender38='"+narrativereport.getGender38()+"',gender39='"+narrativereport.getGender39()+"',gendernew5='"+narrativereport.getGendernew5()+"',tenderness='"+narrativereport.getTenderness()+"',gender40='"+narrativereport.getGender40()+"',gendernew6='"+narrativereport.getGendernew6()+"',gender41='"+narrativereport.getGender41()+"',noted='"+narrativereport.getNoted()+"',rangeofmotion='"+narrativereport.getRangeofmotion()+"',gendernew='"+narrativereport.getGendernew()+"',painres1='"+narrativereport.getPainres1()+"',tonicity1='"+narrativereport.getTonicity1()+"',painres2='"+narrativereport.getPainres2()+"',tonicity2='"+narrativereport.getTonicity2()+"',painres3='"+narrativereport.getPainres3()+"',Tonicity3='"+narrativereport.getTonicity3()+"',painres4='"+narrativereport.getPainres4()+"',tonicity4='"+narrativereport.getTonicity4()+"',painres5='"+narrativereport.getPainres5()+"',tonicity5='"+narrativereport.getTonicity5()+"',painres6='"+narrativereport.getPainres6()+"',tonicity6='"+narrativereport.getTonicity6()+"',painres7='"+narrativereport.getPainres7()+"',tonicity7='"+narrativereport.getTonicity7()+"',painres8='"+narrativereport.getPainres8()+"',tonicity8='"+narrativereport.getTonicity8()+"',painres9='"+narrativereport.getPainres9()+"',tonicity9='"+narrativereport.getTonicity9()+"',painres10='"+narrativereport.getPainres10()+"',tonicity10='"+narrativereport.getTonicity10()+"',painres11='"+narrativereport.getPainres11()+"',tonicity11='"+narrativereport.getTonicity11()+"',painres12='"+narrativereport.getPainres12()+"',tonicity12='"+narrativereport.getTonicity12()+"',dermatome='"+narrativereport.getDermatome()+"',gender42='"+narrativereport.getGender42()+"',gender43='"+narrativereport.getGender43()+"',gender44='"+narrativereport.getGender44()+"',level1='"+narrativereport.getLevel1()+"',level='"+narrativereport.getLevel()+"',gender45='"+narrativereport.getGender45()+"',level2='"+narrativereport.getLevel2()+"',orthopedictest1='"+narrativereport.getOrthopedictest1()+"',jacksonsr='"+narrativereport.getJacksonsr()+"',jacksonsl='"+narrativereport.getJacksonsl()+"',orthopedictest2='"+narrativereport.getOrthopedictest2()+"',doublelegraiser='"+narrativereport.getDoublelegraiser()+"',doublelegraisel='"+narrativereport.getDoublelegraisel()+"',orthopedictest3='"+narrativereport.getOrthopedictest3()+"',yeomansr='"+narrativereport.getYeomansr()+"',yeomansl='"+narrativereport.getYeomansl()+"',orthopedictest4='"+narrativereport.getOrthopedictest4()+"',foraminalr='"+narrativereport.getForaminalr()+"',foraminall='"+narrativereport.getForaminall()+"',orthopedictest5='"+narrativereport.getOrthopedictest5()+"',shoulderr='"+narrativereport.getShoulderr()+"',shoulderl='"+narrativereport.getShoulderl()+"',orthopedictest5='"+narrativereport.getOrthopedictest5()+"',shoulderr='"+narrativereport.getShoulderr()+"',shoulderl='"+narrativereport.getShoulderl()+"',orthopedictest6='"+narrativereport.getOrthopedictest6()+"',orthopedicr='"+narrativereport.getOrthopedicr()+"',orthopedicl='"+narrativereport.getOrthopedicl()+"',gender46='"+narrativereport.getGender46()+"',gender47='"+narrativereport.getGender47()+"',gender48='"+narrativereport.getGender48()+"',gender49='"+narrativereport.getGender49()+"',gender50='"+narrativereport.getGender50()+"',gender51='"+narrativereport.getGender51()+"',fracture='"+narrativereport.getFracture()+"',gender52='"+narrativereport.getGender52()+"',gender53='"+narrativereport.getGender53()+"',gender54='"+narrativereport.getGender54()+"',presentlevel='"+narrativereport.getPresentlevel()+"',gender55='"+narrativereport.getGender55()+"',osteophytes='"+narrativereport.getOsteophytes()+"',gender56='"+narrativereport.getGender56()+"',gender57='"+narrativereport.getGender57()+"',gender58='"+narrativereport.getGender58()+"',gender59='"+narrativereport.getGender59()+"',gender60='"+narrativereport.getGender60()+"',subluxations='"+narrativereport.getSubluxations()+"',icd1='"+narrativereport.getIcd1()+"',description1='"+narrativereport.getDescription1()+"',icd2='"+narrativereport.getIcd2()+"',description2='"+narrativereport.getDescription2()+"',icd3='"+narrativereport.getIcd3()+"',description3='"+narrativereport.getDescription3()+"',icd4='"+narrativereport.getIcd4()+"',description4='"+narrativereport.getDescription4()+"',gender61='"+narrativereport.getGender61()+"',pname='"+narrativereport.getPname()+"',date9='"+narrativereport.getDate9()+"',gender62='"+narrativereport.getGender62()+"',gender63='"+narrativereport.getGender63()+"',pname1='"+narrativereport.getPname1()+"',datenew='"+narrativereport.getDatenew()+"',gender64='"+narrativereport.getGender64()+"',gender65='"+narrativereport.getGender65()+"',poor='"+narrativereport.getPoor()+"',gender67='"+narrativereport.getGender67()+"',gender68='"+narrativereport.getGender68()+"',gender69='"+narrativereport.getGender69()+"',gender70='"+narrativereport.getGender70()+"',pname2='"+narrativereport.getPname2()+"',gender71='"+narrativereport.getGender71()+"',gender72='"+narrativereport.getGender72()+"',gender73='"+narrativereport.getGender73()+"',gender74='"+narrativereport.getGender74()+"',gender75='"+narrativereport.getGender75()+"',pname3='"+narrativereport.getPname3()+"',sign='"+narrativereport.getSign()+"'  WHERE narrativeno='"+narrativeno+"';";
		    	
		    	System.out.println(cmd);
		    	//System.out.println(cmd_activity);
				
		    	statement.execute(cmd);
				//statement.execute(cmd_activity);
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
		
		
		public int deletenarrativeno(String narrativeno){
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
		    	 String cmd_getpatient_name="select name from tbl_narrativereport where narrativeno='"+narrativeno+"'";
		    	 String Desc="Delete report ";
		    	 resultSet=statement.executeQuery(cmd_getpatient_name);
					
					if(resultSet.next())
						Desc=Desc+resultSet.getString(1);
					statement.execute("delete from tbl_narrativereport where narrativeno='"+narrativeno+"'");
					
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
		public List<Narrativereport> getlimitednarrativereport(int page) {
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			
			try {
				con = dataSource.getConnection();
				statement = con.createStatement();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			List<Narrativereport> narrativereport = new ArrayList<Narrativereport>();
			try {

				String cmd;
				int offset = 5 * (page - 1);
				int limit = 5;
				
					
						cmd = "select * from tbl_narrativereport order by pname asc limit " + offset + ","+ limit+"" ;

				resultSet = statement.executeQuery(cmd);
				while (resultSet.next()) {
					narrativereport.add(new Narrativereport(resultSet.getString("narrativeno"), resultSet.getString("reportdate"), resultSet.getString("patient"), resultSet.getString("dateofinjury"), resultSet.getString("dateoffirstvisit"), resultSet.getString("towhom"), resultSet.getString("patientname"), resultSet.getString("gender"), resultSet.getString("accident"), resultSet.getString("name"), resultSet.getString("dateofconsultation"), resultSet.getString("gender1"), resultSet.getString("gender2"), resultSet.getString("accidentdate"), resultSet.getString("gender3"), resultSet.getString("gender4"), resultSet.getString("gender5"), resultSet.getString("name1"), resultSet.getString("gendernew"), resultSet.getString("gender6"), resultSet.getString("gender7"), resultSet.getString("gender8"), resultSet.getString("gender9"),resultSet.getString("name2"),resultSet.getString("body"), resultSet.getString("gender10"), resultSet.getString("slammed"), resultSet.getString("slammed1"), resultSet.getString("symptom"), resultSet.getString("appeared"), resultSet.getString("priordate"), resultSet.getString("gender11"), resultSet.getString("name3"), resultSet.getString("gender12"), resultSet.getString("pastmedicalhistory"), resultSet.getString("gender13"), resultSet.getString("gender14"), resultSet.getString("gender15"), resultSet.getString("gender16"), resultSet.getString("gender17"), resultSet.getString("gender18"), resultSet.getString("name4"), resultSet.getString("clinicdate"), resultSet.getString("gender19"), resultSet.getString("vehicleaccident"), resultSet.getString("gender20"), resultSet.getString("gender21"),resultSet.getString("allieviated"), resultSet.getString("gender22"), resultSet.getString("gender23"), resultSet.getString("gender24"), resultSet.getString("gendernew2"), resultSet.getString("gendernew3"), resultSet.getString("gender25"), resultSet.getString("gender26"), resultSet.getString("gender27"), resultSet.getString("gender28"), resultSet.getString("gender29"), resultSet.getString("gender30"), resultSet.getString("age"), resultSet.getString("age1"), resultSet.getString("lb"), resultSet.getString("gender31"), resultSet.getString("gender32"), resultSet.getString("gender33"), resultSet.getString("gender34"), resultSet.getString("gendernew4"), resultSet.getString("gender35"), resultSet.getString("gender36"), resultSet.getString("gender37"), resultSet.getString("gender38"), resultSet.getString("gender39"), resultSet.getString("gendernew5"), resultSet.getString("tenderness"), resultSet.getString("gender40"), resultSet.getString("gendernew6"), resultSet.getString("gender41"), resultSet.getString("noted"), resultSet.getString("rangeofmotion"), resultSet.getString("painres1"), resultSet.getString("tonicity1"), resultSet.getString("painres2"), resultSet.getString("tonicity2"), resultSet.getString("painres3"), resultSet.getString("tonicity3"), resultSet.getString("painres4"), resultSet.getString("tonicity4"), resultSet.getString("painres5"), resultSet.getString("tonicity5"), resultSet.getString("painres6"), resultSet.getString("tonicity6"), resultSet.getString("painres7"), resultSet.getString("tonicity7"), resultSet.getString("painres8"), resultSet.getString("tonicity8"), resultSet.getString("painres9"), resultSet.getString("tonicity9"), resultSet.getString("painres10"), resultSet.getString("tonicity10"), resultSet.getString("painres11"), resultSet.getString("tonicity11"), resultSet.getString("painres12"), resultSet.getString("tonicity12"), resultSet.getString("dermatome"), resultSet.getString("gender42"), resultSet.getString("gender43"), resultSet.getString("gender44"), resultSet.getString("level1"), resultSet.getString("level"), resultSet.getString("gender45"), resultSet.getString("level2"), resultSet.getString("orthopedictest1"), resultSet.getString("jacksonsr"), resultSet.getString("jacksonsl"), resultSet.getString("orthopedictest2"), resultSet.getString("doublelegraiser"), resultSet.getString("doublelegraisel"), resultSet.getString("orthopedictest3"), resultSet.getString("yeomansr"), resultSet.getString("yeomansl"), resultSet.getString("orthopedictest4"), resultSet.getString("foraminalr"), resultSet.getString("foraminall"), resultSet.getString("orthopedictest5"), resultSet.getString("shoulderr"),resultSet.getString("shoulderl"),resultSet.getString("orthopedictest6"),resultSet.getString("orthopedicr"), resultSet.getString("orthopedicl"), resultSet.getString("gender46"), resultSet.getString("gender47"), resultSet.getString("gender48"), resultSet.getString("gender49"), resultSet.getString("gender50"), resultSet.getString("gender51"), resultSet.getString("fracture"), resultSet.getString("gender52"), resultSet.getString("gender53"), resultSet.getString("gender54"), resultSet.getString("presentlevel"), resultSet.getString("gender55"), resultSet.getString("osteophytes"), resultSet.getString("gender56"), resultSet.getString("gender57"), resultSet.getString("gender58"), resultSet.getString("gender59"), resultSet.getString("gender60"), resultSet.getString("subluxations"), resultSet.getString("icd1"), resultSet.getString("description1"), resultSet.getString("icd2"), resultSet.getString("description2"), resultSet.getString("icd3"), resultSet.getString("description3"), resultSet.getString("icd4"), resultSet.getString("description4"), resultSet.getString("gender61"), resultSet.getString("pname"), resultSet.getString("date9"), resultSet.getString("gender62"), resultSet.getString("gender63"), resultSet.getString("pname1"), resultSet.getString("datenew"), resultSet.getString("gender64"), resultSet.getString("gender65"), resultSet.getString("poor"), resultSet.getString("gender67"), resultSet.getString("gender68"), resultSet.getString("gender69"), resultSet.getString("gender70"), resultSet.getString("pname2"), resultSet.getString("gender71"), resultSet.getString("gender72"), resultSet.getString("gender73"), resultSet.getString("gender74"), resultSet.getString("gender75"), resultSet.getString("pname3"), resultSet.getString("sign")));				
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
			return narrativereport;

		}
		public int getnoofnarrativereport() {
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
			List<Narrativereport> narrativereport = new ArrayList<Narrativereport>();
			try {

				String cmd;
				
						cmd = "select count(*) as noofrecords from tbl_narrativereport";
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