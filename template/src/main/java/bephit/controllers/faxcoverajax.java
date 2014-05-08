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

public class faxcoverajax {

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

	
			
	@RequestMapping(value="/faxcover_ajax",method=RequestMethod.POST)
	public @ResponseBody String faxcover(@ModelAttribute(value="username")Faxcover faxcover, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+faxcover.getUsername());
		if(signupDAO.getPatientusername(faxcover.getUsername()).size()==0)
		{
			return "error";
		}		
	if(faxcoverDAO.getusernamefaxcover(faxcover.getUsername()).size()>0)
	{
		//patientname=faxcoverDAO.getusernamefaxcover(faxcover.getUsername()).get(0).getPatientname();
		System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+faxcover.getUsername();
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
				returnText=patientname+"|"+faxcover.getUsername();
				return returnText;
				
	}
	


	
	@RequestMapping(value = "/updatefaxcover", method = RequestMethod.POST)
	public String update_faxcover(HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("editfaxcoverdetails") @Valid Faxcover faxcoverdetails,
			BindingResult result, ModelMap model) {
		model.addAttribute("menu", "fax");
		if (result.hasErrors()) {
			FaxcoverForm faxcoverform = new FaxcoverForm();
			faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
			model.addAttribute("faxcoverform", faxcoverform);
			model.addAttribute("success", "true");
			model.addAttribute("menu", "fax");
			return "faxcover";
		}

		// System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
		faxcoverDAO.updatefaxcover(faxcoverdetails, faxcoverdetails.getFaxid());
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
		model.addAttribute("faxcoverform", faxcoverform);
		model.addAttribute("success", "true");
		model.addAttribute("menu", "fax");
		return "faxcover";
	}
	
	@RequestMapping(value = "/viewfaxcover", method = RequestMethod.GET)
	public String viewfaxcover(HttpSession session, ModelMap model) {
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
		model.addAttribute("faxcoverform", faxcoverform);
		model.addAttribute("menu","fax");
		return "faxcover";
	}
	@RequestMapping(value="/faxcover", method = RequestMethod.GET)
	public String faxcover(HttpSession session,ModelMap model) {
		session.removeAttribute("fax");
		model.addAttribute("menu","fax");
		return "faxcover";
	}
	@RequestMapping(value = "/faxcoverlist", method = RequestMethod.GET)
	public String faxlist(HttpSession session,
			@RequestParam("faxid") String faxid, ModelMap model) {
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover(faxid));
		model.addAttribute("faxcoverform", faxcoverform);
		return "viewfaxlist";
	}
	@RequestMapping(value = "/editfaxcoverdetails", method = RequestMethod.GET)
	public String editfaxcover(@RequestParam("username") String username,	HttpSession session, ModelMap model) {
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getusernamefaxcover(username));
		model.addAttribute("faxcoverform", faxcoverform);
		model.addAttribute("menu", "fax");
        return "editfaxcover";

	}
	@RequestMapping(value="/deletefaxcover", method = RequestMethod.GET)
	public String deletefaxcover(@RequestParam("faxid")String faxid, HttpSession session,ModelMap model) {
		model.addAttribute("menu","fax");
		model.addAttribute("success","true");
	faxcoverDAO.deletefaxcover(faxid);
	FaxcoverForm faxcoverform=new FaxcoverForm();
	faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
	model.addAttribute("faxcoverform",faxcoverform);
	model.addAttribute("success", "true");
	return "faxcover";
		
	}

	
		


	


}
