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

import bephit.model.PatientDetails;
import bephit.model.RadiologicReport;
import bephit.model.Treatform;

public class PatientDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int sample(String[] Symptoms)
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
	    for(String symptom:Symptoms)
	    {
		String cmd_mess="insert into sample(symptom) values('"+symptom+"')";
		System.out.println(cmd_mess);
		statement.executeUpdate("insert into sample(symptom) values('"+symptom+"')");
	    }	    
	    
	    }
	    catch(Exception e)
	    {
	    System.out.println("sample"+e.toString());	
	    }
	    return 0;
	    }
	public String usernamevalidation11(String pusername)
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
	   System.out.println("delete from tbl_quadraplevisual where username='"+pusername+"'");
	   System.out.println("delete from wristindex where username='"+pusername+"'");
	   System.out.println("delete from tbl_lowback where username='"+pusername+"'");
	   System.out.println("delete from neckindex where username='"+pusername+"'");
	   System.out.println("delete from oswestryindex where username='"+pusername+"'");
	   System.out.println("delete from shoulderexam where username='"+pusername+"'");
	   System.out.println("delete from tbl_dutiesunderduress where username='"+pusername+"'");
	   System.out.println("delete from tbl_lumbopelvicexam where username='"+pusername+"'");
	   
	  statement.execute("delete from tbl_quadraplevisual where username='"+pusername+"'");
	    	 				
	    	 				statement.execute("delete from wristindex where username='"+pusername+"'");
	    	 				statement.execute("delete from tbl_lowback where username='"+pusername+"'");
	    	 				statement.execute("delete from neckindex where username='"+pusername+"'");
	    	 				statement.execute("delete from oswestryindex where username='"+pusername+"'");
	    	 				statement.execute("delete from shoulderexam where username='"+pusername+"'");
	    	 				statement.execute("delete from tbl_dutiesunderduress where username='"+pusername+"'");
	    	 				
	    	 				statement.execute("delete from tbl_lumbopelvicexam where username='"+pusername+"'");
	    	 				
	    	 				System.out.println("deleted id="+pusername);
	    	 				
	    	 				/* String patientrecords;
	    	 		    	 int noofRecords=0;
	    	 		    	 int patientcurrentid=0;
	    	 		    	 int id=0;
	    	 		    	 
	    	 					patientrecords = "SELECT Patient_id FROM patient_details ORDER BY  Patient_id DESC LIMIT 1;";
	    	 					System.out.println("command"+patientrecords);			
	    	 					resultSet = statement.executeQuery(patientrecords);
	    	 					if (resultSet.next())
	    	 					{
	    	 						patientcurrentid = resultSet.getInt("Patient_id");
	    	 						System.out.println("patientcurrentid"+patientcurrentid);
	    	 						id=patientcurrentid+1;
	    	 						System.out.println("patientcurrentidinc"+patientcurrentid);
	    	 					}
	    	 					  System.out.println("delete  from tbl_symptom  where patient_id='"+id+"'");
	    	 					statement.execute("delete  from tbl_symptom  where patient_id='"+id+"'");

	    	 					System.out.println("deleted id="+patientcurrentid);*/
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
	    	return "";
	    	
	    }
	   
	    
	}
	public int setPatientDetails(PatientDetails patientdetails,String[] Symptoms,Principal principal)
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
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 
	    	 String patientrecords;
	    	 int noofRecords=0;
	    	 int patientcurrentid=0;
	    	 
				patientrecords = "SELECT Patient_id FROM patient_details ORDER BY  Patient_id DESC LIMIT 1;";
				System.out.println("command"+patientrecords);			
				resultSet = statement.executeQuery(patientrecords);
				if (resultSet.next())
				{
					patientcurrentid = resultSet.getInt("Patient_id");
					System.out.println("patientcurrentid"+patientcurrentid);
					patientcurrentid=patientcurrentid+1;
					System.out.println("patientcurrentidinc"+patientcurrentid);
				}
				System.out.println("no of records"+noofRecords);	    	 
	    	    String cmd_mess="";
	    	    System.out.println("number.."+Symptoms);
	    		int count=1;
	    		/*for(String symptom :Symptoms)
	    		{		
	    		
	    		 cmd_mess="insert into tbl_symptom(symptom,symptom_count,patient_id) values('"+symptom+"','"+count+"','"+patientcurrentid+"')";
	    		 count++;
	    		 statement.execute(cmd_mess);
	    		 System.out.println(cmd_mess);
	    		}*/
	    		 java.util.Date  ss1=new Date(patientdetails.getDateOfBirth());
		    	 SimpleDateFormat formatter5=new SimpleDateFormat("yyyy-MM-dd");
		    	 String formats1 = formatter5.format(ss1);

		    	 System.out.println("date"+formats1);
	    	 String cmd="INSERT INTO patient_details (Name,username,Date,StreetAddress,City,State,ZipCode,Homephone,Emailid,MobileNumber,DateOfBirth,SocialSecurityNumber,Gender,MaritalStatus,Areyou,Student,EmployerName,Occupation,EmployerAddress,Workphone,zip,EmployerCity,Estate,Ezip,SpousesName,SpousesEmp,Spousesph,Name_friend,Phone_friend,Chiropratic_care,Symptom_Accident,Type_Of_Accident,accident,Date_Of_Accident,Accident_Reported,when1,where1,Attorney_accident,retain,record,phyname,phyphone,car11,xray,treat,NameOfAttorney,Phone_Number,Fault_accident,claim_open,Insurance,Insurance_phone,Name_auto,Phone_auto,Policy,Name_health,Health_phone,Prev_accident,Prev_When,Anemia,Muscular,Rheumatic,Allergies,Cancer,Polio1,Multiple,Scarlet,HIV,Sinus,Asthma,German,Nervousness,Numbness,Convulsions,Epilepsy,Concussion,Dizziness,Neuritis,Rheumatism,Diabetes,Arthritis,Venereal,Backaches,Tuberculosis,Liver,Kidney,Thyroid,Alcoholism,Hepatitis,Mental,High,Digestive,Heart,Other,Ifother,Illness,Dates,Medications,Drink,Smoke,Drugs,Diet,Exercise,Hazardous,Hazardousyes,Female,Dr,Patient) VALUES('"+patientdetails.getName()+"','"+principal.getName()+"','"+patientdetails.getDate()+"','"+patientdetails.getStreetAddress()+"','"+patientdetails.getCity()+"','"+patientdetails.getState()+"','"+patientdetails.getZipCode()+"','"+patientdetails.getHomephone()+"','"+patientdetails.getEmailid()+"','"+patientdetails.getMobileNumber()+"','"+formats1+"','"+patientdetails.getSocialSecurityNumber()+"','"+patientdetails.getGender()+"','"+patientdetails.getMaritalStatus()+"','"+patientdetails.getAreyou()+"','"+patientdetails.getStudent()+"','"+patientdetails.getEmployerName()+"','"+patientdetails.getOccupation()+"','"+patientdetails.getEmployerAddress()+"','"+patientdetails.getWorkphone()+"','"+patientdetails.getZip()+"','"+patientdetails.getEmployerCity()+"','"+patientdetails.getEstate()+"','"+patientdetails.getEzip()+"','"+patientdetails.getSpousesName()+"','"+patientdetails.getSpousesEmp()+"','"+patientdetails.getSpousesph()+"','"+patientdetails.getName_friend()+"','"+patientdetails.getPhone_friend()+"','"+patientdetails.getChiropratic_care()+"','"+patientdetails.getSymptom_Accident()+"','"+patientdetails.getType_Of_Accident()+"','"+patientdetails.getAccident()+"','"+patientdetails.getDate_Of_Accident()+"','"+patientdetails.getAccident_Reported()+"','"+patientdetails.getWhen1()+"','"+patientdetails.getWhere1()+"','"+patientdetails.getAttorney_accident()+"','"+patientdetails.getRetain()+"','"+patientdetails.getRecord()+"','"+patientdetails.getPhyname()+"','"+patientdetails.getPhyphone()+"','"+patientdetails.getCar11()+"','"+patientdetails.getXray()+"','"+patientdetails.getTreat()+"','"+patientdetails.getNameOfAttorney()+"','"+patientdetails.getPhone_Number()+"','"+patientdetails.getFault_accident()+"','"+patientdetails.getClaim_open()+"','"+patientdetails.getInsurance()+"','"+patientdetails.getInsurance_phone()+"','"+patientdetails.getName_auto()+"','"+patientdetails.getPhone_auto()+"','"+patientdetails.getPolicy()+"','"+patientdetails.getName_health()+"','"+patientdetails.getHealth_phone()+"','"+patientdetails.getPrev_accident()+"','"+patientdetails.getPrev_When()+"','"+patientdetails.getAnemia()+"','"+patientdetails.getMuscular()+"','"+patientdetails.getRheumatic()+"','"+patientdetails.getAllergies()+"','"+patientdetails.getCancer()+"','"+patientdetails.getPolio1()+"','"+patientdetails.getMultiple()+"','"+patientdetails.getScarlet()+"','"+patientdetails.getHIV()+"','"+patientdetails.getSinus()+"','"+patientdetails.getAsthma()+"','"+patientdetails.getGerman()+"','"+patientdetails.getNervousness()+"','"+patientdetails.getNumbness()+"','"+patientdetails.getConvulsions()+"','"+patientdetails.getEpilepsy()+"','"+patientdetails.getConcussion()+"','"+patientdetails.getDizziness()+"','"+patientdetails.getNeuritis()+"','"+patientdetails.getRheumatism()+"','"+patientdetails.getDiabetes()+"','"+patientdetails.getArthritis()+"','"+patientdetails.getVenereal()+"','"+patientdetails.getBackaches()+"','"+patientdetails.getTuberculosis()+"','"+patientdetails.getLiver()+"','"+patientdetails.getKidney()+"','"+patientdetails.getThyroid()+"','"+patientdetails.getAlchoholism()+"','"+patientdetails.getHepatitis()+"','"+patientdetails.getMental()+"','"+patientdetails.getHigh()+"','"+patientdetails.getDigestive()+"','"+patientdetails.getHeart()+"','"+patientdetails.getOther()+"','"+patientdetails.getIfother()+"','"+patientdetails.getIllness()+"','"+patientdetails.getDates()+"','"+patientdetails.getMedications()+"','"+patientdetails.getDrink()+"','"+patientdetails.getSmoke()+"','"+patientdetails.getDrugs()+"','"+patientdetails.getDiet()+"','"+patientdetails.getExercise()+"','"+patientdetails.getHazardous()+"','"+patientdetails.getHazardousyes()+"','"+patientdetails.getFemale()+"','"+patientdetails.getDr()+"','"+patientdetails.getPatient()+"')";
	    	 resultSet = statement.executeQuery("select * from patient_details where Patient_id='"+patientdetails.getPatient_id()+"'");
	    	 for(String symptom :Symptoms)
	    		{		
	    		
	    		 cmd_mess="insert into tbl_symptom(symptom,symptom_count,patient_id) values('"+symptom+"','"+count+"','"+patientcurrentid+"')";
	    		 count++;
	    		 statement.execute(cmd_mess);
	    		 System.out.println(cmd_mess);
	    		}
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	  
	    	
	    	 String cmd1="select patient_id as patient_id,TIMESTAMPDIFF(YEAR,DateOfBirth,CURDATE()) AS age from patient_details ORDER BY patient_id DESC";
	    System.out.println("agequery"+cmd1);
	    	 resultSet=statement.executeQuery(cmd1);
	    	 String age="";
	    	 String patient_id="";
	    	 if(resultSet.next())
	    	 {
	    		age=resultSet.getString("age");
	    		patient_id=resultSet.getString("patient_id");
	    	 }
	    	 System.out.println("age.."+age);
	    	
	    	 String cmd2="INSERT INTO agecalculation (patient_id,DateOfBirth,age,username) VALUES ('"+patient_id+"','"+patientdetails.getDateOfBirth()+"','"+age+"','"+principal.getName()+"')";
	    	 statement.execute(cmd2);
	    	 System.out.println(cmd2);
	    	 System.out.println("inserted");
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
	public List<PatientDetails> getUsername(Principal admin){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
	    try{
			resultSet = statement.executeQuery("select * from patient_details where username='"+admin.getName()+"'");
			while(resultSet.next()){
				patientDetails.add(new PatientDetails(
						resultSet.getString("Patient_id"),
			    		resultSet.getString("Name"),
			    		resultSet.getString("username"),
			    		resultSet.getString("Date"),
			    		resultSet.getString("StreetAddress"),
			    		resultSet.getString("City"),
			    		resultSet.getString("State"),
			    		resultSet.getString("Zipcode"),
			    		resultSet.getString("Homephone"),
			    		resultSet.getString("Emailid"),
			    		resultSet.getString("MobileNumber"),
			    		resultSet.getString("DateOfBirth"),
			    		resultSet.getString("SocialSecurityNumber"),
			    		resultSet.getString("Gender"),
			    		resultSet.getString("MaritalStatus"),
			    		resultSet.getString("Areyou"),
			    		resultSet.getString("Student"),
			    		resultSet.getString("EmployerName"),
			    		resultSet.getString("Occupation"),
			    		resultSet.getString("EmployerAddress"),
			    		resultSet.getString("Workphone"),
			    		resultSet.getString("zip"),
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("retain"),
			    	    resultSet.getString("record"),
			    	    resultSet.getString("phyname"),
			    	    resultSet.getString("phyphone"),
			    	    resultSet.getString("car11"),
			    	    resultSet.getString("xray"),
			    	    resultSet.getString("treat"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
			    	    resultSet.getString("claim_open"),
			    	    resultSet.getString("Insurance"),
			    	    resultSet.getString("Insurance_phone"),
			    	    resultSet.getString("Name_auto"),
			    	    resultSet.getString("Phone_auto"),
			    	    resultSet.getString("policy"),
			    	    resultSet.getString("Name_health"),
			    	    resultSet.getString("Health_phone"),
			    	    resultSet.getString("Prev_accident"),
			    	    resultSet.getString("Prev_When"),
			    	    resultSet.getString("Anemia"),
			    	    resultSet.getString("Muscular"),
			    	    resultSet.getString("Rheumatic"),
			    	    resultSet.getString("Allergies"),
			    	    resultSet.getString("Cancer"),
			    	    resultSet.getString("Polio1"),
			    	    resultSet.getString("Multiple"),
			    	    resultSet.getString("Scarlet"),
			    	    resultSet.getString("HIV"),
			    	    resultSet.getString("Sinus"),
			    	    resultSet.getString("Asthma"),
			    	    resultSet.getString("German"),
			    	    resultSet.getString("Nervousness"),
			    	    resultSet.getString("Numbness"),
			    	    resultSet.getString("Convulsions"),
			    	    resultSet.getString("Epilepsy"),
			    	    resultSet.getString("Concussion"),
			    	    resultSet.getString("Dizziness"),
			    	    resultSet.getString("Neuritis"),
			    	    resultSet.getString("Rheumatism"),
			    	    resultSet.getString("Diabetes"),
			    	    resultSet.getString("Arthritis"),
			    	    resultSet.getString("Venereal"),
			    	    resultSet.getString("Backaches"),
			    	    resultSet.getString("Tuberculosis"),
			    	    resultSet.getString("Liver"),
			    	    resultSet.getString("Kidney"),
			    	    resultSet.getString("Thyroid"),
			    	    resultSet.getString("Alcoholism"),
			    	    resultSet.getString("Hepatitis"),
			    	    resultSet.getString("Mental"),
			    	    resultSet.getString("High"),
			    	    resultSet.getString("Digestive"),
			    	    resultSet.getString("Heart"), 
			    	    resultSet.getString("Other"),
			    	    resultSet.getString("Ifother"),
			    	    resultSet.getString("Illness"), 
			    	    resultSet.getString("Dates"),
			    	    resultSet.getString("Medications"),
			    	    resultSet.getString("Drink"),
			    	    resultSet.getString("Smoke"),
			    	    resultSet.getString("Drugs"),
			    	    resultSet.getString("Diet"),
			    	    resultSet.getString("Exercise"),
			    	    resultSet.getString("Hazardous"),
			    	    resultSet.getString("Hazardousyes"),
			    	    resultSet.getString("Female"),
			    	    resultSet.getString("Dr"),
			    	    resultSet.getString("Patient")
			    	   ));
				
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
	   System.out.println(patientDetails);
	   
	  
	   
	   
	    return patientDetails;
		
	}
	public List<PatientDetails> getUsername(String admin){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
	    try{
			resultSet = statement.executeQuery("select * from patient_details where username='"+admin+"'");
			while(resultSet.next()){
				patientDetails.add(new PatientDetails(
						resultSet.getString("Patient_id"),
			    		resultSet.getString("Name"),
			    		resultSet.getString("username"),
			    		resultSet.getString("Date"),
			    		resultSet.getString("StreetAddress"),
			    		resultSet.getString("City"),
			    		resultSet.getString("State"),
			    		resultSet.getString("Zipcode"),
			    		resultSet.getString("Homephone"),
			    		resultSet.getString("Emailid"),
			    		resultSet.getString("MobileNumber"),
			    		resultSet.getString("DateOfBirth"),
			    		resultSet.getString("SocialSecurityNumber"),
			    		resultSet.getString("Gender"),
			    		resultSet.getString("MaritalStatus"),
			    		resultSet.getString("Areyou"),
			    		resultSet.getString("Student"),
			    		resultSet.getString("EmployerName"),
			    		resultSet.getString("Occupation"),
			    		resultSet.getString("EmployerAddress"),
			    		resultSet.getString("Workphone"),
			    		resultSet.getString("zip"),
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("retain"),
			    	    resultSet.getString("record"),
			    	    resultSet.getString("phyname"),
			    	    resultSet.getString("phyphone"),
			    	    resultSet.getString("car11"),
			    	    resultSet.getString("xray"),
			    	    resultSet.getString("treat"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
			    	    resultSet.getString("claim_open"),
			    	    resultSet.getString("Insurance"),
			    	    resultSet.getString("Insurance_phone"),
			    	    resultSet.getString("Name_auto"),
			    	    resultSet.getString("Phone_auto"),
			    	    resultSet.getString("policy"),
			    	    resultSet.getString("Name_health"),
			    	    resultSet.getString("Health_phone"),
			    	    resultSet.getString("Prev_accident"),
			    	    resultSet.getString("Prev_When"),
			    	    resultSet.getString("Anemia"),
			    	    resultSet.getString("Muscular"),
			    	    resultSet.getString("Rheumatic"),
			    	    resultSet.getString("Allergies"),
			    	    resultSet.getString("Cancer"),
			    	    resultSet.getString("Polio1"),
			    	    resultSet.getString("Multiple"),
			    	    resultSet.getString("Scarlet"),
			    	    resultSet.getString("HIV"),
			    	    resultSet.getString("Sinus"),
			    	    resultSet.getString("Asthma"),
			    	    resultSet.getString("German"),
			    	    resultSet.getString("Nervousness"),
			    	    resultSet.getString("Numbness"),
			    	    resultSet.getString("Convulsions"),
			    	    resultSet.getString("Epilepsy"),
			    	    resultSet.getString("Concussion"),
			    	    resultSet.getString("Dizziness"),
			    	    resultSet.getString("Neuritis"),
			    	    resultSet.getString("Rheumatism"),
			    	    resultSet.getString("Diabetes"),
			    	    resultSet.getString("Arthritis"),
			    	    resultSet.getString("Venereal"),
			    	    resultSet.getString("Backaches"),
			    	    resultSet.getString("Tuberculosis"),
			    	    resultSet.getString("Liver"),
			    	    resultSet.getString("Kidney"),
			    	    resultSet.getString("Thyroid"),
			    	    resultSet.getString("Alcoholism"),
			    	    resultSet.getString("Hepatitis"),
			    	    resultSet.getString("Mental"),
			    	    resultSet.getString("High"),
			    	    resultSet.getString("Digestive"),
			    	    resultSet.getString("Heart"), 
			    	    resultSet.getString("Other"),
			    	    resultSet.getString("Ifother"),
			    	    resultSet.getString("Illness"), 
			    	    resultSet.getString("Dates"),
			    	    resultSet.getString("Medications"),
			    	    resultSet.getString("Drink"),
			    	    resultSet.getString("Smoke"),
			    	    resultSet.getString("Drugs"),
			    	    resultSet.getString("Diet"),
			    	    resultSet.getString("Exercise"),
			    	    resultSet.getString("Hazardous"),
			    	    resultSet.getString("Hazardousyes"),
			    	    resultSet.getString("Female"),
			    	    resultSet.getString("Dr"),
			    	    resultSet.getString("Patient")
			    	   ));
				
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
	   System.out.println(patientDetails);
	   
	  
	   
	   
	    return patientDetails;
		
	}
	
	public List<PatientDetails> getpatientname(String patient_id){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
	    try{
			resultSet = statement.executeQuery("select * from patient_details where Patient_id='"+patient_id+"'");
			while(resultSet.next()){
				patientDetails.add(new PatientDetails(
						resultSet.getString("Patient_id"),
			    		resultSet.getString("Name"),
			    		resultSet.getString("username"),
			    		resultSet.getString("Date"),
			    		resultSet.getString("StreetAddress"),
			    		resultSet.getString("City"),
			    		resultSet.getString("State"),
			    		resultSet.getString("Zipcode"),
			    		resultSet.getString("Homephone"),
			    		resultSet.getString("Emailid"),
			    		resultSet.getString("MobileNumber"),
			    		resultSet.getString("DateOfBirth"),
			    		resultSet.getString("SocialSecurityNumber"),
			    		resultSet.getString("Gender"),
			    		resultSet.getString("MaritalStatus"),
			    		resultSet.getString("Areyou"),
			    		resultSet.getString("Student"),
			    		resultSet.getString("EmployerName"),
			    		resultSet.getString("Occupation"),
			    		resultSet.getString("EmployerAddress"),
			    		resultSet.getString("Workphone"),
			    		resultSet.getString("zip"),
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("retain"),
			    	    resultSet.getString("record"),
			    	    resultSet.getString("phyname"),
			    	    resultSet.getString("phyphone"),
			    	    resultSet.getString("car11"),
			    	    resultSet.getString("xray"),
			    	    resultSet.getString("treat"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
			    	    resultSet.getString("claim_open"),
			    	    resultSet.getString("Insurance"),
			    	    resultSet.getString("Insurance_phone"),
			    	    resultSet.getString("Name_auto"),
			    	    resultSet.getString("Phone_auto"),
			    	    resultSet.getString("policy"),
			    	    resultSet.getString("Name_health"),
			    	    resultSet.getString("Health_phone"),
			    	    resultSet.getString("Prev_accident"),
			    	    resultSet.getString("Prev_When"),
			    	    resultSet.getString("Anemia"),
			    	    resultSet.getString("Muscular"),
			    	    resultSet.getString("Rheumatic"),
			    	    resultSet.getString("Allergies"),
			    	    resultSet.getString("Cancer"),
			    	    resultSet.getString("Polio1"),
			    	    resultSet.getString("Multiple"),
			    	    resultSet.getString("Scarlet"),
			    	    resultSet.getString("HIV"),
			    	    resultSet.getString("Sinus"),
			    	    resultSet.getString("Asthma"),
			    	    resultSet.getString("German"),
			    	    resultSet.getString("Nervousness"),
			    	    resultSet.getString("Numbness"),
			    	    resultSet.getString("Convulsions"),
			    	    resultSet.getString("Epilepsy"),
			    	    resultSet.getString("Concussion"),
			    	    resultSet.getString("Dizziness"),
			    	    resultSet.getString("Neuritis"),
			    	    resultSet.getString("Rheumatism"),
			    	    resultSet.getString("Diabetes"),
			    	    resultSet.getString("Arthritis"),
			    	    resultSet.getString("Venereal"),
			    	    resultSet.getString("Backaches"),
			    	    resultSet.getString("Tuberculosis"),
			    	    resultSet.getString("Liver"),
			    	    resultSet.getString("Kidney"),
			    	    resultSet.getString("Thyroid"),
			    	    resultSet.getString("Alcoholism"),
			    	    resultSet.getString("Hepatitis"),
			    	    resultSet.getString("Mental"),
			    	    resultSet.getString("High"),
			    	    resultSet.getString("Digestive"),
			    	    resultSet.getString("Heart"), 
			    	    resultSet.getString("Other"),
			    	    resultSet.getString("Ifother"),
			    	    resultSet.getString("Illness"), 
			    	    resultSet.getString("Dates"),
			    	    resultSet.getString("Medications"),
			    	    resultSet.getString("Drink"),
			    	    resultSet.getString("Smoke"),
			    	    resultSet.getString("Drugs"),
			    	    resultSet.getString("Diet"),
			    	    resultSet.getString("Exercise"),
			    	    resultSet.getString("Hazardous"),
			    	    resultSet.getString("Hazardousyes"),
			    	    resultSet.getString("Female"),
			    	    resultSet.getString("Dr"),
			    	    resultSet.getString("Patient")
			    	   ));
				
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
	   System.out.println(patientDetails);
	   
	  
	   
	   
	    return patientDetails;
		
	}
	
	
	public List<PatientDetails> getPatientAttorneyDetails(String attorney,String name,String accident,String dateofaccident,String insurance){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
	    try{
	    	System.out.println("hello");
	    	System.out.println("sadasdasdsd select * from patient_details where Name_health='"+insurance+"'");
	    	System.out.println("insurance"+insurance);
	    	if(name!="")
	    	{
	    	resultSet = statement.executeQuery("select * from patient_details where Name LIKE '%"+name+"'");
	    	}
	    	else if(attorney!="")
	    	{
	    		resultSet = statement.executeQuery("select * from patient_details where NameOfAttorney='"+attorney+"'");
	    	}
	    	else if(accident!="")
	    	{	    	
	    	resultSet = statement.executeQuery("select * from patient_details where Type_Of_Accident='"+accident+"'");	
	    	}
	    	else if(dateofaccident!="")
	    	{
	    	resultSet = statement.executeQuery("select * from patient_details where Date_Of_Accident='"+dateofaccident+"'");
				}
	    	
	    	else if(insurance!="")
	    	{
	    		System.out.println("sadasdasdsd select * from patient_details where Name_health='"+insurance+"'");
	    	resultSet = statement.executeQuery("select * from patient_details where Name_health='"+insurance+"'");
	    	System.out.println("select * from patient_details where Name_health='"+insurance+"'");
				}
	    	while(resultSet.next()){
				patientDetails.add(new PatientDetails(
						resultSet.getString("Patient_id"),
			    		resultSet.getString("Name"),
			    		resultSet.getString("username"),
			    		resultSet.getString("Date"),
			    		resultSet.getString("StreetAddress"),
			    		resultSet.getString("City"),
			    		resultSet.getString("State"),
			    		resultSet.getString("Zipcode"),
			    		resultSet.getString("Homephone"),
			    		resultSet.getString("Emailid"),
			    		resultSet.getString("MobileNumber"),
			    		resultSet.getString("DateOfBirth"),
			    		resultSet.getString("SocialSecurityNumber"),
			    		resultSet.getString("Gender"),
			    		resultSet.getString("MaritalStatus"),
			    		resultSet.getString("Areyou"),
			    		resultSet.getString("Student"),
			    		resultSet.getString("EmployerName"),
			    		resultSet.getString("Occupation"),
			    		resultSet.getString("EmployerAddress"),
			    		resultSet.getString("Workphone"),
			    		resultSet.getString("zip"),
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("retain"),
			    	    resultSet.getString("record"),
			    	    resultSet.getString("phyname"),
			    	    resultSet.getString("phyphone"),
			    	    resultSet.getString("car11"),
			    	    resultSet.getString("xray"),
			    	    resultSet.getString("treat"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
			    	    resultSet.getString("claim_open"),
			    	    resultSet.getString("Insurance"),
			    	    resultSet.getString("Insurance_phone"),
			    	    resultSet.getString("Name_auto"),
			    	    resultSet.getString("Phone_auto"),
			    	    resultSet.getString("policy"),
			    	    resultSet.getString("Name_health"),
			    	    resultSet.getString("Health_phone"),
			    	    resultSet.getString("Prev_accident"),
			    	    resultSet.getString("Prev_When"),
			    	    resultSet.getString("Anemia"),
			    	    resultSet.getString("Muscular"),
			    	    resultSet.getString("Rheumatic"),
			    	    resultSet.getString("Allergies"),
			    	    resultSet.getString("Cancer"),
			    	    resultSet.getString("Polio1"),
			    	    resultSet.getString("Multiple"),
			    	    resultSet.getString("Scarlet"),
			    	    resultSet.getString("HIV"),
			    	    resultSet.getString("Sinus"),
			    	    resultSet.getString("Asthma"),
			    	    resultSet.getString("German"),
			    	    resultSet.getString("Nervousness"),
			    	    resultSet.getString("Numbness"),
			    	    resultSet.getString("Convulsions"),
			    	    resultSet.getString("Epilepsy"),
			    	    resultSet.getString("Concussion"),
			    	    resultSet.getString("Dizziness"),
			    	    resultSet.getString("Neuritis"),
			    	    resultSet.getString("Rheumatism"),
			    	    resultSet.getString("Diabetes"),
			    	    resultSet.getString("Arthritis"),
			    	    resultSet.getString("Venereal"),
			    	    resultSet.getString("Backaches"),
			    	    resultSet.getString("Tuberculosis"),
			    	    resultSet.getString("Liver"),
			    	    resultSet.getString("Kidney"),
			    	    resultSet.getString("Thyroid"),
			    	    resultSet.getString("Alcoholism"),
			    	    resultSet.getString("Hepatitis"),
			    	    resultSet.getString("Mental"),
			    	    resultSet.getString("High"),
			    	    resultSet.getString("Digestive"),
			    	    resultSet.getString("Heart"), 
			    	    resultSet.getString("Other"),
			    	    resultSet.getString("Ifother"),
			    	    resultSet.getString("Illness"), 
			    	    resultSet.getString("Dates"),
			    	    resultSet.getString("Medications"),
			    	    resultSet.getString("Drink"),
			    	    resultSet.getString("Smoke"),
			    	    resultSet.getString("Drugs"),
			    	    resultSet.getString("Diet"),
			    	    resultSet.getString("Exercise"),
			    	    resultSet.getString("Hazardous"),
			    	    resultSet.getString("Hazardousyes"),
			    	    resultSet.getString("Female"),
			    	    resultSet.getString("Dr"),
			    	    resultSet.getString("Patient")
			    	   ));
				
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
	   System.out.println(patientDetails);
	   
	  
	   
	   
	    return patientDetails;
		
	}
	public List<PatientDetails> getPatientDetails(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
	    try{
			resultSet = statement.executeQuery("select * from patient_details");
			while(resultSet.next()){
				patientDetails.add(new PatientDetails(
						resultSet.getString("Patient_id"),
			    		resultSet.getString("Name"),
			    		resultSet.getString("username"),
			    		resultSet.getString("Date"),
			    		resultSet.getString("StreetAddress"),
			    		resultSet.getString("City"),
			    		resultSet.getString("State"),
			    		resultSet.getString("Zipcode"),
			    		resultSet.getString("Homephone"),
			    		resultSet.getString("Emailid"),
			    		resultSet.getString("MobileNumber"),
			    		resultSet.getString("DateOfBirth"),
			    		resultSet.getString("SocialSecurityNumber"),
			    		resultSet.getString("Gender"),
			    		resultSet.getString("MaritalStatus"),
			    		resultSet.getString("Areyou"),
			    		resultSet.getString("Student"),
			    		resultSet.getString("EmployerName"),
			    		resultSet.getString("Occupation"),
			    		resultSet.getString("EmployerAddress"),
			    		resultSet.getString("Workphone"),
			    		resultSet.getString("zip"),
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("retain"),
			    	    resultSet.getString("record"),
			    	    resultSet.getString("phyname"),
			    	    resultSet.getString("phyphone"),
			    	    resultSet.getString("car11"),
			    	    resultSet.getString("xray"),
			    	    resultSet.getString("treat"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
			    	    resultSet.getString("claim_open"),
			    	    resultSet.getString("Insurance"),
			    	    resultSet.getString("Insurance_phone"),
			    	    resultSet.getString("Name_auto"),
			    	    resultSet.getString("Phone_auto"),
			    	    resultSet.getString("policy"),
			    	    resultSet.getString("Name_health"),
			    	    resultSet.getString("Health_phone"),
			    	    resultSet.getString("Prev_accident"),
			    	    resultSet.getString("Prev_When"),
			    	    resultSet.getString("Anemia"),
			    	    resultSet.getString("Muscular"),
			    	    resultSet.getString("Rheumatic"),
			    	    resultSet.getString("Allergies"),
			    	    resultSet.getString("Cancer"),
			    	    resultSet.getString("Polio1"),
			    	    resultSet.getString("Multiple"),
			    	    resultSet.getString("Scarlet"),
			    	    resultSet.getString("HIV"),
			    	    resultSet.getString("Sinus"),
			    	    resultSet.getString("Asthma"),
			    	    resultSet.getString("German"),
			    	    resultSet.getString("Nervousness"),
			    	    resultSet.getString("Numbness"),
			    	    resultSet.getString("Convulsions"),
			    	    resultSet.getString("Epilepsy"),
			    	    resultSet.getString("Concussion"),
			    	    resultSet.getString("Dizziness"),
			    	    resultSet.getString("Neuritis"),
			    	    resultSet.getString("Rheumatism"),
			    	    resultSet.getString("Diabetes"),
			    	    resultSet.getString("Arthritis"),
			    	    resultSet.getString("Venereal"),
			    	    resultSet.getString("Backaches"),
			    	    resultSet.getString("Tuberculosis"),
			    	    resultSet.getString("Liver"),
			    	    resultSet.getString("Kidney"),
			    	    resultSet.getString("Thyroid"),
			    	    resultSet.getString("Alcoholism"),
			    	    resultSet.getString("Hepatitis"),
			    	    resultSet.getString("Mental"),
			    	    resultSet.getString("High"),
			    	    resultSet.getString("Digestive"),
			    	    resultSet.getString("Heart"), 
			    	    resultSet.getString("Other"),
			    	    resultSet.getString("Ifother"),
			    	    resultSet.getString("Illness"), 
			    	    resultSet.getString("Dates"),
			    	    resultSet.getString("Medications"),
			    	    resultSet.getString("Drink"),
			    	    resultSet.getString("Smoke"),
			    	    resultSet.getString("Drugs"),
			    	    resultSet.getString("Diet"),
			    	    resultSet.getString("Exercise"),
			    	    resultSet.getString("Hazardous"),
			    	    resultSet.getString("Hazardousyes"),
			    	    resultSet.getString("Female"),
			    	    resultSet.getString("Dr"),
			    	    resultSet.getString("Patient")
			    	   ));
				
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
	   System.out.println(patientDetails);
	   
	  
	   
	   
	    return patientDetails;
		
	}
	
	public String getpatientAge(String username){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ResultSet patientresultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		String age="",patient_id="";
	    try{
	    		    	
			resultSet = statement.executeQuery("select age from agecalculation where username='"+username+"'");
			while(resultSet.next()){
				age=resultSet.getString("age");
				}
			System.out.println("age"+age);
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
	   
	    return age;
		
	}
	public String getAge(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ResultSet patientresultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		String age="",patient_id="";
	    try{
	    	
	    	String cmd1="select patient_id as patient_id from patient_details ORDER BY patient_id DESC";
	    	patientresultSet=statement.executeQuery(cmd1);
	    	
	    	 if(patientresultSet.next())
	    	 {
	    		
	    		patient_id=patientresultSet.getString("patient_id");
	    	 }
	    	 System.out.println("patient_id"+patient_id);
	    	
	    	
			resultSet = statement.executeQuery("select age from agecalculation where patient_id='"+patient_id+"'");
			while(resultSet.next()){
				age=resultSet.getString("age");
				}
			System.out.println("age"+age);
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
	   
	    return age;
		
	}
	
	public List<String> getsymptomdetails(String patient_id){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
	
		String cmd;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<String> strlist = new ArrayList<String>();
	    try{
	        
	       cmd="select symptom from tbl_symptom where patient_id='"+patient_id+"'";
	    
	System.out.println(cmd);      
			resultSet=statement.executeQuery(cmd);
			
			while(resultSet.next())
			{
				strlist.add(resultSet.getString("symptom"));
				
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
	    return strlist;
		
	}
	
	
	
	public List<PatientDetails> viewPatientDetails(String patient_id){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
	    try{
	    	String result = "select * from patient_details where patient_id='"+patient_id+"'";
			resultSet = statement.executeQuery(result);
			System.out.println("excute="+result);
			while(resultSet.next()){
				patientDetails.add(new PatientDetails(
						resultSet.getString("Patient_id"),
			    		resultSet.getString("Name"),
			    		resultSet.getString("username"),
			    		resultSet.getString("Date"),
			    		resultSet.getString("StreetAddress"),
			    		resultSet.getString("City"),
			    		resultSet.getString("State"),
			    		resultSet.getString("Zipcode"),
			    		resultSet.getString("Homephone"),
			    		resultSet.getString("Emailid"),
			    		resultSet.getString("MobileNumber"),
			    		resultSet.getString("DateOfBirth"),
			    		resultSet.getString("SocialSecurityNumber"),
			    		resultSet.getString("Gender"),
			    		resultSet.getString("MaritalStatus"),
			    		resultSet.getString("Areyou"),
			    		resultSet.getString("Student"),
			    		resultSet.getString("EmployerName"),
			    		resultSet.getString("Occupation"),
			    		resultSet.getString("EmployerAddress"),
			    		resultSet.getString("Workphone"),
			    		resultSet.getString("zip"),
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("retain"),
			    	    resultSet.getString("record"),
			    	    resultSet.getString("phyname"),
			    	    resultSet.getString("phyphone"),
			    	    resultSet.getString("car11"),
			    	    resultSet.getString("xray"),
			    	    resultSet.getString("treat"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
			    	    resultSet.getString("claim_open"),
			    	    resultSet.getString("Insurance"),
			    	    resultSet.getString("Insurance_phone"),
			    	    resultSet.getString("Name_auto"),
			    	    resultSet.getString("Phone_auto"),
			    	    resultSet.getString("policy"),
			    	    resultSet.getString("Name_health"),
			    	    resultSet.getString("Health_phone"),
			    	    resultSet.getString("Prev_accident"),
			    	    resultSet.getString("Prev_When"),
			    	    resultSet.getString("Anemia"),
			    	    resultSet.getString("Muscular"),
			    	    resultSet.getString("Rheumatic"),
			    	    resultSet.getString("Allergies"),
			    	    resultSet.getString("Cancer"),
			    	    resultSet.getString("Polio1"),
			    	    resultSet.getString("Multiple"),
			    	    resultSet.getString("Scarlet"),
			    	    resultSet.getString("HIV"),
			    	    resultSet.getString("Sinus"),
			    	    resultSet.getString("Asthma"),
			    	    resultSet.getString("German"),
			    	    resultSet.getString("Nervousness"),
			    	    resultSet.getString("Numbness"),
			    	    resultSet.getString("Convulsions"),
			    	    resultSet.getString("Epilepsy"),
			    	    resultSet.getString("Concussion"),
			    	    resultSet.getString("Dizziness"),
			    	    resultSet.getString("Neuritis"),
			    	    resultSet.getString("Rheumatism"),
			    	    resultSet.getString("Diabetes"),
			    	    resultSet.getString("Arthritis"),
			    	    resultSet.getString("Venereal"),
			    	    resultSet.getString("Backaches"),
			    	    resultSet.getString("Tuberculosis"),
			    	    resultSet.getString("Liver"),
			    	    resultSet.getString("Kidney"),
			    	    resultSet.getString("Thyroid"),
			    	    resultSet.getString("Alcoholism"),
			    	    resultSet.getString("Hepatitis"),
			    	    resultSet.getString("Mental"),
			    	    resultSet.getString("High"),
			    	    resultSet.getString("Digestive"),
			    	    resultSet.getString("Heart"), 
			    	    resultSet.getString("Other"),
			    	    resultSet.getString("Ifother"),
			    	    resultSet.getString("Illness"), 
			    	    resultSet.getString("Dates"),
			    	    resultSet.getString("Medications"),
			    	    resultSet.getString("Drink"),
			    	    resultSet.getString("Smoke"),
			    	    resultSet.getString("Drugs"),
			    	    resultSet.getString("Diet"),
			    	    resultSet.getString("Exercise"),
			    	    resultSet.getString("Hazardous"),
			    	    resultSet.getString("Hazardousyes"),
			    	    resultSet.getString("Female"),
			    	    resultSet.getString("Dr"),
			    	    resultSet.getString("Patient")
			    	   ));
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
	   System.out.println(patientDetails);
	   
	  
	   
	   
	    return patientDetails;
		
	}
	public int updatePatientDetails(PatientDetails patient,String patient_id,String admin,String[] Symptoms)
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
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 //System.out.println(dateFormat.format(date));
	    	 System.out.println("delete from tbl_symptom where patient_id='"+patient_id+"'");
	    	 statement.executeUpdate("delete from tbl_symptom where patient_id='"+patient_id+"'");
	    	String cmd_mess;
	    	int count=0;
	    	 for(String symptom :Symptoms)
	    	 	    		{	
	    	 	    		
	    	 	    		 cmd_mess="insert into tbl_symptom(symptom,symptom_count,patient_id) values('"+symptom+"','"+count+"','"+patient_id+"')";
	    	 	    		 count++;
	    	 	    		 statement.execute(cmd_mess);
	    	 	    		 System.out.println(cmd_mess);
	    	 	    		} 
	    	
	    	String dateof=patient.getDateOfBirth();
	    	 try
	    	{
	    	 java.util.Date  ss1=new Date(patient.getDateOfBirth());
	    	 SimpleDateFormat formatter5=new SimpleDateFormat("yyyy-MM-dd");
	    	 String formats1 = formatter5.format(ss1);
	    	 dateof=formats1;
	    	}
	    	catch(Exception e)
	    	{
	    		System.out.println(e);
	    	}
	    	String cmd="UPDATE patient_details SET name ='"+patient.getName()+"',date='"+patient.getDate()+"',StreetAddress='"+patient.getStreetAddress()+"',City='"+patient.getCity()+"',State='"+patient.getState()+"',ZipCode='"+patient.getZipCode()+"',Homephone='"+patient.getHomephone()+"',Emailid='"+patient.getEmailid()+"',MobileNumber='"+patient.getMobileNumber()+"',DateOfBirth='"+dateof+"',SocialSecurityNumber='"+patient.getSocialSecurityNumber()+"',Gender='"+patient.getGender()+"',MaritalStatus='"+patient.getMaritalStatus()+"',Areyou='"+patient.getAreyou()+"',Student='"+patient.getStudent()+"',EmployerName='"+patient.getEmployerName()+"',Occupation='"+patient.getOccupation()+"',EmployerAddress='"+patient.getEmployerAddress()+"',Workphone='"+patient.getWorkphone()+"',zip='"+patient.getZip()+"',EmployerCity='"+patient.getEmployerCity()+"',Estate='"+patient.getEstate()+"',Ezip='"+patient.getEzip()+"',SpousesName='"+patient.getSpousesName()+"',SpousesEmp='"+patient.getSpousesEmp()+"',Spousesph='"+patient.getSpousesph()+"',Name_friend='"+patient.getName_friend()+"',Phone_friend='"+patient.getPhone_friend()+"',Chiropratic_care='"+patient.getChiropratic_care()+"',Symptom_Accident='"+patient.getSymptom_Accident()+"',Type_Of_Accident='"+patient.getType_Of_Accident()+"',accident='"+patient.getAccident()+"',Date_Of_Accident='"+patient.getDate_Of_Accident()+"',Accident_Reported='"+patient.getAccident_Reported()+"',when1='"+patient.getWhen1()+"',where1='"+patient.getWhere1()+"',Attorney_accident='"+patient.getAttorney_accident()+"',retain='"+patient.getRetain()+"',record='"+patient.getRecord()+"',phyname='"+patient.getPhyname()+"',phyphone='"+patient.getPhyphone()+"',car11='"+patient.getCar11()+"',xray='"+patient.getXray()+"',treat='"+patient.getTreat()+"',NameOfAttorney='"+patient.getNameOfAttorney()+"',Phone_Number='"+patient.getPhone_Number()+"',Fault_accident='"+patient.getFault_accident()+"',claim_open='"+patient.getClaim_open()+"',Insurance='"+patient.getInsurance()+"',Insurance_phone='"+patient.getInsurance_phone()+"',Name_auto='"+patient.getName_auto()+"',Phone_auto='"+patient.getPhone_auto()+"',Policy='"+patient.getPolicy()+"',Name_health='"+patient.getName_health()+"',Health_phone='"+patient.getHealth_phone()+"',Prev_accident='"+patient.getPrev_accident()+"',Prev_When='"+patient.getPrev_When()+"',Anemia='"+patient.getAnemia()+"',Muscular='"+patient.getMuscular()+"',Rheumatic='"+patient.getRheumatic()+"',Allergies='"+patient.getAllergies()+"',Cancer='"+patient.getCancer()+"',Polio1='"+patient.getPolio1()+"',Multiple='"+patient.getMultiple()+"',Scarlet='"+patient.getScarlet()+"',HIV='"+patient.getHIV()+"',Sinus='"+patient.getSinus()+"',Asthma='"+patient.getAsthma()+"',German='"+patient.getGerman()+"',Nervousness='"+patient.getNervousness()+"',Numbness='"+patient.getNumbness()+"',Convulsions='"+patient.getConvulsions()+"',Epilepsy='"+patient.getEpilepsy()+"',Concussion='"+patient.getConcussion()+"',Dizziness='"+patient.getDizziness()+"',Neuritis='"+patient.getNeuritis()+"',Rheumatism='"+patient.getRheumatism()+"',Diabetes='"+patient.getDiabetes()+"',Arthritis='"+patient.getArthritis()+"',Venereal='"+patient.getVenereal()+"',Backaches='"+patient.getBackaches()+"',Tuberculosis='"+patient.getTuberculosis()+"',Liver='"+patient.getLiver()+"',Kidney='"+patient.getKidney()+"',Thyroid='"+patient.getThyroid()+"',Alcoholism='"+patient.getAlchoholism()+"',Hepatitis='"+patient.getHepatitis()+"',Mental='"+patient.getMental()+"',High='"+patient.getHigh()+"',Digestive='"+patient.getDigestive()+"',Heart='"+patient.getHeart()+"',Other='"+patient.getOther()+"',Ifother='"+patient.getIfother()+"',Illness='"+patient.getIllness()+"',Dates='"+patient.getDates()+"',Medications='"+patient.getMedications()+"',Drink='"+patient.getDrink()+"',Smoke='"+patient.getSmoke()+"',Drugs='"+patient.getDrugs()+"',Diet='"+patient.getDiet()+"',Exercise='"+patient.getExercise()+"',Hazardous='"+patient.getHazardous()+"',Hazardousyes='"+patient.getHazardousyes()+"',Female='"+patient.getFemale()+"',Dr='"+patient.getDr()+"',Patient='"+patient.getPatient()+"' WHERE patient_id='"+patient_id+"';";
	    	statement.execute(cmd);
	    	System.out.println("updated="+cmd);	
	    	 String cmd1="select patient_id as patient_id,TIMESTAMPDIFF(YEAR,DateOfBirth,CURDATE()) AS age from patient_details where username='"+patient.getUsername()+"'";
	 	    System.out.println("agequery"+cmd1);
	 	    	 resultSet=statement.executeQuery(cmd1);
	 	    	 String age="";
	 	    	
	 	    	 if(resultSet.next())
	 	    	 {
	 	    		age=resultSet.getString("age");
	 	    		patient_id=resultSet.getString("patient_id");
	 	    	 }
	 	    	 System.out.println("age.."+age);
	 	    	
	 	    	 String cmd2="update agecalculation set DateOfBirth='"+dateof+"',age='"+age+"' where username='"+patient.getUsername()+"'";
	 	    	 statement.execute(cmd2);
	    	
	    	
	    	String Desc="Update patient "+patient.getPatient_id();
	    
	    	//statement.executeUpdate("");
	    	//statement.execute(cmd);
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
	public int deletePatientDetails(String patient_id,String admin){
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
	    	 String cmd_getpatient_name="select * from patient_details where patient_id='"+patient_id+"'";
	    	 String Desc="Delete patient ";
	    	 resultSet=statement.executeQuery(cmd_getpatient_name);
				
				if(resultSet.next())
					Desc=Desc+resultSet.getString(1);
				statement.execute("delete from patient_details where patient_id='"+patient_id+"'");
				System.out.println("deleted id="+patient_id);
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
	public List<PatientDetails> getlimitedpatientdetails(int page) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
		try {

			String cmd;
			int offset = 5 * (page - 1);
			int limit = 5;
			
				
					cmd = "select * from patient_details order by name asc limit " + offset + ","+ limit+"" ;
	
			resultSet = statement.executeQuery(cmd);
			while (resultSet.next()) {
				patientDetails.add(new PatientDetails(
						resultSet.getString("Patient_id"),
			    		resultSet.getString("Name"),
			    		resultSet.getString("username"),
			    		resultSet.getString("Date"),
			    		resultSet.getString("StreetAddress"),
			    		resultSet.getString("City"),
			    		resultSet.getString("State"),
			    		resultSet.getString("Zipcode"),
			    		resultSet.getString("Homephone"),
			    		resultSet.getString("Emailid"),
			    		resultSet.getString("MobileNumber"),
			    		resultSet.getString("DateOfBirth"),
			    		resultSet.getString("SocialSecurityNumber"),
			    		resultSet.getString("Gender"),
			    		resultSet.getString("MaritalStatus"),
			    		resultSet.getString("Areyou"),
			    		resultSet.getString("Student"),
			    		resultSet.getString("EmployerName"),
			    		resultSet.getString("Occupation"),
			    		resultSet.getString("EmployerAddress"),
			    		resultSet.getString("Workphone"),
			    		resultSet.getString("zip"),
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("retain"),
			    	    resultSet.getString("record"),
			    	    resultSet.getString("phyname"),
			    	    resultSet.getString("phyphone"),
			    	    resultSet.getString("car11"),
			    	    resultSet.getString("xray"),
			    	    resultSet.getString("treat"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
			    	    resultSet.getString("claim_open"),
			    	    resultSet.getString("Insurance"),
			    	    resultSet.getString("Insurance_phone"),
			    	    resultSet.getString("Name_auto"),
			    	    resultSet.getString("Phone_auto"),
			    	    resultSet.getString("policy"),
			    	    resultSet.getString("Name_health"),
			    	    resultSet.getString("Health_phone"),
			    	    resultSet.getString("Prev_accident"),
			    	    resultSet.getString("Prev_When"),
			    	    resultSet.getString("Anemia"),
			    	    resultSet.getString("Muscular"),
			    	    resultSet.getString("Rheumatic"),
			    	    resultSet.getString("Allergies"),
			    	    resultSet.getString("Cancer"),
			    	    resultSet.getString("Polio1"),
			    	    resultSet.getString("Multiple"),
			    	    resultSet.getString("Scarlet"),
			    	    resultSet.getString("HIV"),
			    	    resultSet.getString("Sinus"),
			    	    resultSet.getString("Asthma"),
			    	    resultSet.getString("German"),
			    	    resultSet.getString("Nervousness"),
			    	    resultSet.getString("Numbness"),
			    	    resultSet.getString("Convulsions"),
			    	    resultSet.getString("Epilepsy"),
			    	    resultSet.getString("Concussion"),
			    	    resultSet.getString("Dizziness"),
			    	    resultSet.getString("Neuritis"),
			    	    resultSet.getString("Rheumatism"),
			    	    resultSet.getString("Diabetes"),
			    	    resultSet.getString("Arthritis"),
			    	    resultSet.getString("Venereal"),
			    	    resultSet.getString("Backaches"),
			    	    resultSet.getString("Tuberculosis"),
			    	    resultSet.getString("Liver"),
			    	    resultSet.getString("Kidney"),
			    	    resultSet.getString("Thyroid"),
			    	    resultSet.getString("Alcoholism"),
			    	    resultSet.getString("Hepatitis"),
			    	    resultSet.getString("Mental"),
			    	    resultSet.getString("High"),
			    	    resultSet.getString("Digestive"),
			    	    resultSet.getString("Heart"), 
			    	    resultSet.getString("Other"),
			    	    resultSet.getString("Ifother"),
			    	    resultSet.getString("Illness"), 
			    	    resultSet.getString("Dates"),
			    	    resultSet.getString("Medications"),
			    	    resultSet.getString("Drink"),
			    	    resultSet.getString("Smoke"),
			    	    resultSet.getString("Drugs"),
			    	    resultSet.getString("Diet"),
			    	    resultSet.getString("Exercise"),
			    	    resultSet.getString("Hazardous"),
			    	    resultSet.getString("Hazardousyes"),
			    	    resultSet.getString("Female"),
			    	    resultSet.getString("Dr"),
			    	    resultSet.getString("Patient")
			    	   ));
		 				
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
		return patientDetails;

	}
	public int getnoofpatientdetails() {
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
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
		try {

			String cmd;
			
					cmd = "select count(*) as noofrecords from patient_details";
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

	public int getmaxrecords() {
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
		List<PatientDetails> patientDetails = new ArrayList<PatientDetails>();
		try {

			String cmd;
			
			
					cmd = "SELECT *	FROM patient_details ORDER BY patient_id DESC LIMIT 1";
					System.out.println("command"+cmd);			
			resultSet = statement.executeQuery(cmd);
			if (resultSet.next())
				noofRecords = resultSet.getInt("Patient_id");
			              System.out.println(noofRecords);
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























