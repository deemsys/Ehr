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
	}
	if(patientDAO.getUsername(patientattorney.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(patientattorney.getUsername()).get(0).getName();
	}		
	returnText=patientname+"|"+patientattorney.getUsername();
	return returnText;				
	}
	@RequestMapping(value="/workschool_ajax",method=RequestMethod.POST)
	public @ResponseBody String workschool_ajax(@ModelAttribute(value="username")Workschool workschool, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+workschool.getUsername());
		if(signupDAO.getPatientusername(workschool.getUsername()).size()==0)
		{
			return "error";
		}		
	if(workschoolDAO.getusernameworkschool(workschool.getUsername()).size()>0)
	{
		//patientname=workschoolDAO.getusernameworkschool(workschool.getUsername()).get(0).getPatientname();
		System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+workschool.getUsername();		
	}
	if(patientDAO.getUsername(workschool.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(workschool.getUsername()).get(0).getName();
	}		
	returnText=patientname+"|"+workschool.getUsername();
	return returnText;				
	}
	
	@RequestMapping(value="/updateletter_ajax",method=RequestMethod.POST)
	public @ResponseBody String updateletter(@ModelAttribute(value="username")Updateletter updateletter, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+updateletter.getUsername());
		if(signupDAO.getPatientusername(updateletter.getUsername()).size()==0)
		{
			return "error";
		}		
	if(updateletterDAO.getusernameupdateletter(updateletter.getUsername()).size()>0)
	{
		/*patientname=patientattorneyDAO.getusernamepatientattorney(updateletter.getUsername()).get(0).getPatientname();
		System.out.println("pname"+patientname);
		*/
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+updateletter.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	/*if(patientDAO.getUsername(patientattorney.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(patientattorney.getUsername()).get(0).getName();
	}	
	*/	
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=patientname+"|"+updateletter.getUsername();
				return returnText;
				
	}
	@RequestMapping(value = "/editpatientattorneydetails", method = RequestMethod.GET)
	public String editpatientattorneydetails(@RequestParam("username") String username, HttpSession session,ModelMap model) {
		PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(username));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		session.removeAttribute("patient");
		return "editpatientattorney";

	}
	
	@RequestMapping(value = "/deletepatientattorney", method = RequestMethod.GET)
	public String deletepatientattorneydetails(@RequestParam("patientid") String patientid, HttpSession session,ModelMap model) {
		patientattorneyDAO.deletepatientattorney(patientid);		
		model.addAttribute("menu", "perry");
		model.addAttribute("success", "true");
		session.removeAttribute("patient");
		return "patientattorney";

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
	
	
	
	
	
	
	
	
	
	

	@RequestMapping(value = "/viewupdateletter", method = RequestMethod.GET)
	public String viewupdateletter(HttpSession session, ModelMap model) {
		model.addAttribute("menu", "perry");
		UpdateletterForm updateletterform = new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform", updateletterform);
		//model.addAttribute("menu", "perry");

		return "viewupdateletter";
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

		session.removeAttribute("peri");
				return "editperrychiropractic";

		
		
		


	}
	@RequestMapping(value = "/editperrychiropracticdetails", method = RequestMethod.GET)
	public String editperrychiropracticdetails(@RequestParam("username") String username, HttpSession session,ModelMap model) {
		PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getusernameperrychiropractic(username));
		model.addAttribute("perrychiropracticform", perrychiropracticform);

		model.addAttribute("menu", "perry");
		session.removeAttribute("peri");
		return "editperrychiropractic";

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
		model.addAttribute("menu", "perry");
		session.removeAttribute("update");
		return "editupdateletter";

	}
	@RequestMapping(value = "/editupdateletterdetails", method = RequestMethod.GET)
	public String editupdateletterdetails(@RequestParam("username") String username,HttpSession session, ModelMap model) {
		UpdateletterForm updateletterform = new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getusernameupdateletter(username));
		model.addAttribute("updateletterform", updateletterform);
		model.addAttribute("menu", "perry");
		return "editupdateletter";

	}
	@RequestMapping(value = "/editrequestfordemand", method = RequestMethod.GET)
	public String editrequestfordemand(@RequestParam("requestid") String requestid, HttpSession session,ModelMap model) {
		RequestfordemandForm requestfordemandform = new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand(requestid));
		model.addAttribute("requestfordemandform", requestfordemandform);
		return "editrequestfordemand";
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
			
	
	@RequestMapping(value="/deleteperrychiropractic", method = RequestMethod.GET)
	public String deleteperrychiropractic(@RequestParam("perryid")String perryid, HttpSession session,ModelMap model) {		
	
		model.addAttribute("success","true");
		perrychiropracticDAO.deleteperrychiropractic(perryid);		
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);		
		//model.addAttribute("menu","xray");
		session.removeAttribute("peri");
		model.addAttribute("menu","perry");
		session.removeAttribute("peri");
		return "perrychiropractic";
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

	
	@RequestMapping(value = "/deleteupdateletter", method = RequestMethod.GET)
	public String deleteupdateletter(@RequestParam("updateid") String updateid,HttpSession session, ModelMap model) {
		model.addAttribute("menu", "perry");
		updateletterDAO.deleteupdateletter(updateid);
		/*UpdateletterForm updateletterform = new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform", updateletterform);*/
		model.addAttribute("success",true);
		session.removeAttribute("update");
		return "updateletter";
	}
	
	@RequestMapping(value = "/perrychiropractic", method = RequestMethod.GET)
	public String perrychiropractic(HttpSession session, ModelMap model) {
		session.removeAttribute("peri");
		model.addAttribute("menu", "perry");
		return "perrychiropractic";
	}
	
	@RequestMapping(value="/perrychiropractic_ajax",method=RequestMethod.POST)
	public @ResponseBody String perrychiropractic_ajax(@ModelAttribute(value="username")Perrychiropractic perrychiropractic, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+perrychiropractic.getUsername());
		if(signupDAO.getPatientusername(perrychiropractic.getUsername()).size()==0)
		{
			return "error";
		}		
	if(perrychiropracticDAO.getusernameperrychiropractic(perrychiropractic.getUsername()).size()>0)
	{
		patientname=perrychiropracticDAO.getusernameperrychiropractic(perrychiropractic.getUsername()).get(0).getNameofperson();
		System.out.println("pname"+patientname);
		return "edit"+patientname+"|"+perrychiropractic.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	if(patientDAO.getUsername(perrychiropractic.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(perrychiropractic.getUsername()).get(0).getName();
	}	
		
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=patientname+"|"+perrychiropractic.getUsername();
				return returnText;
				
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
			session.removeAttribute("peri");
			
			//model.addAttribute("menu", "notes");
			model.addAttribute("menu","perry");
			session.removeAttribute("peri");
			return "perrychiropractic";

		}

			
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		perrychiropracticDAO.updateperrychiropractic(perrychiropracticdetails,perrychiropracticdetails.getPerryid());
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);
		model.addAttribute("success","true");
		model.addAttribute("menu","perry");
		session.removeAttribute("peri");
		
		return "perrychiropractic";

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

	
	@RequestMapping(value = "/updateupdateletter", method = RequestMethod.POST)
	public String update_updateletter(HttpServletRequest request,HttpSession session,@ModelAttribute("Updateletter") @Valid Updateletter updateletterdetails,BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		model.addAttribute("menu", "perry");
		if (result.hasErrors()) {
			UpdateletterForm updateletterform = new UpdateletterForm();
			updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
			model.addAttribute("updateletterform", updateletterform);
			session.removeAttribute("update");
			return "editupdateletter";

		}

		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		updateletterDAO.updateupdateletter(updateletterdetails,updateletterdetails.getUpdateid());
		UpdateletterForm updateletterform=new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("success","true");
		model.addAttribute("menu","perry");
		model.addAttribute("updateletterform",updateletterform);
		return "updateletter";

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
			session.removeAttribute("patient");

			return "patientattorney";
		}

		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		patientattorneyDAO.updatepatientattorney(patientattorneydetails,patientattorneydetails.getPatientid());
		PatientattorneyForm patientattorneyform=new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform",patientattorneyform);
		model.addAttribute("success","true");
		model.addAttribute("menu","perry");
		session.removeAttribute("patient");
		return "patientattorney";

	}


	

	
		
	@RequestMapping(value="/insertperrychiropractic", method = RequestMethod.POST)
	public String insert_perrychiropractic(HttpServletRequest request,HttpSession session,@ModelAttribute("Perrychiropractic")  @Valid Perrychiropractic perrychiropracticdetails,BindingResult result,ModelMap model) {
		session.setAttribute("peri",perrychiropracticdetails);
		model.addAttribute("menu","perry");
		String username=request.getParameter("user");
		if(result.hasErrors())
		{
			model.addAttribute("username",username);
			model.addAttribute("menu", "perry");
			PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
			perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
			model.addAttribute("perrychiropracticform", perrychiropracticform);
			session.removeAttribute("peri");

			return "perrychiropractic";
		}
		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		perrychiropracticDAO.setperrychiropractic(perrychiropracticdetails,username);
		PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform", perrychiropracticform);
		model.addAttribute("success","true");
		model.addAttribute("menu","perry");
		session.removeAttribute("peri");
		session.removeAttribute("peri");
		return "perrychiropractic";

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
		faxcoverDAO.setfaxcover(faxcoverdetails,request.getParameter("user"));
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover());
		model.addAttribute("faxcoverform", faxcoverform);
		model.addAttribute("success","true");
		model.addAttribute("menu","fax");
		return "faxcover";

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
				model.addAttribute("success", "true");
				return "responseattorney";
		}
		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		responseattorneyDAO.setresponseattorney(responseattorneydetail,request.getParameter("user"));
		ResponseattorneyForm responseattorneyform=new ResponseattorneyForm();
		responseattorneyform.setResponseattorneydetail(responseattorneyDAO.getresponseattorney());
			model.addAttribute("responseattorneyform",responseattorneyform);
			model.addAttribute("success", "true");
			return "responseattorney";

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
	public String insert_requestfordemand(HttpServletRequest request,HttpSession session,
			@ModelAttribute("Requestfordemand") @Valid Requestfordemand requestfordemanddetails,
			BindingResult result, ModelMap model) {
		String username=request.getParameter("user");
			System.out.println("username"+username+"user"+request.getParameter("username"));
			model.addAttribute("username",username);
			 session.setAttribute("requestfor",requestfordemanddetails);
			model.addAttribute("menu", "fax");
			if (result.hasErrors()) {
				RequestfordemandForm requestfordemandform = new RequestfordemandForm();
				requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());

				model.addAttribute("requestfordemandform", requestfordemandform);
				
				model.addAttribute("success","true");

				return "requestfordemand";
			}
			requestfordemandDAO.setrequestfordemand(requestfordemanddetails,request.getParameter("user"));
			/*RequestfordemandForm requestfordemandform = new RequestfordemandForm();
			requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
			model.addAttribute("requestfordemandform", requestfordemandform);*/
			model.addAttribute("success","true");
			model.addAttribute("menu","perry");
			return "requestfordemand";

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
			session.removeAttribute("patient");
			
		

			return "patientattorney";
		}

		patientattorneyDAO.setpatientattorney(patientattorneydetails,username);
		/*PatientattorneyForm patientattorneyform = new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform", patientattorneyform);
		model.addAttribute("success","true");*/
		model.addAttribute("success", "true");
		model.addAttribute("menu","perry");
		session.removeAttribute("patient");
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
		 String username=request.getParameter("user");
		if(result.hasErrors())
		{

			UpdateletterForm updateletterform = new UpdateletterForm();
			updateletterform.setUpdateletterdetails(updateletterDAO	.getupdateletter());
			model.addAttribute("menu", "update");
			model.addAttribute("updateletterform","updateletterform");
			session.removeAttribute("update");

			return "updateletter";
		}

		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		updateletterDAO.setupdateletter(updateletterdetails,username);
		UpdateletterForm updateletterform = new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform", updateletterform);
		model.addAttribute("menu","perry");
		model.addAttribute("success","true");
		session.removeAttribute("update");
		return "updateletter";

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
	

/*@RequestMapping(value="/faxcover", method = RequestMethod.GET)
public String faxcover(HttpSession session,ModelMap model) {
	session.removeAttribute("fax");
	model.addAttribute("menu","fax");
	return "faxcover";
}*/
@RequestMapping(value="/workschool", method = RequestMethod.GET)
public String workschool(HttpSession session,ModelMap model) {	
	session.removeAttribute("work");
	
	model.addAttribute("menu","returntoschool");
	return "workschool";
}

/*@RequestMapping(value="/lettertopatientlist", method = RequestMethod.GET)
public String lettertolist(HttpSession session,@RequestParam("letterid") String letterid,ModelMap model) {		
	LettertopatientsForm lettertopatientsform=new LettertopatientsForm();
	lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients(letterid));
	model.addAttribute("lettertopatientsform",lettertopatientsform);
		
	return "lettertopatientslist";
}*/

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


/*
	@RequestMapping(value = "/faxcoverlist", method = RequestMethod.GET)
	public String faxlist(HttpSession session,
			@RequestParam("faxid") String faxid, ModelMap model) {
		FaxcoverForm faxcoverform = new FaxcoverForm();
		faxcoverform.setFaxcoverdetails(faxcoverDAO.getfaxcover(faxid));
		model.addAttribute("faxcoverform", faxcoverform);
		return "viewfaxlist";
	}
*/
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

@RequestMapping(value="/insertworkschool", method = RequestMethod.POST)
public String insert_workschool(HttpServletRequest request,HttpSession session,@ModelAttribute("Workschool")  @Valid Workschool workschooldetails,BindingResult result,ModelMap model)
{
	model.addAttribute("menu","returntoschool");
	session.setAttribute("work",workschooldetails);
	if(result.hasErrors())
	{
		model.addAttribute("menu","returntoschool");
		WorkschoolForm workschoolform= new WorkschoolForm();
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
		model.addAttribute("workschoolform",workschoolform);	
		 session.removeAttribute("work");
		return "workschool";
	}
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	workschoolDAO.setworkschool(workschooldetails,request.getParameter("user"));
	WorkschoolForm workschoolform=new WorkschoolForm();
	workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
	model.addAttribute("success","true");
	model.addAttribute("menu","returntoschool");
	session.removeAttribute("work");
	return "workschool";
}

@RequestMapping(value="/deleteworkschool", method = RequestMethod.GET)
	public String deleteworkschool(@RequestParam("workid")String workid, HttpSession session,ModelMap model) {		
	model.addAttribute("success","true");
	model.addAttribute("menu","returntoschool");
		workschoolDAO.deleteworkschool(workid);
		WorkschoolForm workschoolform=new WorkschoolForm();
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
		model.addAttribute("workschoolform",workschoolform);
		session.removeAttribute("work");
		return "workschool";
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
	session.removeAttribute("work");
	return "editworkschool";

}
@RequestMapping(value="/editworkschooldetails", method = RequestMethod.GET)
public String editworkschooldetails(@RequestParam("username")String username, HttpSession session,ModelMap model) {		
	model.addAttribute("menu","returntoschool");
	WorkschoolForm workschoolform=new WorkschoolForm();
	workschoolform.setWorkschooldetails(workschoolDAO.getusernameworkschool(username));
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
	public String insert_lettertopatient(HttpServletRequest request,HttpSession session,
			@ModelAttribute("Lettertopatients") @Valid Lettertopatients lettertopatientsdetails,
			BindingResult result, ModelMap model) {
		String username=request.getParameter("user");
		System.out.println("username"+username+"user"+request.getParameter("username"));
		model.addAttribute("username",username);
		session.setAttribute("letterto",lettertopatientsdetails);
		model.addAttribute("menu", "fax");
		if (result.hasErrors()) {
			LettertopatientsForm lettertopatientsform = new LettertopatientsForm();
			lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());
			model.addAttribute("lettertopatientsform", lettertopatientsform);
			return "lettertopatients";
		}
		lettertopatientsDAO.setlettertopatients(lettertopatientsdetails,request.getParameter("user"));
		/*LettertopatientsForm lettertopatientsform = new LettertopatientsForm();
		lettertopatientsform.setLettertopatientsdetails(lettertopatientsDAO.getlettertopatients());*/
		//model.addAttribute("lettertopatientsform", lettertopatientsform);
		model.addAttribute("success", "true");
		model.addAttribute("menu","fax");
		return "lettertopatients";
		}


	@RequestMapping(value = "/insertnoticeofassignment", method = RequestMethod.POST)
	public String insert_noticeofassignment(HttpServletRequest request,HttpSession session,@ModelAttribute("noticeerror") @Valid Noticeassignment noticeassignmentdetails,BindingResult result, ModelMap model) {
		//session.setAttribute("notice",noticeassignmentdetails);
		if (result.hasErrors()) {
			NoticeassignmentForm noticeassignmentform = new NoticeassignmentForm();
			noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
			model.addAttribute("noticeassignmentform", noticeassignmentform);
			model.addAttribute("success", "true");
			model.addAttribute("menu", "work");
			return "noticeassignment";
		}
		noticeassignmentDAO.setnoticeassignment(noticeassignmentdetails,request.getParameter("user"));
		NoticeassignmentForm noticeassignmentform = new NoticeassignmentForm();
		noticeassignmentform.setNoticeassignmentdetails(noticeassignmentDAO.getnoticeassignment());
		model.addAttribute("noticeassignmentform", noticeassignmentform);
		model.addAttribute("success", "true");
		model.addAttribute("menu", "work");
		return "noticeassignment";
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
			model.addAttribute("menu", "returntoschool");
			session.removeAttribute("work");
			return "updateworkschool";
		}
		// System.out.println(letterofprotectiondetails.getAddress()+""+letterofprotectiondetails.getAddress1());
		workschoolDAO.updateworkschool(workschooldetails,
				workschooldetails.getWorkid());
		WorkschoolForm workschoolform = new WorkschoolForm();
		model.addAttribute("success", "true");
		workschoolform.setWorkschooldetails(workschoolDAO.getworkschool());
		model.addAttribute("workschoolform", workschoolform);
		model.addAttribute("menu", "returntoschool");
		session.removeAttribute("work");
		return "workschool";

	}

}
