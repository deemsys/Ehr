package bephit.controllers;

import java.io.IOException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.security.Principal;
import java.awt.*;
import java.awt.event.*;
import java.awt.image.*;

import javax.imageio.ImageIO;
import javax.swing.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import bephit.dao.*;
import bephit.forms.*;
import bephit.model.*;

@Controller

@SessionAttributes({"symptoms","therapytreat","wristdisability","neckdisability","oswestrydisability","hipquestionnairedetails"})

public class SymptomController {
	
	@Autowired
	SymptomDAO symptomdao;
	
	@Autowired
	PatientDAO patientDAO;

	@Autowired
	HipquestionnaireDAO hipquestionnairedao;

	@Autowired
	ManualtherapyDAO therapydao;

	@Autowired
	WristindexDAO wristdao;

	@Autowired
	NeckindexDAO neckdao;
	@RequestMapping(value = "/samplefile", method = RequestMethod.GET)
	public String sampleviewsymptom(ModelMap model) {
			
	
	     
		return "samplefile";

	}	
	@RequestMapping(value="/samplepatientDetails", method = RequestMethod.POST)
	public String insert_samplepatientdetails(HttpServletRequest request,HttpSession session,@ModelAttribute("PatientDetails")  @Valid PatientDetails patientDetails,BindingResult result,ModelMap model,Principal principal) {
		//session.setAttribute("first",patientDetails);
			/*String type= request.getParameter("Type_Of_Accident");
		System.out.println("type of accident="+type);		*/
		String[] Symptoms = new String[1000];
	    System.out.println("hiiii");
		Symptoms = request.getParameterValues("symptom[]");
	    
	    for(int i=0;i>=1;i++)
	    {
	    	System.out.println("symptom..."+Symptoms[i]);
	    }
	    patientDAO.sample(Symptoms);
	   // System.out.println("symptom..."+Symptoms[1]);	      
		
	        /*System.out.println("hi");
	        patientDAO.setPatientDetails(patientDetails,Symptoms,principal);
	        PatientDetailsForm patientdetailsform = new PatientDetailsForm();
			patientdetailsform.setPatientDetails(patientDAO.getPatientDetails());
			model.addAttribute("patientno","0");
			String age=patientDAO.getAge();
		    System.out.println("controller age"+age);
		    int major=Integer.parseInt(age);
		    String major=""+age;
		    request.setAttribute("major",age);
		    model.addAttribute("age",age);
			model.addAttribute("patientDetailsForm",patientdetailsform);
			model.addAttribute("menu", "patientInfo");
			session.removeAttribute("patient");
			if(type.equals("other"))
			{
				return "patientDetails";
			} 
			else
			{
			return  type;
			}
*/	       
	       // 
	    return "NewFile";

		}

	
	
	
	
	
	@RequestMapping(value = "/viewsymptom", method = RequestMethod.GET)
	public String viewsymptom(ModelMap model,Principal principal) {
		String username=principal.getName();
		SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getusernamesymptomDetails(username));
		model.addAttribute("symptomform", symptomform);
		model.addAttribute("menu", "symptom");
		/*model.addAttribute("noofrows",symptomform.getSymptomdetails().size());       
	    symptomform.setSymptomdetails(symptomdao.getlimitedsymptom(1));
	    model.addAttribute("noofpages",(int) Math.ceil(symptomdao.getnoofsymptom() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewsymptom";

	}	

	@RequestMapping(value="/viewsymptom_page", method=RequestMethod.GET)
	public String viewsymptom_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getlimitedsymptom(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(symptomdao.getnoofsymptom() * 1.0 / 5));
	   	model.addAttribute("symptomform", symptomform);	
	   	model.addAttribute("noofrows",symptomform.getSymptomdetails().size());   
	    model.addAttribute("currentpage",page);
	    model.addAttribute("menu","initial");
	    model.addAttribute("button","viewall");
	    return "viewsymptom";
		
	}	

	@RequestMapping(value={"/", "/viewallsymptom"}, method = RequestMethod.GET)
	public String viewallsymptom(HttpServletRequest request,ModelMap model, Principal principal ) {
		
	SymptomForm symptomform = new SymptomForm();
	    symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
		
	    model.addAttribute("symptomform", symptomform);	
		model.addAttribute("noofrows",symptomform.getSymptomdetails().size());    
	   
	    model.addAttribute("menu","initial");
	    model.addAttribute("button","close");
	      
	        model.addAttribute("menu","initial");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
	        return "viewsymptom";

	}


	@RequestMapping(value = "/viewsymptomlist", method = RequestMethod.GET)
	public String viewsymptom(
			@RequestParam(value = "symptomno") String symptomno, ModelMap model) {
		System.out.println("sym" + symptomno);
		SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails(symptomno));
		model.addAttribute("symptomform", symptomform);
		model.addAttribute("menu", "symptom");
		return "symptomlist";
	}

	@RequestMapping(value = "/editsymptom", method = RequestMethod.GET)
	public String editsymptom(@RequestParam(value = "symptomno") String symptomno, ModelMap model) {
		
		SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails(symptomno));
		model.addAttribute("symptomform", symptomform);
		model.addAttribute("menu", "symptom");
		
		return "editsymptom";
	}


	@RequestMapping(value = "/editusernamesymptom", method = RequestMethod.GET)
	public String editusernamesymptom(@RequestParam(value = "username") String username, ModelMap model) {
		
		SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getusernamesymptomDetails(username));
		model.addAttribute("symptomform", symptomform);
		model.addAttribute("menu", "checklist");
		return "editsymptom";
	}
	@RequestMapping(value = "/deletesymptom", method = RequestMethod.GET)
	public String deletesymptom(
			@RequestParam(value = "symptomno") String symptomno, ModelMap model) {
		System.out.println("sym" + symptomno);
		symptomdao.deletesymptomdetails(symptomno);
		SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
		model.addAttribute("symptomform", symptomform);
		model.addAttribute("menu", "symptom");
		
		return "viewsymptom";
	}
	@RequestMapping(value = "/deletesymptomdetails", method = RequestMethod.GET)
	public String deletesymptom(HttpSession session,ModelMap model,Principal principal) {
		if(patientDAO.getUsername(principal).size()>0)
		{			

String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
		if(principal.getName().equals("admin"))
		{
			
			String username1=(String)session.getAttribute("staffusername");
			symptomdao.deletesymptom(username1);
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	
		String username=principal.getName();
		symptomdao.deletesymptom(username);
		
		

		/*SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getsymptomDetails(username));
		model.addAttribute("symptomform", symptomform);*/
		
		model.addAttribute("menu", "symptom");
		
		return "symptom";
	}

	@RequestMapping (value="/manual", method = RequestMethod.GET)
	public String manual(HttpSession session,ModelMap model)
	{
		session.removeAttribute("therapytreat");
		model.addAttribute("menu","therapy");

		return "manualtherapy";
	}

	@RequestMapping(value = "/viewmanualtherapy", method = RequestMethod.GET)
	public String viewmanualtherapy(ModelMap model) {
		ManualTherapyForm manualform = new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);
		model.addAttribute("menu", "therapy");
		model.addAttribute("noofrows",manualform.getManualtherapy().size());       
	    manualform.setManualtherapy(therapydao.getlimitedmanualtherapy(1));
	    model.addAttribute("noofpages",(int) Math.ceil(therapydao.getnoofmanualtherapy() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewmanualtherapy";

	}	

	@RequestMapping(value="/viewmanualtherapy_page", method=RequestMethod.GET)
	public String viewmanualtherapy_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		ManualTherapyForm manualform = new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getlimitedmanualtherapy(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(therapydao.getnoofmanualtherapy() * 1.0 / 5));
	   	model.addAttribute("manualform", manualform);	
	   	model.addAttribute("noofrows",manualform.getManualtherapy().size());   
	    model.addAttribute("currentpage",page);
	    model.addAttribute("menu","initial");
	    model.addAttribute("button","viewall");
	    return "viewmanualtherapy";
		
	}	

	@RequestMapping(value={"/", "/viewallmanualtherapy"}, method = RequestMethod.GET)
	public String viewallmanualtherapy(HttpServletRequest request,ModelMap model, Principal principal ) {
		
	ManualTherapyForm manualform = new ManualTherapyForm();
	    manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		
	    model.addAttribute("manualform", manualform);	
		model.addAttribute("noofrows",manualform.getManualtherapy().size());    
	   
	    model.addAttribute("menu","initial");
	    model.addAttribute("button","close");
	      
	        model.addAttribute("menu","initial");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
	        return "viewmanualtherapy";

	}

	@RequestMapping(value = "/deletemanualtherapy", method = RequestMethod.GET)
	public String deletemanualtherapy(
			@RequestParam(value = "manualtherapyno") String manualtherapyno,
			ModelMap model) {
		System.out.println("sym" + manualtherapyno);
		therapydao.deletemanualtherapydetails(manualtherapyno);
		ManualTherapyForm manualform = new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);
		model.addAttribute("menu", "therapy");
		return "viewmanualtherapy";
	}

	@RequestMapping(value = "/editmanualtherapy", method = RequestMethod.GET)
	public String editmanualtherapy(
			@RequestParam(value = "manualtherapyno") String manualtherapyno,
			ModelMap model) {
		System.out.println("sym" + manualtherapyno);
		ManualTherapyForm manualform = new ManualTherapyForm();
		manualform.setManualtherapy(therapydao
				.getmanualtherapyDetails(manualtherapyno));
		model.addAttribute("manualform", manualform);
		model.addAttribute("menu", "therapy");
		return "editmanualtherapy";
	}

	@RequestMapping(value = "/manualtherapylist", method = RequestMethod.GET)
	public String manualtherapylist(
			@RequestParam(value = "manualtherapyno") String manualtherapyno,
			ModelMap model) {
		System.out.println("sym" + manualtherapyno);
		ManualTherapyForm manualform = new ManualTherapyForm();
		manualform.setManualtherapy(therapydao
				.getmanualtherapyDetails(manualtherapyno));
		model.addAttribute("manualform", manualform);
		model.addAttribute("menu", "therapy");
		return "manualtherapylist";
	}
	@RequestMapping(value = "/symptom", method = RequestMethod.GET)
	public String exam(HttpSession session, ModelMap model,Principal principal) {
		session.removeAttribute("symptoms");
		if(patientDAO.getUsername(principal).size()>0)
		{	
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
	   model.addAttribute("patientno","0");
	}
		model.addAttribute("menu", "symptom");
		String admin=principal.getName();
          if(symptomdao.getusernamesymptomDetails(admin).size()>0)
          {
        	SymptomForm symptomform = new SymptomForm();
      		symptomform.setSymptomdetails(symptomdao.getusernamesymptomDetails(admin));
      		model.addAttribute("symptomform", symptomform);      		
      		return "editsymptom"; 
          }
		return "symptom";
	}

	




	@RequestMapping(value = "/hipquestionnaire", method = RequestMethod.GET)
	public String hipquestionnaireindex(HttpSession session,ModelMap model,Principal principal) {
		session.removeAttribute("hipquestionnairedetails");

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		model.addAttribute("menu", "hipknee");

		String username=principal.getName();
		if(hipquestionnairedao.getusernamehipquestionnairedetails(username).size()>0)
		{
		HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
		hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.getusernamehipquestionnairedetails(username));
		model.addAttribute("hipquestionnaireform", hipquestionnaireform);		
		return "edithipquestionnaire";
		}
		
		return "hipquestionnaire";
	}

	@RequestMapping (value="/inserthipquestionnaire", method = RequestMethod.POST)
	public String exams(Principal principal,HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("hipquestionnaire") @Valid Hipquestionnaire hipquestionnaire,BindingResult result) throws IOException
	{
		session.setAttribute("hipquestionnairedetails",hipquestionnaire);

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		if(result.hasErrors())
		{
			model.addAttribute("menu","hipknee");
			return "hipquestionnaire";
		}
		String username=principal.getName();
    hipquestionnairedao.inserthipquestionnaire(hipquestionnaire,username);
	model.addAttribute("success", true);
	HipquestionnaireForm hipquestionnaireform=new HipquestionnaireForm();
	hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.getusernamehipquestionnairedetails(username));
	model.addAttribute("hipquestionnaireform", hipquestionnaireform);

		return "viewhipquestionnaire";
	}


	@RequestMapping(value = "/updatehipquestionnaire", method = RequestMethod.POST)
	public String updatehipquestionnaire(Principal principal,HttpServletRequest request,ModelMap model,@ModelAttribute("hipquestionnaire") @Valid Hipquestionnaire hipquestionnaire,BindingResult result) throws IOException {

		if(patientDAO.getUsername(principal).size()>0)
			{			
		   model.addAttribute("patientno","0");
		}
		String username=principal.getName();
		if(result.hasErrors())
		{
			HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
			hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.getusernamehipquestionnairedetails(username));
			model.addAttribute("hipquestionnaireform", hipquestionnaireform);
			return "edithipquestionnaire";
		}
		hipquestionnairedao.updatequestionnaire(hipquestionnaire,hipquestionnaire.getHipquestionno());
		model.addAttribute("success", true);
		HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
		hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.getusernamehipquestionnairedetails(username));
		model.addAttribute("hipquestionnaireform", hipquestionnaireform);

		if(principal.getName().equals("admin"))
	    {
	    	model.addAttribute("choice","close");
	    }
		return "viewhipquestionnaire";
	}

	@RequestMapping(value = "/viewhipquestionnaire", method = RequestMethod.GET)
	public String viewhipquestionnaire(HttpServletRequest request,
			ModelMap model, Hipquestionnaire hipquestionnaire,Principal principal)
			throws IOException {
		String username=principal.getName();
		HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
		hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao
				.getusernamehipquestionnairedetails(username));
		model.addAttribute("hipquestionnaireform", hipquestionnaireform);
		model.addAttribute("menu", "hipknee");
		/*model.addAttribute("noofrows",hipquestionnaireform.getHipquestionnairedetails().size());       
	    hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.getlimitedhipquestionnaire(1));
	    model.addAttribute("noofpages",(int) Math.ceil(hipquestionnairedao.getnoofhipquestionnaire() * 1.0 / 5));*/	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewhipquestionnaire";

	}	

	@RequestMapping(value="/viewhipquestionnaire_page", method=RequestMethod.GET)
	public String viewhipquestionnaire_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
		hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.getlimitedhipquestionnaire(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(hipquestionnairedao.getnoofhipquestionnaire() * 1.0 / 5));
	   	model.addAttribute("hipquestionnaireform", hipquestionnaireform);	
	   	model.addAttribute("noofrows",hipquestionnaireform.getHipquestionnairedetails().size());   
	    model.addAttribute("currentpage",page);
	    model.addAttribute("menu", "wristindex");
	    model.addAttribute("button","viewall");
	    return "viewhipquestionnaire";
		
	}	

	@RequestMapping(value={"/", "/viewallhipquestionnaire"}, method = RequestMethod.GET)
	public String viewalloswestryindex(HttpServletRequest request,ModelMap model, Principal principal ) {
		
	HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
	    hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.gethipquestionnairedetails());
		
	    model.addAttribute("hipquestionnaireform", hipquestionnaireform);	
		model.addAttribute("noofrows",hipquestionnaireform.getHipquestionnairedetails().size());    
	   
		model.addAttribute("menu", "wristindex");
	    model.addAttribute("button","close");
	      
	    model.addAttribute("menu", "wristindex");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
	        return "viewhipquestionnaire";

	}
	@RequestMapping(value = "/editusernamehipquestionnaire", method = RequestMethod.GET)
	public String editusernamehipquestionnaire(HttpSession session,@RequestParam("username") String username,HttpServletRequest request, ModelMap model,
			Hipquestionnaire hipquestionnaire) throws IOException {
		session.removeAttribute("hipquestionnairedetails");
		HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
		hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.getusernamehipquestionnairedetails(username));
		model.addAttribute("hipquestionnaireform", hipquestionnaireform);
		
		model.addAttribute("menu", "checklist");
		return "edithipquestionnaire";
	}

	@RequestMapping(value = "/edithipquestionnaire", method = RequestMethod.GET)
	public String edithipquestionnaire(HttpSession session,@RequestParam("hipquestionno") String hipquestionno,HttpServletRequest request, ModelMap model,
			Hipquestionnaire hipquestionnaire) throws IOException {
		session.removeAttribute("hipquestionnairedetails");
		HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
		hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao.gethipquestionnairedetails(hipquestionno));
		model.addAttribute("hipquestionnaireform", hipquestionnaireform);
		
		model.addAttribute("menu", "hipknee");
		return "edithipquestionnaire";
	}

	@RequestMapping(value = "/hipquestionnairelist", method = RequestMethod.GET)
	public String hipquestionnairelist(
			@RequestParam("hipquestionno") String hipquestionno,
			HttpServletRequest request, ModelMap model,
			Hipquestionnaire hipquestionnaire) throws IOException {
		System.out.println(hipquestionno);
		HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
		hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao
				.gethipquestionnairedetails(hipquestionno));
		model.addAttribute("hipquestionnaireform", hipquestionnaireform);
		System.out.print(hipquestionnaireform.getHipquestionnairedetails()
				.get(0).getStiff());
		model.addAttribute("menu", "hipknee");
		return "hipquestionnairelist";
	}

	@RequestMapping(value = "/deletehipquestionnairedetails", method = RequestMethod.GET)
	public String deletehipquestionnairedetails(HttpSession session,HttpServletRequest request, ModelMap model,
			Hipquestionnaire hipquestionnaire,Principal principal) throws IOException {

		if(patientDAO.getUsername(principal).size()>0)
			{			

String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
		}
		String username=principal.getName();
		if(principal.getName().equals("admin"))
		{
			
			String username1=(String)session.getAttribute("staffusername");
			hipquestionnairedao.deletequestionnairedetails(username1);
			model.addAttribute("choice","close");
			return "screeninglist";
	
		}	

		
		hipquestionnairedao.deletequestionnairedetails(username);
		model.addAttribute("menu", "hipknee");
		// System.out.print(hipquestionnaireform.getHipquestionnairedetails().get(0).getStiff());
		return "hipquestionnaire";
	}
	
	
	
	@RequestMapping(value = "/deletehipquestionnaire", method = RequestMethod.GET)
	public String deletehipquestionnaire(HttpSession session,Principal principal,@RequestParam("hipquestionno") String hipquestionno,HttpServletRequest request, ModelMap model,
			Hipquestionnaire hipquestionnaire) throws IOException {
		
		if(patientDAO.getUsername(principal).size()>0)
		{			
			String name="";			
			name=patientDAO.getUsername(principal).get(0).getName();
			model.addAttribute("name",name);
		   model.addAttribute("patientno","0");
	}
		if(principal.getName().equals("admin"))
		{
			
			/*String username=(String)session.getAttribute("staffusername");*/
			hipquestionnairedao.deletequestionnaire(hipquestionno);
			model.addAttribute("choice","close");
			return "viewhipquestionnaire";
	
		}	
		
		int status=hipquestionnairedao.deletequestionnaire(hipquestionno);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
        hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao	.gethipquestionnairedetails());
		model.addAttribute("hipquestionnaireform", hipquestionnaireform);
		model.addAttribute("success", true);
		 model.addAttribute("menu", "hipknee");
		}
	return "hipquestionnaire";
		
		/*System.out.println(hipquestionno);
		hipquestionnairedao.deletequestionnaire(hipquestionno);
		HipquestionnaireForm hipquestionnaireform = new HipquestionnaireForm();
		hipquestionnaireform.setHipquestionnairedetails(hipquestionnairedao	.gethipquestionnairedetails());
		model.addAttribute("hipquestionnaireform", hipquestionnaireform);
		model.addAttribute("success", true);
		// System.out.print(hipquestionnaireform.getHipquestionnairedetails().get(0).getStiff());
		return "viewhipquestionnaire";*/
	}


	
	@RequestMapping(value = "/viewwristindex", method = RequestMethod.GET)
	public String viewwristindex(ModelMap model) {
		WristindexForm wristindexform = new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu", "wristindex");
		model.addAttribute("noofrows",wristindexform.getWristindexdetails().size());       
	    wristindexform.setWristindexdetails(wristdao.getlimitedwristindex(1));
	    model.addAttribute("noofpages",(int) Math.ceil(wristdao.getnoofwristindex() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewwristindex";

	}	

	@RequestMapping(value="/viewwristindex_page", method=RequestMethod.GET)
	public String viewwristindex_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		WristindexForm wristindexform = new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getlimitedwristindex(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(wristdao.getnoofwristindex() * 1.0 / 5));
	   	model.addAttribute("wristindexform", wristindexform);	
	   	model.addAttribute("noofrows",wristindexform.getWristindexdetails().size());   
	    model.addAttribute("currentpage",page);
	    model.addAttribute("menu", "wristindex");
	    model.addAttribute("button","viewall");
	    return "viewwristindex";
		
	}	

	@RequestMapping(value={"/", "/viewallwristindex"}, method = RequestMethod.GET)
	public String viewallwristindex(HttpServletRequest request,ModelMap model, Principal principal ) {
		
	WristindexForm wristindexform = new WristindexForm();
	    wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
		
	    model.addAttribute("wristindexform", wristindexform);	
		model.addAttribute("noofrows",wristindexform.getWristindexdetails().size());    
	   
		model.addAttribute("menu", "wristindex");
	    model.addAttribute("button","close");
	      
	    model.addAttribute("menu", "wristindex");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
	        return "viewwristindex";

	}


	@RequestMapping(value = "/viewneckindex", method = RequestMethod.GET)
	public String viewneckindex(ModelMap model) {
		NeckindexForm neckindexform = new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu", "wristindex");
	  	model.addAttribute("noofrows",neckindexform.getneckindexdetails().size());       
	    neckindexform.setneckindexdetails(neckdao.getlimitedneckindex(1));
	    model.addAttribute("noofpages",(int) Math.ceil(neckdao.getnoofneckindex() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewneckindex";

	}	

	@RequestMapping(value="/viewneckindex_page", method=RequestMethod.GET)
	public String viewneckindex_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		NeckindexForm neckindexform = new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getlimitedneckindex(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(neckdao.getnoofneckindex() * 1.0 / 5));
	   	model.addAttribute("neckindexform", neckindexform);	
	   	model.addAttribute("noofrows",neckindexform.getneckindexdetails().size());   
	    model.addAttribute("currentpage",page);
	    model.addAttribute("menu", "wristindex");
	    model.addAttribute("button","viewall");
	    return "viewneckindex";
		
	}	

	@RequestMapping(value={"/", "/viewallneckindex"}, method = RequestMethod.GET)
	public String viewallneckindex(HttpServletRequest request,ModelMap model, Principal principal ) {
		
	NeckindexForm neckindexform = new NeckindexForm();
	    neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
		
	    model.addAttribute("neckindexform", neckindexform);	
		model.addAttribute("noofrows",neckindexform.getneckindexdetails().size());    
	   
		model.addAttribute("menu", "wristindex");
	    model.addAttribute("button","close");
	      
	    model.addAttribute("menu", "wristindex");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
	        return "viewneckindex";

	}

	@RequestMapping(value = "/wristindexlist", method = RequestMethod.GET)
	public String viewwristindexlist(
			@RequestParam(value = "wristindexno") String wristindexno,
			ModelMap model) {

		WristindexForm wristindexform = new WristindexForm();
		wristindexform.setWristindexdetails(wristdao
				.getwristindexDetails(wristindexno));
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu", "wristindex");
		return "wristindexlist";
	}

	@RequestMapping(value = "/neckindexlist", method = RequestMethod.GET)
	public String viewneckindexlist(
			@RequestParam(value = "neckindexno") String neckindexno,
			ModelMap model) {

		NeckindexForm neckindexform = new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao
				.getneckindexDetails(neckindexno));
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu", "wristindex");
		return "neckindexlist";
	}

	@RequestMapping(value = "/editwristindex", method = RequestMethod.GET)
	public String editwristindex(
			@RequestParam(value = "wristindexno") String wristindexno,
			ModelMap model) {
		System.out.println("sym" + wristindexno);
		WristindexForm wristindexform = new WristindexForm();
		wristindexform.setWristindexdetails(wristdao
				.getwristindexDetails(wristindexno));
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu", "wristindex");
		return "editwristindex";
	}

	@RequestMapping(value = "/editneckindex", method = RequestMethod.GET)
	public String editneckindex(
			@RequestParam(value = "neckindexno") String neckindexno,
			ModelMap model) {
		System.out.println("sym" + neckindexno);
		NeckindexForm neckindexform = new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao
				.getneckindexDetails(neckindexno));
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu", "wristindex");
		return "editneckindex";
	}

	@RequestMapping(value = "/deleteneckindex", method = RequestMethod.GET)
	public String deleteneckindex(
			@RequestParam(value = "neckindexno") String neckindexno,
			ModelMap model) {
		neckdao.deleteneckindex(neckindexno);
		NeckindexForm neckindexform = new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu", "neckindex");
		model.addAttribute("success", true);
		return "viewneckindex";
	}

	@RequestMapping(value = "/deletewristindex", method = RequestMethod.GET)
	public String deletewristindex(
			@RequestParam(value = "wristindexno") String wristindexno,
			ModelMap model) {
		wristdao.deletewristindex(wristindexno);
		WristindexForm wristindexform = new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu", "wristindex");
		model.addAttribute("success", true);
		return "viewwristindex";
	}

	@RequestMapping (value="/updatewristindex", method = RequestMethod.POST)
	public String updatewristindex(HttpServletRequest request,ModelMap model,@ModelAttribute("wristindexdetails") @Valid Wristindex wristindex,BindingResult result) throws IOException
	{
		if(result.hasErrors())
		{
			model.addAttribute("menu","wristindex");
			WristindexForm wristindexform=new WristindexForm();
			wristindexform.setWristindexdetails(wristdao.getwristindexDetails(wristindex.getWristindexno()));
			model.addAttribute("wristindexform", wristindexform);
			return "editwristindex";
		}
	System.out.println(wristindex.getWristindexno());	
	wristdao.updatewristindex(wristindex, wristindex.getWristindexno());
	WristindexForm wristindexform=new WristindexForm();
	wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
	model.addAttribute("wristindexform", wristindexform);
	model.addAttribute("success", true);
	model.addAttribute("quadruple","1");
	return "viewwristindex";
	}
	
	@RequestMapping (value="/updateneckindex", method = RequestMethod.POST)
	public String updateneckindex(HttpServletRequest request,ModelMap model,@ModelAttribute("neckindex") @Valid Neckindex neckindex,BindingResult result) throws IOException
	{
		if(result.hasErrors())
		{
			NeckindexForm neckindexform=new NeckindexForm();
			neckindexform.setneckindexdetails(neckdao.getneckindexDetails(neckindex.getNeckindexno()));
			model.addAttribute("neckindexform", neckindexform);
			model.addAttribute("menu","wristindex");
			return "editneckindex";
		}
	System.out.println(neckindex.getNeckindexno());	
	neckdao.updateneckindex(neckindex, neckindex.getNeckindexno());
	NeckindexForm neckindexform=new NeckindexForm();
	neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
	model.addAttribute("neckindexform", neckindexform);
	model.addAttribute("success", true);
	model.addAttribute("quadruple","1");
	return "viewneckindex";
	}
	
	
	@RequestMapping(value = "/updatesymptom", method = RequestMethod.POST)
	public String updatesymptom(HttpServletRequest request, ModelMap model,@ModelAttribute("symptom") @Valid Symptom symptom,BindingResult result,Principal principal) throws IOException {
		String username=principal.getName();
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		if (result.hasErrors()) {
			SymptomForm symptomform = new SymptomForm();
			symptomform.setSymptomdetails(symptomdao.getusernamesymptomDetails(username));
			model.addAttribute("symptomform", symptomform);
			model.addAttribute("menu", "symptom");
			
			return "editsymptom";
		}

		System.out.println("path" + symptom.getAchepath());
		symptomdao.updatesymptomexam(symptom, symptom.getSymptomno());
		SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getusernamesymptomDetails(username));
		model.addAttribute("symptomform", symptomform);
		model.addAttribute("success", true);
		if(principal.getName().equals("admin"))
	    {
	    	model.addAttribute("choice","close");
	    }
		return "viewsymptom";
	}

	@RequestMapping(value = "/insertsymptom", method = RequestMethod.POST)
	public String exams(HttpSession session, HttpServletRequest request,
			ModelMap model, @ModelAttribute("symptom") @Valid Symptom symptom,
			BindingResult result,Principal principal) throws IOException {
		session.setAttribute("symptoms", symptom);
		if(patientDAO.getUsername(principal).size()>0)
		{			
	   model.addAttribute("patientno","0");
	}
		System.out.println(symptom.getAcheleft());
		if (result.hasErrors()) {
			SymptomForm symptomform = new SymptomForm();
			symptomform.setSymptomdetails(symptomdao.getsymptomDetails());
			model.addAttribute("symptomform", symptomform);
			model.addAttribute("menu", "symptom");
			session.removeAttribute("symptoms");
			return "symptom";
		}
        String username=principal.getName();
		System.out.println("no errors");
		symptomdao.insertsymptomimage(symptom,username);
		model.addAttribute("success", true);
		SymptomForm symptomform = new SymptomForm();
		symptomform.setSymptomdetails(symptomdao.getusernamesymptomDetails(username));
		model.addAttribute("symptomform", symptomform);
		session.removeAttribute("symptoms");
		return "viewsymptom";
	}

	@RequestMapping(value = "/inserttherapy", method = RequestMethod.POST)
	public String therapy(HttpSession session, HttpServletRequest request,ModelMap model,@ModelAttribute("therapy") @Valid Manualtherapy therapy,
			BindingResult result) throws IOException {
		session.setAttribute("therapytreat", therapy);
		if (result.hasErrors()) {
			model.addAttribute("menu", "therapy");
			return "manualtherapy";
		}
		therapydao.inserttherapydetails(therapy);
		ManualTherapyForm manualform = new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);
		model.addAttribute("success", true);
		return "viewmanualtherapy";
	}

	@RequestMapping(value = "/insertwristindex", method = RequestMethod.POST)
	public String insertwristindex(Principal principal,HttpSession session,	HttpServletRequest request,	ModelMap model,	@ModelAttribute("wristindexdetails") @Valid Wristindex wristindexdetails,
			BindingResult result) throws IOException {
		session.setAttribute("wristdisability",wristindexdetails);
		if(result.hasErrors())
		{
			model.addAttribute("menu", "wristindex");
			return "wristindex";
		}

		wristdao.insertwristindex(wristindexdetails,principal);
		WristindexForm wristindexform = new WristindexForm();
		wristindexform.setWristindexdetails(wristdao.getwristindexDetails());
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("success", true);
		model.addAttribute("quadruple","1");
		return "viewwristindex";
	}

	@RequestMapping(value = "/insertneckindex", method = RequestMethod.POST)
	public String insertneckindex(HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("neckindex") @Valid Neckindex neckindexdetails,
			BindingResult result,Principal principal) throws IOException {
	
		session.setAttribute("neckdisability",neckindexdetails);
		if(result.hasErrors())
		{
		model.addAttribute("menu","wristindex");
		return "neckindex";
		}
		neckdao.insertneckindex(neckindexdetails,principal);
		NeckindexForm neckindexform = new NeckindexForm();
		neckindexform.setneckindexdetails(neckdao.getneckindexDetails());
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("success", true);
		model.addAttribute("quadruple","1");
		return "viewneckindex";
	}

	@RequestMapping(value = "/updatetherapy", method = RequestMethod.POST)
	public String updatetherapy(HttpServletRequest request, ModelMap model,
			@ModelAttribute("therapy") @Valid Manualtherapy therapy,
			BindingResult result) throws IOException {
		if (result.hasErrors()) {
			model.addAttribute("menu", "therapy");
			ManualTherapyForm manualform = new ManualTherapyForm();
			manualform.setManualtherapy(therapydao.getmanualtherapyDetails(therapy.getManualtherapyno()));
			System.out.println(therapy.getManualtherapyno());
			model.addAttribute("manualform", manualform);
			return "editmanualtherapy";
		}
		therapydao.updatemanualtherapy(therapy, therapy.getManualtherapyno());
		ManualTherapyForm manualform = new ManualTherapyForm();
		manualform.setManualtherapy(therapydao.getmanualtherapyDetails());
		model.addAttribute("manualform", manualform);
		model.addAttribute("success", true);
		return "viewmanualtherapy";
	}

}