package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class MedicalRecords
{
	@NotEmpty
	private String name;
	@NotEmpty
	private String medicalinformation;
	@NotEmpty
	private String patientsignature;


	public MedicalRecords()
	{
		
	}
	
	public MedicalRecords(String name,
			String medicalinformation,
			String patientsignature
			
			)
	{
	this.name=name;
	this.medicalinformation=medicalinformation;
	this.patientsignature=patientsignature;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMedicalinformation() {
		return medicalinformation;
	}

	public void setMedicalinformation(String medicalinformation) {
		this.medicalinformation = medicalinformation;
	}

	public String getPatientsignature() {
		return patientsignature;
	}

	public void setPatientsignature(String patientsignature) {
		this.patientsignature = patientsignature;
	}
	
	
}