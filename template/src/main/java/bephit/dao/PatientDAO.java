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

import bephit.model.PatientDetails;
import bephit.model.RadiologicReport;

public class PatientDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setPatientDetails(PatientDetails patientdetails)
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
	    	 String cmd="INSERT INTO patient_details (Name,Date,StreetAddress,City,State,ZipCode,Homephone,Emailid,MobileNumber,DateOfBirth,SocialSecurityNumber,Gender,MaritalStatus,Areyou,Student,EmployerName,Occupation,EmployerAddress,Workphone,EmployerCity,Estate,Ezip,SpousesName,SpousesEmp,Spousesph,Name_friend,Phone_friend,Chiropratic_care,Symptoms,Painscale,Symptom1,Painscale1,Symptom2,Painscale2,Symptom_Accident,Type_Of_Accident,accident,Date_Of_Accident,Accident_Reported,when1,where1,Attorney_accident,NameOfAttorney,Phone_Number,Fault_accident,Insurance,Insurance_phone,Name_auto,Phone_auto,Policy,Name_health,Health_phone,Prev_accident,Prev_When,Anemia,Muscular,Rheumatic,Allergies,Cancer,Polio1,Multiple,Scarlet,HIV,Sinus,Asthma,German,Nervousness,Numbness,Convulsions,Epilepsy,Concussion,Dizziness,Neuritis,Rheumatism,Diabetes,Arthritis,Venereal,Backaches,Tuberculosis,Liver,Kidney,Thyroid,Alcoholism,Hepatitis,Mental,High,Digestive,Heart,Other,Ifother,Illness,Dates,Medications,Drink,Smoke,Drugs,Diet,Exercise,Hazardous,Hazardousyes,Female,Dr,Patient) VALUES('"+patientdetails.getName()+"','"+patientdetails.getDate()+"','"+patientdetails.getStreetAddress()+"','"+patientdetails.getCity()+"','"+patientdetails.getState()+"','"+patientdetails.getZipCode()+"','"+patientdetails.getHomephone()+"','"+patientdetails.getEmailid()+"','"+patientdetails.getMobileNumber()+"','"+patientdetails.getDateOfBirth()+"','"+patientdetails.getSocialSecurityNumber()+"','"+patientdetails.getGender()+"','"+patientdetails.getMaritalStatus()+"','"+patientdetails.getAreyou()+"','"+patientdetails.getStudent()+"','"+patientdetails.getEmployerName()+"','"+patientdetails.getOccupation()+"','"+patientdetails.getEmployerAddress()+"','"+patientdetails.getWorkphone()+"','"+patientdetails.getEmployerCity()+"','"+patientdetails.getEstate()+"','"+patientdetails.getEzip()+"','"+patientdetails.getSpousesName()+"','"+patientdetails.getSpousesEmp()+"','"+patientdetails.getSpousesph()+"','"+patientdetails.getName_friend()+"','"+patientdetails.getPhone_friend()+"','"+patientdetails.getChiropratic_care()+"','"+patientdetails.getSymptoms()+"','"+patientdetails.getPainscale()+"','"+patientdetails.getSymptom1()+"','"+patientdetails.getPainscale1()+"','"+patientdetails.getSymptom2()+"','"+patientdetails.getPainscale2()+"','"+patientdetails.getSymptom_Accident()+"','"+patientdetails.getType_Of_Accident()+"','"+patientdetails.getAccident()+"','"+patientdetails.getDate_Of_Accident()+"','"+patientdetails.getAccident_Reported()+"','"+patientdetails.getWhen1()+"','"+patientdetails.getWhere1()+"','"+patientdetails.getAttorney_accident()+"','"+patientdetails.getNameOfAttorney()+"','"+patientdetails.getPhone_Number()+"','"+patientdetails.getFault_accident()+"','"+patientdetails.getInsurance()+"','"+patientdetails.getInsurance_phone()+"','"+patientdetails.getName_auto()+"','"+patientdetails.getPhone_auto()+"','"+patientdetails.getPolicy()+"','"+patientdetails.getName_health()+"','"+patientdetails.getHealth_phone()+"','"+patientdetails.getPrev_accident()+"','"+patientdetails.getPrev_When()+"','"+patientdetails.getAnemia()+"','"+patientdetails.getMuscular()+"','"+patientdetails.getRheumatic()+"','"+patientdetails.getAllergies()+"','"+patientdetails.getCancer()+"','"+patientdetails.getPolio1()+"','"+patientdetails.getMultiple()+"','"+patientdetails.getScarlet()+"','"+patientdetails.getHIV()+"','"+patientdetails.getSinus()+"','"+patientdetails.getAsthma()+"','"+patientdetails.getGerman()+"','"+patientdetails.getNervousness()+"','"+patientdetails.getNumbness()+"','"+patientdetails.getConvulsions()+"','"+patientdetails.getEpilepsy()+"','"+patientdetails.getConcussion()+"','"+patientdetails.getDizziness()+"','"+patientdetails.getNeuritis()+"','"+patientdetails.getRheumatism()+"','"+patientdetails.getDiabetes()+"','"+patientdetails.getArthritis()+"','"+patientdetails.getVenereal()+"','"+patientdetails.getBackaches()+"','"+patientdetails.getTuberculosis()+"','"+patientdetails.getLiver()+"','"+patientdetails.getKidney()+"','"+patientdetails.getThyroid()+"','"+patientdetails.getAlchoholism()+"','"+patientdetails.getHepatitis()+"','"+patientdetails.getMental()+"','"+patientdetails.getHigh()+"','"+patientdetails.getDigestive()+"','"+patientdetails.getHeart()+"','"+patientdetails.getOther()+"','"+patientdetails.getIfother()+"','"+patientdetails.getIllness()+"','"+patientdetails.getDates()+"','"+patientdetails.getMedications()+"','"+patientdetails.getDrink()+"','"+patientdetails.getSmoke()+"','"+patientdetails.getDrugs()+"','"+patientdetails.getDiet()+"','"+patientdetails.getExercise()+"','"+patientdetails.getHazardous()+"','"+patientdetails.getHazardousyes()+"','"+patientdetails.getFemale()+"','"+patientdetails.getDr()+"','"+patientdetails.getPatient()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	    	 String cmd1="select patient_id as patient_id,TIMESTAMPDIFF(YEAR,DateOfBirth,CURDATE()) AS age from patient_details ORDER BY patient_id DESC";
	    	 resultSet=statement.executeQuery(cmd1);
	    	 String age="";
	    	 String patient_id="";
	    	 if(resultSet.next())
	    	 {
	    		age=resultSet.getString("age");
	    		patient_id=resultSet.getString("patient_id");
	    	 }
	    	 System.out.println("age.."+age);
	    	
	    	 String cmd2="INSERT INTO agecalculation (patient_id,DateOfBirth,age) VALUES ('"+patient_id+"','"+patientdetails.getDateOfBirth()+"','"+age+"') ";
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
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptoms"),
			    	    resultSet.getString("Painscale"),
			    	    resultSet.getString("Symptom1"),
			    	    resultSet.getString("Painscale1"),
			    	    resultSet.getString("Symptom2"),
			    	    resultSet.getString("Painscale2"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
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
			    	    resultSet.getString("EmployerCity"),
			    	    resultSet.getString("Estate"),
			    	    resultSet.getString("Ezip"),
			    	    resultSet.getString("SpousesName"),
			    	    resultSet.getString("SpousesEmp"),
			    	    resultSet.getString("Spousesph"),
			    	    resultSet.getString("Name_friend"),
			    	    resultSet.getString("Phone_friend"),
			    	    resultSet.getString("Chiropratic_care"),
			    	    resultSet.getString("Symptoms"),
			    	    resultSet.getString("Painscale"),
			    	    resultSet.getString("Symptom1"),
			    	    resultSet.getString("Painscale1"),
			    	    resultSet.getString("Symptom2"),
			    	    resultSet.getString("Painscale2"),
			    	    resultSet.getString("Symptom_Accident"),
			    	    resultSet.getString("Type_Of_Accident"),
			    	    resultSet.getString("accident"),
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("when1"),
			    	    resultSet.getString("where1"),
			    	    resultSet.getString("Attorney_accident"),
			    	    resultSet.getString("NameOfAttorney"),
			    	    resultSet.getString("Phone_Number"),
			    	    resultSet.getString("Fault_accident"),
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
	public int updatePatientDetails(PatientDetails patient,String patient_id,String admin)
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
	    	String cmd="UPDATE patient_details SET name ='"+patient.getName()+"',date='"+patient.getDate()+"',StreetAddress='"+patient.getStreetAddress()+"',City='"+patient.getCity()+"',State='"+patient.getState()+"',ZipCode='"+patient.getZipCode()+"',Homephone='"+patient.getHomephone()+"',Emailid='"+patient.getEmailid()+"',MobileNumber='"+patient.getMobileNumber()+"',DateOfBirth='"+patient.getDateOfBirth()+"',SocialSecurityNumber='"+patient.getSocialSecurityNumber()+"',Gender='"+patient.getGender()+"',MaritalStatus='"+patient.getMaritalStatus()+"',Areyou='"+patient.getAreyou()+"',Student='"+patient.getStudent()+"',EmployerName='"+patient.getEmployerName()+"',Occupation='"+patient.getOccupation()+"',EmployerAddress='"+patient.getEmployerAddress()+"',Workphone='"+patient.getWorkphone()+"',EmployerCity='"+patient.getEmployerCity()+"',Estate='"+patient.getEstate()+"',Ezip='"+patient.getEzip()+"',SpousesName='"+patient.getSpousesName()+"',SpousesEmp='"+patient.getSpousesEmp()+"',Spousesph='"+patient.getSpousesph()+"',Name_friend='"+patient.getName_friend()+"',Phone_friend='"+patient.getPhone_friend()+"',Chiropratic_care='"+patient.getChiropratic_care()+"',Symptoms='"+patient.getSymptoms()+"',Painscale='"+patient.getPainscale()+"',Symptom1='"+patient.getSymptom1()+"',Painscale1='"+patient.getPainscale1()+"',Symptom2='"+patient.getSymptom2()+"',Painscale2='"+patient.getPainscale2()+"',Symptom_Accident='"+patient.getSymptom_Accident()+"',Type_Of_Accident='"+patient.getType_Of_Accident()+"',accident='"+patient.getAccident()+"',Date_Of_Accident='"+patient.getDate_Of_Accident()+"',Accident_Reported='"+patient.getAccident_Reported()+"',when1='"+patient.getWhen1()+"',where1='"+patient.getWhere1()+"',Attorney_accident='"+patient.getAttorney_accident()+"',NameOfAttorney='"+patient.getNameOfAttorney()+"',Phone_Number='"+patient.getPhone_Number()+"',Fault_accident='"+patient.getFault_accident()+"',Insurance='"+patient.getInsurance()+"',Insurance_phone='"+patient.getInsurance_phone()+"',Name_auto='"+patient.getName_auto()+"',Phone_auto='"+patient.getPhone_auto()+"',Policy='"+patient.getPolicy()+"',Name_health='"+patient.getName_health()+"',Health_phone='"+patient.getHealth_phone()+"',Prev_accident='"+patient.getPrev_accident()+"',Prev_When='"+patient.getPrev_When()+"',Anemia='"+patient.getAnemia()+"',Muscular='"+patient.getMuscular()+"',Rheumatic='"+patient.getRheumatic()+"',Allergies='"+patient.getAllergies()+"',Cancer='"+patient.getCancer()+"',Polio1='"+patient.getPolio1()+"',Multiple='"+patient.getMultiple()+"',Scarlet='"+patient.getScarlet()+"',HIV='"+patient.getHIV()+"',Sinus='"+patient.getSinus()+"',Asthma='"+patient.getAsthma()+"',German='"+patient.getGerman()+"',Nervousness='"+patient.getNervousness()+"',Numbness='"+patient.getNumbness()+"',Convulsions='"+patient.getConvulsions()+"',Epilepsy='"+patient.getEpilepsy()+"',Concussion='"+patient.getConcussion()+"',Dizziness='"+patient.getDizziness()+"',Neuritis='"+patient.getNeuritis()+"',Rheumatism='"+patient.getRheumatism()+"',Diabetes='"+patient.getDiabetes()+"',Arthritis='"+patient.getArthritis()+"',Venereal='"+patient.getVenereal()+"',Backaches='"+patient.getBackaches()+"',Tuberculosis='"+patient.getTuberculosis()+"',Liver='"+patient.getLiver()+"',Kidney='"+patient.getKidney()+"',Thyroid='"+patient.getThyroid()+"',Alcoholism='"+patient.getAlchoholism()+"',Hepatitis='"+patient.getHepatitis()+"',Mental='"+patient.getMental()+"',High='"+patient.getHigh()+"',Digestive='"+patient.getDigestive()+"',Heart='"+patient.getHeart()+"',Other='"+patient.getOther()+"',Ifother='"+patient.getIfother()+"',Illness='"+patient.getIllness()+"',Dates='"+patient.getDates()+"',Medications='"+patient.getMedications()+"',Drink='"+patient.getDrink()+"',Smoke='"+patient.getSmoke()+"',Drugs='"+patient.getDrugs()+"',Diet='"+patient.getDiet()+"',Exercise='"+patient.getExercise()+"',Hazardous='"+patient.getHazardous()+"',Hazardousyes='"+patient.getHazardousyes()+"',Female='"+patient.getFemale()+"',Dr='"+patient.getDr()+"',Patient='"+patient.getPatient()+"' WHERE patient_id='"+patient_id+"';";
	    	String Desc="Update patient "+patient.getPatient_id();
	    	System.out.println("updated="+cmd);
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
