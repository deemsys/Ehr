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
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping (value="/symptom", method = RequestMethod.GET)
	public String exam(ModelMap model)
	{
		return "symptom";
	}
	@RequestMapping (value="/updatesymptom", method = RequestMethod.POST)
	public String updatesymptom(HttpServletRequest request,ModelMap model,Symptom symptom) throws IOException
	{
		System.out.println("path"+symptom.getAchepath());
	symptomdao.updatefootexam(symptom,symptom.getSymptomno());
	SymptomForm symptomform=new SymptomForm();
	symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
	model.addAttribute("symptomform", symptomform);
	
		return "viewsymptom";
	}
	@RequestMapping (value="/insertsymptom", method = RequestMethod.POST)
	public String exams(HttpServletRequest request,ModelMap model,Symptom symptom) throws IOException
	{
		System.out.println("path"+symptom.getAchepath());
	symptomdao.insertsymptomimage(symptom);
	
		return "symptom";
	}
	
	
	
	@RequestMapping (value="/symptom1", method = RequestMethod.GET)
	public String exam1(ModelMap model,Symptom symptom) throws MalformedURLException
	{
		
		//String image=hipexamdao.images();
		//System.out.println("image"+image);
		 // Inherited from HttpServlet.
		
		
		//String path = context.getResource("resources/images/symptom.png").getPath();
		//System.out.println("path"+path);
		model.addAttribute("images","resources/images/symptom.png");
		return "symptom";
	}
	
	
}