	package bephit.controllers;
 
 

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
import bephit.dao.DoctorsignupDAO;
/*import bephit.dao.DoctorsignupDAO;*/
//import bephit.dao.DoctorsignupDAO;
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
import bephit.dao.SoapnotesDAO;

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

/*import bephit.forms.DoctorsignupForm;*/

//import bephit.forms.DoctorsignupForm;

import bephit.forms.DoctorsignupForm;
import bephit.forms.HamiltonchiropracticForm;
import bephit.forms.HardshipagreementForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.InsuranceinformationForm;
import bephit.forms.InsuranceplanForm;
import bephit.forms.InsuranceverificationForm;
import bephit.forms.MedicalRecordsForm;
import bephit.forms.MoretestForm;

import bephit.forms.ParticipantsDetailsForm;
import bephit.forms.SoapnotesForm;



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
@SessionAttributes({"physical","radio","waiver","info","consent","minor","hard","screen","medical","assignment","hippa","staff","veri","patient","role","signup","doctorsignup"})
public class MainController {
	
	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
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

	DoctorsignupDAO docDAO;


	

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
	
	@Autowired
	SoapnotesDAO soapDAO;
	
	
	
 
	@RequestMapping(value={"/", "/welcome"}, method = RequestMethod.GET)
	public String printWelcome(HttpSession session,HttpServletRequest request,ModelMap model, Principal principal ) {
		
		 int role=mainDAO.getrole();
	       System.out.println("Role:"+role);
        model.addAttribute("menu","patientDetails");
		
		
		model.addAttribute("role",role);
	    session.setAttribute("role", role);
		if(role==0)
		{
			return "viewpatient";
		}
		else if(role==2)
		{ 
			return "staffchecklist";
		}
		else
		return "physicalexam";
 
	}
	
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
 
	}
	@RequestMapping(value="/physicalexam", method = RequestMethod.GET)
	public String physicalform(HttpSession session, ModelMap model) {
		session.removeAttribute("physical");
		model.addAttribute("menu", "doctor");
		return "physicalexam";
 
	}

	
	@RequestMapping(value="/physicalexam", method = RequestMethod.POST)
	public String insert_physicalexam(HttpSession session,@ModelAttribute("Physicalexam")  @Valid Physicalexam physicalexam,BindingResult result,ModelMap model) {
		
		session.setAttribute("physical",physicalexam);
		if(result.hasErrors())
		{
			PhysicalexamForm physicalexamForm= new PhysicalexamForm();
			physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
			model.addAttribute("physicalexamForm",physicalexamForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "phyexam");
			return "physicalexam";
		}
		
		
		
		
		
		model.put("Physicalexam", physicalexam);
		model.addAttribute("PhysicalexamForm",physicalexam);
    	int a=physicalDAO.setPhysicalexam(physicalexam);
		PhysicalexamForm physicalexamForm= new PhysicalexamForm();
		physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
		model.addAttribute("physicalexamForm",physicalexamForm);
		model.addAttribute("menu", "phyexam");	
	    
		
		return "viewphysicalexam";
 
	}
	
	@RequestMapping(value="/viewphysicalexam", method=RequestMethod.GET)
	public String viewexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  PhysicalexamForm physicalexamForm = new PhysicalexamForm();
		 
		  physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
		  
		  	model.addAttribute("physicalexamForm", physicalexamForm);
		  	model.addAttribute("menu", "phyexam");
		return "viewphysicalexam";
	}
	@RequestMapping(value="/physicalexamlist", method=RequestMethod.GET)
	public String physicalexamlist(HttpServletRequest request,@RequestParam("physical_id") String physical_id,ModelMap model,Physicalexam exam)
	{
		
		PhysicalexamForm physicalexamForm = new PhysicalexamForm();
        
		physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physical_id));
	
		model.addAttribute("physicalexamForm", physicalexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "phyexam");
		return "physicalexamlist";
	}
	
	@RequestMapping(value="/editphysicalexam", method=RequestMethod.GET)
	public String editphysicalexam(HttpServletRequest request,@RequestParam("physical_id") String physical_id,ModelMap model,Physicalexam exam)
	{
		
		PhysicalexamForm physicalexamForm = new PhysicalexamForm();
       
        physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physical_id));
	
		model.addAttribute("physicalexamForm", physicalexamForm);
		model.addAttribute("menu", "phyexam");
		return "editphysicalexam";
	}
	@RequestMapping(value="/updatephysicalexam", method=RequestMethod.POST)
	public String updatephysicalexam(HttpServletRequest request,@ModelAttribute("exam") @Valid Physicalexam physicalexam,
			BindingResult result,ModelMap model,Principal principal)
	{
		if (result.hasErrors())
		{
			PhysicalexamForm physicalexamForm = new PhysicalexamForm();
	     
	      physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physicalexam.getPhysical_id()));
	      
	        model.addAttribute("physicalexamForm", physicalexamForm);
	        model.addAttribute("menu", "phyexam");  
		        return "editphysicalexam";
		}
		System.out.println("physical id"+physicalexam.getPhysical_id());
		int status = physicalDAO.updatephysicalexam(physicalexam, physicalexam.getPhysical_id(), principal.getName());
		System.out.println(status);
		
		PhysicalexamForm physicalexamForm = new PhysicalexamForm();
        
       physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
       
        model.addAttribute("physicalexamForm", physicalexamForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "phyexam");
	        return "viewphysicalexam";
		
	}
	
	@RequestMapping(value="/deletephysicalexam", method=RequestMethod.GET)
	public String removephysicalexam(@RequestParam("physical_id") String physical_id,ModelMap model, Principal principal) {
	
		int status=physicalDAO.deletephysicalexam(physical_id);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		PhysicalexamForm physicalexamForm = new PhysicalexamForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
        model.addAttribute("physicalexamForm", physicalexamForm);
        model.addAttribute("menu", "phyexam");
		}
		
		return "viewphysicalexam";
	}
	@RequestMapping(value="/hamiltonchiropractic", method = RequestMethod.GET)
	public String hamiltonchiropractic(ModelMap model) {
		 model.addAttribute("iniexam", "doctor");
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
			 model.addAttribute("menu", "doctor");
			return "hamiltonchiropractic";
		}
		*/
		model.put("Hamiltonchiropractic", hamiltonchiropractic);
		model.addAttribute("hamiltonchiropracticForm",hamiltonchiropractic);
    	int a=hamiDAO.setHamiltonchiropractic(hamiltonchiropractic);
    	HamiltonchiropracticForm hamiltonchiropracticForm= new HamiltonchiropracticForm();
    	hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
		model.addAttribute("hamiltonchiropracticForm",hamiltonchiropracticForm);
		 model.addAttribute("menu", "iniexam");
		//System.out.println(autoaccident.getAdjustersname());
	    
		

		return "viewfirsthamiltonchiropractic";
 
	}
		
	@RequestMapping(value="/viewfirsthamiltonchiropractic", method = RequestMethod.GET)
	public String viewhamiltonchiropractic(HttpServletRequest request,ModelMap model) {
		
		HamiltonchiropracticForm hamiltonchiropracticForm= new HamiltonchiropracticForm();
		hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
		model.addAttribute("hamiltonchiropracticForm",hamiltonchiropracticForm);
		 model.addAttribute("menu", "iniexam");
	
		return "viewfirsthamiltonchiropractic";
 
	}
	@RequestMapping(value="/viewhamiltonchiropractic", method=RequestMethod.GET)
	public String viewhamiltonchiropractic(HttpServletRequest request,@RequestParam("initialexamid") String initialexamid,ModelMap model,Hamiltonchiropractic hamiltonchiropractic)
	{
		
		HamiltonchiropracticForm hamiltonchiropracticForm = new HamiltonchiropracticForm();
        
		hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic((initialexamid)));
		
		model.addAttribute("hamiltonchiropracticForm", hamiltonchiropracticForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		 model.addAttribute("menu", "iniexam");
		
		return "viewhamiltonchiropractic";
	}
	
	@RequestMapping(value="/edithamiltonchiropractic", method=RequestMethod.GET)
	public String edithamiltonchiropractic(HttpServletRequest request,@RequestParam("initialexamid") String initialexamid,ModelMap model,Hamiltonchiropractic hamiltonchiropractic)
	{
		
		HamiltonchiropracticForm hamiltonchiropracticForm = new HamiltonchiropracticForm();
       
        hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic(initialexamid));
	
		model.addAttribute("hamiltonchiropracticForm", hamiltonchiropracticForm);
		 model.addAttribute("menu", "iniexam");
		
		return "edithamiltonchiropractic";
	}
	
	
	@RequestMapping(value="/updatehamiltonchiropractic", method=RequestMethod.POST)
	public String updatehamiltonchiropractic(HttpServletRequest request,@ModelAttribute("Hamiltonchiropractic") @Valid Hamiltonchiropractic hamiltonchiropractic,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			PhysicalexamForm physicalexamForm = new PhysicalexamForm();
	     
	      physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physicalexam.getPhysical_id()));
	      
	        model.addAttribute("physicalexamForm", physicalexamForm);
			     model.addAttribute("menu", "doctor");
		        return "editphysicalexam";
		}
		*/
		/*System.out.println("physical id"+physicalexam.getPhysical_id());*/
		int status = hamiDAO.updatehamiltonchiropractic(hamiltonchiropractic, hamiltonchiropractic.getInitialexamid(), principal.getName());
		System.out.println(status);
		
		HamiltonchiropracticForm hamiltonchiropracticForm = new HamiltonchiropracticForm();
        
       hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
       
        model.addAttribute("hamiltonchiropracticForm", hamiltonchiropracticForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "iniexam");
	        return "viewfirsthamiltonchiropractic";
		
	}
	
	@RequestMapping(value="/deletehamiltonchiropractic", method=RequestMethod.GET)
	public String deletehamiltonchiropractic(@RequestParam("initialexamid") String initialexamid,ModelMap model, Principal principal) {
	
		int status=hamiDAO.deletehamiltonchiropractic(initialexamid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
		HamiltonchiropracticForm hamiltonchiropracticForm = new HamiltonchiropracticForm();
		
		hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
        model.addAttribute("hamiltonchiropracticForm", hamiltonchiropracticForm);
        model.addAttribute("menu", "iniexam");
      
		}
		
		return "viewfirsthamiltonchiropractic";
	}
	
	
	@RequestMapping(value="/autoaccident", method = RequestMethod.GET)
	public String autoaccident(ModelMap model) {
		
		 model.addAttribute("menu", "Accident");
		return "autoaccident";
 
	}
	@RequestMapping(value="/autoaccident", method = RequestMethod.POST)
	public String insert_autoaccident(@ModelAttribute("Autoaccident")  @Valid Autoaccident autoaccident,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
			autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
			model.addAttribute("autoaccidentForm",autoaccidentForm);
			model.addAttribute("Success","true");
			 model.addAttribute("menu", "Accident");
			return "autoaccident";
		}
		
		
    	int a=autoDAO.setAutoaccident(autoaccident);
		AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
		autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
		model.addAttribute("autoaccidentForm",autoaccidentForm);
		model.addAttribute("menu", "Accident");

	
		return "viewautoaccident";
 
	}
	
	@RequestMapping(value="/viewautoaccident", method=RequestMethod.GET)
	public String viewautoaccident(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
		
		  autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
	
		  	model.addAttribute("autoaccidentForm", autoaccidentForm);
		  	model.addAttribute("menu", "Accident");
        
		return "viewautoaccident";
	}
	@RequestMapping(value="/autoaccidentlist", method=RequestMethod.GET)
	public String autoaccidentlist(HttpServletRequest request,@RequestParam("patient_number") String patient_number,ModelMap model,Autoaccident autoaccident)
	{
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		autoaccidentForm.setAutoaccident(autoDAO.getAuto((patient_number)));
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("autoaccidentForm", autoaccidentForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "Accident");
		return "autoaccidentlist";
	}
	@RequestMapping(value="/editautoaccident", method=RequestMethod.GET)
	public String editautoaccident(HttpServletRequest request,@RequestParam("patient_number") String patient_number,ModelMap model,Autoaccident autoaccident)
	{
		
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
       
        autoaccidentForm.setAutoaccident(autoDAO.getAuto(patient_number));
	
		model.addAttribute("autoaccidentForm", autoaccidentForm);
		model.addAttribute("menu", "Accident");
		return "editautoaccident";
	}
	
	
	@RequestMapping(value="/updateautoaccident", method=RequestMethod.POST)
	public String updateautoaccident(HttpServletRequest request,@ModelAttribute("Autoaccident") @Valid Autoaccident autoaccident,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			PhysicalexamForm physicalexamForm = new PhysicalexamForm();
	     
	      physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physicalexam.getPhysical_id()));
	      
	        model.addAttribute("physicalexamForm", physicalexamForm);
			  model.addAttribute("menu", "Accident");  
		        return "editphysicalexam";
		}
		*/
		/*System.out.println("physical id"+physicalexam.getPhysical_id());*/
		int status = autoDAO.updateautoaccident(autoaccident, autoaccident.getPatient_number(), principal.getName());
		System.out.println(status);
		
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
        
       autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
       
        model.addAttribute("autoaccidentForm", autoaccidentForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "Accident");
	        return "viewautoaccident";
		
	}
	

	@RequestMapping(value="/deleteautoaccident", method=RequestMethod.GET)
	public String removeautoaccident(@RequestParam("patient_number") String patient_number,ModelMap model, Principal principal) {
	
		int status=autoDAO.deleteautoaccident(patient_number, principal.getName());
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
        model.addAttribute("autoaccidentForm", autoaccidentForm);
        model.addAttribute("menu", "Accident");
		}
		
		return "viewautoaccident";
	}
	@RequestMapping(value="/radiologicreport", method=RequestMethod.GET)
	public String radiologicreport(HttpSession session,ModelMap model) {
		session.removeAttribute("radio");
		model.addAttribute("menu", "report");
		return "radiologicreport";
	}
	@RequestMapping(value="/radiologicreport", method = RequestMethod.POST)
	public String insert_radiologicreport(HttpSession session,@ModelAttribute("RadiologicReport")  @Valid RadiologicReport radiologicreport,BindingResult result,ModelMap model) {
		session.setAttribute("radio",radiologicreport);	
		if(result.hasErrors())
			{
			//	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
				radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
				model.addAttribute("radiologicReportForm",radiologicReportForm);
				model.addAttribute("Success","true");
				model.addAttribute("menu", "report");
				return "radiologicreport";
			}
			
			model.put("RadiologicReport", radiologicreport);
			model.addAttribute("radiologicReportForm",radiologicreport);
	    	
	    	int a=radioDAO.setRadiologicReport(radiologicreport);
			
	    //	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
			
	    	// Populate all screen values in the model
	    	
	    	// Form will have list of model, so set the model in the form
	    	
	    	// Create DAO instance and pass the form created now with  all screen values to be inserted into database
	    	
	    	// 
	    	radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
			
	    	model.addAttribute("radiologicReportForm", radiologicReportForm);
	    	model.addAttribute("menu", "report");
			return "viewradiologicreport";
	 
		}
	@RequestMapping(value="/findPatients",method=RequestMethod.GET)
	public String findPatients(HttpServletRequest request,ModelMap model)
	{
		
	//	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
		
		
		radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
		
     
       model.addAttribute("radiologicReportForm", radiologicReportForm);
       model.addAttribute("menu", "report");
		return "viewradiologicreport";
		
	}
	@RequestMapping(value="/viewradiologicreport", method=RequestMethod.GET)
	public String viewPatients(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		 // RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
		 //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		  radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
		  //model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		  model.addAttribute("menu", "report");
		  	model.addAttribute("radiologicReportForm", radiologicReportForm);
        
		return "viewradiologicreport";
	}
	@RequestMapping(value="/radiologicReportList", method=RequestMethod.GET)
	public String radiologicreportlist(HttpServletRequest request,@RequestParam("pid") String pid,ModelMap model,RadiologicReport radiologic)
	{
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		//RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport((pid)));
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("radiologicReportForm", radiologicReportForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "report");
		return "radiologicReportList";
	}
	@RequestMapping(value="/editradiologicreport", method=RequestMethod.GET)
	public String editRadiologicReport(HttpServletRequest request,@RequestParam("pid") String pid,ModelMap model,RadiologicReport report)
	{
		
		//RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
       
        radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport(pid));
	
		model.addAttribute("radiologicReportForm", radiologicReportForm);
		model.addAttribute("menu", "report");
		return "editradiologicreport";
	}
	@RequestMapping(value="/updateradiologicreport", method=RequestMethod.POST)
	public String updateRadiologicReport(HttpServletRequest request,@ModelAttribute("report") @Valid RadiologicReport report,
			BindingResult result,ModelMap model,Principal principal)
	{
		if (result.hasErrors())
		{
			//RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport(report.getPid()));
	      
	        model.addAttribute("radiologicReportForm", radiologicReportForm);
	        model.addAttribute("menu", "report");    
		        return "editradiologicreport";
		}
		
		int status = radioDAO.updateRadiologicReport(report, report.getPid(), principal.getName());
		System.out.println(status);
		
	//	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
        
        radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
       
        model.addAttribute("radiologicReportForm", radiologicReportForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "report");
	        return "viewradiologicreport";
		
	}

	@RequestMapping(value="/deleteradiologicreport", method=RequestMethod.GET)
	public String removeRadiologicReport(@RequestParam("pid") String pid,ModelMap model, Principal principal) {
	
		int status=radioDAO.deleteRadiologicReport(pid, principal.getName());
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
		radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
        model.addAttribute("radiologicReportForm", radiologicReportForm);
        model.addAttribute("menu", "report");
		}
		
		return "viewradiologicreport";
	}
	@RequestMapping(value="/workaccident", method = RequestMethod.GET)
	public String workaccident(ModelMap model) {
		model.addAttribute("menu", "Accident");
		return "workaccident";
		
 
	}
	
	@RequestMapping(value="/workaccident", method = RequestMethod.POST)
	public String insert_workaccident(@ModelAttribute("Workaccident")  @Valid Workaccident workaccident,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			WorkaccidentForm workaccidentForm= new WorkaccidentForm();
			workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
			model.addAttribute("workaccidentForm",workaccidentForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "Accident");
			return "workaccident";
		}		
		model.put("Workaccident", workaccident);
		model.addAttribute("workaccidentForm",workaccident);
    	int b =workDAO.setWorkaccident(workaccident);
		WorkaccidentForm workaccidentForm= new WorkaccidentForm();
		workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
		model.addAttribute("workaccidentForm",workaccidentForm);
		model.addAttribute("menu", "Accident");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "viewworkaccident";
	}
	@RequestMapping(value="/viewworkaccident", method=RequestMethod.GET)
	public String viewWorkAccident(HttpServletRequest request,ModelMap model, Principal principal) {
		    model.addAttribute("success","false");		 
			WorkaccidentForm workaccidentForm = new WorkaccidentForm();
			workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
			model.addAttribute("workaccidentForm", workaccidentForm);
			model.addAttribute("menu", "Accident");
		return "viewworkaccident";
	}
	@RequestMapping(value="/workAccidentList", method=RequestMethod.GET)
	public String viewworkaccident(HttpServletRequest request,@RequestParam("patient_no") String patient_no,ModelMap model,Workaccident work)
	{
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		WorkaccidentForm workaccidentForm = new WorkaccidentForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		workaccidentForm.setWorkaccident(workDAO.getWorkaccident(patient_no));
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("workaccidentForm", workaccidentForm);
		model.addAttribute("menu", "Accident");
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		
		return "workAccidentList";
	}
	@RequestMapping(value="/editworkaccident", method=RequestMethod.GET)
	public String editWorkAccident(HttpServletRequest request,@RequestParam("patient_no") String patient_no,ModelMap model,Workaccident workAcc)
	{
		
       WorkaccidentForm workaccidentForm = new WorkaccidentForm();
       
       	workaccidentForm.setWorkaccident(workDAO.getWorkaccident(patient_no));
		model.addAttribute("workaccidentForm",workaccidentForm);
		model.addAttribute("menu", "Accident");
		return "editworkaccident";
	}
	
	@RequestMapping(value="/updateworkaccident", method=RequestMethod.POST)
	public String updateWorkAccident(HttpServletRequest request,@ModelAttribute("workAccident") @Valid Workaccident workAccident,
			BindingResult result,ModelMap model,Principal principal)
	{
		if (result.hasErrors())
		{
		//	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
			WorkaccidentForm workaccidentForm = new WorkaccidentForm();
	     // radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport(report.getPid()));
	      workaccidentForm.setWorkaccident(workDAO.getWorkaccident(workAccident.getPatient_no()));
	        model.addAttribute("workaccidentForm", workaccidentForm);
	        model.addAttribute("menu", "Accident");    
		        return "editworkaccident";
		}
		
		int status = workDAO.updateWorkAccident(workAccident,workAccident.getPatient_no(),principal.getName());
		System.out.println(status);
		
		WorkaccidentForm workaccidentForm = new WorkaccidentForm();
	      workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
	        model.addAttribute("workaccidentForm", workaccidentForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "Accident");
	        return "viewworkaccident";
		
	}
	@RequestMapping(value="/deleteworkaccident", method=RequestMethod.GET)
	public String removeWorkAccident(@RequestParam("patient_no") String patient_no,ModelMap model, Principal principal) {
	
		
		int status = workDAO.deleteWorkAccident(patient_no, principal.getName());
		if(status==1)
		{
        model.addAttribute("success","true");
        WorkaccidentForm workaccidentForm= new WorkaccidentForm();
		workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
		model.addAttribute("workaccidentForm",workaccidentForm);
		model.addAttribute("menu", "Accident");
		}
		
		return "viewworkaccident";
	}
	
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.GET)
	public String insuranceinformation(HttpSession session,ModelMap model) {
		
		session.removeAttribute("info");
		model.addAttribute("menu", "health");
		return "insuranceinformation";
 
	}
	
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.POST)
	public String insert_insuranceinformation(HttpSession session,@ModelAttribute("Insuranceinformation")  @Valid Insuranceinformation insuranceinformation,BindingResult result,ModelMap model) {
		session.setAttribute("info",insuranceinformation);
		if(result.hasErrors())
		{
			InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
	    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
			model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "health");
			return "insuranceinformation";
	
		}
		
		
		model.put("Insuranceinformation", insuranceinformation);
		model.addAttribute("InsuranceinformationForm",insuranceinformation);
    	int a =infoDAO.setInsuranceinformation(insuranceinformation);
    	InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		model.addAttribute("menu", "health");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceinfolist";
	}
	
	@RequestMapping(value="/insuranceverification", method = RequestMethod.GET)
	public String insuranceverification(HttpSession session,ModelMap model) {
		session.removeAttribute("veri");
		model.addAttribute("menu", "admin");
		return "insuranceverification";
 
	}
	
	@RequestMapping(value="/insuranceverification", method = RequestMethod.POST)
	public String insert_insuranceverification(HttpSession session,@ModelAttribute("Insuranceverification")  @Valid Insuranceverification insuranceverification,BindingResult result,ModelMap model) {
		session.setAttribute("veri",insuranceverification);
		if(result.hasErrors())
		{
			InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
	    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
			model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "admin");
			return "insuranceverification";
		}
		
		
		
    	int a =veriDAO.setInsuranceverification(insuranceverification);
    	InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		model.addAttribute("menu", "admin");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceverifylist";
	}
	@RequestMapping(value="/insuranceplan", method = RequestMethod.GET)
	public String insuranceplan(HttpSession session,ModelMap model) {
		session.removeAttribute("waiver");
		model.addAttribute("menu", "health");
		return "insuranceplan";
 
	}
	
	@RequestMapping(value="/insuranceplan", method = RequestMethod.POST)
	public String insert_insuranceplan(HttpSession session,@ModelAttribute("Insuranceplan") @Valid Insuranceplan insuranceplan,BindingResult result,ModelMap model) {
		session.setAttribute("waiver",insuranceplan);
		if(result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
	    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
			model.addAttribute("insuranceplanform",insuranceplanForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "health");
			return "insuranceplan";
			
		}
	
		
    	int a =planDAO.setInsuranceplan(insuranceplan);
    	InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "health");
        return "insuranceplanlist";
	}
	
	@RequestMapping(value="/hardshipagreement", method = RequestMethod.GET)
	public String hardshipagreement(HttpSession session,ModelMap model) {
		
		session.removeAttribute("hard");
		model.addAttribute("menu", "authorization");
		return "hardshipagreement";
 
	}
	

	@RequestMapping(value="/hardshipagreement", method = RequestMethod.POST)
	public String insert_hardshipagreement(HttpSession session,@ModelAttribute("Hardshipagreement") @Valid Hardshipagreement Hardshipagreement,BindingResult result,ModelMap model) {
		
		session.setAttribute("hard",Hardshipagreement);
		if(result.hasErrors())
		{
			
			HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
	    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
			model.addAttribute("hardshipagreementform",hardshipagreementForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "authorization");
			return "hardshipagreement";
		}


    	int a =hardDAO.setHardshipagreement(Hardshipagreement);
    	HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		model.addAttribute("menu", "authorization");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "hardshiplist";
	}
	
	@RequestMapping(value="/staffchecklist", method = RequestMethod.GET)
	public String staffchecklist(HttpSession session,ModelMap model) {
		model.addAttribute("menu", "admin");
		session.removeAttribute("staff");
		return "staffchecklist";
 
	}
	
	@RequestMapping(value="/staffchecklist", method = RequestMethod.POST)
	public String insert_staffchecklist(HttpSession session,@ModelAttribute("Staffchecklist")  @Valid Staffchecklist staffchecklist,BindingResult result,ModelMap model) {
		session.setAttribute("staff",staffchecklist);
		/*if(result.hasErrors())
		{
			StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
	    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
			model.addAttribute("StaffchecklistForm",staffchecklistForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "admin");
			return "staffchecklist";
		}*/
		
		model.put("Staffchecklist", staffchecklist);
		model.addAttribute("StaffchecklistForm",staffchecklist);
    	int a =staffDAO.setStaffchecklist(staffchecklist);
    	StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "staffdetails";
	}
	
	@RequestMapping(value="/staffdetails", method = RequestMethod.GET)
	public String staffdetails(HttpServletRequest request,ModelMap model) {
		
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		return "staffdetails";
 
	}
	@RequestMapping(value="/viewstaffchecklist", method = RequestMethod.GET)
	public String viewstaffchecklist(HttpServletRequest request,@RequestParam("form_no") String form_no,ModelMap model,Staffchecklist staffchecklist){
		
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaff(form_no));
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		return "viewstaffchecklist";
 
	}

	@RequestMapping(value="/editstaffchecklist", method = RequestMethod.GET)
	public String editstaffchecklist(HttpServletRequest request,ModelMap model) {
		
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		return "editstaffchecklist";
	}

	
	@RequestMapping(value="/updatestaffchecklist", method=RequestMethod.POST)
	public String updatestaffchecklist(HttpServletRequest request,@ModelAttribute("staffchecklist") @Valid Staffchecklist staffchecklist,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      model.addAttribute("menu", "admin");
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			    
		        return "editinsuranceplan";
		}*/
		
		int status = staffDAO.updatestaffchecklist(staffchecklist, staffchecklist.getForm_no(), principal.getName());
		System.out.println(status);
		
		StaffchecklistForm staffchecklistForm = new StaffchecklistForm();
        
        staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
       
        model.addAttribute("StaffchecklistForm", staffchecklistForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "admin");
	        return "viewstaffchecklist";
		
	}
	@RequestMapping(value="/deletestaffchecklist", method=RequestMethod.GET)
	public String removestaffchecklist(@RequestParam("form_no") String form_no,ModelMap model, Principal principal) {
	
		int status=staffDAO.deletestaffchecklist(form_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		StaffchecklistForm staffchecklistForm = new StaffchecklistForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
        model.addAttribute("StaffchecklistForm", staffchecklistForm);
        model.addAttribute("menu", "admin");
		}
		
		return "staffchecklist";
	}
	
	
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String signup(HttpSession session,ModelMap model) {
		session.removeAttribute("signup");
		return "signup";
 
	}
	

	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String insert_signup(HttpSession session,@ModelAttribute("Signup")  @Valid Signup signup,BindingResult result,ModelMap model) {
		session.setAttribute("signup",signup);
		if(result.hasErrors())
		{
			SignupForm signupForm= new SignupForm();
	    	signupForm.setSignup(signDAO.getSignup());
			model.addAttribute("SignupForm",signupForm);
			model.addAttribute("Success","true");
			return "signup";
		}
		
		
    	int h =signDAO.setSignup(signup);
    	SignupForm signupForm= new SignupForm();
    	signupForm.setSignup(signDAO.getSignup());
		model.addAttribute("SignupForm",signupForm);

		
		return "login";
	}
	
	
	
	@RequestMapping(value="/doctorsignup", method = RequestMethod.GET)
	public String doctorsignup(HttpSession session,ModelMap model) {
		session.removeAttribute("doctorsignup");
		return "doctorsignup";
 
	}
	

	@RequestMapping(value="/doctorsignup", method = RequestMethod.POST)
	public String insert_doctorsignup(HttpSession session,@ModelAttribute("Doctorsignup")  @Valid Doctorsignup doctorsignup,BindingResult result,ModelMap model) {
		session.setAttribute("doctorsignup",doctorsignup);
		if(result.hasErrors())
		{
			DoctorsignupForm doctorsignupForm= new DoctorsignupForm();
	    	doctorsignupForm.setDoctorsignup(docDAO.getDoctorsignup());
			model.addAttribute("DoctorsignupForm",doctorsignupForm);
			model.addAttribute("Success","true");
			return "doctorsignup";
		}
		
		
    	int h =docDAO.setDoctorsignup(doctorsignup);
    	DoctorsignupForm doctorsignupForm= new DoctorsignupForm();
    	doctorsignupForm.setDoctorsignup(docDAO.getDoctorsignup());
		model.addAttribute("DoctorsignupForm",doctorsignupForm);
        return "login";
	}

	
	@RequestMapping(value="/treatform",method=RequestMethod.GET)
	public String treatform(HttpSession session, ModelMap model)
	{
		session.removeAttribute("consent");
		model.addAttribute("menu", "consent");
		return "treatform";
	}
	@RequestMapping(value="/treatminor",method=RequestMethod.GET)
	public String treatminor(HttpSession session,ModelMap model)
	{
		session.removeAttribute("minor");
		model.addAttribute("menu", "consent");
		return "treatminor";
	}
	
	
	@RequestMapping(value="/medicalrecords",method=RequestMethod.GET)
	public String medicalrecords(HttpSession session,ModelMap model)
	{
		session.removeAttribute("medical");
		model.addAttribute("menu", "authorization");
		return "medicalrecords";
	}
	
	@RequestMapping(value="/medicalrecords", method = RequestMethod.POST)
	public String insertmedicalDetails(HttpSession session,@ModelAttribute("MedicalRecords") @Valid MedicalRecords medicaldetails,BindingResult result,
			ModelMap model) 
		{		
		session.setAttribute("medical",medicaldetails);	
		if (result.hasErrors())
			{
				MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
				medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
				model.addAttribute("MedicalRecordsForm",medicalrecordsform);
				model.addAttribute("success","true");
				model.addAttribute("menu", "authorization");
				return "medicalrecords";

			}
		
		model.addAttribute("MedicalRecordsForm",medicaldetails);
		int a=medicalDAO.setMedicalDetails(medicaldetails);
        MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "authorization");
		System.out.println("MedicalRecords");
	    
		return "medicalrecordslist";
 
	}

	@RequestMapping(value="/medicalrecordslist", method = RequestMethod.GET)
	public String medicalrecordslist(HttpServletRequest request,ModelMap model) {
		
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "authorization");
		return "medicalrecordslist";
 
	}
	@RequestMapping(value="/viewmedicalrecords", method = RequestMethod.GET)
	public String viewmedicalrecords(HttpServletRequest request,@RequestParam("medical_no") String medical_no,ModelMap model,MedicalRecords medicaldetails){
		
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails(medical_no));
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "authorization");
		return "viewmedicalrecords";
 
	}
	
	@RequestMapping(value="/editmedical", method = RequestMethod.GET)
	public String editmedical(HttpServletRequest request,ModelMap model) {
		
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "authorization");
		return "editmedical";
	}
	
	@RequestMapping(value="/updatemedicalrecords", method=RequestMethod.POST)
	public String updatemedicalrecords(HttpServletRequest request,@ModelAttribute("MedicalRecords") @Valid MedicalRecords medicaldetails,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			    model.addAttribute("menu", "authorization");
		        return "editinsuranceplan";
		}*/
		
		int status = medicalDAO.updatemedical(medicaldetails, medicaldetails.getMedical_no(), principal.getName());
		System.out.println(status);
		
		MedicalRecordsForm medicalrecordForm = new MedicalRecordsForm();
        
        medicalrecordForm.setMedicalDetails(medicalDAO.getMedicalDetails());
       
        model.addAttribute("MedicalRecordsForm", medicalrecordForm);
        model.addAttribute("menu", "authorization");
	       model.addAttribute("success","true");
	        return "viewmedicalrecords";
		
	}
	@RequestMapping(value="/deletemedicalrecords", method=RequestMethod.GET)
	public String removemedicalrecords(@RequestParam("medical_no") String medical_no,ModelMap model, Principal principal) {
	
		int status=medicalDAO.deletemedicalrecords(medical_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		MedicalRecordsForm medicalrecordsForm = new MedicalRecordsForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		medicalrecordsForm.setMedicalDetails(medicalDAO.getMedicalDetails());
        model.addAttribute("MedicalRecordsForm", medicalrecordsForm);
        model.addAttribute("menu", "authorization");
      
		}
		
		return "medicalrecords";
	}
	
	
	@RequestMapping(value="/screeningAuthz",method=RequestMethod.GET)
	public String screeningAuthz(HttpSession session,ModelMap model)
	{
		session.removeAttribute("screen");
		model.addAttribute("menu", "authorization");
		return "screeningAuthz";
	}
	@RequestMapping(value="/screeningAuthz", method=RequestMethod.POST)
	public String AddscreeningDetails(HttpSession session,@ModelAttribute("screeningAuthz") @Valid screeningAuthz screeningdetails,
			BindingResult result,ModelMap model) 
	{		
		session.setAttribute("screen", screeningdetails);
		if (result.hasErrors())
		{
			ScreeningAuthzForm screeningauthzform= new ScreeningAuthzForm();
			screeningauthzform.setScreeningDetails(screenDAO.getScreeningDetails());
			model.addAttribute("ScreeningAuthzForm",screeningauthzform);
			model.addAttribute("success","true");
			model.addAttribute("menu", "authorization");
			return "screeningAuthz";
	    }
		
		//Add function
		model.addAttribute("ScreeningAuthzForm",screeningdetails);
		int a=screenDAO.setScreeningDetails(screeningdetails);
        ScreeningAuthzForm screeningauthzform= new ScreeningAuthzForm();
		screeningauthzform.setScreeningDetails(screenDAO.getScreeningDetails());
		model.addAttribute("ScreeningAuthzForm",screeningauthzform);
		model.addAttribute("menu", "authorization");
		System.out.println("Screening");
		
		//Show view page
		 return "screeninglist";
	}
	
	@RequestMapping(value="/screeninglist", method = RequestMethod.GET)
	public String screeniglist(HttpServletRequest request,ModelMap model) {
		
		ScreeningAuthzForm screeningauthzForm= new ScreeningAuthzForm();
    	screeningauthzForm.setScreeningDetails(screenDAO.getScreeningDetails());
		model.addAttribute("ScreeningAuthzForm",screeningauthzForm);
		model.addAttribute("menu", "authorization");
		return "screeninglist";
 
	}
	
	@RequestMapping(value="/viewscreeningauthz", method = RequestMethod.GET)
	public String viewscreeningauthz(HttpServletRequest request,@RequestParam("screen_no") String screen_no,ModelMap model,screeningAuthz screeningdetails){
		
		ScreeningAuthzForm screeningauthzForm= new ScreeningAuthzForm();
    	screeningauthzForm.setScreeningDetails(screenDAO.getScreening(screen_no));
		model.addAttribute("ScreeningAuthzForm",screeningauthzForm);
		model.addAttribute("menu", "authorization");
		return "viewscreeningauthz";
 
	}
	@RequestMapping(value="/editscreeningauthz", method = RequestMethod.GET)
	public String editscreeningauthz(HttpServletRequest request,ModelMap model) {
		
		ScreeningAuthzForm screeningauthzForm= new ScreeningAuthzForm();
    	screeningauthzForm.setScreeningDetails(screenDAO.getScreeningDetails());
		model.addAttribute("ScreeningAuthzForm",screeningauthzForm);
		model.addAttribute("menu", "authorization");
		return "editscreeningauthz";
	}
	
	@RequestMapping(value="/updatescreeningauthz", method=RequestMethod.POST)
	public String updatescreeningauthz(HttpServletRequest request,@ModelAttribute("screeningAuthz") @Valid screeningAuthz screeningauthz,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			    model.addAttribute("menu", "authorization");
		        return "editinsuranceplan";
		}*/
		
		int status = screenDAO.updatescreeningauthz(screeningauthz, screeningauthz.getScreen_no(), principal.getName());
		System.out.println(status);
		
		ScreeningAuthzForm screeningauthzForm = new ScreeningAuthzForm();
        
        screeningauthzForm.setScreeningDetails(screenDAO.getScreeningDetails());
       
        model.addAttribute("ScreeningAuthzForm", screeningauthzForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	        return "viewscreeningauthz";
		
	}
	@RequestMapping(value="/deletescreeningauthz", method=RequestMethod.GET)
	public String removescreeningauthz(@RequestParam("screen_no") String screen_no,ModelMap model, Principal principal) {
	
		int status=screenDAO.deletescreeningauthz(screen_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		ScreeningAuthzForm screeningauthzForm = new ScreeningAuthzForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		screeningauthzForm.setScreeningDetails(screenDAO.getScreeningDetails());
        model.addAttribute("ScreeningAuthzForm", screeningauthzForm);
        model.addAttribute("menu", "authorization");
		}
		
		return "screeningAuthz";
	}
	
	
	


		
		@RequestMapping(value="/Assignment",method=RequestMethod.GET)
		public String Assignment(HttpSession session,ModelMap model)
		{
			session.removeAttribute("assignment");
			model.addAttribute("menu", "authorization");
			return "Assignment";
		}
			
	//validation
	
	@RequestMapping(value="/Assignment", method = RequestMethod.POST)
	public String insertassignmentDetails(HttpSession session,@ModelAttribute("Assignment") @Valid Assignment assignmentdetails,BindingResult result,ModelMap model) {
		
			session.setAttribute("assignment",assignmentdetails);	
			if (result.hasErrors())
			{
				AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
				assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
				model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
				model.addAttribute("success","true");
				model.addAttribute("menu", "authorization");
				return "Assignment";
			}
				
		model.addAttribute("AssignmentDetailsForm",assignmentdetails);
		int a=assignmentDAO.setAssignmentDetails(assignmentdetails);
         AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
		assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
		model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
		model.addAttribute("menu", "authorization");
		System.out.println("assignment");
	    
		return "assignmentlist";
 
	}
	
	
	@RequestMapping(value="/assignmentlist", method = RequestMethod.GET)
	public String assignmentlist(HttpServletRequest request,ModelMap model) {
		
		 AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
			assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
			model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
			model.addAttribute("menu", "authorization");
		
		return "assignmentlist";
 
	}
	
	@RequestMapping(value="/viewassignment", method = RequestMethod.GET)
	public String viewassignment(HttpServletRequest request,@RequestParam("assignment_no") String assignment_no,ModelMap model)
	{
		
		 AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
			assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignment(assignment_no));
			model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
			model.addAttribute("menu", "authorization");
		return "viewassignment";
 
	}

	@RequestMapping(value="/editassignment", method = RequestMethod.GET)
	public String editassignment(HttpServletRequest request,ModelMap model) {
		
		AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
    	assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
		model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
		model.addAttribute("menu", "authorization");
		return "editassignment";
	}
	
	@RequestMapping(value="/updateassignment", method=RequestMethod.POST)
	public String updateassignment(HttpServletRequest request,@ModelAttribute("Assignment") @Valid Assignment assignmentdetails,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			model.addAttribute("menu", "authorization");    
		        return "editinsuranceplan";
		}*/
		
		int status = assignmentDAO.updateassignment(assignmentdetails, assignmentdetails.getAssignment_no(), principal.getName());
		System.out.println("assignment_id"+assignmentdetails.getAssignment_no());
		System.out.println(status);
		
		AssignmentDetailsForm assignmentdetailsform = new AssignmentDetailsForm();
        
        assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
       
        model.addAttribute("AssignmentDetailsForm", assignmentdetailsform);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	        return "viewassignment";
		
	}
	@RequestMapping(value="/deleteassignmentdetails", method=RequestMethod.GET)
	public String removeassignmentdetails(@RequestParam("assignment_no") String assignment_no,ModelMap model, Principal principal) {
	
		int status=assignmentDAO.deleteassignment(assignment_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		AssignmentDetailsForm assignmentdetailsform = new AssignmentDetailsForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
        model.addAttribute("AssignmentDetailsForm", assignmentdetailsform);
        model.addAttribute("menu", "authorization");
		}
		
		return "Assignment";
	}
	
	@RequestMapping(value="/Hippaprivacy",method=RequestMethod.GET)
	public String Hippaprivacy(HttpSession session,ModelMap model)
	{
		session.removeAttribute("hippa");
		model.addAttribute("menu", "authorization");
		return "Hippaprivacy";
	}
	
	
	@RequestMapping(value="/Hippaprivacy", method = RequestMethod.POST)
	public String inserthippaDetails(HttpSession session,@ModelAttribute("HippaPrivacy") @Valid HippaPrivacy privacydetails,BindingResult result,ModelMap model) 
		{		
		session.setAttribute("hippa",privacydetails);	
		if (result.hasErrors())
			{
				HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
				hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
				model.addAttribute("HippaPrivacyForm",hippaprivacyform);
				model.addAttribute("success","true");
				model.addAttribute("menu", "authorization");
				return "Hippaprivacy";
			}

		
		model.addAttribute("HippaPrivacyForm",privacydetails);
		int a=hippaDAO.setPrivacyDetails(privacydetails);
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		System.out.println("Hippa");
	    
		return "hippalist";
		}
	@RequestMapping(value="/hippalist", method = RequestMethod.GET)
	public String hippalist(HttpServletRequest request,ModelMap model) {
		
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		return "hippalist";
 
	}
	
	@RequestMapping(value="/viewhippa", method = RequestMethod.GET)
	public String viewhippa(HttpServletRequest request,@RequestParam("hippa_no") String hippa_no,ModelMap model,HippaPrivacy privacydetails){
		
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getHippa(hippa_no));
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		return "viewhippa";
 
	}
	@RequestMapping(value="/edithippaprivacy", method = RequestMethod.GET)
	public String edithippa(HttpServletRequest request,ModelMap model) {
		
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
    	hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		return "edithippaprivacy";
	}
	
	@RequestMapping(value="/updatehippaprivacy", method=RequestMethod.POST)
	public String updatehippaprivacy(HttpServletRequest request,@ModelAttribute("HippaPrivacy") @Valid HippaPrivacy privacydetails,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			  model.addAttribute("menu", "authorization");  
		        return "editinsuranceplan";
		}*/
		
		int status = hippaDAO.updatehippaprivacy(privacydetails, privacydetails.getHippa_no(), principal.getName());
		System.out.println(status);
		
		HippaPrivacyForm hippaprivacyform = new HippaPrivacyForm();
        
        hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
       
        model.addAttribute("HippaPrivacyForm", hippaprivacyform);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	        return "viewhippa";
		
	}
	@RequestMapping(value="/deletehippaprivacy", method=RequestMethod.GET)
	public String removehippa(@RequestParam("hippa_no") String hippa_no,ModelMap model, Principal principal) {
	
		int status=hippaDAO.deletehippaprivacy(hippa_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		HippaPrivacyForm hippaprivacyForm = new HippaPrivacyForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		hippaprivacyForm.setPrivacyDetails(hippaDAO.getPrivacyDetails());
        model.addAttribute("HippaPrivacyDetails", hippaprivacyForm);
        model.addAttribute("menu", "authorization");
		}
		
		return "Hippaprivacy";
	}
	
		
	@RequestMapping(value="/treatform", method = RequestMethod.POST)
	public String inserttreatDetails(HttpSession session,@ModelAttribute("Treatform") @Valid Treatform treatdetails,BindingResult result,
			ModelMap model) {
		session.setAttribute("consent",treatdetails);
		if (result.hasErrors())
		{
			TreatForm treatform= new TreatForm();
			treatform.setTreatform(treatDAO.getTreatDetails());
			model.addAttribute("treatform",treatform);
			model.addAttribute("success","true");
			model.addAttribute("menu", "consent");
			return "treatform";
		}
		
		model.addAttribute("TreatForm",treatdetails);
		int a=treatDAO.setTreatDetails(treatdetails);
         TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getTreatDetails());
		model.addAttribute("treatform",treatform);
		model.addAttribute("menu", "consent");

		System.out.println("treat");
	    
		return "treatformlist";
 
	}
	
		
	
	@RequestMapping(value="/treatminor", method = RequestMethod.POST)
	public String insertminorDetails(HttpSession session,@ModelAttribute("TreatMinor") @Valid TreatMinor minordetails,BindingResult result,ModelMap model) {
		session.setAttribute("minor",minordetails);
		if (result.hasErrors())
		{
			TreatMinorDetailsForm treatminordetailsform= new TreatMinorDetailsForm();
			treatminordetailsform.setMinorDetails(minorDAO.getMinorDetails());
			model.addAttribute("TreatMinorDetailsForm",treatminordetailsform);
			model.addAttribute("success","true");
			model.addAttribute("menu", "consent");
			return "treatminor";
		}
			
		model.addAttribute("TreatMinorDetailsForm",minordetails);
		int a=minorDAO.setMinorDetails(minordetails);
         TreatMinorDetailsForm treatminordetailsform= new TreatMinorDetailsForm();
		treatminordetailsform.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("TreatMinorDetailsForm",treatminordetailsform);
		model.addAttribute("menu", "consent");
		System.out.println("treatminor");
	    
		return "treatminorlist";
 
	}
	
	
	@RequestMapping(value="/patientDetails",method=RequestMethod.GET)
	public String patientDetails(HttpSession session,ModelMap model)
	
	{
		session.removeAttribute("patient");
		PatientDetailsForm patientdetailsform= new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		model.addAttribute("patientDetailsForm",patientdetailsform);
		 model.addAttribute("noofrows",patientDAO.getPatientDetails().size());
		 model.addAttribute("menu", "patientInfo");
		return "patientDetails";
	}
	@RequestMapping(value="/patientDetails", method = RequestMethod.POST)
	public String insert_patientdetails(HttpServletRequest request,HttpSession session,@ModelAttribute("PatientDetails")  @Valid PatientDetails patientDetails,BindingResult result,ModelMap model) {
		session.setAttribute("patient",patientDetails);
		String type= request.getParameter("Type_Of_Accident");
		System.out.println("type of accident="+type);
		
		if(result.hasErrors())
			{
			
				PatientDetailsForm patientdetailsform = new PatientDetailsForm();
				patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
				model.addAttribute("patientDetailsForm",patientdetailsform);
				model.addAttribute("Success","true");
				model.addAttribute("menu", "patientInfo");
				return "patientDetails";
			}
			int a = patientDAO.setPatientDetails(patientDetails);
			PatientDetailsForm patientdetailsform = new PatientDetailsForm();
			patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		    String age=patientDAO.getAge();
		    System.out.println("controller age"+age);
		    /*int major=Integer.parseInt(age);*/
		    /*String major=""+age;*/
		    /*request.setAttribute("major",age);*/
		    model.addAttribute("age",age);
			model.addAttribute("patientDetailsForm",patientdetailsform);
			model.addAttribute("menu", "patientInfo");
			return  type;
	
	       
	       // return "patientDetails";

		}
	


	@RequestMapping(value="/viewpatient", method=RequestMethod.GET)
	public String viewpatient(HttpServletRequest request,ModelMap model, Principal principal) {
		
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientdetailsform);
        System.out.println("patient="+patientdetailsform.getPatientDetails().size());
        model.addAttribute("menu", "patientInfo");
        System.out.println("Patient");
		return "viewpatient";
	}
	@RequestMapping(value="/patientDetailsList", method=RequestMethod.GET)
	public String patientDetailsList(HttpServletRequest request,@RequestParam("patient_id") String patient_id,ModelMap model,PatientDetails patient)
	{
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		patientdetailsform.setPatientDetails(patientDAO.viewPatientDetails(patient_id));
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("patientDetailsForm", patientdetailsform);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "patientInfo");
		return "patientDetailsList";
	}
	@RequestMapping(value="/editpatientdetails", method=RequestMethod.GET)
	public String editPatientDetails(HttpServletRequest request,@RequestParam("patient_id") String patient_id,ModelMap model,PatientDetails patient)
	{
		
		//RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
       PatientDetailsForm patientdetailsform = new PatientDetailsForm();
      //  radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport(pid));
        patientdetailsform.setPatientDetails(patientDAO.viewPatientDetails(patient_id));
        model.addAttribute("patientDetailsForm", patientdetailsform);
        model.addAttribute("menu", "patientInfo");
		return "editpatientdetails";
	}
	@RequestMapping(value="/updatepatientdetails", method=RequestMethod.POST)
	public String updatePatientDetails(HttpServletRequest request,@ModelAttribute("PatientDetails") @Valid PatientDetails patient,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
		//	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
	    PatientDetailsForm patientDetailsForm = new PatientDetailsForm();
	    //  radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport(report.getPid()));
	      patientDetailsForm.setPatientDetails(patientDAO.viewPatientDetails(patient.getPatient_id()));
	        model.addAttribute("patientDetailsForm", patientDetailsForm);
			    model.addAttribute("menu", "patientInfo");
		        return "editpatientdetails";
		}*/
		
		
		int status = patientDAO.updatePatientDetails(patient, patient.getPatient_id(), principal.getName());
		System.out.println(status);
		
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientdetailsform);
        model.addAttribute("success","true");
        model.addAttribute("menu", "patientInfo");
	        return "viewpatient";
		
	}

	@RequestMapping(value="/deletepatientdetails", method=RequestMethod.GET)
	public String removePatientDetails(@RequestParam("patient_id") String patient_id,ModelMap model, Principal principal) {
	
		int status = patientDAO.deletePatientDetails(patient_id,  principal.getName());
		if(status==1)
		{
        model.addAttribute("success","true");
      //RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
        PatientDetailsForm patientDetailsForm = new PatientDetailsForm();
        //radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
       patientDetailsForm.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientDetailsForm);
        model.addAttribute("menu", "patientInfo");
		}
		
		return "viewpatient";
		
	}

	@RequestMapping(value="/hardshiplist", method = RequestMethod.GET)
	public String hardshiplist(HttpServletRequest request,ModelMap model) {
		
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		model.addAttribute("menu", "authorization");
		return "hardshiplist";
 
	}
	
	@RequestMapping(value="/viewhardship", method=RequestMethod.GET)
	public String viewhardship(HttpServletRequest request,@RequestParam("agreement_no") String agreement_no,ModelMap model,Hardshipagreement hardship)
	{
		
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
        
		hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement(agreement_no));
	
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		model.addAttribute("menu", "authorization");
		
		return "viewhardship";
	}
	
	@RequestMapping(value="/insuranceinfolist", method = RequestMethod.GET)
	public String insuranceinfolist(HttpServletRequest request,ModelMap model) {
		
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		model.addAttribute("menu", "health");
		return "insuranceinfolist";
 
	}
		
	@RequestMapping(value="/viewinsuranceinformation", method = RequestMethod.GET)
	public String viewinsuranceinformation(HttpServletRequest request,@RequestParam("number") String number,ModelMap model,Insuranceinformation insuranceinformation){
		
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation(number));
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		model.addAttribute("menu", "health");
		return "viewinsuranceinformation";
 
	}
	@RequestMapping(value="/insuranceplanlist", method = RequestMethod.GET)
	public String insuranceplanlist(HttpServletRequest request,ModelMap model) {
		
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "health");
		return "insuranceplanlist";
 
	}
	
	@RequestMapping(value="/viewinsuranceplan", method = RequestMethod.GET)
	public String viewinsuranceplan(HttpServletRequest request,@RequestParam("no") String no,ModelMap model,Insuranceplan insuranceplan){
		
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsurance(no));
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "health");
		return "viewinsuranceplan";
 
	}
   
	@RequestMapping(value="/editinsuranceplan", method = RequestMethod.GET)
	public String editinsuranceplan(HttpServletRequest request,ModelMap model) {
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "health");
		return "editinsuranceplan";
 
	}
	@RequestMapping(value="/updateinsuranceplan", method=RequestMethod.POST)
	public String updateinsuranceplan(HttpServletRequest request,@ModelAttribute("insuranceplan") @Valid Insuranceplan insuranceplan,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			    model.addAttribute("menu", "health");
		        return "editinsuranceplan";
		}*/
		
		int status = planDAO.updateinsuranceplan(insuranceplan, insuranceplan.getNo(), principal.getName());
		System.out.println(status);
		
		InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
        
        insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
       
        model.addAttribute("insuranceplanform", insuranceplanForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "health");
	        return "viewinsuranceplan";
		
	}

	@RequestMapping(value="/deleteinsuranceplan", method=RequestMethod.GET)
	public String removeInsuranceplan(@RequestParam("no") String no,ModelMap model, Principal principal) {
	
		int status=planDAO.deleteinsuranceplan(no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
        model.addAttribute("insuranceplanform", insuranceplanForm);
        model.addAttribute("menu", "health");
		}
		
		return "insuranceplan";
	}
	
	@RequestMapping(value="/insuranceverifylist", method = RequestMethod.GET)
	public String insuranceverifylist(HttpServletRequest request,ModelMap model) {
		
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		  model.addAttribute("menu", "admin");
		return "insuranceverifylist";
 
	}
	
	@RequestMapping(value="/viewinsuranceverification", method = RequestMethod.GET)
	public String viewinsuranceverification(HttpServletRequest request,@RequestParam("form_no") String form_no,ModelMap model,Insuranceverification insuranceverification){
		
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification(form_no));
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		 model.addAttribute("menu", "admin");
		return "viewinsuranceverification";
 
	}
	

	

	@RequestMapping(value="/treatformlist", method = RequestMethod.GET)
	public String treatformlist(HttpServletRequest request,ModelMap model) {
		

		TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getTreatDetails());
		System.out.println(treatform);
		model.addAttribute("treatform",treatform);
		 model.addAttribute("menu", "admin");
		
		return "treatformlist";
 
	}	

		
	@RequestMapping(value="/viewtreatform", method = RequestMethod.GET)
	public String viewtreatform(HttpServletRequest request,@RequestParam("treat_no") String treat_no,ModelMap model,Treatform treatdetails){
		

		TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getTreatDetails(treat_no));
		System.out.println(treatform);
		model.addAttribute("treatform",treatform);
		 model.addAttribute("menu", "consent");
		return "viewtreatform";
 
	}
	

	@RequestMapping(value="/edittreatform", method = RequestMethod.GET)
	public String edittreatform(HttpServletRequest request,ModelMap model) {
		 TreatForm treatform= new TreatForm();
			treatform.setTreatform(treatDAO.getTreatDetails());
			model.addAttribute("treatform",treatform);
			 model.addAttribute("menu", "consent");
		
		return "edittreatform";
		
 
	}
	
	@RequestMapping(value="/updatetreatform", method=RequestMethod.POST)
	public String updatetreatform(HttpSession session,@ModelAttribute("Treatform") @Valid Treatform treatdetails,BindingResult result,
			ModelMap model) {
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			    
		        return "editinsuranceplan";
		}*/
		
		int status = treatDAO.updatetreatform(treatdetails, treatdetails.getTreat_no());
		System.out.println(status);
		 TreatForm treatform= new TreatForm();
			treatform.setTreatform(treatDAO.getTreatDetails());
			model.addAttribute("treatform",treatform);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "consent");
	        return "viewtreatform";
		
	}
	

	@RequestMapping(value="/deletetreatform", method=RequestMethod.GET)
	public String removetreatform(@RequestParam("treat_no") String treat_no,ModelMap model, Principal principal) {
	
		int status=treatDAO.deletetreatform(treat_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
        TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getTreatDetails());
		model.addAttribute("treatform",treatform);
		 model.addAttribute("menu", "consent");
		}
		
		return "treatform";
	}
	
	@RequestMapping(value="/treatminorlist", method = RequestMethod.GET)
	public String treatminorlist(HttpServletRequest request,ModelMap model) {
		
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
		return "treatminorlist";
 
	}

	
	@RequestMapping(value="/viewtreatminor", method = RequestMethod.GET)
	public String viewtreatminor(HttpServletRequest request,@RequestParam("minor_no") String minor_no,ModelMap model,TreatMinor minordetails){
		
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails(minor_no));
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
		return "viewtreatminor";
 
	}

	@RequestMapping(value="/edittreatminor", method = RequestMethod.GET)
	public String edittreatminor(HttpServletRequest request,ModelMap model) {

		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
		return "edittreatminor";
		
 
	}
	
	@RequestMapping(value="/updatetreatminor", method=RequestMethod.POST)
	public String updatetreatminor(HttpSession session,@ModelAttribute("TreatMinor") @Valid TreatMinor minordetails,BindingResult result,ModelMap model) {
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			 model.addAttribute("menu", "consent");    
		        return "editinsuranceplan";
		}*/
		
		int status =minorDAO.updatetreatminor(minordetails, minordetails.getMinor_no());
		System.out.println(status);
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "consent");
	        return "viewtreatminor";
		
	}
	

	@RequestMapping(value="/deletetreatminor", method=RequestMethod.GET)
	public String removetreatminor(@RequestParam("minor_no") String minor_no,ModelMap model, Principal principal) {
	
		int status=minorDAO.deletetreatminor(minor_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
        TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
		}
		return "treatminor";
	}
	
	
	
	
	@RequestMapping(value="/edithardship", method = RequestMethod.GET)
	public String edithardship(HttpServletRequest request,ModelMap model) {
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		 model.addAttribute("menu", "authorization");
		return "edithardship";
		
 
	}
	
	@RequestMapping(value="/updatehardship", method=RequestMethod.POST)
	public String updatehardship(HttpServletRequest request,@ModelAttribute("Hardshipagreement") @Valid Hardshipagreement Hardshipagreement,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getPlan(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			 model.addAttribute("menu", "authorization");    
		        return "editinsuranceplan";
		}*/
		
		int status = hardDAO.updatehardship(Hardshipagreement, Hardshipagreement.getAgreement_no(), principal.getName());
		System.out.println(status);
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	        return "viewhardship";
		
	}
	

	@RequestMapping(value="/deletehardship", method=RequestMethod.GET)
	public String removehardship(@RequestParam("agreement_no") String agreement_no,ModelMap model, Principal principal) {
	
		int status=hardDAO.deletehardship(agreement_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
        HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("hardshipagreementform",hardshipagreementForm);		}
		 model.addAttribute("menu", "authorization");
		return "hardshiplist";
	}
	
	
	@RequestMapping(value="/editinsuranceinformation", method = RequestMethod.GET)
	public String editinsuranceinformation(HttpServletRequest request,ModelMap model) {
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		 model.addAttribute("menu", "health");
		return "editinsuranceinformation";
	}
	

	@RequestMapping(value="/updateinsuranceinformation", method=RequestMethod.POST)
	public String updateinsuranceinformation(HttpServletRequest request,@ModelAttribute("Insuranceinformation") @Valid Insuranceinformation insuranceinformation,
			BindingResult result,ModelMap model,Principal principal)
	{
		
		int status = infoDAO.updateinsuranceinformation(insuranceinformation, insuranceinformation.getNumber());
		System.out.println(status);
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);   
		model.addAttribute("success","true");
		 model.addAttribute("menu", "health");
	        return "viewinsuranceinformation";
		
	}
	
	@RequestMapping(value="/deleteinsuranceinformation", method=RequestMethod.GET)
	public String removeinsuranceinformation(@RequestParam("number") String number,ModelMap model, Principal principal) {
	
		int status=infoDAO.deleteinsuranceinformation(number);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		 model.addAttribute("menu", "health");
		}
	return "insuranceinformation";
	}
	
	@RequestMapping(value="/editinsuranceverification", method = RequestMethod.GET)
	public String editinsuranceverification(HttpServletRequest request,ModelMap model) {
		
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		 model.addAttribute("menu", "admin");
		return "editinsuranceverification";
	}
	




	@RequestMapping(value="/updateinsuranceverification", method=RequestMethod.POST)
	public String updateinsuranceverification(HttpServletRequest request,@ModelAttribute("Insuranceverification") @Valid Insuranceverification insuranceverification,
			BindingResult result,ModelMap model,Principal principal)
	{
		
		int status = veriDAO.updateinsuranceverification(insuranceverification, insuranceverification.getForm_no());
		System.out.println(status);
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);    
		model.addAttribute("success","true");
		 model.addAttribute("menu", "admin");
	        return "viewinsuranceverification";
		
	}
	

	@RequestMapping(value="/deleteinsuranceverification", method=RequestMethod.GET)
	public String removeinsuranceverification(@RequestParam("form_no") String form_no,ModelMap model, Principal principal) {
	
		int status=veriDAO.deleteinsuranceverification(form_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);  
		 model.addAttribute("menu", "admin");
		}
		return "insuranceverification";
	}
	

	/*@RequestMapping(value="/editstaffchecklist", method = RequestMethod.GET)
	public String editstaffchecklist(HttpServletRequest request,ModelMap model) {
		
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
				 model.addAttribute("menu", "admin");
		return "editstaffchecklist";
	}*/


	

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
		 model.addAttribute("menu", "doctor");
		
		

		return "moretest";
 
	}
		@RequestMapping(value="/soapnotes", method = RequestMethod.GET)
	public String soapnotes(ModelMap model) {
			model.addAttribute("menu", "motes");
	      return "soapnotes";
	}
	
	@RequestMapping(value="/soapnotes", method = RequestMethod.POST)
	public String insert_soapnotes(@ModelAttribute("SoapNotes")  @Valid SoapNotes soapnotes,BindingResult result,ModelMap model) {
		/*if(result.hasErrors())
			{
				RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
				radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
				model.addAttribute("RadiologicReportForm",radiologicReportForm);
				model.addAttribute("Success","true");
				model.addAttribute("menu", "doctor");
				return "radiologicreport";
			}
		*/
		if(result.hasErrors())
		{
			SoapnotesForm soapnotesForm = new SoapnotesForm();
			soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
			model.addAttribute("soapnotesForm", soapnotesForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "soapnotes";
		}
		model.put("SoapNotes", soapnotes);
		model.addAttribute("soapnotesForm",soapnotes);
    	int a=soapDAO.setSoapnotes(soapnotes);
    	SoapnotesForm soapnotesForm= new SoapnotesForm();
    	soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
		model.addAttribute("soapnotesForm",soapnotesForm);
		model.addAttribute("menu", "notes");
		return "viewsoapnotes";
 
	}
	@RequestMapping(value="/editsoapnotes", method=RequestMethod.GET)
	public String editsoapnotes(HttpServletRequest request,@RequestParam("soapid") String soapid,ModelMap model,SoapNotes soap)
	{
		
		SoapnotesForm soapnotesForm = new SoapnotesForm();
       
        soapnotesForm.setSoapnotes(soapDAO.getSoap(soapid));
	
		model.addAttribute("soapnotesForm", soapnotesForm);
		model.addAttribute("menu", "notes");
		
		return "editsoapnotes";
	}
	
	@RequestMapping(value="/updatesoapnotes", method=RequestMethod.POST)
	public String updatesoapnotes(HttpServletRequest request,@ModelAttribute("soapnotes") @Valid SoapNotes soapnotes,
			BindingResult result,ModelMap model,Principal principal)
	{
		if (result.hasErrors())
		{
			SoapnotesForm soapnotesForm = new SoapnotesForm();
	     
	      soapnotesForm.setSoapnotes(soapDAO.getSoap(soapnotes.getSoapid()));
	      
	        model.addAttribute("soapnotesForm", soapnotesForm);
	        model.addAttribute("menu", "notes");    
		        return "editsoapnotes";
		}
		System.out.println("soapid"+soapnotes.getSoapid());
		int status = soapDAO.updatesoapnotes(soapnotes, soapnotes.getSoapid(), principal.getName());
		System.out.println(status);
		
		SoapnotesForm soapnotesForm = new SoapnotesForm();
        
       soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
       
        model.addAttribute("soapnotesForm", soapnotesForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "notes");
	        return "viewsoapnotes";
		
	}
	

	@RequestMapping(value="/viewsoapnotes", method=RequestMethod.GET)
	public String viewSoapNotes(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		  SoapnotesForm soapnotesForm = new SoapnotesForm();
		 //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		 soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
		  //model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		  	model.addAttribute("soapnotesForm", soapnotesForm);
		  	model.addAttribute("menu", "notes");
		return "viewsoapnotes";
	}
	@RequestMapping(value="/soapNotesList", method=RequestMethod.GET)
	public String soapnoteslist(HttpServletRequest request,@RequestParam("soapid") String soapid,ModelMap model,SoapNotes soap)
	{
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		SoapnotesForm soapnotesForm = new SoapnotesForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		soapnotesForm.setSoapnotes(soapDAO.getSoap((soapid)));
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("soapnotesForm", soapnotesForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "notes");
		return "soapNotesList";
	}
	@RequestMapping(value="/deletesoapnotes", method=RequestMethod.GET)
	public String removesoapnotes(@RequestParam("soapid") String soapid,ModelMap model, Principal principal) {
	
		int status=soapDAO.deletesoapnotes(soapid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		SoapnotesForm soapnotesForm = new SoapnotesForm();
		soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
        model.addAttribute("soapnotesForm", soapnotesForm);
        model.addAttribute("menu", "notes");
		}
		
		return "viewsoapnotes";
	}

	}
	
  