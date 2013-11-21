package bephit.forms;

import java.util.List;

import bephit.model.screeningAuthz;

public class ScreeningAuthzForm
{
	private List<screeningAuthz> ScreeningDetails;
	
	public List<screeningAuthz> getScreeningDetails() {
		return ScreeningDetails;
	}
	public void setScreeningDetails(List<screeningAuthz> screeningDetails) {
		this.ScreeningDetails = screeningDetails;
	}

}
