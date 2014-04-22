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

import bephit.dao.FormbillDAO;
import bephit.dao.LetterofprotectionDAO;
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

public class AdminController {

	@Autowired
	SignupDAO signupDAO;
	
	@Autowired
	PatientDAO patientDAO;
	
	@Autowired
	NoticeassignmentDAO noticeassignmentDAO;
	
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
	WorkschoolDAO workschoolDAO;

	@Autowired
	ReturntoschoolDAO returntoschoolDAO;


	@RequestMapping(value="/patientattorney_ajax",method=RequestMethod.POST)
	public @ResponseBody String patientattorney(@ModelAttribute(value="username")Patientattorney patientattorney, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+patientattorney.getUsername());
		if(signupDAO.getPatientusername(patientattorney.getUsername()).size()==0)
		{
			return "error";
		}		
	if(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()).size()>0)
	{
		patientname=patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()).get(0).getPatientname();
		System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+patientattorney.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	if(patientDAO.getUsername(patientattorney.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(patientattorney.getUsername()).get(0).getName();
	}	
		
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=patientname+"|"+patientattorney.getUsername();
				return returnText;
				
	}
	@RequestMapping(value = "/editpatientattorneydetails", method = RequestMethod.GET)
	public String editpatientattorneydetails(@RequestParam("username") String username, HttpSession session,ModelMap model) {
		PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(username));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";

	}
	
	
	@RequestMapping(value = "/viewperrychiropractic", method = RequestMethod.GET)
	public String viewperrychiropractic(HttpSession session, ModelMap model) {
		PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO
				.getperrychiropractic());
		model.addAttribute("perrychiropracticform", perrychiropracticform);

		model.addAttribute("menu", "perry");
		return "viewperrychiropractic";
	}
	
	
	
	@RequestMapping(value = "/viewnoticeassignment", method = RequestMethod.GET)
	public String viewnoticeassignment(HttpSession session, ModelMap model) {
		NoticeassignmentForm noticeassignmentform = new NoticeassignmentForm();
		noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
		model.addAttribute("noticeassignmentform", noticeassignmentform);
		model.addAttribute("Success", "true");
		//model.addAttribute("menu", "work");
		return "viewnoticeassignment";
	}
	
	
	
	
	
	
	

	@RequestMapping(value = "/viewupdateletter", method = RequestMethod.GET)
	public String viewupdateletter(HttpSession session, ModelMap model) {
		model.addAttribute("menu", "perry");
		UpdateletterForm updateletterform = new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform", updateletterform);
		//model.addAttribute("menu", "perry");

		return "viewupdateletter";
	}

	@RequestMapping(value = "/viewrequestfordemand", method = RequestMethod.GET)
	public String viewrequestfordemand(HttpSession session, ModelMap model) {
		model.addAttribute("menu","fax");
		RequestfordemandForm requestfordemandform = new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform", requestfordemandform);
		return "viewrequestfordemand";
	}

	@RequestMapping(value = "/viewxray", method = RequestMethod.GET)
	public String viewxray(HttpSession session, ModelMap model) {
		XrayForm xrayform = new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform", xrayform);
		model.addAttribute("menu", "xray");

		return "viewxray";

	}

	@RequestMapping(value = "/viewpimedpay", method = RequestMethod.GET)
	public String viewpimedpay(HttpSession session, ModelMap model) {
		PimedpayForm pimedpayform = new PimedpayForm();
		pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
        model.addAttribute("pimedpayform",pimedpayform);
		model.addAttribute("menu","xray");
		return "viewpimedpay";
	}

	@RequestMapping(value = "/viewpatientattorney", method = RequestMethod.GET)
	public String viewpatientattorney(HttpSession session, ModelMap model) {
		PatientattorneyForm patientattorneyform = new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform", patientattorneyform);
		model.addAttribute("menu", "perry");
		return "viewpatientattorney";
	}

	@RequestMapping(value = "/viewformbill", method = RequestMethod.GET)
	public String viewformbill(HttpSession session, ModelMap model) {
		FormbillForm formbillForm = new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform", formbillForm);
		model.addAttribute("menu", "xray");
		return "viewformbill";
	}

	@RequestMapping(value = "/editperrychiropractic", method = RequestMethod.GET)
	public String editperrychiropractic(@RequestParam("perryid") String perryid, HttpSession session,ModelMap model) {
		PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic(perryid));
		model.addAttribute("perrychiropracticform", perrychiropracticform);

		model.addAttribute("menu", "perry");
		return "editperrychiropractic";

	}
	
	@RequestMapping(value = "/editnoticeassignment", method = RequestMethod.GET)
	public String editnoticeassignment(@RequestParam("noticeid") String noticeid, HttpSession session,ModelMap model) {
		//noticeassignmentDAO.setnoticeassignment(noticeassignmentdetails);
		NoticeassignmentForm noticeassignmentform = new NoticeassignmentForm();
		noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment(noticeid));
		model.addAttribute("noticeassignmentform", noticeassignmentform);
		model.addAttribute("Success", "true");
		model.addAttribute("menu", "work");
		return "editnoticeassignment";

	}
	
	
	

	
	@RequestMapping(value="/perrychiropracticlist", method = RequestMethod.GET)
	public String perrychiropracticlist(HttpSession session,@RequestParam("perryid") String perryid,ModelMap model) {		
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic(perryid));
				model.addAttribute("perrychiropracticform",perrychiropracticform);
				return "perrychiropracticlist";
	}
	
	
	
				
	@RequestMapping(value = "/editreturntoschool", method = RequestMethod.GET)
	public String editreturntoschool(@RequestParam("schoolid") String schoolid,	HttpSession session, ModelMap model) {
		ReturntoschoolForm returntoschoolform = new ReturntoschoolForm();
		returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool(schoolid));
		model.addAttribute("returntoschoolform", returntoschoolform);
		return "editreturntoschool";

	}

	@RequestMapping(value = "/editupdateletter", method = RequestMethod.GET)
	public String editupdateletter(@RequestParam("updateid") String updateid,HttpSession session, ModelMap model) {
		UpdateletterForm updateletterform = new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter(updateid));
		model.addAttribute("updateletterform", updateletterform);
		//model.addAttribute("menu", "perry");
		return "editupdateletter";

	}

	@RequestMapping(value = "/editrequestfordemand", method = RequestMethod.GET)
	public String editrequestfordemand(@RequestParam("requestid") String requestid, HttpSession session,ModelMap model) {
		RequestfordemandForm requestfordemandform = new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand(requestid));
		model.addAttribute("requestfordemandform", requestfordemandform);
		return "editrequestfordemand";
	}

	@RequestMapping(value = "/editxray", method = RequestMethod.GET)
	public String editxray(@RequestParam("xrayid") String xrayid,HttpSession session, ModelMap model) {
		XrayForm xrayForm = new XrayForm();
		xrayForm.setxraydetails(xrayDAO.getxray(xrayid));
		model.addAttribute("xrayform", xrayForm);
		model.addAttribute("menu", "xray");
		return "editxray";
	}

	@RequestMapping(value = "/editpimedpay", method = RequestMethod.GET)
	public String editpimedpay(@RequestParam("medpayid") String medpayid,HttpSession session, ModelMap model) {
		PimedpayForm pimedpayForm = new PimedpayForm();
		pimedpayForm.setPimedpaydetails(pimedpayDAO.getpimedpay(medpayid));
		model.addAttribute("pimedpayform",pimedpayForm);
		//model.addAttribute("menu","xray");
		return "editpimedpay";

	}

	@RequestMapping(value = "/editpatientattorney", method = RequestMethod.GET)
	public String editpatientattorney(
			@RequestParam("patientid") String patientid, HttpSession session,ModelMap model) {
		PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getpatientattorney(patientid));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";

	}
	
	

	@RequestMapping(value = "/editformbill", method = RequestMethod.GET)
	public String editformbill(@RequestParam("formid") String formid,HttpSession session, ModelMap model) {
		FormbillForm formbillForm = new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill(formid));
		model.addAttribute("formbillform", formbillForm);
		model.addAttribute("menu", "xray");
		return "editformbill";
	}


			
	
	@RequestMapping(value="/deleteperrychiropractic", method = RequestMethod.GET)
	public String deleteperrychiropractic(@RequestParam("perryid")String perryid, HttpSession session,ModelMap model) {		
	
		model.addAttribute("success","true");
		perrychiropracticDAO.deleteperrychiropractic(perryid);		
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);		
		//model.addAttribute("menu","xray");
		return "viewperrychiropractic";
	}

	@RequestMapping(value = "/deletereturntoschool", method = RequestMethod.GET)
	public String deletereturntoschool(
			@RequestParam("schoolid") String schoolid, HttpSession session,	ModelMap model) {
		returntoschoolDAO.deletereturntoschool(schoolid);
        ReturntoschoolForm returntoschoolform = new ReturntoschoolForm();
		returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
		model.addAttribute("returntoschoolform", returntoschoolform);
		model.addAttribute("success","true");
		return "viewreturntoschool";
	}

	@RequestMapping(value = "/deletepimedpay", method = RequestMethod.GET)
	public String deletepimedpay(@RequestParam("medpayid") String medpayid,	HttpSession session, ModelMap model) {
		pimedpayDAO.deletepimedpay(medpayid);
		PimedpayForm pimedpayform = new PimedpayForm();
		model.addAttribute("success","true");
	 	pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
	 	model.addAttribute("pimedpayform", pimedpayform);
		//model.addAttribute("menu","xray");	
		model.addAttribute("success","true");
		return "viewpimedpay";
	}

	@RequestMapping(value = "/deleteupdateletter", method = RequestMethod.GET)
	public String deleteupdateletter(@RequestParam("updateid") String updateid,HttpSession session, ModelMap model) {
		model.addAttribute("menu", "perry");
		updateletterDAO.deleteupdateletter(updateid);
		UpdateletterForm updateletterform = new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform", updateletterform);
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
		model.addAttribute("success","true");
		xrayDAO.deletexray(xrayid);		
		XrayForm xrayForm=new XrayForm();
		xrayForm.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayForm", xrayForm);
		//model.addAttribute("menu", "xray");
		return "viewxray";
	}


	@RequestMapping(value="/deleteformbill", method = RequestMethod.GET)
	public String deleteformbill(@RequestParam("formid")String formid, HttpSession session,ModelMap model) {		
		model.addAttribute("success","true");
		formbillDAO.deleteformbill(formid);		
		FormbillForm formbillForm=new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill(formid));
		model.addAttribute("formbillform", formbillForm);
		model.addAttribute("menu", "xray");
		return "viewformbill";
	}

	@RequestMapping(value = "/perrychiropractic", method = RequestMethod.GET)
	public String perrychiropractic(HttpSession session, ModelMap model) {
		session.removeAttribute("peri");
		model.addAttribute("menu", "perry");
		return "perrychiropractic";
	}
	
	@RequestMapping(value = "/noticeassignment", method = RequestMethod.GET)
	public String noticeassignment(HttpSession session, ModelMap model) {
		session.removeAttribute("notice");
			return "noticeassignment";
	}
	
	

	@RequestMapping(value = "/letterofprotection", method = RequestMethod.GET)
	public String letterofprotection(HttpSession session, ModelMap model) {
		session.removeAttribute("letter");
		model.addAttribute("menu", "letter");
	    model.addAttribute("menu","xray");
		return "letterofprotection";
	}

	@RequestMapping(value = "/patientattorney", method = RequestMethod.GET)
	public String patientattorney(HttpSession session, ModelMap model) {
        session.removeAttribute("patient");
        model.addAttribute("menu", "perry");
       
		return "patientattorney";
	}

	//@RequestMapping(value = "/returntoschool", method = RequestMethod.GET)
	//public String returntoschool(HttpSession session, ModelMap model) {

	//	return "returntoschool";
	//}

	@RequestMapping(value = "/requestfordemand", method = RequestMethod.GET)
	public String requestfordemand(HttpSession session, ModelMap model) {
		session.removeAttribute("requestfor");
		model.addAttribute("menu","fax");
		return "requestfordemand";
	}

	@RequestMapping(value = "/pimedpay", method = RequestMethod.GET)
	public String pimedpay(HttpSession session, ModelMap model) {
    session.removeAttribute("medpay");
    model.addAttribute("menu", "xray");
		return "pimedpay";
	}


			
		@RequestMapping(value="/returntoschool", method = RequestMethod.GET)
		public String returntoschool(HttpSession session,ModelMap model) {		
			
			return "returntoschool";
		}
	 
		
			
			
	@RequestMapping(value="/xray", method = RequestMethod.GET)
	public String xray(HttpSession session,ModelMap model) {		
		model.addAttribute("menu","xray");
         session.removeAttribute("xray");
		return "xray";
	}


	@RequestMapping(value = "/updateperrychiropractic", method = RequestMethod.POST)
	public String update_perrychiropractic(HttpServletRequest request,HttpSession session,@ModelAttribute("Perrychiropractic")  @Valid Perrychiropractic perrychiropracticdetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		model.addAttribute("menu","perry");
		if(result.hasErrors())
		{

			PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
			perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
			model.addAttribute("perrychiropracticform", perrychiropracticform);
			model.addAttribute("Success", "true");
			//model.addAttribute("menu", "notes");
			return "perrychiropractic";

		}

			
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		perrychiropracticDAO.updateperrychiropractic(perrychiropracticdetails,perrychiropracticdetails.getPerryid());
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);
		model.addAttribute("success","true");
		
		return "viewperrychiropractic";

	}

	

	@RequestMapping(value = "/updatenoticeassignment", method = RequestMethod.POST)
	public String update_noticeassignment(HttpServletRequest request,HttpSession session,@ModelAttribute("Noticeassignment")  @Valid Noticeassignment noticeassignmentdetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		//model.addAttribute("menu","perry");
		if(result.hasErrors())
		{
NoticeassignmentForm noticeassignmentform = new NoticeassignmentForm();
			noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
			model.addAttribute("noticeassignmentform", noticeassignmentform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "work");
			return "noticeassignment";

		}

			
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		noticeassignmentDAO.updatenoticeassignment(noticeassignmentdetails,noticeassignmentdetails.getNoticeid());
		NoticeassignmentForm noticeassignmentform = new NoticeassignmentForm();
		noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
		model.addAttribute("noticeassignmentform", noticeassignmentform);
		model.addAttribute("success","true");
		
		return "viewnoticeassignment";

	}

	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/updatereturntoschool", method = RequestMethod.POST)
	public String update_returntoschool(
			HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Returntoschool") @Valid Returntoschool returntoschooldetails,
			BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		if (result.hasErrors()) {
			ReturntoschoolForm returntoschoolform = new ReturntoschoolForm();
			returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
			model.addAttribute("returntoschoolform", returntoschoolform);

			return "returntoschool";
		}
		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		returntoschoolDAO.updatereturntoschool(returntoschooldetails,
				returntoschooldetails.getSchoolid());
		ReturntoschoolForm returntoschoolform = new ReturntoschoolForm();
		returntoschoolform.setReturntoschooldetails(returntoschoolDAO
				.getreturntoschool());
		model.addAttribute("returntoschoolform", returntoschoolform);

		return "viewreturntoschool";

	}

	@RequestMapping(value = "/updatepimedpay", method = RequestMethod.POST)
	public String update_pimedpay(HttpServletRequest request,HttpSession session,@ModelAttribute("Pimedpay") @Valid Pimedpay pimedpaydetails,BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		if (result.hasErrors()) {
			PimedpayForm pimedpayform = new PimedpayForm();
			pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
			model.addAttribute("pimedpayform", pimedpayform);
			return "pimedpay";
		}

		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		pimedpayDAO.updatepimedpay(pimedpaydetails,pimedpaydetails.getMedpayid());
		PimedpayForm pimedpayform = new PimedpayForm();
		pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
		model.addAttribute("pimedpayform",pimedpayform);
		return "viewpimedpay";

	}

	@RequestMapping(value = "/updateupdateletter", method = RequestMethod.POST)
	public String update_updateletter(HttpServletRequest request,HttpSession session,@ModelAttribute("Updateletter") @Valid Updateletter updateletterdetails,BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		model.addAttribute("menu", "perry");
		if (result.hasErrors()) {
			UpdateletterForm updateletterform = new UpdateletterForm();
			updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
			model.addAttribute("updateletterform", updateletterform);
			return "updateletter";

		}

		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		updateletterDAO.updateupdateletter(updateletterdetails,updateletterdetails.getUpdateid());
		UpdateletterForm updateletterform=new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("success","true");
		//model.addAttribute("menu","perry");
		model.addAttribute("updateletterform",updateletterform);
		return "viewupdateletter";

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
		
		return "viewrequestfordemand";

	}

	@RequestMapping(value = "/updatexray", method = RequestMethod.POST)
	public String update_xray(HttpServletRequest request, HttpSession session,@ModelAttribute("xraydetails") @Valid Xray xraydetails,BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		if (result.hasErrors()) {
			model.addAttribute("menu", "initial");
			return "xray";
		}

		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		xrayDAO.updatexray(xraydetails,xraydetails.getXrayid());
		XrayForm xrayform=new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform", xrayform);
		
		return "viewxray";

	}

	@RequestMapping(value = "/updatepatientattorney", method = RequestMethod.POST)
	public String update_patientattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("Patientattorney") @Valid Patientattorney patientattorneydetails,BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		model.addAttribute("menu", "perry");
		if (result.hasErrors()) {
			PatientattorneyForm patientattorneyform = new PatientattorneyForm();
			patientattorneyform.setPatientattorneydetails(patientattorneyDAO
					.getpatientattorney());
			model.addAttribute("patientattorneyform", patientattorneyform);

			return "patientattorney";
		}

		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		patientattorneyDAO.updatepatientattorney(patientattorneydetails,patientattorneydetails.getPatientid());
		PatientattorneyForm patientattorneyform=new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform",patientattorneyform);
		model.addAttribute("success","true");
		return "patientattorney";

	}


	@RequestMapping(value = "/updateformbill", method = RequestMethod.POST)
	public String update_formbill(HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Formbill") @Valid Formbill formbilldetails,
			BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		model.addAttribute("menu", "xray");
		if (result.hasErrors()) {

	
	
			FormbillForm formbillform = new FormbillForm();
			formbillform.setFormbilldetails(formbillDAO.getformbill());
			model.addAttribute("formbillform", formbillform);

			
		

			return "formbill";
		}

		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		formbillDAO.updateformbill(formbilldetails, formbilldetails.getFormid());
		FormbillForm formbillForm = new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform",formbillForm);
		model.addAttribute("success","true");		
 		return "viewformbill";

	}


	
		
	@RequestMapping(value="/insertperrychiropractic", method = RequestMethod.POST)
	public String insert_perrychiropractic(HttpServletRequest request,HttpSession session,@ModelAttribute("Perrychiropractic")  @Valid Perrychiropractic perrychiropracticdetails,BindingResult result,ModelMap model) {
		session.setAttribute("peri",perrychiropracticdetails);
		model.addAttribute("menu","peri");
		String username=request.getParameter("username");
		if(result.hasErrors())
		{
			model.addAttribute("username",username);
			model.addAttribute("menu", "perry");
			PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
			perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
			model.addAttribute("perrychiropracticform", perrychiropracticform);

			return "perrychiropractic";
		}
		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		perrychiropracticDAO.setperrychiropractic(perrychiropracticdetails,username);
		PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform", perrychiropracticform);
		model.addAttribute("success","true");
		return "perrychiropracticsearch";

	}


	

	
	
	@RequestMapping(value="/insertfaxcover", method = RequestMethod.POST)
	public String insert_faxcover(HttpServletRequest request,HttpSession session,@ModelAttribute("Faxcover")  @Valid Faxcover faxcoverdetails,BindingResult result,ModelMap model) {
		session.setAttribute("fax",faxcoverdetails);
		model.addAttribute("menu","fax");
		if(result.hasErrors())
		{
			model.addAttribute("menu", "fax");
			
			FaxcoverForm faxcoverform = new FaxcoverForm();
			faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
			model.addAttribute("faxcoverform", faxcoverform);
			return "faxcover";
			
		}
		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		faxcoverDAO.setfaxcover(faxcoverdetails);
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
		model.addAttribute("faxcoverform", faxcoverform);
		model.addAttribute("success","true");
		return "viewfaxcover";

	}

	
	
	
	
	
	
	@RequestMapping(value="/insertresponseattorney", method = RequestMethod.POST)
	public String insert_responseattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("Responseattorney")  @Valid Responseattorney responseattorneydetail,BindingResult result,ModelMap model) {
		session.setAttribute("response",responseattorneydetail);
		model.addAttribute("menu","response");
		if(result.hasErrors())
		{
			model.addAttribute("menu", "response");
			ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
			responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
				model.addAttribute("responseattorneyform",responseattorneyform);
				return "responseattorney";
		}
		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		responseattorneyDAO.setresponseattorney(responseattorneydetail);
		ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
		responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
			model.addAttribute("responseattorneyform",responseattorneyform);
			return "viewresponseattorney";

	}
	
	
	
	
	
	@RequestMapping(value="/insertreturntoschool", method = RequestMethod.POST)
	public String insert_returntoschool(HttpServletRequest request,HttpSession session,@ModelAttribute("returntoschool")  @Valid Returntoschool returntoschooldetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{

			ReturntoschoolForm returntoschoolform = new ReturntoschoolForm();
			returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());

			model.addAttribute("returntoschoolform", returntoschoolform);			
		    return "returntoschool";

		}




	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	returntoschoolDAO.setreturntoschool(returntoschooldetails);
	ReturntoschoolForm returntoschoolform=new ReturntoschoolForm();
	returntoschoolform.setReturntoschooldetails(returntoschoolDAO.getreturntoschool());
	model.addAttribute("returntoschoolform",returntoschoolform);
	model.addAttribute("success","true");
	return "viewreturntoschool";
	 

	}


	@RequestMapping(value = "/insertrequestfordemand", method = RequestMethod.POST)
	public String insert_requestfordemand(
			HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Requestfordemand") @Valid Requestfordemand requestfordemanddetails,
			BindingResult result, ModelMap model) {
		 session.setAttribute("requestfor",requestfordemanddetails);
		if (result.hasErrors()) {
		RequestfordemandForm requestfordemandform = new RequestfordemandForm();
			requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());

			model.addAttribute("requestfordemandform", requestfordemandform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "requestfor");
            System.out.println("error");
			return "requestfordemand";
		}

		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		requestfordemandDAO.setrequestfordemand(requestfordemanddetails);
		RequestfordemandForm requestfordemandform = new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform", requestfordemandform);
		model.addAttribute("success","true");
		return "viewrequestfordemand";

	}

	@RequestMapping(value = "/insertxray", method = RequestMethod.POST)
	public String insert_xray(HttpServletRequest request, HttpSession session,
			@ModelAttribute("Xray") @Valid Xray xraydetails,
			BindingResult result, ModelMap model) {
		 session.setAttribute("xray",xraydetails);
		if (result.hasErrors()) {
			XrayForm xrayform = new XrayForm();
			xrayform.setxraydetails(xrayDAO.getxray());
			model.addAttribute("xrayform", xrayform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "xray");
						

			return "xray";
		}

		xrayDAO.setxray(xraydetails);
		XrayForm xrayform = new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform", xrayform);
		return "viewxray";

	}

	@RequestMapping(value = "/insertpimedpay", method = RequestMethod.POST)
	public String insert_pimedpay(HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Pimedpay") @Valid Pimedpay pimedpaydetails,
			BindingResult result, ModelMap model) {
		 session.setAttribute("medpay",pimedpaydetails);
		if (result.hasErrors()) {
			System.out.println("yes");
			PimedpayForm pimedpayform = new PimedpayForm();
			pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
			model.addAttribute("pimedpayform", pimedpayform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "medpay");
			return "pimedpay";
		}

		pimedpayDAO.setpimedpay(pimedpaydetails);
		PimedpayForm pimedpayform = new PimedpayForm();
		pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
		model.addAttribute("pimedpayform", pimedpayform);
		model.addAttribute("success","true");
		model.addAttribute("menu","xray");
		return "viewpimedpay";

	}

	@RequestMapping(value = "/insertpatientattorney", method = RequestMethod.POST)
	public String insert_patientattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("Patientattorney") @Valid Patientattorney patientattorneydetails,
			BindingResult result, ModelMap model) {
		String username=request.getParameter("user");
		System.out.println("username"+username+"user"+request.getParameter("username"));
		model.addAttribute("username",username);
		session.setAttribute("patient",patientattorneydetails);
		model.addAttribute("menu", "perry");
		if (result.hasErrors()) {
			PatientattorneyForm patientattorneyform = new PatientattorneyForm();
			patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
			model.addAttribute("patientattorneyform", patientattorneyform);
			model.addAttribute("Success", "true");
		

			return "patientattorney";
		}

		/*patientattorneyDAO.setpatientattorney(patientattorneydetails,username);
		PatientattorneyForm patientattorneyform = new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform", patientattorneyform);
		model.addAttribute("success","true");*/
		
		return "patientattorney";

	}


	@RequestMapping(value = "/insertupdateletter", method = RequestMethod.POST)
	public String insert_updateletter(
			HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Updateletter") @Valid Updateletter updateletterdetails,
			BindingResult result, ModelMap model) {
		 session.setAttribute("update",updateletterdetails);
		 model.addAttribute("menu", "perry");
		if(result.hasErrors())
		{

			UpdateletterForm updateletterform = new UpdateletterForm();
			updateletterform.setUpdateletterdetails(updateletterDAO	.getupdateletter());
			model.addAttribute("menu", "update");
			model.addAttribute("updateletterform","updateletterform");

			return "updateletter";
		}

		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		updateletterDAO.setupdateletter(updateletterdetails);
		UpdateletterForm updateletterform = new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform", updateletterform);
		model.addAttribute("menu","perry");
		model.addAttribute("success","true");
		return "viewupdateletter";

	}


	@RequestMapping(value = "/viewfaxcover", method = RequestMethod.GET)
	public String viewfaxcover(HttpSession session, ModelMap model) {
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
		model.addAttribute("faxcoverform", faxcoverform);
		model.addAttribute("menu","fax");
		return "viewfaxcover";
	}
	
	//@RequestMapping(value = "/viewworkschool", method = RequestMethod.GET)
	//public String viewworkschool(HttpSession session, ModelMap model) {
	//	WorkschoolForm workschoolform = new WorkschoolForm();
	//	workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
	//	model.addAttribute("workschoolform", workschoolform);
	//	return "workschoolform";
	//}

@RequestMapping(value="/lettertopatients", method = RequestMethod.GET)
public String lettertopatients(HttpSession session,ModelMap model) {
	model.addAttribute("menu","lettertopatients");
	session.removeAttribute("letterto");
	model.addAttribute("menu","fax");
	return "lettertopatients";
}
	
@RequestMapping(value="/responseattorney", method = RequestMethod.GET)
public String responseattorney(HttpSession session,ModelMap model) {	
	session.removeAttribute("response");
	model.addAttribute("menu","responseattorney");
	model.addAttribute("menu","fax");
	return "responseattorney";
}
@RequestMapping(value="/faxcover", method = RequestMethod.GET)
public String faxcover(HttpSession session,ModelMap model) {
	session.removeAttribute("fax");
	model.addAttribute("menu","fax");
	return "faxcover";
}
@RequestMapping(value="/workschool", method = RequestMethod.GET)
public String workschool(HttpSession session,ModelMap model) {	
	session.removeAttribute("work");
	
	model.addAttribute("menu","returntoschool");
	return "workschool";
}

@RequestMapping(value="/lettertopatientlist", method = RequestMethod.GET)
public String lettertolist(HttpSession session,@RequestParam("letterid") String letterid,ModelMap model) {		
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients(letterid));
	model.addAttribute("lettertopatientsform",lettertopatientsform);
		
	return "lettertopatientslist";
}

@RequestMapping(value="/viewresponselist", method = RequestMethod.GET)
public String viewresponselist(HttpSession session,@RequestParam("responseid") String responseid,ModelMap model) {		
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney(responseid));
			model.addAttribute("responseattorneyform",responseattorneyform);
			model.addAttribute("menu","fax");
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
	model.addAttribute("menu", "perry");
	UpdateletterForm updateletterform=new UpdateletterForm();
	updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter(updateid));
	model.addAttribute("updateletterform",updateletterform);			
	return "updateletterlist";
}

@RequestMapping(value="/patientattorneylist", method = RequestMethod.GET)
public String patientattorneylist(HttpSession session,@RequestParam("patientid") String patientid,ModelMap model) {		
	PatientattorneyForm patientattorneyform=new PatientattorneyForm();
	patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney(patientid));
	model.addAttribute("patientattorneyform",patientattorneyform);		
	model.addAttribute("menu", "perry");
	return "patientattorneylist";
}

@RequestMapping(value="/letterofprotectionlist", method = RequestMethod.GET)
public String letterofprotectionlist(HttpSession session,@RequestParam("letterid") String letterid,ModelMap model) {		
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection(letterid));
	model.addAttribute("letterofprotectionform",letterofprotectionform);		
	return "letterofprotectionlist";
}


@RequestMapping(value="/pimedpaylist", method = RequestMethod.GET)
public String pimedpaylist(HttpSession session,@RequestParam("medpayid") String medpayid,ModelMap model) {		
	PimedpayForm pimedpayform=new PimedpayForm();
	pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay(medpayid));
	model.addAttribute("pimedpayform",pimedpayform);	
	return "pimedpaylist";
}




@RequestMapping(value="/formbilllist", method = RequestMethod.GET)
public String formbilllist(HttpSession session,@RequestParam("formid") String formid,ModelMap model) {		
	FormbillForm formbillform=new FormbillForm();
	formbillform.setFormbilldetails(formbillDAO.getformbill(formid));
	model.addAttribute("formbillform",formbillform);
	return "formbilllist";
}


@RequestMapping(value="/xraylist", method = RequestMethod.GET)
public String xraylist(HttpSession session,@RequestParam("xrayid") String xrayid,ModelMap model) {		
	XrayForm xrayForm=new XrayForm();
	xrayForm.setxraydetails(xrayDAO.getxray(xrayid));
	model.addAttribute("xrayform",xrayForm);
	return "xraylist";
}




@RequestMapping(value="/viewletterofprotection", method = RequestMethod.GET)
public String viewletterofprotection(HttpSession session,ModelMap model) {		
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
	model.addAttribute("letterofprotectionform",letterofprotectionform);
	model.addAttribute("menu","xray");	
	
	return "viewletterofprotection";
}

@RequestMapping(value="/viewlettertopatients", method = RequestMethod.GET)
public String viewlettertopatients(HttpSession session,ModelMap model) {		
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
	model.addAttribute("lettertopatientsform",lettertopatientsform);
	model.addAttribute("menu","fax");	
	return "viewlettertopatients";
}

@RequestMapping(value="/viewresponseattorney", method = RequestMethod.GET)
public String viewresponseattorney(HttpSession session,ModelMap model) {		
ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
	model.addAttribute("responseattorneyform",responseattorneyform);
	model.addAttribute("menu","fax");
	return "viewresponseattorney";
}


@RequestMapping(value="/editletterofprotection", method = RequestMethod.GET)
public String editletterofprotection(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection(letterid));
	model.addAttribute("letterofprotectionform",letterofprotectionform);
	model.addAttribute("menu","xray");	
	
	return "editletterofprotection";
}

	

	@RequestMapping(value = "/faxcoverlist", method = RequestMethod.GET)
	public String faxlist(HttpSession session,
			@RequestParam("faxid") String faxid, ModelMap model) {
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover(faxid));
		model.addAttribute("faxcoverform", faxcoverform);
		return "viewfaxlist";
	}

	@RequestMapping(value = "/lettertopatientlist", method = RequestMethod.GET)
	public String letterlist(HttpSession session,
			@RequestParam("letterid") String letterid, ModelMap model) {
		LettertopatientsForm lettertopatientsform = new LettertopatientsForm();
		lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO
				.getlettertopatients(letterid));
		model.addAttribute("lettertopatientsform", lettertopatientsform);

		return "lettertopatientslist";
	}

	

	@RequestMapping(value = "/viewworklist", method = RequestMethod.GET)
	public String workschoollist(HttpSession session,
			@RequestParam("workid") String workid, ModelMap model) {
		WorkschoolForm workschoolform = new WorkschoolForm();
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool(workid));
		model.addAttribute("workschoolform", workschoolform);
		return "workschoolform";
	
}
@RequestMapping(value="/editlettertopatients", method = RequestMethod.GET)
public String editlettertopatients(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients(letterid));
	model.addAttribute("lettertopatientsform",lettertopatientsform);
	model.addAttribute("menu","fax");	
	return "editlettertopatients";
}


@RequestMapping(value="/editresponseattorney", method = RequestMethod.GET)
public String editresponseattorney(@RequestParam("responseid")String responseid, HttpSession session,ModelMap model) {		
	model.addAttribute("menu","fax");
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney(responseid));
			model.addAttribute("responseattorneyform",responseattorneyform);
			return "editresponseattorney";
}


	

@RequestMapping(value="/deleteletterofprotection", method = RequestMethod.GET)
public String deleteletterofprotection(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
	model.addAttribute("success","true");
	letterofprotectionDAO.deleteletterofprotection(letterid);
	LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
	letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
	model.addAttribute("letterofprotectionform",letterofprotectionform);
	model.addAttribute("menu","xray");	
	return "viewletterofprotection";
}	
	
@RequestMapping(value="/deletelettertopatients", method = RequestMethod.GET)
public String deletelettertopatients(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
	model.addAttribute("success","true");
	model.addAttribute("menu","fax");
	lettertopatientsDAO.deletelettertopatients(letterid);
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
	model.addAttribute("lettertopatientsform",lettertopatientsform);	
	return "viewlettertopatients";	
}
@RequestMapping(value="/deleteresponseattorney", method = RequestMethod.GET)
public String deleteresponseattorney(@RequestParam("responseid")String responseid, HttpSession session,ModelMap model) {		
	model.addAttribute("menu","fax");
	model.addAttribute("success","true");
	responseattorneyDAO.deleteresponseattorney(responseid);
	ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
	responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
			model.addAttribute("responseattorneyform",responseattorneyform);
			return "viewresponseattorney";	
}
@RequestMapping(value="/deletefaxcover", method = RequestMethod.GET)
public String deletefaxcover(@RequestParam("faxid")String faxid, HttpSession session,ModelMap model) {
	model.addAttribute("menu","fax");
	model.addAttribute("success","true");
faxcoverDAO.deletefaxcover(faxid);
FaxcoverForm faxcoverform=new FaxcoverForm();
faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
model.addAttribute("faxcoverform",faxcoverform);
return "viewfaxcover";
	
}

@RequestMapping(value="/insertworkschool", method = RequestMethod.POST)
public String insert_workschool(HttpServletRequest request,HttpSession session,@ModelAttribute("Workschool")  @Valid Workschool workschooldetails,BindingResult result,ModelMap model)
{
	
	session.setAttribute("work",workschooldetails);
	if(result.hasErrors())
	{
		model.addAttribute("menu","work");
		WorkschoolForm workschoolform= new WorkschoolForm();
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
		model.addAttribute("workschoolform",workschoolform);		
		return "workschool";
	}
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	workschoolDAO.setworkschool(workschooldetails);
	WorkschoolForm workschoolform=new WorkschoolForm();
	workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
	//model.addAttribute("success","true");
	 model.addAttribute("menu","work");
	return "viewworkschool";
}

@RequestMapping(value="/deleteworkschool", method = RequestMethod.GET)
	public String deleteworkschool(@RequestParam("workid")String workid, HttpSession session,ModelMap model) {		
	model.addAttribute("success","true");
	model.addAttribute("menu","returntoschool");
		workschoolDAO.deleteworkschool(workid);
		WorkschoolForm workschoolform=new WorkschoolForm();
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
		model.addAttribute("workschoolform",workschoolform);	
		return "viewworkschool";
	}

@RequestMapping(value="/viewworklist", method = RequestMethod.GET)
public String worklist(HttpSession session,@RequestParam("workid") String workid,ModelMap model) {		
	WorkschoolForm workschoolform=new WorkschoolForm();
	workschoolform.setWorkschooldetails(workschoolDAO.getworkschool(workid));
	model.addAttribute("workschoolform",workschoolform);	
	return "viewworkschoollist";
}



@RequestMapping(value="/editworkschool", method = RequestMethod.GET)
public String editworkschool(@RequestParam("workid")String workid, HttpSession session,ModelMap model) {		
	model.addAttribute("menu","returntoschool");
	WorkschoolForm workschoolform=new WorkschoolForm();
	workschoolform.setWorkschooldetails(workschoolDAO.getworkschool(workid));
	model.addAttribute("workschoolform",workschoolform);	
	return "editworkschool";

}
@RequestMapping(value="/viewworkschool", method = RequestMethod.GET)
	public String viewworkschool(HttpSession session,ModelMap model) {		
	//model.addAttribute("menu","returntoschool");
		WorkschoolForm workschoolform=new WorkschoolForm();
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
		model.addAttribute("workschoolform",workschoolform);	
		model.addAttribute("menu","returntoschool");
		return "viewworkschool";
	}


@RequestMapping(value="/insertformbill", method = RequestMethod.POST)
public String insert_formbill(HttpServletRequest request,HttpSession session,@ModelAttribute("Formbill")  @Valid Formbill formbilldetails,BindingResult result,ModelMap model) {
	session.setAttribute("form",formbilldetails);
	if(result.hasErrors())
	{
		FormbillForm formbillform = new FormbillForm();
		formbillform.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform", formbillform);
		model.addAttribute("menu","form");
		
		return "formbill";

	}

	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	formbillDAO.setformbill(formbilldetails);
	FormbillForm formbillform=new FormbillForm();
	formbillform.setFormbilldetails(formbillDAO.getformbill());
	model.addAttribute("formbillform",formbillform);
	model.addAttribute("menu","xray");
	model.addAttribute("success","true");
	return "viewformbill";
}

	@RequestMapping(value = "/editfaxcover", method = RequestMethod.GET)
	public String editfaxcover(@RequestParam("faxid") String faxid,	HttpSession session, ModelMap model) {
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover(faxid));
		model.addAttribute("faxcoverform", faxcoverform);

		return "editfaxcover";

	}



	

	

	@RequestMapping(value = "/updateletter", method = RequestMethod.GET)
	public String updateletter(HttpSession session, ModelMap model) {
     session.removeAttribute("update");
     model.addAttribute("menu", "perry");
		return "updateletter";
	}

	@RequestMapping(value = "/formbill", method = RequestMethod.GET)
	public String formbill(HttpSession session, ModelMap model) {
    session.removeAttribute("form");
    model.addAttribute("menu", "xray");
		return "formbill";
	}

	


	
	@RequestMapping(value = "/insertlettertopatient", method = RequestMethod.POST)
	public String insert_lettertopatient(
			HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Lettertopatients") @Valid Lettertopatients lettertopatientsdetails,
			BindingResult result, ModelMap model) {
		session.setAttribute("letterto",lettertopatientsdetails);
		if (result.hasErrors()) {
			LettertopatientsForm lettertopatientsform = new LettertopatientsForm();
			lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO
					.getlettertopatients());
			model.addAttribute("lettertopatientsform", lettertopatientsform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "letterto");
			return "lettertopatients";
		}


		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		lettertopatientsDAO.setlettertopatients(lettertopatientsdetails);
		LettertopatientsForm lettertopatientsform = new LettertopatientsForm();
		lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO
				.getlettertopatients());
		model.addAttribute("lettertopatientsform", lettertopatientsform);
       return "viewlettertopatients";
	 
}


	@RequestMapping(value = "/insertnoticeofassignment", method = RequestMethod.POST)
	public String insert_noticeofassignment(HttpServletRequest request,HttpSession session,@ModelAttribute("noticeerror") @Valid Noticeassignment noticeassignmentdetails,BindingResult result, ModelMap model) {
		session.setAttribute("notice",noticeassignmentdetails);
		if (result.hasErrors()) {
			NoticeassignmentForm noticeassignmentform = new NoticeassignmentForm();
			noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
			model.addAttribute("noticeassignmentform", noticeassignmentform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "work");
			return "noticeassignment";
		}
		noticeassignmentDAO.setnoticeassignment(noticeassignmentdetails);
		NoticeassignmentForm noticeassignmentform = new NoticeassignmentForm();
		noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
		model.addAttribute("noticeassignmentform", noticeassignmentform);
		model.addAttribute("Success", "true");
		model.addAttribute("menu", "work");
		return "viewnoticeassignment";
	}

	
	@RequestMapping(value = "/insertletterofprotection", method = RequestMethod.POST)
	public String insert_letterofprotection(
			HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Letterofprotection") @Valid Letterofprotection letterofprotectiondetails,
			BindingResult result, ModelMap model) {
		 session.setAttribute("letter",letterofprotectiondetails);
		if (result.hasErrors()) {
			LetterofprotectionForm letterofprotectionform = new LetterofprotectionForm();
			letterofprotectionform
					.setLetterofprotectiondetails(letterofprotectionDAO
							.getletterofprotection());
			model.addAttribute("letterofprotectionform", letterofprotectionform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "letter");
			return "letterofprotection";
		}
		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		letterofprotectionDAO.setletterofprotection(letterofprotectiondetails);
		LetterofprotectionForm letterofprotectionform = new LetterofprotectionForm();
		letterofprotectionform
				.setLetterofprotectiondetails(letterofprotectionDAO
						.getletterofprotection());
		model.addAttribute("letterofprotectionform", letterofprotectionform);
		return "viewletterofprotection";

	}

	
		
	

	

	@RequestMapping(value = "/updateletterofprotection", method = RequestMethod.POST)
	public String update_letterofprotection(
			HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("letterofprotectiondetails") @Valid Letterofprotection letterofprotectiondetails,
			BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			LetterofprotectionForm letterofprotectionform = new LetterofprotectionForm();
			letterofprotectionform
					.setLetterofprotectiondetails(letterofprotectionDAO
							.getletterofprotection());
			model.addAttribute("letterofprotectionform", letterofprotectionform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "work");
			return "letterofprotection";
		}

	

		// System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
		letterofprotectionDAO.updateletterofprotection(
				letterofprotectiondetails,
				letterofprotectiondetails.getLetterid());
		LetterofprotectionForm letterofprotectionform = new LetterofprotectionForm();
		letterofprotectionform
				.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionform", letterofprotectionform);
		return "viewletterofprotection";

	}

	@RequestMapping(value = "/updatefaxcover", method = RequestMethod.POST)
	public String update_faxcover(HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("faxcoverdetails") @Valid Faxcover faxcoverdetails,
			BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			FaxcoverForm faxcoverform = new FaxcoverForm();
			faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
			model.addAttribute("faxcoverform", faxcoverform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "work");
			return "faxcover";
		}

		// System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
		faxcoverDAO.updatefaxcover(faxcoverdetails, faxcoverdetails.getFaxid());
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
		model.addAttribute("faxcoverform", faxcoverform);
		return "viewfaxcover";
	}

	@RequestMapping(value = "/updatelettertopatients", method = RequestMethod.POST)
	public String update_lettertopatients(
			HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("lettertopatientsdetails") @Valid Lettertopatients lettertopatientsdetails,
			BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			LettertopatientsForm lettertopatientsform = new LettertopatientsForm();
			lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO
					.getlettertopatients());
			model.addAttribute("lettertopatientsform", lettertopatientsform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "work");
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


		return "viewlettertopatients";

	}

	@RequestMapping(value = "/updateresponseattorney", method = RequestMethod.POST)
	public String updateresponseattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("responseattorneydetail") @Valid Responseattorney responseattorneydetail,BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			ResponseattorneyForm responseattorneyform = new ResponseattorneyForm();
			responseattorneyform.setResponseattorneydetail(responseattorneyDAO
					.getresponseattorney());
			model.addAttribute("responseattorneyform", responseattorneyform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "work");
			return "responseattorney";
		}


		responseattorneyDAO.updateresponseattorney(responseattorneydetail,
				responseattorneydetail.getResponseid());
		ResponseattorneyForm responseattorneyform = new ResponseattorneyForm();
		responseattorneyform.setResponseattorneydetail(responseattorneyDAO
				.getresponseattorney());
		model.addAttribute("responseattorneyform", responseattorneyform);
		return "viewresponseattorney";

}


	

	@RequestMapping(value = "/updateworkschool", method = RequestMethod.POST)
	public String updateworkschool(HttpServletRequest request,HttpSession session,@ModelAttribute("Workschool") @Valid Workschool workschooldetails,
			BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",letterofprotectiondetails);
		if (result.hasErrors()) {
			WorkschoolForm workschoolform = new WorkschoolForm();
			workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
			model.addAttribute("workschoolform", workschoolform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "work");
			return "updateworkschool";
		}
		// System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
		workschoolDAO.updateworkschool(workschooldetails,
				workschooldetails.getWorkid());
		WorkschoolForm workschoolform = new WorkschoolForm();
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
		model.addAttribute("workschoolform", workschoolform);
		return "viewworkschool";

	}

}
