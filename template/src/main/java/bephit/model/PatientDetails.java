package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;


public class PatientDetails
{
private String Patient_id;









public String getPatient_id() {
	return Patient_id;
}








public void setPatient_id(String patient_id) {
	Patient_id = patient_id;
}




@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String Name;
@NotEmpty
private String Date;
@NotEmpty
private String StreetAddress;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String City;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String State;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{10})",message="Should be a number")
private String ZipCode;
@NotEmpty
private String Homephone;
@NotEmpty
private String Pager;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{10})",message="Should be a number")
private String MobileNumber;
@NotEmpty
private String DateOfBirth;
@NotEmpty
@Pattern(regexp="(^$|[0-9]{10})",message="Should be a number")
private String SocialSecurityNumber;

private String Gender;

private String MaritalStatus;

private String Areyou;
private String Student;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String EmployerName;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String Occupation;
@NotEmpty
private String EmployerAddress;
@NotEmpty
private String Workphone;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String EmployerCity;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String Estate;
@NotEmpty
private String Ezip;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String SpousesName;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String SpousesEmp;
@NotEmpty
private String Spousesph;
@NotEmpty
private String Name_phone;

private String Chiropratic_care;
@NotEmpty
private String Symptoms;
@NotEmpty
private String Symptom1;
@NotEmpty
private String Symptom2;

private String Painscale;
private String Painscale1;
private String Painscale2;

private String Symptom_Accident;

private String Type_Of_Accident;
@NotEmpty
private String Date_Of_Accident;
private String Accident_Reported;
@NotEmpty
private String When;
@NotEmpty
private String Where;
private String Attorney_accident;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String NameOfAttorney;
@NotEmpty
private String Phone_Number;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String Fault_accident;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String Insurance;
@NotEmpty
private String Insurance_phone;
@NotEmpty
private String Name_ph;


@NotEmpty
private String Policy;
@NotEmpty
private String Name_health;
@NotEmpty
private String Health_phone;

private String Prev_accident;
@NotEmpty
private String Prev_When;
private String Anemia;
private String Muscular;
private String Rheumatic;
private String Allergies;
private String Polio1;
private String Multiple;
private String HIV;
private String Sinus;
private String Asthma;
private String German;
private String Nervousness;
private String Numbness;
private String Convulsions;
private String Epilepsy;
private String Concussion;
private String Neuritis;
private String Rheumatism;
private String Diabetes;
private String Arthritis;
private String Venereal;
private String Backaches;
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
@NotEmpty
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
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String Dr;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String Patient;
@NotEmpty
@Pattern(regexp="(/^[a-zA-Z ]*$/)",message="Should be a alphabets")
private String Sign;















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








public String getPager() {
	return Pager;
}








public void setPager(String pager) {
	Pager = pager;
}















public String getDateOfBirth() {
	return DateOfBirth;
}








public String getMobileNumber() {
	return MobileNumber;
}








public void setMobileNumber(String mobileNumber) {
	MobileNumber = mobileNumber;
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








public String getName_phone() {
	return Name_phone;
}








public void setName_phone(String name_phone) {
	Name_phone = name_phone;
}








public String getChiropratic_care() {
	return Chiropratic_care;
}








public void setChiropratic_care(String chiropratic_care) {
	Chiropratic_care = chiropratic_care;
}








public String getSymptoms() {
	return Symptoms;
}








public void setSymptoms(String symptoms) {
	Symptoms = symptoms;
}








public String getSymptom1() {
	return Symptom1;
}








public void setSymptom1(String symptom1) {
	Symptom1 = symptom1;
}








public String getSymptom2() {
	return Symptom2;
}








public void setSymptom2(String symptom2) {
	Symptom2 = symptom2;
}








public String getPainscale() {
	return Painscale;
}








public void setPainscale(String painscale) {
	Painscale = painscale;
}








public String getPainscale1() {
	return Painscale1;
}








public void setPainscale1(String painscale1) {
	Painscale1 = painscale1;
}








public String getPainscale2() {
	return Painscale2;
}








public void setPainscale2(String painscale2) {
	Painscale2 = painscale2;
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








public String getWhen() {
	return When;
}








public void setWhen(String when) {
	When = when;
}








public String getWhere() {
	return Where;
}








public void setWhere(String where) {
	Where = where;
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
	this.Phone_Number = phone_Number;
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








public String getName_ph() {
	return Name_ph;
}








public void setName_ph(String name_ph) {
	Name_ph = name_ph;
}








public String getPolicy() {
	return Policy;
}








public void setPolicy(String policy) {
	this.Policy = policy;
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
	this.Prev_accident = prev_accident;
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
	this.Anemia = anemia;
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








public String getIllness() {
	return Illness;
}








public void setIllness(String illness) {
	this.Illness = illness;
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
	this.Medications = medications;
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
	this.Hazardous = hazardous;
}








public String getHazardousyes() {
	return Hazardousyes;
}








public void setHazardousyes(String hazardousyes) {
	this.Hazardousyes = hazardousyes;
}








public String getFemale() {
	return Female;
}








public void setFemale(String female) {
	this.Female = female;
}








public String getDr() {
	return Dr;
}








public void setDr(String dr) {
	this.Dr = dr;
}








public String getPatient() {
	return Patient;
}








public void setPatient(String patient) {
	this.Patient = patient;
}








public String getSign() {
	return Sign;
}








public void setSign(String sign) {
	this.Sign = sign;
}



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
		String Pager,
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
		String Name_phone,
		String Chiropratic_care,
		String Symptoms,
		String Symptom1,
		String Symptom2,
		String Painscale,
		String Painscale1,
		String Painscale2,
		String Symptom_Accident,
		String Type_Of_Accident,
		String Date_Of_Accident,
		String Accident_Reported,
		String When,
		String Where,
		String Attorney_accident,
		String NameOfAttorney,
		String Phone_Number,
		String Fault_accident,
		String Insurance,
		String Insurance_phone,
		String Name_ph,
		String Policy,
		String Name_health,
		String Health_phone,
		String Prev_accident,
		String Prev_When,
		String Anemia,
		String Muscular,
		String Rheumatic,
		String Allergies,
		String Polio1,
		String Multiple,
		String HIV,
		String Sinus,
		String Asthma,
		String German,
		String Nervousness,
		String Numbness,
		String Convulsions,
		String Epilepsy,
		String Concussion,
		String Neuritis,
		String Rheumatism,
		String Diabetes,
		String Arthritis,
		String Venereal,
		String Backaches,
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
		String Patient,
		String Sign)
{
	this.Patient_id=Patient_id;
	this.Name=Name;
	this.Date=Date;
	this.StreetAddress=StreetAddress;
	this.City=City;
	this.State=State;
	this.ZipCode=ZipCode;
	this.Homephone=Homephone;
	this.Pager=Pager;
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
	this.Name_phone=Name_phone;
	this.Chiropratic_care=Chiropratic_care;
	this.Symptoms=Symptoms;
	this.Symptom1=Symptom1;
	this.Symptom2=Symptom2;
	this.Painscale=Painscale;
	this.Painscale1=Painscale1;
	this.Painscale2=Painscale2;
	this.Symptom_Accident=Symptom_Accident;
	this.Type_Of_Accident=Type_Of_Accident;
	this.Date_Of_Accident=Date_Of_Accident;
	this.Accident_Reported=Accident_Reported;
	this.When=When;
	this.Where=Where;
	this.Attorney_accident=Attorney_accident;
	this.NameOfAttorney=NameOfAttorney;
	this.Phone_Number=Phone_Number;
	this.Fault_accident=Fault_accident;
	this.Insurance=Insurance;
	this.Insurance_phone=Insurance_phone;
	this.Name_ph=Name_ph;
	this.Policy=Policy;
	this.Name_health=Name_health;
	this.Health_phone=Health_phone;
	this.Prev_accident=Prev_accident;
	this.Prev_When=Prev_When;
	this.Anemia=Anemia;
	this.Muscular=Muscular;
	this.Rheumatic=Rheumatic;
	this.Allergies=Allergies;
	this.Polio1=Polio1;
	this.Multiple=Multiple;
	this.HIV=HIV;
	this.Sinus=Sinus;
	this.Asthma=Asthma;
	this.German=German;
	this.Nervousness=Nervousness;
	this.Numbness=Numbness;
	this.Convulsions=Convulsions;
	this.Epilepsy=Epilepsy;
	this.Concussion=Concussion;
	this.Neuritis=Neuritis;
	this.Rheumatism=Rheumatism;
	this.Diabetes=Diabetes;
	this.Arthritis=Arthritis;
	this.Venereal=Venereal;
	this.Backaches=Backaches;
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
	this.Sign=Sign;
	
}








public String getAreyou() {
	return Areyou;
}








public void setAreyou(String areyou) {
	Areyou = areyou;
}








public String getIfother() {
	return Ifother;
}








public void setIfother(String ifother) {
	Ifother = ifother;
}
}
