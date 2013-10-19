package bephit.forms;

import java.util.List;

import bephit.model.PatientDetails;

public class PatientDetailsForm
{
	private List<PatientDetails> PatientDetails;
	
	public List<PatientDetails> getPatientDetails() {
		return PatientDetails;
	}
	public void setPatientDetails(List<PatientDetails> patientDetails) {
		this.PatientDetails=patientDetails;
	}
}
