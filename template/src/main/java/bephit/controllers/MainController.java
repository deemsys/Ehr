package bephit.controllers;
 
 

import java.security.Principal;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import bephit.dao.MainDAO;
import bephit.dao.PatientDAO;
import bephit.forms.ParticipantsDetailsForm;
import bephit.forms.PatientDetailsForm;
import bephit.model.PatientDetails;
import bephit.model.UserProfile;


 
 
@Controller
@SessionAttributes
public class MainController {
	
	@Autowired  
	MainDAO mainDAO; 
	
	@Autowired
	PatientDAO patientDAO;
 
	@RequestMapping(value={"/", "/welcome"}, method = RequestMethod.GET)
	public String printWelcome(ModelMap model, Principal principal ) {
		
		ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
        model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		
		return "dashboard";
 
	}
	
	
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
 
	}
	
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
		model.addAttribute("error", "true");
		return "login";
 
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "login";
 
	}
	
	@RequestMapping(value="/patientDetails",method=RequestMethod.GET)
	public String patientDetails(ModelMap model)
	{
		return "patientDetails";
	}
	
	
    @RequestMapping(value="/presentComplaint",method=RequestMethod.GET)
	public String presentComplaint(ModelMap model)
	{
		return "presentComplaint";
	}
	@RequestMapping(value="/patientDetails", method = RequestMethod.POST)
	public String insertpatientDetails(@ModelAttribute("PatientDetails") PatientDetails patientdetails,ModelMap model) {
		model.put("PatientDetails", patientdetails);
		model.addAttribute("PatientDetailsForm",patientdetails);
		int a=patientDAO.setPatientDetails(patientdetails);
         PatientDetailsForm patientdetailsform= new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		model.addAttribute("PatientDetailsForm",patientdetailsform);

		System.out.println("patientdetails");
	    
		return "presentComplaint";
 
	}
	
	
	@RequestMapping(value="/createuser", method=RequestMethod.GET)
	public String createSpitterProfile(Model model) {
		model.addAttribute(new UserProfile());
	return "edit";
	}
	
	@RequestMapping(value="/submituser", method=RequestMethod.POST)
	public String addUserProfileFromForm(UserProfile userProfile) {
		
		System.out.println("Save User" + userProfile.getFullName());
		return "/welcome";
	}
	
	@RequestMapping(value="/showaddparticipants", method=RequestMethod.GET)
	public String showAddParticipants(ModelMap model) {
		//model.addAttribute(new UserProfile());
		return "addparticipants";
	}
	@RequestMapping(value="/viewparticipants", method=RequestMethod.GET)
	public String viewParticipants(ModelMap model) {
		
		return "viewparticipants";
	}
	@RequestMapping(value="/showaddparticipantgroups", method=RequestMethod.GET)
	public String showAddParticipantGroups(ModelMap model) {
		
		return "addparticipantgroups";
	}
	@RequestMapping(value="/viewparticipantgroups", method=RequestMethod.GET)
	public String viewParticipantGroups(ModelMap model) {
		
		return "viewparticipantgroups";
	}
	
	@RequestMapping(value="/showaddadminuser", method=RequestMethod.GET)
	public String showAddadminUser(ModelMap model) {
		
		return "addadminuser";
	}
	@RequestMapping(value="/viewadminuser", method=RequestMethod.GET)
	public String viewAdminUser(ModelMap model) {
		
		return "viewadminuser";
	}
	
	@RequestMapping(value="/activityofadmin", method=RequestMethod.GET)
	public String activityOfAdmin(ModelMap model) {
		
		return "activityofadmin";
	}
	
	@RequestMapping(value="/textmsgsettings", method=RequestMethod.GET)
	public String textMsgSettings(ModelMap model) {
		
		return "textmsg";
	}
  }