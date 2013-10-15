package bephit.controllers;
 
 

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import bephit.dao.AutoaccidentDAO;
import bephit.dao.HardshipagreementDAO;
import bephit.dao.InsuranceinformationDAO;
import bephit.dao.InsuranceplanDAO;
import bephit.dao.InsuranceverificationDAO;
import bephit.dao.MainDAO;
import bephit.dao.SignupDAO;
import bephit.dao.StaffchecklistDAO;
import bephit.dao.WorkaccidentDAO;
import bephit.forms.AutoaccidentForm;
import bephit.forms.HardshipagreementForm;
import bephit.forms.InsuranceinformationForm;
import bephit.forms.InsuranceplanForm;
import bephit.forms.InsuranceverificationForm;
import bephit.forms.ParticipantsDetailsForm;
import bephit.forms.SignupForm;
import bephit.forms.StaffchecklistForm;
import bephit.forms.WorkaccidentForm;
import bephit.model.*;

 
 
@Controller
@SessionAttributes
public class MainController {
	
	@Autowired  
	MainDAO mainDAO; 
	
	@Autowired  
	AutoaccidentDAO autoDAO;
	
	@Autowired
	WorkaccidentDAO workDAO;
	
	@Autowired
	InsuranceinformationDAO infoDAO;
	
	@Autowired
	InsuranceverificationDAO veriDAO;
	
	@Autowired
	InsuranceplanDAO planDAO;
	
	@Autowired
	HardshipagreementDAO hardDAO;
	
	@Autowired
	StaffchecklistDAO staffDAO;
	
	@Autowired
	SignupDAO signDAO;
	
	
	
	
	
 
	@RequestMapping(value={"/", "/welcome"}, method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		
		ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		participantsDetailsForm.setParticipantsDetails(mainDAO.getParticipants());
        model.addAttribute("participantsDetailsForm", participantsDetailsForm);
		
		return "dashboard";
 
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
 
	}
	@RequestMapping(value="/autoaccident", method = RequestMethod.GET)
	public String autoaccident(ModelMap model) {
		
		return "autoaccident";
 
	}
	@RequestMapping(value="/autoaccident", method = RequestMethod.POST)
	public String insert_autoaccident(@ModelAttribute("Autoaccident")  @Valid Autoaccident autoaccident,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
			autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
			model.addAttribute("AutoaccidentForm",autoaccidentForm);
			model.addAttribute("Success","true");
			return "autoaccident";
		}
		
		
		
		
		
		model.put("Autoaccident", autoaccident);
		model.addAttribute("AutoaccidentForm",autoaccident);
    	int a=autoDAO.setAutoaccident(autoaccident);
		AutoaccidentForm autoaccidentForm= new AutoaccidentForm();
		autoaccidentForm.setAutoaccident(autoDAO.getAutoaccident());
		model.addAttribute("AutoaccidentForm",autoaccidentForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "autoaccident";
 
	}
	@RequestMapping(value="/workaccident", method = RequestMethod.GET)
	public String workaccident(ModelMap model) {
		
		return "workaccident";
 
	}
	
	@RequestMapping(value="/workaccident", method = RequestMethod.POST)
	public String insert_workaccident(@ModelAttribute("Workaccident")  @Valid Workaccident workaccident,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			WorkaccidentForm workaccidentForm= new WorkaccidentForm();
			workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
			model.addAttribute("WorkaccidentForm",workaccidentForm);
			model.addAttribute("Success","true");
			return "workaccident";
		}
		
		
		
		model.put("Workaccident", workaccident);
		model.addAttribute("WorkaccidentForm",workaccident);
    	int b =workDAO.setWorkaccident(workaccident);
		WorkaccidentForm workaccidentForm= new WorkaccidentForm();
		workaccidentForm.setWorkaccident(workDAO.getWorkaccident());
		model.addAttribute("WorkaccidentForm",workaccidentForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "workaccident";
	}
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.GET)
	public String insuranceinformation(ModelMap model) {
		
		return "insuranceinformation";
 
	}
	
	@RequestMapping(value="/insuranceinformation", method = RequestMethod.POST)
	public String insert_insuranceinformation(@ModelAttribute("Insuranceinformation")  @Valid Insuranceinformation insuranceinformation,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
	    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
			model.addAttribute("InsuranceinformationForm",insuranceinformationForm);
			model.addAttribute("Success","true");
			return "insuranceinformation";
	
		}
		
		
		model.put("Insuranceinformation", insuranceinformation);
		model.addAttribute("InsuranceinformationForm",insuranceinformation);
    	int c =infoDAO.setInsuranceinformation(insuranceinformation);
    	InsuranceinformationForm insuranceinformationForm= new InsuranceinformationForm();
    	insuranceinformationForm.setInsuranceinformation(infoDAO.getInsuranceinformation());
		model.addAttribute("InsuranceinformationForm",insuranceinformationForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceinformation";
	}
	
	@RequestMapping(value="/insuranceverification", method = RequestMethod.GET)
	public String insuranceverification(ModelMap model) {
		
		return "insuranceverification";
 
	}
	
	@RequestMapping(value="/insuranceverification", method = RequestMethod.POST)
	public String insert_insuranceverification(@ModelAttribute("Insuranceverification")  @Valid Insuranceverification insuranceverification,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
	    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
			model.addAttribute("InsuranceverificationForm",insuranceverificationForm);
			model.addAttribute("Success","true");
			return "insuranceverification";
		}
		
		
		model.put("Insuranceverification", insuranceverification);
		model.addAttribute("InsuranceverificationForm",insuranceverification);
    	int d =veriDAO.setInsuranceverification(insuranceverification);
    	InsuranceverificationForm insuranceverificationForm= new InsuranceverificationForm();
    	insuranceverificationForm.setInsuranceverification(veriDAO.getInsuranceverification());
		model.addAttribute("InsuranceverificationForm",insuranceverificationForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceverification";
	}
	@RequestMapping(value="/insuranceplan", method = RequestMethod.GET)
	public String insuranceplan(ModelMap model) {
		
		return "insuranceplan";
 
	}
	
	@RequestMapping(value="/insuranceplan", method = RequestMethod.POST)
	public String insert_insuranceplan(@ModelAttribute("Insuranceplan") @Valid Insuranceplan insuranceplan,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
	    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
			model.addAttribute("InsuranceplanForm",insuranceplanForm);
			model.addAttribute("Success","true");
			return "insuranceplan";
			
		}
		
		
		
		model.put("Insuranceplan", insuranceplan);
		model.addAttribute("InsuranceplanForm",insuranceplan);
    	int e =planDAO.setInsuranceplan(insuranceplan);
    	InsuranceplanForm insuranceplanForm= new InsuranceplanForm();
    	insuranceplanForm.setInsuranceplan(planDAO.getInsuranceplan());
		model.addAttribute("InsuranceplanForm",insuranceplanForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "insuranceplan";
	}
	
	@RequestMapping(value="/hardshipagreement", method = RequestMethod.GET)
	public String hardshipagreement(ModelMap model) {
		
		return "hardshipagreement";
 
	}
	

	@RequestMapping(value="/hardshipagreement", method = RequestMethod.POST)
	public String insert_hardshipagreement(@ModelAttribute("Hardshipagreement") @Valid Hardshipagreement Hardshipagreement,BindingResult result,ModelMap model) {
		 
		if(result.hasErrors())
		{
			HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
	    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
			model.addAttribute("HardshipagreementForm",hardshipagreementForm);
			model.addAttribute("Success","true");
			return "hardshipagreement";
		}
		/*model.put("Hardshipagreement", hardshipagreement);*/
		model.addAttribute("HardshipagreementForm",Hardshipagreement);
    	int f =hardDAO.setHardshipagreement(Hardshipagreement);
    	HardshipagreementForm hardshipagreementForm= new HardshipagreementForm();
    	hardshipagreementForm.setHardshipagreement(hardDAO.getHardshipagreement());
		model.addAttribute("HardshipagreementForm",hardshipagreementForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "hardshipagreement";
	}
	
	@RequestMapping(value="/staffchecklist", method = RequestMethod.GET)
	public String staffchecklist(ModelMap model) {
		
		return "staffchecklist";
 
	}
	
	@RequestMapping(value="/staffchecklist", method = RequestMethod.POST)
	public String insert_staffchecklist(@ModelAttribute("Staffchecklist")  @Valid Staffchecklist staffchecklist,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
	    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
			model.addAttribute("StaffchecklistForm",staffchecklistForm);
			model.addAttribute("Success","true");
			return "staffchecklist";
		}
		
		model.put("Staffchecklist", staffchecklist);
		model.addAttribute("StaffchecklistForm",staffchecklist);
    	int g =staffDAO.setStaffchecklist(staffchecklist);
    	StaffchecklistForm staffchecklistForm= new StaffchecklistForm();
    	staffchecklistForm.setStaffchecklist(staffDAO.getStaffchecklist());
		model.addAttribute("StaffchecklistForm",staffchecklistForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "staffchecklist";
	}
	
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String signup(ModelMap model) {
		
		return "signup";
 
	}
	

	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String insert_signup(@ModelAttribute("Signup")  @Valid Signup signup,BindingResult result,ModelMap model) {
		if(result.hasErrors())
		{
			SignupForm signupForm= new SignupForm();
	    	signupForm.setSignup(signDAO.getSignup());
			model.addAttribute("SignupForm",signupForm);
			model.addAttribute("Success","true");
			return "signup";
		}
		
		model.put("Signup", signup);
		model.addAttribute("SignupForm",signup);
    	int h =signDAO.setSignup(signup);
    	SignupForm signupForm= new SignupForm();
    	signupForm.setSignup(signDAO.getSignup());
		model.addAttribute("SignupForm",signupForm);

		//System.out.println(autoaccident.getAdjustersname());
	    
		
		return "signup";
	}
	
	
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
		model.addAttribute("error", "true");
		return "login";
 
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "login";
 
	}
	
	@RequestMapping(value="/createuser", method=RequestMethod.GET)
	public String createSpitterProfile(Model model) {
		model.addAttribute(new UserProfile());
	return "edit";
	}
	
	@RequestMapping(value="/submituser", method=RequestMethod.POST)
	public String addUserProfileFromForm(UserProfile userProfile) {
		
		System.out.println("Save User" + userProfile.getFullName());
		return "/welcome";
	}
	
	@RequestMapping(value="/showaddparticipants", method=RequestMethod.GET)
	public String showAddParticipants(ModelMap model) {
		//model.addAttribute(new UserProfile());
		return "addparticipants";
	}
	@RequestMapping(value="/viewparticipants", method=RequestMethod.GET)
	public String viewParticipants(ModelMap model) {
		
		return "viewparticipants";
	}
	@RequestMapping(value="/showaddparticipantgroups", method=RequestMethod.GET)
	public String showAddParticipantGroups(ModelMap model) {
		
		return "addparticipantgroups";
	}
	@RequestMapping(value="/viewparticipantgroups", method=RequestMethod.GET)
	public String viewParticipantGroups(ModelMap model) {
		
		return "viewparticipantgroups";
	}
	
	@RequestMapping(value="/showaddadminuser", method=RequestMethod.GET)
	public String showAddadminUser(ModelMap model) {
		
		return "addadminuser";
	}
	@RequestMapping(value="/viewadminuser", method=RequestMethod.GET)
	public String viewAdminUser(ModelMap model) {
		
		return "viewadminuser";
	}
	
	@RequestMapping(value="/activityofadmin", method=RequestMethod.GET)
	public String activityOfAdmin(ModelMap model) {
		
		return "activityofadmin";
	}
	
	@RequestMapping(value="/textmsgsettings", method=RequestMethod.GET)
	public String textMsgSettings(ModelMap model) {
		
		return "textmsg";
	}
  }