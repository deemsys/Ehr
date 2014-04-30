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

public class XrayController {
	@Autowired
	SignupDAO signupDAO;
	@Autowired
	XrayDAO xrayDAO;
	@Autowired
	PatientDAO patientDAO;
	@Autowired
	PimedpayDAO pimedpayDAO;
	@Autowired
	LetterofprotectionDAO letterofprotectionDAO;
	@Autowired
	FormbillDAO formbillDAO;
	
	
	@RequestMapping(value="/xray_ajax",method=RequestMethod.POST)
	public @ResponseBody String xray(@ModelAttribute(value="username")Xray xray, BindingResult result,ModelMap model ) {
		String returnText="";
		String name="";
		System.out.println("username"+xray.getUsername());
		if(signupDAO.getPatientusername(xray.getUsername()).size()==0)
		{
			return "error";
		}		
	if(xrayDAO.getusernamexray(xray.getUsername()).size()>0)
	{
		name=xrayDAO.getusernamexray(xray.getUsername()).get(0).getName();
		System.out.println("pname"+name);
		
		model.addAttribute("edit","1");
		return "edit"+name+"|"+xray.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	if(patientDAO.getUsername(xray.getUsername()).size()>0)
	{
		name=patientDAO.getUsername(xray.getUsername()).get(0).getName();
	}	
		
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=name+"|"+xray.getUsername();
				return returnText;
				
	}	
	
	
	
	

	@RequestMapping(value = "/editxraydetails", method = RequestMethod.GET)
	public String editxray(@RequestParam("username") String username, HttpSession session,ModelMap model) {
		XrayForm xrayForm = new XrayForm();
		xrayForm.setxraydetails(xrayDAO.getusernamexray(username));
		model.addAttribute("xrayform", xrayForm);
		model.addAttribute("menu", "xray");
		return "editxray";
		
		

	}
	

	@RequestMapping(value = "/editpimedpaydetails", method = RequestMethod.GET)
	public String editpimedpaydetails(@RequestParam("username") String username,HttpSession session, ModelMap model) {
		PimedpayForm pimedpayForm = new PimedpayForm();
		pimedpayForm.setPimedpaydetails(pimedpayDAO.getusernamepimedpay(username));
		model.addAttribute("pimedpayform",pimedpayForm);
		//model.addAttribute("menu","xray");
		return "editpimedpay";

	}
	

	@RequestMapping(value = "/editformbilldetails", method = RequestMethod.GET)
	public String editformbilldetails(@RequestParam("username") String username,HttpSession session, ModelMap model) {
		FormbillForm formbillForm = new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getusernameformbill(username));
		model.addAttribute("formbillform", formbillForm);
		//model.addAttribute("menu", "xray");
		model.addAttribute("success",true);
		return "editformbill";
	}



	
	@RequestMapping(value="/editletterofprotectiondetails", method = RequestMethod.GET)
	public String editletterofprotectiondetails(@RequestParam("username")String username, HttpSession session,ModelMap model) {		
		LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
		letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getusernameletterofprotection(username));
		model.addAttribute("letterofprotectionform",letterofprotectionform);
		model.addAttribute("menu","xray");	
		model.addAttribute("success",true);
		
		return "editletterofprotection";
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
		model.addAttribute("success",true);
		
		return "xray";

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
		model.addAttribute("success",true);
		return "pimedpay";

	}
	
	@RequestMapping(value = "/updateformbill", method = RequestMethod.POST)
	public String update_formbill(HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Formbill") @Valid Formbill formbilldetails,
			BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		model.addAttribute("menu", "xray");
		if (result.hasErrors()) {

	
	         System.out.println("yes");
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
 		return "formbill";

	}

	
	@RequestMapping(value = "/updateletterofprotection", method = RequestMethod.POST)
	public String update_letterofprotection(HttpServletRequest request,HttpSession session,@ModelAttribute("Letterofprotection") @Valid Letterofprotection letterofprotectiondetails,BindingResult result, ModelMap model) {
		// session.setAttribute("perrydetails",perrychiropracticdetails);
		if (result.hasErrors()) {
			LetterofprotectionForm letterofprotectionForm = new LetterofprotectionForm();
			letterofprotectionForm.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
			model.addAttribute("letterofprotectionForm", letterofprotectionForm);
			return "letterofprotection";
		}

		// System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		letterofprotectionDAO.updateletterofprotection(letterofprotectiondetails,letterofprotectiondetails.getLetterid());
		LetterofprotectionForm letterofprotectionForm = new LetterofprotectionForm();
		letterofprotectionForm.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionForm",letterofprotectionForm);
		model.addAttribute("success",true);
		return "letterofprotection";

	}
	

	@RequestMapping(value = "/insertxray", method = RequestMethod.POST)
	public String insert_xray(HttpServletRequest request, HttpSession session,
			@ModelAttribute("Xray") @Valid Xray xraydetails,
			BindingResult result, ModelMap model) {
		String username=request.getParameter("user");
		System.out.println("fgcfg "+username);
		 session.setAttribute("xray",xraydetails);
		if (result.hasErrors()) {
			XrayForm xrayform = new XrayForm();
			xrayform.setxraydetails(xrayDAO.getxray());
			model.addAttribute("xrayform", xrayform);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "xray");
						

			return "xray";
		}

		xrayDAO.setxray(xraydetails,username);
		XrayForm xrayform = new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform", xrayform);
		model.addAttribute("success",true);
		return "xray";

	}
	
	
	

	@RequestMapping(value="/deletexray", method = RequestMethod.GET)
	public String deletexray(@RequestParam("xrayid")String xrayid, HttpSession session,ModelMap model) {	
		model.addAttribute("success","true");
		xrayDAO.deletexray(xrayid);		
		XrayForm xrayForm=new XrayForm();
		xrayForm.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayForm", xrayForm);
		model.addAttribute("menu", "xray");
		return "xray";
	}
	
	@RequestMapping(value = "/deletepimedpay", method = RequestMethod.GET)
	public String deletepimedpaydetails(@RequestParam("medpayid") String medpayid,	HttpSession session, ModelMap model) {
		pimedpayDAO.deletepimedpay(medpayid);
		PimedpayForm pimedpayform = new PimedpayForm();
		model.addAttribute("success","true");
	 	pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
	 	model.addAttribute("pimedpayform", pimedpayform);
		//model.addAttribute("menu","xray");	
		model.addAttribute("success","true");
		return "pimedpay";
	}
	
	

	@RequestMapping(value="/deleteformbill", method = RequestMethod.GET)
	public String deleteformbill(@RequestParam("formid")String formid, HttpSession session,ModelMap model) {		
		model.addAttribute("success","true");
		formbillDAO.deleteformbill(formid);		
		FormbillForm formbillForm=new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform", formbillForm);
		model.addAttribute("menu", "xray");
		model.addAttribute("success","true");
		return "formbill";
	}
	
	@RequestMapping(value="/deleteletterofprotection", method = RequestMethod.GET)
	public String deleteletterofprotection(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
		model.addAttribute("success","true");
		letterofprotectionDAO.deleteletterofprotection(letterid);
		LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
		letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionform",letterofprotectionform);
		model.addAttribute("menu","xray");	
		return "letterofprotection";
	}	
		

	
	@RequestMapping(value = "/insertpimedpay", method = RequestMethod.POST)
	public String insert_pimedpay(HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Pimedpay") @Valid Pimedpay pimedpaydetails,
			BindingResult result, ModelMap model) {
		String username=request.getParameter("user");
		System.out.println("fgcfg "+username);
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

		pimedpayDAO.setpimedpay(pimedpaydetails,username);
		PimedpayForm pimedpayform = new PimedpayForm();
		pimedpayform.setPimedpaydetails(pimedpayDAO.getpimedpay());
		model.addAttribute("pimedpayform", pimedpayform);
		model.addAttribute("success","true");
		//model.addAttribute("menu","xray");
		return "pimedpay";

	}
	

	@RequestMapping(value = "/insertletterofprotection", method = RequestMethod.POST)
	public String insert_letterofprotection(HttpServletRequest request,
			HttpSession session,
			@ModelAttribute("Letterofprotection") @Valid Letterofprotection letterofprotectiondetails,
			BindingResult result, ModelMap model) {
		String username=request.getParameter("user");
		System.out.println("fgcfg "+username);
		 session.setAttribute("letter",letterofprotectiondetails);
		if (result.hasErrors()) {
			System.out.println("yes");
			LetterofprotectionForm letterofprotectionForm = new LetterofprotectionForm();
			letterofprotectionForm.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
			model.addAttribute("letterofprotectionForm", letterofprotectionForm);
			model.addAttribute("Success", "true");
			model.addAttribute("menu", "letter");
			return "letterofprotection";
		}

		letterofprotectionDAO.setletterofprotection(letterofprotectiondetails,username);
		LetterofprotectionForm letterofprotectionForm = new LetterofprotectionForm();
		letterofprotectionForm.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionForm", letterofprotectionForm);
		model.addAttribute("success","true");
		//model.addAttribute("menu","xray");
		return "letterofprotection";

	}
	

	
	@RequestMapping(value="/insertformbill", method = RequestMethod.POST)
	public String insert_formbill(HttpServletRequest request,HttpSession session,@ModelAttribute("Formbill")  @Valid Formbill formbilldetails,BindingResult result,ModelMap model) {
		String username=request.getParameter("user");
		session.setAttribute("form",formbilldetails);
		if(result.hasErrors())
		{    
			System.out.println("yes");
			FormbillForm formbillform = new FormbillForm();
			formbillform.setFormbilldetails(formbillDAO.getformbill());
			model.addAttribute("formbillform", formbillform);
			model.addAttribute("menu","form");
			
			return "formbill";

		}

		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		formbillDAO.setformbill(formbilldetails,username);
		FormbillForm formbillform=new FormbillForm();
		formbillform.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform",formbillform);
		//model.addAttribute("menu","xray");
		model.addAttribute("success","true");
		return "formbill";
	}	
	

	

	
	@RequestMapping(value="/pimedpay_ajax",method=RequestMethod.POST)
	public @ResponseBody String pimedpay(@ModelAttribute(value="username")Pimedpay pimedpay, BindingResult result,ModelMap model ) {
		String returnText="";
		String nameofperson="";
		System.out.println("username"+pimedpay.getUsername());
		if(signupDAO.getPatientusername(pimedpay.getUsername()).size()==0)
		{
			return "error";
		}		
	if(pimedpayDAO.getusernamepimedpay(pimedpay.getUsername()).size()>0)
	{
		nameofperson=pimedpayDAO.getusernamepimedpay(pimedpay.getUsername()).get(0).getNameofperson();
		System.out.println("pname"+nameofperson);
		
		model.addAttribute("edit","1");
		return "edit"+nameofperson+"|"+pimedpay.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	if(patientDAO.getUsername(pimedpay.getUsername()).size()>0)
	{
		nameofperson=patientDAO.getUsername(pimedpay.getUsername()).get(0).getName();
	}	
		
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=nameofperson+"|"+pimedpay.getUsername();
				return returnText;
				
	}
	

	
	@RequestMapping(value="/formbill_ajax",method=RequestMethod.POST)
	public @ResponseBody String formbill(@ModelAttribute(value="username")Formbill formbill, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientsname="";
		System.out.println("username"+formbill.getUsername());
		if(signupDAO.getPatientusername(formbill.getUsername()).size()==0)
		{
			return "error";
		}		
	if(formbillDAO.getusernameformbill(formbill.getUsername()).size()>0)
	{
		patientsname=formbillDAO.getusernameformbill(formbill.getUsername()).get(0).getPatientsname();
		System.out.println("pname"+patientsname);
		
		model.addAttribute("edit","1");
		return "edit"+patientsname+"|"+formbill.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	if(patientDAO.getUsername(formbill.getUsername()).size()>0)
	{
		patientsname=patientDAO.getUsername(formbill.getUsername()).get(0).getName();
	}	
		
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=patientsname+"|"+formbill.getUsername();
				return returnText;
				
	}
	


	@RequestMapping(value="/letterofprotection_ajax",method=RequestMethod.POST)
	public @ResponseBody String letterofprotection(@ModelAttribute(value="username")Letterofprotection letterofprotection, BindingResult result,ModelMap model ) {
		String returnText="";
		String myclient="";
		System.out.println("username"+letterofprotection.getUsername());
		if(signupDAO.getPatientusername(letterofprotection.getUsername()).size()==0)
		{
			return "error";
		}		
	if(letterofprotectionDAO.getusernameletterofprotection(letterofprotection.getUsername()).size()>0)
	{
		myclient=letterofprotectionDAO.getusernameletterofprotection(letterofprotection.getUsername()).get(0).getMyclient();
		System.out.println("pname"+myclient);
		
		model.addAttribute("edit","1");
		return "edit"+myclient+"|"+letterofprotection.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	if(patientDAO.getUsername(letterofprotection.getUsername()).size()>0)
	{
		myclient=patientDAO.getUsername(letterofprotection.getUsername()).get(0).getName();
	}	
		
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=myclient+"|"+letterofprotection.getUsername();
				return returnText;
				
	}
	

	
	
}