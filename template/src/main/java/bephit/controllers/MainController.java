	package bephit.controllers;
 
 
import java.util.List;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTML;
import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import bephit.dao.AssignmentDAO;
import bephit.dao.AutoaccidentDAO;
import bephit.dao.DoctorsignupDAO;
/*import bephit.dao.DoctorsignupDAO;*/
//import bephit.dao.DoctorsignupDAO;
import bephit.dao.DoctorsearchDAO;
import bephit.dao.DutiesunderDAO;
import bephit.dao.FootexamDAO;
import bephit.dao.FootquestionnarieDAO;

import bephit.dao.HamiltonchiropracticDAO;
import bephit.dao.HardshipagreementDAO;
import bephit.dao.HippaDAO;
import bephit.dao.HipquestionnaireDAO;
import bephit.dao.InsuranceinformationDAO;
import bephit.dao.InsuranceplanDAO;
import bephit.dao.InsuranceverificationDAO;
import bephit.dao.MainDAO;
import bephit.dao.MedicalDAO;
import bephit.dao.MoretestDAO;
import bephit.dao.QuadraplevisualDAO;
import bephit.dao.SymptomDAO;

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

import bephit.forms.DoctorsearchForm;
import bephit.forms.DoctorsignupForm;
import bephit.forms.HamiltonForm;
import bephit.forms.HamiltonchiropracticForm;
import bephit.forms.HardshipagreementForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.HipquestionnaireForm;
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

import java.util.*;
 
 
@Controller

@SessionAttributes({"physical","authorization","radio","waiver","info","injury","consent","minor","hard","screen","medical","assignment","hippa","staff","veri","first","role","signup","doctorsignup","patientid","soap","auto","visit","work","lastname","attorney","accident","dateofaccident","username","insurance","age","staffusername","pusername"})

public class MainController {
	
	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
	
	@Autowired
	DutiesunderDAO dutiesunderDAO;
	
	@Autowired  
	SignupDAO signupDAO;
	
	@Autowired  
	MainDAO mainDAO;
	
	@Autowired  
	SymptomDAO symptomDAO;
	
	
	@Autowired  
	HipquestionnaireDAO hipquestionnaireDAO; 
		
	@Autowired  
	FootquestionnarieDAO footquestionnarieDAO; 
	
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
	DoctorsearchDAO doctorDAO;

	@Autowired
	RadiologicReportDAO radioDAO;
	
	@Autowired
	SoapnotesDAO soapDAO;
	
	@Autowired
	QuadraplevisualDAO quadraplevisualDAO;
	
	
	
	static int id;
 
	@RequestMapping(value={"/", "/welcome"}, method = RequestMethod.GET)
	public String printWelcome(HttpSession session,HttpServletRequest request,ModelMap model, Principal principal ) {
		session.removeAttribute("lastname");		
		session.removeAttribute("attorney");
		session.removeAttribute("accident");
		session.removeAttribute("dateofaccident");
		 int role=mainDAO.getrole();
	       System.out.println("Role:"+role);
        model.addAttribute("menu","patientDetails");
		
		
		model.addAttribute("role",role);
	    session.setAttribute("role", role);
		if(role==0)
		{
			String username=request.getParameter("j_username");
			System.out.println("username"+principal.getName());
			PatientDetailsForm patientdetailsform = new PatientDetailsForm();
			patientdetailsform.setPatientDetails(patientDAO.getUsername(principal));
			if(patientDAO.getUsername(principal).size()>0)
			{
				
		   model.addAttribute("patientno","0");
		}
			 model.addAttribute("menu", "patientInfo");
	        model.addAttribute("patientDetailsForm", patientdetailsform);
		
	    	String pusername=principal.getName();
	        String age=patientDAO.getpatientAge(pusername);
			//session.removeAttribute("age");
			System.out.println("age"+age);
	        session.setAttribute("age",age);
	        return "viewpatient";
		}
		else if(role==2)
		{ 
			PatientDetailsForm patientdetailsform = new PatientDetailsForm();			
			patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
	        model.addAttribute("patientDetailsForm", patientdetailsform);	     
	      model.addAttribute("menu","adminpatient");
	        System.out.println("Patient");
	        model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());       
		    patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(1));
	        model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));	 
		    model.addAttribute("button","viewall");
		    model.addAttribute("success","false");
		    model.addAttribute("currentpage",1);
			
			
			return "viewallpatientdetails";
		}
		else
			model.addAttribute("menu","search");
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		//patientdetailsform.setPatientDetails(patientDAO.getUsername(principal));
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientdetailsform);
       // System.out.println("patient="+patientdetailsform.getPatientDetails().size());
       // model.addAttribute("menu", "search");
        System.out.println("Patient");
        model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());       
	    patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(1));
        model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		
		
		return "viewpatientdetails";
 
	}
	
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
 
	}
	@RequestMapping(value="/logintimedout", method = RequestMethod.GET)
	public String logintimedout(ModelMap model) {
		model.addAttribute("sessionerror","1");
		return "login";
 
	}
	
	@RequestMapping(value="/doctorsearch", method = RequestMethod.GET)
	public String searchform(Principal principal,HttpSession session, ModelMap model) {
		 if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
		 {
			 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
			
			 model.addAttribute("name",name);
		 }
		int username=docDAO.usernamevalidation((String)session.getAttribute("username"));
		if(hamiDAO.getHamiltonchiropracticpatientid((String)session.getAttribute("username")).size()==0)
		 {
			
			hamiDAO.usernamevalidation11((String)session.getAttribute("username"));
			
			System.out.println("deleted");
		}
		model.addAttribute("menu","doctorsearch");
		
		return "doctorsearch";
 
	}
	
	@RequestMapping(value="/doctorsearch", method = RequestMethod.POST)
	public String insert_doctorsearch(HttpSession session,HttpServletRequest request,ModelMap model) {
		
		
/*	if(result.hasErrors())
	{
		model.addAttribute("menu","doctorsearch");
	
		return "doctorsearch";
	}*/
		 if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
		 {
			 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
			 model.addAttribute("name",name);
			 System.out.println("name"+name);
			 
		 }	
	String username=request.getParameter("username");
	if(signupDAO.getPatientusername(username).size()==0)
	{
		model.addAttribute("menu","doctorsearch");
		model.addAttribute("psearch","true");
		return "doctorsearch";
		
	}
	session.setAttribute("username", username);	
	//String patientname=request.getParameter("patientname");
	int v=doctorDAO.Checkvalid(username);
			//id=getpatient_id();
		if(v==0)
		{
			model.addAttribute("menu","doctorsearch");
			model.addAttribute("Error","true");
			return "doctorsearch";
		}
		if(v>0)
		{
			//System.out.println("ahjsdk");
			if(physicalDAO.getPhysicalpatient_id(username).size()==0 && radioDAO.getRadiologicReport(username).size()==0 && hamiDAO.getHamiltonchiropracticpatientid(username).size()==0)
			
			{
				if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
				 {
					 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
					
					 model.addAttribute("name",name);
				 }
				model.addAttribute("visit","0");
				 model.addAttribute("menu","phyexam"); 
				 return "physicalexam";
			}	
	    	  
	    	
	    	   if(radioDAO.getRadiologicpatient_id(username).size()==0 && hamiDAO.getHamiltonchiropracticpatientid(username).size()==0 )
	    	   {
	    		  
	    		   model.addAttribute("menu","phyexam");
	    		   session.setAttribute("visit","0");
	    		   return "hamiltonchiropractic";
	    	   }
	    	 
	    	   
	    		   if(physicalDAO.getPhysicalpatient_id(username).size()==0)
	           {
	    			 
	    			   model.addAttribute("menu","phyexam");
	    			   session.setAttribute("visit","1");
	    		   return "physicalexam";
	           	
	           }
	    	   if(radioDAO.getRadiologicpatient_id(username).size()==0)
	           { 
	    		
	    		   model.addAttribute("menu","report");
	    		   session.setAttribute("visit","2");
	    		   return "radiologicreport";
	           	
	           }
	    	   
	    	   if(hamiDAO.getHamiltonchiropracticpatientid(username).size()==0)
	           { 
	    		  
	    		   model.addAttribute("menu","phyexam");
	    		   session.setAttribute("visit","1");
	    		   return "hamiltonchiropractic";
	           	
	           }   
			
			if(soapDAO.getusernameSoapnotes(username).size()>0)
			{
				session.removeAttribute("visit");  
				SoapnotesForm soapnotesForm = new SoapnotesForm();       
	    	        soapnotesForm.setSoapnotes(soapDAO.getusernameSoapnotes(username));
	    	        model.addAttribute("soapnotesForm", soapnotesForm);		
	    	        model.addAttribute("menu","notes");	
	    	        List<String> diagnosis=new ArrayList<String>();
	    	        diagnosis =soapDAO.getdiagnosis(username);
	    	        model.addAttribute("diagnosis",diagnosis);
				return "editsoapnotes";
			}
			session.removeAttribute("visit"); 
			session.setAttribute("visit","3");
			model.addAttribute("menu", "soapnotes");
			if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
			 {
				 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
				 model.addAttribute("name",name);
			 }	
			return "soapnotes"; 
			
		}
		
		/*if(v>0)
		   {
		    int b=doctorDAO.CheckDoctorsearch(emailid);
		    if(b==0)
	     	{	
    	     int a=doctorDAO.setDoctorsearch(doctorsearch);     	     
		     DoctorsearchForm doctorsearchForm= new DoctorsearchForm();
		     doctorsearchForm.setDoctorsearch(doctorDAO.getDoctorsearch());
		     model.addAttribute("doctorsearchForm",doctorsearchForm);
		     int d=doctorDAO.getPatientdetails(emailid,patientname);
		     String visit=doctorDAO.getVisit(emailid,patientname);
	          System.out.println("visit"+visit);
	         //model.addAttribute("visit",visit);	  
	         
	           if (visit.equals("0"))
	               {
	        	   session.setAttribute("visit","0");
	        	   String patientid=doctorDAO.getPatientid(emailid,patientname);
	        	   request.getSession().setAttribute("patientid",patientid);
	        	   System.out.println("sessionpatientid"+patientid);
	        	   model.addAttribute("menu","phyexam");
	        	   model.addAttribute("menu","report");
	        	   model.addAttribute("menu","iniexam");
	        	   model.addAttribute("menu","soapnotes");	       	   
	    
		           return "physicalexam";		
		           }
	     	}
		      else
		      {		    	  
		    	  int d=doctorDAO.getUpdation(emailid,patientname);
		    	  String visit=doctorDAO.getVisit(emailid,patientname);
		    	  System.out.println("visit"+visit);		    
		    	 // model.addAttribute("visit",visit);
		    	   model.addAttribute("menu"," notes");	
		    	   String patientid=doctorDAO.getPatientid(emailid,patientname);
		    	   session.setAttribute("soapnotesid",patientid);
		    	   System.out.println("patientid"+patientid);
		    	   
		    	   if(physicalDAO.getPhysicalpatient_id(patientid).size()==0 && radioDAO.getRadiologicpatient_id(patientid).size()==0 && hamiDAO.getHamiltonchiropracticpatientid(patientid).size()==0 )
		    	   {
		    		   model.addAttribute("patientid",patientid);
		    		   model.addAttribute("menu","phyexam"); 
		    		   session.setAttribute("visit","0");
		    		   return "physicalexam";
		    	   }
		    	   
		    	   if(physicalDAO.getPhysicalpatient_id(patientid).size()==0 && radioDAO.getRadiologicpatient_id(patientid).size()==0)
		    	   {
		    		  System.out.println("");
		    		   model.addAttribute("patientid",patientid);
		    		   model.addAttribute("menu","phyexam"); 
		    		   session.setAttribute("visit","1");
		    		   return "physicalexam";
		    	   }
		    	   if(physicalDAO.getPhysicalpatient_id(patientid).size()==0 &&hamiDAO.getHamiltonchiropracticpatientid(patientid).size()==0 )
		    	   {
		    		   model.addAttribute("patientid",patientid);
		    		   model.addAttribute("menu","phyexam"); 
		    		   session.setAttribute("visit","2");
		    		   return "physicalexam";
		    	   }
		    	   if(radioDAO.getRadiologicpatient_id(patientid).size()==0 && hamiDAO.getHamiltonchiropracticpatientid(patientid).size()==0 )
		    	   {
		    		   model.addAttribute("patientid",patientid);
		    		   model.addAttribute("menu","report");
		    		   session.setAttribute("visit","3");
		    		   return "radiologicreport";
		    	   }
		    	 
		    	   
		    		   if(physicalDAO.getPhysicalpatient_id(patientid).size()==0)
		           {
		    			   model.addAttribute("patientid",patientid);
		    			   model.addAttribute("menu","phyexam");
		    			   session.setAttribute("visit","4");
		    		   return "physicalexam";
		           	
		           }
		    	   if(radioDAO.getRadiologicpatient_id(patientid).size()==0)
		           { 
		    		   model.addAttribute("patientid",patientid);
		    		   model.addAttribute("menu","report");
		    		   session.setAttribute("visit","5");
		    		   return "radiologicreport";
		           	
		           }
		    	   
		    	   if(hamiDAO.getHamiltonchiropracticpatientid(patientid).size()==0)
		           { 
		    		   model.addAttribute("patientid",patientid);
		    		   model.addAttribute("menu","iniexam");
		    		   session.setAttribute("visit","6");
		    		   return "hamiltonchiropractic";
		           	
		           }
		    	   
		    	   if(soapDAO.getSoapid(patientid).size()>0)
		           { 
		    		  System.out.println("visit......."+visit);
		    		   session.removeAttribute("visit");
		    		   SoapnotesForm soapnotesForm = new SoapnotesForm();       
		    	        soapnotesForm.setSoapnotes(soapDAO.getSoapid(patientid));
		    	        model.addAttribute("soapnotesForm", soapnotesForm);		
		    	        model.addAttribute("menu","notes");	
		    	      
		           	return "editsoapnotes";
		           	
		           }	
		           else
		           {
		        	   session.removeAttribute("visit");
		        	   System.out.print("patientsis"+patientid);
		        	   model.addAttribute("patientid",patientid);
		        	   SoapnotesForm soapnotesForm = new SoapnotesForm();       
		    	        soapnotesForm.setSoapnotes(soapDAO.getSoapid(patientid));
		    	        model.addAttribute("soapnotesForm", soapnotesForm);	
		        	   return "soapnotes";
		           }
		     
		     
		    	  
		       }
	    }*/
		//model.addAttribute("menu","search");
			//model.addAttribute("Error","true");
			return "doctorsearch";
		
	}

	@RequestMapping(value="/physicalexam", method = RequestMethod.GET)
	public String physicalform(HttpServletRequest request,HttpSession session, ModelMap model) {
		session.removeAttribute("physical");
		 model.addAttribute("menu","phyexam");
  	   /*model.addAttribute("menu","report");
  	   model.addAttribute("menu","iniexam");
  	   model.addAttribute("menu","soapnotes"); */   
  	
	 //model.addAttribute("menu", "doctor");
	   
	 if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
	 {
		 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
		
		 model.addAttribute("name",name);
	 }
	   
		   if(physicalDAO.getPhysicalpatient_id((String)session.getAttribute("username")).size()>0)
		   {
			   if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
				 {
					 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
					
					 model.addAttribute("name",name);
				 }
			   System.out.println(hamiDAO.getHamiltonchiropracticpatientid((String)session.getAttribute("username")).size());
			  if(hamiDAO.getHamiltonchiropracticpatientid((String)session.getAttribute("username")).size()>0)
			  {
				  
				  if(radioDAO.getRadiologicpatient_id((String)session.getAttribute("username")).size()>0)
				  {
				  if(soapDAO.getusernameSoapnotes((String)session.getAttribute("username")).size()>0)
				  {
					  SoapnotesForm soapnotesForm = new SoapnotesForm();       
				        soapnotesForm.setSoapnotes(soapDAO.getusernameSoapnotes((String)session.getAttribute("username")));
				        model.addAttribute("soapnotesForm", soapnotesForm);		
						/*soapnotesForm.setSoapnotes(soapDAO.getSoapid());*/
						model.addAttribute("soapnotesForm", soapnotesForm);
						model.addAttribute("menu", "notes");
						 List<String> diagnosis=new ArrayList<String>();
					        diagnosis =soapDAO.getdiagnosis((String)session.getAttribute("username"));
					        model.addAttribute("diagnosis",diagnosis);
					  
				  return "editsoapnotes";
				  }
				  return "soapnotes";
				  }
				  return "radiologicreport";
			  }
			   
			   return "hamiltonchiropractic";
		   }
		   
			int username=docDAO.usernamevalidation((String)session.getAttribute("username"));
			if(hamiDAO.getHamiltonchiropracticpatientid((String)session.getAttribute("username")).size()==0)
			 {
				
				hamiDAO.usernamevalidation11((String)session.getAttribute("username"));
				
				System.out.println("deleted");
			}
		return "physicalexam";
 
	}

	
	@RequestMapping(value="/physicalexam", method = RequestMethod.POST)
	public String insert_physicalexam(HttpServletRequest request,HttpSession session,@ModelAttribute("Physicalexam")  @Valid Physicalexam physicalexam,BindingResult result,ModelMap model) {
		
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
	    
		if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
		 {
			 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
			 model.addAttribute("name",name);
		 }	

		int username=docDAO.usernamevalidation((String)session.getAttribute("username"));
		if(hamiDAO.getHamiltonchiropracticpatientid((String)session.getAttribute("username")).size()==0)
		 {
			
			hamiDAO.usernamevalidation11((String)session.getAttribute("username"));
			
			System.out.println("deleted");
		}
		return "hamiltonchiropractic";
 
	}
	
	@RequestMapping(value="/viewphysicalexam", method=RequestMethod.GET)
	public String viewexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  PhysicalexamForm physicalexamForm = new PhysicalexamForm();
		 
		  physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
		  
		  	model.addAttribute("physicalexamForm", physicalexamForm);
		  	model.addAttribute("menu", "phyexam");
		
		  	/*model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));*/
	        model.addAttribute("noofrows",physicalexamForm.getPhysicalexam().size());       
		    physicalexamForm.setPhysicalexam(physicalDAO.getlimitedphysicalexam(1));
	        model.addAttribute("noofpages",(int) Math.ceil(physicalDAO.getnoofphysicalexam() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewphysicalexam";
	 
		}	
		
		@RequestMapping(value="/viewphysicalexam_page", method=RequestMethod.GET)
		public String viewphysicalexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			PhysicalexamForm physicalexamForm = new PhysicalexamForm();
			physicalexamForm.setPhysicalexam(physicalDAO.getlimitedphysicalexam(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(physicalDAO.getnoofphysicalexam() * 1.0 / 20));
		    model.addAttribute("physicalexamForm", physicalexamForm);	
		   	model.addAttribute("noofrows",physicalexamForm.getPhysicalexam().size());   
	        model.addAttribute("currentpage",page);
	        model.addAttribute("menu","phyexam");
	        model.addAttribute("button","viewall");
			return "viewphysicalexam";
			
		}	
		
		@RequestMapping(value={"/", "/viewallphysicalexam"}, method = RequestMethod.GET)
		public String viewallphysicalexam(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			PhysicalexamForm physicalexamForm = new PhysicalexamForm();
			physicalexamForm.setPhysicalexam(physicalDAO.getPhysicalexam());
			
			  model.addAttribute("physicalexamForm", physicalexamForm);	
			model.addAttribute("noofrows",physicalexamForm.getPhysicalexam().size());    
	       
	        model.addAttribute("menu","phyexam");
	        model.addAttribute("button","close");
		      
		        model.addAttribute("menu","phyexam");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
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
	public String hamiltonchiropractic(Principal principal,ModelMap model,HttpSession session) {
		
		
		int username=docDAO.usernamevalidation((String)session.getAttribute("username"));
		if(hamiDAO.getHamiltonchiropracticpatientid((String)session.getAttribute("username")).size()==0)
		 {
			
			hamiDAO.usernamevalidation11((String)session.getAttribute("username"));
			
			System.out.println("deleted");
		}
		if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
		 {
			 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
			 model.addAttribute("name",name);
		 }	
		 model.addAttribute("iniexam", "doctor");
		 model.addAttribute("menu", "iniexam");
	      return "hamiltonchiropractic";
	}

	
	@RequestMapping(value="/hamiltonchiropractic", method = RequestMethod.POST)
	public String insert_hamiltonchiropractic(HttpSession session,@ModelAttribute("Hamiltonchiropractic")  @Valid Hamiltonchiropractic hamiltonchiropractic,@ModelAttribute("Hamilton")  @Valid Hamilton hamilton, BindingResult result,ModelMap model) {
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
    	int a=hamiDAO.setHamiltonchiropractic(hamiltonchiropractic,hamilton);
    	HamiltonchiropracticForm hamiltonchiropracticForm= new HamiltonchiropracticForm();
    	hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
		model.addAttribute("hamiltonchiropracticForm",hamiltonchiropracticForm);
		 model.addAttribute("menu", "iniexam");
		//System.out.println(autoaccident.getAdjustersname());
	    
			if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
			 {
				 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
				 model.addAttribute("name",name);
			 }	
		session.setAttribute("visit","2");
		model.addAttribute("menu","report");
		return "radiologicreport";
 
	}
	
	
	
	@RequestMapping(value="/viewfirsthamiltonchiropractic", method = RequestMethod.GET)
	public String viewhamiltonchiropractic(HttpServletRequest request,ModelMap model) {
		
		HamiltonchiropracticForm hamiltonchiropracticForm= new HamiltonchiropracticForm();
		hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
		model.addAttribute("hamiltonchiropracticForm",hamiltonchiropracticForm);
		 model.addAttribute("menu", "iniexam");
		
	  	 model.addAttribute("noofrows",hamiltonchiropracticForm.getHamiltonchiropractic().size());       
		    hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getlimitedhamiltonchiropractic(1));
	        model.addAttribute("noofpages",(int) Math.ceil(hamiDAO.getnoofhamiltonchiropractic() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewfirsthamiltonchiropractic";
	 
		}	
		
		@RequestMapping(value="/viewfirsthamiltonchiropractic_page", method=RequestMethod.GET)
		public String viewfirsthamiltonchiropractic_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			HamiltonchiropracticForm hamiltonchiropracticForm = new HamiltonchiropracticForm();
			hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getlimitedhamiltonchiropractic(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(hamiDAO.getnoofhamiltonchiropractic() * 1.0 / 5));
		    model.addAttribute("hamiltonchiropracticForm", hamiltonchiropracticForm);	
		   	model.addAttribute("noofrows",hamiltonchiropracticForm.getHamiltonchiropractic().size());   
	        model.addAttribute("currentpage",page);
	        model.addAttribute("menu","iniexam");
	        model.addAttribute("button","viewall");
			return "viewfirsthamiltonchiropractic";
			
		}	
		
		@RequestMapping(value={"/", "/viewallhamiltonchiropractic"}, method = RequestMethod.GET)
		public String viewallhamiltonchiropractic(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			HamiltonchiropracticForm hamiltonchiropracticForm = new HamiltonchiropracticForm();
			hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
			
			  model.addAttribute("hamiltonchiropracticForm", hamiltonchiropracticForm);	
			model.addAttribute("noofrows",hamiltonchiropracticForm.getHamiltonchiropractic().size());    
	       
	        model.addAttribute("menu","iniexam");
	        model.addAttribute("button","close");
		      
		        model.addAttribute("menu","iniexam");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
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
	public String edithamiltonchiropractic(HttpServletRequest request,@RequestParam("initialexamid") String initialexamid,ModelMap model,Hamiltonchiropractic hamiltonchiropractic,Hamilton hamilton)
	{
		
		HamiltonchiropracticForm hamiltonchiropracticForm = new HamiltonchiropracticForm();
       
        hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic(initialexamid));
        
        HamiltonForm hamiltonForm = new HamiltonForm();
        hamiltonForm.setHamilton(hamiDAO.getHamilton(initialexamid));
	
		model.addAttribute("hamiltonchiropracticForm", hamiltonchiropracticForm);
		 model.addAttribute("menu", "iniexam");
	
		return "edithamiltonchiropractic";
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/updatehamiltonchiropractic", method=RequestMethod.POST)
    public String updatehamiltonchiropractic(HttpServletRequest request,@ModelAttribute("Hamiltonchiropractic") @Valid Hamiltonchiropractic hamiltonchiropractic,@ModelAttribute("Hamilton") @Valid Hamilton hamilton,
			BindingResult result,ModelMap model,Principal principal)
	{
		if (result.hasErrors())
		{
			System.out.println("yes");
			//PhysicalexamForm physicalexamForm = new PhysicalexamForm();
	     
	     // physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physicalexam.getPhysical_id()));
	      
	       // model.addAttribute("physicalexamForm", physicalexamForm);
			//     model.addAttribute("menu", "doctor");
		     //   return "editphysicalexam";
		}
		
		//System.out.println("physical id"+physicalexam.getPhysical_id());*/
		int status = hamiDAO.updatehamiltonchiropractic(hamiltonchiropractic,hamiltonchiropractic.getPatient_id());
	System.out.println(status);
		
		HamiltonchiropracticForm hamiltonchiropracticForm = new HamiltonchiropracticForm();
        
     hamiltonchiropracticForm.setHamiltonchiropractic(hamiDAO.getHamiltonchiropractic());
     HamiltonForm hamiltonForm = new HamiltonForm();
     hamiltonForm.setHamilton(hamiDAO.getHamilton(null));
       
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
	public String autoaccident(Principal principal,HttpSession session,ModelMap model) {

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		if(autoDAO.getusernameAuto(principal).size()>0)
		{
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();	       
        autoaccidentForm.setAutoaccident(autoDAO.getusernameAuto(principal));	
		model.addAttribute("autoaccidentForm", autoaccidentForm);
		model.addAttribute("menu", "Accident");
		return "editautoaccident";
		}
		session.removeAttribute("auto");
		 model.addAttribute("menu", "Accident");
		return "autoaccident";
 
	}
	@RequestMapping(value="/autoaccident", method = RequestMethod.POST)
	public String insert_autoaccident(Principal principal,HttpSession session,@ModelAttribute("Autoaccident")  @Valid Autoaccident autoaccident,BindingResult result,ModelMap model) {
		session.setAttribute("auto", autoaccident);
		
		if(result.hasErrors())
		{
			AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
			autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
			model.addAttribute("autoaccidentForm",autoaccidentForm);
			model.addAttribute("Success","true");
			 model.addAttribute("menu", "Accident");

				if(patientDAO.getUsername(principal).size()>0)
					{			
				   model.addAttribute("patientno","0");
				}
			 
			return "autoaccident";
		}
		
		
    	int a=autoDAO.setAutoaccident(autoaccident,principal);
		AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
		autoaccidentForm.setAutoaccident(autoDAO.getusernameAuto(principal));
		model.addAttribute("autoaccidentForm",autoaccidentForm);
		model.addAttribute("menu", "Accident");

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
	
		return "viewautoaccident";
 
	}
	
	@RequestMapping(value="/viewautoaccident", method=RequestMethod.GET)
	public String viewautoaccident(HttpServletRequest request,ModelMap model, Principal principal)
	{
	

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		  AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
	
		  autoaccidentForm.setAutoaccident(autoDAO.getusernameAuto(principal));
	
		  	model.addAttribute("autoaccidentForm", autoaccidentForm);
		  	model.addAttribute("menu", "Accident");
	        System.out.println("Patient");
	       /* model.addAttribute("noofrows",autoaccidentForm.getAutoaccident().size());       
		    autoaccidentForm.setAutoaccident(autoDAO.getlimitedautoaccident(1));
	        model.addAttribute("noofpages",(int) Math.ceil(autoDAO.getnoofautoaccident() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			*/
			
			return "viewautoaccident";
	 
		}	
		
		@RequestMapping(value="/viewautoaccident_page", method=RequestMethod.GET)
		public String viewautoaccident_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}
			AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
			autoaccidentForm.setAutoaccident(autoDAO.getlimitedautoaccident(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(autoDAO.getnoofautoaccident() * 1.0 / 5));
		   	model.addAttribute("autoaccidentForm", autoaccidentForm);	
		   	model.addAttribute("noofrows",autoaccidentForm.getAutoaccident().size());   
	        model.addAttribute("currentpage",page);
	        model.addAttribute("menu","Accident");
	        model.addAttribute("button","viewall");
			return "viewautoaccident";
			
		}	
		
		@RequestMapping(value={"/", "/viewallautoaccident"}, method = RequestMethod.GET)
		public String viewallautoaccident(HttpServletRequest request,ModelMap model, Principal principal ) {
			

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}
			AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
			autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
			
			model.addAttribute("autoaccidentForm", autoaccidentForm);	
			model.addAttribute("noofrows",autoaccidentForm.getAutoaccident().size());    
	       
	        model.addAttribute("menu","Accident");
	        model.addAttribute("button","close");
		      
		        model.addAttribute("menu","Accident");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewautoaccident";
	 
		}	@RequestMapping(value="/autoaccidentlist", method=RequestMethod.GET)
	public String autoaccidentlist(Principal principal,HttpServletRequest request,@RequestParam("patient_number") String patient_number,ModelMap model,Autoaccident autoaccident)
	{
		

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}
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
	public String editautoaccident(Principal principal,HttpServletRequest request,@RequestParam("patient_number") String patient_number,ModelMap model,Autoaccident autoaccident)
	{

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
       
        autoaccidentForm.setAutoaccident(autoDAO.getAuto(patient_number));
	
		model.addAttribute("autoaccidentForm", autoaccidentForm);
		model.addAttribute("menu", "Accident");
		return "editautoaccident";
	}
	
	@RequestMapping(value="/editusernameautoaccident", method=RequestMethod.GET)
	public String editusernameauto(Principal principal,HttpServletRequest request,@RequestParam("username") String username,ModelMap model,Autoaccident autoaccident)
	{
		if(autoDAO.getusernameAutoaccident(username).size()==0)
		{
			model.addAttribute("menu", "checklist");				
			return "errorpage";

		}
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();       
        autoaccidentForm.setAutoaccident(autoDAO.getusernameAutoaccident(username));	
		model.addAttribute("autoaccidentForm", autoaccidentForm);
		model.addAttribute("menu", "checklist");
		return "editautoaccident";
	}
	
	
	
	@RequestMapping(value="/updateautoaccident", method=RequestMethod.POST)
	public String updateautoaccident(HttpServletRequest request,@ModelAttribute("Autoaccident") @Valid Autoaccident autoaccident,
			BindingResult result,ModelMap model,Principal principal)
	{
		if (result.hasErrors())
		{

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}
			//PhysicalexamForm physicalexamForm = new PhysicalexamForm();
	     AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
	     // physicalexamForm.setPhysicalexam(physicalDAO.getPhysical(physicalexam.getPhysical_id()));
	      autoaccidentForm.setAutoaccident(autoDAO.getAuto(autoaccident.getPatient_number()));
	        model.addAttribute("autoaccidentForm", autoaccidentForm);
			  model.addAttribute("menu", "Accident");  

				
		        return "editautoaccident";
		        
		}
		
		/*System.out.println("physical id"+physicalexam.getPhysical_id());*/
		int status = autoDAO.updateautoaccident(autoaccident, autoaccident.getPatient_number(), principal.getName());
		System.out.println(status);
		
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
        
       autoaccidentForm.setAutoaccident(autoDAO.getusernameAuto(principal));

   	if(patientDAO.getUsername(principal).size()>0)
   		{			
   	   model.addAttribute("patientno","0");
   	}
        model.addAttribute("autoaccidentForm", autoaccidentForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "Accident");
	       if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	        return "viewautoaccident";
		
	}
	

	@RequestMapping(value="/deleteautoaccident", method=RequestMethod.GET)
	public String removeautoaccident(HttpSession session,ModelMap model, Principal principal) {
	
		session.removeAttribute("auto");
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		if(principal.getName().equals("admin"))
		{
			String username=(String)session.getAttribute("staffusername");
			autoDAO.deleteautoaccident(username);
			model.addAttribute("choice","close");
			return "viewautoaccident";
		
		}
		int status=autoDAO.deleteautoaccident(principal.getName());
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		AutoaccidentForm autoaccidentForm = new AutoaccidentForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		autoaccidentForm.setAutoaccident(autoDAO.getusernameAuto(principal));
        model.addAttribute("autoaccidentForm", autoaccidentForm);
        model.addAttribute("menu", "Accident");
        session.removeAttribute("auto");
		}
		
		return "autoaccident";
	}
	@RequestMapping(value="/radiologicreport", method=RequestMethod.GET)
	public String radiologicreport(HttpServletRequest request,HttpSession session,ModelMap model) {
		session.removeAttribute("radio");
		model.addAttribute("menu", "report");
		 if(radioDAO.getRadiologicpatient_id((String)session.getAttribute("username")).size()>0)
		  {
		  if(soapDAO.getusernameSoapnotes((String)session.getAttribute("username")).size()>0)
		  {
			  SoapnotesForm soapnotesForm = new SoapnotesForm();       
		      soapnotesForm.setSoapnotes(soapDAO.getusernameSoapnotes((String)session.getAttribute("username")));
		      model.addAttribute("soapnotesForm", soapnotesForm);		
				/*soapnotesForm.setSoapnotes(soapDAO.getSoapid());*/
				model.addAttribute("soapnotesForm", soapnotesForm);
				model.addAttribute("menu", "notes");
				 List<String> diagnosis=new ArrayList<String>();
			        diagnosis =soapDAO.getdiagnosis((String)session.getAttribute("username"));
			        model.addAttribute("diagnosis",diagnosis);
			  session.removeAttribute("visit");
			  
		  return "editsoapnotes";
		  }
		  session.setAttribute("visit","3");
		  return "soapnotes";
		  }
		if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
		 {
			 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
			 model.addAttribute("name",name);
		 }	
		return "radiologicreport";
	}
	@RequestMapping(value="/radiologicreport", method = RequestMethod.POST)
	public String insert_radiologicreport(HttpServletRequest request,HttpSession session,@ModelAttribute("RadiologicReport")  @Valid RadiologicReport radiologicreport,BindingResult result,ModelMap model) {
		session.setAttribute("radio",radiologicreport);	
		if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
		 {
			 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
			 model.addAttribute("name",name);
		 }	
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
	    	String username=radiologicreport.getPatient_id();
	    	if(soapDAO.getusernameSoapnotes(username).size()>0)
			{
				SoapnotesForm soapnotesForm = new SoapnotesForm();       
		        soapnotesForm.setSoapnotes(soapDAO.getusernameSoapnotes(username));
		        model.addAttribute("soapnotesForm", soapnotesForm);		
				/*soapnotesForm.setSoapnotes(soapDAO.getSoapid());*/
				model.addAttribute("soapnotesForm", soapnotesForm);
				model.addAttribute("menu", "soapnotes");
				 List<String> diagnosis=new ArrayList<String>();
			     diagnosis =soapDAO.getdiagnosis(username);
			    session.removeAttribute("visit");
			     model.addAttribute("diagnosis",diagnosis);
			        return "editsoapnotes";
			}
	    	if(physicalDAO.getPhysicalpatient_id(username).size()==0)
	    	{session.setAttribute("visit","1");
	    		return "physicalexam";
	    	}
	    	
	    	session.setAttribute("visit","3");
	    	
			return "soapnotes";
	 
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
		  RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
		 //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		  radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
		  //model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		  model.addAttribute("menu", "report");
		  	model.addAttribute("radiologicReportForm", radiologicReportForm);

		  	 model.addAttribute("visit","0");       
		  	 model.addAttribute("noofrows",radiologicReportForm.getRadiologicReport().size());       
			    radiologicReportForm.setRadiologicReport(radioDAO.getlimitedradiologicreport(1));
		        model.addAttribute("noofpages",(int) Math.ceil(radioDAO.getnoofradiologicreport() * 1.0 / 5));	 
			        model.addAttribute("button","viewall");
			        model.addAttribute("success","false");
			        model.addAttribute("currentpage",1);
				
				
				return "viewradiologicreport";
		 
			}	
			
			@RequestMapping(value="/viewradiologicreport_page", method=RequestMethod.GET)
			public String viewradiologicreport_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
				
				RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
				radiologicReportForm.setRadiologicReport(radioDAO.getlimitedradiologicreport(page));
				
			   	model.addAttribute("noofpages",(int) Math.ceil(radioDAO.getnoofradiologicreport() * 1.0 / 5));
			    model.addAttribute("radiologicReportForm", radiologicReportForm);	
			   	model.addAttribute("noofrows",radiologicReportForm.getRadiologicReport().size());   
		        model.addAttribute("currentpage",page);
		        model.addAttribute("menu","report");
		        model.addAttribute("button","viewall");
				return "viewradiologicreport";
				
			}	
			
			@RequestMapping(value={"/", "/viewallradiologicreport"}, method = RequestMethod.GET)
			public String viewallradiologicreport(HttpServletRequest request,ModelMap model, Principal principal ) {
				
				RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
				radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport());
				
				  model.addAttribute("radiologicReportForm", radiologicReportForm);	
				model.addAttribute("noofrows",radiologicReportForm.getRadiologicReport().size());    
		       
		        model.addAttribute("menu","report");
		        model.addAttribute("button","close");
			      
			        model.addAttribute("menu","report");
			        model.addAttribute("success","false");
			        model.addAttribute("button","close");
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
	public String workaccident(HttpSession session,ModelMap model,Principal principal) {
		session.removeAttribute("accident");
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		if(workDAO.getUsernameWorkaccident(principal).size()>0)
		{
		WorkaccidentForm workaccidentForm = new WorkaccidentForm();	       
       	workaccidentForm.setWorkaccident(workDAO.getUsernameWorkaccident(principal));
		model.addAttribute("workaccidentForm",workaccidentForm);
		model.addAttribute("menu", "Accident");
		return "editworkaccident";
		}
		model.addAttribute("menu", "Accident");
		return "workaccident";
	}
	
	@RequestMapping(value="/workaccident", method = RequestMethod.POST)
	public String insert_workaccident(Principal principal,HttpSession session,@ModelAttribute("Workaccident")  @Valid Workaccident workaccident,BindingResult result,ModelMap model) {
		session.setAttribute("work",workaccident);
		session.removeAttribute("accident");
		if(result.hasErrors())
		{

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}	
			WorkaccidentForm workaccidentForm= new WorkaccidentForm();
			workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
			model.addAttribute("workaccidentForm",workaccidentForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "Accident");
			return "workaccident";
		}	

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		model.put("Workaccident", workaccident);
		model.addAttribute("workaccidentForm",workaccident);
    	int b =workDAO.setWorkaccident(workaccident,principal);
		WorkaccidentForm workaccidentForm= new WorkaccidentForm();
		workaccidentForm.setWorkaccident(workDAO.getUsernameWorkaccident(principal));
		model.addAttribute("workaccidentForm",workaccidentForm);
		model.addAttribute("menu", "Accident");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "viewworkaccident";
	}
	@RequestMapping(value="/viewworkaccident", method=RequestMethod.GET)
	public String viewWorkAccident(HttpServletRequest request,ModelMap model, Principal principal) {
		    model.addAttribute("success","false");		 
			WorkaccidentForm workaccidentForm = new WorkaccidentForm();
			workaccidentForm.setWorkaccident(workDAO.getUsernameWorkaccident(principal));
			model.addAttribute("workaccidentForm", workaccidentForm);
			model.addAttribute("menu", "Accident");
			/* model.addAttribute("noofrows",workaccidentForm.getWorkaccident().size());       
			    workaccidentForm.setWorkaccident(workDAO.getlimitedworkaccident(1));
		        model.addAttribute("noofpages",(int) Math.ceil(workDAO.getnoofworkaccident() * 1.0 / 5));	 
			        model.addAttribute("button","viewall");
			        model.addAttribute("success","false");
			        model.addAttribute("currentpage",1);
				

			    	if(patientDAO.getUsername(principal).size()>0)
			    		{			
			    	   model.addAttribute("patientno","0");
			    	}*/
				return "viewworkaccident";
		 
			}	
			
			@RequestMapping(value="/viewworkaccident_page", method=RequestMethod.GET)
			public String viewworkaccident_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
				
				WorkaccidentForm workaccidentForm = new WorkaccidentForm();
				workaccidentForm.setWorkaccident(workDAO.getlimitedworkaccident(page));
				
			   	model.addAttribute("noofpages",(int) Math.ceil(workDAO.getnoofworkaccident() * 1.0 / 5));
			   	model.addAttribute("workaccidentForm", workaccidentForm);	
			   	model.addAttribute("noofrows",workaccidentForm.getWorkaccident().size());   
		        model.addAttribute("currentpage",page);
		        model.addAttribute("menu","Accident");
		        model.addAttribute("button","viewall");

		    	if(patientDAO.getUsername(principal).size()>0)
		    		{			
		    	   model.addAttribute("patientno","0");
		    	}
				return "viewworkaccident";
				
			}	
			
			@RequestMapping(value={"/", "/viewallworkaccident"}, method = RequestMethod.GET)
			public String viewallworkaccident(HttpServletRequest request,ModelMap model, Principal principal ) {
				

				if(patientDAO.getUsername(principal).size()>0)
					{			
				   model.addAttribute("patientno","0");
				}
				WorkaccidentForm workaccidentForm = new WorkaccidentForm();
				workaccidentForm.setWorkaccident(workDAO.getUsernameWorkaccident(principal));
				
				model.addAttribute("workaccidentForm", workaccidentForm);	
				model.addAttribute("noofrows",workaccidentForm.getWorkaccident().size());    
		       
		        model.addAttribute("menu","Accident");
		        model.addAttribute("button","close");
			      
			        model.addAttribute("menu","Accident");
			        model.addAttribute("success","false");
			        model.addAttribute("button","close");
					return "viewworkaccident";
			}
		 
		
	@RequestMapping(value="/workAccidentList", method=RequestMethod.GET)
	public String viewworkaccident(Principal principal,HttpServletRequest request,@RequestParam("patient_no") String patient_no,ModelMap model,Workaccident work)
	{
		
		
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		WorkaccidentForm workaccidentForm = new WorkaccidentForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		workaccidentForm.setWorkaccident(workDAO.getWorkaccident(patient_no));
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("workaccidentForm", workaccidentForm);
		model.addAttribute("menu", "Accident");
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		
		return "workAccidentList";
	}
	@RequestMapping(value="/editworkaccident", method=RequestMethod.GET)
	public String editWorkAccident(HttpSession session,Principal principal,HttpServletRequest request,@RequestParam("patient_no") String patient_no,ModelMap model,Workaccident workAcc)
	{
		session.removeAttribute("work");

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		WorkaccidentForm workaccidentForm = new WorkaccidentForm();
       
       	workaccidentForm.setWorkaccident(workDAO.getWorkaccident(patient_no));
		model.addAttribute("workaccidentForm",workaccidentForm);
		model.addAttribute("menu", "Accident");
		return "editworkaccident";
	}
	@RequestMapping(value="/editusernameworkaccident", method=RequestMethod.GET)
	public String editusernameWorkAccident(HttpSession session,Principal principal,HttpServletRequest request,@RequestParam("username") String username,ModelMap model,Workaccident workAcc)
	{
		if(workDAO.getUsernameWorkaccident(username).size()==0)
		{
		model.addAttribute("menu", "checklist");				
		return "errorpage";
		}

		
		session.removeAttribute("accident");
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		WorkaccidentForm workaccidentForm = new WorkaccidentForm();       
       	workaccidentForm.setWorkaccident(workDAO.getUsernameWorkaccident(username));
		model.addAttribute("workaccidentForm",workaccidentForm);
		model.addAttribute("menu", "checklist");
		return "editworkaccident";
	}
	
	@RequestMapping(value="/updateworkaccident", method=RequestMethod.POST)
	public String updateWorkAccident(HttpSession session,HttpServletRequest request,@ModelAttribute("workAcc") @Valid Workaccident workAccident,
			BindingResult result,ModelMap model,Principal principal)
	{
		session.removeAttribute("accident");
		if (result.hasErrors())
		{

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}
		//	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
			WorkaccidentForm workaccidentForm = new WorkaccidentForm();
	     // radiologicReportForm.setRadiologicReport(radioDAO.getRadiologicReport(report.getPid()));
	      workaccidentForm.setWorkaccident(workDAO.getUsernameWorkaccident(principal));
	        model.addAttribute("workaccidentForm", workaccidentForm);
	        model.addAttribute("menu", "Accident"); 
	        System.out.println("has error");
		        return "editworkaccident";
		}

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		int status = workDAO.updateWorkAccident(workAccident,workAccident.getPatient_no(),principal.getName());
		System.out.println(status);
		
		WorkaccidentForm workaccidentForm = new WorkaccidentForm();
	      workaccidentForm.setWorkaccident(workDAO.getUsernameWorkaccident(principal));
	        model.addAttribute("workaccidentForm", workaccidentForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "Accident");
	       if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	        return "viewworkaccident";
		
	}
	@RequestMapping(value="/deleteworkaccident", method=RequestMethod.GET)
	public String removeWorkAccident(HttpSession session,ModelMap model, Principal principal) {
	
		session.removeAttribute("work");
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		if(principal.getName().equals("admin"))
	    {
String username=(String)session.getAttribute("staffusername");
workDAO.deleteWorkAccident(username);
model.addAttribute("choice","close");
return "viewworkaccident";
	    }
       	
		int status = workDAO.deleteWorkAccident(principal.getName());
		if(status==1)
		{
        model.addAttribute("success","true");
        WorkaccidentForm workaccidentForm= new WorkaccidentForm();
		workaccidentForm.setWorkaccident(workDAO.getUsernameWorkaccident(principal));
		model.addAttribute("workaccidentForm",workaccidentForm);
		model.addAttribute("menu", "Accident");
		
		}
		session.removeAttribute("work");
		return "workaccident";
	}
	
	
	
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.GET)
	public String insuranceinformation(Principal principal,HttpSession session,ModelMap model) {
		model.addAttribute("menu", "health");
		if(patientDAO.getUsername(principal).size()>0)
			{		
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		}
		System.out.println(""+infoDAO.getusernameInsuranceinformation(principal)+""+infoDAO.getusernameInsuranceinformation(principal).size());
		if(infoDAO.getusernameInsuranceinformation(principal).size()>0)
		{
			System.out.println("database1234");
			InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
	    	insuranceinformationForm.setInsuranceinformation(infoDAO.getusernameInsuranceinformation(principal));
			model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
			//model.addAttribute("menu", "health");
		return "editinsuranceinformation";
		}
		session.removeAttribute("info");		
		return "insuranceinformation";
 
	}
	
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.POST)
	public String insert_insuranceinformation(Principal principal,HttpSession session,@ModelAttribute("Insuranceinformation")  @Valid Insuranceinformation insuranceinformation,BindingResult result,ModelMap model) {
		session.setAttribute("info",insuranceinformation);
		
		if(result.hasErrors())
		{

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			   
			}
			InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
	    	insuranceinformationForm.setInsuranceinformation(infoDAO.getusernameInsuranceinformation(principal));
			model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
			
			model.addAttribute("menu", "health");

			return "insuranceinformation";
	
		}
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		model.put("Insuranceinformation", insuranceinformation);
		model.addAttribute("InsuranceinformationForm",insuranceinformation);
    	int a =infoDAO.setInsuranceinformation(insuranceinformation,principal);
    	InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getusernameInsuranceinformation(principal));
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		model.addAttribute("menu", "health");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceinfolist";
	}
	
	@RequestMapping(value="/insuranceverification", method = RequestMethod.GET)
	public String insuranceverification(HttpSession session,ModelMap model,Principal principal) {

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		session.removeAttribute("veri");
		model.addAttribute("menu", "admin");
		return "insuranceverification";
 
	}
	@RequestMapping(value="/insuranceverification_ajax",method=RequestMethod.POST)
	public @ResponseBody String insuranceverification_ajax(@ModelAttribute(value="pusername")Insuranceverification insuranceverification, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+insuranceverification.getPusername());
		if(signupDAO.getPatientusername(insuranceverification.getPusername()).size()==0)
		{
			return "error";
		}		
	if(veriDAO.checkusername(insuranceverification.getPusername()).size()>0)
	{
		//patientname=veriDAO.checkusername(insuranceverification.getPusername()).get(0).get;
		System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+insuranceverification.getPusername();		
	}
	if(patientDAO.getUsername(insuranceverification.getPusername()).size()>0)
	{
		patientname=patientDAO.getUsername(insuranceverification.getPusername()).get(0).getName();
	}		
	returnText=patientname+"|"+insuranceverification.getPusername();
	return returnText;				
	}
	
	
	@RequestMapping(value="/insurancesearch", method = RequestMethod.POST)
	public String insurance_search(HttpServletRequest request,Principal principal,HttpSession session,ModelMap model) {
		
	String username=request.getParameter("username");
	if(patientDAO.getUsername(username).size()==0)
	{
		model.addAttribute("nsearch",true);
		return "insuranceverificationsearch";
	}
	if(patientDAO.getUsername(username).size()>0)
	{
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.checkusername(username));
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		 model.addAttribute("menu", "admin");
		return "editinsuranceverification";	
	}
		
		
		return "insuranceverification";
	}
	
	@RequestMapping(value="/insuranceverification", method = RequestMethod.POST)
	public String insert_insuranceverification(HttpServletRequest request,Principal principal,HttpSession session,@ModelAttribute("Insuranceverification")  @Valid Insuranceverification insuranceverification,BindingResult result,ModelMap model) {
		session.setAttribute("veri",insuranceverification);
		
		if(result.hasErrors())
		{

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}
			InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
	    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
			model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "admin");
			session.removeAttribute("veri");
			return "insuranceverification";
		}
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}		
    	int a =veriDAO.setInsuranceverification(insuranceverification,request.getParameter("user"));
    	InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		model.addAttribute("menu", "admin");
		//System.out.println(autoaccident.getAdjustersname());
		session.removeAttribute("veri");
	    
		
		return "insuranceverification";
	}
	@RequestMapping(value="/insuranceplan", method = RequestMethod.GET)
	public String insuranceplan(HttpSession session,ModelMap model,Principal principal) {
		
		session.removeAttribute("waiver");
		model.addAttribute("menu", "health");
		if(patientDAO.getUsername(principal).size()>0)
			{	
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		}
		if(planDAO.getInsuranceplanUsername(principal).size()>0)
		{		
			InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
	    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplanUsername(principal));
			model.addAttribute("insuranceplanform",insuranceplanForm);
			return "editinsuranceplan";
		}
		return "insuranceplan";
		
 
	}
	
	@RequestMapping(value="/insuranceplan", method = RequestMethod.POST)
	public String insert_insuranceplan(Principal principal,HttpSession session,@ModelAttribute("Insuranceplan") @Valid Insuranceplan insuranceplan,BindingResult result,ModelMap model) {
		session.setAttribute("waiver",insuranceplan);
		if(result.hasErrors())
		{
			

			if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}
			InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
	    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
			model.addAttribute("insuranceplanform",insuranceplanForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "health");
			return "insuranceplan";
			
		}
	

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
    	int a =planDAO.setInsuranceplan(insuranceplan,principal);
    	InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplanUsername(principal));
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "health");
        return "insuranceplanlist";
	}
	
	@RequestMapping(value="/hardshipagreement", method = RequestMethod.GET)
	public String hardshipagreement(HttpSession session,ModelMap model,Principal principal) {
		
		session.removeAttribute("hard");
		 model.addAttribute("menu", "authorization");
		if(patientDAO.getUsername(principal).size()>0)
			{	
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		}
		if(hardDAO.getUsernameHardshipagreement(principal).size()>0)
		{
			HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
	    	hardshipagreementForm.setHardshipagreement(hardDAO.getUsernameHardshipagreement(principal));
			model.addAttribute("hardshipagreementform",hardshipagreementForm);
			
			return "edithardship";
		}		
		return "hardshipagreement";
 
	}
	

	@RequestMapping(value="/hardshipagreement", method = RequestMethod.POST)
	public String insert_hardshipagreement(Principal principal,HttpSession session,@ModelAttribute("Hardshipagreement") @Valid Hardshipagreement Hardshipagreement,BindingResult result,ModelMap model) {
		
		session.setAttribute("hard",Hardshipagreement);

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		if(result.hasErrors())
		{
			
			HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
	    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
			model.addAttribute("hardshipagreementform",hardshipagreementForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "authorization");
			return "hardshipagreement";
		}
        String name=principal.getName();
    	int a =hardDAO.setHardshipagreement(Hardshipagreement,name);
    	HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getUsernameHardshipagreement(principal));
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
	     model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "hardshiplist";
	}
	@RequestMapping(value="/checklistsearch", method = RequestMethod.GET)
	public String checklistsearch(HttpSession session,ModelMap model) {			
		model.addAttribute("menu", "admin");
		return "checklistsearch";
}	
	
	

	@RequestMapping(value="/checklistsearch", method = RequestMethod.POST)
	public String getchecklistsearchdetails(HttpServletRequest request,PatientDetails patientDetails,HttpSession session,@ModelAttribute("Narrativereport")  @Valid Narrativereport narrativereport,BindingResult result,ModelMap model) {
		String username=request.getParameter("username");
	    session.setAttribute("staffusername",username);
		session.removeAttribute("staff");	
		model.addAttribute("menu", "admin");
		if(signupDAO.getPatientusername(username).size()==0)
		{
			
			model.addAttribute("nsearch","error");
			return "checklistsearch";
		}
		if(patientDAO.getUsername(username).size()>0)
		{
			
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			System.out.println("patientname"+patientDAO.getUsername(username).get(0).getName());
			model.addAttribute("patientname",patientDAO.getUsername(username).get(0).getName());
			model.addAttribute("patient",true);
		
		}
		if(screenDAO.getusernameScreening(username).size()>0)
		{
			System.out.println("screensize"+screenDAO.getusernameScreening(username).size());
		model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
		model.addAttribute("screen",true);	
		}
		if(autoDAO.getusernameAutoaccident(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("autoaccident",true);		
		}
		if(workDAO.getUsernameWorkaccident(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("workaccident",true);		
		}
		
		if(planDAO.getInsuranceplanUsername(username).size()>0)
		{
			System.out.println("true");
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("waiver1",true);		
		}
		if(infoDAO.getusernameInsuranceinformation(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("health",true);		
		}
		if(treatDAO.getUsernameTreatDetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("treat",true);		
		}
		if(minorDAO.getusernameMinorDetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("minor",true);		
		}
		if(hardDAO.getUsernameHardshipagreement(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("hardship",true);		
		}
		if(medicalDAO.getUsernameMedicalDetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("medical",true);		
		}
		if(assignmentDAO.getUsernameAssignment(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("assignment",true);		
		}
		if(hippaDAO.getusernameHippa(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("hippa",true);		
		}
		if(hipquestionnaireDAO.getusernamehipquestionnairedetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("hipquestion",true);		
		}
		if(footquestionnarieDAO.getusernameFoot(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("footquestion",true);		
		}
		if(symptomDAO.getusernamesymptomDetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("symptom",true);		
		}
		if(staffDAO.getStaffusername(username).size()>0)
		{
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffusername(username));
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		return "editstaffchecklist";
		}
	    return "staffchecklist";
 
	}
	
	
	@RequestMapping(value="/staffchecklist", method = RequestMethod.GET)
	public String staffchecklist(HttpSession session,ModelMap model) {
		model.addAttribute("menu", "admin");
		session.removeAttribute("staff");
		model.addAttribute("menu", "admin");
		String username=(String)session.getAttribute("staffusername");
		if(signupDAO.getPatientusername(username).size()==0)
		{
			
			model.addAttribute("nsearch","error");
			return "checklistsearch";
		}
		if(patientDAO.getUsername(username).size()>0)
		{
			
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			System.out.println("patientname"+patientDAO.getUsername(username).get(0).getName());
			model.addAttribute("patientname",patientDAO.getUsername(username).get(0).getName());
			model.addAttribute("patient",true);
		
		}
		if(screenDAO.getusernameScreening(username).size()>0)
		{
			System.out.println("screensize"+screenDAO.getusernameScreening(username).size());
		model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
		model.addAttribute("screen",true);	
		}
		if(autoDAO.getusernameAutoaccident(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("autoaccident",true);		
		}
		if(workDAO.getUsernameWorkaccident(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("workaccident",true);		
		}
		
		if(planDAO.getInsuranceplanUsername(username).size()>0)
		{
			System.out.println("true");
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("waiver1",true);		
		}
		if(infoDAO.getusernameInsuranceinformation(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("health",true);		
		}
		if(treatDAO.getUsernameTreatDetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("treat",true);		
		}
		if(minorDAO.getusernameMinorDetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("minor",true);		
		}
		if(hardDAO.getUsernameHardshipagreement(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("hardship",true);		
		}
		if(medicalDAO.getUsernameMedicalDetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("medical",true);		
		}
		if(assignmentDAO.getUsernameAssignment(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("assignment",true);		
		}
		if(hippaDAO.getusernameHippa(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("hippa",true);		
		}
		if(hipquestionnaireDAO.getusernamehipquestionnairedetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("hipquestion",true);		
		}
		if(footquestionnarieDAO.getusernameFoot(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("footquestion",true);		
		}
		if(symptomDAO.getusernamesymptomDetails(username).size()>0)
		{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("symptom",true);		
		}
		if(staffDAO.getStaffusername(username).size()>0)
		{
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffusername(username));
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		return "editstaffchecklist";
		}
	    return "staffchecklist";

 
	}
	
	@RequestMapping(value="/staffchecklist", method = RequestMethod.POST)
	public String insert_staffchecklist(HttpServletRequest request,HttpSession session,@ModelAttribute("Staffchecklist")  @Valid Staffchecklist staffchecklist,BindingResult result,ModelMap model) {
		model.addAttribute("menu", "admin");
		session.removeAttribute("staff");	
		session.setAttribute("staff",staffchecklist);
		String username=request.getParameter("patientusername");
		System.out.println("patientusername-----------"+username);
		if(result.hasErrors())
		{
			if(patientDAO.getUsername(username).size()==0)
			{
				
				model.addAttribute("nsearch","error");
				return "checklistsearch";
			}
			if(patientDAO.getUsername(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("patient",true);
			
			}
			if(screenDAO.getusernameScreening(username).size()>0)
			{
			model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
			model.addAttribute("screen",true);	
			}
			if(autoDAO.getusernameAutoaccident(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("autoaccident",true);		
			}
			if(workDAO.getUsernameWorkaccident(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("workaccident",true);		
			}
			
			if(planDAO.getInsuranceplanUsername(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("waiver1",true);		
			}
			if(infoDAO.getusernameInsuranceinformation(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("health",true);		
			}
			if(treatDAO.getUsernameTreatDetails(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("treat",true);		
			}
			if(minorDAO.getusernameMinorDetails(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("minor",true);		
			}
			if(hardDAO.getUsernameHardshipagreement(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("hardship",true);		
			}
			if(medicalDAO.getUsernameMedicalDetails(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("medical",true);		
			}
			if(assignmentDAO.getUsernameAssignment(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("assignment",true);		
			}
			if(hippaDAO.getusernameHippa(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("hippa",true);		
			}
			if(hipquestionnaireDAO.getusernamehipquestionnairedetails(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("hipquestion",true);		
			}
			if(footquestionnarieDAO.getusernameFoot(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("footquestion",true);		
			}
			if(symptomDAO.getusernamesymptomDetails(username).size()>0)
			{
				model.addAttribute("username",patientDAO.getUsername(username).get(0).getUsername());
				model.addAttribute("symptom",true);		
			}
			
			
			StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
	    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
			model.addAttribute("StaffchecklistForm",staffchecklistForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "admin");
			return "staffchecklist";
		}
		
		model.put("Staffchecklist", staffchecklist);
		model.addAttribute("StaffchecklistForm",staffchecklist);
    	int a =staffDAO.setStaffchecklist(staffchecklist);
    	StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "checklistsearch";
	}
	
	@RequestMapping(value="/staffdetails", method = RequestMethod.GET)
	public String staffdetails(HttpServletRequest request,ModelMap model) {
		
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		model.addAttribute("noofrows",staffchecklistForm.getStaffchecklist().size());       
	    staffchecklistForm.setStaffchecklist(staffDAO.getlimitedstaffchecklist(1));
        model.addAttribute("noofpages",(int) Math.ceil(staffDAO.getnoofstaffchecklist() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "staffdetails";
 
	}	
	
	@RequestMapping(value="/staffdetails_page", method=RequestMethod.GET)
	public String staffdetails_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		StaffchecklistForm staffchecklistForm = new StaffchecklistForm();
		staffchecklistForm.setStaffchecklist(staffDAO.getlimitedstaffchecklist(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(staffDAO.getnoofstaffchecklist() * 1.0 / 5));
	   	model.addAttribute("StaffchecklistForm",staffchecklistForm);	
	   	model.addAttribute("noofrows",staffchecklistForm.getStaffchecklist().size());   
        model.addAttribute("currentpage",page);
        model.addAttribute("menu","admin");
        model.addAttribute("button","viewall");
		return "staffdetails";
		
	}	
	
	@RequestMapping(value={"/", "/viewallstaffdetails"}, method = RequestMethod.GET)
	public String viewallstaffdetails(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		StaffchecklistForm staffchecklistForm = new StaffchecklistForm();
		staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		
		model.addAttribute("StaffchecklistForm",staffchecklistForm);	
		model.addAttribute("noofrows",staffchecklistForm.getStaffchecklist().size());    
       
        model.addAttribute("menu","admin");
        model.addAttribute("button","close");
	      
	        model.addAttribute("menu","admin");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
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
	public String editstaffchecklist(@RequestParam("form_no")String form_no,HttpServletRequest request,ModelMap model) {
		
		StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaff(form_no));
		model.addAttribute("StaffchecklistForm",staffchecklistForm);
		model.addAttribute("menu", "admin");
		return "editstaffchecklist";
	}

	
	@RequestMapping(value="/updatestaffchecklist", method=RequestMethod.POST)
	public String updatestaffchecklist(HttpServletRequest request,@ModelAttribute("Staffchecklist") @Valid Staffchecklist staffchecklist,
			BindingResult result,ModelMap model,Principal principal)
	{
		model.addAttribute("menu", "admin");
		if (result.hasErrors())
		{
			StaffchecklistForm staffchecklistForm = new StaffchecklistForm();	        
	        staffchecklistForm.setStaffchecklist(staffDAO.getStaff(staffchecklist.getForm_no()));
	        model.addAttribute("menu", "admin");
	        model.addAttribute("StaffchecklistForm", staffchecklistForm);
		    return "editstaffchecklist";
		}
		
		int status = staffDAO.updatestaffchecklist(staffchecklist, staffchecklist.getForm_no(), principal.getName());
		System.out.println(status);		
		StaffchecklistForm staffchecklistForm = new StaffchecklistForm();        
        staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());       
        model.addAttribute("StaffchecklistForm", staffchecklistForm);
	    model.addAttribute("success","true");
	    model.addAttribute("menu", "admin");
	    return "checklistsearch";		
	}
	@RequestMapping(value="/deletestaffchecklist", method=RequestMethod.GET)
	public String removestaffchecklist(@RequestParam("form_no") String form_no,ModelMap model, Principal principal) {
	
		int status=staffDAO.deletestaffchecklist(form_no);
		model.addAttribute("menu", "admin");		
		return "checklistsearch";
	}
	
	
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String signup(HttpSession session,ModelMap model) {
		session.removeAttribute("signup");
		model.addAttribute("menu","sign");
		return "signup";
 
	}
	

	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String insert_signup(HttpSession session,@ModelAttribute("Signup")  @Valid Signup signup,BindingResult result,ModelMap model) {
		session.setAttribute("signup",signup);
		String pusername=signup.getUsername();
		int username=docDAO.usernamevalidation(pusername);
		model.addAttribute("menu","sign");
		int email=docDAO.emailvalidation(signup.getEmail());
		if(email>0)
		{
			model.addAttribute("emailerror","exists");
			return "signup";
		}
		if(result.hasErrors())
		{
			SignupForm signupForm= new SignupForm();
	    	signupForm.setSignup(signDAO.getSignup());
			model.addAttribute("SignupForm",signupForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu","sign");
			if(username>0)
			{
				model.addAttribute("usernames","exist");
				System.out.println("username exist");
				
			}
			return "signup";
		}
		if(username>0)
		{
			model.addAttribute("usernames","exist");
			System.out.println("username exist");
			return "signup";
		}
		model.addAttribute("menu","sign");		
    	int h =signDAO.setSignup(signup);
    	SignupForm signupForm= new SignupForm();
    	signupForm.setSignup(signDAO.getSignup());
		model.addAttribute("SignupForm",signupForm);
		model.addAttribute("success",true);
		
		return "login";
	}
	
	
	
	@RequestMapping(value="/doctorsignup", method = RequestMethod.GET)
	public String doctorsignup(HttpSession session,ModelMap model) {
		session.removeAttribute("doctorsignup");
		model.addAttribute("menu","sign");
		return "doctorsignup";
 
	}
	

	@RequestMapping(value="/doctorsignup", method = RequestMethod.POST)
	public String insert_doctorsignup(HttpSession session,@ModelAttribute("Doctorsignup")  @Valid Doctorsignup doctorsignup,BindingResult result,ModelMap model) {
		session.setAttribute("doctorsignup",doctorsignup);
		String dusername=doctorsignup.getDoctorusername();
		int username=docDAO.usernamevalidation(dusername);
		int email=docDAO.emailvalidation(doctorsignup.getDoctoremail());
		System.out.println("count"+username);
		model.addAttribute("menu","sign");
		
		if(result.hasErrors())
		{
			DoctorsignupForm doctorsignupForm= new DoctorsignupForm();
	    	doctorsignupForm.setDoctorsignup(docDAO.getDoctorsignup());
			model.addAttribute("DoctorsignupForm",doctorsignupForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu","sign");
			if(username>0)
			{
				model.addAttribute("usernames","exists");
				System.out.println("username exist");
				System.out.println(username);				
			}
			if(email>0)
			{
				model.addAttribute("emailerror","exists");
					
			}
			return "doctorsignup";
		}
		if(username>0)
		{
			model.addAttribute("usernames","exists");
			System.out.println("username exist123455");
			System.out.println(username);
			return "doctorsignup";
			
		}
		if(email>0)
		{
			model.addAttribute("emailerror","exists");
			System.out.println("error");
			return "doctorsignup";
				
		}
		
    	int h =docDAO.setDoctorsignup(doctorsignup);
    	DoctorsignupForm doctorsignupForm= new DoctorsignupForm();
    	doctorsignupForm.setDoctorsignup(docDAO.getDoctorsignup());
		model.addAttribute("DoctorsignupForm",doctorsignupForm);
		model.addAttribute("success",true);
		model.addAttribute("menu","sign");
        return "login";
	}

	
	@RequestMapping(value="/treatform",method=RequestMethod.GET)
	public String treatform(HttpSession session, ModelMap model,Principal principal)
	{
		model.addAttribute("menu", "consent");
		
		session.removeAttribute("consent");

		if(patientDAO.getUsername(principal).size()>0)
			{		
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		}
		if(treatDAO.getUsernameTreatDetails(principal).size()>0)
		{
		TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getUsernameTreatDetails(principal));
		model.addAttribute("treatform",treatform);
		model.addAttribute("menu", "consent");
        return "edittreatform";
		}
		
		
		
		return "treatform";
	}
	@RequestMapping(value="/treatminor",method=RequestMethod.GET)
	public String treatminor(HttpSession session,ModelMap model,Principal principal)
	{
		session.removeAttribute("minor");
		model.addAttribute("menu", "consent");
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		if(minorDAO.getusernameMinorDetails(principal).size()>0)
		{
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getusernameMinorDetails(principal));
		model.addAttribute("treatminordetailsform",treatminordetailsForm);		
		return "edittreatminor";
		}
		model.addAttribute("menu", "consent");
		return "treatminor";
	}
	
	
	@RequestMapping(value="/medicalrecords",method=RequestMethod.GET)
	public String medicalrecords(HttpSession session,ModelMap model,Principal principal)
	{
		session.removeAttribute("medical");
		model.addAttribute("menu", "authorization");
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		if(medicalDAO.getUsernameMedicalDetails(principal).size()>0)
		{
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getUsernameMedicalDetails(principal));
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		return "editmedical";
		}
		
		return "medicalrecords";
	}
	
	@RequestMapping(value="/medicalrecords", method = RequestMethod.POST)
	public String insertmedicalDetails(Principal principal,HttpSession session,@ModelAttribute("MedicalRecords") @Valid MedicalRecords medicaldetails,BindingResult result,
			ModelMap model) 
		{		
		session.setAttribute("medical",medicaldetails);	

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
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
		int a=medicalDAO.setMedicalDetails(medicaldetails,principal);
        MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getUsernameMedicalDetails(principal));
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "authorization");
		System.out.println("MedicalRecords");
	    
		return "medicalrecordslist";
 
	}

	@RequestMapping(value="/medicalrecordslist", method = RequestMethod.GET)
	public String medicalrecordslist(HttpServletRequest request,ModelMap model,Principal principal) {
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
/*MedicalRecordsForm medicalrecordForm = new MedicalRecordsForm();
        
        medicalrecordForm.setMedicalDetails(medicalDAO.getUsernameMedicalDetails(principal));
       
        model.addAttribute("MedicalRecordsForm", medicalrecordForm);
        model.addAttribute("menu", "authorization");
	       model.addAttribute("success","true");*/
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getUsernameMedicalDetails(principal));
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "authorization");
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
        
	   /*  model.addAttribute("noofrows",medicalrecordsform.getMedicalDetails().size());       
	    medicalrecordsform.setMedicalDetails(medicalDAO.getlimitedmedicalrecords(1));
     model.addAttribute("noofpages",(int) Math.ceil(medicalDAO.getnoofmedicalrecords() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);

		return "medicalrecordslist";

	}
	@RequestMapping(value="/medicalrecordslist_page", method=RequestMethod.GET)
	public String medicalrecordslist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		MedicalRecordsForm medicalrecordsform = new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getlimitedmedicalrecords(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(medicalDAO.getnoofmedicalrecords() * 1.0 / 5));
	    model.addAttribute("MedicalRecordsForm", medicalrecordsform);	
	   	model.addAttribute("noofrows",medicalrecordsform.getMedicalDetails().size());   
    model.addAttribute("currentpage",page);
    model.addAttribute("menu","authorization");
    model.addAttribute("button","viewall");
		return "medicalrecordslist";
		
	}	
	
	@RequestMapping(value={"/", "/viewallmedicalrecordslist"}, method = RequestMethod.GET)
	public String viewallmedicalrecordslist(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		MedicalRecordsForm medicalrecordsform = new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		
		  model.addAttribute("MedicalRecordsForm",medicalrecordsform);	
		model.addAttribute("noofrows",medicalrecordsform.getMedicalDetails().size());    
   
    model.addAttribute("menu","authorization");
    model.addAttribute("button","close");
	      
	        model.addAttribute("menu","authorization");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
        return "medicalrecordslist";

	}

	@RequestMapping(value="/viewmedicalrecords", method = RequestMethod.GET)
	public String viewmedicalrecords(Principal principal,HttpServletRequest request,@RequestParam("medical_no") String medical_no,ModelMap model,MedicalRecords medicaldetails){
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
MedicalRecordsForm medicalrecordForm = new MedicalRecordsForm();
        
        medicalrecordForm.setMedicalDetails(medicalDAO.getUsernameMedicalDetails(principal));
       
        model.addAttribute("MedicalRecordsForm", medicalrecordForm);
        model.addAttribute("menu", "authorization");
	       model.addAttribute("success","true");
		return "viewmedicalrecords";
 
	}
	@RequestMapping(value="/editmedicaldetails", method = RequestMethod.GET)
	public String editmedicaldetails(@RequestParam("medical_no") String medical_no,HttpServletRequest request,ModelMap model,Principal principal) {

		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails(medical_no));
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "authorization");
		return "editmedical";
		
 
	}
	@RequestMapping(value="/editmedical", method = RequestMethod.GET)
	public String editmedical(HttpServletRequest request,ModelMap model,Principal principal) {
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getMedicalDetails());
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "authorization");
		return "editmedical";
	}
	
	@RequestMapping(value="/editusernamemedical", method = RequestMethod.GET)
	public String editusernamemedical(@RequestParam("username") String username,HttpServletRequest request,ModelMap model,Principal principal) {
		
		if(medicalDAO.getUsernameMedicalDetails(username).size()==0)
		{
			model.addAttribute("menu", "checklist");	
			return "errorpage";

		}
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		MedicalRecordsForm medicalrecordsform= new MedicalRecordsForm();
		medicalrecordsform.setMedicalDetails(medicalDAO.getUsernameMedicalDetails(username));
		model.addAttribute("MedicalRecordsForm",medicalrecordsform);
		model.addAttribute("menu", "checklist");
		return "editmedical";
	}
	
	@RequestMapping(value="/updatemedicalrecords", method=RequestMethod.POST)
	public String updatemedicalrecords(HttpServletRequest request,@ModelAttribute("MedicalRecords") @Valid MedicalRecords medicaldetails,
			BindingResult result,ModelMap model,Principal principal)
	{

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
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
        
        medicalrecordForm.setMedicalDetails(medicalDAO.getUsernameMedicalDetails(principal));
       
        model.addAttribute("MedicalRecordsForm", medicalrecordForm);
        model.addAttribute("menu", "authorization");
	       model.addAttribute("success","true");
	       if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	        return "medicalrecordslist";
		
	}
	@RequestMapping(value="/deletemedicalrecordsdetails", method=RequestMethod.GET)
	public String deletemedicalrecords(HttpSession session,ModelMap model, Principal principal,@RequestParam("medical_no") String medical_no) {
	
		System.out.println("medical no"+medical_no);
		model.addAttribute("menu", "authorization");
		if(patientDAO.getUsername(principal).size()>0)
			{			

String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		}
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			medicalDAO.deletemedicalrecordsdetails(username);
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	

		medicalDAO.deletemedicalrecords(medical_no);
		
		
		 model.addAttribute("success","true");
        model.addAttribute("menu", "authorization");
        session.removeAttribute("medical");
        
     
		
		return "medicalrecords";
	}
	
	@RequestMapping(value="/deletemedicalrecords", method=RequestMethod.GET)
	public String removemedicalrecords(@RequestParam("medical_no") String medical_no,ModelMap model, Principal principal,HttpSession session) {
	

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		
		
		medicalDAO.deletemedicalrecords(medical_no);
		
		/*if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		MedicalRecordsForm medicalrecordsForm = new MedicalRecordsForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		medicalrecordsForm.setMedicalDetails(medicalDAO.getMedicalDetails());
        model.addAttribute("MedicalRecordsForm", medicalrecordsForm);
        model.addAttribute("menu", "authorization");
        session.removeAttribute("medical");
        
     
		}*/
		 model.addAttribute("success","true");
	        model.addAttribute("menu", "authorization");
	        session.removeAttribute("medical");
	        
		return "medicalrecords";
	}
	
	@RequestMapping(value="/screeningAuthz",method=RequestMethod.GET)
	public String screeningAuthz(Principal principal,HttpSession session,ModelMap model)
	{
String username=principal.getName();
		if(patientDAO.getUsername(principal).size()>0)
			{	
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		}
		if(screenDAO.getusernameScreening(username).size()>0)
		{
		ScreeningAuthzForm screeningauthzForm= new ScreeningAuthzForm();
    	screeningauthzForm.setScreeningDetails(screenDAO.getusernameScreening(username));
		model.addAttribute("ScreeningAuthzForm",screeningauthzForm);
		model.addAttribute("menu", "authorization");
		return "editscreeningauthz";
		}
		session.removeAttribute("screen");
		model.addAttribute("menu", "authorization");
		return "screeningAuthz";
	}
	@RequestMapping(value="/screeningAuthz", method=RequestMethod.POST)
	public String AddscreeningDetails(Principal principal,HttpSession session,@ModelAttribute("screeningAuthz") @Valid screeningAuthz screeningdetails,
			BindingResult result,ModelMap model) 
	{		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
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
		int a=screenDAO.setScreeningDetails(screeningdetails,principal);
        ScreeningAuthzForm screeningauthzform= new ScreeningAuthzForm();
		screeningauthzform.setScreeningDetails(screenDAO.getusernameScreeningdetails(principal));
		model.addAttribute("ScreeningAuthzForm",screeningauthzform);
		model.addAttribute("menu", "authorization");
		System.out.println("Screening");
		
		//Show view page
		 return "screeninglist";
	}
	
	@RequestMapping(value="/screeninglist", method = RequestMethod.GET)
	public String screeniglist(HttpServletRequest request,ModelMap model,Principal principal) {

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		ScreeningAuthzForm screeningauthzForm= new ScreeningAuthzForm();
    	screeningauthzForm.setScreeningDetails(screenDAO.getusernameScreeningdetails(principal));
		model.addAttribute("ScreeningAuthzForm",screeningauthzForm);
		model.addAttribute("menu", "authorization");
        
	    /* model.addAttribute("noofrows",screeningauthzForm.getScreeningDetails().size());       
	    screeningauthzForm.setScreeningDetails(screenDAO.getlimitedscreeninglist(1));
      model.addAttribute("noofpages",(int) Math.ceil(screenDAO.getnoofscreeninglist() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);

		return "screeninglist";

	}
	@RequestMapping(value="/screeninglist_page", method=RequestMethod.GET)
	public String screeninglist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		ScreeningAuthzForm screeningauthzForm = new ScreeningAuthzForm();
		screeningauthzForm.setScreeningDetails(screenDAO.getlimitedscreeninglist(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(screenDAO.getnoofscreeninglist() * 1.0 / 5));
	    model.addAttribute("ScreeningAuthzForm", screeningauthzForm);	
	   	model.addAttribute("noofrows",screeningauthzForm.getScreeningDetails().size());   
     model.addAttribute("currentpage",page);
     model.addAttribute("menu","authorization");
     model.addAttribute("button","viewall");
		return "screeninglist";
		
	}	
	
	@RequestMapping(value={"/", "/viewallscreeninglist"}, method = RequestMethod.GET)
	public String viewallscreeninglist(HttpServletRequest request,ModelMap model, Principal principal ) {

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		ScreeningAuthzForm screeningauthzForm = new ScreeningAuthzForm();
		screeningauthzForm.setScreeningDetails(screenDAO.getScreeningDetails());
		
		  model.addAttribute("ScreeningAuthzForm",screeningauthzForm);	
		model.addAttribute("noofrows",screeningauthzForm.getScreeningDetails().size());    
    
     model.addAttribute("menu","authorization");
     model.addAttribute("button","close");
	      
	        model.addAttribute("menu","authorization");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
         return "screeninglist";

	}

	
	@RequestMapping(value="/viewscreeningauthz", method = RequestMethod.GET)
	public String viewscreeningauthz(Principal principal,HttpServletRequest request,@RequestParam("screen_no") String screen_no,ModelMap model,screeningAuthz screeningdetails){

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		ScreeningAuthzForm screeningauthzForm= new ScreeningAuthzForm();
    	screeningauthzForm.setScreeningDetails(screenDAO.getusernameScreeningdetails(principal));
		model.addAttribute("ScreeningAuthzForm",screeningauthzForm);
		model.addAttribute("menu", "authorization");
		return "viewscreeningauthz";
 
	}
	
	@RequestMapping(value="/editscreeningauthz", method = RequestMethod.GET)
	public String editscreeningauthz(@RequestParam("username") String username,HttpServletRequest request,ModelMap model,Principal principal) {

		if(screenDAO.getusernameScreening(username).size()==0)
		{
			model.addAttribute("menu", "checklist");
			return "errorpage";
		}
		if(patientDAO.getUsername(username).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		ScreeningAuthzForm screeningauthzForm= new ScreeningAuthzForm();
    	screeningauthzForm.setScreeningDetails(screenDAO.getusernameScreening(username));
		model.addAttribute("ScreeningAuthzForm",screeningauthzForm);
		model.addAttribute("menu", "checklist");
		return "editscreeningauthz";
	}
	@RequestMapping(value="/editscreeningauthzdetails", method = RequestMethod.GET)
	public String editscreeningauthzdetails(@RequestParam("screen_no") String screen_no,HttpServletRequest request,ModelMap model,Principal principal) {

		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		ScreeningAuthzForm screeningauthzForm= new ScreeningAuthzForm();
    	screeningauthzForm.setScreeningDetails(screenDAO.getScreening(screen_no));
		model.addAttribute("ScreeningAuthzForm",screeningauthzForm);
		model.addAttribute("menu", "authorization");
		return "editscreeningauthz";
 
	}

	@RequestMapping(value="/updatescreeningauthz", method=RequestMethod.POST)
	public String updatescreeningauthz(HttpServletRequest request,@ModelAttribute("screeningAuthz") @Valid screeningAuthz screeningauthz,
			BindingResult result,ModelMap model,Principal principal)
	{
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		
		if (result.hasErrors())
		{
			ScreeningAuthzForm screeningauthzForm = new ScreeningAuthzForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
			 screeningauthzForm.setScreeningDetails(screenDAO.getusernameScreeningdetails(principal));
	      
	      model.addAttribute("ScreeningAuthzForm", screeningauthzForm);
			    model.addAttribute("menu", "authorization");
		        return "editscreeningauthz";
		}
		
		int status = screenDAO.updatescreeningauthz(screeningauthz, screeningauthz.getScreen_no(), principal.getName());
		System.out.println(status);
		
		ScreeningAuthzForm screeningauthzForm = new ScreeningAuthzForm();
        
        screeningauthzForm.setScreeningDetails(screenDAO.getusernameScreeningdetails(principal));
       
        model.addAttribute("ScreeningAuthzForm", screeningauthzForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");

	       if(principal.getName().equals("admin"))
	      	    {
	      	    	model.addAttribute("choice","close");
	      	    } 
	       return "screeninglist";
		
	}
	@RequestMapping(value="/screeningauthzlist", method = RequestMethod.GET)
	public String screeningauthzlist(Principal principal,HttpServletRequest request,ModelMap model) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
ScreeningAuthzForm screeningauthzForm = new ScreeningAuthzForm();
        
        screeningauthzForm.setScreeningDetails(screenDAO.getusernameScreeningdetails(principal));
        model.addAttribute("ScreeningAuthzForm", screeningauthzForm);
	     
	       model.addAttribute("menu", "authorization");
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
        
	    /* model.addAttribute("noofrows",insuranceinformationForm.getInsuranceinformation().size());       
	    insuranceinformationForm.setInsuranceinformation(infoDAO.getlimitedinsuranceform(1));
        model.addAttribute("noofpages",(int) Math.ceil(infoDAO.getnoofinsuranceinformation() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);

		return "screeningauthzlist";

	}
	@RequestMapping(value="/deletescreenauthz", method=RequestMethod.GET)
	public String removescreenauthz(@RequestParam("screen_no") String screen_no,HttpSession session,ModelMap model, Principal principal) {
		
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		if(principal.getName().equals("admin"))
		{
			System.out.println("admin");
			String username=(String)session.getAttribute("staffusername");
			screenDAO.deleteusernamescreeningauthz(username);
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}		
		screenDAO.deleteusernamescreeningauthz(principal.getName());
		session.removeAttribute("screen");
	 
		if(patientDAO.getUsername(principal).size()>0)
		{	
		String name="";			
		name=patientDAO.getUsername(principal).get(0).getName();
		model.addAttribute("name",name);
	   model.addAttribute("patientno","0");
	}
		screenDAO.deletescreeningauthz(screen_no);
		
		 model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	       session.removeAttribute("authorization");
		
		
		return "screeningAuthz";
	}
	@RequestMapping(value="/deletescreeningauthz", method=RequestMethod.GET)
	public String removescreeningauthz(@RequestParam("screen_no") String screen_no,ModelMap model, Principal principal,HttpSession session) {
	
		if(patientDAO.getUsername(principal).size()>0)
		{			

			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
		screenDAO.deletescreeningauthz(screen_no);
		
		 model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	       session.removeAttribute("authorization");
		
		/*if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		ScreeningAuthzForm screeningauthzForm = new ScreeningAuthzForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		screeningauthzForm.setScreeningDetails(screenDAO.getScreeningDetails());
        model.addAttribute("ScreeningAuthzForm", screeningauthzForm);
        
		}*/
		
		return "screeningAuthz";
	}
	
	
	


		
		@RequestMapping(value="/Assignment",method=RequestMethod.GET)
		public String Assignment(HttpSession session,ModelMap model,Principal principal)
		{
			session.removeAttribute("assignment");
			session.removeAttribute("authorization");
			
			if(patientDAO.getUsername(principal).size()>0)
			{	
				String name="";			
				name=patientDAO.getUsername(principal).get(0).getName();
				model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		}
			model.addAttribute("menu", "authorization");
			if(assignmentDAO.getUsernameAssignment(principal).size()>0)
			{
			AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
	    	assignmentdetailsform.setAssignmentDetails(assignmentDAO.getUsernameAssignment(principal));
			model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
			model.addAttribute("menu", "authorization");
			return "editassignment";	
			}
			
			return "Assignment";
		}
			
	//validation
	
	@RequestMapping(value="/Assignment", method = RequestMethod.POST)
	public String insertassignmentDetails(Principal principal,HttpSession session,@ModelAttribute("Assignment") @Valid Assignment assignmentdetails,BindingResult result,ModelMap model) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}	
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
		int a=assignmentDAO.setAssignmentDetails(assignmentdetails,principal);
         AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
		assignmentdetailsform.setAssignmentDetails(assignmentDAO.getUsernameAssignment(principal));
		model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
		model.addAttribute("menu", "authorization");
		System.out.println("assignment");
	    
		return "assignmentlist";
 
	}
	
	
	@RequestMapping(value="/assignmentlist", method = RequestMethod.GET)
	public String assignmentlist(Principal principal,HttpServletRequest request,ModelMap model) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
			assignmentdetailsform.setAssignmentDetails(assignmentDAO.getUsernameAssignment(principal));
			model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
			model.addAttribute("menu", "authorization");
			/*model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
			model.addAttribute("noofrows",assignmentdetailsform.getAssignmentDetails().size());       
		    assignmentdetailsform.setAssignmentDetails(assignmentDAO.getlimitedassignment(1));
	        model.addAttribute("noofpages",(int) Math.ceil(assignmentDAO.getnoofassignment() * 1.0 / 5));*/	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "assignmentlist";
	 
		}	
		
		@RequestMapping(value="/assignmentlist_page", method=RequestMethod.GET)
		public String assignmentlist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
			AssignmentDetailsForm assignmentdetailsform = new AssignmentDetailsForm();
			assignmentdetailsform.setAssignmentDetails(assignmentDAO.getlimitedassignment(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(assignmentDAO.getnoofassignment() * 1.0 / 5));
		   	model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);	
		   	model.addAttribute("noofrows",assignmentdetailsform.getAssignmentDetails().size());   
	        model.addAttribute("currentpage",page);
	        model.addAttribute("menu","consent");
	        model.addAttribute("button","viewall");
			return "assignmentlist";
			
		}	
		
		@RequestMapping(value={"/", "/viewallassignmentlist"}, method = RequestMethod.GET)
		public String viewallassignmentlist(HttpServletRequest request,ModelMap model, Principal principal ) {
			if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
			AssignmentDetailsForm assignmentdetailsform = new AssignmentDetailsForm();
			assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignmentDetails());
			
			model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);	
			model.addAttribute("noofrows",assignmentdetailsform.getAssignmentDetails().size());    
	       
	        model.addAttribute("menu","consent");
	        model.addAttribute("button","close");
		      
		        model.addAttribute("menu","consent");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "assignmentlist";
	 
		}
			
	
	@RequestMapping(value="/viewassignment", method = RequestMethod.GET)
	public String viewassignment(Principal principal,HttpServletRequest request,@RequestParam("assignment_no") String assignment_no,ModelMap model)
	{
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		 AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
			assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignment(assignment_no));
			model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
			model.addAttribute("menu", "authorization");
		return "viewassignment";
 
	}

	@RequestMapping(value="/editassignment", method = RequestMethod.GET)
	public String editassignment(@RequestParam("assignment_no") String assignment_no,HttpServletRequest request,ModelMap model,Principal principal) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
    	assignmentdetailsform.setAssignmentDetails(assignmentDAO.getAssignment(assignment_no));
		model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
		model.addAttribute("menu", "authorization");
		return "editassignment";
	}
	
	@RequestMapping(value="/editusernameassignment", method = RequestMethod.GET)
	public String editusernameassignment(@RequestParam("username") String username,HttpServletRequest request,ModelMap model,Principal principal) {
		if(assignmentDAO.getUsernameAssignment(username).size()==0)
		{
			model.addAttribute("menu", "checklist");
			return "errorpage";
		}
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		AssignmentDetailsForm assignmentdetailsform= new AssignmentDetailsForm();
    	assignmentdetailsform.setAssignmentDetails(assignmentDAO.getUsernameAssignment(username));
		model.addAttribute("AssignmentDetailsForm",assignmentdetailsform);
		model.addAttribute("menu", "checklist");
		return "editassignment";
	}
	
	@RequestMapping(value="/updateassignment", method=RequestMethod.POST)
	public String updateassignment(HttpServletRequest request,@ModelAttribute("Assignment") @Valid Assignment assignmentdetails,
			BindingResult result,ModelMap model,Principal principal)
	{
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
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
        
        assignmentdetailsform.setAssignmentDetails(assignmentDAO.getUsernameAssignment(principal));
       
        model.addAttribute("AssignmentDetailsForm", assignmentdetailsform);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	       if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	       
	        return "assignmentlist";
		
	}
	@RequestMapping(value="/deleteassignmentdetails", method=RequestMethod.GET)
	public String removeassignmentdetails(@RequestParam("assignment_no") String assignment_no,ModelMap model, Principal principal) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
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
		
		return "assignmentlist";
	}
	@RequestMapping(value="/deleteassignment", method=RequestMethod.GET)
	public String removeassignment(ModelMap model, Principal principal,HttpSession session) {
		
		session.removeAttribute("assignment");
		if(patientDAO.getUsername(principal).size()>0)
		{		
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	   model.addAttribute("patientno","0");
	}
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			assignmentDAO.deleteusernameassignment(username);
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	

		assignmentDAO.deleteusernameassignment(principal.getName());
		
		 model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	       session.removeAttribute("authorization");
		
		return "Assignment";
	}
	
	@RequestMapping(value="/Hippaprivacy",method=RequestMethod.GET)
	public String Hippaprivacy(HttpSession session,ModelMap model,Principal principal)
	{
		if(patientDAO.getUsername(principal).size()>0)
		{	
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
	   model.addAttribute("patientno","0");
	}
		if(hippaDAO.getusernameHippa(principal).size()>0)
		{
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
    	hippaprivacyform.setPrivacyDetails(hippaDAO.getusernameHippa(principal));
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		return "edithippaprivacy";
		}		
		session.removeAttribute("hippa");
		model.addAttribute("menu", "authorization");
		return "Hippaprivacy";
	}
	
	
	@RequestMapping(value="/Hippaprivacy", method = RequestMethod.POST)
	public String inserthippaDetails(Principal principal,HttpSession session,@ModelAttribute("HippaPrivacy") @Valid HippaPrivacy privacydetails,BindingResult result,ModelMap model) 
		{	
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
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
		int a=hippaDAO.setPrivacyDetails(privacydetails,principal);
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getusernameHippa(principal));
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		System.out.println("Hippa");
	    
		return "hippalist";
		}
	@RequestMapping(value="/hippalist", method = RequestMethod.GET)
	public String hippalist(HttpServletRequest request,ModelMap model,Principal principal) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getusernameHippa((principal)));
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		/*model.addAttribute("noofrows",hippaprivacyform.getPrivacyDetails().size());       
	    hippaprivacyform.setPrivacyDetails(hippaDAO.getlimitedhippaprivacy(1));
        model.addAttribute("noofpages",(int) Math.ceil(hippaDAO.getnoofhippaprivacy() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "hippalist";
 
	}	
	
	@RequestMapping(value="/hippalist_page", method=RequestMethod.GET)
	public String hippalist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HippaPrivacyForm hippaprivacyform = new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getlimitedhippaprivacy(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(hippaDAO.getnoofhippaprivacy() * 1.0 / 5));
	   	model.addAttribute("HippaPrivacyForm",hippaprivacyform);	
	   	model.addAttribute("noofrows",hippaprivacyform.getPrivacyDetails().size());   
        model.addAttribute("currentpage",page);
        model.addAttribute("menu","authorization");
        model.addAttribute("button","viewall");
		return "hippalist";
		
	}	
	
	@RequestMapping(value="/editusernamehippa", method = RequestMethod.GET)
	public String editusernamehippa(@RequestParam("username") String username,HttpServletRequest request,ModelMap model,Principal principal) {
		if(hippaDAO.getusernameHippa(username).size()==0)
		{
			model.addAttribute("menu", "checklist");
			return "errorpage";
		}
	
		if(patientDAO.getUsername(username).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
	HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
	hippaprivacyform.setPrivacyDetails(hippaDAO.getusernameHippa(username));
	model.addAttribute("HippaPrivacyForm",hippaprivacyform);
	model.addAttribute("menu", "checklist");
	return "edithippaprivacy"; 
	}
	
	@RequestMapping(value={"/", "/viewallhippalist"}, method = RequestMethod.GET)
	public String viewallhippalist(HttpServletRequest request,ModelMap model, Principal principal ) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		
		HippaPrivacyForm hippaprivacyform = new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
		
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);	
		model.addAttribute("noofrows",hippaprivacyform.getPrivacyDetails().size());    
       
        model.addAttribute("menu","authorization");
        model.addAttribute("button","close");
	      
	        model.addAttribute("menu","authorization");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
			return "hippalist";
 
	}
	
	@RequestMapping(value="/viewhippa", method = RequestMethod.GET)
	public String viewhippa(Principal principal,HttpServletRequest request,@RequestParam("hippa_no") String hippa_no,ModelMap model,HippaPrivacy privacydetails){
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
		hippaprivacyform.setPrivacyDetails(hippaDAO.getHippa(hippa_no));
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		return "viewhippa";
 
	}
	@RequestMapping(value="/edithippaprivacy", method = RequestMethod.GET)
	public String edithippa(HttpServletRequest request,ModelMap model,Principal principal) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HippaPrivacyForm hippaprivacyform= new HippaPrivacyForm();
    	hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
		model.addAttribute("HippaPrivacyForm",hippaprivacyform);
		model.addAttribute("menu", "authorization");
		return "edithippaprivacy";
	}
	
	
	

	
	
	
	
	@RequestMapping(value="/updatehippaprivacy", method=RequestMethod.POST)
	public String updatehippaprivacy(Principal principal,HttpServletRequest request,@ModelAttribute("HippaPrivacy") @Valid HippaPrivacy privacydetails,
			BindingResult result,ModelMap model)
	{
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		if (result.hasErrors())
		{
			HippaPrivacyForm hippaprivacyform = new HippaPrivacyForm();
        
	        hippaprivacyform.setPrivacyDetails(hippaDAO.getHippa(privacydetails.getHippa_no()));      
	        model.addAttribute("HippaPrivacyForm", hippaprivacyform);
			  model.addAttribute("menu", "authorization");  
		        return "edithippaprivacy";
		}
		
		int status = hippaDAO.updatehippaprivacy(privacydetails, privacydetails.getHippa_no(), principal.getName());
		System.out.println(status);
		
		HippaPrivacyForm hippaprivacyform = new HippaPrivacyForm();
        
        hippaprivacyform.setPrivacyDetails(hippaDAO.getusernameHippa(principal));
       
        model.addAttribute("HippaPrivacyForm", hippaprivacyform);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	       if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	        return "hippalist";
		
	}
	@RequestMapping(value="/deletehippaprivacydetails", method=RequestMethod.GET)
	public String removehippa(HttpSession session,ModelMap model, Principal principal,@RequestParam("hippa_no") String hippa_no) {	
		
		if(patientDAO.getUsername(principal).size()>0)
		{	
			

String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}	
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			hippaDAO.deletehippa(username);	
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	
		hippaDAO.deletehippa(hippa_no);		

	//hippaDAO.deletehippa(principal.getName());		

	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	       session.removeAttribute("hippa");
	        return "Hippaprivacy";
		
	}
	@RequestMapping(value="/deletehippaprivacy", method=RequestMethod.GET)
	public String removehippa(@RequestParam("hippa_no") String hippa_no,ModelMap model,HttpSession session, Principal principal) {	
		if(patientDAO.getUsername(principal).size()>0)
		{			
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			hippaDAO.deletehippa(username);	
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	

		hippaDAO.deletehippaprivacy(hippa_no);
		
HippaPrivacyForm hippaprivacyform = new HippaPrivacyForm();
        
        hippaprivacyform.setPrivacyDetails(hippaDAO.getPrivacyDetails());
       
        model.addAttribute("HippaPrivacyForm", hippaprivacyform);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");
	       session.removeAttribute("hippa");
	       //session.removeAttribute("authorization");
	        return "Hippaprivacy";
		
	}
	
		
	@RequestMapping(value="/treatform", method = RequestMethod.POST)
	public String inserttreatDetails(Principal principal,HttpSession session,@ModelAttribute("Treatform") @Valid Treatform treatdetails,BindingResult result,
			ModelMap model) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		session.setAttribute("consent",treatdetails);
		if (result.hasErrors())
		{
			TreatForm treatform= new TreatForm();
			treatform.setTreatform(treatDAO.getUsernameTreatDetails(principal));
			model.addAttribute("treatform",treatform);
			model.addAttribute("success","true");
			model.addAttribute("menu", "consent");
			return "treatform";
		}
		
		model.addAttribute("TreatForm",treatdetails);
		int a=treatDAO.setTreatDetails(treatdetails,principal);
         TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getUsernameTreatDetails(principal));
		model.addAttribute("treatform",treatform);
		model.addAttribute("menu", "consent");

		System.out.println("treat");
	    
		return "treatformlist";
 
	}
	
		
	
	@RequestMapping(value="/treatminor", method = RequestMethod.POST)
	public String insertminorDetails(Principal principal,HttpSession session,@ModelAttribute("TreatMinor") @Valid TreatMinor minordetails,BindingResult result,ModelMap model) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
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
		int a=minorDAO.setMinorDetails(minordetails,principal);
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getusernameMinorDetails(principal));
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
	   model.addAttribute("success","true");
	   model.addAttribute("menu", "consent");
		return "treatminorlist";
 
	}
	
	
	@RequestMapping(value="/patientDetails",method=RequestMethod.GET)
	public String patientDetails(Principal principal,HttpSession session,ModelMap model)
	
	{
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		int username=docDAO.usernamevalidation(principal .getName());
		if(patientDAO.getUsername(principal).size()==0)
		{
			patientDAO.usernamevalidation11(principal .getName());
			
			System.out.println("deleted");
		}
		session.removeAttribute("first");
		int patientdetails=patientDAO.getmaxrecords();
		int totalpatient=patientdetails+1;
		System.out.println("total"+totalpatient);
		model.addAttribute("totalpatient",totalpatient);
		PatientDetailsForm patientdetailsform= new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		model.addAttribute("patientDetailsForm",patientdetailsform);
		 model.addAttribute("noofrows",patientDAO.getPatientDetails().size());
		 model.addAttribute("menu", "patientInfo");
		return "patientDetails";
	}
	/*@RequestMapping(value="/patientDetails_ajax",method=RequestMethod.POST)
	public @ResponseBody String addpatientdetails(HttpServletRequest request,HttpSession session,@ModelAttribute(value="patientDetails") PatientDetails patientdetails, BindingResult result,ModelMap model ) {
		String symptoms=patientdetails.getSymptoms();
		System.out.println("symptoms......."+patientdetails.getSymptoms());
 session.setAttribute("injury", symptoms);
				return "quadraplevisual";
				
	}
	@RequestMapping(value="/patientDetails1_ajax",method=RequestMethod.POST)
	public @ResponseBody String addpatientdetails1(HttpServletRequest request,HttpSession session,@ModelAttribute(value="patientDetails") PatientDetails patientdetails, BindingResult result,ModelMap model ) {
		String[] symptoms=request.getParameterValues("message[]");
		System.out.println("symptoms......."+symptoms);
 session.setAttribute("injury", symptoms);
				return "quadraplevisual";
				
	}*/
	
	@RequestMapping(value="/duties_ajax",method=RequestMethod.POST)
	public @ResponseBody String duties_ajax(@ModelAttribute("user")PatientDetails patientDetails)
	{
		System.out.println("username..."+patientDetails.getUser());
		if(dutiesunderDAO.getusernameDutiesunderduress(patientDetails.getUser()).size()>0)
		{
			return "edit";
		}
		
		return "";
	}
	@RequestMapping(value="/check_symptom_ajax",method=RequestMethod.POST)
	public @ResponseBody String check_symptom_ajax(HttpSession session,Principal principal,@ModelAttribute("symptom_ajax") String symptom,PatientDetails patientDetails)
	{
		System.out.println("symptom..."+patientDetails.getSymptom_ajax());
		 String username=principal.getName();
		 if(signDAO.getrole(principal.getName()).equals("1"))
		 {
			
			 username=(String)session.getAttribute("pusername"); 
			 System.out.println("username"+username);
		 }
    	 if(username.equals("admin"))
    	 { 
    	 
    		 username=(String)session.getAttribute("staffusername");
    		 System.out.println("susername"+username);
    	 }
		if(quadraplevisualDAO.checkusernameQuadraple(patientDetails.getSymptom_ajax(),username).size()>0)
	{
		return quadraplevisualDAO.checkusernameQuadraple(patientDetails.getSymptom_ajax(), username).get(0).getQuadrapleno();
	}
		
		
		return "";
	}
	@RequestMapping(value="/patientDetails", method = RequestMethod.POST)
	public String insert_patientdetails(HttpServletRequest request,HttpSession session,PatientDetails patientDetails,ModelMap model,Principal principal) {
		session.setAttribute("first",patientDetails);
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		
		String type= request.getParameter("Type_Of_Accident");
		System.out.println("type of accident="+type);		
		String[] Symptoms = new String[1000];
	    Symptoms = request.getParameterValues("symptom[]");
	    
	    for(int i=0;i<1;i++)
	    {
	    	System.out.println("symptom..."+Symptoms[i]);
	    }
	    for(String symptom:Symptoms)
	    {
	    	System.out.println("symptomsdsd..."+Symptoms);
	    }
	   // System.out.println("symptom..."+Symptoms[1]);	      
		/*if(result.hasErrors())
			{			
				PatientDetailsForm patientdetailsform = new PatientDetailsForm();
				patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
				model.addAttribute("patientDetailsForm",patientdetailsform);
				model.addAttribute("Success","true");
				model.addAttribute("menu", "patientInfo");
				return "patientDetails";
			}	*/      
	        patientDAO.setPatientDetails(patientDetails,Symptoms,principal);
	        PatientDetailsForm patientdetailsform = new PatientDetailsForm();
			patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
			model.addAttribute("patientno","0");
			String age=patientDAO.getAge();
		    System.out.println("controller age"+age);
		    /*int major=Integer.parseInt(age);*/
		    /*String major=""+age;*/
		    /*request.setAttribute("major",age);*/
		    model.addAttribute("age",age);
		    session.setAttribute("age",age);
		//	model.addAttribute("patientDetailsForm",patientdetailsform);
			model.addAttribute("menu", "patientInfo");
			/*session.removeAttribute("patient");*/
			
		System.out.println(type);
			if(type.equals(""))
			{
				return "viewpatient";	
			}
			if(type.equals("other"))
			{
				if(patientDAO.getUsername(principal).size()>0)
				{			
			   model.addAttribute("patientno","0");
			}
				PatientDetailsForm patientdetailsform1 = new PatientDetailsForm();
				patientdetailsform1.setPatientDetails(patientDAO.getUsername(principal));			
		        model.addAttribute("patientDetailsForm", patientdetailsform1);		    
		        model.addAttribute("menu", "patientInfo");
				return "viewpatient";
			} 
			
			
			return  type;
			
	       
	      
			
		}
	


	@RequestMapping(value="/viewpatient", method=RequestMethod.GET)
	public String viewpatient(HttpServletRequest request,ModelMap model, Principal principal) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getUsername(principal));
		//patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientdetailsform);
       // System.out.println("patient="+patientdetailsform.getPatientDetails().size());
        model.addAttribute("menu", "patientInfo");
        /*System.out.println("Patient");
        model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());       
	    patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(1));
        model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		*/
		
		return "viewpatient";
 
	}	
	
	@RequestMapping(value="/viewadminpatient_page", method=RequestMethod.GET)
	public String viewadminpatient_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
	
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));
	   	model.addAttribute("patientDetailsForm", patientdetailsform);	
	   	model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());   
        model.addAttribute("currentpage",page);
        model.addAttribute("menu","adminpatient");
        model.addAttribute("button","viewall");
		return "viewallpatientdetails";
		
	}
	
	
	
	@RequestMapping(value="/viewpatient_page", method=RequestMethod.GET)
	public String viewpatient_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
	
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));
	   	model.addAttribute("patientDetailsForm", patientdetailsform);	
	   	model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());   
        model.addAttribute("currentpage",page);
        model.addAttribute("menu","search");
        model.addAttribute("button","viewall");
		return "viewpatientdetails";
		
	}	
	@RequestMapping(value="/viewpatientdetails", method=RequestMethod.GET)
	public String viewpatientdetails(HttpSession session,HttpServletRequest request,ModelMap model, Principal principal) {
		//session.removeAttribute("lastname");		
		//session.removeAttribute("attorney");
		//session.removeAttribute("accident");
		//session.removeAttribute("dateofaccident");	
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		//patientdetailsform.setPatientDetails(patientDAO.getUsername(principal));
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientdetailsform);
       // System.out.println("patient="+patientdetailsform.getPatientDetails().size());
        model.addAttribute("menu", "search");
        System.out.println("Patient");
        model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());       
	    patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(1));
        model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewpatientdetails";
 
	}	

	@RequestMapping(value="/findpatient", method=RequestMethod.GET)
	public String findpatientdetails(HttpSession session,@RequestParam("NameOfAttorney")String NameOfAttorney,@RequestParam("lastname")String lastname,@RequestParam("accident")String accident,@RequestParam("dateofaccident")String dateofaccident,@RequestParam("insurance")String insurance, HttpServletRequest request,ModelMap model, Principal principal) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		session.removeAttribute("lastname");
		session.removeAttribute("attorney");
		session.removeAttribute("accident");
		session.removeAttribute("dateofaccident");
		session.removeAttribute("insurance");
		session.setAttribute("lastname",lastname);
		session.setAttribute("attorney",NameOfAttorney);
		session.setAttribute("accident",accident);
		session.setAttribute("dateofaccident",dateofaccident);
		session.setAttribute("insurance",insurance);
		System.out.println("insurance..."+insurance);
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		//patientdetailsform.setPatientDetails(patientDAO.getUsername(principal));
		patientdetailsform.setPatientDetails(patientDAO.getPatientAttorneyDetails(NameOfAttorney,lastname,accident,dateofaccident,insurance));
        model.addAttribute("patientDetailsForm", patientdetailsform);
       // System.out.println("patient="+patientdetailsform.getPatientDetails().size());
        model.addAttribute("menu", "search");
        System.out.println("Patient");
       /* model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());       
	    patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(1));
        model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		*/
		
		return "viewpatientdetails";
 
	}	

	@RequestMapping(value="/findadminpatient", method=RequestMethod.GET)
	public String findadminpatientdetails(HttpSession session,@RequestParam("NameOfAttorney")String NameOfAttorney,@RequestParam("lastname")String lastname,@RequestParam("accident")String accident,@RequestParam("dateofaccident")String dateofaccident,@RequestParam("insurance")String insurance, HttpServletRequest request,ModelMap model, Principal principal) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		model.addAttribute("menu","adminpatient");
	/*	session.removeAttribute("lastname");
		session.removeAttribute("attorney");
		session.removeAttribute("accident");
		session.removeAttribute("dateofaccident");
		session.removeAttribute("insurance");
		*/session.setAttribute("lastname",lastname);
		session.setAttribute("attorney",NameOfAttorney);
		session.setAttribute("accident",accident);
		session.setAttribute("dateofaccident",dateofaccident);
		session.setAttribute("insurance",insurance);
		System.out.println("insurance..."+insurance);
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		//patientdetailsform.setPatientDetails(patientDAO.getUsername(principal));
		patientdetailsform.setPatientDetails(patientDAO.getPatientAttorneyDetails(NameOfAttorney,lastname,accident,dateofaccident,insurance));
        model.addAttribute("patientDetailsForm", patientdetailsform);
       // System.out.println("patient="+patientdetailsform.getPatientDetails().size());
     
    
       /* model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());       
	    patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(1));
        model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		*/
		
		return "viewallpatientdetails";
 
	}	

	
	
	@RequestMapping(value="/viewallpatientdetails", method=RequestMethod.GET)
	public String viewallpatientdetails(HttpSession session, HttpServletRequest request,ModelMap model, Principal principal) {
	/*	if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}*/
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		//patientdetailsform.setPatientDetails(patientDAO.getUsername(principal));
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientdetailsform);
       // System.out.println("patient="+patientdetailsform.getPatientDetails().size());
       model.addAttribute("menu","adminpatient");
        System.out.println("Patient");
        model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());       
	    patientdetailsform.setPatientDetails(patientDAO.getlimitedpatientdetails(1));
        model.addAttribute("noofpages",(int) Math.ceil(patientDAO.getnoofpatientdetails() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
	        session.removeAttribute("lastname");
			session.removeAttribute("attorney");
			session.removeAttribute("accident");
			session.removeAttribute("dateofaccident");
			session.removeAttribute("insurance");
		return "viewallpatientdetails";
 
	}	
	
	
	@RequestMapping(value={"/", "/viewadminallpatient"}, method = RequestMethod.GET)
	public String viewadminallpatient(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		
		model.addAttribute("patientDetailsForm", patientdetailsform);	
		model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());    
       
        model.addAttribute("menu","adminpatient");
        model.addAttribute("button","close");
	      
	        //model.addAttribute("menu","patientInfo");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
			return "viewallpatientdetails";
 
	}
	
	@RequestMapping(value={"/", "/viewallpatient"}, method = RequestMethod.GET)
	public String viewallpatient(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
		
		model.addAttribute("patientDetailsForm", patientdetailsform);	
		model.addAttribute("noofrows",patientdetailsform.getPatientDetails().size());    
       
        model.addAttribute("menu","search");
        model.addAttribute("button","close");
	      
	        //model.addAttribute("menu","patientInfo");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
			return "viewpatientdetails";
 
	}
	@RequestMapping(value="/patientDetailsList", method=RequestMethod.GET)
	public String patientDetailsList(Principal principal,HttpServletRequest request,@RequestParam("patient_id") String patient_id,ModelMap model,PatientDetails patient)
	{
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		model.addAttribute("patientno","0");
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		patientdetailsform.setPatientDetails(patientDAO.viewPatientDetails(patient_id));
		
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("patientDetailsForm", patientdetailsform);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "patientInfo");
		List<String> symptom=new ArrayList<String>();
		symptom=patientDAO.getsymptomdetails(patient_id);
		System.out.println(symptom);
		model.addAttribute("symptom",symptom);
		
		
		return "patientDetailsList";
	}
	@RequestMapping(value="/patientdoctorDetailsList", method=RequestMethod.GET)
	public String patientdoctorDetailsList(HttpSession session,Principal principal,HttpServletRequest request,@RequestParam("patient_id") String patient_id,ModelMap model,PatientDetails patient)
	{
		
 String pusername=patientDAO.getpatientusername(patient_id);
 session.setAttribute("pusername",pusername);
		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		model.addAttribute("patientno","0");
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		patientdetailsform.setPatientDetails(patientDAO.viewPatientDetails(patient_id));
		
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("patientDetailsForm", patientdetailsform);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "search");
		List<String> symptom=new ArrayList<String>();
		symptom=patientDAO.getusernamesymptomdetails(patient_id);
		System.out.println(symptom);
		model.addAttribute("symptom",symptom);
		
		
		return "doctorpatientdetails";
	}
	@RequestMapping(value="/patientadminDetailsList", method=RequestMethod.GET)
	public String patientadminDetailsList(Principal principal,HttpServletRequest request,@RequestParam("patient_id") String patient_id,ModelMap model,PatientDetails patient)
	{
		model.addAttribute("menu","adminpatient");

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		model.addAttribute("patientno","0");
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
        //participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participants_id));
		patientdetailsform.setPatientDetails(patientDAO.viewPatientDetails(patient_id));
		
		//model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		model.addAttribute("patientDetailsForm", patientdetailsform);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		//model.addAttribute("menu", "search");
		List<String> symptom=new ArrayList<String>();
		symptom=patientDAO.getsymptomdetails(patient_id);
		System.out.println(symptom);
		model.addAttribute("symptom",symptom);
		
		
		return "patientDetailsList";
	}
	@RequestMapping(value="/editpatientdetails", method=RequestMethod.GET)
	public String editPatientDetails(HttpServletRequest request,@RequestParam("patient_id") String patient_id,ModelMap model,PatientDetails patient,Principal principal)
	{
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		System.out.println("database123");
		//RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
      	PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		List<String> symptom=new ArrayList<String>();
		symptom=patientDAO.getsymptomdetails(principal.getName());
		System.out.println(symptom);
		model.addAttribute("symptom",symptom);
		
		
        patientdetailsform.setPatientDetails(patientDAO.viewPatientDetails(patient_id));
        
       
        
        model.addAttribute("patientDetailsForm", patientdetailsform);
        
        model.addAttribute("menu", "patientInfo");
        model.addAttribute("cancel","0");
		return "editpatientdetails";
	}
	@RequestMapping(value="/error", method=RequestMethod.GET)
	public String error(HttpServletRequest request,ModelMap model,PatientDetails patient,Principal principal)
	{
		
		return "errorpage";
	}
	
	@RequestMapping(value="/editusernamepatientdetails", method=RequestMethod.GET)
	public String editusernamePatientDetails(HttpServletRequest request,@RequestParam("username") String username,ModelMap model,PatientDetails patient,Principal principal)
	{
		if(patientDAO.getUsername(username).size()==0)
		{			
			return "errorpage";
	   
	}
		
	if(patientDAO.getUsername(username).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
			
		//RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
      	PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		
		patientdetailsform.setPatientDetails(patientDAO.getUsername(username));
        model.addAttribute("patientDetailsForm", patientdetailsform);
      
        String username1=patientdetailsform.getPatientDetails().get(0).getUsername();
        System.out.println("username1....."+username1);
        model.addAttribute("menu", "checklist");
        List<String> symptom=new ArrayList<String>();
		symptom=patientDAO.getsymptomdetails(username1);
		System.out.println(symptom);
		model.addAttribute("symptom",symptom);
		model.addAttribute("cancel","1");
		return "editpatientdetails";
	}

	
	
	
	@RequestMapping(value="/editadminpatientdetails", method=RequestMethod.GET)
	public String editadminPatientDetails(HttpServletRequest request,@RequestParam("patient_id") String patient_id,ModelMap model,PatientDetails patient,Principal principal)
	{
		

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		System.out.println("database123");
		//RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
      	PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		List<String> symptom=new ArrayList<String>();
		symptom=patientDAO.getsymptomdetails(patient_id);
		System.out.println(symptom);
		model.addAttribute("symptom",symptom);
		
		
        patientdetailsform.setPatientDetails(patientDAO.viewPatientDetails(patient_id));
        
       
        
        model.addAttribute("patientDetailsForm", patientdetailsform);
        
        model.addAttribute("menu", "patientInfo");
		return "editadminpatientdetails";
	}
	
	@RequestMapping(value="/updateadminpatientdetails", method=RequestMethod.POST)
	public String updateadminPatientDetails(HttpServletRequest request,@ModelAttribute("PatientDetails") @Valid PatientDetails patient,
			BindingResult result,ModelMap model,Principal principal)
	{
		String[] Symptoms = new String[1000];
	      Symptoms = request.getParameterValues("message[]");
	    
	      for(int i=0;i<Symptoms.length;i++)
	      {
	        System.out.println("symptom..."+Symptoms[i]+"next"+Symptoms.length);
	      }
	     
		model.addAttribute("patientno","0");
		/*if (result.hasErrors())
		{
			System.out.println("haserrors");
		//	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
		
	    PatientDetailsForm patientDetailsForm = new PatientDetailsForm();
	    patientDetailsForm.setPatientDetails(patientDAO.viewPatientDetails(patient.getPatient_id()));
	        model.addAttribute("patientDetailsForm", patientDetailsForm);
			    model.addAttribute("menu", "patientInfo");
		        return "editpatientdetails";
		}*/
		System.out.println("hello");


		
		int status = patientDAO.updatePatientDetails(patient, patient.getPatient_id(), principal.getName(),Symptoms);
		System.out.println(status);
		
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm",patientdetailsform);
        model.addAttribute("success","true");
        model.addAttribute("menu", "adminpatient");
	    return "viewallpatientdetails";
		
	}
	@RequestMapping(value="/updatepatientdetails", method=RequestMethod.POST)
	public String updatePatientDetails(HttpSession session,HttpServletRequest request,@ModelAttribute("PatientDetails") @Valid PatientDetails patient,ModelMap model,Principal principal)
	{
		String[] Symptoms = new String[1000];
	      Symptoms = request.getParameterValues("symptom[]");
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		
	     
	      for(int i=0;i<Symptoms.length;i++)
	      {
	        System.out.println("symptom..."+Symptoms[i]+"next"+Symptoms.length);
	      }
	     
		model.addAttribute("patientno","0");
		/*if (result.hasErrors())
		{
			System.out.println("haserrors");
		//	RadiologicReportForm radiologicReportForm = new RadiologicReportForm();
		
	    PatientDetailsForm patientDetailsForm = new PatientDetailsForm();
	    patientDetailsForm.setPatientDetails(patientDAO.viewPatientDetails(patient.getPatient_id()));
	        model.addAttribute("patientDetailsForm", patientDetailsForm);
			    model.addAttribute("menu", "patientInfo");
		        return "editpatientdetails";
		}*/
		System.out.println("hello");


		
		int status = patientDAO.updatePatientDetails(patient, patient.getPatient_id(), principal.getName(),Symptoms);
		System.out.println(status);
		
		String age=patientDAO.getpatientAge(patient.getUsername());
		session.setAttribute("age",age);
		System.out.println("age....."+age);
		PatientDetailsForm patientdetailsform = new PatientDetailsForm();
		patientdetailsform.setPatientDetails(patientDAO.getUsername(principal));
        model.addAttribute("patientDetailsForm",patientdetailsform);
        model.addAttribute("success","true");
        model.addAttribute("menu", "patientInfo");
	    if(principal.getName().equals("admin"))
	    {
	    	model.addAttribute("choice","close");
	    }
        return "viewpatient";
		
	}

	@RequestMapping(value="/deletepatientdetails", method=RequestMethod.GET)
	public String removePatientDetails(@RequestParam("patient_id") String patient_id,ModelMap model,HttpSession session, Principal principal) {
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			patientDAO.deletePatientDetails(patient_id,username);
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		int status = patientDAO.deletePatientDetails(patient_id,  principal.getName());
		if(status==1)
		{
        model.addAttribute("success","true");
      
        PatientDetailsForm patientDetailsForm = new PatientDetailsForm();
        
       patientDetailsForm.setPatientDetails(patientDAO.getUsername(principal));
        model.addAttribute("patientDetailsForm", patientDetailsForm);
        model.addAttribute("menu", "patientInfo");
		}
		
		return "patientDetails";
		
	}
	@RequestMapping(value="/deleteadminpatientdetails", method=RequestMethod.GET)
	public String deleteadminPatientDetails(@RequestParam("patient_id") String patient_id,ModelMap model, Principal principal) {
		
		int status = patientDAO.deletePatientDetails(patient_id,  principal.getName());
		if(status==1)
		{
        model.addAttribute("success","true");
      
        PatientDetailsForm patientDetailsForm = new PatientDetailsForm();
        
       patientDetailsForm.setPatientDetails(patientDAO.getPatientDetails());
        model.addAttribute("patientDetailsForm", patientDetailsForm);
        model.addAttribute("menu", "adminpatient");
		}
		
		return "viewallpatientdetails";
		
	}

	@RequestMapping(value="/hardshiplist", method = RequestMethod.GET)
	public String hardshiplist(HttpServletRequest request,ModelMap model,Principal principal) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getUsernameHardshipagreement(principal));
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		model.addAttribute("menu", "authorization");
		/*model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
        
	     model.addAttribute("noofrows",hardshipagreementForm.getHardshipagreement().size());       
	    hardshipagreementForm.setHardshipagreement(hardDAO.getlimitedhardshipagreement(1));
       model.addAttribute("noofpages",(int) Math.ceil(hardDAO.getnoofhardshipagreement() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);

		return "hardshiplist";

	}
	@RequestMapping(value="/hardshiplist_page", method=RequestMethod.GET)
	public String hardshiplist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HardshipagreementForm hardshipagreementForm = new HardshipagreementForm();
		hardshipagreementForm.setHardshipagreement(hardDAO.getlimitedhardshipagreement(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(hardDAO.getnoofhardshipagreement() * 1.0 / 5));
	    model.addAttribute("hardshipagreementform", hardshipagreementForm);	
	   	model.addAttribute("noofrows",hardshipagreementForm.getHardshipagreement().size());   
      model.addAttribute("currentpage",page);
      model.addAttribute("menu","authorization");
      model.addAttribute("button","viewall");
		return "hardshiplist";
		
	}	
	
	@RequestMapping(value={"/", "/viewallhardshiplist"}, method = RequestMethod.GET)
	public String viewallhardshiplist(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HardshipagreementForm hardshipagreementForm = new HardshipagreementForm();
		hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		
		  model.addAttribute("hardshipagreementform", hardshipagreementForm);	
		model.addAttribute("noofrows",hardshipagreementForm.getHardshipagreement().size());    
     
      model.addAttribute("menu","authorization");
      model.addAttribute("button","close");
	      
	        model.addAttribute("menu","authorization");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
          return "hardshiplist";

	}

	
	@RequestMapping(value="/viewhardship", method=RequestMethod.GET)
	public String viewhardship(Principal principal,HttpServletRequest request,@RequestParam("agreement_no") String agreement_no,ModelMap model,Hardshipagreement hardship)
	{
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
        
		hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement(agreement_no));
	
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		model.addAttribute("menu", "authorization");
		
		return "viewhardship";
	}
	
	@RequestMapping(value="/insuranceinfolist", method = RequestMethod.GET)
	public String insuranceinfolist(Principal principal,HttpServletRequest request,ModelMap model) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getusernameInsuranceinformation(principal));
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		model.addAttribute("menu", "health");
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
        
	    /* model.addAttribute("noofrows",insuranceinformationForm.getInsuranceinformation().size());       
	    insuranceinformationForm.setInsuranceinformation(infoDAO.getlimitedinsuranceform(1));
        model.addAttribute("noofpages",(int) Math.ceil(infoDAO.getnoofinsuranceinformation() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);

		return "insuranceinfolist";

	}
	@RequestMapping(value="/insuranceinfolist_page", method=RequestMethod.GET)
	public String insuranceinfolist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		InsuranceinformationForm insuranceinformationForm = new InsuranceinformationForm();
		insuranceinformationForm.setInsuranceinformation(infoDAO.getlimitedinsuranceform(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(infoDAO.getnoofinsuranceinformation() * 1.0 / 5));
	    model.addAttribute("InsuranceinformationForm", insuranceinformationForm);	
	   	model.addAttribute("noofrows",insuranceinformationForm.getInsuranceinformation().size());   
       model.addAttribute("currentpage",page);
       model.addAttribute("menu","health");
       model.addAttribute("button","viewall");
		return "insuranceinfolist";
		
	}	
	
	@RequestMapping(value={"/", "/viewallinsuranceinfolist"}, method = RequestMethod.GET)
	public String viewallinsuranceinfolist(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		InsuranceinformationForm insuranceinformationForm = new InsuranceinformationForm();
		insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		
		  model.addAttribute("InsuranceinformationForm", insuranceinformationForm);	
		model.addAttribute("noofrows",insuranceinformationForm.getInsuranceinformation().size());    
      
       model.addAttribute("menu","health");
       model.addAttribute("button","close");
	      
	        model.addAttribute("menu","health");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
           return "insuranceinfolist";
 
	}
		
	@RequestMapping(value="/viewinsuranceinformation", method = RequestMethod.GET)
	public String viewinsuranceinformation(HttpServletRequest request,ModelMap model,Insuranceinformation insuranceinformation,Principal principal){
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getusernameInsuranceinformation(principal));
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
		model.addAttribute("menu", "health");
		  model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		return "viewinsuranceinformation";
 
	}
	
	@RequestMapping(value="/insuranceplanlist", method = RequestMethod.GET)
	public String insuranceplanlist(Principal principal,HttpServletRequest request,ModelMap model) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		  
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplanUsername(principal));
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "health");
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
        
	   /*  model.addAttribute("noofrows",insuranceplanForm.getInsuranceplan().size());       
	    insuranceplanForm.setInsuranceplan(planDAO.getlimitedinsuranceplan(1));
model.addAttribute("noofpages",(int) Math.ceil(planDAO.getnoofinsuranceplan() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);

		return "insuranceplanlist";
 
	}
	@RequestMapping(value="/insuranceplanlist_page", method=RequestMethod.GET)
	public String insuranceplanlist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		
		InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
		insuranceplanForm.setInsuranceplan(planDAO.getlimitedinsuranceplan(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(planDAO.getnoofinsuranceplan() * 1.0 / 5));
	    model.addAttribute("insuranceplanform", insuranceplanForm);	
	   	model.addAttribute("noofrows",insuranceplanForm.getInsuranceplan().size());   
        model.addAttribute("currentpage",page);
        model.addAttribute("menu","health");
        model.addAttribute("button","viewall");
		return "insuranceplanlist";
		
	}	
	
	@RequestMapping(value={"/", "/viewallinsuranceplanlist"}, method = RequestMethod.GET)
	public String viewallinsuranceplanlist(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
		insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
		
		  model.addAttribute("insuranceplanform", insuranceplanForm);	
		model.addAttribute("noofrows",insuranceplanForm.getInsuranceplan().size());    
       
        model.addAttribute("menu","health");
        model.addAttribute("button","close");
	      
	        model.addAttribute("menu","health");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
			return "insuranceplanlist";
 
	}

	@RequestMapping(value="/viewinsuranceplan", method = RequestMethod.GET)
	public String viewinsuranceplan(Principal principal,HttpServletRequest request,@RequestParam("no") String no,ModelMap model,Insuranceplan insuranceplan){
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplanUsername(principal));
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "health");
		return "viewinsuranceplan";
 
	}
	
   
	@RequestMapping(value="/editinsuranceplan", method = RequestMethod.GET)
	public String editinsuranceplan(Principal principal,HttpServletRequest request,@RequestParam("no") String no,ModelMap model,Insuranceplan insuranceplan) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsurance(no));
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "health");
		return "editinsuranceplan";
 
	}
	@RequestMapping(value="/editusernameinsuranceplan", method = RequestMethod.GET)
	public String editusernameinsuranceplan(Principal principal,HttpServletRequest request,@RequestParam("username") String username,ModelMap model,Insuranceplan insuranceplan) {
		if(planDAO.getInsuranceplanUsername(username).size()==0)
		{
			model.addAttribute("menu", "checklist");
			return "errorpage";
		}
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplanUsername(username));
		model.addAttribute("insuranceplanform",insuranceplanForm);
		model.addAttribute("menu", "checklist");
		return "editinsuranceplan";
 
	}
	
	@RequestMapping(value="/updateinsuranceplan", method=RequestMethod.POST)
	public String updateinsuranceplan(HttpServletRequest request,@ModelAttribute("insuranceplan") @Valid Insuranceplan insuranceplan,
			BindingResult result,ModelMap model,Principal principal)
	{
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		if (result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
	     //   participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants(participant.getParticipants_id()));
	      insuranceplanForm.setInsuranceplan(planDAO.getInsurance(insuranceplan.getNo()));
	      
	        model.addAttribute("insuranceplanForm", insuranceplanForm);
			    model.addAttribute("menu", "health");
		        return "editinsuranceplan";
		}
		
        
        
        
		int status = planDAO.updateinsuranceplan(insuranceplan, insuranceplan.getNo(), principal.getName());
		System.out.println(status);
		
		InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
        
        insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplanUsername(principal));
       
        model.addAttribute("insuranceplanform", insuranceplanForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "health");
	       if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	        return "insuranceplanlist";
		
	}

	@RequestMapping(value="/deleteinsuranceplan", method=RequestMethod.GET)
	public String removeInsuranceplan(HttpSession session,ModelMap model, Principal principal) {
		session.removeAttribute("waiver");
		if(patientDAO.getUsername(principal).size()>0)
		{		
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	  
	}
		if(principal.getName().equals("admin"))
		{
			System.out.println("admin");
			String username=(String)session.getAttribute("staffusername");
			planDAO.deleteinsuranceplan(username);
			model.addAttribute("choice","close");
			return "insuranceplanlist";
	
		}	
		int status=planDAO.deleteinsuranceplan(principal.getName());
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		InsuranceplanForm insuranceplanForm = new InsuranceplanForm();
		//participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
		insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplanUsername(principal));
        model.addAttribute("insuranceplanform", insuranceplanForm);
        model.addAttribute("menu", "health");
        
        session.removeAttribute("waiver");
		}
		
		return "insuranceplan";
	}
	
	@RequestMapping(value="/insuranceverifylist", method = RequestMethod.GET)
	public String insuranceverifylist(HttpServletRequest request,ModelMap model) {
		
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		  model.addAttribute("menu", "admin");
			model.addAttribute("noofrows",insuranceverificationForm.getInsuranceverification().size());       
		    insuranceverificationForm.setInsuranceverification(veriDAO.getlimitedinsuranceverification(1));
	        model.addAttribute("noofpages",(int) Math.ceil(veriDAO.getnoofinsuranceverification() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "insuranceverifylist";
	 
		}	
		
		@RequestMapping(value="/insuranceverifylist_page", method=RequestMethod.GET)
		public String insuranceverifylist_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			InsuranceverificationForm insuranceverificationForm = new InsuranceverificationForm();
			insuranceverificationForm.setInsuranceverification(veriDAO.getlimitedinsuranceverification(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(veriDAO.getnoofinsuranceverification() * 1.0 / 5));
		   	model.addAttribute("InsuranceverificationForm",insuranceverificationForm);	
		   	model.addAttribute("noofrows",insuranceverificationForm.getInsuranceverification().size());   
	        model.addAttribute("currentpage",page);
	        model.addAttribute("menu","admin");
	        model.addAttribute("button","viewall");
			return "insuranceverifylist";
			
		}	
		
		@RequestMapping(value={"/", "/viewallinsuranceverifylist"}, method = RequestMethod.GET)
		public String viewallinsuranceverifylist(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			InsuranceverificationForm insuranceverificationForm = new InsuranceverificationForm();
			insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
			
			model.addAttribute("InsuranceverificationForm",insuranceverificationForm);	
			model.addAttribute("noofrows",insuranceverificationForm.getInsuranceverification().size());    
	       
	        model.addAttribute("menu","admin");
	        model.addAttribute("button","close");
		      
		        model.addAttribute("menu","admin");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
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
	public String treatformlist(HttpServletRequest request,ModelMap model,Principal principal) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getUsernameTreatDetails(principal));
		System.out.println(treatform);
		model.addAttribute("treatform",treatform);
		 model.addAttribute("menu", "consent");
		 /*model.addAttribute("noofrows",treatform.getTreatform().size());       
		    treatform.setTreatform(treatDAO.getlimitedtreatform(1));
	        model.addAttribute("noofpages",(int) Math.ceil(treatDAO.getnooftreatdetails() * 1.0 / 5));*/	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "treatformlist";
	 
		}	
		
		@RequestMapping(value="/treatformlist_page", method=RequestMethod.GET)
		public String treatformlist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
			TreatForm treatform = new TreatForm();
			treatform.setTreatform(treatDAO.getlimitedtreatform(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(treatDAO.getnooftreatdetails() * 1.0 / 5));
		   	model.addAttribute("treatform",treatform);	
		   	model.addAttribute("noofrows",treatform.getTreatform().size());   
	        model.addAttribute("currentpage",page);
	        model.addAttribute("menu","consent");
	        model.addAttribute("button","viewall");
			return "treatformlist";
			
		}	
		
		@RequestMapping(value={"/", "/viewalltreatformlist"}, method = RequestMethod.GET)
		public String viewalltreatformlist(HttpServletRequest request,ModelMap model, Principal principal ) {
			if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
			TreatForm treatform = new TreatForm();
			treatform.setTreatform(treatDAO.getTreatDetails());
			
			model.addAttribute("treatform",treatform);	
			model.addAttribute("noofrows",treatform.getTreatform().size());    
	       
	        model.addAttribute("menu","consent");
	        model.addAttribute("button","close");
		      
		        model.addAttribute("menu","consent");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "treatformlist";
		}
		
	@RequestMapping(value="/viewtreatform", method = RequestMethod.GET)
	public String viewtreatform(Principal principal,HttpServletRequest request,@RequestParam("treat_no") String treat_no,ModelMap model,Treatform treatdetails){
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getUsernameTreatDetails(principal));
		System.out.println(treatform);
		model.addAttribute("treatform",treatform);
		 model.addAttribute("menu", "consent");
		return "viewtreatform";
 
	}
	

	@RequestMapping(value="/edittreatform", method = RequestMethod.GET)
	public String edittreatform(Principal principal,HttpServletRequest request,ModelMap model) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatForm treatform= new TreatForm();
			treatform.setTreatform(treatDAO.getTreatDetails());
			model.addAttribute("treatform",treatform);
			 model.addAttribute("menu", "consent");
		
		return "edittreatform";
		
 
	}	
	@RequestMapping(value="/editusernametreatform", method = RequestMethod.GET)
	public String editusernametreatform(@RequestParam("username") String username, Principal principal,HttpServletRequest request,ModelMap model) {
				
		if(treatDAO.getUsernameTreatDetails(username).size()==0)
		{
			model.addAttribute("menu", "checklist");				
			return "errorpage";
		}

		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatForm treatform= new TreatForm();
			treatform.setTreatform(treatDAO.getUsernameTreatDetails(username));
			model.addAttribute("treatform",treatform);
			 model.addAttribute("menu", "checklist");
		
		return "edittreatform";
		
 
	}

	
	@RequestMapping(value="/updatetreatform", method=RequestMethod.POST)
	public String updatetreatform(Principal principal,HttpSession session,@ModelAttribute("Treatform") @Valid Treatform treatdetails,BindingResult result,
			ModelMap model) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		int status = treatDAO.updatetreatform(treatdetails, treatdetails.getTreat_no());
		System.out.println(status);
		 model.addAttribute("success","true"); 
		TreatForm treatform= new TreatForm();
			treatform.setTreatform(treatDAO.getUsernameTreatDetails(principal));
			model.addAttribute("treatform",treatform);
	      
	       model.addAttribute("menu", "consent");
	       if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	        return "treatformlist";
		
	}
	

	@RequestMapping(value="/deletetreatform", method=RequestMethod.GET)
	public String removetreatform(HttpSession session,/*@RequestParam("treat_no") String treat_no,*/ModelMap model, Principal principal) {
	
		session.removeAttribute("consent");
		model.addAttribute("menu", "consent");
		if(patientDAO.getUsername(principal).size()>0)
		{			
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
		
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			treatDAO.deletetreatform(username);		
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	
		
		int status=treatDAO.deletetreatform(principal.getName());
		
		if(status==1)
		{
        model.addAttribute("success","true");
        TreatForm treatform= new TreatForm();
		treatform.setTreatform(treatDAO.getTreatDetails());
		model.addAttribute("treatform",treatform);
		 
		}
		
		return "treatform";
	}
	
	@RequestMapping(value="/treatminorlist", method = RequestMethod.GET)
	public String treatminorlist(HttpServletRequest request,ModelMap model,Principal principal) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getusernameMinorDetails(principal));
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
			/*model.addAttribute("noofrows",treatminordetailsForm.getMinorDetails().size());       
		    treatminordetailsForm.setMinorDetails(minorDAO.getlimitedtreatminor(1));
	        model.addAttribute("noofpages",(int) Math.ceil(minorDAO.getnoofminordetails() * 1.0 / 5));*/	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "treatminorlist";
	 
		}	
		
		@RequestMapping(value="/treatminorlist_page", method=RequestMethod.GET)
		public String treatminorlist_page(Principal principal,HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
			if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
			TreatMinorDetailsForm treatminordetailsForm = new TreatMinorDetailsForm();
			treatminordetailsForm.setMinorDetails(minorDAO.getlimitedtreatminor(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(minorDAO.getnoofminordetails() * 1.0 / 5));
		   	model.addAttribute("treatminordetailsform",treatminordetailsForm);	
		   	model.addAttribute("noofrows",treatminordetailsForm.getMinorDetails().size());   
	        model.addAttribute("currentpage",page);
	        model.addAttribute("menu","consent");
	        model.addAttribute("button","viewall");
			return "treatminorlist";
			
		}	
		
		@RequestMapping(value={"/", "/viewalltreatminorlist"}, method = RequestMethod.GET)
		public String viewalltreatminorlist(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
			TreatMinorDetailsForm treatminordetailsForm = new TreatMinorDetailsForm();
			treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails());
			
			model.addAttribute("treatminordetailsform",treatminordetailsForm);	
			model.addAttribute("noofrows",treatminordetailsForm.getMinorDetails().size());    
	       
	        model.addAttribute("menu","consent");
	        model.addAttribute("button","close");
		      
		        model.addAttribute("menu","consent");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "treatminorlist";
	 
		}
	
	@RequestMapping(value="/viewtreatminor", method = RequestMethod.GET)
	public String viewtreatminor(Principal principal,HttpServletRequest request,@RequestParam("minor_no") String minor_no,ModelMap model,TreatMinor minordetails){
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails(minor_no));
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
		return "viewtreatminor";
 
	}

	@RequestMapping(value="/edittreatminordetails", method = RequestMethod.GET)
	public String edittreatminordetails(@RequestParam("treat_no") String minorno,HttpServletRequest request,ModelMap model,Principal principal) {

		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails(minorno));
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
		return "edittreatminor";
		
 
	}
	
	@RequestMapping(value="/edittreatminor", method = RequestMethod.GET)
	public String edittreatminor(HttpServletRequest request,ModelMap model,Principal principal) {

		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
		return "edittreatminor";
		
 
	}
	
	@RequestMapping(value="/editusernametreatminor", method = RequestMethod.GET)
	public String editusernametreatminor(@RequestParam("username") String username,HttpServletRequest request,ModelMap model,Principal principal) {

		if(minorDAO.getusernameMinorDetails(username).size()==0)
		{
			 model.addAttribute("menu", "checklist");
			 return "errorpage";
		}
		if(patientDAO.getUsername(username).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getusernameMinorDetails(username));
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "checklist");
		return "edittreatminor";
		
 
	}
	
	@RequestMapping(value="/updatetreatminor", method=RequestMethod.POST)
	public String updatetreatminor(Principal principal,HttpSession session,@ModelAttribute("TreatMinor") @Valid TreatMinor minordetails,BindingResult result,ModelMap model) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
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
		treatminordetailsForm.setMinorDetails(minorDAO.getusernameMinorDetails(principal));
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "consent");
	       if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	        return "treatminorlist";
		
	}
	

	@RequestMapping(value="/deletetreatminor", method=RequestMethod.GET)
	public String removetreatminor(@RequestParam("minor_no") String minor_no,ModelMap model, Principal principal,HttpSession session) {
		session.removeAttribute("minor");
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			minorDAO.deletetreatminor(minor_no);
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	
		
		int status=minorDAO.deletetreatminor(minor_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
        TreatMinorDetailsForm treatminordetailsForm= new TreatMinorDetailsForm();
		treatminordetailsForm.setMinorDetails(minorDAO.getMinorDetails());
		model.addAttribute("treatminordetailsform",treatminordetailsForm);
		 model.addAttribute("menu", "consent");
		 session.removeAttribute("consent");
		}
		 session.removeAttribute("consent");
		return "treatminor";
	}
	@RequestMapping(value="/deleteminor", method=RequestMethod.GET)
	public String deletetreatminor(ModelMap model, Principal principal,HttpSession session,@RequestParam("minor_no") String minor_no) {
	
		if(patientDAO.getUsername(principal).size()>0)
		{	

String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
		
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			minorDAO.deletetreat(username);
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	

		minorDAO.deletetreat(minor_no);
		 model.addAttribute("success","true");
	       model.addAttribute("menu", "consent");
	       session.removeAttribute("consent");
		
		return "treatminor";
	}
	
	
	
	
	@RequestMapping(value="/edithardship", method = RequestMethod.GET)
	public String edithardship(HttpServletRequest request,ModelMap model,Principal principal) {
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getUsernameHardshipagreement(principal));
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		 model.addAttribute("menu", "authorization");
        
		 return "edithardship";
		
 
	}
	@RequestMapping(value="/editusernamehardship", method = RequestMethod.GET)
	public String editusernamehardship(@RequestParam("username") String username,HttpServletRequest request,ModelMap model,Principal principal) {
		
		if(hardDAO.getUsernameHardshipagreement(username).size()==0)
		{
			 model.addAttribute("menu", "checklist");
			 return "errorpage";

		}
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getUsernameHardshipagreement(username));
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
		 model.addAttribute("menu", "checklist");
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
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		
		int status = hardDAO.updatehardship(Hardshipagreement, Hardshipagreement.getAgreement_no(), principal.getName());
		System.out.println(status);
		HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getUsernameHardshipagreement(principal));
		model.addAttribute("hardshipagreementform",hardshipagreementForm);
	       model.addAttribute("success","true");
	       model.addAttribute("menu", "authorization");

	       if(principal.getName().equals("admin"))
	      	    {
	      	    	model.addAttribute("choice","close");
	      	    }
	        return "hardshiplist";
		
	}
	

	@RequestMapping(value="/deletehardship", method=RequestMethod.GET)
	public String removehardship(@RequestParam("agreement_no") String agreement_no,ModelMap model, Principal principal,HttpSession session) {
		session.removeAttribute("hard");
		if(patientDAO.getUsername(principal).size()>0)
		{			
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
		int status=hardDAO.deletehardship(agreement_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
        HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("hardshipagreementform",hardshipagreementForm);		}
		 model.addAttribute("menu", "authorization");
		 session.removeAttribute("hard");
		return "hardshipagreement";
	}
	
	@RequestMapping(value="/deletehardshipagreement", method=RequestMethod.GET)
	public String removehardship(@RequestParam("agreement_no") String agreement_no,HttpSession session,ModelMap model, Principal principal) {
		System.out.println("agreement no"+agreement_no);
		session.removeAttribute("hard");
		if(patientDAO.getUsername(principal).size()>0)
		{

String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	  
	}
		
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			hardDAO.deletehardshipdetails(username);
			model.addAttribute("choice","close");
			  session.removeAttribute("hard");
			return "screeninglist";
	
		}	
		hardDAO.deletehardship(agreement_no);
		model.addAttribute("menu", "authorization");
		
		 model.addAttribute("success","true");
	     
		 session.removeAttribute("hard");
		/*int status=hardDAO.deletehardshipdetails(principal.getName());*/
		
		/*if(status==1)
		{
        model.addAttribute("success","true");
		//ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
        	}
		 model.addAttribute("menu", "authorization");*/
		return "hardshipagreement";
	}
	
	@RequestMapping(value="/editinsuranceinformation", method = RequestMethod.GET)
	public String editinsuranceinformation(Principal principal,HttpServletRequest request,@RequestParam("number") String number,ModelMap model,Insuranceinformation insuranceinformation) {
			
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}	
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
	    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation(number));
			model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
			model.addAttribute("menu", "health");
		return "editinsuranceinformation";
	}
	
	@RequestMapping(value="/editusernameinsuranceinformation", method = RequestMethod.GET)
	public String editusernameinsuranceinformation(Principal principal,HttpServletRequest request,@RequestParam("username") String username,ModelMap model,Insuranceinformation insuranceinformation) {
			
		if(infoDAO.getusernameInsuranceinformation(username).size()==0)
		{
			model.addAttribute("menu", "checklist");
			return "errorpage";
		}
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}	
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
	    	insuranceinformationForm.setInsuranceinformation(infoDAO.getusernameInsuranceinformation(username));
			model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
			model.addAttribute("menu", "checklist");
		return "editinsuranceinformation";
	}
	

	@RequestMapping(value="/updateinsuranceinformation", method=RequestMethod.POST)
	public String updateinsuranceinformation(HttpServletRequest request,@ModelAttribute("Insuranceinformation") @Valid Insuranceinformation insuranceinformation,
			BindingResult result,ModelMap model,Principal principal)
	{
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		int status = infoDAO.updateinsuranceinformation(insuranceinformation, insuranceinformation.getNumber());
		System.out.println(status);
		InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getusernameInsuranceinformation(principal));
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);   
		  model.addAttribute("success","true");
		 
		 model.addAttribute("menu", "health");
		 if(principal.getName().equals("admin"))
		    {
		    	model.addAttribute("choice","close");
		    }
	        return "insuranceinfolist";
		
	}
	
	@RequestMapping(value="/deleteinsuranceinformation", method=RequestMethod.GET)
	public String removeinsuranceinformation(HttpSession session,ModelMap model, Principal principal) {
	session.removeAttribute("info");
		if(patientDAO.getUsername(principal).size()>0)
		{			
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
		if(principal.getName().equals("admin"))
		{
			
			String username=(String)session.getAttribute("staffusername");
			infoDAO.deleteinsuranceinformation(username);
			model.addAttribute("choice","close");
			return "insuranceinfolist";
	
		}	
		
		int status=infoDAO.deleteinsuranceinformation(principal.getName());
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getusernameInsuranceinformation(principal));
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
	@RequestMapping(value="/editinsuranceverificationdetails", method = RequestMethod.GET)
	public String editinsuranceverificationdetails(@RequestParam("username") String username,HttpServletRequest request,ModelMap model) {
		
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.checkusername(username));
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
		 model.addAttribute("menu", "admin");
		 
		return "editinsuranceverification";
	}
	@RequestMapping(value="/updateinsuranceverification", method=RequestMethod.POST)
	public String updateinsuranceverification(HttpServletRequest request,@ModelAttribute("Insuranceverification") @Valid Insuranceverification insuranceverification,
			BindingResult result,ModelMap model,Principal principal)
	{
		if(result.hasErrors())
		{
			InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
	    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification(insuranceverification.getForm_no()));
			model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
			model.addAttribute("menu", "admin");
			
			
			return "editinsuranceverification";
		}
		
		int status = veriDAO.updateinsuranceverification(insuranceverification, insuranceverification.getForm_no());
		System.out.println(status);
		InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);    
		model.addAttribute("success","true");
		model.addAttribute("menu", "admin");
		
	    return "insuranceverification";
		
	}
	

	@RequestMapping(value="/deleteinsuranceverification", method=RequestMethod.GET)
	public String removeinsuranceverification(@RequestParam("form_no") String form_no,ModelMap model, Principal principal,HttpSession session) {
	
		session.removeAttribute("insurance");
		int status=veriDAO.deleteinsuranceverification(form_no);
		
		if(status==1)
		{
        model.addAttribute("success","true");		  
		model.addAttribute("menu", "admin");
		session.removeAttribute("insurance");
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
	public String logout(HttpSession session,ModelMap model) {
		session.invalidate();
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
			model.addAttribute("menu", "soapnotes");
		

		return "soapnotes";
 
	}
		@RequestMapping(value="/soapnotes", method = RequestMethod.GET)
	public String soapnotes(HttpSession session,ModelMap model,Principal principal) {
			session.removeAttribute("soap");
			String username=(String) session.getAttribute("username");
			if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
			 {
				 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
				 model.addAttribute("name",name);
			 }	
			/*if(patientDAO.getUsername(principal).size()>0)
			{	
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		
		}*/
			if(soapDAO.getusernameSoapnotes(username).size()>0)
			{
				SoapnotesForm soapnotesForm = new SoapnotesForm();       
		        soapnotesForm.setSoapnotes(soapDAO.getusernameSoapnotes(username));
		        model.addAttribute("soapnotesForm", soapnotesForm);		
				/*soapnotesForm.setSoapnotes(soapDAO.getSoapid());*/
				model.addAttribute("soapnotesForm", soapnotesForm);
				model.addAttribute("menu", "soapnotes");
				 List<String> diagnosis=new ArrayList<String>();
			     diagnosis =soapDAO.getdiagnosis(username);
			        model.addAttribute("diagnosis",diagnosis);
			        return "editsoapnotes";
			}
			System.out.println("usernamesdf"+session.getAttribute("username"));
		/*	if(soapDAO.getusernameSoapnotes(username));
			{
				
			}*/
			model.addAttribute("menu", "soapnotes");
			
	      return "soapnotes";
	}
	
	@RequestMapping(value="/soapnotes", method = RequestMethod.POST)
	public String insert_soapnotes(HttpServletRequest request,HttpSession session,@ModelAttribute("SoapNotes")  @Valid SoapNotes soapnotes,BindingResult result,ModelMap model) {
		
		session.setAttribute("soap", soapnotes);
		
		if(result.hasErrors())
		{
			SoapnotesForm soapnotesForm = new SoapnotesForm();
			soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
			model.addAttribute("soapnotesForm", soapnotesForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "soapnotes";
		}
	
		String[] diagnosis=request.getParameterValues("diagnosis[]");
		soapDAO.diagnosis(diagnosis,request.getParameter("username"));
		model.put("SoapNotes", soapnotes);
		model.addAttribute("soapnotesForm",soapnotes);
    	int a=soapDAO.setSoapnotes(soapnotes);
    	SoapnotesForm soapnotesForm= new SoapnotesForm();
    	soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
		model.addAttribute("soapnotesForm",soapnotesForm);
		
		model.addAttribute("menu", "search");
		return "doctorsearch";
 
	}
	//@RequestMapping(value="/editsoapnotes", method=RequestMethod.GET)
	/*public String editsoapnote(HttpSession session,HttpServletRequest request,ModelMap model,SoapNotes soap)
	{
       session.getAttribute("soapnotesid").
		String soapnotes=request.getParameter("soapnotes");
		SoapnotesForm soapnotesForm = new SoapnotesForm();       
        soapnotesForm.setSoapnotes(soapDAO.getSoap(soapid));
        model.addAttribute("soapnotesForm", soapnotesForm);		
		soapnotesForm.setSoapnotes(soapDAO.getSoapid());
		model.addAttribute("soapnotesForm", soapnotesForm);
		model.addAttribute("menu", "notes");
		 model.addAttribute("visit","0"); 
        
        return "editsoapnotes";
        }*/
	@RequestMapping(value="/editsoapnotes", method=RequestMethod.GET)
	public String editsoapnotes(HttpSession session,HttpServletRequest request,@RequestParam("soapid") String soapid,ModelMap model,SoapNotes soap)
	{
		
		SoapnotesForm soapnotesForm = new SoapnotesForm();       
        soapnotesForm.setSoapnotes(soapDAO.getusernameSoapnotes(soapid));
        model.addAttribute("soapnotesForm", soapnotesForm);		
		/*soapnotesForm.setSoapnotes(soapDAO.getSoapid());*/
		model.addAttribute("soapnotesForm", soapnotesForm);
	
		 List<String> diagnosis=new ArrayList<String>();
	        diagnosis =soapDAO.getdiagnosis(soapid);
	        model.addAttribute("menu", "notes");
	        model.addAttribute("diagnosis",diagnosis);
        return "editsoapnotes";
        }
	
	@RequestMapping(value="/updatesoapnotes", method=RequestMethod.POST)
	public String updatesoapnotes(HttpServletRequest request,@ModelAttribute("soapnotes") @Valid SoapNotes soapnotes,
			BindingResult result,ModelMap model,Principal principal)
	{
	
		
		//soapnotes.getUsername();
		if (result.hasErrors())
		{
			SoapnotesForm soapnotesForm = new SoapnotesForm();
	     
	      soapnotesForm.setSoapnotes(soapDAO.getSoap(soapnotes.getSoapid()));
	      
	        model.addAttribute("soapnotesForm", soapnotesForm);
	        model.addAttribute("menu", "notes"); 
	        
		        return "editsoapnotes";
		}
		String[] diagnosis=request.getParameterValues("diagnosis[]");
		for(String diagnosis1:diagnosis)
		{
		System.out.println(diagnosis1);	
		}
		soapDAO.deletediagnosis(diagnosis,request.getParameter("username"));
		soapDAO.diagnosis(diagnosis,request.getParameter("username"));
		System.out.println("soapid"+soapnotes.getSoapid());
		int status = soapDAO.updatesoapnotes(soapnotes, soapnotes.getUsername(), principal.getName());
		System.out.println(status);
		
		SoapnotesForm soapnotesForm = new SoapnotesForm();
        
       soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
       
        model.addAttribute("soapnotesForm", soapnotesForm);
	       model.addAttribute("success","true");
	   	model.addAttribute("menu","doctorsearch");
	       //model.addAttribute("visit","1");
	        return "doctorsearch";
		
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
		  	// model.addAttribute("visit","1");
		  	 model.addAttribute("noofrows",soapnotesForm.getSoapnotes().size());       
			    soapnotesForm.setSoapnotes(soapDAO.getlimitedsoapnotes(1));
		        model.addAttribute("noofpages",(int) Math.ceil(soapDAO.getnoofsoapnotes() * 1.0 / 5));	 
			        model.addAttribute("button","viewall");
			        model.addAttribute("success","false");
			        model.addAttribute("currentpage",1);
				
				
				return "viewsoapnotes";
		 
			}	
			
			@RequestMapping(value="/viewsoapnotes_page", method=RequestMethod.GET)
			public String viewsoapnotes_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
				
				SoapnotesForm soapnotesForm = new SoapnotesForm();
				soapnotesForm.setSoapnotes(soapDAO.getlimitedsoapnotes(page));
				
			   	model.addAttribute("noofpages",(int) Math.ceil(soapDAO.getnoofsoapnotes() * 1.0 / 5));
			    model.addAttribute("soapnotesForm", soapnotesForm);	
			   	model.addAttribute("noofrows",soapnotesForm.getSoapnotes().size());   
		        model.addAttribute("currentpage",page);
		        model.addAttribute("menu","notes");
		        model.addAttribute("button","viewall");
				return "viewsoapnotes";
				
			}	
			
			@RequestMapping(value={"/", "/viewallsoapnotes"}, method = RequestMethod.GET)
			public String viewallsoapnotes(HttpServletRequest request,ModelMap model, Principal principal ) {
				
				SoapnotesForm soapnotesForm = new SoapnotesForm();
				soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
				
				  model.addAttribute("soapnotesForm", soapnotesForm);	
				model.addAttribute("noofrows",soapnotesForm.getSoapnotes().size());    
		       
		        model.addAttribute("menu","notes");
		        model.addAttribute("button","close");
			      
			        model.addAttribute("menu","notes");
			        model.addAttribute("success","false");
			        model.addAttribute("button","close");
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
	public String removesoapnotes(@RequestParam("soapid") String soapid,ModelMap model, Principal principal,HttpSession session) {
	
		int status=soapDAO.deletesoapnotes(soapid);
		if(patientDAO.getUsername((String)session.getAttribute("username")).size()>0)
		 {
			 String name=patientDAO.getUsername((String)session.getAttribute("username")).get(0).getName();
			 model.addAttribute("name",name);
		 }	
		if(status==1)
		{
        model.addAttribute("success","true");
		SoapnotesForm soapnotesForm = new SoapnotesForm();
		soapnotesForm.setSoapnotes(soapDAO.getSoapnotes());
        model.addAttribute("soapnotesForm", soapnotesForm);
       // model.addAttribute("menu", "notes");
        model.addAttribute("menu", "soapnotes");
        session.removeAttribute("soapnotes");
      
		}
		
		return "soapnotes";
	}

	}
	
  