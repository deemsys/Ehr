	package bephit.controllers;
 
 

import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import bephit.dao.AssignmentDAO;
import bephit.dao.AutoaccidentDAO;
import bephit.dao.HamiltonchiropracticDAO;
import bephit.dao.HardshipagreementDAO;
import bephit.dao.HippaDAO;
import bephit.dao.InsuranceinformationDAO;
import bephit.dao.InsuranceplanDAO;
import bephit.dao.InsuranceverificationDAO;
import bephit.dao.MainDAO;
import bephit.dao.MedicalDAO;
import bephit.dao.MoretestDAO;
import bephit.dao.PatientDAO;

import bephit.dao.PhysicalexamDAO;

import bephit.dao.RadiologicReportDAO;

import bephit.dao.ScreenDAO;
import bephit.dao.SignupDAO;
import bephit.dao.StaffchecklistDAO;
import bephit.dao.TreatDAO;
import bephit.dao.TreatMinorDAO;
import bephit.dao.WorkaccidentDAO;
import bephit.forms.AssignmentDetailsForm;
import bephit.forms.AutoaccidentForm;
import bephit.forms.HamiltonchiropracticForm;
import bephit.forms.HardshipagreementForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.InsuranceinformationForm;
import bephit.forms.InsuranceplanForm;
import bephit.forms.InsuranceverificationForm;
import bephit.forms.MedicalRecordsForm;
import bephit.forms.MoretestForm;
import bephit.forms.ParticipantsDetailsForm;



import bephit.forms.PatientDetailsForm;

import bephit.forms.PhysicalexamForm;

import bephit.forms.RadiologicReportForm;

import bephit.forms.ScreeningAuthzForm;
import bephit.forms.SignupForm;
import bephit.forms.StaffchecklistForm;
import bephit.forms.TreatForm;
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
	HamiltonchiropracticDAO hamiDAO;
	
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
	
	@Autowired
	PhysicalexamDAO physicalDAO;
	
	@Autowired
	MoretestDAO moreDAO;
	
	

	@Autowired
	RadiologicReportDAO radioDAO;
	
	
	
 
	@RequestMapping(value={"/", "/welcome"}, method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		
		ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
        model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		
		return "dashboard";
 
	}
	@RequestMapping(value="/adminlogin", method = RequestMethod.GET)
	public String adminlogin(ModelMap model) {
		return "adminlogin";
 
	}
	
	@RequestMapping(value="/doctorlogin", method = RequestMethod.GET)
	public String doctorlogin(ModelMap model) {
		return "doctorlogin";
 
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
 
	}
	@RequestMapping(value="/physicalexam", method = RequestMethod.GET)
	public String physicalform(ModelMap model) {
		return "physicalexam";
 
	}

	
	@RequestMapping(value="/physicalexam", method = RequestMethod.POST)
	public String insert_physicalexam(@ModelAttribute("Physicalexam")  @Valid Physicalexam physicalexam,BindingResult result,ModelMap model) {
		/*if(result.hasErrors())
		{
			AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
			autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
			model.addAttribute("AutoaccidentForm",autoaccidentForm);
			model.addAttribute("Success","true");
			return "autoaccident";
		}*/
		
		
		
		
		
		model.put("Physicalexam", physicalexam);
		model.addAttribute("PhysicalexamForm",physicalexam);
    	int a=physicalDAO.setPhysicalexam(physicalexam);
		PhysicalexamForm physicalexamForm= new PhysicalexamForm();
		physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
		model.addAttribute("physicalexamForm",physicalexamForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "physicalexam";
 
	}
	
	@RequestMapping(value="/viewphysicalexam", method=RequestMethod.GET)
	public String viewexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		  PhysicalexamForm physicalexamForm = new PhysicalexamForm();
		 //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		  physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
		  //model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		  	model.addAttribute("physicalexamForm", physicalexamForm);
        
		return "viewphysicalexam";
	}
	@RequestMapping(value="/physicalexamlist", method=RequestMethod.GET)
	public String physicalexamlist(HttpServletRequest request,@RequestParam("physical_id") String physical_id,ModelMap model,Physicalexam exam)
	{
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		PhysicalexamForm physicalexamForm = new PhysicalexamForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physical_id));
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("physicalexamForm", physicalexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		
		return "physicalexamlist";
	}
	
	@RequestMapping(value="/editphysicalexam", method=RequestMethod.GET)
	public String editphysicalexam(HttpServletRequest request,@RequestParam("physical_id") String physical_id,ModelMap model,Physicalexam exam)
	{
		
		PhysicalexamForm physicalexamForm = new PhysicalexamForm();
       
        physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physical_id));
	
		model.addAttribute("physicalexamForm", physicalexamForm);
		
		return "editphysicalexam";
	}
	@RequestMapping(value="/updatephysicalexam", method=RequestMethod.POST)
	public String updatephysicalexam(HttpServletRequest request,@ModelAttribute("exam") @Valid Physicalexam exam,
			BindingResult result,ModelMap model,Principal principal)
	{
		if (result.hasErrors())
		{
			PhysicalexamForm physicalexamForm = new PhysicalexamForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(exam.getPhysical_id()));
	      
	        model.addAttribute("physicalexamForm", physicalexamForm);
			    
		        return "editphysicalexam";
		}
		
		int status = physicalDAO.updatephysicalexam(exam, exam.getPhysical_id(), principal.getName());
		System.out.println(status);
		
		PhysicalexamForm physicalexamForm = new PhysicalexamForm();
        
       physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
       
        model.addAttribute("physicalexamForm", physicalexamForm);
	       model.addAttribute("success","true");
	        return "viewphysicalexam";
		
	}
	@RequestMapping(value="/hamiltonchiropractic", method = RequestMethod.GET)
	public String hamiltonchiropractic(ModelMap model) {
	      return "hamiltonchiropractic";
	}

	
	@RequestMapping(value="/hamiltonchiropractic", method = RequestMethod.POST)
	public String insert_hamiltonchiropractic(@ModelAttribute("Hamiltonchiropractic")  @Valid Hamiltonchiropractic hamiltonchiropractic,BindingResult result,ModelMap model) {
		/*if(result.hasErrors())
		{
			HamiltonchiropracticForm hamiltonchiropracticForm= new HamiltonchiropracticForm();
			hamiltonchiropracticForm.setHamiltonchiropractic(autoDAO.getHamiltonchiropractic());
			model.addAttribute("Hamiltonchiropractic",hamiltonchiropracticForm);
			model.addAttribute("Success","true");
			return "hamiltonchiropractic";
		}
		*/
		model.put("Hamiltonchiropractic", hamiltonchiropractic);
		model.addAttribute("HamiltonchiropracticForm",hamiltonchiropractic);
    	int a=hamiDAO.setHamiltonchiropractic(hamiltonchiropractic);
    	HamiltonchiropracticForm hamiltonchiropracticForm= new HamiltonchiropracticForm();
    	hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
		model.addAttribute("Hamiltonchiropractic",hamiltonchiropracticForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		

		return "hamiltonchiropractic";
 
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
	@RequestMapping(value="/radiologicreport", method=RequestMethod.GET)
	public String radiologicreport(ModelMap model) {
		
		return "radiologicreport";
	}
	@RequestMapping(value="/radiologicreport", method = RequestMethod.POST)
	public String insert_radiologicreport(@ModelAttribute("RadiologicReport")  @Valid RadiologicReport radiologicreport,BindingResult result,ModelMap model) {
			if(result.hasErrors())
			{
				RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
				radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
				model.addAttribute("RadiologicReportForm",radiologicReportForm);
				model.addAttribute("Success","true");
				return "radiologicreport";
			}
			
			model.put("RadiologicReport", radiologicreport);
			model.addAttribute("RadiologicReportForm",radiologicreport);
	    	
	    	int a=radioDAO.setRadiologicReport(radiologicreport);
			
	    	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
			
	    	radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
			
	    	model.addAttribute("RadiologicReportForm", radiologicReportForm);
			
			return "radiologicreport";
	 
		}
	@RequestMapping(value="/findPatients",method=RequestMethod.GET)
	public String findPatients(HttpServletRequest request,ModelMap model)
	{
		
		RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
		
		
		radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
		
     
       model.addAttribute("radiologicReportForm", radiologicReportForm);
      
		return "viewradiologicreport";
		
	}
	@RequestMapping(value="/viewradiologicreport", method=RequestMethod.GET)
	public String viewPatients(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		  RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
		 //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		  radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
		  //model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		  	model.addAttribute("radiologicReportForm", radiologicReportForm);
        
		return "viewradiologicreport";
	}
	@RequestMapping(value="/radiologicReportList", method=RequestMethod.GET)
	public String radiologicreportlist(HttpServletRequest request,@RequestParam("pid") String pid,ModelMap model,RadiologicReport radiologic)
	{
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport((pid)));
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("radiologicReportForm", radiologicReportForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		
		return "radiologicReportList";
	}
	@RequestMapping(value="/editradiologicreport", method=RequestMethod.GET)
	public String editRadiologicReport(HttpServletRequest request,@RequestParam("pid") String pid,ModelMap model,RadiologicReport report)
	{
		
		RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
       
        radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport(pid));
	
		model.addAttribute("radiologicReportForm", radiologicReportForm);
		
		return "editradiologicreport";
	}
	@RequestMapping(value="/updateradiologicreport", method=RequestMethod.POST)
	public String updateRadiologicReport(HttpServletRequest request,@ModelAttribute("report") @Valid RadiologicReport report,
			BindingResult result,ModelMap model,Principal principal)
	{
		if (result.hasErrors())
		{
			RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport(report.getPid()));
	      
	        model.addAttribute("radiologicReportForm", radiologicReportForm);
			    
		        return "editradiologicreport";
		}
		
		int status = radioDAO.updateRadiologicReport(report, report.getPid(), principal.getName());
		System.out.println(status);
		
		RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
        
        radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
       
        model.addAttribute("radiologicReportForm", radiologicReportForm);
	       model.addAttribute("success","true");
	        return "viewradiologicreport";
		
	}

	@RequestMapping(value="/deleteradoiologicreport", method=RequestMethod.GET)
	public String removeRadiologicReport(@RequestParam("pid") String pid,ModelMap model, Principal principal) {
	
		int status=radioDAO.deleteRadiologicReport(pid, principal.getName());
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
        model.addAttribute("radiologicReportForm", radiologicReportForm);
      
		}
		
		return "viewradiologicreport";
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
			TreatForm treatform= new TreatForm();
			treatform.setTreatform(treatDAO.getTreatDetails());
			model.addAttribute("TreatDetailsForm",treatform);
			model.addAttribute("success","true");
			return "treatform";
		}
		
		model.addAttribute("TreatForm",treatdetails);
		int a=treatDAO.setTreatDetails(treatdetails);
         TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getTreatDetails());
		model.addAttribute("TreatDetailsForm",treatform);

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
	
	/*@RequestMapping(value="/addpatients",method=RequestMethod.GET)
	public String showAddpatient(HttpServletRequest request,@RequestParam("id") String Patient_id,ModelMap model,PatientDetails patientdetails)
	{
		PatientDetailsForm patientdetailsform= new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails(Patient_id));
		model.addAttribute("PatientDetailsForm",patientdetailsform);
        model.addAttribute("menu","dashboard");
		return "/addpatients";
		
	
	
	}*/
	
	@RequestMapping(value="/patientDetails",method=RequestMethod.GET)
	public String patientDetails(ModelMap model)
	{
		PatientDetailsForm patientdetailsform= new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		model.addAttribute("PatientDetailsForm",patientdetailsform);
		 model.addAttribute("noofrows",patientDAO.getPatientDetails().size());
		return "/patientDetails";
	}
	
	@RequestMapping(value="/patientDetails", method = RequestMethod.POST)
	public String insertpatientDetails(@ModelAttribute("PatientDetails") @Valid PatientDetails patientdetails,BindingResult result,ModelMap model,Principal principal) {
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
		 model.addAttribute("noofrows",patientDAO.getPatientDetails().size());
		System.out.println("patientdetails");
	    
		return "patientDetails";
 
	}
	@RequestMapping(value="/viewpatient", method=RequestMethod.GET)
	public String viewpatient(HttpServletRequest request,ModelMap model, Principal principal) {
		
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("PatientDetailsForm", patientdetailsform);
        System.out.println("Patient");
		return "viewpatient";
	}
	
	/*@RequestMapping(value="/viewpatient", method=RequestMethod.POST)
	public String viewpatientdetails(ModelMap model) {
		
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("PatientDetailsForm", patientdetailsform);
        System.out.println("Patient");
		return "viewpatient";
	}*/

	@RequestMapping(value="/viewhardship", method = RequestMethod.GET)
	public String viewhardship(HttpServletRequest request,ModelMap model) {
		
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		
		return "viewhardship";
 
	}
	
	@RequestMapping(value="/viewinsuranceplan", method = RequestMethod.GET)
	public String viewinsuranceplan(HttpServletRequest request,ModelMap model) {
		
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
		model.addAttribute("InsuranceplanForm",insuranceplanForm);
		
		return "viewinsuranceplan";
 
	}
	
	@RequestMapping(value="/viewinsuranceinformation", method = RequestMethod.GET)
	public String viewinsuranceinformation(HttpServletRequest request,ModelMap model) {
		
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		
		return "viewinsuranceinformation";
 
	}
	
	@RequestMapping(value="/viewinsuranceverification", method = RequestMethod.GET)
	public String viewinsuranceverification(HttpServletRequest request,ModelMap model) {
		
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		
		return "viewinsuranceverification";
 
	}
	

	@RequestMapping(value="/viewmedicalrecords", method = RequestMethod.GET)
	public String viewmedicalrecords(HttpServletRequest request,ModelMap model) {
		
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		model.addAttribute("medicalrecordsform",medicalrecordsform);
		
		return "viewmedicalrecords";
 
	}
	@RequestMapping(value="/viewassignment", method = RequestMethod.GET)
	public String viewassignment(HttpServletRequest request,ModelMap model) {
		
		 AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
			assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
			model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
		
		return "viewassignment";
 
	}
	@RequestMapping(value="/viewhippa", method = RequestMethod.GET)
	public String viewhippa(HttpServletRequest request,ModelMap model) {
		
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		
		return "viewhippa";
 
	}
	

	@RequestMapping(value="/viewstaffchecklist", method = RequestMethod.GET)
	public String viewstaffchecklist(HttpServletRequest request,ModelMap model) {
		
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		
		return "viewstaffchecklist";
 
	}
	
	@RequestMapping(value="/viewtreatform", method = RequestMethod.GET)
	public String viewtreatform(HttpServletRequest request,ModelMap model) {
		

		TreatForm treatdetailsform= new TreatForm();
		treatdetailsform.setTreatform(treatDAO.getTreatDetails());
		model.addAttribute("treatdetails",treatdetailsform);
		TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getTreatDetails());
		System.out.println(treatform);
		model.addAttribute("treatform",treatform);
		return "viewtreatform";
 
	}
	
	@RequestMapping(value="/viewtreatminor", method = RequestMethod.GET)
	public String viewtreatminor(HttpServletRequest request,ModelMap model) {
		
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		return "viewtreatminor";
 
	}
	
	@RequestMapping(value="/viewscreeningauthz", method = RequestMethod.GET)
	public String viewscreeningauthz(HttpServletRequest request,ModelMap model) {
		
		ScreeningAuthzForm screeningauthzform= new ScreeningAuthzForm();
		screeningauthzform.setScreeningDetails(screenDAO.getScreeningDetails());
		System.out.println(screeningauthzform);
		model.addAttribute("screeningauthzForm",screeningauthzform);
		return "viewscreeningauthz";
 
	}
	
	@RequestMapping(value="/edithardship", method = RequestMethod.GET)
	public String edithardship(HttpServletRequest request,ModelMap model) {
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		
		return "edithardship";
		
 
	}
	
	
	@RequestMapping(value="/editinsuranceplan", method = RequestMethod.GET)
	public String editinsuranceplan(HttpServletRequest request,ModelMap model) {
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
		model.addAttribute("InsuranceplanForm",insuranceplanForm);
		
		return "editinsuranceplan";
 
	}
	
	@RequestMapping(value="/editinsuranceinformation", method = RequestMethod.GET)
	public String editinsuranceinformation(HttpServletRequest request,ModelMap model) {
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		
		return "editinsuranceinformation";
	}
	
	@RequestMapping(value="/editinsuranceverification", method = RequestMethod.GET)
	public String editinsuranceverification(HttpServletRequest request,ModelMap model) {
		
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		
		return "editinsuranceverification";
	}
	
	@RequestMapping(value="/editstaffchecklist", method = RequestMethod.GET)
	public String editstaffchecklist(HttpServletRequest request,ModelMap model) {
		
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		
		return "editstaffchecklist";
	}
	@RequestMapping(value="/editmedical", method = RequestMethod.GET)
	public String editmedical(HttpServletRequest request,ModelMap model) {
		
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		
		return "editmedical";
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
	
	@RequestMapping(value="/moretest", method=RequestMethod.GET)
	public String moretest(ModelMap model) {
		
		return "moretest";
	}
	
	@RequestMapping(value="/moretest", method = RequestMethod.POST)
	public String insert_moretest(@ModelAttribute("Moretest")  @Valid Moretest moretest,BindingResult result,ModelMap model) {
		
		model.put("Moretest", moretest);
		model.addAttribute("MoretestForm",moretest);
    	int a=moreDAO.setMoretest(moretest);
    	MoretestForm moretestForm= new MoretestForm();
    	moretestForm.setMoretest(moreDAO.getMoretest());
		model.addAttribute("Moretest",moretestForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		

		return "moretest";
 
	}
	@RequestMapping(value="/viewhamiltonchiropractic", method = RequestMethod.GET)
	public String viewhamiltonchiropractic(HttpServletRequest request,ModelMap model) {
		
		HamiltonchiropracticForm hamiltonchiropracticForm= new HamiltonchiropracticForm();
		hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
		model.addAttribute("hamiltonchiropracticform",hamiltonchiropracticForm);
		
		return "viewhamiltonchiropractic";
 
	}
	@RequestMapping(value="/soapnotes", method = RequestMethod.GET)
	public String soapnotes(ModelMap model) {
	      return "soapnotes";
	}
	

	}
	
  