package bephit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bephit.dao.FaxcoverDAO;
import bephit.dao.FormbillDAO;
import bephit.dao.LetterofprotectionDAO;
import bephit.dao.LettertopatientsDAO;
import bephit.dao.NoticeassignmentDAO;
import bephit.dao.PatientDAO;
import bephit.dao.Patientattorney1DAO;
import bephit.dao.PerrychiropracticDAO;
import bephit.dao.PimedpayDAO;
import bephit.dao.RequestfordemandDAO;
import bephit.dao.ResponseattorneyDAO;
import bephit.dao.ReturntoschoolDAO;
import bephit.dao.UpdateletterDAO;
import bephit.dao.WorkschoolDAO;
import bephit.dao.XrayDAO;
import bephit.forms.InsuranceverificationForm;
import bephit.forms.PerrychiropracticForm;

@Controller
public class Searchcontroller
{
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

	
	/*@RequestMapping(value="/perrychiropractic", method = RequestMethod.GET)
	public String perrychiropracticlist(HttpSession session,ModelMap model) {		
	model.addAttribute("menu","perry");
				return "perrychiropractic";
	}*/
	
	@RequestMapping(value="/samplefiles", method = RequestMethod.GET)
	public String sampleperrychiropracticlist(HttpSession session,ModelMap model) {		
	model.addAttribute("menu","perry");
				return "samplefile";
	}
	
	@RequestMapping(value="/perrychiropracticsearch", method = RequestMethod.POST)
	public String searchperrychiropracticlist(HttpServletRequest request,HttpSession session,ModelMap model) {		
	model.addAttribute("menu","perry");
	String username=request.getParameter("username");
	System.out.println("username"+username);
	if(patientDAO.getUsername(username).size()==0)
	{
		model.addAttribute("nsearch",true);
		return "perrychiropracticsearch";
	}
	if(perrychiropracticDAO.getusernameperrychiropractic(username).size()>0)
	{
		PerrychiropracticForm perrychiropracticform = new PerrychiropracticForm();
		perrychiropracticform.setPerrychiropracticdetails(perrychiropracticDAO.getusernameperrychiropractic(username));
		model.addAttribute("perrychiropracticform", perrychiropracticform);
		model.addAttribute("menu", "perry");
		return "editperrychiropractic";
	}		
	model.addAttribute("username",username);	
	return "perrychiropractic";
	}
	
	
	
}