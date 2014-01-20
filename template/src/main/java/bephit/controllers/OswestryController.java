package bephit.controllers;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bephit.dao.*;
import bephit.model.*;
import bephit.forms.*;

@Controller
public class OswestryController
{
	@Autowired 
	OswestryDAO oswestrydao;
	
	@RequestMapping (value="/oswestryindex", method = RequestMethod.GET)
	public String oswestryindex(ModelMap model)
	{
		model.addAttribute("menu","wristindex");
		return "oswestryindex";
	}
	@RequestMapping (value="/insertoswestryindex", method = RequestMethod.POST)
	public String insertoswestryindex(HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails) throws IOException
	{
		System.out.println("yes");
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
		System.out.println("yes");
		
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails());
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("menu","wristindex");
		return "viewoswestryindex";
	}
	@RequestMapping (value="/editoswestryindex", method = RequestMethod.GET)
	public String editoswestryindex(@RequestParam("oswestryno") String oswestryno,HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails) throws IOException
	{
		System.out.println("yes");
		
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails(oswestryno));
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("menu","wristindex");
		return "editoswestryindex";
	}
	
	@RequestMapping (value="/deleteoswestryindex", method = RequestMethod.GET)
	public String deleteoswestryindex(@RequestParam("oswestryno") String oswestryno,HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails) throws IOException
	{
		System.out.println("yes");
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
	public String updateoswestryindex(HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails) throws IOException
	{
		System.out.println("yes");
		oswestrydao.updateoswestryindex(oswestryindexdetails,oswestryindexdetails.getOswestryno());
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestrydao.getoswestryindexDetails());
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("success", true);
		return "viewoswestryindex";
	}
	
	
}