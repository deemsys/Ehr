package bephit.forms;
import java.util.ArrayList;
import java.util.List;

import bephit.model.*;
public class SymptomForm
{
	List <Symptom> symptomdetails=new ArrayList<Symptom>();

	public List<Symptom> getSymptomdetails() {
		return symptomdetails;
	}

	public void setSymptomdetails(List<Symptom> symptomdetails) {
		this.symptomdetails = symptomdetails;
	}
	
}