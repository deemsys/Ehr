package bephit.controllers;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.awt.*;
import java.awt.event.*;
import java.awt.image.*;

import javax.imageio.ImageIO;
import javax.swing.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import bephit.dao.*;
import bephit.forms.*;
import bephit.model.*;


@Controller
public class SymptomController
{
	@Autowired 
	SymptomDAO symptomdao;
	
	@Autowired 
	ManualtherapyDAO therapydao;
	
	@Autowired 
	WristindexDAO wristdao;
	
	   
	  
	@RequestMapping (value="/viewsymptom", method = RequestMethod.GET)
	public String viewsymptom(ModelMap model)	
	{
		SymptomForm symptomform=new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
		model.addAttribute("symptomform", symptomform);
		return "viewsymptom";
	}
	@RequestMapping (value="/viewsymptomlist", method = RequestMethod.GET)
	public String viewsymptom(@RequestParam(value="symptomno") String symptomno,ModelMap model)	
	{
		System.out.println("sym"+symptomno);
		SymptomForm symptomform=new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails(symptomno));
		model.addAttribute("symptomform", symptomform);
		return "symptomlist";
	}
	@RequestMapping (value="/editsymptom", method = RequestMethod.GET)
	public String editsymptom(@RequestParam(value="symptomno") String symptomno,ModelMap model)	
	{
		System.out.println("sym"+symptomno);
		SymptomForm symptomform=new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails(symptomno));
		model.addAttribute("symptomform", symptomform);
		return "editsymptom";
	}
	@RequestMapping (value="/deletesymptom", method = RequestMethod.GET)
	public String deletesymptom(@RequestParam(value="symptomno") String symptomno,ModelMap model)	
	{
		System.out.println("sym"+symptomno);
		symptomdao.deletesymptomdetails(symptomno);
		SymptomForm symptomform=new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
		model.addAttribute("symptomform", symptomform);
		return "viewsymptom";
	}
	@RequestMapping (value="/manual", method = RequestMethod.GET)
	public String manual(ModelMap model)
	{
		return "manualtherapy";
	}
	@RequestMapping (value="/viewmanualtherapy", method = RequestMethod.GET)
	public String viewmanualtherapy(ModelMap model)	
	{
		ManualTherapyForm manualform=new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);
		
		
		return "viewmanualtherapy";
	}
	@RequestMapping (value="/deletemanualtherapy", method = RequestMethod.GET)
	public String deletemanualtherapy(@RequestParam(value="manualtherapyno") String manualtherapyno,ModelMap model)	
	{
		System.out.println("sym"+manualtherapyno);
		therapydao.deletemanualtherapydetails(manualtherapyno);
		ManualTherapyForm manualform=new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);
		
		return "viewmanualtherapy";
	}
	@RequestMapping (value="/editmanualtherapy", method = RequestMethod.GET)
	public String editmanualtherapy(@RequestParam(value="manualtherapyno") String manualtherapyno,ModelMap model)	
	{
		System.out.println("sym"+manualtherapyno);		
		ManualTherapyForm manualform=new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails(manualtherapyno));
		model.addAttribute("manualform", manualform);
		
		return "editmanualtherapy";
	}
	
	@RequestMapping (value="/manualtherapylist", method = RequestMethod.GET)
	public String manualtherapylist(@RequestParam(value="manualtherapyno") String manualtherapyno,ModelMap model)	
	{
		System.out.println("sym"+manualtherapyno);		
		ManualTherapyForm manualform=new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails(manualtherapyno));
		model.addAttribute("manualform", manualform);
		
		return "manualtherapylist";
	}
	
	@RequestMapping (value="/symptom", method = RequestMethod.GET)
	public String exam(ModelMap model)
	{
		return "symptom";
	}
	
	
	@RequestMapping (value="/wristdisabilityindex", method = RequestMethod.GET)
	public String wristdisabilityindex(ModelMap model)
	{
		return "wristindex";
	}
	
	@RequestMapping (value="/updatesymptom", method = RequestMethod.POST)
	public String updatesymptom(HttpServletRequest request,ModelMap model,Symptom symptom) throws IOException
	{
		System.out.println("path"+symptom.getAchepath());
	symptomdao.updatefootexam(symptom,symptom.getSymptomno());
	SymptomForm symptomform=new SymptomForm();
	symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
	model.addAttribute("symptomform", symptomform);
	model.addAttribute("success", true);
		return "viewsymptom";
	}
	@RequestMapping (value="/insertsymptom", method = RequestMethod.POST)
	public String exams(HttpServletRequest request,ModelMap model,Symptom symptom) throws IOException
	{
		System.out.println("path"+symptom.getAchepath());
	symptomdao.insertsymptomimage(symptom);
	model.addAttribute("success", true);
		return "viewsymptom";
	}
	
	
	@RequestMapping (value="/inserttherapy", method = RequestMethod.POST)
	public String therapy(HttpServletRequest request,ModelMap model,Manualtherapy therapy) throws IOException
	{
		therapydao.inserttherapydetails(therapy);
		ManualTherapyForm manualform=new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);
		model.addAttribute("success", true);
		return "viewmanualtherapy";
	}
	@RequestMapping (value="/insertwristindex", method = RequestMethod.POST)
	public String insertwristindex(HttpServletRequest request,ModelMap model,Wristindex wristindexdetails) throws IOException
	{
		wristdao.insertwristindex(wristindexdetails);
		/*ManualTherapyForm manualform=new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);*/
		model.addAttribute("success", true);
		return "wristindex";
	}
	
	@RequestMapping (value="/updatetherapy", method = RequestMethod.POST)
	public String updatetherapy(HttpServletRequest request,ModelMap model,Manualtherapy therapy) throws IOException
	{
		
		therapydao.updatemanualtherapy(therapy,therapy.getManualtherapyno());
		ManualTherapyForm manualform=new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);
		model.addAttribute("success", true);
		return "viewmanualtherapy";
	}	
		
}