package bephit.controllers;
 
 

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

<<<<<<< .mine
import bephit.dao.AssignmentDAO;
import bephit.dao.HippaDAO;
=======
import bephit.dao.AutoaccidentDAO;
<<<<<<< .mine
import bephit.dao.HardshipagreementDAO;
import bephit.dao.InsuranceinformationDAO;
import bephit.dao.InsuranceplanDAO;
import bephit.dao.InsuranceverificationDAO;
=======
>>>>>>> .r17
>>>>>>> .r22
import bephit.dao.MainDAO;
<<<<<<< .mine
import bephit.dao.StaffchecklistDAO;
=======
<<<<<<< .mine
import bephit.dao.MedicalDAO;
import bephit.dao.PatientDAO;
=======
>>>>>>> .r22
import bephit.dao.WorkaccidentDAO;
import bephit.forms.AutoaccidentForm;
<<<<<<< .mine
import bephit.forms.HardshipagreementForm;
import bephit.forms.InsuranceinformationForm;
import bephit.forms.InsuranceplanForm;
import bephit.forms.InsuranceverificationForm;
=======
>>>>>>> .r17
import bephit.dao.ScreenDAO;
import bephit.dao.TreatDAO;
import bephit.dao.TreatMinorDAO;
import bephit.forms.AssignmentDetailsForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.MedicalRecordsForm;
>>>>>>> .r22
import bephit.forms.ParticipantsDetailsForm;
<<<<<<< .mine
import bephit.forms.StaffchecklistForm;
=======
<<<<<<< .mine
import bephit.forms.PatientDetailsForm;
import bephit.forms.ScreeningAuthzForm;
import bephit.forms.TreatDetailsForm;
import bephit.forms.TreatMinorDetailsForm;
import bephit.model.MedicalRecords;
import bephit.model.PatientDetails;
import bephit.model.TreatMinor;
import bephit.model.UserProfile;
=======
>>>>>>> .r22
import bephit.forms.WorkaccidentForm;
import bephit.model.*;
>>>>>>> .r17
import bephit.model.Assignment;
import bephit.model.Treatform;
import bephit.model.screeningAuthz;
import bephit.model.HippaPrivacy;

 
 
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
	
<<<<<<< .mine
	@Autowired
	StaffchecklistDAO staffDAO;
	
	
	
	
=======
	
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
>>>>>>> .r22
 
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
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.GET)
	public String insuranceinformation(ModelMap model) {
		
		return "insuranceinformation";
 
	}
	
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.POST)
	public String insert_insuranceinformation(@ModelAttribute("Insuranceinformation")  Insuranceinformation insuranceinformation,ModelMap model) {
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
	public String insert_insuranceverification(@ModelAttribute("Insuranceverification")  Insuranceverification insuranceverification,ModelMap model) {
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
	public String insert_insuranceplan(@ModelAttribute("Insuranceplan")  Insuranceplan insuranceplan,ModelMap model) {
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
	public String insert_hardshipagreement(@ModelAttribute("Hardshipagreement")  Hardshipagreement hardshipagreement,ModelMap model) {
		model.put("Hardshipagreement", hardshipagreement);
		model.addAttribute("HardshipagreementForm",hardshipagreement);
    	int f =hardDAO.setHardshipagreement(hardshipagreement);
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
	public String insert_staffchecklist(@ModelAttribute("Staffchecklist")  Staffchecklist staffchecklist,ModelMap model) {
		model.put("Staffchecklist", staffchecklist);
		model.addAttribute("StaffchecklistForm",staffchecklist);
    	int g =staffDAO.setStaffchecklist(staffchecklist);
    	StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "staffchecklist";
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
	
<<<<<<< .mine
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
	
	@RequestMapping(value="/patientDetails", method = RequestMethod.POST)
	public String insertpatientDetails(@ModelAttribute("PatientDetails") PatientDetails patientdetails,ModelMap model) {
		model.put("PatientDetails", patientdetails);
		model.addAttribute("PatientDetailsForm",patientdetails);
		int a=patientDAO.setPatientDetails(patientdetails);
         PatientDetailsForm patientdetailsform= new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		model.addAttribute("PatientDetailsForm",patientdetailsform);

		System.out.println("patientdetails");
	    
		return "patientDetails";
 
	}
	
	@RequestMapping(value="/Assignment", method = RequestMethod.POST)
	public String insertassignmentDetails(@ModelAttribute("Assignment") Assignment assignmentdetails,ModelMap model) {
		model.put("Assignment", assignmentdetails);
		model.addAttribute("AssignmentDetailsForm",assignmentdetails);
		int a=assignmentDAO.setAssignmentDetails(assignmentdetails);
         AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
		assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
		model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);

		System.out.println("assignment");
	    
		return "Assignment";
 
	}
	
=======
>>>>>>> .r17
	@RequestMapping(value="/treatform", method = RequestMethod.POST)
	public String inserttreatDetails(@ModelAttribute("Treatform") Treatform treatdetails,ModelMap model) {
		model.put("Treatform", treatdetails);
		model.addAttribute("TreatDetailsForm",treatdetails);
		int a=treatDAO.setTreatDetails(treatdetails);
         TreatDetailsForm treatdetailsform= new TreatDetailsForm();
		treatdetailsform.setTreatDetails(treatDAO.getTreatDetails());
		model.addAttribute("TreatDetailsForm",treatdetailsform);

		System.out.println("treat");
	    
		return "treatform";
 
	}
	
	@RequestMapping(value="/treatminor", method = RequestMethod.POST)
	public String insertminorDetails(@ModelAttribute("TreatMinor") TreatMinor minordetails,ModelMap model) {
		model.put("TreatMinor", minordetails);
		model.addAttribute("TreatMinorDetailsForm",minordetails);
		int a=minorDAO.setMinorDetails(minordetails);
         TreatMinorDetailsForm treatminordetailsform= new TreatMinorDetailsForm();
		treatminordetailsform.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("TreatMinorDetailsForm",treatminordetailsform);

		System.out.println("treatminor");
	    
		return "treatminor";
 
	}
	
	
	@RequestMapping(value="/medicalrecords", method = RequestMethod.POST)
	public String insertmedicalDetails(@ModelAttribute("MedicalRecords") MedicalRecords medicaldetails,ModelMap model) {
		model.put("MedicalRecords", medicaldetails);
		model.addAttribute("MedicalRecordsForm",medicaldetails);
		int a=medicalDAO.setMedicalDetails(medicaldetails);
        MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);

		System.out.println("MedicalRecords");
	    
		return "medicalrecords";
 
	}
	
	@RequestMapping(value="/screeningAuthz", method = RequestMethod.POST)
	public String insertscreenDetails(@ModelAttribute("screeningAuthz") screeningAuthz screeningdetails,ModelMap model) {
		model.put("screeningAuthz", screeningdetails);
		model.addAttribute("ScreeningAuthzForm",screeningdetails);
		int a=screenDAO.setScreeningDetails(screeningdetails);
        ScreeningAuthzForm screeningauthzform= new ScreeningAuthzForm();
		screeningauthzform.setScreeningDetails(screenDAO.getScreeningDetails());
		model.addAttribute("ScreeningAuthzForm",screeningauthzform);

		System.out.println("Screening");
	    
		return "screeningAuthz";
 
	}
	
	
	@RequestMapping(value="/Hippaprivacy", method = RequestMethod.POST)
	public String inserthippaDetails(@ModelAttribute("HippaPrivacy") HippaPrivacy privacydetails,ModelMap model) {
		model.put("HippaPrivacy", privacydetails);
		model.addAttribute("HippaPrivacyForm",privacydetails);
		int a=hippaDAO.setPrivacyDetails(privacydetails);
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);

		System.out.println("Hippa");
	    
		return "Hippaprivacy";
 
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