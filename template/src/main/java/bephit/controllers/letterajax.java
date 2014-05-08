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
import bephit.model.Perrychiropractic;
import bephit.model.Pimedpay;
import bephit.model.Responseattorney;
import bephit.model.Returntoschool;
import bephit.model.Updateletter;
import bephit.model.Workschool;

@Controller
@SessionAttributes({"peri","patient","update","xray","form","medpay","letter","response","fax","work","letterto","requestfor","notice"})

public class letterajax {

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

	
			
	@RequestMapping(value="/lettertopatients_ajax",method=RequestMethod.POST)
	public @ResponseBody String lettertopatients(@ModelAttribute(value="username")Lettertopatients lettertopatients, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+lettertopatients.getUsername());
		if(signupDAO.getPatientusername(lettertopatients.getUsername()).size()==0)
		{
			return "error";
		}		
	if(lettertopatientsDAO.getusernamelettertopatients(lettertopatients.getUsername()).size()>0)
	{
		//patientname=faxcoverDAO.getusernamefaxcover(faxcover.getUsername()).get(0).getPatientname();
		System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+lettertopatients.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	/*if(patientDAO.getUsername(faxcover.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(faxcover.getUsername()).get(0).getName();
	}	
	*/	
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=patientname+"|"+lettertopatients.getUsername();
				return returnText;
				
	}
	


	
	@RequestMapping(value="/editlettertopatients", method = RequestMethod.GET)
	public String editlettertopatients(@RequestParam("username")String username, HttpSession session,ModelMap model) {		
		LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
		lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getusernamelettertopatients(username));
		model.addAttribute("lettertopatientsform",lettertopatientsform);
		model.addAttribute("menu","fax");	
		return "editlettertopatients";
	}
	@RequestMapping(value="/deletelettertopatients", method = RequestMethod.GET)
	public String deletelettertopatients(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
		model.addAttribute("success","true");
		model.addAttribute("menu","fax");
		lettertopatientsDAO.deletelettertopatients(letterid);
		LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
		lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
		model.addAttribute("lettertopatientsform",lettertopatientsform);
		model.addAttribute("success", "true");
		return "lettertopatients";	
	}
	
	@RequestMapping(value = "/updatelettertopatients", method = RequestMethod.POST)
	public String update_lettertopatients(
			HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("lettertopatientsdetails") @Valid Lettertopatients lettertopatientsdetails,
			BindingResult result, ModelMap model) {
		model.addAttribute("menu", "fax");
		if (result.hasErrors()) {
			LettertopatientsForm lettertopatientsform = new LettertopatientsForm();
			lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO
					.getlettertopatients());
			model.addAttribute("lettertopatientsform", lettertopatientsform);
			model.addAttribute("success", "true");
			model.addAttribute("menu", "fax");
			return "lettertopatients";
		}

		// System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
		System.out.println(lettertopatientsdetails.getLetterid());
		lettertopatientsDAO.updatelettertopatients(lettertopatientsdetails,
				lettertopatientsdetails.getLetterid());
		LettertopatientsForm lettertopatientsform = new LettertopatientsForm();
		lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO
				.getlettertopatients());
		model.addAttribute("lettertopatientsform", lettertopatientsform);
		model.addAttribute("success", "true");
		model.addAttribute("menu", "fax"); 

		return "lettertopatients";

	}

	
	
		


	


}
