package bephit.controllers;

import java.io.IOException;
import java.security.Principal;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bephit.dao.LowbackDAO;
import bephit.dao.NeckindexDAO;
import bephit.dao.OswestryDAO;
import bephit.dao.QuadraplevisualDAO;
import bephit.dao.ShoulderpainscoreDAO;
import bephit.dao.WristindexDAO;
import bephit.forms.LowbackForm;
import bephit.forms.NeckindexForm;
import bephit.forms.OswestryForm;
import bephit.forms.QuadraplevisualForm;
import bephit.forms.ShoulderpainscoreForm;
import bephit.forms.WristindexForm;
import bephit.model.Lowback;
import bephit.model.Oswestry;
import bephit.model.PatientDetails;
import bephit.model.Quadraplevisual;
import bephit.model.Shoulderpainscore;

@Controller
public class QuadrapleController
{
	@Autowired
	QuadraplevisualDAO quadrapledao;
	
	@Autowired
	WristindexDAO wristindexDAO;
	
	@Autowired
	LowbackDAO lowDAO;
	
	@Autowired
	NeckindexDAO neckindexDAO;
	
	@Autowired
	OswestryDAO oswestryDAO;
	
	@Autowired
	ShoulderpainscoreDAO shoulderpainscoreDAO;
	
	
	
	
	@RequestMapping (value="/quadraplevisual", method = RequestMethod.POST)
	public String insertquadraplevisual(Principal principal,HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("quadraplevisual") @Valid Quadraplevisual quadraplevisual,BindingResult result) throws IOException

	{
		
		 String username=principal.getName();
    	 if(username.equals("admin"))
    	 { 
    	 
    		 username=(String)session.getAttribute("staffusername");
    		 System.out.println("susername"+username);
    	 }
    	 
		model.addAttribute("menu","sign");	
		quadrapledao.setQuadraplevisual(quadraplevisual,username);
		QuadraplevisualForm quadraplevisualform=new QuadraplevisualForm();
		quadraplevisualform.setQuadraplevisualdetails(quadrapledao.getQuadraplevisual());
		model.addAttribute("QuadraplevisualForm", quadraplevisualform);
		model.addAttribute("success", true);
		model.addAttribute("quadruple",1);
		
		return "quadraplevisual";
	}
	
	@RequestMapping (value="/updatequadraplevisual", method = RequestMethod.POST)
	public String updatequadraplevisual(HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("quadraplevisual") @Valid Quadraplevisual quadraplevisual,BindingResult result) throws IOException

	{    model.addAttribute("menu","sign");	 
		quadrapledao.updatequadruple(quadraplevisual);
		QuadraplevisualForm quadraplevisualform=new QuadraplevisualForm();
		quadraplevisualform.setQuadraplevisualdetails(quadrapledao.getQuadraplepatientid(quadraplevisual.getQuadrapleno()));
		model.addAttribute("quadruple",1);
		model.addAttribute("quadraplevisualform", quadraplevisualform);
	return "viewquadruple";
	}
	
	@RequestMapping (value="/deletequadraplevisual", method = RequestMethod.GET)
	public String deletequadraplevisual(@RequestParam("quadrupleno") String quadrapleno,HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("quadraplevisual") @Valid Quadraplevisual quadraplevisual,BindingResult result) throws IOException
	{model.addAttribute("menu","sign");	
		quadrapledao.deletequadruple(quadrapleno);
	model.addAttribute("quadruple","1");	
	return "viewquadruple";
	}
	
	@RequestMapping (value="/quadraplevisualscale", method = RequestMethod.GET)
	public String quadraplevisual(HttpSession session,ModelMap model)
	{
		model.addAttribute("menu","sign");	
		return "quadraplevisual";
	}
	
	@RequestMapping (value="/quadraplevisual", method = RequestMethod.GET)
	public String quadraplevisual(@RequestParam("symptom") String symptom,HttpSession session,ModelMap model)
	{
		model.addAttribute("menu","sign");
	/*System.out.println("patient"+patient_id);	
	session.setAttribute("currentpatientid", patient_id);
	model.addAttribute("patientid",patient_id);*/
	model.addAttribute("symptom",symptom);
		
		return "quadraplevisual";
	}
	@RequestMapping (value="/viewquadraplevisual", method = RequestMethod.GET)
	public String viewquadraplevisual(@RequestParam("patient_id")String patient_id,HttpSession session,ModelMap model)
	{
		model.addAttribute("menu","sign");
		QuadraplevisualForm quadraplevisualform=new QuadraplevisualForm();
		quadraplevisualform.setQuadraplevisualdetails(quadrapledao.getQuadraplepatientid(patient_id));
		model.addAttribute("quadraplevisualform", quadraplevisualform);
	return "viewquadruple";
	}
	
	@RequestMapping (value="/editquadraplevisual", method = RequestMethod.GET)
	public String editquadraplevisual(@RequestParam("quadrupleno")String quadrupleno,HttpSession session,ModelMap model)
	{
		model.addAttribute("menu","sign");
		System.out.println(quadrupleno);
		QuadraplevisualForm quadraplevisualform=new QuadraplevisualForm();
		quadraplevisualform.setQuadraplevisualdetails(quadrapledao.getQuadrapledetails(quadrupleno));
		model.addAttribute("quadraplevisualform", quadraplevisualform);
	return "editquadruple";
	}
	
	@RequestMapping(value = "/editwristindexdetails", method = RequestMethod.GET)
	public String editwristindex(@RequestParam(value="symptom") String symptom,ModelMap model,Principal principal) {
		
		WristindexForm wristindexform = new WristindexForm();
		wristindexform.setWristindexdetails(wristindexDAO.getwristusernameindexDetails(symptom, principal));
		model.addAttribute("wristindexform", wristindexform);
		model.addAttribute("menu","sign");	
		return "editwristindex";
	}
	
	@RequestMapping(value="/quad_ajax",method=RequestMethod.POST)
	public @ResponseBody String quad_ajax(@ModelAttribute("symptom")Quadraplevisual quadraplevisual,@ModelAttribute("painname")String painname,PatientDetails patientDetails,Principal principal)
	{
		System.out.println("username..."+quadraplevisual.getSymptom()+"sdas"+painname);
		System.out.println(quadraplevisual.getPainname());
		if(quadraplevisual.getPainname().equals("Wrist/Hand"))
		{
			if(wristindexDAO.getwristusernameindexDetails(quadraplevisual.getSymptom(), principal).size()>0)
			{
				return "edit";
			}
			else
			{
				return "";
			}
		}
		if(quadraplevisual.getPainname().equals("Low Back"))
		{
			if(lowDAO.getLowbackdetails(quadraplevisual.getSymptom(), principal).size()>0)
			{
				return "edit";
			}
			else
			{
				return "";
			}
		}
		if(quadraplevisual.getPainname().equals("Neck/Mid Back"))
		{
			if(neckindexDAO.getsymptomneckindexDetails(quadraplevisual.getSymptom(), principal).size()>0)
			{
				return "edit";
			}
			else
			{
				return "";
			}
		}
		if(quadraplevisual.getPainname().equals("Oswestry"))
		{
			if(oswestryDAO.getsymptomoswestryindexDetails(quadraplevisual.getSymptom(), principal).size()>0)
			{
				return "edit";
			}
			else
			{
				return "";
			}
		}
		if(quadraplevisual.getPainname().equals("Shoulder"))
		{
			if(shoulderpainscoreDAO.getusernameShoulder(quadraplevisual.getSymptom(), principal).size()>0)
			{
				return "edit";
			}
			else
			{
				return "";
			}
		}		
		return "" ;
	}

	@RequestMapping(value = "/wristdisabilityindex", method = RequestMethod.GET)
	public String wristdisabilityindex(@RequestParam("symptom") String symptom,HttpSession session,ModelMap model,Principal principal) {
		session.removeAttribute("wristdisability");
		model.addAttribute("menu","sign");	
        model.addAttribute("symptom",symptom);
		return "wristindex";
	}
	@RequestMapping(value="/lowbackdisability", method = RequestMethod.GET)
	public String viewinglowbackdisability(@RequestParam("symptom") String symptom,HttpSession session, ModelMap model) {
		session.removeAttribute("low");
		model.addAttribute("menu","sign");	
		 model.addAttribute("symptom",symptom);
		return "lowbackdisability";
 
	}
	
	@RequestMapping(value="/lowbackdisability", method = RequestMethod.POST)
	public String insert_lowback(HttpServletRequest request,HttpSession session,@ModelAttribute("Lowback")  @Valid Lowback lowback,BindingResult result,ModelMap model,Principal principal) {
		session.setAttribute("low",lowback );
		model.addAttribute("menu","sign");	
		if(result.hasErrors())
		{
		
			LowbackForm lowbackForm = new LowbackForm();
			lowbackForm.setLowback(lowDAO.getLowback());
			model.addAttribute("lowbackForm",lowbackForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "initial");
			return "lowbackdisability";
		}
		model.put("Lowback", lowback);
		model.addAttribute("lowbackForm",lowback);
		 String username=principal.getName();
    	 if(username.equals("admin"))
    	 { 
    	 
    		 username=(String)session.getAttribute("staffusername");
    		 System.out.println("susername"+username);
    	 }
		int a=lowDAO.setLowback(lowback,username);
		LowbackForm lowbackForm= new LowbackForm();
		lowbackForm.setLowback(lowDAO.getLowback());
		model.addAttribute("lowbackForm",lowbackForm);
		model.addAttribute("quadruple","1");
		return "viewlowback";
 
	
	}
	
	@RequestMapping(value="/editlowbackdetails", method=RequestMethod.GET)
	public String editlowback(HttpServletRequest request,@RequestParam("symptom") String symptom,ModelMap model,Lowback lowback,Principal principal) 
	{model.addAttribute("menu","sign");	
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		LowbackForm lowbackForm = new LowbackForm();       
        lowbackForm.setLowback(lowDAO.getLowbackdetails(symptom,principal));
        model.addAttribute("lowbackForm",lowbackForm);
        model.addAttribute("menu","wristindex");
		return "editlowback";
	}
	@RequestMapping(value = "/neckindex", method = RequestMethod.GET)
	public String neckindex(@RequestParam("symptom") String symptom,HttpSession session,ModelMap model) {
		session.removeAttribute("neckdisability");
		model.addAttribute("menu","sign");	
model.addAttribute("symptom",symptom);
		model.addAttribute("success", true);
		return "neckindex";
	}
	@RequestMapping(value = "/editneckindexdetails", method = RequestMethod.GET)
	public String editneckindex(@RequestParam(value = "symptom") String symptom,ModelMap model,Principal principal) {
		
		NeckindexForm neckindexform = new NeckindexForm();
		neckindexform.setneckindexdetails(neckindexDAO.getsymptomneckindexDetails(symptom, principal));
		model.addAttribute("neckindexform", neckindexform);
		model.addAttribute("menu","sign");	
		return "editneckindex";
	}
	@RequestMapping (value="/editoswestrydetails", method = RequestMethod.GET)
	public String editoswestryindex(@RequestParam("symptom") String symptom,HttpServletRequest request,ModelMap model,Oswestry oswestryindexdetails,Principal principal) throws IOException
	{
		
		OswestryForm oswestryindexform=new OswestryForm();
		oswestryindexform.setOswestrydetails(oswestryDAO.getsymptomoswestryindexDetails(symptom, principal));
		model.addAttribute("oswestryform", oswestryindexform);
		model.addAttribute("menu","sign");	
		return "editoswestryindex";
	}
	@RequestMapping(value="/editshoulderdetails", method=RequestMethod.GET)
	public String editshoulderpainscore(HttpServletRequest request,@RequestParam("symptom") String symptom,ModelMap model,Shoulderpainscore shoulderpainscore,Principal principal) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		ShoulderpainscoreForm shoulderpainscoreForm = new ShoulderpainscoreForm();       
        shoulderpainscoreForm.setShoulderpainscore(shoulderpainscoreDAO.getusernameShoulder(symptom, principal));
        model.addAttribute("shoulderpainscoreForm",shoulderpainscoreForm);
        model.addAttribute("menu","sign");	
		return "editshoulderpainscore";
	}


	
}