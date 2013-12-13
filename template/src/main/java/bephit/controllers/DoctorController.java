	package bephit.controllers;
 
 

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import bephit.dao.AssignmentDAO;
import bephit.dao.AutoaccidentDAO;
import bephit.dao.DoctorsignupDAO;
/*import bephit.dao.DoctorsignupDAO;*/
//import bephit.dao.DoctorsignupDAO;
import bephit.dao.DoctorsearchDAO;
import bephit.dao.HamiltonchiropracticDAO;
import bephit.dao.HardshipagreementDAO;
import bephit.dao.HippaDAO;
import bephit.dao.InsuranceinformationDAO;
import bephit.dao.InsuranceplanDAO;
import bephit.dao.InsuranceverificationDAO;
import bephit.dao.LumbopelvicexamDAO;
import bephit.dao.MainDAO;
import bephit.dao.MedicalDAO;
import bephit.dao.MoretestDAO;

import bephit.dao.PatientDAO;
import bephit.dao.SoapnotesDAO;

import bephit.dao.PhysicalexamDAO;

import bephit.dao.RadiologicReportDAO;

import bephit.dao.ScreenDAO;
import bephit.dao.SignupDAO;
import bephit.dao.StaffchecklistDAO;
import bephit.dao.TreatDAO;
import bephit.dao.TreatMinorDAO;
import bephit.dao.WorkaccidentDAO;
import bephit.forms.AssignmentDetailsForm;
import bephit.forms.AutoaccidentForm;

/*import bephit.forms.DoctorsignupForm;*/

//import bephit.forms.DoctorsignupForm;

import bephit.forms.DoctorsearchForm;
import bephit.forms.DoctorsignupForm;
import bephit.forms.HamiltonchiropracticForm;
import bephit.forms.HardshipagreementForm;
import bephit.forms.HippaPrivacyForm;
import bephit.forms.InsuranceinformationForm;
import bephit.forms.InsuranceplanForm;
import bephit.forms.InsuranceverificationForm;
import bephit.forms.LumbopelvicexamForm;
import bephit.forms.MedicalRecordsForm;
import bephit.forms.MoretestForm;

import bephit.forms.ParticipantsDetailsForm;
import bephit.forms.SoapnotesForm;



import bephit.forms.PatientDetailsForm;

import bephit.forms.PhysicalexamForm;

import bephit.forms.RadiologicReportForm;

import bephit.forms.ScreeningAuthzForm;
import bephit.forms.SignupForm;
import bephit.forms.StaffchecklistForm;
import bephit.forms.TreatForm;
import bephit.forms.TreatMinorDetailsForm;
import bephit.forms.WorkaccidentForm;
import bephit.model.*;

 
 
@Controller
public class DoctorController {
	@Autowired
	LumbopelvicexamDAO lumboDAO;
	
	@RequestMapping(value="/lumbopelvicexam", method = RequestMethod.GET)
	public String searchform(HttpSession session, ModelMap model) {
		
		
		return "lumbopelvicexam";
 
	}

	@RequestMapping(value="/lumbopelvicexam", method = RequestMethod.POST)
	public String insert_lumbopelvicexam(HttpSession session,@ModelAttribute("Lumbopelvicexam")  @Valid Lumbopelvicexam lumbopelvicexam,BindingResult result,ModelMap model) {
		
		model.put("Lumbopelvicexam", lumbopelvicexam);
		model.addAttribute("LumbopelvicexamForm",lumbopelvicexam);
    	int a=lumboDAO.setLumbopelvicexam(lumbopelvicexam);
		LumbopelvicexamForm lumbopelvicexamForm= new LumbopelvicexamForm();
		lumbopelvicexamForm.setLumbopelvicexam(lumboDAO.getLumbopelvicexam());
		model.addAttribute("lumbopelvicexamForm",lumbopelvicexamForm);
		return "lumbopelvicexam";
 
	}

	}
	
  