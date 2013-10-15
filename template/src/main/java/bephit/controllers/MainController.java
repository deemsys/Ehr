package bephit.controllers;
 
 

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import bephit.dao.AssignmentDAO;
import bephit.dao.HippaDAO;
import bephit.dao.AutoaccidentDAO;
import bephit.dao.MainDAO;
import bephit.dao.MedicalDAO;
import bephit.dao.PatientDAO;
import bephit.dao.WorkaccidentDAO;
import bephit.forms.AutoaccidentForm;
import bephit.dao.ScreenDAO;
import bephit.dao.TreatDAO;
import bephit.dao.TreatMinorDAO;
import bephit.forms.AssignmentDetailsForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.MedicalRecordsForm;
import bephit.forms.ParticipantsDetailsForm;
import bephit.forms.PatientDetailsForm;
import bephit.forms.ScreeningAuthzForm;
import bephit.forms.TreatDetailsForm;
import bephit.forms.TreatMinorDetailsForm;
import bephit.model.MedicalRecords;
import bephit.model.PatientDetails;
import bephit.model.TreatMinor;
import bephit.model.UserProfile;
import bephit.forms.WorkaccidentForm;
import bephit.model.*;

 
 
@Controller
@SessionAttributes
public class MainController {
	
	@Autowired  
	MainDAO mainDAO; 
	
	@Autowired  
	AutoaccidentDAO autoDAO;
	
	@Autowired
	WorkaccidentDAO workDAO;
	
	
	@Autowired
	PatientDAO patientDAO;
	
	
	
	@Autowired
	AssignmentDAO assignmentDAO;
	
	@Autowired
	TreatDAO treatDAO;
	
	@Autowired
	TreatMinorDAO minorDAO;
	
	@Autowired
	MedicalDAO medicalDAO;
	
	@Autowired
	ScreenDAO screenDAO;
	
	@Autowired
	HippaDAO hippaDAO;
 
	@RequestMapping(value={"/", "/welcome"}, method = RequestMethod.GET)
	public String printWelcome(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		
		 PatientDetailsForm patientdetailsform= new PatientDetailsForm();
			patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientdetailsform);
        model.addAttribute("currentpage",1);      
        
        model.addAttribute("button","viewall");
		return "dashboard";
 
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
 
	}
	@RequestMapping(value="/autoaccident", method = RequestMethod.GET)
	public String autoaccident(ModelMap model) {
		
		return "autoaccident";
 
	}
	@RequestMapping(value="/autoaccident", method = RequestMethod.POST)
	public String insert_autoaccident(@ModelAttribute("Autoaccident")  Autoaccident autoaccident,ModelMap model) {
		model.put("Autoaccident", autoaccident);
		model.addAttribute("AutoaccidentForm",autoaccident);
    	int a=autoDAO.setAutoaccident(autoaccident);
		AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
		autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
		model.addAttribute("AutoaccidentForm",autoaccidentForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "autoaccident";
 
	}
	@RequestMapping(value="/workaccident", method = RequestMethod.GET)
	public String workaccident(ModelMap model) {
		
		return "workaccident";
 
	}
	
	@RequestMapping(value="/workaccident", method = RequestMethod.POST)
	public String insert_workaccident(@ModelAttribute("Workaccident")  Workaccident workaccident,ModelMap model) {
		model.put("Workaccident", workaccident);
		model.addAttribute("WorkaccidentForm",workaccident);
    	int b =workDAO.setWorkaccident(workaccident);
		WorkaccidentForm workaccidentForm= new WorkaccidentForm();
		workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
		model.addAttribute("WorkaccidentForm",workaccidentForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "workaccident";
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

	@RequestMapping(value="/Assignment",method=RequestMethod.GET)
	public String Assignment(ModelMap model)
	{
		return "Assignment";
	}
	
	@RequestMapping(value="/treatform",method=RequestMethod.GET)
	public String treatform(ModelMap model)
	{
		return "treatform";
	}
	@RequestMapping(value="/treatminor",method=RequestMethod.GET)
	public String treatminor(ModelMap model)
	{
		return "treatminor";
	}
	
	
	@RequestMapping(value="/medicalrecords",method=RequestMethod.GET)
	public String medicalrecords(ModelMap model)
	{
		return "medicalrecords";
	}
	
	@RequestMapping(value="/screeningAuthz",method=RequestMethod.GET)
	public String screeningAuthz(ModelMap model)
	{
		return "screeningAuthz";
	}
	
	@RequestMapping(value="/Hippaprivacy",method=RequestMethod.GET)
	public String Hippaprivacy(ModelMap model)
	{
		return "Hippaprivacy";
	}
	
	
	
	@RequestMapping(value="/viewpatient", method=RequestMethod.GET)
	public String viewPatient(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		System.out.println(patientdetailsform);		
        model.addAttribute("patientdetailsform", patientdetailsform);
		return "viewpatient";
	}
	
	//view screening
	
	@RequestMapping(value="/viewscreen", method=RequestMethod.GET)
	public String viewscreen(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		 ScreeningAuthzForm screeningauthzform = new ScreeningAuthzForm();
		screeningauthzform.setScreeningDetails(screenDAO.getScreeningDetails());
        model.addAttribute("ScreeningAuthzForm", screeningauthzform);
		return "viewscreen";
	}
	
	
	//validation
	
	@RequestMapping(value="/Assignment", method = RequestMethod.POST)
	public String insertassignmentDetails(@ModelAttribute("Assignment") @Valid Assignment assignmentdetails,BindingResult result,ModelMap model) {
		
				
			if (result.hasErrors())
			{
				AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
				assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
				model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
				model.addAttribute("success","true");
				return "Assignment";
			}
				
		model.addAttribute("AssignmentDetailsForm",assignmentdetails);
		int a=assignmentDAO.setAssignmentDetails(assignmentdetails);
         AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
		assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
		model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);

		System.out.println("assignment");
	    
		return "Assignment";
 
	}
	
	@RequestMapping(value="/screeningAuthz", method=RequestMethod.POST)
	public String AddscreeningDetails(@ModelAttribute("screeningAuthz") @Valid screeningAuthz screeningdetails,
			BindingResult result,ModelMap model) 
	{		
		if (result.hasErrors())
		{
			ScreeningAuthzForm screeningauthzform= new ScreeningAuthzForm();
			screeningauthzform.setScreeningDetails(screenDAO.getScreeningDetails());
			model.addAttribute("ScreeningAuthzForm",screeningauthzform);
			model.addAttribute("success","true");
			return "screeningAuthz";
	    }
		
		//Add function
		model.addAttribute("ScreeningAuthzForm",screeningdetails);
		int a=screenDAO.setScreeningDetails(screeningdetails);
        ScreeningAuthzForm screeningauthzform= new ScreeningAuthzForm();
		screeningauthzform.setScreeningDetails(screenDAO.getScreeningDetails());
		model.addAttribute("ScreeningAuthzForm",screeningauthzform);

		System.out.println("Screening");
		
		//Show view page
		 return "screeningAuthz";
	}
	
	
	
	
	@RequestMapping(value="/Hippaprivacy", method = RequestMethod.POST)
	public String inserthippaDetails(@ModelAttribute("HippaPrivacy") @Valid HippaPrivacy privacydetails,BindingResult result,ModelMap model) 
		{		
			if (result.hasErrors())
			{
				HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
				hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
				model.addAttribute("HippaPrivacyForm",hippaprivacyform);
				model.addAttribute("success","true");
				return "Hippaprivacy";
			}

		
		model.addAttribute("HippaPrivacyForm",privacydetails);
		int a=hippaDAO.setPrivacyDetails(privacydetails);
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);

		System.out.println("Hippa");
	    
		return "Hippaprivacy";
		}

	
	@RequestMapping(value="/medicalrecords", method = RequestMethod.POST)
	public String insertmedicalDetails(@ModelAttribute("MedicalRecords") @Valid MedicalRecords medicaldetails,BindingResult result,
			ModelMap model) 
		{		
			if (result.hasErrors())
			{
				MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
				medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
				model.addAttribute("MedicalRecordsForm",medicalrecordsform);
				model.addAttribute("success","true");
				return "medicalrecords";

			}
		
		model.addAttribute("MedicalRecordsForm",medicaldetails);
		int a=medicalDAO.setMedicalDetails(medicaldetails);
        MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);

		System.out.println("MedicalRecords");
	    
		return "medicalrecords";
 
	}
	
	@RequestMapping(value="/treatform", method = RequestMethod.POST)
	public String inserttreatDetails(@ModelAttribute("Treatform") @Valid Treatform treatdetails,BindingResult result,
			ModelMap model) {
		if (result.hasErrors())
		{
			TreatDetailsForm treatdetailsform= new TreatDetailsForm();
			treatdetailsform.setTreatDetails(treatDAO.getTreatDetails());
			model.addAttribute("TreatDetailsForm",treatdetailsform);
			model.addAttribute("success","true");
			return "treatform";
		}
		
		model.addAttribute("TreatDetailsForm",treatdetails);
		int a=treatDAO.setTreatDetails(treatdetails);
         TreatDetailsForm treatdetailsform= new TreatDetailsForm();
		treatdetailsform.setTreatDetails(treatDAO.getTreatDetails());
		model.addAttribute("TreatDetailsForm",treatdetailsform);

		System.out.println("treat");
	    
		return "treatform";
 
	}
	
	
	@RequestMapping(value="/treatminor", method = RequestMethod.POST)
	public String insertminorDetails(@ModelAttribute("TreatMinor") @Valid TreatMinor minordetails,BindingResult result,ModelMap model) {
		if (result.hasErrors())
		{
			TreatMinorDetailsForm treatminordetailsform= new TreatMinorDetailsForm();
			treatminordetailsform.setMinorDetails(minorDAO.getMinorDetails());
			model.addAttribute("TreatMinorDetailsForm",treatminordetailsform);
			model.addAttribute("success","true");
			return "treatminor";
		}
			
		model.addAttribute("TreatMinorDetailsForm",minordetails);
		int a=minorDAO.setMinorDetails(minordetails);
         TreatMinorDetailsForm treatminordetailsform= new TreatMinorDetailsForm();
		treatminordetailsform.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("TreatMinorDetailsForm",treatminordetailsform);

		System.out.println("treatminor");
	    
		return "treatminor";
 
	}
	
	@RequestMapping(value="/patientDetails", method = RequestMethod.POST)
	public String insertpatientDetails(@ModelAttribute("PatientDetails") @Valid PatientDetails patientdetails,BindingResult result,ModelMap model) {
		if (result.hasErrors())
		{
			PatientDetailsForm patientdetailsform= new PatientDetailsForm();
			patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
			model.addAttribute("PatientDetailsForm",patientdetailsform);
			model.addAttribute("success","true");
			return "patientDetails";

		}
		
		model.addAttribute("PatientDetailsForm",patientdetails);
		int a=patientDAO.setPatientDetails(patientdetails);
         PatientDetailsForm patientdetailsform= new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		model.addAttribute("PatientDetailsForm",patientdetailsform);

		System.out.println("patientdetails");
	    
		return "patientDetails";
 
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