package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;


public class PatientDetails
{
private String Patient_id;


private String Name;

private String symptom_ajax;

private String username;

private String user;

private String Date;

private String StreetAddress;

private String City;

private String State;


private String ZipCode;


private String Homephone;

/*@Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$",message="Please Enetr a valid mail id")*/

private String Emailid;

/*@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")*/
private String MobileNumber;

private String DateOfBirth;

/*@Pattern(regexp="(^$|[0-9-]{11})",message="Not a valid Social Security number")*/
private String SocialSecurityNumber;
private String Gender;

private String MaritalStatus;

private String Areyou;
private String Student;

private String EmployerName;


private String Occupation;

private String EmployerAddress;
/*
@Pattern(regexp="(^$|[0-9]{10})",message="Not a valid Mobile number")*/

/*@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")*/
private String Workphone;

private String zip;

private String EmployerCity;


private String Estate;

private String Ezip;

private String SpousesName;

private String SpousesEmp;

/*@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")*/
private String Spousesph;

private String Name_friend;

/*@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")*/
private String Phone_friend;

private String Chiropratic_care;

private String Symptom_Accident;

private String Type_Of_Accident;
private String accident;

private String Date_Of_Accident;
private String Accident_Reported;

private String when1;

private String where1;
private String Attorney_accident;

private String retain;

private String record;

private String phyname;

//@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")
private String phyphone;

private String car11;
private String xray;

private String treat;

private String NameOfAttorney;


/*@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")*/
private String Phone_Number;

private String Fault_accident;

private String claim_open;

private String Insurance;

/*@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")*/
private String Insurance_phone;

private String Name_auto;

/*@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")*/
private String Phone_auto;


private String Policy;

private String Name_health;

/*@Pattern(regexp="(^$|[0-9-()]{13})",message="Not a valid Mobile number")*/
private String Health_phone;

private String Prev_accident;

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

private String Illness;

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

private String Dr;

private String Patient;

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
public String getSymptom_ajax() {
	return symptom_ajax;
}
public void setSymptom_ajax(String symptom_ajax) {
	this.symptom_ajax = symptom_ajax;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
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
public String getZip() {
	return zip;
}
public void setZip(String zip) {
	this.zip = zip;
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
public String getRetain() {
	return retain;
}
public void setRetain(String retain) {
	this.retain = retain;
}
public String getRecord() {
	return record;
}
public void setRecord(String record) {
	this.record = record;
}
public String getPhyname() {
	return phyname;
}
public void setPhyname(String phyname) {
	this.phyname = phyname;
}
public String getPhyphone() {
	return phyphone;
}
public void setPhyphone(String phyphone) {
	this.phyphone = phyphone;
}


public String getCar11() {
	return car11;
}
public void setCar11(String car11) {
	this.car11 = car11;
}
public String getXray() {
	return xray;
}
public void setXray(String xray) {
	this.xray = xray;
}
public String getTreat() {
	return treat;
}
public void setTreat(String treat) {
	this.treat = treat;
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

public String getClaim_open() {
	return claim_open;
}
public void setClaim_open(String claim_open) {
	this.claim_open = claim_open;
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
public PatientDetails() {
	super();
}
public PatientDetails(String patient_id, String name, String username,
		String date, String streetAddress, String city, String state,
		String zipCode, String homephone, String emailid, String mobileNumber,
		String dateOfBirth, String socialSecurityNumber, String gender,
		String maritalStatus, String areyou, String student,
		String employerName, String occupation, String employerAddress,
		String workphone, String zip, String employerCity, String estate,
		String ezip, String spousesName, String spousesEmp, String spousesph,
		String name_friend, String phone_friend, String chiropratic_care,
		String symptom_Accident, String type_Of_Accident, String accident,
		String date_Of_Accident, String accident_Reported, String when1,
		String where1, String attorney_accident, String retain, String record,
		String phyname, String phyphone, String car11,String xray, String treat,
		String nameOfAttorney, String phone_Number, String fault_accident,String claim_open,
		String insurance, String insurance_phone, String name_auto,
		String phone_auto, String policy, String name_health,
		String health_phone, String prev_accident, String prev_When,
		String anemia, String muscular, String rheumatic, String allergies,
		String cancer, String polio1, String multiple, String scarlet,
		String hIV, String sinus, String asthma, String german,
		String nervousness, String numbness, String convulsions,
		String epilepsy, String concussion, String dizziness, String neuritis,
		String rheumatism, String diabetes, String arthritis, String venereal,
		String backaches, String tuberculosis, String liver, String kidney,
		String thyroid, String alchoholism, String hepatitis, String mental,
		String high, String digestive, String heart, String other,
		String ifother, String illness, String dates, String medications,
		String drink, String smoke, String drugs, String diet, String exercise,
		String hazardous, String hazardousyes, String female, String dr,
		String patient) {
	super();
	Patient_id = patient_id;
	Name = name;
	this.username = username;
	Date = date;
	StreetAddress = streetAddress;
	City = city;
	State = state;
	ZipCode = zipCode;
	Homephone = homephone;
	Emailid = emailid;
	MobileNumber = mobileNumber;
	DateOfBirth = dateOfBirth;
	SocialSecurityNumber = socialSecurityNumber;
	Gender = gender;
	MaritalStatus = maritalStatus;
	Areyou = areyou;
	Student = student;
	EmployerName = employerName;
	Occupation = occupation;
	EmployerAddress = employerAddress;
	Workphone = workphone;
	this.zip = zip;
	EmployerCity = employerCity;
	Estate = estate;
	Ezip = ezip;
	SpousesName = spousesName;
	SpousesEmp = spousesEmp;
	Spousesph = spousesph;
	Name_friend = name_friend;
	Phone_friend = phone_friend;
	Chiropratic_care = chiropratic_care;
	Symptom_Accident = symptom_Accident;
	Type_Of_Accident = type_Of_Accident;
	this.accident = accident;
	Date_Of_Accident = date_Of_Accident;
	Accident_Reported = accident_Reported;
	this.when1 = when1;
	this.where1 = where1;
	Attorney_accident = attorney_accident;
	this.retain = retain;
	this.record = record;
	this.phyname = phyname;
	this.phyphone = phyphone;
	this.car11=car11;
	this.xray = xray;
	this.treat = treat;
	NameOfAttorney = nameOfAttorney;
	Phone_Number = phone_Number;
	Fault_accident = fault_accident;
	this.claim_open =claim_open;
	Insurance = insurance;
	Insurance_phone = insurance_phone;
	Name_auto = name_auto;
	Phone_auto = phone_auto;
	Policy = policy;
	Name_health = name_health;
	Health_phone = health_phone;
	Prev_accident = prev_accident;
	Prev_When = prev_When;
	Anemia = anemia;
	Muscular = muscular;
	Rheumatic = rheumatic;
	Allergies = allergies;
	Cancer = cancer;
	Polio1 = polio1;
	Multiple = multiple;
	Scarlet = scarlet;
	HIV = hIV;
	Sinus = sinus;
	Asthma = asthma;
	German = german;
	Nervousness = nervousness;
	Numbness = numbness;
	Convulsions = convulsions;
	Epilepsy = epilepsy;
	Concussion = concussion;
	Dizziness = dizziness;
	Neuritis = neuritis;
	Rheumatism = rheumatism;
	Diabetes = diabetes;
	Arthritis = arthritis;
	Venereal = venereal;
	Backaches = backaches;
	Tuberculosis = tuberculosis;
	Liver = liver;
	Kidney = kidney;
	Thyroid = thyroid;
	Alchoholism = alchoholism;
	Hepatitis = hepatitis;
	Mental = mental;
	High = high;
	Digestive = digestive;
	Heart = heart;
	Other = other;
	Ifother = ifother;
	Illness = illness;
	Dates = dates;
	Medications = medications;
	Drink = drink;
	Smoke = smoke;
	Drugs = drugs;
	Diet = diet;
	Exercise = exercise;
	Hazardous = hazardous;
	Hazardousyes = hazardousyes;
	Female = female;
	Dr = dr;
	Patient = patient;
}


}