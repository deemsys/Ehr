package bephit.forms;

import java.util.List;

import bephit.model.PatientDetails;

public class PatientDetailsForm
{
	private List<PatientDetails> patientDetails;
	
	public List<PatientDetails> getPatientDetails() {
		return patientDetails;
	}
	public void setPatientDetails(List<PatientDetails> patientDetails) {
		this.patientDetails=patientDetails;
	}
}
