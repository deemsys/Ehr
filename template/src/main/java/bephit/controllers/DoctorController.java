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
import bephit.dao.DoctorsearchDAO;
import bephit.dao.HamiltonchiropracticDAO;
import bephit.dao.HardshipagreementDAO;
import bephit.dao.HipexamDAO;
import bephit.dao.HippaDAO;
import bephit.dao.InsuranceinformationDAO;
import bephit.dao.InsuranceplanDAO;
import bephit.dao.InsuranceverificationDAO;
import bephit.dao.LumbopelvicexamDAO;
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
import bephit.forms.*;

/*import bephit.forms.DoctorsignupForm;*/

//import bephit.forms.DoctorsignupForm;

import bephit.forms.DoctorsearchForm;
import bephit.forms.DoctorsignupForm;
import bephit.forms.FootExamForm;
import bephit.forms.HamiltonchiropracticForm;
import bephit.forms.HardshipagreementForm;
import bephit.forms.HipExamForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.InsuranceinformationForm;
import bephit.forms.InsuranceplanForm;
import bephit.forms.InsuranceverificationForm;
import bephit.forms.LumbopelvicexamForm;
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
import bephit.dao.*;


 
@Controller
public class DoctorController {

	@Autowired  
	HipexamDAO hipexamDAO;
	@Autowired
	LumbopelvicexamDAO lumboDAO;
	@Autowired
	FootexamDAO footexamDAO;
	@Autowired
	KneeexamDAO kneeDAO;	
	@Autowired
	ShoulderexamDAO shoulderexamDAO;
	@Autowired
	WristexamDAO wristexamDAO;
	
	
	
	@RequestMapping(value="/perry", method = RequestMethod.GET)
	public String hip(ModelMap model) {
	
	
		 return "hipexam";
	}
	@RequestMapping(value="/ankle", method = RequestMethod.GET)
	public String ankle(ModelMap model) {
	
	
		 return "footexam";
	}
	@RequestMapping(value="/shoulderexam", method = RequestMethod.GET)
	public String shoulderexam(ModelMap model) {
	
	
		 return "shoulderexam";
	}
	
	@RequestMapping(value="/wristexam", method = RequestMethod.GET)
	public String wristexam(ModelMap model) {
	
	
		 return "wristandhand";
	}
	
	@RequestMapping(value="/insertwristexam", method = RequestMethod.POST)
	public String insert_wristexam(HttpServletRequest request,HttpSession session,@ModelAttribute("WristExam")  @Valid WristExam wristexamdetails,BindingResult result,ModelMap model) {
		int c=wristexamDAO.setwristexam(wristexamdetails);
		System.out.println("c---"+c);
		
		
		return "wristandhand";
	}
	
	@RequestMapping(value="/viewwristexamdetails", method = RequestMethod.GET)	
	public String viewwristexamdetail(ModelMap model,WristExam wristexamdetails) {
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamallDetails());	
	model.addAttribute("wristexamform",wristexamform);
	//System.out.println(shoulderexamform.getShoulderexamdetails().get(0).getPname());
	return "viewwristexam";
	}
	
	@RequestMapping(value="/deletewristexam", method = RequestMethod.GET)
	public String deletewristexam(@RequestParam("wristexamno") String wristexamno,ModelMap model) {	
		wristexamDAO.deletewristexamdetails(wristexamno);
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamallDetails());
	    model.addAttribute("wristexamform",wristexamform);		
	    return "viewwristexam";
	
	}
	
	@RequestMapping(value="/editwristexam", method = RequestMethod.GET)
	public String editwristexam(@RequestParam("wristexamno") String wristexamno,ModelMap model,HipExam hipexam) {	
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamDetails(wristexamno));
	    model.addAttribute("wristexamform",wristexamform);			
	return "editwristexam";
	
	}
	
	@RequestMapping(value="/updatewristexam", method = RequestMethod.POST)
	public String updatewristexam(HttpServletRequest request,HttpSession session,@ModelAttribute("wristExam")  @Valid WristExam wristexamdetails,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
		System.out.println(wristexamdetails.getWristexamno());
		int c=wristexamDAO.updatewristexam(wristexamdetails,wristexamdetails.getWristexamno());
		System.out.println("c---"+c);
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamallDetails());	
		model.addAttribute("wristexamform",wristexamform);		
		
		return "viewwristexam";
	}
	
	@RequestMapping(value="/wristexamlist", method = RequestMethod.GET)	
	public String wristexamlist(@RequestParam("wristexamno") String wristexamno,ModelMap model) {	
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamDetails(wristexamno));	
		model.addAttribute("wristexamform",wristexamform);				
			
	return "wristexamlist";
	}
	
	
	
	@RequestMapping(value="/insertshoulderexam", method = RequestMethod.POST)
	public String insert_shoulderexam(HttpServletRequest request,HttpSession session,@ModelAttribute("ShoulderExam")  @Valid ShoulderExam shoulderexamdetails,BindingResult result,ModelMap model) {
		System.out.print("outsiderefferal"+shoulderexamdetails.getOutsiderefferal());
		int c=shoulderexamDAO.setshoulderexam(shoulderexamdetails);
		System.out.println("c---"+c);
		
		
		return "viewshoulderexam";
	}
	
	@RequestMapping(value="/deleteshoulderexam", method = RequestMethod.GET)
	public String deleteshoulderexam(@RequestParam("shoulderexamno") String shoulderexamno,ModelMap model,HipExam hipexam) {	
		shoulderexamDAO.deleteshoulderexamdetails(shoulderexamno);
		ShoulderExamForm shoulderexamform=new ShoulderExamForm();
		shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getshoulderexamallDetails());	
	model.addAttribute("shoulderexamform",shoulderexamform);		
	return "viewshoulderexam";	
	}
	
	@RequestMapping(value="/viewshoulderexamdetails", method = RequestMethod.GET)	
	public String viewshoulderexamdetail(ModelMap model,ShoulderExam shoulderexamdetails) {
		ShoulderExamForm shoulderexamform=new ShoulderExamForm();
		shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getshoulderexamallDetails());	
	model.addAttribute("shoulderexamform",shoulderexamform);
	//System.out.println(shoulderexamform.getShoulderexamdetails().get(0).getPname());
	return "viewshoulderexam";
	}
	
	@RequestMapping(value="/shoulderexamlist", method = RequestMethod.GET)	
	public String shoulderexamlist(@RequestParam("shoulderexamno") String shoulderexamno,ModelMap model,HipExam hipexam) {	
	ShoulderExamForm shoulderexamform=new ShoulderExamForm();
	shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getShoulderexamDetails(shoulderexamno));
	model.addAttribute("shoulderexamform",shoulderexamform);	
	return "shoulderexamlist";
	}
	
	@RequestMapping(value="/editshoulderexam", method = RequestMethod.GET)
	public String editshoulderexam(@RequestParam("shoulderexamno") String shoulderexamno,ModelMap model,HipExam hipexam) {	
	ShoulderExamForm shoulderexamform=new ShoulderExamForm();
	shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getShoulderexamDetails(shoulderexamno));	
	model.addAttribute("shoulderexamform",shoulderexamform);		
	return "editshoulderexam";
	
	}
	
	@RequestMapping(value="/updateshoulderexam", method = RequestMethod.POST)
	public String updateshoulderexam(HttpServletRequest request,HttpSession session,@ModelAttribute("ShoulderExam")  @Valid ShoulderExam shoulderexamdetails,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
		
		int c=shoulderexamDAO.updateshoulderexam(shoulderexamdetails,shoulderexamdetails.getShoulderexamno());
		System.out.println("c---"+c);
		ShoulderExamForm shoulderexamform=new ShoulderExamForm();
		shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getshoulderexamallDetails());	
		model.addAttribute("shoulderexamform",shoulderexamform);		
		
		return "viewshoulderexam";
	}


	@RequestMapping(value="/viewhipexam", method = RequestMethod.GET)
	public String viewhipexamdetails(ModelMap model,HipExam hipexam) {	
	HipExamForm hipexamform=new HipExamForm();
	hipexamform.setHipexamdetails(hipexamDAO.gethipexamallDetails());
	System.out.println("yes");
	System.out.println(hipexamform.getHipexamdetails().get(0).getPname());
	model.addAttribute("hipexamform",hipexamform);
	return "viewhipexamdetails";
	}
	
	@RequestMapping(value="/viewfootexam", method = RequestMethod.GET)
	public String viewfootexam(ModelMap model,HipExam hipexam) {
		FootExamForm footexamform=new FootExamForm();
		footexamform.setFootexamdetails(footexamDAO.getfootexamDetails());		
	System.out.println(footexamform.getFootexamdetails().get(0).getPname());
	model.addAttribute("footexamform",footexamform);
	return "viewfootexam";
	}
	
	@RequestMapping(value="/deletehipexam", method = RequestMethod.GET)
	public String deletehipexam(@RequestParam("hipexamno") String hipexamno,ModelMap model,HipExam hipexam) {	
	hipexamDAO.deletehipexamdetails(hipexamno);	
	HipExamForm hipexamform=new HipExamForm();
	hipexamform.setHipexamdetails(hipexamDAO.gethipexamallDetails());
	System.out.println("yes");
	System.out.println(hipexamform.getHipexamdetails().get(0).getPname());
	model.addAttribute("hipexamform",hipexamform);
	return "viewhipexamdetails";
	
	}
	@RequestMapping(value="/deletefootexam", method = RequestMethod.GET)
	public String deletefootexam(@RequestParam("footexamno") String footexamno,ModelMap model) {	
		footexamDAO.deletehipexamdetails(footexamno);
		FootExamForm footexamform=new FootExamForm();
		footexamform.setFootexamdetails(footexamDAO.getfootexamDetails());		
	System.out.println(footexamform.getFootexamdetails().get(0).getPname());
	model.addAttribute("footexamform",footexamform);		
	return "viewfootexam";
	
	}
	@RequestMapping(value="/editfootexam", method = RequestMethod.GET)
	public String editfootexam(@RequestParam("footexamno") String footexamno,ModelMap model,HipExam hipexam) {	
	FootExamForm footexamform=new FootExamForm();
	footexamform.setFootexamdetails(footexamDAO.getfootexamDetails(footexamno));		
	System.out.println(footexamform.getFootexamdetails().get(0).getPname());
	model.addAttribute("footexamform",footexamform);
	return "editfootexam";
	}
	@RequestMapping(value="/footexamlist", method = RequestMethod.GET)
	public String viewfootexam(@RequestParam("footexamno") String footexamno,ModelMap model,HipExam hipexam) {	
	FootExamForm footexamform=new FootExamForm();
	footexamform.setFootexamdetails(footexamDAO.getfootexamDetails(footexamno));
	model.addAttribute("footexamform",footexamform);	
	return "footexamlist";
	}
	@RequestMapping(value="/updatefootexam", method = RequestMethod.POST)
	public String updatefootexam(HttpServletRequest request,HttpSession session,@ModelAttribute("FootExam")  @Valid FootExam footexamdetails,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
		
		int c=footexamDAO.updatefootexam(footexamdetails,footexamdetails.getFootexamno());
		System.out.println("c---"+c);
		FootExamForm footexamform=new FootExamForm();
		footexamform.setFootexamdetails(footexamDAO.getfootexamDetails());
		model.addAttribute("footexamform",footexamform);
		
		return "viewfootexam";
	}

	
	@RequestMapping(value="/hipexamlist", method = RequestMethod.GET)
	public String viewhipexam(@RequestParam("hipexamno") String hipexamno,ModelMap model,HipExam hipexam) {	
	HipExamForm hipexamform=new HipExamForm();
	hipexamform.setHipexamdetails(hipexamDAO.gethipexamDetails(hipexamno));
	System.out.println("yes");	
	model.addAttribute("hipexamform",hipexamform);
	return "viewhipexam";
	}
	

	@RequestMapping(value="/hipreexam", method = RequestMethod.GET)
	public String hipreexam(@RequestParam("hipexamno") String hipexamno,ModelMap model,HipExam hipexam) {	
	HipExamForm hipexamform=new HipExamForm();
	hipexamform.setHipexamdetails(hipexamDAO.gethipexamDetails(hipexamno));
	System.out.println("yes");
	System.out.println(hipexamform.getHipexamdetails().get(0).getPname());
	model.addAttribute("hipexamform",hipexamform);
	return "hipreexam";
	}
	
	

	
	
	@RequestMapping(value="/lumbopelvicexam", method = RequestMethod.GET)
	public String searchform(HttpSession session, ModelMap model) {
		
		
		return "lumbopelvicexam";
 
	}

	@RequestMapping(value="/lumbopelvicexam", method = RequestMethod.POST)
	public String insert_lumbopelvicexam(HttpSession session,@ModelAttribute("Lumbopelvicexam")  @Valid Lumbopelvicexam lumbopelvicexam,BindingResult result,ModelMap model) {
		
		model.put("Lumbopelvicexam", lumbopelvicexam);
		model.addAttribute("LumbopelvicexamForm",lumbopelvicexam);
    	int a=lumboDAO.setLumbopelvicexam(lumbopelvicexam);
		LumbopelvicexamForm lumbopelvicexamForm= new LumbopelvicexamForm();
		lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
		model.addAttribute("lumbopelvicexamForm",lumbopelvicexamForm);
		return "lumbopelvicexam";
 
	}

	@RequestMapping(value="/updatehipexam", method = RequestMethod.POST)
	public String updatehipexam(HttpServletRequest request,HttpSession session,@ModelAttribute("HipExam")  @Valid HipExam hipexamdetails,BindingResult result,ModelMap model) {
		System.out.print(hipexamdetails.getOutsidereferral());
		
		int c=hipexamDAO.updatehipexam(hipexamdetails,hipexamdetails.getHipexamno());
		System.out.println("c---"+c);
		HipExamForm hipexamform=new HipExamForm();
		hipexamform.setHipexamdetails(hipexamDAO.gethipexamallDetails());
		System.out.println("yes");
		System.out.println(hipexamform.getHipexamdetails().get(0).getPname());
		model.addAttribute("hipexamform",hipexamform);

		
		
		return "viewhipexamdetails";
	}
	@RequestMapping(value="/insertfootexam", method = RequestMethod.POST)
	public String insert_footexam(HttpServletRequest request,HttpSession session,@ModelAttribute("FootExam")  @Valid FootExam footexamdetails,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
		int c=footexamDAO.setfootexam(footexamdetails);
		System.out.println("c---"+c);
		
		
		return "footexam";
	}
	
	@RequestMapping(value="/inserthipexam", method = RequestMethod.POST)
	public String insert_hipexam(HttpServletRequest request,HttpSession session,@ModelAttribute("HipExam")  @Valid HipExam hipexamdetails,BindingResult result,ModelMap model) {
		System.out.print(hipexamdetails.getOutsidereferral());
		int c=hipexamDAO.sethipexam(hipexamdetails);
		System.out.println("c---"+c);
		
		
		return "hipexam";
	}
	@RequestMapping(value="/viewlumbopelvicexam", method=RequestMethod.GET)
	public String viewexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
		 
		  lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
		  
		  	model.addAttribute("lumbopelvicexamForm", lumbopelvicexamForm);
		  
		return "viewlumbopelvicexam";
	}
	@RequestMapping(value="/lumbopelvicexamlist", method=RequestMethod.GET)
	public String lumbopelvicexamlist(HttpServletRequest request,@RequestParam("lumbopelvicexamid") String lumbopelvicexamid,ModelMap model,Lumbopelvicexam lumbopelvicexam)
	{
		
		LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
		lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvic(lumbopelvicexamid));	
		model.addAttribute("lumbopelvicexamForm", lumbopelvicexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		return "lumbopelvicexamlist";
	}
	
	@RequestMapping(value="/editlumbopelvicexam", method=RequestMethod.GET)
	public String editlumbopelvicexam(HttpServletRequest request,@RequestParam("lumbopelvicexamid") String lumbopelvicexamid,ModelMap model,Lumbopelvicexam lumbopelvicexam) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();       
        lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvic(lumbopelvicexamid));
        model.addAttribute("lumbopelvicexamForm",lumbopelvicexamForm);
		 
		return "editlumbopelvicexam";
	}
	

	@RequestMapping(value="/updatelumbopelvicexam", method=RequestMethod.POST)
	public String updatelumbopelvicexam(HttpServletRequest request,@ModelAttribute("lumbopelvicexam") @Valid Lumbopelvicexam lumbopelvicexam,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*soapnotes.getPatient_id();
		if (result.hasErrors())
		{
			SoapnotesForm soapnotesForm = new SoapnotesForm();
	     
	      soapnotesForm.setSoapnotes(soapDAO.getSoap(soapnotes.getSoapid()));
	      
	        model.addAttribute("soapnotesForm", soapnotesForm);
	        model.addAttribute("menu", "notes");    
		        return "editsoapnotes";
		}*/
		/*System.out.println("soapid"+soapnotes.getSoapid());*/
		int status = lumboDAO.updatelumbopelvic(lumbopelvicexam, lumbopelvicexam.getLumbopelvicexamid(), principal.getName());
		System.out.println(status);
		
		LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
        
       lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
       
        model.addAttribute("lumbopelvicexamForm", lumbopelvicexamForm);
	        return "viewlumbopelvicexam";
		
	}
	@RequestMapping(value="/deletelumbopelvicexam", method=RequestMethod.GET)
	public String removelumbopelvicexam(@RequestParam("lumbopelvicexamid") String lumbopelvicexamid,ModelMap model, Principal principal) {
	
		int status=lumboDAO.deletelumbopelvicexam(lumbopelvicexamid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        LumbopelvicexamForm lumbopelvicexamForm= new LumbopelvicexamForm();
        lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
		model.addAttribute("lumbopelvicexamForm",lumbopelvicexamForm);  
		}
		return "viewlumbopelvicexam";
	}
	@RequestMapping(value="/kneeexam", method = RequestMethod.GET)
	public String viewingform(HttpSession session, ModelMap model) {
		
		
		return "kneeexam";
 
	}
	@RequestMapping(value="/kneeexam", method = RequestMethod.POST)
	public String insert_kneeexam(HttpSession session,@ModelAttribute("Kneeexam")  @Valid Kneeexam kneeexam,BindingResult result,ModelMap model) {
		
		model.put("Kneeexam", kneeexam);
		model.addAttribute("KneeexamForm",kneeexam);
    	int a=kneeDAO.setKneeexam(kneeexam);
		KneeexamForm kneeexamForm= new KneeexamForm();
		kneeexamForm.setKneeexam(kneeDAO.getKneeexam());
		model.addAttribute("kneeexamForm",kneeexamForm);
		return "kneeexam";
 
	}
	@RequestMapping(value="/viewkneeexam", method=RequestMethod.GET)
	public String viewkneeexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  KneeexamForm kneeexamForm = new KneeexamForm();
		 
		  kneeexamForm.setKneeexam(kneeDAO.getKneeexam());
		  
		  	model.addAttribute("kneeexamForm", kneeexamForm);
		  
		return "viewkneeexam";
	}
	@RequestMapping(value="/kneeexamlist", method=RequestMethod.GET)
	public String kneeexamlist(HttpServletRequest request,@RequestParam("kneeexamid") String kneeexamid,ModelMap model,Kneeexam kneeexam)
	{
		
		KneeexamForm kneeexamForm = new KneeexamForm();
		kneeexamForm.setKneeexam(kneeDAO.getKnee(kneeexamid));	
		model.addAttribute("kneeexamForm", kneeexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		return "kneeexamlist";
	}
	@RequestMapping(value="/editkneeexam", method=RequestMethod.GET)
	public String editkneeexam(HttpServletRequest request,@RequestParam("kneeexamid") String kneeexamid,ModelMap model,Kneeexam kneeexam) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		KneeexamForm kneeexamForm = new KneeexamForm();       
        kneeexamForm.setKneeexam(kneeDAO.getKnee(kneeexamid));
        model.addAttribute("kneeexamForm",kneeexamForm);
		 
		return "editkneeexam";
	}
	

	@RequestMapping(value="/updatekneeexam", method=RequestMethod.POST)
	public String updatekneeexam(HttpServletRequest request,@ModelAttribute("kneeexam") @Valid Kneeexam kneeexam,
			BindingResult result,ModelMap model,Principal principal)
	{
		/*soapnotes.getPatient_id();
		if (result.hasErrors())
		{
			SoapnotesForm soapnotesForm = new SoapnotesForm();
	     
	      soapnotesForm.setSoapnotes(soapDAO.getSoap(soapnotes.getSoapid()));
	      
	        model.addAttribute("soapnotesForm", soapnotesForm);
	        model.addAttribute("menu", "notes");    
		        return "editsoapnotes";
		}*/
		/*System.out.println("soapid"+soapnotes.getSoapid());*/
		int status = kneeDAO.updateknee(kneeexam, kneeexam.getKneeexamid(), principal.getName());
		System.out.println(status);
		
		KneeexamForm kneeexamForm = new KneeexamForm();
        
       kneeexamForm.setKneeexam(kneeDAO.getKneeexam());
       
        model.addAttribute("kneeexamForm", kneeexamForm);
	        return "viewkneeexam";
		
	}
	@RequestMapping(value="/deletekneeexam", method=RequestMethod.GET)
	public String removekneeexam(@RequestParam("kneeexamid") String kneeexamid,ModelMap model, Principal principal) {
	
		int status=kneeDAO.deletekneeexam(kneeexamid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        KneeexamForm kneeexamForm= new KneeexamForm();
        kneeexamForm.setKneeexam(kneeDAO.getKneeexam());
		model.addAttribute("kneeexamForm",kneeexamForm);  
		}
		return "viewkneeexam";
	}



	
	
	
}
	
  