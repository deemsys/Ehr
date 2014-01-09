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
	HipquestionnaireDAO hipquestionnairedao;
	
	@Autowired 
	ManualtherapyDAO therapydao;
	
	@Autowired 
	WristindexDAO wristdao;
	
	@Autowired 
	NeckindexDAO neckdao;
	
	   
	  
	@RequestMapping (value="/viewsymptom", method = RequestMethod.GET)
	public String viewsymptom(ModelMap model)	
	{
		SymptomForm symptomform=new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
		model.addAttribute("symptomform", symptomform);
		model.addAttribute("menu","symptom");
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
		model.addAttribute("menu","symptom");
		return "symptom";
	}
	
	
	@RequestMapping (value="/wristdisabilityindex", method = RequestMethod.GET)
	public String wristdisabilityindex(ModelMap model)
	{
		
		return "wristindex";
	}
	@RequestMapping (value="/hipquestionnaire", method = RequestMethod.GET)
	public String hipquestionnaireindex(ModelMap model)
	{
		
		return "hipquestionnaire";
	}
	@RequestMapping (value="/inserthipquestionnaire", method = RequestMethod.POST)
	public String exams(HttpServletRequest request,ModelMap model,Hipquestionnaire hipquestionnaire) throws IOException
	{
		
    hipquestionnairedao.inserthipquestionnaire(hipquestionnaire);
	model.addAttribute("success", true);
	HipquestionnaireForm hipquestionnaireform=new HipquestionnaireForm();
	hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.gethipquestionnairedetails());
	model.addAttribute("hipquestionnaireform", hipquestionnaireform);
		return "viewhipquestionnaire";
	}
	@RequestMapping (value="/updatehipquestionnaire", method = RequestMethod.POST)
	public String updatehipquestionnaire(HttpServletRequest request,ModelMap model,Hipquestionnaire hipquestionnaire) throws IOException
	{
		
    hipquestionnairedao.updatequestionnaire(hipquestionnaire, hipquestionnaire.getHipquestionno());
	model.addAttribute("success", true);
	HipquestionnaireForm hipquestionnaireform=new HipquestionnaireForm();
	hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.gethipquestionnairedetails());
	model.addAttribute("hipquestionnaireform", hipquestionnaireform);
		return "hipquestionnaire";
	}
	@RequestMapping (value="/viewhipquestionnaire", method = RequestMethod.GET)
	public String viewhipquestionnaire(HttpServletRequest request,ModelMap model,Hipquestionnaire hipquestionnaire) throws IOException
	{	

	HipquestionnaireForm hipquestionnaireform=new HipquestionnaireForm();
	hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.gethipquestionnairedetails());
	model.addAttribute("hipquestionnaireform", hipquestionnaireform);
	return "viewhipquestionnaire";
	}
	@RequestMapping (value="/edithipquestionnaire", method = RequestMethod.GET)
	public String edithipquestionnaire(@RequestParam("hipquestionno") String hipquestionno,HttpServletRequest request,ModelMap model,Hipquestionnaire hipquestionnaire) throws IOException
	{	
    System.out.println(hipquestionno);
	HipquestionnaireForm hipquestionnaireform=new HipquestionnaireForm();
	hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.gethipquestionnairedetails(hipquestionno));
	model.addAttribute("hipquestionnaireform", hipquestionnaireform);
	System.out.print(hipquestionnaireform.getHipquestionnairedetails().get(0).getStiff());
	return "edithipquestionnaire";
	}
	@RequestMapping (value="/hipquestionnairelist", method = RequestMethod.GET)
	public String hipquestionnairelist(@RequestParam("hipquestionno") String hipquestionno,HttpServletRequest request,ModelMap model,Hipquestionnaire hipquestionnaire) throws IOException
	{	
    System.out.println(hipquestionno);
	HipquestionnaireForm hipquestionnaireform=new HipquestionnaireForm();
	hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.gethipquestionnairedetails(hipquestionno));
	model.addAttribute("hipquestionnaireform", hipquestionnaireform);
	System.out.print(hipquestionnaireform.getHipquestionnairedetails().get(0).getStiff());
	return "hipquestionnairelist";
	}
	@RequestMapping (value="/deletehipquestionnaire", method = RequestMethod.GET)
	public String deletehipquestionnaire(@RequestParam("hipquestionno") String hipquestionno,HttpServletRequest request,ModelMap model,Hipquestionnaire hipquestionnaire) throws IOException
	{	
    System.out.println(hipquestionno);
    hipquestionnairedao.deletequestionnaire(hipquestionno);
	HipquestionnaireForm hipquestionnaireform=new HipquestionnaireForm();
	hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.gethipquestionnairedetails());
	model.addAttribute("hipquestionnaireform", hipquestionnaireform);
	model.addAttribute("success", true);
	//System.out.print(hipquestionnaireform.getHipquestionnairedetails().get(0).getStiff());
	return "viewhipquestionnaire";
	}

	@RequestMapping (value="/neckindex", method = RequestMethod.GET)
	public String neckindex(ModelMap model)
	{
		model.addAttribute("menu","neckindex");
		model.addAttribute("success", true);
		return "neckindex";
	}
	@RequestMapping (value="/viewwristindex", method = RequestMethod.GET)
	public String viewwristindex(ModelMap model)	
	{
		WristindexForm wristindexform=new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu","wristindex");
		return "viewwristindex";
	}
	@RequestMapping (value="/viewneckindex", method = RequestMethod.GET)
	public String viewneckindex(ModelMap model)	
	{
		NeckindexForm neckindexform=new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu","neckindex");
		return "viewneckindex";
	}
	@RequestMapping (value="/wristindexlist", method = RequestMethod.GET)
	public String viewwristindexlist(@RequestParam(value="wristindexno") String wristindexno,ModelMap model)	
	{
		
		WristindexForm wristindexform=new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getwristindexDetails(wristindexno));
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu","wristindex");
		return "wristindexlist";
	}
	@RequestMapping (value="/neckindexlist", method = RequestMethod.GET)
	public String viewneckindexlist(@RequestParam(value="neckindexno") String neckindexno,ModelMap model)	
	{
		
		NeckindexForm neckindexform=new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getneckindexDetails(neckindexno));
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu","neckindex");
		return "neckindexlist";
	}
	@RequestMapping (value="/editwristindex", method = RequestMethod.GET)
	public String editwristindex(@RequestParam(value="wristindexno") String wristindexno,ModelMap model)	
	{
		System.out.println("sym"+wristindexno);
		WristindexForm wristindexform=new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getwristindexDetails(wristindexno));
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu","wristindex");
		return "editwristindex";
	}
	@RequestMapping (value="/editneckindex", method = RequestMethod.GET)
	public String editneckindex(@RequestParam(value="neckindexno") String neckindexno,ModelMap model)	
	{
		System.out.println("sym"+neckindexno);
		NeckindexForm neckindexform=new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getneckindexDetails(neckindexno));
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu","neckindex");
		return "editneckindex";
	}
	@RequestMapping (value="/deleteneckindex", method = RequestMethod.GET)
	public String deleteneckindex(@RequestParam(value="neckindexno") String neckindexno,ModelMap model)	
	{
		neckdao.deleteneckindex(neckindexno);
		NeckindexForm neckindexform=new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu","neckindex");
		model.addAttribute("success", true);
		return "viewneckindex";
	}
	@RequestMapping (value="/deletewristindex", method = RequestMethod.GET)
	public String deletewristindex(@RequestParam(value="wristindexno") String wristindexno,ModelMap model)	
	{
		wristdao.deletewristindex(wristindexno);
		WristindexForm wristindexform=new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu","wristindex");
		model.addAttribute("success", true);
		return "viewwristindex";
	}
	@RequestMapping (value="/updatewristindex", method = RequestMethod.POST)
	public String updatewristindex(HttpServletRequest request,ModelMap model,Wristindex wristindex) throws IOException
	{
	System.out.println(wristindex.getWristindexno());	
	wristdao.updatewristindex(wristindex, wristindex.getWristindexno());
	WristindexForm wristindexform=new WristindexForm();
	wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
	model.addAttribute("wristindexform", wristindexform);
	model.addAttribute("success", true);
	return "viewwristindex";
	}
	@RequestMapping (value="/updateneckindex", method = RequestMethod.POST)
	public String updateneckindex(HttpServletRequest request,ModelMap model,Neckindex neckindex) throws IOException
	{
	System.out.println(neckindex.getNeckindexno());	
	neckdao.updateneckindex(neckindex, neckindex.getNeckindexno());
	NeckindexForm neckindexform=new NeckindexForm();
	neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
	model.addAttribute("neckindexform", neckindexform);
	model.addAttribute("success", true);
	return "viewneckindex";
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
	SymptomForm symptomform=new SymptomForm();
	symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
	model.addAttribute("symptomform", symptomform);
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
		WristindexForm wristindexform=new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("success", true);
		return "viewwristindex";
	}
	@RequestMapping (value="/insertneckindex", method = RequestMethod.POST)
	public String insertneckindex(HttpServletRequest request,ModelMap model,Neckindex neckindexdetails) throws IOException
	{
		neckdao.insertneckindex(neckindexdetails);
		NeckindexForm neckindexform=new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("success", true);
		return "viewneckindex";
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