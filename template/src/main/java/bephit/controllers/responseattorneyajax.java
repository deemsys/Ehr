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

public class responseattorneyajax {

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

	
			
	@RequestMapping(value="/responseattorney_ajax",method=RequestMethod.POST)
	public @ResponseBody String responseattorney(@ModelAttribute(value="username")Responseattorney responseattorney, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+responseattorney.getUsername());
		if(signupDAO.getPatientusername(responseattorney.getUsername()).size()==0)
		{
			return "error";
		}		
	if(responseattorneyDAO.getusernameresponseattorney(responseattorney.getUsername()).size()>0)
	{
		//patientname=faxcoverDAO.getusernamefaxcover(faxcover.getUsername()).get(0).getPatientname();
		System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+responseattorney.getUsername();
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
				returnText=patientname+"|"+responseattorney.getUsername();
				return returnText;
				
	}
	
	@RequestMapping(value="/responseattorney", method = RequestMethod.GET)
	public String responseattorney(HttpSession session,ModelMap model) {	
		session.removeAttribute("response");
		model.addAttribute("menu","responseattorney");
		model.addAttribute("menu","fax");
		return "responseattorney";
	}
	
	@RequestMapping(value="/viewresponseattorney", method = RequestMethod.GET)
	public String viewresponseattorney(HttpSession session,ModelMap model) {		
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
		model.addAttribute("responseattorneyform",responseattorneyform);
		model.addAttribute("menu","fax");
		return "viewresponseattorney";
	}


	
	
	@RequestMapping(value="/editresponseattorney", method = RequestMethod.GET)
	public String editresponseattorney(@RequestParam("username")String username, HttpSession session,ModelMap model) {		
		model.addAttribute("menu","fax");
		ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
		responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney(username));
				model.addAttribute("responseattorneyform",responseattorneyform);
				session.removeAttribute("response");
				return "editresponseattorney";
	}
	
	@RequestMapping(value="/deleteresponseattorney", method = RequestMethod.GET)
	public String deleteresponseattorney(@RequestParam("responseid")String responseid, HttpSession session,ModelMap model) {		
		model.addAttribute("menu","fax");
		model.addAttribute("success","true");
		responseattorneyDAO.deleteresponseattorney(responseid);
		ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
		responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
				model.addAttribute("responseattorneyform",responseattorneyform);
				model.addAttribute("success", "true");
				session.removeAttribute("response");
				return "responseattorney";	
	}
	
	@RequestMapping(value = "/updateresponseattorney", method = RequestMethod.POST)
	public String updateresponseattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("responseattorneydetail") @Valid Responseattorney responseattorneydetail,BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			ResponseattorneyForm responseattorneyform = new ResponseattorneyForm();
			responseattorneyform.setResponseattorneydetail(responseattorneyDAO
					.getresponseattorney());
			model.addAttribute("responseattorneyform", responseattorneyform);
			model.addAttribute("success", "true");
			model.addAttribute("menu", "fax");
			session.removeAttribute("response");
			return "responseattorney";
		}


		responseattorneyDAO.updateresponseattorney(responseattorneydetail,
				responseattorneydetail.getResponseid());
		ResponseattorneyForm responseattorneyform = new ResponseattorneyForm();
		responseattorneyform.setResponseattorneydetail(responseattorneyDAO
				.getresponseattorney());
		model.addAttribute("responseattorneyform", responseattorneyform);
		model.addAttribute("success", "true");
		model.addAttribute("menu","fax");
		session.removeAttribute("response");
		return "responseattorney";

}



	


}
