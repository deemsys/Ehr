package bephit.forms;

import java.util.List;

import bephit.model.MedicalRecords;

public class MedicalRecordsForm
{
	private List<MedicalRecords> MedicalDetails;
	{
		
	}
	public List<MedicalRecords> getMedicalDetails() {
		return MedicalDetails;
	}
	public void setMedicalDetails(List<MedicalRecords> medicalDetails) {
		this.MedicalDetails = medicalDetails;
	}

}
