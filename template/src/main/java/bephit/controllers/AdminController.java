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
import bephit.dao.PerrychiropracticDAO;
import bephit.dao.RequestfordemandDAO;
import bephit.dao.UpdateletterDAO;
import bephit.dao.XrayDAO;
import bephit.forms.FormbillForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.LetterofprotectionForm;
/*import bephit.forms.PatientattorneyForm;*/
import bephit.forms.NarrativereportForm;
import bephit.forms.PerrychiropracticForm;
import bephit.forms.PhysicalexamForm;
import bephit.forms.RequestfordemandForm;
import bephit.forms.UpdateletterForm;
import bephit.forms.XrayForm;
import bephit.model.Formbill;
import bephit.model.Letterofprotection;
/*import bephit.model.Lettertopatients;
import bephit.model.Noticeassignment;
import bephit.model.Patientattorney;*/
import bephit.model.Perrychiropractic;
import bephit.model.Requestfordemand;
/*import bephit.model.Returntoschool;*/
import bephit.model.Updateletter;
import bephit.model.Xray;

@Controller
public class AdminController
{
		
	@Autowired
	  PerrychiropracticDAO perrychiropracticDAO;
	
	@Autowired
	  LetterofprotectionDAO letterofprotectionDAO;
	
	
	@Autowired
	UpdateletterDAO updateletterDAO;
	
	
	
	/*@Autowired
	LettertopatientsDAO lettertopatientsDAO;
	
	
	@Autowired
	  NoticeassignmentDAO noticeassignmentDAO;
	
	
	

	@Autowired
	  PatientattorneyDAO patientattorneyDAO;*/
	

	@Autowired
	FormbillDAO formbillDAO;
	
	

		@Autowired
	RequestfordemandDAO requestfordemandDAO;
	
	
	
	@Autowired
	 XrayDAO xrayDAO;
	
	
	@RequestMapping(value="/viewperrychiropractic", method = RequestMethod.GET)
	public String viewperrychiropractic(HttpSession session,ModelMap model) {		
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);
		
		model.addAttribute("menu","perry");
		return "viewperrychiropractic";
	}
	
	/*@RequestMapping(value="/viewpatientattorney", method = RequestMethod.GET)
	public String viewpatientattorney(HttpSession session,ModelMap model) {		
		PatientattorneyForm patientattorneyform=new PatientattorneyForm();
		patientattorneyform.setPatientattorneydetails(patientattorneyDAO.getpatientattorney());
		model.addAttribute("patientattorneyform",patientattorneyform);
		
		
		return "viewpatientattorney";
	}
	
	*/
	
	
	
	
	
	
	
	
	
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
	
		
		
	
	@RequestMapping(value="/viewletterofprotection", method = RequestMethod.GET)
	public String viewletterofprotection(HttpSession session,ModelMap model) {		
		LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
		letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionform",letterofprotectionform);
		model.addAttribute("menu","xray");
		
		return "viewletterofprotection";
	}
	
	
	@RequestMapping(value="/viewxray", method = RequestMethod.GET)
	public String viewxray(HttpSession session,ModelMap model) {		
		XrayForm xrayform=new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform",xrayform);
		model.addAttribute("menu","xray");
		
		return "viewxray";
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
	
	
	
	
	@RequestMapping(value="/editletterofprotection", method = RequestMethod.GET)
	public String editletterofprotection(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
		LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
		letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection(letterid));
		model.addAttribute("letterofprotectionform",letterofprotectionform);
		model.addAttribute("menu","xray");
		
		return "editletterofprotection";
		
			
	}
	
	
	@RequestMapping(value="/editxray", method = RequestMethod.GET)
	public String editxray(@RequestParam("xrayid") String xrayid, HttpSession session,ModelMap model) {		
		XrayForm xrayForm=new XrayForm();
		xrayForm.setxraydetails(xrayDAO.getxray(xrayid));
		model.addAttribute("xrayform",xrayForm);
		model.addAttribute("menu","xray");
		
		return "editxray";
		
			
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
	
	
	
	@RequestMapping(value="/deleteletterofprotection", method = RequestMethod.GET)
	public String deleteletterofprotection(@RequestParam("letterid")String letterid, HttpSession session,ModelMap model) {		
		
		letterofprotectionDAO.deleteletterofprotection(letterid);
		
		LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
		letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionform",letterofprotectionform);
		
		model.addAttribute("menu","xray");
		return "viewletterofprotection";
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
	
	
	
	
	
		@RequestMapping(value="/lettertopatients", method = RequestMethod.GET)
		public String lettertopatients(HttpSession session,ModelMap model) {		
			
			return "lettertopatients";
	 
	
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
		
	@RequestMapping(value="/updateletter", method = RequestMethod.GET)
	public String updateletter(HttpSession session,ModelMap model) {		
		model.addAttribute("menu","perry");
		return "updateletter";
	}
	
	
	@RequestMapping(value="/formbill", method = RequestMethod.GET)
	public String formbill(HttpSession session,ModelMap model) {		
		model.addAttribute("menu","xray");
		return "formbill";
	}
	
	@RequestMapping(value="/noticeassignment", method = RequestMethod.GET)
	public String noticeassignment(HttpSession session,ModelMap model) {		
		
		return "noticeassignment";
	}
	
	
	@RequestMapping(value="/xray", method = RequestMethod.GET)
	public String xray(HttpSession session,ModelMap model) {		
		model.addAttribute("menu","xray");
		return "xray";
	}
 
	
	@RequestMapping(value="/updateperrychiropractic", method = RequestMethod.POST)

	public String update_perrychiropractic(HttpServletRequest request,HttpSession session,@ModelAttribute("perrychiropracticdetails")  @Valid Perrychiropractic perrychiropracticdetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{ 
	
			model.addAttribute("menu","perry");
			return "perrychiropractic";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		perrychiropracticDAO.updateperrychiropractic(perrychiropracticdetails,perrychiropracticdetails.getPerryid());
		PerrychiropracticForm perrychiropracticform=new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticform",perrychiropracticform);
		
		model.addAttribute("menu","perry");
		return "viewperrychiropractic";
		 
	}
	

	
	@RequestMapping(value="/updateupdateletter", method = RequestMethod.POST)

	public String update_updateletter(HttpServletRequest request,HttpSession session,@ModelAttribute("updateletterdetails")  @Valid Updateletter updateletterdetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{ 
			model.addAttribute("menu","perry");
			return "updateletter";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		updateletterDAO.updateupdateletter(updateletterdetails,updateletterdetails.getUpdateid());
		UpdateletterForm updateletterform=new UpdateletterForm();
		updateletterform.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterform",updateletterform);
		
		model.addAttribute("menu","perry");
		return "viewupdateletter";
		 
	}

	
	
	
	@RequestMapping(value="/updaterequestfordemand", method = RequestMethod.POST)

	public String update_requestfordemand(HttpServletRequest request,HttpSession session,@ModelAttribute("requestfordemanddetails")  @Valid Requestfordemand requestfordemanddetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{ 
			model.addAttribute("menu","initial");
			return "requestfordemand";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		requestfordemandDAO.updaterequestfordemand(requestfordemanddetails,requestfordemanddetails.getRequestid());
		RequestfordemandForm requestfordemandform=new RequestfordemandForm();
		requestfordemandform.setRequestfordemanddetails(requestfordemandDAO.getrequestfordemand());
		model.addAttribute("requestfordemandform",requestfordemandform);
		
		
		return "viewrequestfordemand";
		 
	}

	
	
	
	
	@RequestMapping(value="/updateletterofprotection", method = RequestMethod.POST)

	public String update_letterofprotection(HttpServletRequest request,HttpSession session,@ModelAttribute("letterofprotectiondetails")  @Valid Letterofprotection letterofprotectiondetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{ 
			model.addAttribute("menu","xray");
			return "perrychiropractic";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		letterofprotectionDAO.updateletterofprotection(letterofprotectiondetails,letterofprotectiondetails.getLetterid());
		LetterofprotectionForm letterofprotectionform=new LetterofprotectionForm();
		letterofprotectionform.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionform",letterofprotectionform);
		
		model.addAttribute("menu","xray");
		return "viewletterofprotection";
		 
	}

	
	
	
	
	
	
	@RequestMapping(value="/updatexray", method = RequestMethod.POST)

	public String update_xray(HttpServletRequest request,HttpSession session,@ModelAttribute("xraydetails")  @Valid Xray xraydetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{ 
			model.addAttribute("menu","xray");
			return "xray";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		xrayDAO.updatexray(xraydetails,xraydetails.getXrayid());
		XrayForm xrayform=new XrayForm();
		xrayform.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayform",xrayform);
		model.addAttribute("menu","xray");
		
		return "viewxray";
		 
	}
	

	
	
	
	
	
	
	
	
	@RequestMapping(value="/updateformbill", method = RequestMethod.POST)

	public String update_formbill(HttpServletRequest request,HttpSession session,@ModelAttribute("formbilldetails")  @Valid Formbill formbilldetails,BindingResult result,ModelMap model) {
		//session.setAttribute("perrydetails",perrychiropracticdetails);
		if(result.hasErrors())
		{ 
			model.addAttribute("menu","xray");
			return "formbill";
		}	
		
		//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
		formbillDAO.updateformbill(formbilldetails,formbilldetails.getFormid());
		FormbillForm formbillForm=new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillform",formbillForm);
		
		model.addAttribute("menu","xray");
		return "viewformbill";
		 
	}
		
@RequestMapping(value="/insertperrychiropractic", method = RequestMethod.POST)

public String insert_perrychiropractic(HttpServletRequest request,HttpSession session,@ModelAttribute("perrychiropracticdetails")  @Valid Perrychiropractic perrychiropracticdetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		PerrychiropracticForm perrychiropracticForm= new PerrychiropracticForm();
		perrychiropracticForm.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
		model.addAttribute("perrychiropracticForm",perrychiropracticForm);
		model.addAttribute("Success","true");
		model.addAttribute("menu","perry");
		return "perrychiropractic";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	perrychiropracticDAO.setperrychiropractic(perrychiropracticdetails);
	PerrychiropracticForm perrychiroparcticForm= new PerrychiropracticForm();
	perrychiroparcticForm.setPerrychiropracticdetails(perrychiropracticDAO.getperrychiropractic());
	model.addAttribute("perrychiropracticForm",perrychiroparcticForm);
	/*model.addAttribute("menu", "Accident");*/
	model.addAttribute("menu","perry");
	return "perrychiropractic";
	 
}

/*@RequestMapping(value="/insertpatientattorney", method = RequestMethod.POST)

public String insert_patientattorney(HttpServletRequest request,HttpSession session,@ModelAttribute("patientattorneydetails")  @Valid Patientattorney patientattorneydetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		model.addAttribute("menu","initial");
		return "patientattorney";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	patientattorneyDAO.setpatientattorney(patientattorneydetails);
	return "patientattorney";
	 
}*/













@RequestMapping(value="/insertletterofprotection", method = RequestMethod.POST)

public String insert_letterofprotection(HttpServletRequest request,HttpSession session,@ModelAttribute("letterofprotectiondetails")  @Valid Letterofprotection letterofprotectiondetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		LetterofprotectionForm letterofprotectionForm= new LetterofprotectionForm();
		letterofprotectionForm.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
		model.addAttribute("letterofprotectionForm",letterofprotectionForm);
		model.addAttribute("menu","xray");
		model.addAttribute("Success","true");
		return "letterofprotection";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	letterofprotectionDAO.setletterofprotection(letterofprotectiondetails);
	LetterofprotectionForm letterofprotectionForm= new LetterofprotectionForm();
	letterofprotectionForm.setLetterofprotectiondetails(letterofprotectionDAO.getletterofprotection());
	model.addAttribute("letterofprotectionForm",letterofprotectionForm);
	/*model.addAttribute("menu", "Accident");*/
	model.addAttribute("menu","xray");
	return "viewletterofprotection";
	 
}

@RequestMapping(value="/insertrequestfordemand", method = RequestMethod.POST)

public String insert_requestfordemand(HttpServletRequest request,HttpSession session,@ModelAttribute("requestfordemanddetails")  @Valid Requestfordemand requestfordemanddetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		model.addAttribute("menu","initial");
		return "requestfordemand";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	requestfordemandDAO.setrequestfordemand(requestfordemanddetails);
	return "requestfordemand";
	 
}











@RequestMapping(value="/insertxray", method = RequestMethod.POST)

public String insert_xray(HttpServletRequest request,HttpSession session,@ModelAttribute("xraydetails")  @Valid Xray xraydetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		XrayForm xrayForm= new XrayForm();
		xrayForm.setxraydetails(xrayDAO.getxray());
		model.addAttribute("xrayForm",xrayForm);
		model.addAttribute("Success","true");
		model.addAttribute("menu","xray");
		return "xray";
	}	
	
	
	xrayDAO.setxray(xraydetails);
	XrayForm xrayForm= new XrayForm();
	xrayForm.setxraydetails(xrayDAO.getxray());
	model.addAttribute("xrayForm",xrayForm);
	/*model.addAttribute("menu", "Accident");*/
	model.addAttribute("menu","xray");
	return "xray";
	 
}



















@RequestMapping(value="/insertformbill", method = RequestMethod.POST)

public String insert_formbill(HttpServletRequest request,HttpSession session,@ModelAttribute("formbilldetails")  @Valid Formbill formbilldetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		FormbillForm formbillForm= new FormbillForm();
		formbillForm.setFormbilldetails(formbillDAO.getformbill());
		model.addAttribute("formbillForm",formbillForm);
		model.addAttribute("Success","true");
		model.addAttribute("menu","xray");
		return "formbill";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	FormbillForm formbillForm= new FormbillForm();
	formbillForm.setFormbilldetails(formbillDAO.getformbill());
	model.addAttribute("formbillForm",formbillForm);
	/*model.addAttribute("menu", "Accident");*/
	model.addAttribute("menu","xray");
	formbillDAO.setformbill(formbilldetails);
	return "formbill";
	 
}



@RequestMapping(value="/insertupdateletter", method = RequestMethod.POST)

public String insert_updateletter(HttpServletRequest request,HttpSession session,@ModelAttribute("updateletterdetails")  @Valid Updateletter updateletterdetails,BindingResult result,ModelMap model)
{
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		UpdateletterForm updateletterForm= new UpdateletterForm();
		updateletterForm.setUpdateletterdetails(updateletterDAO.getupdateletter());
		model.addAttribute("updateletterForm",updateletterForm);
		model.addAttribute("menu","perry");
		model.addAttribute("Success","true");
		return "updateletter";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	UpdateletterForm updateletterForm= new UpdateletterForm();
	updateletterForm.setUpdateletterdetails(updateletterDAO.getupdateletter());
	model.addAttribute("updateletterForm",updateletterForm);
	/*model.addAttribute("menu", "Accident");*/
	model.addAttribute("menu","perry");

	updateletterDAO.setupdateletter(updateletterdetails);
	return "viewupdateletter";
	 
}


/*
@RequestMapping(value="/insertlettertopatient", method = RequestMethod.POST)

public String insert_lettertopatient(HttpServletRequest request,HttpSession session,@ModelAttribute("lettertopatientsdetails")  @Valid Lettertopatients lettertopatientsdetails,BindingResult result,ModelMap model)
{
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		model.addAttribute("menu","initial");
		return "formbill";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	lettertopatientsDAO.setlettertopatients(lettertopatientsdetails);
	return "lettertopatients";
	 
}*/


/*@RequestMapping(value="/insertnoticeofassignment", method = RequestMethod.POST)

public String insert_noticeofassignment(HttpServletRequest request,HttpSession session,@ModelAttribute("noticeassignmentdetails")  @Valid Noticeassignment noticeassignmentdetails,BindingResult result,ModelMap model)
{
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		model.addAttribute("menu","initial");
		return "noticeassignment";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	noticeassignmentDAO.setnoticeassignment(noticeassignmentdetails);
	return "noticeassignment";
	 
}
*/








}
