package bephit.controllers;
import java.io.IOException;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.xml.ws.Binding;


import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import bephit.dao.*;
import bephit.model.*;
import bephit.forms.*;

@Controller
@SessionAttributes({"oswestrydisability"})
public class OswestryController
{
	@Autowired 
	OswestryDAO oswestrydao;
	
	@RequestMapping (value="/oswestryindex", method = RequestMethod.GET)
	public String oswestryindex(HttpSession session,ModelMap model)
	{
		session.removeAttribute("oswestrydisability");
		model.addAttribute("menu","wristindex");
		return "oswestryindex";
	}
	@RequestMapping (value="/insertoswestryindex", method = RequestMethod.POST)

	public String insertoswestryindex(HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("oswestrydetails") @Valid Oswestry oswestryindexdetails,BindingResult result) throws IOException

	{

		session.setAttribute("oswestrydisability",oswestryindexdetails);
		if(result.hasErrors())
		{
			model.addAttribute("menu","wristindex");
			return "oswestryindex";
		}

		oswestrydao.insertoswestryindex(oswestryindexdetails);
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails());
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("success", true);
		return "viewoswestryindex";
	}
	@RequestMapping (value="/viewoswestryindex", method = RequestMethod.GET)
	public String viewoswestryindex(HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails) throws IOException
	{
		
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails());
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("menu","wristindex");
		model.addAttribute("noofrows",oswestryindexform.getOswestrydetails().size());       
	    oswestryindexform.setOswestrydetails(oswestrydao.getlimitedoswestry(1));
	    model.addAttribute("noofpages",(int) Math.ceil(oswestrydao.getnoofoswestryindex() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewoswestryindex";

	}	

	@RequestMapping(value="/viewoswestryindex_page", method=RequestMethod.GET)
	public String viewoswestryindex_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		OswestryForm oswestryindexform = new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getlimitedoswestry(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(oswestrydao.getnoofoswestryindex() * 1.0 / 5));
	   	model.addAttribute("oswestryform", oswestryindexform);	
	   	model.addAttribute("noofrows",oswestryindexform.getOswestrydetails().size());   
	    model.addAttribute("currentpage",page);
	    model.addAttribute("menu", "wristindex");
	    model.addAttribute("button","viewall");
	    return "viewoswestryindex";
		
	}	

	@RequestMapping(value={"/", "/viewalloswestryindex"}, method = RequestMethod.GET)
	public String viewalloswestryindex(HttpServletRequest request,ModelMap model, Principal principal ) {
		
	OswestryForm oswestryindexform = new OswestryForm();
	    oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails());
		
	    model.addAttribute("oswestryform", oswestryindexform);	
		model.addAttribute("noofrows",oswestryindexform.getOswestrydetails().size());    
	   
		model.addAttribute("menu", "wristindex");
	    model.addAttribute("button","close");
	      
	    model.addAttribute("menu", "wristindex");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
	        return "viewoswestryindex";

	}

	@RequestMapping (value="/editoswestryindex", method = RequestMethod.GET)
	public String editoswestryindex(@RequestParam("oswestryno") String oswestryno,HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails) throws IOException
	{
		
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails(oswestryno));
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("menu","wristindex");
		return "editoswestryindex";
	}
	
	@RequestMapping (value="/deleteoswestryindex", method = RequestMethod.GET)
	public String deleteoswestryindex(@RequestParam("oswestryno") String oswestryno,HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails) throws IOException
	{
		
		oswestrydao.deleteoswestryindex(oswestryno);
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails());
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("success",true);
		model.addAttribute("menu","wristindex");
		return "viewoswestryindex";
	}
	@RequestMapping (value="/oswestryindexlist", method = RequestMethod.GET)
	public String oswestryindexlist(@RequestParam("oswestryno") String oswestryno,HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails) throws IOException
	{
		
		
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails(oswestryno));
		model.addAttribute("oswestryform", oswestryindexform);		
		model.addAttribute("menu","wristindex");
		return "oswestryindexlist";
	}
	
	@RequestMapping (value="/updateoswestryindex", method = RequestMethod.POST)
	public String updateoswestryindex(HttpServletRequest request,ModelMap model,@ModelAttribute("oswestrydetails") @Valid Oswestry oswestryindexdetails,BindingResult result) throws IOException
	{

	if(result.hasErrors())
	{
		model.addAttribute("menu","wristindex");
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails(oswestryindexdetails.getOswestryno()));
		model.addAttribute("oswestryform", oswestryindexform);

		return "editoswestryindex";
	}

		oswestrydao.updateoswestryindex(oswestryindexdetails,oswestryindexdetails.getOswestryno());
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails());
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("success", true);
		return "viewoswestryindex";
	}
	
	
}