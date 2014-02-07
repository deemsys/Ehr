package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;


public class PatientDetails
{
private String Patient_id;

@NotEmpty
private String Name;

@NotEmpty
private String Date;
@NotEmpty
private String StreetAddress;
@NotEmpty
private String City;
@NotEmpty
private String State;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{6})",message="Not a valid Zip Code")
private String ZipCode;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{10})",message="Not a valid Mobile number")
private String Homephone;
@NotEmpty
@Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$",message="Please Enetr a valid mail id")

private String Emailid;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{10})",message="Not a valid Mobile number")
private String MobileNumber;
@NotEmpty
private String DateOfBirth;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{12})",message="Not a valid Social Security number")
private String SocialSecurityNumber;
private String Gender;

private String MaritalStatus;

private String Areyou;
private String Student;
@NotEmpty
private String EmployerName;

@NotEmpty
private String Occupation;
@NotEmpty
private String EmployerAddress;
/*
@Pattern(regexp="(^$|[0-9]{10})",message="Not a valid Mobile number")*/
@NotEmpty
private String Workphone;

@NotEmpty
private String EmployerCity;

@NotEmpty
private String Estate;
@NotEmpty
private String Ezip;
@NotEmpty
private String SpousesName;
@NotEmpty
private String SpousesEmp;
@NotEmpty
private String Spousesph;
@NotEmpty
private String Name_friend;
@NotEmpty
private String Phone_friend;

private String Chiropratic_care;

private String Symptom_Accident;

private String Type_Of_Accident;
private String accident;
@NotEmpty
private String Date_Of_Accident;
private String Accident_Reported;
@NotEmpty
private String when1;
@NotEmpty
private String where1;
private String Attorney_accident;
@NotEmpty

private String NameOfAttorney;
@NotEmpty

@Pattern(regexp="(^$|[0-9]{10})",message="Not a valid Mobile number")
private String Phone_Number;
@NotEmpty

private String Fault_accident;
@NotEmpty

private String Insurance;
@NotEmpty
private String Insurance_phone;
@NotEmpty
private String Name_auto;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{10})",message="Not a valid Mobile number")
private String Phone_auto;

@NotEmpty
private String Policy;
@NotEmpty
private String Name_health;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{10})",message="Not a valid Mobile number")
private String Health_phone;

private String Prev_accident;
@NotEmpty
private String Prev_When;
private String Anemia;
private String Muscular;
private String Rheumatic;
private String Allergies;
private String Cancer;
private String Polio1;
private String Multiple;
private String Scarlet;
private String HIV;
private String Sinus;
private String Asthma;
private String German;
private String Nervousness;
private String Numbness;
private String Convulsions;
private String Epilepsy;
private String Concussion;
private String Dizziness;
private String Neuritis;
private String Rheumatism;
private String Diabetes;
private String Arthritis;
private String Venereal;
private String Backaches;
private String Tuberculosis;
private String Liver;
private String Kidney;
private String Thyroid;
private String Alchoholism;
private String Hepatitis;
private String Mental;
private String High;
private String Digestive;
private String Heart;
private String Other;
private String Ifother;
@NotEmpty
private String Illness;
@NotEmpty
private String Dates;

private String Medications;
private String Drink;
private String Smoke;
private String Drugs;
private String Diet;
private String Exercise;
private String Hazardous;
private String Hazardousyes;
private String Female;
@NotEmpty
private String Dr;
@NotEmpty
private String Patient;
@NotEmpty





public PatientDetails()
{

}


public PatientDetails(String Patient_id,
		String Name,
		String Date,
		String StreetAddress,
		String City,
		String State,
		String ZipCode,
		String Homephone,
		String Emailid,
		String MobileNumber,
		String DateOfBirth,
		String SocialSecurityNumber,
		String Gender,
		String MaritalStatus,
		String Areyou,
		String Student,
		String EmployerName,
		String Occupation,
		String EmployerAddress,
		String Workphone,
		String EmployerCity,
		String Estate,
		String Ezip,
		String SpousesName,
		String SpousesEmp,
		String Spousesph,
		String Name_friend,
		String Phone_friend,
		String Chiropratic_care,
		String Symptom_Accident,
		String Type_Of_Accident,
		String accident,
		String Date_Of_Accident,
		String Accident_Reported,
		String when1,
		String where1,
		String Attorney_accident,
		String NameOfAttorney,
		String Phone_Number,
		String Fault_accident,
		String Insurance,
		String Insurance_phone,
		String Name_auto,
		String Phone_auto,
		String Policy,
		String Name_health,
		String Health_phone,
		String Prev_accident,
		String Prev_When,
		String Anemia,
		String Muscular,
		String Rheumatic,
		String Allergies,
		String Cancer,
		String Polio1,
		String Multiple,
		String Scarlet,
		String HIV,
		String Sinus,
		String Asthma,
		String German,
		String Nervousness,
		String Numbness,
		String Convulsions,
		String Epilepsy,
		String Concussion,
		String Dizziness,
		String Neuritis,
		String Rheumatism,
		String Diabetes,
		String Arthritis,
		String Venereal,
		String Backaches,
		String Tuberculosis,
		String Liver,
		String Kidney,
		String Thyroid,
		String Alchoholism,
		String Hepatitis,
		String Mental,
		String High,
		String Digestive,
		String Heart,
		String Other,
		String Ifother,
		String Illness,
		String Dates,
		String Medications,
		String Drink,
		String Smoke,
		String Drugs,
		String Diet,
		String Exercise,
		String Hazardous,
		String Hazardousyes,
		String Female,
		String Dr,
		String Patient
		)
{
	super();
	this.Patient_id=Patient_id;
	this.Name=Name;
	this.Date=Date;
	this.StreetAddress=StreetAddress;
	this.City=City;
	this.State=State;
	this.ZipCode=ZipCode;
	this.Homephone=Homephone;
	this.Emailid=Emailid;
	this.MobileNumber=MobileNumber;
	this.DateOfBirth=DateOfBirth;
	this.SocialSecurityNumber=SocialSecurityNumber;
	this.Gender=Gender;
	this.MaritalStatus=MaritalStatus;
	this.Areyou=Areyou;
	this.Student=Student;
	this.EmployerName=EmployerName;
	this.Occupation=Occupation;
	this.EmployerAddress=EmployerAddress;
	this.Workphone=Workphone;
	this.EmployerCity=EmployerCity;
	this.Estate=Estate;
	this.Ezip=Ezip;
	this.SpousesName=SpousesName;
	this.SpousesEmp=SpousesEmp;
	this.Spousesph=Spousesph;
	this.Name_friend=Name_friend;
	this.Phone_friend=Phone_friend;
	this.Chiropratic_care=Chiropratic_care;
	this.Symptom_Accident=Symptom_Accident;
	this.Type_Of_Accident=Type_Of_Accident;
	this.accident = accident;
	this.Date_Of_Accident=Date_Of_Accident;
	this.Accident_Reported=Accident_Reported;
	this.when1=when1;
	this.where1=where1;
	this.Attorney_accident=Attorney_accident;
	this.NameOfAttorney=NameOfAttorney;
	this.Phone_Number=Phone_Number;
	this.Fault_accident=Fault_accident;
	this.Insurance=Insurance;
	this.Insurance_phone=Insurance_phone;
	this.Name_auto=Name_auto;
	this.Phone_auto=Phone_auto;
	this.Policy=Policy;
	this.Name_health=Name_health;
	this.Health_phone=Health_phone;
	this.Prev_accident=Prev_accident;
	this.Prev_When=Prev_When;
	this.Anemia=Anemia;
	this.Muscular=Muscular;
	this.Rheumatic=Rheumatic;
	this.Allergies=Allergies;
	this.Cancer = Cancer;
	this.Polio1=Polio1;
	this.Multiple=Multiple;
	this.Scarlet = Scarlet;
	this.HIV=HIV;
	this.Sinus=Sinus;
	this.Asthma=Asthma;
	this.German=German;
	this.Nervousness=Nervousness;
	this.Numbness=Numbness;
	this.Convulsions=Convulsions;
	this.Epilepsy=Epilepsy;
	this.Concussion=Concussion;
	this.Dizziness = Dizziness;
	this.Neuritis=Neuritis;
	this.Rheumatism=Rheumatism;
	this.Diabetes=Diabetes;
	this.Arthritis=Arthritis;
	this.Venereal=Venereal;
	this.Backaches=Backaches;
	this.Tuberculosis = Tuberculosis;
	this.Liver=Liver;
	this.Kidney=Kidney;
	this.Thyroid=Thyroid;
	this.Alchoholism=Alchoholism;
	this.Hepatitis=Hepatitis;
	this.Mental=Mental;
	this.High=High;
	this.Digestive=Digestive;
	this.Heart=Heart;
	this.Other=Other;
	this.Ifother=Ifother;
	this.Illness=Illness;
	this.Dates=Dates;
	this.Medications=Medications;
	this.Drink=Drink;
	this.Smoke=Smoke;
	this.Drugs=Drugs;
	this.Diet=Diet;
	this.Exercise=Exercise;
	this.Hazardous=Hazardous;
	this.Hazardousyes=Hazardousyes;
	this.Female=Female;
	this.Dr=Dr;
	this.Patient=Patient;
	
	
}


public String getPatient_id() {
	return Patient_id;
}


public void setPatient_id(String patient_id) {
	Patient_id = patient_id;
}


public String getName() {
	return Name;
}


public void setName(String name) {
	Name = name;
}


public String getDate() {
	return Date;
}


public void setDate(String date) {
	Date = date;
}


public String getStreetAddress() {
	return StreetAddress;
}


public void setStreetAddress(String streetAddress) {
	StreetAddress = streetAddress;
}


public String getCity() {
	return City;
}


public void setCity(String city) {
	City = city;
}


public String getState() {
	return State;
}


public void setState(String state) {
	State = state;
}


public String getZipCode() {
	return ZipCode;
}


public void setZipCode(String zipCode) {
	ZipCode = zipCode;
}


public String getHomephone() {
	return Homephone;
}


public void setHomephone(String homephone) {
	Homephone = homephone;
}


public String getEmailid() {
	return Emailid;
}


public void setEmailid(String emailid) {
	Emailid = emailid;
}


public String getMobileNumber() {
	return MobileNumber;
}


public void setMobileNumber(String mobileNumber) {
	MobileNumber = mobileNumber;
}


public String getDateOfBirth() {
	return DateOfBirth;
}


public void setDateOfBirth(String dateOfBirth) {
	DateOfBirth = dateOfBirth;
}


public String getSocialSecurityNumber() {
	return SocialSecurityNumber;
}


public void setSocialSecurityNumber(String socialSecurityNumber) {
	SocialSecurityNumber = socialSecurityNumber;
}


public String getGender() {
	return Gender;
}


public void setGender(String gender) {
	Gender = gender;
}


public String getMaritalStatus() {
	return MaritalStatus;
}


public void setMaritalStatus(String maritalStatus) {
	MaritalStatus = maritalStatus;
}


public String getAreyou() {
	return Areyou;
}


public void setAreyou(String areyou) {
	Areyou = areyou;
}


public String getStudent() {
	return Student;
}


public void setStudent(String student) {
	Student = student;
}


public String getEmployerName() {
	return EmployerName;
}


public void setEmployerName(String employerName) {
	EmployerName = employerName;
}


public String getOccupation() {
	return Occupation;
}


public void setOccupation(String occupation) {
	Occupation = occupation;
}


public String getEmployerAddress() {
	return EmployerAddress;
}


public void setEmployerAddress(String employerAddress) {
	EmployerAddress = employerAddress;
}


public String getWorkphone() {
	return Workphone;
}


public void setWorkphone(String workphone) {
	Workphone = workphone;
}


public String getEmployerCity() {
	return EmployerCity;
}


public void setEmployerCity(String employerCity) {
	EmployerCity = employerCity;
}


public String getEstate() {
	return Estate;
}


public void setEstate(String estate) {
	Estate = estate;
}


public String getEzip() {
	return Ezip;
}


public void setEzip(String ezip) {
	Ezip = ezip;
}


public String getSpousesName() {
	return SpousesName;
}


public void setSpousesName(String spousesName) {
	SpousesName = spousesName;
}


public String getSpousesEmp() {
	return SpousesEmp;
}


public void setSpousesEmp(String spousesEmp) {
	SpousesEmp = spousesEmp;
}


public String getSpousesph() {
	return Spousesph;
}


public void setSpousesph(String spousesph) {
	Spousesph = spousesph;
}


public String getName_friend() {
	return Name_friend;
}


public void setName_friend(String name_friend) {
	Name_friend = name_friend;
}


public String getPhone_friend() {
	return Phone_friend;
}


public void setPhone_friend(String phone_friend) {
	Phone_friend = phone_friend;
}


public String getChiropratic_care() {
	return Chiropratic_care;
}


public void setChiropratic_care(String chiropratic_care) {
	Chiropratic_care = chiropratic_care;
}

public String getSymptom_Accident() {
	return Symptom_Accident;
}


public void setSymptom_Accident(String symptom_Accident) {
	Symptom_Accident = symptom_Accident;
}


public String getType_Of_Accident() {
	return Type_Of_Accident;
}


public void setType_Of_Accident(String type_Of_Accident) {
	Type_Of_Accident = type_Of_Accident;
}


public String getAccident() {
	return accident;
}


public void setAccident(String accident) {
	this.accident = accident;
}


public String getDate_Of_Accident() {
	return Date_Of_Accident;
}


public void setDate_Of_Accident(String date_Of_Accident) {
	Date_Of_Accident = date_Of_Accident;
}


public String getAccident_Reported() {
	return Accident_Reported;
}


public void setAccident_Reported(String accident_Reported) {
	Accident_Reported = accident_Reported;
}


public String getWhen1() {
	return when1;
}


public void setWhen1(String when1) {
	this.when1 = when1;
}


public String getWhere1() {
	return where1;
}


public void setWhere1(String where1) {
	this.where1 = where1;
}


public String getAttorney_accident() {
	return Attorney_accident;
}


public void setAttorney_accident(String attorney_accident) {
	Attorney_accident = attorney_accident;
}


public String getNameOfAttorney() {
	return NameOfAttorney;
}


public void setNameOfAttorney(String nameOfAttorney) {
	NameOfAttorney = nameOfAttorney;
}


public String getPhone_Number() {
	return Phone_Number;
}


public void setPhone_Number(String phone_Number) {
	Phone_Number = phone_Number;
}


public String getFault_accident() {
	return Fault_accident;
}


public void setFault_accident(String fault_accident) {
	Fault_accident = fault_accident;
}


public String getInsurance() {
	return Insurance;
}


public void setInsurance(String insurance) {
	Insurance = insurance;
}


public String getInsurance_phone() {
	return Insurance_phone;
}


public void setInsurance_phone(String insurance_phone) {
	Insurance_phone = insurance_phone;
}


public String getName_auto() {
	return Name_auto;
}


public void setName_auto(String name_auto) {
	Name_auto = name_auto;
}


public String getPhone_auto() {
	return Phone_auto;
}


public void setPhone_auto(String phone_auto) {
	Phone_auto = phone_auto;
}


public String getPolicy() {
	return Policy;
}


public void setPolicy(String policy) {
	Policy = policy;
}


public String getName_health() {
	return Name_health;
}


public void setName_health(String name_health) {
	Name_health = name_health;
}


public String getHealth_phone() {
	return Health_phone;
}


public void setHealth_phone(String health_phone) {
	Health_phone = health_phone;
}


public String getPrev_accident() {
	return Prev_accident;
}


public void setPrev_accident(String prev_accident) {
	Prev_accident = prev_accident;
}


public String getPrev_When() {
	return Prev_When;
}


public void setPrev_When(String prev_When) {
	Prev_When = prev_When;
}


public String getAnemia() {
	return Anemia;
}


public void setAnemia(String anemia) {
	Anemia = anemia;
}


public String getMuscular() {
	return Muscular;
}


public void setMuscular(String muscular) {
	Muscular = muscular;
}


public String getRheumatic() {
	return Rheumatic;
}


public void setRheumatic(String rheumatic) {
	Rheumatic = rheumatic;
}


public String getAllergies() {
	return Allergies;
}


public void setAllergies(String allergies) {
	Allergies = allergies;
}


public String getCancer() {
	return Cancer;
}


public void setCancer(String cancer) {
	Cancer = cancer;
}


public String getPolio1() {
	return Polio1;
}


public void setPolio1(String polio1) {
	Polio1 = polio1;
}


public String getMultiple() {
	return Multiple;
}


public void setMultiple(String multiple) {
	Multiple = multiple;
}


public String getScarlet() {
	return Scarlet;
}


public void setScarlet(String scarlet) {
	Scarlet = scarlet;
}


public String getHIV() {
	return HIV;
}


public void setHIV(String hIV) {
	HIV = hIV;
}


public String getSinus() {
	return Sinus;
}


public void setSinus(String sinus) {
	Sinus = sinus;
}


public String getAsthma() {
	return Asthma;
}


public void setAsthma(String asthma) {
	Asthma = asthma;
}


public String getGerman() {
	return German;
}


public void setGerman(String german) {
	German = german;
}


public String getNervousness() {
	return Nervousness;
}


public void setNervousness(String nervousness) {
	Nervousness = nervousness;
}


public String getNumbness() {
	return Numbness;
}


public void setNumbness(String numbness) {
	Numbness = numbness;
}


public String getConvulsions() {
	return Convulsions;
}


public void setConvulsions(String convulsions) {
	Convulsions = convulsions;
}


public String getEpilepsy() {
	return Epilepsy;
}


public void setEpilepsy(String epilepsy) {
	Epilepsy = epilepsy;
}


public String getConcussion() {
	return Concussion;
}


public void setConcussion(String concussion) {
	Concussion = concussion;
}


public String getDizziness() {
	return Dizziness;
}


public void setDizziness(String dizziness) {
	Dizziness = dizziness;
}


public String getNeuritis() {
	return Neuritis;
}


public void setNeuritis(String neuritis) {
	Neuritis = neuritis;
}


public String getRheumatism() {
	return Rheumatism;
}


public void setRheumatism(String rheumatism) {
	Rheumatism = rheumatism;
}


public String getDiabetes() {
	return Diabetes;
}


public void setDiabetes(String diabetes) {
	Diabetes = diabetes;
}


public String getArthritis() {
	return Arthritis;
}


public void setArthritis(String arthritis) {
	Arthritis = arthritis;
}


public String getVenereal() {
	return Venereal;
}


public void setVenereal(String venereal) {
	Venereal = venereal;
}


public String getBackaches() {
	return Backaches;
}


public void setBackaches(String backaches) {
	Backaches = backaches;
}


public String getTuberculosis() {
	return Tuberculosis;
}


public void setTuberculosis(String tuberculosis) {
	Tuberculosis = tuberculosis;
}


public String getLiver() {
	return Liver;
}


public void setLiver(String liver) {
	Liver = liver;
}


public String getKidney() {
	return Kidney;
}


public void setKidney(String kidney) {
	Kidney = kidney;
}


public String getThyroid() {
	return Thyroid;
}


public void setThyroid(String thyroid) {
	Thyroid = thyroid;
}


public String getAlchoholism() {
	return Alchoholism;
}


public void setAlchoholism(String alchoholism) {
	Alchoholism = alchoholism;
}


public String getHepatitis() {
	return Hepatitis;
}


public void setHepatitis(String hepatitis) {
	Hepatitis = hepatitis;
}


public String getMental() {
	return Mental;
}


public void setMental(String mental) {
	Mental = mental;
}


public String getHigh() {
	return High;
}


public void setHigh(String high) {
	High = high;
}


public String getDigestive() {
	return Digestive;
}


public void setDigestive(String digestive) {
	Digestive = digestive;
}


public String getHeart() {
	return Heart;
}


public void setHeart(String heart) {
	Heart = heart;
}


public String getOther() {
	return Other;
}


public void setOther(String other) {
	Other = other;
}


public String getIfother() {
	return Ifother;
}


public void setIfother(String ifother) {
	Ifother = ifother;
}


public String getIllness() {
	return Illness;
}


public void setIllness(String illness) {
	Illness = illness;
}


public String getDates() {
	return Dates;
}


public void setDates(String dates) {
	Dates = dates;
}


public String getMedications() {
	return Medications;
}


public void setMedications(String medications) {
	Medications = medications;
}


public String getDrink() {
	return Drink;
}


public void setDrink(String drink) {
	Drink = drink;
}


public String getSmoke() {
	return Smoke;
}


public void setSmoke(String smoke) {
	Smoke = smoke;
}


public String getDrugs() {
	return Drugs;
}


public void setDrugs(String drugs) {
	Drugs = drugs;
}


public String getDiet() {
	return Diet;
}


public void setDiet(String diet) {
	Diet = diet;
}


public String getExercise() {
	return Exercise;
}


public void setExercise(String exercise) {
	Exercise = exercise;
}


public String getHazardous() {
	return Hazardous;
}


public void setHazardous(String hazardous) {
	Hazardous = hazardous;
}


public String getHazardousyes() {
	return Hazardousyes;
}


public void setHazardousyes(String hazardousyes) {
	Hazardousyes = hazardousyes;
}


public String getFemale() {
	return Female;
}


public void setFemale(String female) {
	Female = female;
}


public String getDr() {
	return Dr;
}


public void setDr(String dr) {
	Dr = dr;
}


public String getPatient() {
	return Patient;
}


public void setPatient(String patient) {
	Patient = patient;
}

}
