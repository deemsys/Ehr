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
import org.springframework.web.bind.annotation.ResponseBody;
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
@SessionAttributes({"lumbopelvic","knee","cervical","elbow","thoracic","low","fquestionnarie","dcfee","duties","shoulderpain","hipdetails","footdetails","shoulderdetails","wristdetails"})
public class DoctorController {

	@Autowired  
	PatientDAO patientDAO;
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
	@Autowired
	CervicalexamDAO cervicalDAO;
	@Autowired
	ElbowexamDAO elbowDAO;
	@Autowired
	ThoracicexamDAO thoracicDAO;
	
	@Autowired
	DcfeeslipDAO feeslipDAO;
	@Autowired
	LowbackDAO lowDAO;
	
	@Autowired
	DutiesunderDAO dutiesDAO;
	
	@Autowired
	FootquestionnarieDAO footDAO;
	
	@Autowired
	ShoulderpainscoreDAO shoulderDAO;
	
	@RequestMapping(value="/perry", method = RequestMethod.GET)
	public String hip(HttpSession session,ModelMap model) {
	
		session.removeAttribute("hipdetails");
		model.addAttribute("menu", "sign");
		 return "hipexam";
	}
	@RequestMapping(value="/ankle", method = RequestMethod.GET)
	public String ankle(HttpSession session,ModelMap model) {
		session.removeAttribute("footdetails");
		model.addAttribute("menu", "sign");
		 return "footexam";
	}
	
	@RequestMapping(value="/shoulderexam", method = RequestMethod.GET)
	public String shoulderexam(HttpSession session,ModelMap model) {
		session.removeAttribute("shoulderdetails");
		model.addAttribute("menu", "sign");
		 return "shoulderexam";
	}
	
	@RequestMapping(value="/wristexam", method = RequestMethod.GET)
	public String wristexam(HttpSession session,ModelMap model) {
		session.removeAttribute("wristdetails");
		model.addAttribute("menu", "sign");
	
		 return "wristandhand";
	}
	
	@RequestMapping(value="/insertwristexam", method = RequestMethod.POST)
	public String insert_wristexam(HttpServletRequest request,HttpSession session,@ModelAttribute("wristexamdetails")  @Valid WristExam wristexamdetails,BindingResult result,ModelMap model) {
		session.setAttribute("wristdetails",wristexamdetails);
		if(result.hasErrors())
		{
			model.addAttribute("menu", "sign");
			return "wristandhand";
		}
		int c=wristexamDAO.setwristexam(wristexamdetails);
		System.out.println("c---"+c);
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamallDetails());
		model.addAttribute("success", true);
		model.addAttribute("wristexamform",wristexamform);
		model.addAttribute("wrist","1");
		return "wristandhand";
	}
	
	@RequestMapping(value="/viewwristexamdetails", method = RequestMethod.GET)	
	public String viewwristexamdetail(ModelMap model,WristExam wristexamdetails) {
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamallDetails());	
	model.addAttribute("wristexamform",wristexamform);
	//System.out.println(shoulderexamform.getShoulderexamdetails().get(0).getPname());
	model.addAttribute("menu", "sign");
	 model.addAttribute("noofrows",wristexamform.getWristexamdetails().size());       
	    wristexamform.setWristexamdetails(wristexamDAO.getlimitedwristexam(1));  
	    model.addAttribute("noofpages",(int) Math.ceil(wristexamDAO.getnoofwristexam() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewwristexam";

	}	
	
	@RequestMapping(value="/viewwristexam_page", method=RequestMethod.GET)
	public String viewwristexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		WristExamForm wristexamform = new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getlimitedwristexam(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(wristexamDAO.getnoofwristexam() * 1.0 / 5));
	   	model.addAttribute("wristexamform",wristexamform);	
	   	model.addAttribute("noofrows",wristexamform.getWristexamdetails().size());   
     model.addAttribute("currentpage",page);
     model.addAttribute("menu","sign");
     model.addAttribute("button","viewall");
		return "viewwristexam";
		
	}	
	
	@RequestMapping(value={"/", "/viewallwristexam"}, method = RequestMethod.GET)
	public String viewallwristexam(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		WristExamForm wristexamform = new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamallDetails());
		
		  model.addAttribute("wristexamform", wristexamform);	
		model.addAttribute("noofrows",wristexamform.getWristexamdetails().size());    
    
     model.addAttribute("menu","sign");
     model.addAttribute("button","close");
	      
	        model.addAttribute("menu","sign");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
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
	    model.addAttribute("menu", "sign");
	return "editwristexam";
	
	}
	
	@RequestMapping(value="/updatewristexam", method = RequestMethod.POST)
	public String updatewristexam(HttpServletRequest request,HttpSession session,@ModelAttribute("wristexamdetails")  @Valid WristExam wristexamdetails,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
		if(result.hasErrors())
		{
			WristExamForm wristexamform=new WristExamForm();
			wristexamform.setWristexamdetails(wristexamDAO.getwristexamDetails(wristexamdetails.getWristexamno()));	
			model.addAttribute("wristexamform",wristexamform);
			model.addAttribute("menu", "sign");
			return "editwristexam";
		}
		System.out.println(wristexamdetails.getWristexamno());
		int c=wristexamDAO.updatewristexam(wristexamdetails,wristexamdetails.getWristexamno());
		System.out.println("c---"+c);
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamallDetails());	
		model.addAttribute("wristexamform",wristexamform);		
		model.addAttribute("success", true);
		return "viewwristexam";
	}
	
	@RequestMapping(value="/wristexamlist", method = RequestMethod.GET)	
	public String wristexamlist(@RequestParam("wristexamno") String wristexamno,ModelMap model) {	
		WristExamForm wristexamform=new WristExamForm();
		wristexamform.setWristexamdetails(wristexamDAO.getwristexamDetails(wristexamno));	
		model.addAttribute("wristexamform",wristexamform);				
		 model.addAttribute("menu", "sign");	
	return "wristexamlist";
	}
	
	
	
	@RequestMapping(value="/insertshoulderexam", method = RequestMethod.POST)
	public String insert_shoulderexam(HttpServletRequest request,HttpSession session,@ModelAttribute("shoulderexamdetails")  @Valid ShoulderExam shoulderexamdetails,BindingResult result,ModelMap model) {
		session.setAttribute("shoulderdetails",shoulderexamdetails);
		if(result.hasErrors())
		{
			model.addAttribute("menu", "sign");
			return "shoulderexam";
		}
		System.out.print("outsiderefferal"+shoulderexamdetails.getOutsiderefferal());
		int c=shoulderexamDAO.setshoulderexam(shoulderexamdetails);
		System.out.println("c---"+c);
		
		model.addAttribute("shoulder","1");
		return "shoulderexam";
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
	model.addAttribute("menu", "sign");
	 model.addAttribute("noofrows",shoulderexamform.getShoulderexamdetails().size());       
	    shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getlimitedshoulderexam(1));  
	    model.addAttribute("noofpages",(int) Math.ceil(shoulderexamDAO.getnoofshoulderexam() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewshoulderexam";

	}	
	
	@RequestMapping(value="/viewshoulderexam_page", method=RequestMethod.GET)
	public String viewshoulderexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		ShoulderExamForm shoulderexamform = new ShoulderExamForm();
		shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getlimitedshoulderexam(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(shoulderexamDAO.getnoofshoulderexam() * 1.0 / 5));
	   	model.addAttribute("shoulderexamform",shoulderexamform);	
	   	model.addAttribute("noofrows",shoulderexamform.getShoulderexamdetails().size());   
  model.addAttribute("currentpage",page);
  model.addAttribute("menu","sign");
  model.addAttribute("button","viewall");
		return "viewshoulderexam";
		
	}	
	
	@RequestMapping(value={"/", "/viewallshoulderexam"}, method = RequestMethod.GET)
	public String viewallshoulderexam(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		ShoulderExamForm shoulderexamform = new ShoulderExamForm();
		shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getshoulderexamallDetails());
		
		model.addAttribute("shoulderexamform",shoulderexamform);	
		model.addAttribute("noofrows",shoulderexamform.getShoulderexamdetails().size());    
 
  model.addAttribute("menu","sign");
  model.addAttribute("button","close");
	      
	        model.addAttribute("menu","sign");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
			return "viewshoulderexam";

	}
	
	@RequestMapping(value="/shoulderexamlist", method = RequestMethod.GET)	
	public String shoulderexamlist(@RequestParam("shoulderexamno") String shoulderexamno,ModelMap model,HipExam hipexam) {	
	ShoulderExamForm shoulderexamform=new ShoulderExamForm();
	shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getShoulderexamDetails(shoulderexamno));
	model.addAttribute("shoulderexamform",shoulderexamform);	
	model.addAttribute("menu", "sign");
	return "shoulderexamlist";
	}
	
	@RequestMapping(value="/editshoulderexam", method = RequestMethod.GET)
	public String editshoulderexam(@RequestParam("shoulderexamno") String shoulderexamno,ModelMap model,HipExam hipexam) {	
	ShoulderExamForm shoulderexamform=new ShoulderExamForm();
	shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getShoulderexamDetails(shoulderexamno));	
	model.addAttribute("shoulderexamform",shoulderexamform);
	 model.addAttribute("menu", "sign");
	return "editshoulderexam";
	
	}
	
	@RequestMapping(value="/updateshoulderexam", method = RequestMethod.POST)
	public String updateshoulderexam(HttpServletRequest request,HttpSession session,@ModelAttribute("shoulderexamdetails")  @Valid ShoulderExam shoulderexamdetails,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
		if(result.hasErrors())
		{
			ShoulderExamForm shoulderexamform=new ShoulderExamForm();
			shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getShoulderexamDetails(shoulderexamdetails.getShoulderexamno()));	
			model.addAttribute("shoulderexamform",shoulderexamform);
			model.addAttribute("menu", "sign");
			return "editshoulderexam";
			
		}
		int c=shoulderexamDAO.updateshoulderexam(shoulderexamdetails,shoulderexamdetails.getShoulderexamno());
		System.out.println("c---"+c);
		ShoulderExamForm shoulderexamform=new ShoulderExamForm();
		shoulderexamform.setShoulderexamdetails(shoulderexamDAO.getshoulderexamallDetails());	
		model.addAttribute("shoulderexamform",shoulderexamform);		
		model.addAttribute("success", true);
		return "viewshoulderexam";
	}


	@RequestMapping(value="/viewhipexam", method = RequestMethod.GET)
	public String viewhipexamdetails(ModelMap model,HipExam hipexam) {	
	HipExamForm hipexamform=new HipExamForm();
	hipexamform.setHipexamdetails(hipexamDAO.gethipexamallDetails());
	System.out.println("yes");
	System.out.println(hipexamform.getHipexamdetails().get(0).getPname());
	model.addAttribute("hipexamform",hipexamform);
	model.addAttribute("menu", "sign");
	 model.addAttribute("noofrows",hipexamform.getHipexamdetails().size());       
	    hipexamform.setHipexamdetails(hipexamDAO.getlimitedhipexam(1));  
	    model.addAttribute("noofpages",(int) Math.ceil(hipexamDAO.getnoofhipexam() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewhipexam";

	}	
	
	@RequestMapping(value="/viewhipexam_page", method=RequestMethod.GET)
	public String viewhipexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		HipExamForm hipexamform = new HipExamForm();
		hipexamform.setHipexamdetails(hipexamDAO.getlimitedhipexam(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(hipexamDAO.getnoofhipexam() * 1.0 / 5));
	   	model.addAttribute("hipexamform",hipexamform);	
	   	model.addAttribute("noofrows",hipexamform.getHipexamdetails().size());   
model.addAttribute("currentpage",page);
model.addAttribute("menu","sign");
model.addAttribute("button","viewall");
		return "viewhipexam";
		
	}	
	
	@RequestMapping(value={"/", "/viewallhipexam"}, method = RequestMethod.GET)
	public String viewallhipexam(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		HipExamForm hipexamform = new HipExamForm();
		hipexamform.setHipexamdetails(hipexamDAO.gethipexamallDetails());
		
		model.addAttribute("hipexamform",hipexamform);	
		model.addAttribute("noofrows",hipexamform.getHipexamdetails().size());    

model.addAttribute("menu","sign");
model.addAttribute("button","close");
	      
	        model.addAttribute("menu","sign");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
			return "viewhipexam";

	}
	
	@RequestMapping(value="/viewfootexam", method = RequestMethod.GET)
	public String viewfootexam(ModelMap model,HipExam hipexam) {
		FootExamForm footexamform=new FootExamForm();
		footexamform.setFootexamdetails(footexamDAO.getfootexamDetails());		
	System.out.println(footexamform.getFootexamdetails().get(0).getPname());
	model.addAttribute("footexamform",footexamform);
	model.addAttribute("menu", "sign");
	 model.addAttribute("noofrows",footexamform.getFootexamdetails().size());       
	    footexamform.setFootexamdetails(footexamDAO.getlimitedfootexam(1));  
	    model.addAttribute("noofpages",(int) Math.ceil(footexamDAO.getnooffootexam() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewfootexam";

	}	
	
	@RequestMapping(value="/viewfootexam_page", method=RequestMethod.GET)
	public String viewfootexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		FootExamForm footexamform = new FootExamForm();
		footexamform.setFootexamdetails(footexamDAO.getlimitedfootexam(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(footexamDAO.getnooffootexam() * 1.0 / 5));
	   	model.addAttribute("footexamform",footexamform);	
	   	model.addAttribute("noofrows",footexamform.getFootexamdetails().size());   
model.addAttribute("currentpage",page);
model.addAttribute("menu","sign");
model.addAttribute("button","viewall");
		return "viewfootexam";
		
	}	
	
	@RequestMapping(value={"/", "/viewallfootexam"}, method = RequestMethod.GET)
	public String viewallfootexam(HttpServletRequest request,ModelMap model, Principal principal ) {
		
		FootExamForm footexamform = new FootExamForm();
		footexamform.setFootexamdetails(footexamDAO.getfootexamDetails());
		
		model.addAttribute("footexamform",footexamform);	
		model.addAttribute("noofrows",footexamform.getFootexamdetails().size());    

model.addAttribute("menu","sign");
model.addAttribute("button","close");
	      
	        model.addAttribute("menu","sign");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
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
	 model.addAttribute("menu", "sign");
	return "editfootexam";
	}
	@RequestMapping(value="/footexamlist", method = RequestMethod.GET)
	public String viewfootexam(@RequestParam("footexamno") String footexamno,ModelMap model,HipExam hipexam) {	
	FootExamForm footexamform=new FootExamForm();
	footexamform.setFootexamdetails(footexamDAO.getfootexamDetails(footexamno));
	model.addAttribute("footexamform",footexamform);
	 model.addAttribute("menu", "sign");
	return "footexamlist";
	}
	@RequestMapping(value="/updatefootexam", method = RequestMethod.POST)
	public String updatefootexam(HttpServletRequest request,HttpSession session,@ModelAttribute("footexamdetails")  @Valid FootExam footexamdetails,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
		if(result.hasErrors())
		{
			FootExamForm footexamform=new FootExamForm();
			footexamform.setFootexamdetails(footexamDAO.getfootexamDetails(footexamdetails.getFootexamno()));
			model.addAttribute("footexamform",footexamform);			
			model.addAttribute("menu", "sign");
			return "editfootexam";
		}
		int c=footexamDAO.updatefootexam(footexamdetails,footexamdetails.getFootexamno());
		System.out.println("c---"+c);
		FootExamForm footexamform=new FootExamForm();
		footexamform.setFootexamdetails(footexamDAO.getfootexamDetails());
		model.addAttribute("footexamform",footexamform);
		model.addAttribute("success", true);
		
		return "viewfootexam";
	}

	
	@RequestMapping(value="/hipexamlist", method = RequestMethod.GET)
	public String viewhipexam(@RequestParam("hipexamno") String hipexamno,ModelMap model,HipExam hipexam) {	
	HipExamForm hipexamform=new HipExamForm();
	hipexamform.setHipexamdetails(hipexamDAO.gethipexamDetails(hipexamno));
	System.out.println("yes");	
	model.addAttribute("hipexamform",hipexamform);
	 model.addAttribute("menu", "sign");
	return "viewhipexam";
	}
	

	@RequestMapping(value="/hipreexam", method = RequestMethod.GET)
	public String hipreexam(@RequestParam("hipexamno") String hipexamno,ModelMap model,HipExam hipexam) {	
	HipExamForm hipexamform=new HipExamForm();
	hipexamform.setHipexamdetails(hipexamDAO.gethipexamDetails(hipexamno));
	System.out.println("yes");
	System.out.println(hipexamform.getHipexamdetails().get(0).getPname());
	model.addAttribute("hipexamform",hipexamform);
	 model.addAttribute("menu", "sign");
	return "hipreexam";
	}
	
	

	
	
	@RequestMapping(value="/lumbopelvicexam", method = RequestMethod.GET)
	public String searchform(HttpSession session, ModelMap model) {
		
		session.removeAttribute("lumbopelvicexam");
		model.addAttribute("menu", "sign");
		return "lumbopelvicexam";
 
	}

	@RequestMapping(value="/lumbopelvicexam", method = RequestMethod.POST)
	public String insert_lumbopelvicexam(HttpServletRequest request,HttpSession session,@ModelAttribute("Lumbopelvicexam")  @Valid Lumbopelvicexam Lumbopelvicexam,BindingResult result,ModelMap model) {
		session.setAttribute("lumbopelvic",Lumbopelvicexam);
		if(result.hasErrors())
		{
		
			LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
			lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
			model.addAttribute("LumbopelvicexamForm",lumbopelvicexamForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "initial");
			return "lumbopelvicexam";
		}
		model.put("Lumbopelvicexam", Lumbopelvicexam);
		model.addAttribute("LumbopelvicexamForm",Lumbopelvicexam);
    	int a=lumboDAO.setLumbopelvicexam(Lumbopelvicexam);
		LumbopelvicexamForm lumbopelvicexamForm= new LumbopelvicexamForm();
		lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
		model.addAttribute("lumbopelvicexamForm",lumbopelvicexamForm);
		return "viewlumbopelvicexam";
 
	}

	@RequestMapping(value="/updatehipexam", method = RequestMethod.POST)
	public String updatehipexam(HttpServletRequest request,HttpSession session,@ModelAttribute("hipexamdetails")  @Valid HipExam hipexamdetails,BindingResult result,ModelMap model) {
		
		if(result.hasErrors())
		{ 
			HipExamForm hipexamform=new HipExamForm();
			hipexamform.setHipexamdetails(hipexamDAO.gethipexamDetails(hipexamdetails.getHipexamno()));
			model.addAttribute("hipexamform",hipexamform);
			model.addAttribute("menu", "sign");
			return "hipreexam";
		}
		//System.out.print(hipexamdetails.getOutsidereferral());
		
		int c=hipexamDAO.updatehipexam(hipexamdetails,hipexamdetails.getHipexamno());
		System.out.println("c---"+c);
		HipExamForm hipexamform=new HipExamForm();
		hipexamform.setHipexamdetails(hipexamDAO.gethipexamallDetails());
		model.addAttribute("hipexamform",hipexamform);
		model.addAttribute("success", true);
		
		
		return "viewhipexamdetails";
	}
	@RequestMapping(value="/insertfootexam", method = RequestMethod.POST)
	public String insert_footexam(HttpServletRequest request,HttpSession session,@ModelAttribute("footexamdetails")  @Valid FootExam footexamdetails,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
session.setAttribute("footdetails",footexamdetails);
if(result.hasErrors())
{
	model.addAttribute("menu", "sign");
	return "footexam";
}
		int c=footexamDAO.setfootexam(footexamdetails);
		System.out.println("c---"+c);
		FootExamForm footexamform=new FootExamForm();
		footexamform.setFootexamdetails(footexamDAO.getfootexamDetails());		
	//System.out.println(footexamform.getFootexamdetails().get(0).getPname());
	   model.addAttribute("footexamform",footexamform);
		model.addAttribute("success", true);
		model.addAttribute("ankle","1");
		return "footexam";
	}
	
	@RequestMapping(value="/inserthipexam", method = RequestMethod.POST)
	public String insert_hipexam(HttpServletRequest request,HttpSession session,@ModelAttribute("hipexamdetails")  @Valid HipExam hipexamdetails,BindingResult result,ModelMap model) {
		session.setAttribute("hipdetails",hipexamdetails);
		if(result.hasErrors())
		{ 
			model.addAttribute("menu", "sign");
			return "hipexam";
		}
		
		System.out.print(hipexamdetails.getOutsidereferral());
		int c=hipexamDAO.sethipexam(hipexamdetails);
		//System.out.println("c---"+c);
		HipExamForm hipexamform=new HipExamForm();
		hipexamform.setHipexamdetails(hipexamDAO.gethipexamallDetails());
	//	System.out.println(hipexamform.getHipexamdetails().get(0).getPname());
		model.addAttribute("hipexamform",hipexamform);
		model.addAttribute("success", true);
		model.addAttribute("hip","1");
		return "hipexam";
	}
	@RequestMapping(value="/viewlumbopelvicexam", method=RequestMethod.GET)
	public String viewexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
		 
		  lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
		  
		  	model.addAttribute("lumbopelvicexamForm", lumbopelvicexamForm);
		  	model.addAttribute("menu", "sign");
			 model.addAttribute("noofrows",lumbopelvicexamForm.getLumbopelvicexam().size());       
			    lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getlimitedlumbopelvicexam(1));  
			    model.addAttribute("noofpages",(int) Math.ceil(lumboDAO.getnooflumbopelvicexam() * 1.0 / 5));	 
			        model.addAttribute("button","viewall");
			        model.addAttribute("success","false");
			        model.addAttribute("currentpage",1);
				
				
				return "viewlumbopelvicexam";

			}	
			
			@RequestMapping(value="/viewlumbopelvicexam_page", method=RequestMethod.GET)
			public String viewlumbopelvicexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
				
				LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
				lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getlimitedlumbopelvicexam(page));
				
			   	model.addAttribute("noofpages",(int) Math.ceil(lumboDAO.getnooflumbopelvicexam() * 1.0 / 5));
			   	model.addAttribute("lumbopelvicexamForm", lumbopelvicexamForm);	
			   	model.addAttribute("noofrows",lumbopelvicexamForm.getLumbopelvicexam().size());   
		model.addAttribute("currentpage",page);
		model.addAttribute("menu","sign");
		model.addAttribute("button","viewall");
				return "viewlumbopelvicexam";
				
			}	
			
			@RequestMapping(value={"/", "/viewalllumbopelvicexam"}, method = RequestMethod.GET)
			public String viewalllumbopelvicexam(HttpServletRequest request,ModelMap model, Principal principal ) {
				
				LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
				lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
				
				model.addAttribute("lumbopelvicexamForm",lumbopelvicexamForm);	
				model.addAttribute("noofrows",lumbopelvicexamForm.getLumbopelvicexam().size());    

		model.addAttribute("menu","sign");
		model.addAttribute("button","close");
			      
			        model.addAttribute("menu","sign");
			        model.addAttribute("success","false");
			        model.addAttribute("button","close");
					return "viewlumbopelvicexam";

			}
	@RequestMapping(value="/lumbopelvicexamlist", method=RequestMethod.GET)
	public String lumbopelvicexamlist(HttpServletRequest request,@RequestParam("lumbopelvicexamid") String lumbopelvicexamid,ModelMap model,Lumbopelvicexam lumbopelvicexam)
	{
		
		LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
		lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvic(lumbopelvicexamid));	
		model.addAttribute("lumbopelvicexamForm", lumbopelvicexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "sign");
		return "lumbopelvicexamlist";
	}
	
	@RequestMapping(value="/editlumbopelvicexam", method=RequestMethod.GET)
	public String editlumbopelvicexam(HttpServletRequest request,@RequestParam("lumbopelvicexamid") String lumbopelvicexamid,ModelMap model,Lumbopelvicexam lumbopelvicexam) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();       
        lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvic(lumbopelvicexamid));
        model.addAttribute("lumbopelvicexamForm",lumbopelvicexamForm);
        model.addAttribute("menu", "sign"); 
		return "editlumbopelvicexam";
	}
	

	@RequestMapping(value="/updatelumbopelvicexam", method=RequestMethod.POST)
	public String updatelumbopelvicexam(HttpServletRequest request,ModelMap model,@ModelAttribute("lumbopelvicexam") @Valid Lumbopelvicexam lumbopelvicexam,
			BindingResult result,Principal principal)
	{
		if (result.hasErrors())
		{
			LumbopelvicexamForm lumbopelvicexamForm = new LumbopelvicexamForm();
	     
	      lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvic(lumbopelvicexam.getLumbopelvicexamid()));
	      
	        model.addAttribute("lumbopelvicexamForm", lumbopelvicexamForm);
	        model.addAttribute("menu", "notes");    
		        return "editlumbopelvicexam";
		}
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
		session.removeAttribute("knee");
		model.addAttribute("menu", "sign");
		
		return "kneeexam";
 
	}
	@RequestMapping(value="/kneeexam", method = RequestMethod.POST)
	public String insert_kneeexam(HttpServletRequest request,HttpSession session,@ModelAttribute("Kneeexam")  @Valid Kneeexam Kneeexam,BindingResult result,ModelMap model) {
		session.setAttribute("knee",Kneeexam);
		if(result.hasErrors())
		{
		
			KneeexamForm kneeexamForm = new KneeexamForm();
			kneeexamForm.setKneeexam(kneeDAO.getKneeexam());
			model.addAttribute("kneeexamForm",kneeexamForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "initial");
			return "kneeexam";
		}
		model.put("Kneeexam", Kneeexam);
		model.addAttribute("KneeexamForm",Kneeexam);
    	int a=kneeDAO.setKneeexam(Kneeexam);
		KneeexamForm kneeexamForm= new KneeexamForm();
		kneeexamForm.setKneeexam(kneeDAO.getKneeexam());
		model.addAttribute("kneeexamForm",kneeexamForm);
		model.addAttribute("knee","1");
		return "kneeexam";
 
	}
	@RequestMapping(value="/viewkneeexam", method=RequestMethod.GET)
	public String viewkneeexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  KneeexamForm kneeexamForm = new KneeexamForm();
		 
		  kneeexamForm.setKneeexam(kneeDAO.getKneeexam());
		  
		  	model.addAttribute("kneeexamForm", kneeexamForm);
		  	model.addAttribute("menu", "sign");
		  	model.addAttribute("noofrows",kneeexamForm.getKneeexam().size());       
		    kneeexamForm.setKneeexam(kneeDAO.getlimitedkneeexam(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(kneeDAO.getnoofkneeexam() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewkneeexam";

		}	
		
		@RequestMapping(value="/viewkneeexam_page", method=RequestMethod.GET)
		public String viewkneeexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			KneeexamForm kneeexamForm = new KneeexamForm();
			kneeexamForm.setKneeexam(kneeDAO.getlimitedkneeexam(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(kneeDAO.getnoofkneeexam() * 1.0 / 5));
		   	model.addAttribute("kneeexamForm", kneeexamForm);	
		   	model.addAttribute("noofrows",kneeexamForm.getKneeexam().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewkneeexam";
			
		}	
		
		@RequestMapping(value={"/", "/viewallkneeexam"}, method = RequestMethod.GET)
		public String viewallkneeexam(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			KneeexamForm kneeexamForm = new KneeexamForm();
			kneeexamForm.setKneeexam(kneeDAO.getKneeexam());
			
			model.addAttribute("kneeexamForm",kneeexamForm);	
			model.addAttribute("noofrows",kneeexamForm.getKneeexam().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewkneeexam";

		}

	@RequestMapping(value="/kneeexamlist", method=RequestMethod.GET)
	public String kneeexamlist(HttpServletRequest request,@RequestParam("kneeexamid") String kneeexamid,ModelMap model,Kneeexam kneeexam)
	{
		
		KneeexamForm kneeexamForm = new KneeexamForm();
		kneeexamForm.setKneeexam(kneeDAO.getKnee(kneeexamid));	
		model.addAttribute("kneeexamForm", kneeexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		 model.addAttribute("menu", "sign");
		return "kneeexamlist";
	}
	@RequestMapping(value="/editkneeexam", method=RequestMethod.GET)
	public String editkneeexam(HttpServletRequest request,@RequestParam("kneeexamid") String kneeexamid,ModelMap model,Kneeexam kneeexam) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		KneeexamForm kneeexamForm = new KneeexamForm();       
        kneeexamForm.setKneeexam(kneeDAO.getKnee(kneeexamid));
        model.addAttribute("kneeexamForm",kneeexamForm);
        model.addAttribute("menu", "sign");
		return "editkneeexam";
	}
	

	@RequestMapping(value="/updatekneeexam", method=RequestMethod.POST)
	public String updatekneeexam(HttpServletRequest request,ModelMap model,@ModelAttribute("kneeexam") @Valid Kneeexam kneeexam,
			BindingResult result,Principal principal)
	{
		if (result.hasErrors())
		{
			KneeexamForm kneeexamForm = new KneeexamForm();
	     
	      kneeexamForm.setKneeexam(kneeDAO.getKnee(kneeexam.getKneeexamid()));
	      
	        model.addAttribute("kneeexamForm", kneeexamForm);
	        model.addAttribute("menu", "notes");    
		        return "editkneeexam";
		}
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

	@RequestMapping(value="/cervicalexam", method = RequestMethod.GET)
	public String viewingcervicalexam(HttpSession session, ModelMap model) {
		session.removeAttribute("cervical");
		model.addAttribute("menu", "sign");
		return "cervicalexam";
 
	}

	@RequestMapping(value="/cervicalexam", method = RequestMethod.POST)
	public String insert_cervicalexam(HttpServletRequest request,HttpSession session,@ModelAttribute("Cervicalexam")  @Valid Cervicalexam Cervicalexam,BindingResult result,ModelMap model) {
		session.setAttribute("cervical",Cervicalexam);
		if(result.hasErrors())
		{
		
			CervicalexamForm cervicalexamForm = new CervicalexamForm();
			cervicalexamForm.setCervicalexam(cervicalDAO.getCervicalexam());
			model.addAttribute("cervicalexamForm",cervicalexamForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "initial");
			return "cervicalexam";
		}
		model.put("Cervicalexam", Cervicalexam);
		model.addAttribute("CervicalexamForm",Cervicalexam);
    	int a=cervicalDAO.setCervicalexam(Cervicalexam);
		CervicalexamForm cervicalexamForm= new CervicalexamForm();
		cervicalexamForm.setCervicalexam(cervicalDAO.getCervicalexam());
		model.addAttribute("cervicalexamForm",cervicalexamForm);
		return "viewcervicalexam";
 
	}
	@RequestMapping(value="/viewcervicalexam", method=RequestMethod.GET)
	public String viewcervicalexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  CervicalexamForm cervicalexamForm = new CervicalexamForm();
		 
		  cervicalexamForm.setCervicalexam(cervicalDAO.getCervicalexam());
		  
		  	model.addAttribute("cervicalexamForm", cervicalexamForm);
		  	model.addAttribute("menu", "sign");
		  	model.addAttribute("noofrows",cervicalexamForm.getCervicalexam().size());       
		    cervicalexamForm.setCervicalexam(cervicalDAO.getlimitedcervicalexam(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(cervicalDAO.getnoofcervicalexam() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewcervicalexam";

		}	
		
		@RequestMapping(value="/viewcervicalexam_page", method=RequestMethod.GET)
		public String viewcervicalexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			CervicalexamForm cervicalexamForm = new CervicalexamForm();
			cervicalexamForm.setCervicalexam(cervicalDAO.getlimitedcervicalexam(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(cervicalDAO.getnoofcervicalexam() * 1.0 / 5));
		   	model.addAttribute("cervicalexamForm", cervicalexamForm);	
		   	model.addAttribute("noofrows",cervicalexamForm.getCervicalexam().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewcervicalexam";
			
		}	
		
		@RequestMapping(value={"/", "/viewallcervicalexam"}, method = RequestMethod.GET)
		public String viewallcervicalexam(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			CervicalexamForm cervicalexamForm = new CervicalexamForm();
			cervicalexamForm.setCervicalexam(cervicalDAO.getCervicalexam());
			
			model.addAttribute("cervicalexamForm",cervicalexamForm);	
			model.addAttribute("noofrows",cervicalexamForm.getCervicalexam().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewcervicalexam";

		}

	
	@RequestMapping(value="/cervicalexamlist", method=RequestMethod.GET)
	public String cervicalexamlist(HttpServletRequest request,@RequestParam("cervicalexamid") String cervicalexamid,ModelMap model,Cervicalexam cervicalexam)
	{
		
		CervicalexamForm cervicalexamForm = new CervicalexamForm();
		cervicalexamForm.setCervicalexam(cervicalDAO.getCervical(cervicalexamid));	
		model.addAttribute("cervicalexamForm", cervicalexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "sign");
		return "cervicalexamlist";
	}
	@RequestMapping(value="/editcervicalexam", method=RequestMethod.GET)
	public String editcervicalexam(HttpServletRequest request,@RequestParam("cervicalexamid") String cervicalexamid,ModelMap model,Cervicalexam cervicalexam) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		CervicalexamForm cervicalexamForm = new CervicalexamForm();       
        cervicalexamForm.setCervicalexam(cervicalDAO.getCervical(cervicalexamid));
        model.addAttribute("cervicalexamForm",cervicalexamForm);
        model.addAttribute("menu", "sign"); 
		return "editcervicalexam";
	}
	

	@RequestMapping(value="/updatecervicalexam", method=RequestMethod.POST)
	public String updatecervicalexam(HttpServletRequest request,ModelMap model,@ModelAttribute("cervicalexam") @Valid Cervicalexam cervicalexam,
			BindingResult result,Principal principal)
	{
		if(result.hasErrors())
		{
		
			CervicalexamForm cervicalexamForm = new CervicalexamForm();
			cervicalexamForm.setCervicalexam(cervicalDAO.getCervical(cervicalexam.getCervicalexamid()));
			model.addAttribute("cervicalexamForm",cervicalexamForm);
			model.addAttribute("menu", "initial");
			return "cervicalexam";
		}
		
		/*System.out.println("soapid"+soapnotes.getSoapid());*/
		int status = cervicalDAO.updatecervicalexam(cervicalexam, cervicalexam.getCervicalexamid(), principal.getName());
		System.out.println(status);
		
		CervicalexamForm cervicalexamForm = new CervicalexamForm();
        
       cervicalexamForm.setCervicalexam(cervicalDAO.getCervicalexam());
       
        model.addAttribute("cervicalexamForm", cervicalexamForm);
	        return "viewcervicalexam";
		
	}
	@RequestMapping(value="/deletecervicalexam", method=RequestMethod.GET)
	public String removecervicalexam(@RequestParam("cervicalexamid") String cervicalexamid,ModelMap model, Principal principal) {
	
		int status=cervicalDAO.deletecervicalexam(cervicalexamid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        CervicalexamForm cervicalexamForm= new CervicalexamForm();
        cervicalexamForm.setCervicalexam(cervicalDAO.getCervicalexam());
		model.addAttribute("cervicalexamForm",cervicalexamForm);  
		}
		return "viewcervicalexam";
	}
	@RequestMapping(value="/elbowexam", method = RequestMethod.GET)
	public String viewingelbowexam(HttpSession session, ModelMap model) {
		session.removeAttribute("elbow");
		model.addAttribute("menu", "sign");
		return "elbowexam";
 
	}
	@RequestMapping(value="/elbowexam", method = RequestMethod.POST)
	public String insert_elbowexam(HttpServletRequest request,HttpSession session,@ModelAttribute("Elbowexam")  @Valid Elbowexam elbowexam,BindingResult result,ModelMap model) {
		
		session.setAttribute("elbow", elbowexam);
		if(result.hasErrors())
		{
		
			ElbowexamForm elbowexamForm = new ElbowexamForm();
			elbowexamForm.setElbowexam(elbowDAO.getElbowexam());
			model.addAttribute("elbowexamForm",elbowexamForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "initial");
			return "elbowexam";
		}
		model.put("Elbowexam", elbowexam);
		model.addAttribute("ElbowexamForm",elbowexam);
    	int a=elbowDAO.setElbowexam(elbowexam);
		ElbowexamForm elbowexamForm= new ElbowexamForm();
		elbowexamForm.setElbowexam(elbowDAO.getElbowexam());
		model.addAttribute("elbowexamForm",elbowexamForm);
		model.addAttribute("elbow","1");
		return "elbowexam";
 
	}
	@RequestMapping(value="/viewelbowexam", method=RequestMethod.GET)
	public String viewelbowexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  ElbowexamForm elbowexamForm = new ElbowexamForm();
		 
		  elbowexamForm.setElbowexam(elbowDAO.getElbowexam());
		  
		  	model.addAttribute("elbowexamForm", elbowexamForm);
		  	model.addAttribute("menu", "sign");
		  	model.addAttribute("noofrows",elbowexamForm.getElbowexam().size());       
		    elbowexamForm.setElbowexam(elbowDAO.getlimitedelbowexam(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(elbowDAO.getnoofelbowexam() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewelbowexam";

		}	
		
		@RequestMapping(value="/viewelbowexam_page", method=RequestMethod.GET)
		public String viewelbowexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			ElbowexamForm elbowexamForm = new ElbowexamForm();
			elbowexamForm.setElbowexam(elbowDAO.getlimitedelbowexam(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(elbowDAO.getnoofelbowexam() * 1.0 / 5));
		   	model.addAttribute("elbowexamForm", elbowexamForm);	
		   	model.addAttribute("noofrows",elbowexamForm.getElbowexam().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewelbowexam";
			
		}	
		
		@RequestMapping(value={"/", "/viewallelbowexam"}, method = RequestMethod.GET)
		public String viewallelbowexam(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			ElbowexamForm elbowexamForm = new ElbowexamForm();
			elbowexamForm.setElbowexam(elbowDAO.getElbowexam());
			
			model.addAttribute("elbowexamForm",elbowexamForm);	
			model.addAttribute("noofrows",elbowexamForm.getElbowexam().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewelbowexam";

		}

	@RequestMapping(value="/elbowexamlist", method=RequestMethod.GET)
	public String elbowexamlist(HttpServletRequest request,@RequestParam("elbowexamid") String elbowexamid,ModelMap model,Elbowexam elbowexam)
	{
		
		ElbowexamForm elbowexamForm = new ElbowexamForm();
		elbowexamForm.setElbowexam(elbowDAO.getElbow(elbowexamid));	
		model.addAttribute("elbowexamForm", elbowexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "sign");
		return "elbowexamlist";
	}
	@RequestMapping(value="/editelbowlist", method=RequestMethod.GET)
	public String editelbowexam(HttpServletRequest request,@RequestParam("elbowexamid") String elbowexamid,ModelMap model,Kneeexam kneeexam) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		ElbowexamForm elbowexamForm = new ElbowexamForm();       
        elbowexamForm.setElbowexam(elbowDAO.getElbow(elbowexamid));
        model.addAttribute("elbowexamForm",elbowexamForm);
        model.addAttribute("menu", "sign"); 
		return "editelbowlist";
	}
	

	@RequestMapping(value="/updateelbowexam", method=RequestMethod.POST)
	public String updateelbowexam(HttpServletRequest request,ModelMap model,@ModelAttribute("elbowexam") @Valid Elbowexam elbowexam,
			BindingResult result,Principal principal)
	{
		if(result.hasErrors())
		{
		
			ElbowexamForm elbowexamForm = new ElbowexamForm();
			elbowexamForm.setElbowexam(elbowDAO.getElbow(elbowexam.getElbowexamid()));
			model.addAttribute("elbowexamForm",elbowexamForm);
			model.addAttribute("menu", "initial");
			return "elbowexam";
		}
		/*System.out.println("soapid"+soapnotes.getSoapid());*/
		int status = elbowDAO.updateelbowexam(elbowexam, elbowexam.getElbowexamid(), principal.getName());
		System.out.println(status);
		
		ElbowexamForm elbowexamForm = new ElbowexamForm();
        
       elbowexamForm.setElbowexam(elbowDAO.getElbowexam());
       
        model.addAttribute("elbowexamForm", elbowexamForm);
	        return "viewelbowexam";
		
	}
	@RequestMapping(value="/deleteelbowexam", method=RequestMethod.GET)
	public String removeelbowexam(@RequestParam("elbowexamid") String elbowexamid,ModelMap model, Principal principal) {
	
		int status=elbowDAO.deleteelbowexam(elbowexamid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        ElbowexamForm elbowexamForm= new ElbowexamForm();
        elbowexamForm.setElbowexam(elbowDAO.getElbowexam());
		model.addAttribute("elbowexamForm",elbowexamForm);  
		}
		return "viewelbowexam";
	}
	@RequestMapping(value="/thoracicexam", method = RequestMethod.GET)
	public String viewingthoracicexam(HttpSession session, ModelMap model) {
		session.removeAttribute("thoracic");
		model.addAttribute("menu", "sign");
		return "thoracicexam";
 
	}
    
	@RequestMapping(value="/thoracicexam", method = RequestMethod.POST)
	public String insert_thoracicexam(HttpServletRequest request,HttpSession session,@ModelAttribute("Thoracicexam")  @Valid Thoracicexam thoracicexam,BindingResult result,ModelMap model) {
		session.setAttribute("thoracic", thoracicexam);
		if(result.hasErrors())
		{
		
			ThoracicexamForm thoracicexamForm = new ThoracicexamForm();
		     thoracicexamForm.setThoracicexam(thoracicDAO.getThoracicexam());
			model.addAttribute("thoracicexamForm",thoracicexamForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "initial");
			return "thoracicexam";
		}
		model.put("Thoracicexam", thoracicexam);
		model.addAttribute("ThoracicexamForm",thoracicexam);
    	int a=thoracicDAO.setThoracicexam(thoracicexam);
		ThoracicexamForm thoracicexamForm= new ThoracicexamForm();
		thoracicexamForm.setThoracicexam(thoracicDAO.getThoracicexam());
		model.addAttribute("thoracicexamForm",thoracicexamForm);
		return "viewthoracicexam";
 
	}
	@RequestMapping(value="/viewthoracicexam", method=RequestMethod.GET)
	public String viewthoracicexam(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  ThoracicexamForm thoracicexamForm = new ThoracicexamForm();
		 
		  thoracicexamForm.setThoracicexam(thoracicDAO.getThoracicexam());
		  
		  	model.addAttribute("thoracicexamForm", thoracicexamForm);
		  	model.addAttribute("menu", "sign");
		  	model.addAttribute("noofrows",thoracicexamForm.getThoracicexam().size());       
		    thoracicexamForm.setThoracicexam(thoracicDAO.getlimitedthoracicexam(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(thoracicDAO.getnoofthoracicexam() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewthoracicexam";

		}	
		
		@RequestMapping(value="/viewthoracicexam_page", method=RequestMethod.GET)
		public String viewthoracicexam_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			ThoracicexamForm thoracicexamForm = new ThoracicexamForm();
			thoracicexamForm.setThoracicexam(thoracicDAO.getlimitedthoracicexam(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(thoracicDAO.getnoofthoracicexam() * 1.0 / 5));
		   	model.addAttribute("thoracicexamForm", thoracicexamForm);	
		   	model.addAttribute("noofrows",thoracicexamForm.getThoracicexam().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewthoracicexam";
			
		}	
		
		@RequestMapping(value={"/", "/viewallthoracicexam"}, method = RequestMethod.GET)
		public String viewallthoracicexam(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			ThoracicexamForm thoracicexamForm = new ThoracicexamForm();
			thoracicexamForm.setThoracicexam(thoracicDAO.getThoracicexam());
			
			model.addAttribute("thoracicexamForm",thoracicexamForm);	
			model.addAttribute("noofrows",thoracicexamForm.getThoracicexam().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewthoracicexam";

		}

	@RequestMapping(value="/editthoracicexam", method=RequestMethod.GET)
	public String editthoracicexam(HttpServletRequest request,@RequestParam("thoracicexamid") String thoracicexamid,ModelMap model,Thoracicexam thoracicexam) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		ThoracicexamForm thoracicexamForm = new ThoracicexamForm();       
        thoracicexamForm.setThoracicexam(thoracicDAO.getThoracic(thoracicexamid));
        model.addAttribute("thoracicexamForm",thoracicexamForm);
        model.addAttribute("menu", "sign"); 
		return "editthoracicexam";
	}
	@RequestMapping(value="/thoracicexamlist", method=RequestMethod.GET)
	public String thoracicexamlist(HttpServletRequest request,@RequestParam("thoracicexamid") String thoracicexamid,ModelMap model,Thoracicexam thoracicexam)
	{
		
		ThoracicexamForm thoracicexamForm = new ThoracicexamForm();
		thoracicexamForm.setThoracicexam(thoracicDAO.getThoracic(thoracicexamid));	
		model.addAttribute("thoracicexamForm", thoracicexamForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu", "sign");
		return "thoracicexamlist";
	}
	@RequestMapping(value="/updatethoracicexam", method=RequestMethod.POST)
	public String updatethoracicexam(HttpServletRequest request,ModelMap model,@ModelAttribute("thoracicexam") @Valid Thoracicexam thoracicexam,
			BindingResult result,Principal principal)
	{
		if (result.hasErrors())
		{
			ThoracicexamForm thoracicexamForm = new ThoracicexamForm();
	     
	      thoracicexamForm.setThoracicexam(thoracicDAO.getThoracic(thoracicexam.getThoracicexamid()));
	      
	        model.addAttribute("thoracicexamForm", thoracicexamForm);
	        model.addAttribute("menu", "notes");    
		        return "editthoracicexam";
		}
		/*System.out.println("soapid"+soapnotes.getSoapid());*/
		int status = thoracicDAO.updateThoracicexam(thoracicexam, thoracicexam.getThoracicexamid(), principal.getName());
		System.out.println(status);
		
		ThoracicexamForm thoracicexamForm = new ThoracicexamForm();
        
       thoracicexamForm.setThoracicexam(thoracicDAO.getThoracicexam());
       
        model.addAttribute("thoracicexamForm", thoracicexamForm);
	        return "viewthoracicexam";
		
	}
	@RequestMapping(value="/deletethoracicexam", method=RequestMethod.GET)
	public String removethoracicexam(@RequestParam("thoracicexamid") String thoracicexamid,ModelMap model, Principal principal) {
	
		int status=thoracicDAO.deleteThoracicexam(thoracicexamid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        ThoracicexamForm thoracicexamForm= new ThoracicexamForm();
        thoracicexamForm.setThoracicexam(thoracicDAO.getThoracicexam());
		model.addAttribute("thoracicexamForm",thoracicexamForm);  
		}
		return "viewthoracicexam";
	}
	@RequestMapping(value="/dcfeeslip", method = RequestMethod.GET)
	public String viewdcfeeslip(HttpSession session, ModelMap model) {
		session.removeAttribute("dcfee");
		model.addAttribute("menu","dcfee");
		return "dcfeeslip";
 
	}
	@RequestMapping(value="/dcfeeslip_ajax",method=RequestMethod.POST)
	public @ResponseBody String addUser(@ModelAttribute(value="dcfeeslip") Dcfeeslip dcfeeslip, BindingResult result,ModelMap model ) {
		String returnText="";
		System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);
				returnText="<input type=text value='"+returnText+"'>";
				return returnText;
				
	}
	@RequestMapping(value="/dcfeeslip", method = RequestMethod.POST)
	public String insert_dcfeeslip(HttpServletRequest request,HttpSession session,ModelMap model,@ModelAttribute("dcfeeslipdetail")  @Valid Dcfeeslip dcfeeslip,BindingResult result) {
		session.setAttribute("dcfee", dcfeeslip);
		if(result.hasErrors())
		{
		
			DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
		    dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
			model.addAttribute("dcfeeslipForm",dcfeeslipForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "dcfee");
			return "dcfeeslip";
		}

		int b=feeslipDAO.setDcfeeslip(dcfeeslip);
		DcfeeslipForm dcfeeslipForm= new DcfeeslipForm();
		dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
		model.addAttribute("dcfeeslipForm",dcfeeslipForm);
		return "viewdcfeeslip";
 }

	@RequestMapping(value="/viewdcfeeslip", method=RequestMethod.GET)
	public String viewdcfeeslip(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
		 
		  dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
		  
		  	model.addAttribute("dcfeeslipForm", dcfeeslipForm);
		  	model.addAttribute("menu","dcfee");
		  	model.addAttribute("noofrows",dcfeeslipForm.getDcfeeslip().size());       
		    dcfeeslipForm.setDcfeeslip(feeslipDAO.getlimiteddcfeeslip(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(feeslipDAO.getnoofdcfeeslip() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewdcfeeslip";

		}	
		
		@RequestMapping(value="/viewdcfeeslip_page", method=RequestMethod.GET)
		public String viewdcfeeslip_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
			dcfeeslipForm.setDcfeeslip(feeslipDAO.getlimiteddcfeeslip(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(feeslipDAO.getnoofdcfeeslip() * 1.0 / 5));
		   	model.addAttribute("dcfeeslipForm", dcfeeslipForm);	
		   	model.addAttribute("noofrows",dcfeeslipForm.getDcfeeslip().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewdcfeeslip";
			
		}	
		
		@RequestMapping(value={"/", "/viewalldcfeeslip"}, method = RequestMethod.GET)
		public String viewalldcfeeslip(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
			dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
			
			model.addAttribute("dcfeeslipForm",dcfeeslipForm);	
			model.addAttribute("noofrows",dcfeeslipForm.getDcfeeslip().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewdcfeeslip";

		}


	
	@RequestMapping(value="/dcfeesliplist", method=RequestMethod.GET)
	public String dcfeesliplist(HttpServletRequest request,@RequestParam("dcfeeid") String dcfeeid,ModelMap model,Dcfeeslip dcfeeslip)
	{
		
		DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
		dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfee(dcfeeid));	
		model.addAttribute("dcfeeslipForm", dcfeeslipForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu","dcfee");
		return "dcfeesliplist";
	}
	
	@RequestMapping(value="/editdcfeeslip", method=RequestMethod.GET)
	public String editdcfeeslip(HttpServletRequest request,@RequestParam("dcfeeid") String dcfeeid,ModelMap model,Dcfeeslip dcfeeslip) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();       
        dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfee(dcfeeid));
        model.addAttribute("dcfeeslipForm",dcfeeslipForm);
        model.addAttribute("menu","dcfee"); 
		return "editdcfeeslip";
	}
	@RequestMapping(value="/updatedcfeeslip", method=RequestMethod.POST)
	public String updatedcfeeslip(HttpServletRequest request,ModelMap model,@ModelAttribute("dcfeeslip") @Valid Dcfeeslip dcfeeslip,
			BindingResult result,Principal principal)
	{
		if (result.hasErrors())
		{
			DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
	     
	       dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfee(dcfeeslip.getDcfeeid()));
	      
	        model.addAttribute("dcfeeslipForm", dcfeeslipForm);
	        model.addAttribute("menu", "dcfee");    
		        return "editdcfeeslip";
		}
		int status = feeslipDAO.updatedcfeeslip(dcfeeslip, dcfeeslip.getDcfeeid(), principal.getName());
		System.out.println(status);
		
		DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
        
       dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
       
        model.addAttribute("dcfeeslipForm", dcfeeslipForm);
	        return "viewdcfeeslip";
		
	}
	
	@RequestMapping(value="/deletedcfeeslip", method=RequestMethod.GET)
	public String removedcfeeslip(@RequestParam("dcfeeid") String dcfeeid,ModelMap model, Principal principal) {
	
		int status=feeslipDAO.deletedcfeeslip(dcfeeid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        DcfeeslipForm dcfeeslipForm= new DcfeeslipForm();
        dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
		model.addAttribute("dcfeeslipForm",dcfeeslipForm);  
		}
		return "viewdcfeeslip";
	}
	@RequestMapping(value="/lowbackdisability", method = RequestMethod.GET)
	public String viewinglowbackdisability(HttpSession session, ModelMap model) {
		session.removeAttribute("low");
		model.addAttribute("menu","wristindex");
		return "lowbackdisability";
 
	}
	
	@RequestMapping(value="/lowbackdisability", method = RequestMethod.POST)
	public String insert_lowback(HttpServletRequest request,HttpSession session,@ModelAttribute("Lowback")  @Valid Lowback lowback,BindingResult result,ModelMap model) {
		session.setAttribute("low",lowback );
 
		if(result.hasErrors())
		{
		
			LowbackForm lowbackForm = new LowbackForm();
			lowbackForm.setLowback(lowDAO.getLowback());
			model.addAttribute("lowbackForm",lowbackForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "initial");
			return "lowbackdisability";
		}
		model.put("Lowback", lowback);
		model.addAttribute("lowbackForm",lowback);
    	int a=lowDAO.setLowback(lowback);
		LowbackForm lowbackForm= new LowbackForm();
		lowbackForm.setLowback(lowDAO.getLowback());
		model.addAttribute("lowbackForm",lowbackForm);
		return "viewlowback";
 
	
	}
	@RequestMapping(value="/viewlowback", method=RequestMethod.GET)
	public String viewlowback(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  LowbackForm lowbackForm = new LowbackForm();
		 
		  lowbackForm.setLowback(lowDAO.getLowback());
		  
		  	model.addAttribute("lowbackForm", lowbackForm);
		  	model.addAttribute("menu","wristindex");
		  	model.addAttribute("noofrows",lowbackForm.getLowback().size());       
		    lowbackForm.setLowback(lowDAO.getlimitedlowback(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(lowDAO.getnooflowback() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewlowback";

		}	
		
		@RequestMapping(value="/viewlowback_page", method=RequestMethod.GET)
		public String viewlowback_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			LowbackForm lowbackForm = new LowbackForm();
			lowbackForm.setLowback(lowDAO.getlimitedlowback(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(lowDAO.getnooflowback() * 1.0 / 5));
		   	model.addAttribute("lowbackForm", lowbackForm);	
		   	model.addAttribute("noofrows",lowbackForm.getLowback().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewlowback";
			
		}	
		
		@RequestMapping(value={"/", "/viewalllowback"}, method = RequestMethod.GET)
		public String viewalllowback(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			LowbackForm lowbackForm = new LowbackForm();
			lowbackForm.setLowback(lowDAO.getLowback());
			
			model.addAttribute("lowbackForm",lowbackForm);	
			model.addAttribute("noofrows",lowbackForm.getLowback().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewlowback";

		}


	@RequestMapping(value="/lowbacklist", method=RequestMethod.GET)
	public String lowbacklist(HttpServletRequest request,@RequestParam("lowbackno") String lowbackno,ModelMap model,Lowback lowback)
	{
		
		LowbackForm lowbackForm = new LowbackForm();
		lowbackForm.setLowback(lowDAO.getLow(lowbackno));	
		model.addAttribute("lowbackForm", lowbackForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu","wristindex");
		return "lowbacklist";
	}
	
	@RequestMapping(value="/editlowback", method=RequestMethod.GET)
	public String editlowback(HttpServletRequest request,@RequestParam("lowbackno") String lowbackno,ModelMap model,Lowback lowback) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		LowbackForm lowbackForm = new LowbackForm();       
        lowbackForm.setLowback(lowDAO.getLow(lowbackno));
        model.addAttribute("lowbackForm",lowbackForm);
        model.addAttribute("menu","wristindex");
		return "editlowback";
	}
	@RequestMapping(value="/updatelowback", method=RequestMethod.POST)
	public String updatelowback(HttpServletRequest request,ModelMap model,@ModelAttribute("lowback") @Valid Lowback lowback,
			BindingResult result,Principal principal)
	{
		if (result.hasErrors())
		{
			LowbackForm lowbackForm = new LowbackForm();
	     
	       lowbackForm.setLowback(lowDAO.getLow(lowback.getLowbackno()));
	      
	        model.addAttribute("lowbackForm", lowbackForm);
	        model.addAttribute("menu", "wristindex");    
		        return "editlowback";
		}
		
		int status = lowDAO.updatelowback(lowback,lowback.getLowbackno(), principal.getName());
		System.out.println(status);
		
		LowbackForm lowbackForm = new LowbackForm();
        
       lowbackForm.setLowback(lowDAO.getLowback());
       
        model.addAttribute("lowbackForm", lowbackForm);
	        return "viewlowback";
		
	}
	
	@RequestMapping(value="/deletelowback", method=RequestMethod.GET)
	public String removelowback(@RequestParam("lowbackno") String lowbackno,ModelMap model, Principal principal) {
	
		int status=lowDAO.deletelowback(lowbackno);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        LowbackForm lowbackForm= new LowbackForm();
        lowbackForm.setLowback(lowDAO.getLowback());
		model.addAttribute("lowbackForm",lowbackForm);  
		}
		return "viewlowback";
	}
	
	@RequestMapping(value="/dutiesunderduress", method = RequestMethod.GET)
	public String viewingdutiesunderduress(HttpSession session, ModelMap model) {
		session.removeAttribute("duties");
		model.addAttribute("menu","duties");
		return "dutiesunderduress";
 
	}
	@RequestMapping(value="/dutiesunderduress", method = RequestMethod.POST)
	public String insert_duties(HttpServletRequest request,HttpSession session,@ModelAttribute("Dutiesunderduress")  @Valid Dutiesunderduress dutiesunderduress,BindingResult result,ModelMap model) {
		session.setAttribute("duties", dutiesunderduress);
 
		if(result.hasErrors())
		{
		
			DutiesduressForm dutiesduressForm = new DutiesduressForm();
			dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getDuties());
			model.addAttribute("dutiesduressForm",dutiesduressForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "duties");
			return "dutiesunderduress";
		}
		model.put("Dutiesunderduress", dutiesunderduress);
		model.addAttribute("dutiesunderduressForm",dutiesunderduress);
    	int a=dutiesDAO.setDuties(dutiesunderduress);
		DutiesduressForm dutiesduressForm= new DutiesduressForm();
		dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getDuties());
		model.addAttribute("dutiesduressForm",dutiesduressForm);
		return "viewduties";
 
	
	}
	@RequestMapping(value="/viewduties", method=RequestMethod.GET)
	public String viewduties(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  DutiesduressForm dutiesduressForm = new DutiesduressForm();
		 
		  dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getDuties());
		  
		  model.addAttribute("dutiesduressForm",dutiesduressForm);	
		  model.addAttribute("menu","duties");
		  model.addAttribute("noofrows",dutiesduressForm.getDutiesunderduressdetails().size());       
		    dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getlimitedduties(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(dutiesDAO.getnoofduties() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewduties";

		}	
		
		@RequestMapping(value="/viewduties_page", method=RequestMethod.GET)
		public String viewduties_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			DutiesduressForm dutiesduressForm = new DutiesduressForm();
			dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getlimitedduties(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(dutiesDAO.getnoofduties() * 1.0 / 5));
		   	model.addAttribute("dutiesduressForm", dutiesduressForm);	
		   	model.addAttribute("noofrows",dutiesduressForm.getDutiesunderduressdetails().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewduties";
			
		}	
		
		@RequestMapping(value={"/", "/viewallduties"}, method = RequestMethod.GET)
		public String viewallduties(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			DutiesduressForm dutiesduressForm = new DutiesduressForm();
			dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getDuties());
			
			model.addAttribute("dutiesduressForm",dutiesduressForm);	
			model.addAttribute("noofrows",dutiesduressForm.getDutiesunderduressdetails().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewduties";

		}


	
	@RequestMapping(value="/dutiesunderduresslist", method=RequestMethod.GET)
	public String dutiesunderduresslist(HttpServletRequest request,@RequestParam("dutiesno") String dutiesno,ModelMap model,Dutiesunderduress dutiesunderduress)
	{
		
		DutiesduressForm dutiesduressForm = new DutiesduressForm();
		dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getDutiesunderduress(dutiesno));	
		model.addAttribute("dutiesduressForm", dutiesduressForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		model.addAttribute("menu","duties");
		return "dutiesunderduresslist";
	}
	
	@RequestMapping(value="/editduties", method=RequestMethod.GET)
	public String editduties(HttpServletRequest request,@RequestParam("dutiesno") String dutiesno,ModelMap model,Dutiesunderduress dutiesunderduress) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		DutiesduressForm dutiesduressForm = new DutiesduressForm();       
        dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getDutiesunderduress(dutiesno));
        model.addAttribute("dutiesduressForm",dutiesduressForm);
        model.addAttribute("menu","duties"); 
		return "editduties";
	}
	@RequestMapping(value="/updateduties", method=RequestMethod.POST)
	public String updateduties(HttpServletRequest request,@ModelAttribute("Dutiesunderduress") @Valid Dutiesunderduress dutiesunderduress,
			BindingResult result,ModelMap model,Principal principal)
	{
		int status = dutiesDAO.updatedutiesunderduress(dutiesunderduress,dutiesunderduress.getDutiesno(), principal.getName());
		System.out.println(status);
		
		DutiesduressForm dutiesduressForm = new DutiesduressForm();
        
       dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getDuties());
       model.addAttribute("menu","duties");
        model.addAttribute("dutiesduressForm", dutiesduressForm);
	        return "viewduties";
		
	}
	
	@RequestMapping(value="/deleteduties", method=RequestMethod.GET)
	public String removeduties(@RequestParam("dutiesno") String dutiesno,ModelMap model, Principal principal) {
	
		int status=dutiesDAO.deletedutiesunderduress(dutiesno);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        DutiesduressForm dutiesduressForm= new DutiesduressForm();
        dutiesduressForm.setDutiesunderduressdetails(dutiesDAO.getDuties());
		model.addAttribute("dutiesduressForm",dutiesduressForm);  
		}
		return "viewduties";
	}
	@RequestMapping(value="/footquestionnarie", method = RequestMethod.GET)
	public String viewingfootquestionnarie(HttpSession session, ModelMap model,Principal principal) {
		
		session.removeAttribute("fquestionnarie");
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		
		model.addAttribute("menu","hipknee");
		String username=principal.getName();
		if(footDAO.getusernameFoot(username).size()>0)
		{
		FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();       
        footquestionnarieForm.setFootquestionnariedetails(footDAO.getusernameFoot(username));
        model.addAttribute("footquestionnarieForm",footquestionnarieForm);	        
		return "editfootquestionnarie";
		}
		
		return "footquestionnarie";
 
	}
	
	@RequestMapping(value="/footquestionnarie", method = RequestMethod.POST)
	public String insert_footquestionnarie(Principal principal,HttpServletRequest request,HttpSession session,@ModelAttribute("Footquestionnarie")  @Valid Footquestionnarie footquestionnarie,BindingResult result,ModelMap model) {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		session.setAttribute("fquestionnarie", footquestionnarie);
		if(result.hasErrors())
		{
		
			FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();
			footquestionnarieForm.setFootquestionnariedetails(footDAO.getFootquestionnarie());
			model.addAttribute("footquestionnarieForm",footquestionnarieForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "hipknee");
			return "footquestionnarie";
		}
		String username=principal.getName();
		model.put("Footquestionnarie", footquestionnarie);
		model.addAttribute("footquestionnarieForm",footquestionnarie);
    	int a=footDAO.setFootquestionnarie(footquestionnarie,username);
		FootquestionnarieForm footquestionnarieForm= new FootquestionnarieForm();
		footquestionnarieForm.setFootquestionnariedetails(footDAO.getusernameFoot(username));
		model.addAttribute("footquestionnarieForm",footquestionnarieForm);
		return "viewfootquestionnarie";
 
	
	}
	
	@RequestMapping(value="/viewfootquestionnarie", method=RequestMethod.GET)
	public String viewfootquestionnarie(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();
		 
		  footquestionnarieForm.setFootquestionnariedetails(footDAO.getFootquestionnarie());
		  
		  model.addAttribute("footquestionnarieForm",footquestionnarieForm);	
		  model.addAttribute("menu", "hipknee");
		  model.addAttribute("noofrows",footquestionnarieForm.getFootquestionnariedetails().size());       
		    footquestionnarieForm.setFootquestionnariedetails(footDAO.getlimitedfootquestionnarie(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(footDAO.getnooffootquestionnarie() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewfootquestionnarie";

		}	
		
		@RequestMapping(value="/viewfootquestionnarie_page", method=RequestMethod.GET)
		public String viewfootquestionnarie_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();
			footquestionnarieForm.setFootquestionnariedetails(footDAO.getlimitedfootquestionnarie(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(footDAO.getnooffootquestionnarie() * 1.0 / 5));
		   	model.addAttribute("footquestionnarieForm", footquestionnarieForm);	
		   	model.addAttribute("noofrows",footquestionnarieForm.getFootquestionnariedetails().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewfootquestionnarie";
			
		}	
		
		@RequestMapping(value={"/", "/viewallfootquestionnarie"}, method = RequestMethod.GET)
		public String viewallfootquestionnarie(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();
			footquestionnarieForm.setFootquestionnariedetails(footDAO.getFootquestionnarie());
			
			model.addAttribute("footquestionnarieForm",footquestionnarieForm);	
			model.addAttribute("noofrows",footquestionnarieForm.getFootquestionnariedetails().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewfootquestionnarie";

		}


	@RequestMapping(value="/footquestionnarielist", method=RequestMethod.GET)
	public String footquestionnarielist(HttpServletRequest request,@RequestParam("footquestionno") String footquestionno,ModelMap model,Footquestionnarie footquestionnarie)
	{
		
		FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();
		footquestionnarieForm.setFootquestionnariedetails(footDAO.getFoot(footquestionno));	
		model.addAttribute("footquestionnarieForm", footquestionnarieForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		return "footquestionnarielist";
	}
	@RequestMapping(value="/editfootquestionnarie", method=RequestMethod.GET)
	public String editfootquestionnarie(HttpServletRequest request,@RequestParam("footquestionno") String footquestionno,ModelMap model,Footquestionnarie footquestionnarie) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();       
        footquestionnarieForm.setFootquestionnariedetails(footDAO.getFoot(footquestionno));
        model.addAttribute("footquestionnarieForm",footquestionnarieForm);
		 
		return "editfootquestionnarie";
	}
	@RequestMapping(value="/editusernamefootquestionnarie", method=RequestMethod.GET)
	public String editusernamefootquestionnarie(HttpServletRequest request,@RequestParam("username") String username,ModelMap model,Footquestionnarie footquestionnarie) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();       
        footquestionnarieForm.setFootquestionnariedetails(footDAO.getusernameFoot(username));
        model.addAttribute("footquestionnarieForm",footquestionnarieForm);
		model.addAttribute("menu","checklist"); 
		return "editfootquestionnarie";
	}
	@RequestMapping(value="/updatefootquestionnarie", method=RequestMethod.POST)
	public String updatefootquestionnarie(HttpServletRequest request,ModelMap model,@ModelAttribute("Footquestionnarie") @Valid Footquestionnarie footquestionnarie,
			BindingResult result,Principal principal)
	{
		String username=principal.getName();
		if (result.hasErrors())
		{
			FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();
	     
	       footquestionnarieForm.setFootquestionnariedetails(footDAO.getFoot(username));
	      
	        model.addAttribute("footquestionnarieForm", footquestionnarieForm);
	        model.addAttribute("menu", "hipknee");    
		        return "editfootquestionnarie";
		}
	   int status = footDAO.updatefootquestionnarie(footquestionnarie,footquestionnarie.getFootquestionno(), principal.getName());
	   System.out.println(status);	
	   FootquestionnarieForm footquestionnarieForm = new FootquestionnarieForm();        
       footquestionnarieForm.setFootquestionnariedetails(footDAO.getusernameFoot(username));       
       model.addAttribute("footquestionnarieForm", footquestionnarieForm);
	   return "viewfootquestionnarie";
		
	}
	
	@RequestMapping(value="/deletefootquestionnariedetials", method=RequestMethod.GET)
	public String removedelete(ModelMap model, Principal principal) {	
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		String username=principal.getName();
		int status=footDAO.deletefootdetails(username);
		model.addAttribute("menu","hipknee");
		return "footquestionnarie";
	}
	@RequestMapping(value="/deletefootquestionnarie", method=RequestMethod.GET)
	public String removedelete(@RequestParam("footquestionno") String footquestionno,ModelMap model, Principal principal) {
	
		int status=footDAO.deletefoot(footquestionno);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        FootquestionnarieForm footquestionnarieForm= new FootquestionnarieForm();
        footquestionnarieForm.setFootquestionnariedetails(footDAO.getFootquestionnarie());
		model.addAttribute("footquestionnarieForm",footquestionnarieForm);  
		}
		return "viewfootquestionnarie";
	}
	
	@RequestMapping(value="/shoulderpainscore", method = RequestMethod.GET)
	public String viewingshoulderpainscore(HttpSession session, ModelMap model) {
		
		session.removeAttribute("shoulderpain");
		return "shoulderpainscore";
 
	}
	@RequestMapping(value="/shoulderpainscore", method = RequestMethod.POST)
	public String insert_shoulderpainscore(HttpServletRequest request,HttpSession session,@ModelAttribute("Shoulderpainscore")  @Valid Shoulderpainscore shoulderpainscore,BindingResult result,ModelMap model) {
		session.setAttribute("shoulderpain", shoulderpainscore);
		if(result.hasErrors())
		{
		
			ShoulderpainscoreForm shoulderpainscoreForm = new ShoulderpainscoreForm();
			shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getShoulderpainscore());
			model.addAttribute("shoulderpainscoreForm",shoulderpainscoreForm);
			model.addAttribute("Success","true");
			/*model.addAttribute("menu", "hipknee");*/
			return "shoulderpainscore";
		}
 
	    model.put("Shoulderpainscore", shoulderpainscore);
		model.addAttribute("shoulderpainscoreForm",shoulderpainscore);
    	int a=shoulderDAO.setShoulderpain(shoulderpainscore);
    	ShoulderpainscoreForm shoulderpainscoreForm= new ShoulderpainscoreForm();
    	shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getShoulderpainscore());
		model.addAttribute("shoulderpainscoreForm",shoulderpainscoreForm);
		return "shoulderpainscore";
 
	
	}
	@RequestMapping(value="/viewshoulderpainscore", method=RequestMethod.GET)
	public String viewshoulderpainscore(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  ShoulderpainscoreForm shoulderpainscoreForm = new ShoulderpainscoreForm();
		 
		  shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getShoulderpainscore());
		  
		  model.addAttribute("shoulderpainscoreForm",shoulderpainscoreForm);	
		  model.addAttribute("noofrows",shoulderpainscoreForm.getShoulderpainscore().size());       
		    shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getlimitedshoulderpainscore(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(shoulderDAO.getnoofshoulderpainscore() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewshoulderpainscore";

		}	
		
		@RequestMapping(value="/viewshoulderpainscore_page", method=RequestMethod.GET)
		public String viewshoulderpainscore_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
			
			ShoulderpainscoreForm shoulderpainscoreForm = new ShoulderpainscoreForm();
			shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getlimitedshoulderpainscore(page));
			
		   	model.addAttribute("noofpages",(int) Math.ceil(shoulderDAO.getnoofshoulderpainscore() * 1.0 / 5));
		   	model.addAttribute("shoulderpainscoreForm", shoulderpainscoreForm);	
		   	model.addAttribute("noofrows",shoulderpainscoreForm.getShoulderpainscore().size());   
	model.addAttribute("currentpage",page);
	model.addAttribute("menu","sign");
	model.addAttribute("button","viewall");
			return "viewshoulderpainscore";
			
		}	
		
		@RequestMapping(value={"/", "/viewallshoulderpainscore"}, method = RequestMethod.GET)
		public String viewallshoulderpainscore(HttpServletRequest request,ModelMap model, Principal principal ) {
			
			ShoulderpainscoreForm shoulderpainscoreForm = new ShoulderpainscoreForm();
			shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getShoulderpainscore());
			
			model.addAttribute("shoulderpainscoreForm",shoulderpainscoreForm);	
			model.addAttribute("noofrows",shoulderpainscoreForm.getShoulderpainscore().size());    

	model.addAttribute("menu","sign");
	model.addAttribute("button","close");
		      
		        model.addAttribute("menu","sign");
		        model.addAttribute("success","false");
		        model.addAttribute("button","close");
				return "viewshoulderpainscore";

		}


	@RequestMapping(value="/shoulderpainscorelist", method=RequestMethod.GET)
	public String shoulderpainscorelist(HttpServletRequest request,@RequestParam("shoulderpainno") String shoulderpainno,ModelMap model,Shoulderpainscore shoulderpainscore)
	{
		
		ShoulderpainscoreForm shoulderpainscoreForm = new ShoulderpainscoreForm();
		shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getShoulder(shoulderpainno));	
		model.addAttribute("shoulderpainscoreForm", shoulderpainscoreForm);
		model.addAttribute("currentuser",request.getSession().getAttribute("currentuser"));
		return "shoulderpainscorelist";
	}
	@RequestMapping(value="/editshoulderpainscore", method=RequestMethod.GET)
	public String editshoulderpainscore(HttpServletRequest request,@RequestParam("shoulderpainno") String shoulderpainno,ModelMap model,Shoulderpainscore shoulderpainscore) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		ShoulderpainscoreForm shoulderpainscoreForm = new ShoulderpainscoreForm();       
        shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getShoulder(shoulderpainno));
        model.addAttribute("shoulderpainscoreForm",shoulderpainscoreForm);
		 
		return "editshoulderpainscore";
	}
	@RequestMapping(value="/updateshoulderpainscore", method=RequestMethod.POST)
	public String updateshoulderpainscore(HttpServletRequest request,@ModelAttribute("Shoulderpainscore") @Valid Shoulderpainscore shoulderpainscore,
			BindingResult result,ModelMap model,Principal principal)
	{
		int status = shoulderDAO.updateshoulderpainscore(shoulderpainscore,shoulderpainscore.getShoulderpainno(), principal.getName());
		System.out.println(status);
		
		ShoulderpainscoreForm shoulderpainscoreForm = new ShoulderpainscoreForm();
        
       shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getShoulderpainscore());
       
        model.addAttribute("shoulderpainscoreForm", shoulderpainscoreForm);
	        return "viewshoulderpainscore";
		
	}
	
	@RequestMapping(value="/deleteshoulderpainscore", method=RequestMethod.GET)
	public String removeshoulderpainscore(@RequestParam("shoulderpainno") String shoulderpainno,ModelMap model, Principal principal) {
	
		int status=shoulderDAO.deleteshoulderpainscore(shoulderpainno);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        ShoulderpainscoreForm shoulderpainscoreForm= new ShoulderpainscoreForm();
        shoulderpainscoreForm.setShoulderpainscore(shoulderDAO.getShoulderpainscore());
		model.addAttribute("shoulderpainscoreForm",shoulderpainscoreForm);  
		}
		return "viewshoulderpainscore";
	}
	
}
	
  