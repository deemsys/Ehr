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

import bephit.dao.PerrychiropracticDAO;
import bephit.dao.UpdateletterDAO;
import bephit.model.Perrychiropractic;
import bephit.model.Updateletter;

@Controller
public class AdminController
{
		
	@Autowired
	  PerrychiropracticDAO perrychiropracticDAO;
	
	
	@Autowired
	UpdateletterDAO updateletterDAO;
	
	@RequestMapping(value="/perrychiropractic", method = RequestMethod.GET)
	public String patientattorney(HttpSession session,ModelMap model) {		
		
		return "perrychiropractic";
 
	
}
	
	@RequestMapping(value="/updateletter", method = RequestMethod.GET)
	public String updateletter(HttpSession session,ModelMap model) {		
		
		return "updateletter";
	}
	
	


	
	
	
@RequestMapping(value="/insertperrychiropractic", method = RequestMethod.POST)

public String insert_perrychiropractic(HttpServletRequest request,HttpSession session,@ModelAttribute("perrychiropracticdetails")  @Valid Perrychiropractic perrychiropracticdetails,BindingResult result,ModelMap model) {
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		model.addAttribute("menu","initial");
		return "perrychiropractic";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	perrychiropracticDAO.setperrychiropractic(perrychiropracticdetails);
	return "perrychiropractic";
	 
}

@RequestMapping(value="/insertupdateletter", method = RequestMethod.POST)

public String insert_updateletter(HttpServletRequest request,HttpSession session,@ModelAttribute("updateletterdetails")  @Valid Updateletter updateletterdetails,BindingResult result,ModelMap model)
{
	//session.setAttribute("perrydetails",perrychiropracticdetails);
	if(result.hasErrors())
	{ 
		model.addAttribute("menu","initial");
		return "updateletter";
	}	
	
	//System.out.println(perrychiropracticdetails.getAddress()+""+perrychiropracticdetails.getAddress1());
	updateletterDAO.setupdateletter(updateletterdetails);
	return "updateletter";
	 
}




}
