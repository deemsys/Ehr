package bephit.controllers;
 
 

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import bephit.dao.AssignmentDAO;
import bephit.dao.AutoaccidentDAO;
import bephit.dao.HardshipagreementDAO;
import bephit.dao.HippaDAO;
import bephit.dao.InsuranceinformationDAO;
import bephit.dao.InsuranceplanDAO;
import bephit.dao.InsuranceverificationDAO;
import bephit.dao.MainDAO;
import bephit.dao.MedicalDAO;
import bephit.dao.PatientDAO;
import bephit.dao.ScreenDAO;
import bephit.dao.SignupDAO;
import bephit.dao.StaffchecklistDAO;
import bephit.dao.TreatDAO;
import bephit.dao.TreatMinorDAO;
import bephit.dao.WorkaccidentDAO;
import bephit.forms.AssignmentDetailsForm;
import bephit.forms.AutoaccidentForm;
import bephit.forms.HardshipagreementForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.InsuranceinformationForm;
import bephit.forms.InsuranceplanForm;
import bephit.forms.InsuranceverificationForm;
import bephit.forms.MedicalRecordsForm;
import bephit.forms.ParticipantsDetailsForm;
import bephit.forms.PatientDetailsForm;
import bephit.forms.ScreeningAuthzForm;
import bephit.forms.SignupForm;
import bephit.forms.StaffchecklistForm;
import bephit.forms.TreatDetailsForm;
import bephit.forms.TreatMinorDetailsForm;
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
	InsuranceinformationDAO infoDAO;
	
	@Autowired
	InsuranceverificationDAO veriDAO;
	
	@Autowired
	InsuranceplanDAO planDAO;
	
	@Autowired
	HardshipagreementDAO hardDAO;
	
	@Autowired
	StaffchecklistDAO staffDAO;
	
	@Autowired
	SignupDAO signDAO;
	
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
	public String printWelcome(ModelMap model) {
		
		ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
        model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		
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
	public String insert_autoaccident(@ModelAttribute("Autoaccident")  @Valid Autoaccident autoaccident,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
			autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
			model.addAttribute("AutoaccidentForm",autoaccidentForm);
			model.addAttribute("Success","true");
			return "autoaccident";
		}
		
		
		
		
		
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
	public String insert_workaccident(@ModelAttribute("Workaccident")  @Valid Workaccident workaccident,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			WorkaccidentForm workaccidentForm= new WorkaccidentForm();
			workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
			model.addAttribute("WorkaccidentForm",workaccidentForm);
			model.addAttribute("Success","true");
			return "workaccident";
		}
		
		
		
		model.put("Workaccident", workaccident);
		model.addAttribute("WorkaccidentForm",workaccident);
    	int b =workDAO.setWorkaccident(workaccident);
		WorkaccidentForm workaccidentForm= new WorkaccidentForm();
		workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
		model.addAttribute("WorkaccidentForm",workaccidentForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "workaccident";
	}
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.GET)
	public String insuranceinformation(ModelMap model) {
		
		return "insuranceinformation";
 
	}
	
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.POST)
	public String insert_insuranceinformation(@ModelAttribute("Insuranceinformation")  @Valid Insuranceinformation insuranceinformation,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
	    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
			model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
			model.addAttribute("Success","true");
			return "insuranceinformation";
	
		}
		
		
		model.put("Insuranceinformation", insuranceinformation);
		model.addAttribute("InsuranceinformationForm",insuranceinformation);
    	int c =infoDAO.setInsuranceinformation(insuranceinformation);
    	InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceinformation";
	}
	
	@RequestMapping(value="/insuranceverification", method = RequestMethod.GET)
	public String insuranceverification(ModelMap model) {
		
		return "insuranceverification";
 
	}
	
	@RequestMapping(value="/insuranceverification", method = RequestMethod.POST)
	public String insert_insuranceverification(@ModelAttribute("Insuranceverification")  @Valid Insuranceverification insuranceverification,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
	    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
			model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
			model.addAttribute("Success","true");
			return "insuranceverification";
		}
		
		
		model.put("Insuranceverification", insuranceverification);
		model.addAttribute("InsuranceverificationForm",insuranceverification);
    	int d =veriDAO.setInsuranceverification(insuranceverification);
    	InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceverification";
	}
	@RequestMapping(value="/insuranceplan", method = RequestMethod.GET)
	public String insuranceplan(ModelMap model) {
		
		return "insuranceplan";
 
	}
	
	@RequestMapping(value="/insuranceplan", method = RequestMethod.POST)
	public String insert_insuranceplan(@ModelAttribute("Insuranceplan") @Valid Insuranceplan insuranceplan,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
	    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
			model.addAttribute("InsuranceplanForm",insuranceplanForm);
			model.addAttribute("Success","true");
			return "insuranceplan";
			
		}
		
		
		
		model.put("Insuranceplan", insuranceplan);
		model.addAttribute("InsuranceplanForm",insuranceplan);
    	int e =planDAO.setInsuranceplan(insuranceplan);
    	InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
		model.addAttribute("InsuranceplanForm",insuranceplanForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceplan";
	}
	
	@RequestMapping(value="/hardshipagreement", method = RequestMethod.GET)
	public String hardshipagreement(ModelMap model) {
		
		return "hardshipagreement";
 
	}
	

	@RequestMapping(value="/hardshipagreement", method = RequestMethod.POST)
	public String insert_hardshipagreement(@ModelAttribute("Hardshipagreement") @Valid Hardshipagreement Hardshipagreement,BindingResult result,ModelMap model) {
		 
		if(result.hasErrors())
		{
			HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
	    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
			model.addAttribute("HardshipagreementForm",hardshipagreementForm);
			model.addAttribute("Success","true");
			return "hardshipagreement";
		}
		/*model.put("Hardshipagreement", hardshipagreement);*/
		model.addAttribute("HardshipagreementForm",Hardshipagreement);
    	int f =hardDAO.setHardshipagreement(Hardshipagreement);
    	HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("HardshipagreementForm",hardshipagreementForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "hardshipagreement";
	}
	
	@RequestMapping(value="/staffchecklist", method = RequestMethod.GET)
	public String staffchecklist(ModelMap model) {
		
		return "staffchecklist";
 
	}
	
	@RequestMapping(value="/staffchecklist", method = RequestMethod.POST)
	public String insert_staffchecklist(@ModelAttribute("Staffchecklist")  @Valid Staffchecklist staffchecklist,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
	    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
			model.addAttribute("StaffchecklistForm",staffchecklistForm);
			model.addAttribute("Success","true");
			return "staffchecklist";
		}
		
		model.put("Staffchecklist", staffchecklist);
		model.addAttribute("StaffchecklistForm",staffchecklist);
    	int g =staffDAO.setStaffchecklist(staffchecklist);
    	StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "staffchecklist";
	}
	
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String signup(ModelMap model) {
		
		return "signup";
 
	}
	

	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String insert_signup(@ModelAttribute("Signup")  @Valid Signup signup,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			SignupForm signupForm= new SignupForm();
	    	signupForm.setSignup(signDAO.getSignup());
			model.addAttribute("SignupForm",signupForm);
			model.addAttribute("Success","true");
			return "signup";
		}
		
		model.put("Signup", signup);
		model.addAttribute("SignupForm",signup);
    	int h =signDAO.setSignup(signup);
    	SignupForm signupForm= new SignupForm();
    	signupForm.setSignup(signDAO.getSignup());
		model.addAttribute("SignupForm",signupForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "signup";
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
	
	
	

	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
		model.addAttribute("error", "true");
		return "login";
 
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "login";
 
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