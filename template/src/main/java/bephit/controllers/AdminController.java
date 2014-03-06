package bephit.controllers;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bephit.dao.FormbillDAO;
import bephit.dao.LetterofprotectionDAO;
/*import bephit.dao.LettertopatientsDAO;
import bephit.dao.NoticeassignmentDAO;
import bephit.dao.PatientattorneyDAO;*/
import bephit.dao.FaxcoverDAO;
import bephit.dao.LettertopatientsDAO;
import bephit.dao.NoticeassignmentDAO;
import bephit.dao.Patientattorney1DAO;
import bephit.dao.PerrychiropracticDAO;
import bephit.dao.PimedpayDAO;
import bephit.dao.RequestfordemandDAO;
import bephit.dao.ResponseattorneyDAO;
import bephit.dao.ReturntoschoolDAO;
import bephit.dao.UpdateletterDAO;
import bephit.dao.WorkschoolDAO;
import bephit.dao.XrayDAO;
import bephit.forms.FormbillForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.LetterofprotectionForm;
/*import bephit.forms.PatientattorneyForm;*/
import bephit.forms.FaxcoverForm;
import bephit.forms.LettertopatientsForm;
import bephit.forms.NarrativereportForm;
import bephit.forms.NoticeassignmentForm;
import bephit.forms.PatientattorneyForm;
import bephit.forms.PerrychiropracticForm;
import bephit.forms.PhysicalexamForm;
import bephit.forms.PimedpayForm;
import bephit.forms.RequestfordemandForm;
import bephit.forms.ReturntoschoolForm;
import bephit.forms.UpdateletterForm;
import bephit.forms.WorkschoolForm;
import bephit.forms.XrayForm;
import bephit.model.Perrychiropractic;
import bephit.model.Requestfordemand;
import bephit.model.Updateletter;
import bephit.model.Xray;
import bephit.forms.ResponseattorneyForm;
import bephit.model.Faxcover;
import bephit.model.Formbill;
import bephit.model.Lettertopatients;
import bephit.model.Letterofprotection;
import bephit.model.Noticeassignment;
import bephit.model.Patientattorney;
import bephit.model.Perrychiropractic;
import bephit.model.Pimedpay;
import bephit.model.Responseattorney;
import bephit.model.Returntoschool;
import bephit.model.Updateletter;
import bephit.model.Workschool;


@Controller
public class AdminController
{
		
	@Autowired
	  PerrychiropracticDAO perrychiropracticDAO;
	
	@Autowired
	  LetterofprotectionDAO letterofprotectionDAO;
	
	
	@Autowired
	UpdateletterDAO updateletterDAO;
	

	@Autowired
	FormbillDAO formbillDAO;
	
	

		@Autowired
	RequestfordemandDAO requestfordemandDAO;
	
	
	
	@Autowired
	 XrayDAO xrayDAO;
	@Autowired
	FaxcoverDAO faxcoverDAO;
	
	@Autowired
	  ResponseattorneyDAO responseattorneyDAO;
	
	@Autowired
	LettertopatientsDAO lettertopatientsDAO;
	@Autowired
	PimedpayDAO pimedpayDAO;
	@Autowired
	Patientattorney1DAO patientattorneyDAO;
	@Autowired
	  NoticeassignmentDAO noticeassignmentDAO;
	@Autowired
	  WorkschoolDAO workschoolDAO;
	
	@Autowired
	  ReturntoschoolDAO returntoschoolDAO;
	@RequestMapping(value="/viewperrychiropractic", method = RequestMethod.GET)
	public String viewperrychiropractic(HttpSession session,ModelMap model) {		
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);
		
		model.addAttribute("menu","perry");
		return "viewperrychiropractic";
	}
	@RequestMapping(value="/viewupdateletter", method = RequestMethod.GET)
	public String viewupdateletter(HttpSession session,ModelMap model) {		
		UpdateletterForm updateletterform=new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform",updateletterform);
		model.addAttribute("menu","perry");
		
		return "viewupdateletter";
	}
	
	@RequestMapping(value="/viewrequestfordemand", method = RequestMethod.GET)
	public String viewrequestfordemand(HttpSession session,ModelMap model) {		
		RequestfordemandForm requestfordemandform=new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform",requestfordemandform);
		model.addAttribute("menu","perry");
		
		return "viewrequestfordemand";
	}

	@RequestMapping(value="/viewxray", method = RequestMethod.GET)
	public String viewxray(HttpSession session,ModelMap model) {		
		XrayForm xrayform=new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform",xrayform);
		model.addAttribute("menu","xray");
		
		return "viewxray";
		
	}
	@RequestMapping(value="/viewpimedpay", method = RequestMethod.GET)
	public String viewpimedpay(HttpSession session,ModelMap model) {		
		PimedpayForm pimedpayform=new PimedpayForm();
		pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
		model.addAttribute("pimedpayform",pimedpayform);
		
		
		return "viewpimedpay";
	}
	@RequestMapping(value="/viewpatientattorney", method = RequestMethod.GET)
	public String viewpatientattorney(HttpSession session,ModelMap model) {		
		PatientattorneyForm patientattorneyform=new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform",patientattorneyform);
		
		
		return "viewpatientattorney";
	}

	@RequestMapping(value="/viewformbill", method = RequestMethod.GET)
	public String viewformbill(HttpSession session,ModelMap model) {		
		FormbillForm formbillForm=new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform",formbillForm);
		
		model.addAttribute("menu","xray");
		return "viewformbill";
	}
	@RequestMapping(value="/editperrychiropractic", method = RequestMethod.GET)
	public String editperrychiropractic(@RequestParam("perryid")String perryid, HttpSession session,ModelMap model) {		
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic(perryid));
		model.addAttribute("perrychiropracticform",perrychiropracticform);
		
		model.addAttribute("menu","perry");
		return "editperrychiropractic";
			
	}
	@RequestMapping(value="/editreturntoschool", method = RequestMethod.GET)
	public String editreturntoschool(@RequestParam("schoolid")String schoolid, HttpSession session,ModelMap model) {		
		ReturntoschoolForm returntoschoolform=new ReturntoschoolForm();
		returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool(schoolid));
		model.addAttribute("returntoschoolform",returntoschoolform);		
		return "editreturntoschool";			
	}

	@RequestMapping(value="/editupdateletter", method = RequestMethod.GET)
	public String editupdateletter(@RequestParam("updateid")String updateid, HttpSession session,ModelMap model) {		
		UpdateletterForm updateletterform=new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter(updateid));
		model.addAttribute("updateletterform",updateletterform);
		model.addAttribute("menu","perry");		
		return "editupdateletter";	
			
	}
	
	@RequestMapping(value="/editrequestfordemand", method = RequestMethod.GET)
	public String editrequestfordemand(@RequestParam("requestid")String requestid, HttpSession session,ModelMap model) {		
		RequestfordemandForm requestfordemandform=new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand(requestid));
		model.addAttribute("requestfordemandform",requestfordemandform);		
		return "editrequestfordemand";			
	}	
	@RequestMapping(value="/editxray", method = RequestMethod.GET)
	public String editxray(@RequestParam("xrayid") String xrayid, HttpSession session,ModelMap model) {		
		XrayForm xrayForm=new XrayForm();
		xrayForm.setxraydetails(xrayDAO.getxray(xrayid));
		model.addAttribute("xrayform",xrayForm);
		model.addAttribute("menu","xray");		
		return "editxray";			
	}	
	@RequestMapping(value="/editpimedpay", method = RequestMethod.GET)
	public String editpimedpay(@RequestParam("medpayid") String medpayid, HttpSession session,ModelMap model) {		
		PimedpayForm pimedpayForm=new PimedpayForm();
		pimedpayForm.setPimedpaydetails(pimedpayDAO.getpimedpay(medpayid));
		model.addAttribute("pimedpayform",pimedpayForm);
		
		
		return "editpimedpay";
		
			
	}
	@RequestMapping(value="/editpatientattorney", method = RequestMethod.GET)
	public String editpatientattorney(@RequestParam("patientid") String patientid, HttpSession session,ModelMap model) {		
		PatientattorneyForm patientattorneyForm=new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getpatientattorney(patientid));
		model.addAttribute("patientattorneyform",patientattorneyForm);
		
		
		return "editpatientattorney";
	
	
	}


	@RequestMapping(value="/editformbill", method = RequestMethod.GET)
	public String editformbill(@RequestParam("formid")String formid, HttpSession session,ModelMap model) {		
		FormbillForm formbillForm=new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill(formid));
		model.addAttribute("formbillform",formbillForm);		
		model.addAttribute("menu","xray");
		return "editformbill";			
	}	
	@RequestMapping(value="/deleteperrychiropractic", method = RequestMethod.GET)
	public String deleteperrychiropractic(@RequestParam("perryid")String perryid, HttpSession session,ModelMap model) {		
		
		perrychiropracticDAO.deleteperrychiropractic(perryid);		
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);		
		model.addAttribute("menu","xray");
		return "viewperrychiropractic";
	}

	@RequestMapping(value="/deletereturntoschool", method = RequestMethod.GET)
	public String deletereturntoschool(@RequestParam("schoolid")String schoolid, HttpSession session,ModelMap model) {		
		
		returntoschoolDAO.deletereturntoschool(schoolid);
		
		ReturntoschoolForm returntoschoolform=new ReturntoschoolForm();
		returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
		model.addAttribute("returntoschoolform",returntoschoolform);
		
		
		return "viewreturntoschool";
	}

	@RequestMapping(value="/deletepimedpay", method = RequestMethod.GET)
	public String deletepimedpay(@RequestParam("medpayid")String medpayid, HttpSession session,ModelMap model) {		
		
		pimedpayDAO.deletepimedpay(medpayid);
		
		PimedpayForm pimedpayform=new PimedpayForm();
		pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
		model.addAttribute("pimedpayform",pimedpayform);
		
		
		return "viewpimedpay";
	}


	@RequestMapping(value="/deleteupdateletter", method = RequestMethod.GET)
	public String deleteupdateletter(@RequestParam("updateid")String updateid, HttpSession session,ModelMap model) {		
		
		updateletterDAO.deleteupdateletter(updateid);
		
		UpdateletterForm updateletterform=new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform",updateletterform);
		
		model.addAttribute("menu","xray");
		return "viewupdateletter";
	}
	
	
	@RequestMapping(value="/deleterequestfordemand", method = RequestMethod.GET)
	public String deleterequestfordemand(@RequestParam("requestid")String requestid, HttpSession session,ModelMap model) {		
		
		requestfordemandDAO.deleterequestfordemand(requestid);		
		RequestfordemandForm requestfordemandform=new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform",requestfordemandform);		
		return "viewrequestfordemand";
	}
	
	@RequestMapping(value="/deletexray", method = RequestMethod.GET)
	public String deletexray(@RequestParam("xrayid")String xrayid, HttpSession session,ModelMap model) {	
		
		xrayDAO.deletexray(xrayid);		
		XrayForm xrayForm=new XrayForm();
		xrayForm.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayForm",xrayForm);
		model.addAttribute("menu","xray");		
		return "viewxray";
	}
	@RequestMapping(value="/deleteformbill", method = RequestMethod.GET)
	public String deleteformbill(@RequestParam("formid")String formid, HttpSession session,ModelMap model) {		
		
		formbillDAO.deleteformbill(formid);		
		FormbillForm formbillForm=new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill(formid));
		model.addAttribute("formbillform",formbillForm);
		model.addAttribute("menu","xray");		
		return "viewformbill";
	}
		
	@RequestMapping(value="/perrychiropractic", method = RequestMethod.GET)
	public String perrychiropractic(HttpSession session,ModelMap model) {		
		model.addAttribute("menu","perry");
		return "perrychiropractic";
	}
 
	@RequestMapping(value="/letterofprotection", method = RequestMethod.GET)
	public String letterofprotection(HttpSession session,ModelMap model) {		
		model.addAttribute("menu","xray");
		return "letterofprotection";
	}	
	
	@RequestMapping(value="/patientattorney", method = RequestMethod.GET)
	public String patientattorney(HttpSession session,ModelMap model) {		
		
		return "patientattorney";
	}
			
		@RequestMapping(value="/returntoschool", method = RequestMethod.GET)
		public String returntoschool(HttpSession session,ModelMap model) {		
			
			return "returntoschool";
		}
	 
		@RequestMapping(value="/requestfordemand", method = RequestMethod.GET)
		public String requestfordemand(HttpSession session,ModelMap model) {		
			
			return "requestfordemand";
		}	
		
		@RequestMapping(value="/pimedpay", method = RequestMethod.GET)
		public String pimedpay(HttpSession session,ModelMap model) {		
			
			return "pimedpay";
		}
		
	
	
	
	@RequestMapping(value="/xray", method = RequestMethod.GET)
	public String xray(HttpSession session,ModelMap model) {		
		model.addAttribute("menu","xray");
		return "xray";
	}
 
	
	@RequestMapping(value="/updateperrychiropractic", method = RequestMethod.POST)

	public String update_perrychiropractic(HttpServletRequest request,HttpSession session,@ModelAttribute("Perrychiropractic")  @Valid Perrychiropractic perrychiropracticdetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
			perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
			model.addAttribute("perrychiropracticform", perrychiropracticform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "perrychiropractic";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		perrychiropracticDAO.updateperrychiropractic(perrychiropracticdetails,perrychiropracticdetails.getPerryid());
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);
		
		
		return "viewperrychiropractic";
		 
	}
	@RequestMapping(value="/updatereturntoschool", method = RequestMethod.POST)

	public String update_returntoschool(HttpServletRequest request,HttpSession session,@ModelAttribute("Returntoschool")  @Valid Returntoschool returntoschooldetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			ReturntoschoolForm returntoschoolform = new ReturntoschoolForm();
			returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
			model.addAttribute("returntoschoolform", returntoschoolform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "returntoschool";
		}
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		returntoschoolDAO.updatereturntoschool(returntoschooldetails,returntoschooldetails.getSchoolid());
		ReturntoschoolForm returntoschoolform=new ReturntoschoolForm();
		returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
		model.addAttribute("returntoschoolform",returntoschoolform);
		
		
		return "viewreturntoschool";
		 
	}
	
	
	
	
	@RequestMapping(value="/updatepimedpay", method = RequestMethod.POST)

	public String update_pimedpay(HttpServletRequest request,HttpSession session,@ModelAttribute("Pimedpay")  @Valid Pimedpay pimedpaydetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			PimedpayForm pimedpayform = new PimedpayForm();
			pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
			model.addAttribute("pimedpayform", pimedpayform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "pimedpay";
		}		
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		pimedpayDAO.updatepimedpay(pimedpaydetails,pimedpaydetails.getMedpayid());
		PimedpayForm pimedpayform=new PimedpayForm();
		pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
		model.addAttribute("pimedpayform",pimedpayform);
		
		
		return "viewpimedpay";
		 
	}
	
	

	

	

	@RequestMapping(value="/updateupdateletter", method = RequestMethod.POST)

	public String update_updateletter(HttpServletRequest request,HttpSession session,@ModelAttribute("Updateletter")  @Valid Updateletter updateletterdetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			UpdateletterForm updateletterform = new UpdateletterForm();
			updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
			model.addAttribute("updateletterform", updateletterform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "updateletter";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		updateletterDAO.updateupdateletter(updateletterdetails,updateletterdetails.getUpdateid());
		UpdateletterForm updateletterform=new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform",updateletterform);
		
		
		return "viewupdateletter";
		 
	}
	
	@RequestMapping(value="/updaterequestfordemand", method = RequestMethod.POST)

	public String update_requestfordemand(HttpServletRequest request,HttpSession session,@ModelAttribute("Requestfordemand")  @Valid Requestfordemand requestfordemanddetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			RequestfordemandForm requestfordemandform = new RequestfordemandForm();
			requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
			model.addAttribute("requestfordemandform", requestfordemandform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "requestfordemand";
		}	
			
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		requestfordemandDAO.updaterequestfordemand(requestfordemanddetails,requestfordemanddetails.getRequestid());
		RequestfordemandForm requestfordemandform=new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform",requestfordemandform);
		
		
		return "viewrequestfordemand";
		 
	}

	@RequestMapping(value="/updatexray", method = RequestMethod.POST)

	public String update_xray(HttpServletRequest request,HttpSession session,@ModelAttribute("xraydetails")  @Valid Xray xraydetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{ 
			model.addAttribute("menu","initial");
			return "xray";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		xrayDAO.updatexray(xraydetails,xraydetails.getXrayid());
		XrayForm xrayform=new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform",xrayform);
		
		
		return "viewxray";
		 
	}
	@RequestMapping(value="/updatepatientattorney", method = RequestMethod.POST)

	public String update_patientattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("Patientattorney")  @Valid Patientattorney patientattorneydetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			PatientattorneyForm patientattorneyform = new PatientattorneyForm();
			patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
			model.addAttribute("patientattorneyform", patientattorneyform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "patientattorney";
		}
			
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		patientattorneyDAO.updatepatientattorney(patientattorneydetails,patientattorneydetails.getPatientid());
		PatientattorneyForm patientattorneyform=new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform",patientattorneyform);
		
		
		return "viewpatientattorney";
		 
	}

	
	@RequestMapping(value="/updateformbill", method = RequestMethod.POST)

	public String update_formbill(HttpServletRequest request,HttpSession session,@ModelAttribute("Formbill")  @Valid Formbill formbilldetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			FormbillForm formbillform = new FormbillForm();
			formbillform.setFormbilldetails(formbillDAO.getformbill());
			model.addAttribute("formbillform", formbillform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "formbill";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		formbillDAO.updateformbill(formbilldetails,formbilldetails.getFormid());
		FormbillForm formbillForm=new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform",formbillForm);
		
		
		return "viewformbill";
		 
	}
	

		
	@RequestMapping(value="/insertperrychiropractic", method = RequestMethod.POST)

	public String insert_perrychiropractic(HttpServletRequest request,HttpSession session,@ModelAttribute("Perrychiropractic")  @Valid Perrychiropractic perrychiropracticdetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
			perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
			model.addAttribute("perrychiropracticform", perrychiropracticform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "perrychiropractic";
		}
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		perrychiropracticDAO.setperrychiropractic(perrychiropracticdetails);
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);
		return "viewperrychiropractic";
		 
	}

	@RequestMapping(value="/insertreturntoschool", method = RequestMethod.POST)

	public String insert_returntoschool(HttpServletRequest request,HttpSession session,@ModelAttribute("returntoschool")  @Valid Returntoschool returntoschooldetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			ReturntoschoolForm returntoschoolform = new ReturntoschoolForm();
			returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
			model.addAttribute("returntoschoolform", returntoschoolform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "returntoschool";
		}

	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	returntoschoolDAO.setreturntoschool(returntoschooldetails);
	ReturntoschoolForm returntoschoolform=new ReturntoschoolForm();
	returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
	model.addAttribute("returntoschoolform",returntoschoolform);
	return "viewreturntoschool";
	 
	}

	@RequestMapping(value="/insertrequestfordemand", method = RequestMethod.POST)

	public String insert_requestfordemand(HttpServletRequest request,HttpSession session,@ModelAttribute("Requestfordemand")  @Valid Requestfordemand requestfordemanddetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			RequestfordemandForm requestfordemandform = new RequestfordemandForm();
			requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
			model.addAttribute("requestfordemandform", requestfordemandform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "requestfordemand";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		requestfordemandDAO.setrequestfordemand(requestfordemanddetails);
		RequestfordemandForm requestfordemandform=new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform",requestfordemandform);
		return "viewrequestfordemand";
		 
	}

	@RequestMapping(value="/insertxray", method = RequestMethod.POST)

	public String insert_xray(HttpServletRequest request,HttpSession session,@ModelAttribute("Xray")  @Valid Xray xraydetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			XrayForm xrayform = new XrayForm();
			xrayform.setxraydetails(xrayDAO.getxray());
			model.addAttribute("xrayform", xrayform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "xray";
		}
		
		xrayDAO.setxray(xraydetails);
		XrayForm xrayform=new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform",xrayform);
		return "viewxray";
		 
	}
	@RequestMapping(value="/insertpimedpay", method = RequestMethod.POST)

	public String insert_pimedpay(HttpServletRequest request,HttpSession session,@ModelAttribute("Pimedpay")  @Valid Pimedpay pimedpaydetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			PimedpayForm pimedpayform = new PimedpayForm();
			pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
			model.addAttribute("pimedpayform", pimedpayform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "pimedpay";
		}	
		
		pimedpayDAO.setpimedpay(pimedpaydetails);
		PimedpayForm pimedpayform=new PimedpayForm();
		pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
		model.addAttribute("pimedpayform",pimedpayform);
		return "viewpimedpay";
		 
	}

	@RequestMapping(value="/insertpatientattorney", method = RequestMethod.POST)

	public String insert_patientattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("Patientattorney")  @Valid Patientattorney patientattorneydetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			PatientattorneyForm patientattorneyform = new PatientattorneyForm();
			patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
			model.addAttribute("patientattorneyform", patientattorneyform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "patientattorney";
		}
		
		
		patientattorneyDAO.setpatientattorney(patientattorneydetails);
		PatientattorneyForm patientattorneyform=new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform",patientattorneyform);
		return "viewpatientattorney";
		 
	}

	@RequestMapping(value="/insertupdateletter", method = RequestMethod.POST)

	public String insert_updateletter(HttpServletRequest request,HttpSession session,@ModelAttribute("Updateletter")  @Valid Updateletter updateletterdetails,BindingResult result,ModelMap model)
	{
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{
			UpdateletterForm updateletterform = new UpdateletterForm();
			updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
			model.addAttribute("updateletterform", updateletterform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "notes");
			return "updateletter";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		updateletterDAO.setupdateletter(updateletterdetails);
		UpdateletterForm updateletterform=new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform",updateletterform);
		return "viewupdateletter";
		 
	}

@RequestMapping(value="/viewfaxcover", method = RequestMethod.GET)
public String viewfaxcover(HttpSession session,ModelMap model) {		
	FaxcoverForm faxcoverform=new FaxcoverForm();
	faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
	model.addAttribute("faxcoverform",faxcoverform);	
	return "viewfaxcover";
}
@RequestMapping(value="/lettertopatients", method = RequestMethod.GET)
public String lettertopatients(HttpSession session,ModelMap model) {
	
	return "lettertopatients";


}
@RequestMapping(value="/responseattorney", method = RequestMethod.GET)
public String responseattorney(HttpSession session,ModelMap model) {		
	
	return "responseattorney";
}
@RequestMapping(value="/faxcover", method = RequestMethod.GET)
public String faxcover(HttpSession session,ModelMap model) {		
	
	return "faxcover";
}
@RequestMapping(value="/workschool", method = RequestMethod.GET)
public String workschool(HttpSession session,ModelMap model) {		
	
	return "workschool";


}

@RequestMapping(value="/noticeassignmentlist", method = RequestMethod.GET)
public String noticelist(HttpSession session,@RequestParam("noticeid") String noticeid,ModelMap model) {		
	NoticeassignmentForm noticeassignmentform=new NoticeassignmentForm();
	noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment(noticeid));
	model.addAttribute("noticeassignmentform",noticeassignmentform);
	return "viewnoticelist";
}
@RequestMapping(value="/faxcoverlist", method = RequestMethod.GET)
public String faxlist(HttpSession session,@RequestParam("faxid") String faxid,ModelMap model) {		
	FaxcoverForm faxcoverform=new FaxcoverForm();
	faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover(faxid));
	model.addAttribute("faxcoverform",faxcoverform);
	return "viewfaxlist";
}

@RequestMapping(value="/lettertopatientlist", method = RequestMethod.GET)
public String letterlist(HttpSession session,@RequestParam("letterid") String letterid,ModelMap model) {		
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients(letterid));
	model.addAttribute("lettertopatientsform",lettertopatientsform);
		
	return "lettertopatientslist";
}
@RequestMapping(value="/letterofprotectionlist", method = RequestMethod.GET)
public String letterofprotectionlist(HttpSession session,@RequestParam("letterid") String letterid,ModelMap model) {		
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection(letterid));
	model.addAttribute("letterofprotectionform",letterofprotectionform);			
	return "viewprotectionlist";
}
@RequestMapping(value="/viewresponselist", method = RequestMethod.GET)
public String viewresponselist(HttpSession session,@RequestParam("responseid") String responseid,ModelMap model) {		
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney(responseid));
			model.addAttribute("responseattorneyform",responseattorneyform);
			return "viewresponselist";
}

@RequestMapping(value="/requestfordemandlist", method = RequestMethod.GET)
public String requestfordemandlist(HttpSession session,@RequestParam("requestid") String requestid,ModelMap model) {		
	RequestfordemandForm requestfordemandform=new RequestfordemandForm();
	requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand(requestid));
	model.addAttribute("requestfordemandform",requestfordemandform);			
	return "requestfordemandlist";
}

@RequestMapping(value="/updateletterlist", method = RequestMethod.GET)
public String updateletterlist(HttpSession session,@RequestParam("updateid") String updateid,ModelMap model) {		
	UpdateletterForm updateletterform=new UpdateletterForm();
	updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter(updateid));
	model.addAttribute("updateletterform",updateletterform);			
	return "updateletterlist";
}

@RequestMapping(value="/viewletterofprotection", method = RequestMethod.GET)
public String viewletterofprotection(HttpSession session,ModelMap model) {		
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
	model.addAttribute("letterofprotectionform",letterofprotectionform);
	System.out.println("asdasd");
	
	return "viewletterofprotection";
}


@RequestMapping(value="/viewlettertopatients", method = RequestMethod.GET)
public String viewlettertopatients(HttpSession session,ModelMap model) {		
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
	model.addAttribute("lettertopatientsform",lettertopatientsform);
		
	return "viewlettertopatients";
}

@RequestMapping(value="/viewresponseattorney", method = RequestMethod.GET)
public String viewresponseattorney(HttpSession session,ModelMap model) {		
ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
	model.addAttribute("responseattorneyform",responseattorneyform);
	return "viewresponseattorney";
}
@RequestMapping(value="/viewnoticeassignment", method = RequestMethod.GET)
public String viewnoticeassignment(HttpSession session,ModelMap model) {		
	NoticeassignmentForm noticeassignmentform=new NoticeassignmentForm();
	noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
	model.addAttribute("noticeassignmentform",noticeassignmentform);
	
	
	return "viewnoticeassignment";
}
@RequestMapping(value="/viewreturntoschool", method = RequestMethod.GET)
public String viewreturntoschool(HttpSession session,ModelMap model) {		
	ReturntoschoolForm returntoschoolform=new ReturntoschoolForm();
	returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
	model.addAttribute("returntoschoolform",returntoschoolform);
	
	
	return "viewreturntoschool";
}


@RequestMapping(value="/editletterofprotection", method = RequestMethod.GET)
public String editletterofprotection(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
	model.addAttribute("letterofprotectionform",letterofprotectionform);
	
	
	return "editletterofprotection";
}

@RequestMapping(value="/editfaxcover", method = RequestMethod.GET)
public String editfaxcover(@RequestParam("faxid")String faxid, HttpSession session,ModelMap model) {		
	FaxcoverForm faxcoverform=new FaxcoverForm();
	faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover(faxid));
	model.addAttribute("faxcoverform",faxcoverform);
	
	
	return "editfaxcover";
}
@RequestMapping(value="/editlettertopatients", method = RequestMethod.GET)
public String editlettertopatients(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients(letterid));
	model.addAttribute("lettertopatientsform",lettertopatientsform);
		
	return "editlettertopatients";
}
@RequestMapping(value="/editnoticeassignment", method = RequestMethod.GET)
public String editnoticeassignment(@RequestParam("noticeid")String noticeid, HttpSession session,ModelMap model) {		
	NoticeassignmentForm noticeassignmentform=new NoticeassignmentForm();
	noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment(noticeid));
	model.addAttribute("noticeassignmentform",noticeassignmentform);
		
	return "editnoticeassignment";
}

@RequestMapping(value="/editresponseattorney", method = RequestMethod.GET)
public String editresponseattorney(@RequestParam("responseid")String responseid, HttpSession session,ModelMap model) {		
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney(responseid));
			model.addAttribute("responseattorneyform",responseattorneyform);
			return "editresponseattorney";
}
@RequestMapping(value="/updateletter", method = RequestMethod.GET)
public String updateletter(HttpSession session,ModelMap model) {		

return "updateletter";
}


@RequestMapping(value="/formbill", method = RequestMethod.GET)
public String formbill(HttpSession session,ModelMap model) {		

return "formbill";
}

@RequestMapping(value="/noticeassignment", method = RequestMethod.GET)
public String noticeassignment(HttpSession session,ModelMap model) {		

return "noticeassignment";
}
@RequestMapping(value="/deletenoticeassignment", method = RequestMethod.GET)
public String deleteletterofprotection(@RequestParam("noticeid")String noticeid, HttpSession session,ModelMap model) {		
	
	noticeassignmentDAO.deletenoticeassignment(noticeid);
	NoticeassignmentForm noticeassignmentform=new NoticeassignmentForm();
	noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
	model.addAttribute("noticeassignmentform",noticeassignmentform);
		
	return "viewnoticeassignment";
	
	
}
@RequestMapping(value="/deleteletterofprotection", method = RequestMethod.GET)
public String deletenoticeassignment(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
	
	letterofprotectionDAO.deleteletterofprotection(letterid);
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
	model.addAttribute("letterofprotectionform",letterofprotectionform);	
	return "viewletterofprotection";
}	
	
@RequestMapping(value="/deletelettertopatients", method = RequestMethod.GET)
public String deletelettertopatients(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
	
	lettertopatientsDAO.deletelettertopatients(letterid);
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
	model.addAttribute("lettertopatientsform",lettertopatientsform);	
	return "viewlettertopatients";	
}
@RequestMapping(value="/deleteresponseattorney", method = RequestMethod.GET)
public String deleteresponseattorney(@RequestParam("responseid")String responseid, HttpSession session,ModelMap model) {		
responseattorneyDAO.deleteresponseattorney(responseid);
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
			model.addAttribute("responseattorneyform",responseattorneyform);
			return "viewresponseattorney";	
}
@RequestMapping(value="/deletefaxcover", method = RequestMethod.GET)
public String deletefaxcover(@RequestParam("faxid")String faxid, HttpSession session,ModelMap model) {		
faxcoverDAO.deletefaxcover(faxid);
FaxcoverForm faxcoverform=new FaxcoverForm();
faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
model.addAttribute("faxcoverform",faxcoverform);
return "viewfaxcover";
	
}

@RequestMapping(value="/insertformbill", method = RequestMethod.POST)

public String insert_formbill(HttpServletRequest request,HttpSession session,@ModelAttribute("Formbill")  @Valid Formbill formbilldetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{
		FormbillForm formbillform = new FormbillForm();
		formbillform.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform", formbillform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "notes");
		return "formbill";
	}
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	formbillDAO.setformbill(formbilldetails);
	FormbillForm formbillform=new FormbillForm();
	formbillform.setFormbilldetails(formbillDAO.getformbill());
	model.addAttribute("formbillform",formbillform);
	return "viewformbill";
}


@RequestMapping(value="/insertlettertopatient", method = RequestMethod.POST)

public String insert_lettertopatient(HttpServletRequest request,HttpSession session,@ModelAttribute("Lettertopatients")  @Valid Lettertopatients lettertopatientsdetails,BindingResult result,ModelMap model)
{
	if(result.hasErrors())
	{
		LettertopatientsForm lettertopatientsform= new LettertopatientsForm();
		lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
		model.addAttribute("lettertopatientsform",lettertopatientsform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "lettertopatients";
	}

	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	lettertopatientsDAO.setlettertopatients(lettertopatientsdetails);
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
	model.addAttribute("lettertopatientsform",lettertopatientsform);
		
	return "viewlettertopatients";
	
	 
}


@RequestMapping(value="/insertnoticeofassignment", method = RequestMethod.POST)

public String insert_noticeofassignment(HttpServletRequest request,HttpSession session,@ModelAttribute("noticeassignmentdetails")  @Valid Noticeassignment noticeassignmentdetails,BindingResult result,ModelMap model)
{
	if(result.hasErrors())
	{
		NoticeassignmentForm noticeassignmentform= new NoticeassignmentForm();
		noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
		model.addAttribute("noticeassignmentform",noticeassignmentform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "noticeassignment";
	}

	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	noticeassignmentDAO.setnoticeassignment(noticeassignmentdetails);
	NoticeassignmentForm noticeassignmentform=new NoticeassignmentForm();
	noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
	model.addAttribute("noticeassignmentform",noticeassignmentform);
	return "viewnoticeassignment";
	 
}

@RequestMapping(value="/insertletterofprotection", method = RequestMethod.POST)

public String insert_letterofprotection(HttpServletRequest request,HttpSession session,@ModelAttribute("Letterofprotection")  @Valid Letterofprotection letterofprotectiondetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{
		LetterofprotectionForm letterofprotectionform = new LetterofprotectionForm();
		letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionform", letterofprotectionform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "notes");
		return "letterofprotection";
	}
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	letterofprotectionDAO.setletterofprotection(letterofprotectiondetails);
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
	model.addAttribute("letterofprotectionform",letterofprotectionform);
	return "viewletterofprotection";
	 
	}

@RequestMapping(value="/insertfaxcover", method = RequestMethod.POST)

public String insert_faxcover(HttpServletRequest request,HttpSession session,@ModelAttribute("faxcoverdetails")  @Valid Faxcover faxcoverdetails,BindingResult result,ModelMap model)
{
	if(result.hasErrors())
	{
		FaxcoverForm faxcoverform= new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
		model.addAttribute("faxcoverform",faxcoverform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "faxcover";
	}

	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	faxcoverDAO.setfaxcover(faxcoverdetails);
	FaxcoverForm faxcoverform=new FaxcoverForm();
	faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
	model.addAttribute("faxcoverform",faxcoverform);
	
	
	return "viewfaxcover";
}

@RequestMapping(value="/insertresponseattorney", method = RequestMethod.POST)

public String insertresponseattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("responseattorneydetail")  @Valid Responseattorney responseattorneydetail,BindingResult result,ModelMap model) {
	if(result.hasErrors())
	{
		ResponseattorneyForm responseattorneyform= new ResponseattorneyForm();
		responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
		model.addAttribute("noticeassignmentform",responseattorneyform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "responseattorney";
	}

	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	responseattorneyDAO.setresponseattorney(responseattorneydetail);
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
	model.addAttribute("responseattorneyform",responseattorneyform);
	return "viewresponseattorney";
	 
}
@RequestMapping(value="/updateletterofprotection", method = RequestMethod.POST)

public String update_letterofprotection(HttpServletRequest request,HttpSession session,@ModelAttribute("letterofprotectiondetails")  @Valid Letterofprotection letterofprotectiondetails,BindingResult result,ModelMap model) {
	if(result.hasErrors())
	{
		LetterofprotectionForm letterofprotectionform= new LetterofprotectionForm();
		letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionform",letterofprotectionform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "letterofprotection";
	}

	//System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
	letterofprotectionDAO.updateletterofprotection(letterofprotectiondetails,letterofprotectiondetails.getLetterid());
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
	model.addAttribute("letterofprotectionform",letterofprotectionform);
	return "viewletterofprotection";
	 
}

@RequestMapping(value="/updatefaxcover", method = RequestMethod.POST)

public String update_faxcover(HttpServletRequest request,HttpSession session,@ModelAttribute("faxcoverdetails")  @Valid Faxcover faxcoverdetails,BindingResult result,ModelMap model) {
	if(result.hasErrors())
	{
		FaxcoverForm faxcoverform= new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
		model.addAttribute("faxcoverform",faxcoverform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "faxcover";
	}

	//System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
	faxcoverDAO.updatefaxcover(faxcoverdetails,faxcoverdetails.getFaxid());
	FaxcoverForm faxcoverform=new FaxcoverForm();
	faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
	model.addAttribute("faxcoverform",faxcoverform);
	return "viewfaxcover";
}
@RequestMapping(value="/updatelettertopatients", method = RequestMethod.POST)

public String update_lettertopatients(HttpServletRequest request,HttpSession session,@ModelAttribute("lettertopatientsdetails")  @Valid Lettertopatients lettertopatientsdetails,BindingResult result,ModelMap model) {
	if(result.hasErrors())
	{
		LettertopatientsForm lettertopatientsform= new LettertopatientsForm();
		lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
		model.addAttribute("lettertopatientsform",lettertopatientsform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "lettertopatients";
	}

	//System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
	System.out.println(lettertopatientsdetails.getLetterid());
	lettertopatientsDAO.updatelettertopatients(lettertopatientsdetails,lettertopatientsdetails.getLetterid());
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
	model.addAttribute("lettertopatientsform",lettertopatientsform);
	
	
	return "viewlettertopatients";

}

@RequestMapping(value="/updateresponseattorney", method = RequestMethod.POST)

public String updateresponseattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("responseattorneydetail")  @Valid Responseattorney responseattorneydetail,BindingResult result,ModelMap model) {
	if(result.hasErrors())
	{
		ResponseattorneyForm responseattorneyform= new ResponseattorneyForm();
		responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
		model.addAttribute("noticeassignmentform",responseattorneyform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "responseattorney";
	}

	responseattorneyDAO.updateresponseattorney(responseattorneydetail,responseattorneydetail.getResponseid());
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
	model.addAttribute("responseattorneyform",responseattorneyform);
	return "viewresponseattorney";

}
@RequestMapping(value="/updatenoticeassignment", method = RequestMethod.POST)

public String updatenoticeassignment(HttpServletRequest request,HttpSession session,@ModelAttribute("noticeassignmentdetails")  @Valid Noticeassignment noticeassignmentdetails,BindingResult result,ModelMap model) {
	if(result.hasErrors())
	{
		NoticeassignmentForm noticeassignmentform= new NoticeassignmentForm();
		noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
		model.addAttribute("noticeassignmentform",noticeassignmentform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "noticeassignment";
	}

	//System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
	System.out.println(noticeassignmentdetails.getNoticeid());
	noticeassignmentDAO.updatenoticeassignment(noticeassignmentdetails,noticeassignmentdetails.getNoticeid());	
	NoticeassignmentForm noticeassignmentform=new NoticeassignmentForm();
	noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
	model.addAttribute("noticeassignmentform",noticeassignmentform);	
	return "viewnoticeassignment";

}

@RequestMapping(value="/updateworkschool", method = RequestMethod.POST)
public String updateworkschool(HttpServletRequest request,HttpSession session,@ModelAttribute("Workschool")  @Valid Workschool workschooldetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",letterofprotectiondetails);
	if(result.hasErrors())
	{
		WorkschoolForm workschoolform= new WorkschoolForm();
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
		model.addAttribute("workschoolform",workschoolform);
		model.addAttribute("Success","true");
		model.addAttribute("menu", "work");
		return "updateworkschool";
	}
	//System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
	workschoolDAO.updateworkschool(workschooldetails,workschooldetails.getWorkid());
	WorkschoolForm workschoolform=new WorkschoolForm();
	workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
	model.addAttribute("workschoolform",workschoolform);	
	return "viewworkschool";

}






}
