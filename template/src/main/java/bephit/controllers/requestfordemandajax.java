package bephit.controllers;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

//import bephit.dao.FormbillDAO;
//import bephit.dao.LetterofprotectionDAO;
/*import bephit.dao.LettertopatientsDAO;
 
 import bephit.dao.PatientattorneyDAO;*/
import bephit.dao.FaxcoverDAO;
import bephit.dao.LettertopatientsDAO;

import bephit.dao.NoticeassignmentDAO;
import bephit.dao.PatientDAO;
import bephit.dao.Patientattorney1DAO;
import bephit.dao.PerrychiropracticDAO;
import bephit.dao.PimedpayDAO;
import bephit.dao.RequestfordemandDAO;
import bephit.dao.ResponseattorneyDAO;
import bephit.dao.ReturntoschoolDAO;
import bephit.dao.SignupDAO;
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

import bephit.model.Dcfeeslip;
import bephit.model.Noticeassignment;
import bephit.model.Patientattorney;

import bephit.model.Pimedpay;
import bephit.model.Responseattorney;
import bephit.model.Returntoschool;

import bephit.model.Workschool;

@Controller
@SessionAttributes({"peri","patient","update","xray","form","medpay","letter","response","fax","work","letterto","requestfor","notice"})

public class requestfordemandajax {

	@Autowired
	SignupDAO signupDAO;
	
	@Autowired
	PatientDAO patientDAO;
	
	@Autowired
	NoticeassignmentDAO noticeassignmentDAO;
	
	@Autowired
	PerrychiropracticDAO perrychiropracticDAO;

	

	
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
	WorkschoolDAO workschoolDAO;

	@Autowired
	ReturntoschoolDAO returntoschoolDAO;

	
			
	@RequestMapping(value="/requestdemand_ajax",method=RequestMethod.POST)
	public @ResponseBody String requestfordemand(@ModelAttribute(value="username")Requestfordemand requestfordemand, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+requestfordemand.getUsername());
		if(signupDAO.getPatientusername(requestfordemand.getUsername()).size()==0)
		{
			return "error";
		}		
		if(requestfordemandDAO.getusernamerequestfordemand(requestfordemand.getUsername()).size()>0)
		{
			
			System.out.println("pname"+patientname);
			
			model.addAttribute("edit","1");
			return "edit"+patientname+"|"+requestfordemand.getUsername();
		}
	
		returnText=patientname+"|"+requestfordemand.getUsername();
		return returnText;
		
}



	
	@RequestMapping(value = "/viewrequestfordemand", method = RequestMethod.GET)
	public String viewrequestfordemand(HttpSession session, ModelMap model) {
		model.addAttribute("menu","fax");
		RequestfordemandForm requestfordemandform = new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform", requestfordemandform);
		return "viewrequestfordemand";
	}
	@RequestMapping(value = "/editrequestdemanddetails", method = RequestMethod.GET)
	public String editrequestfordemand(@RequestParam("username") String username, HttpSession session,ModelMap model) {
		RequestfordemandForm requestfordemandform = new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand(username));
		model.addAttribute("requestfordemandform", requestfordemandform);
		return "editrequestfordemand";
	}
	
	@RequestMapping(value="/deleterequestfordemand", method = RequestMethod.GET)
	public String deleterequestfordemand(@RequestParam("requestid")String requestid, HttpSession session,ModelMap model) {		
		requestfordemandDAO.deleterequestfordemand(requestid);		
		RequestfordemandForm requestfordemandform=new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform",requestfordemandform);		
		return "requestfordemand";
	}
	@RequestMapping(value = "/requestfordemand", method = RequestMethod.GET)
	public String requestfordemand(HttpSession session, ModelMap model) {
		session.removeAttribute("requestfor");
		model.addAttribute("menu","fax");
		return "requestfordemand";
	}
	@RequestMapping(value = "/updaterequestfordemand", method = RequestMethod.POST)
	public String update_requestfordemand(HttpServletRequest request,HttpSession session,@ModelAttribute("Requestfordemand") @Valid Requestfordemand requestfordemanddetails,BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		if (result.hasErrors()) {
		RequestfordemandForm requestfordemandform = new RequestfordemandForm();
			requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
			model.addAttribute("requestfordemandform", requestfordemandform);

			return "requestfordemand";

		}
					
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		requestfordemandDAO.updaterequestfordemand(requestfordemanddetails,requestfordemanddetails.getRequestid());
		RequestfordemandForm requestfordemandform=new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform",requestfordemandform);
		model.addAttribute("success","true");
		
		return "requestfordemand";

	}
	
	
		


	


}
