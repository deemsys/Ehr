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
	    	 String cmd="INSERT INTO `Patient_Details` (`Name`,`Date`,`StreetAddress`,`City`,`State`,`ZipCode`,`Homephone`,`Emailid`,`MobileNumber`,`DateOfBirth`,`SocialSecurityNumber`,`Gender`,`MaritalStatus`,`Areyou`,`Student`,`EmployerName`,`Occupation`,`EmployerAddress`,`Workphone`,`EmployerCity`,`Estate`,`Ezip`,`SpousesName`,`SpousesEmp`,`Spousesph`,`Name_friend`,`Phone_friend`,`Chiropratic_care`,`Symptoms`,`Painscale`,`Symptom1`,`Painscale1`,`Symptom2`,`Painscale2`,`Symptom_Accident`,`Type_Of_Accident`,`Date_Of_Accident`,`Accident_Reported`,`When`,`Where`,`Attorney_accident`,`NameOfAttorney`,`Phone_Number`,`Fault_accident`,`Insurance`,`Insurance_phone`,`Name_auto`,`Phone_auto`,`Policy`,`Name_health`,`Health_phone`,`Prev_accident`,`Prev_When`,`Anemia`,`Muscular`,`Rheumatic`,`Allergies`,`Polio1`,`Multiple`,`HIV`,`Sinus`,`Asthma`,`German`,`Nervousness`,`Numbness`,`Convulsions`,`Epilepsy`,`Concussion`,`Neuritis`,`Rheumatism`,`Diabetes`,`Arthritis`,`Venereal`,`Backaches`,`Liver`,`Kidney`,`Thyroid`,`Alcoholism`,`Hepatitis`,`Mental`,`High`,`Digestive`,`Heart`,`Other`,`Ifother`,`Illness`,`Dates`,`Medications`,`Drink`,`Smoke`,`Drugs`,`Diet`,`Exercise`,`Hazardous`,`Hazardousyes`,`Female`,`Dr`,`Patient`) VALUES ('"+patientdetails.getName()+"','"+dateFormat.format(date)+"','"+patientdetails.getStreetAddress()+"','"+patientdetails.getCity()+"','"+patientdetails.getState()+"','"+patientdetails.getZipCode()+"','"+patientdetails.getHomephone()+"','"+patientdetails.getEmailid()+"','"+patientdetails.getMobileNumber()+"','"+dateFormat.format(date)+"','"+patientdetails.getSocialSecurityNumber()+"','"+patientdetails.getGender()+"','"+patientdetails.getMaritalStatus()+"','"+patientdetails.getAreyou()+"','"+patientdetails.getStudent()+"','"+patientdetails.getEmployerName()+"','"+patientdetails.getOccupation()+"','"+patientdetails.getEmployerAddress()+"','"+patientdetails.getWorkphone()+"','"+patientdetails.getEmployerCity()+"','"+patientdetails.getEstate()+"','"+patientdetails.getEzip()+"','"+patientdetails.getSpousesName()+"','"+patientdetails.getSpousesEmp()+"','"+patientdetails.getSpousesph()+"','"+patientdetails.getName_friend()+"','"+patientdetails.getPhone_friend()+"','"+patientdetails.getChiropratic_care()+"','"+patientdetails.getSymptoms()+"','"+patientdetails.getPainscale()+"','"+patientdetails.getSymptom1()+"','"+patientdetails.getPainscale1()+"','"+patientdetails.getSymptom2()+"','"+patientdetails.getPainscale2()+"','"+patientdetails.getSymptom_Accident()+"','"+patientdetails.getType_Of_Accident()+"','"+dateFormat.format(date)+"','"+patientdetails.getAccident_Reported()+"','"+patientdetails.getWhen()+"','"+patientdetails.getWhere()+"','"+patientdetails.getAttorney_accident()+"','"+patientdetails.getNameOfAttorney()+"','"+patientdetails.getPhone_Number()+"','"+patientdetails.getFault_accident()+"','"+patientdetails.getInsurance()+"','"+patientdetails.getInsurance_phone()+"','"+patientdetails.getName_auto()+"','"+patientdetails.getPhone_auto()+"','"+patientdetails.getPolicy()+"','"+patientdetails.getName_health()+"','"+patientdetails.getHealth_phone()+"','"+patientdetails+"','"+patientdetails.getPrev_When()+"','"+patientdetails.getAnemia()+"','"+patientdetails.getMuscular()+"','"+patientdetails.getRheumatic()+"','"+patientdetails.getAllergies()+"','"+patientdetails.getPolio1()+"','"+patientdetails.getMultiple()+"','"+patientdetails.getHIV()+"','"+patientdetails.getSinus()+"','"+patientdetails.getAsthma()+"','"+patientdetails.getGerman()+"','"+patientdetails.getNervousness()+"','"+patientdetails.getNumbness()+"','"+patientdetails.getConvulsions()+"','"+patientdetails.getEpilepsy()+"','"+patientdetails.getConcussion()+"','"+patientdetails.getNeuritis()+"','"+patientdetails.getRheumatism()+"','"+patientdetails.getDiabetes()+"','"+patientdetails.getArthritis()+"','"+patientdetails.getVenereal()+"','"+patientdetails.getBackaches()+"','"+patientdetails.getLiver()+"','"+patientdetails.getKidney()+"','"+patientdetails.getThyroid()+"','"+patientdetails.getAlchoholism()+"','"+patientdetails.getHepatitis()+"','"+patientdetails.getMental()+"','"+patientdetails.getHigh()+"','"+patientdetails.getDigestive()+"','"+patientdetails.getHeart()+"','"+patientdetails.getOther()+"','"+patientdetails.getIfother()+"','"+patientdetails.getIllness()+"','"+patientdetails.getDates()+"','"+patientdetails.getMedications()+"','"+patientdetails.getDrink()+"','"+patientdetails.getSmoke()+"','"+patientdetails.getDrugs()+"','"+patientdetails.getDiet()+"','"+patientdetails.getExercise()+"','"+patientdetails.getHazardous()+"','"+patientdetails.getHazardousyes()+"','"+patientdetails.getFemale()+"','"+patientdetails.getDr()+"','"+patientdetails.getPatient()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
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
			resultSet = statement.executeQuery("select * from Patient_Details");
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
			    	    resultSet.getString("Date_Of_Accident"),
			    	    resultSet.getString("Accident_Reported"),
			    	    resultSet.getString("When"),
			    	    resultSet.getString("Where"),
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
			    	    resultSet.getString("Polio1"),
			    	    resultSet.getString("Multiple"),
			    	    resultSet.getString("HIV"),
			    	    resultSet.getString("Sinus"),
			    	    resultSet.getString("Asthma"),
			    	    resultSet.getString("German"),
			    	    resultSet.getString("Nervousness"),
			    	    resultSet.getString("Numbness"),
			    	    resultSet.getString("Convulsions"),
			    	    resultSet.getString("Epilepsy"),
			    	    resultSet.getString("Concussion"),
			    	    resultSet.getString("Neuritis"),
			    	    resultSet.getString("Rheumatism"),
			    	    resultSet.getString("Diabetes"),
			    	    resultSet.getString("Arthritis"),
			    	    resultSet.getString("Venereal"),
			    	    resultSet.getString("Backaches"),
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
