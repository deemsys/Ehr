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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import bephit.dao.*;
import bephit.model.*;
import bephit.forms.*;

@Controller
@SessionAttributes({"oswestrydisability","copy","currentpatientid"})
public class OswestryController
{
	@Autowired
	SignupDAO signupDAO;
	
	@Autowired
	PatientDAO patientDAO;
	
	@Autowired
	UpdateletterDAO updateletterDAO;
	
	@Autowired 
	OswestryDAO oswestrydao;
	
	@Autowired 
	QuadraplevisualDAO quadrapledao;
	
	@Autowired 
	CopyofrequestDAO copydao;
	
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
	@RequestMapping (value="/quadraplevisualscale", method = RequestMethod.GET)
	public String quadraplevisual(HttpSession session,ModelMap model)
	{
		model.addAttribute("menu","sign");	
		return "quadraplevisual";
	}
	
	@RequestMapping (value="/quadraplevisual", method = RequestMethod.GET)
	public String quadraplevisual(@RequestParam("patient_id") String patient_id,@RequestParam("symptom") String symptom,HttpSession session,ModelMap model)
	{
		model.addAttribute("menu","sign");
	System.out.println("patient"+patient_id);	
	session.setAttribute("currentpatientid", patient_id);
	model.addAttribute("patientid",patient_id);
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
	

	
	
	@RequestMapping (value="/quadraplevisual", method = RequestMethod.POST)
	public String insertquadraplevisual(Principal principal,HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("quadraplevisual") @Valid Quadraplevisual quadraplevisual,BindingResult result) throws IOException

	{
		quadrapledao.setQuadraplevisual(quadraplevisual,principal);
		QuadraplevisualForm quadraplevisualform=new QuadraplevisualForm();
		quadraplevisualform.setQuadraplevisualdetails(quadrapledao.getQuadraplevisual());
		model.addAttribute("QuadraplevisualForm", quadraplevisualform);
		model.addAttribute("success", true);
		model.addAttribute("quadruple",1);
		
		return "quadraplevisual";
	}
	
	@RequestMapping (value="/updatequadraplevisual", method = RequestMethod.POST)
	public String updatequadraplevisual(HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("quadraplevisual") @Valid Quadraplevisual quadraplevisual,BindingResult result) throws IOException

	{
		quadrapledao.updatequadruple(quadraplevisual);
		QuadraplevisualForm quadraplevisualform=new QuadraplevisualForm();
		quadraplevisualform.setQuadraplevisualdetails(quadrapledao.getQuadraplepatientid(quadraplevisual.getPatient_id()));
		model.addAttribute("quadraplevisualform", quadraplevisualform);
	return "viewquadruple";
	}
	
	@RequestMapping (value="/deletequadraplevisual", method = RequestMethod.GET)
	public String deletequadraplevisual(@RequestParam("quadrupleno") String quadrapleno,@RequestParam("patient_id") String patient_id,HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("quadraplevisual") @Valid Quadraplevisual quadraplevisual,BindingResult result) throws IOException

	{
		quadrapledao.deletequadruple(quadrapleno);
		QuadraplevisualForm quadraplevisualform=new QuadraplevisualForm();
		quadraplevisualform.setQuadraplevisualdetails(quadrapledao.getQuadraplepatientid(patient_id));
		model.addAttribute("quadraplevisualform", quadraplevisualform);
	return "viewquadruple";
	}
	
	
	
	@RequestMapping (value="/copyofrequest", method = RequestMethod.GET)
	public String copyofrequest(HttpSession session,ModelMap model)
	{
		session.removeAttribute("copy");
		model.addAttribute("menu", "perry");
		return "copyofrequest";
	}
	
	@RequestMapping(value="/copyofrequest_ajax",method=RequestMethod.POST)
	public @ResponseBody String copyofrequest_ajax(@ModelAttribute(value="username")Copyofrequest copyofrequest, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
	
		if(signupDAO.getPatientusername(copyofrequest.getUsername()).size()==0)
		{
			return "error";
		}		
	if(copydao.getusernamecopyrequest(copyofrequest.getUsername()).size()>0)
	{
		//patientname=copydao.getusernamecopyrequest(copyofrequest.getUsername()).get(0).getPatientname();
		//System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+copyofrequest.getUsername();
		/*PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";*/
	}
	if(patientDAO.getUsername(copyofrequest.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(copyofrequest.getUsername()).get(0).getName();
	}	
		
		/*System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);*/
				returnText=patientname+"|"+copyofrequest.getUsername();
				return returnText;
				
	}
	
	/*@RequestMapping(value="/copyofrequest_ajax",method=RequestMethod.POST)
	public @ResponseBody String copyofrequest'(@ModelAttribute(value="username")Updateletter updateletter, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("username"+updateletter.getUsername());
		if(signupDAO.getPatientusername(updateletter.getUsername()).size()==0)
		{
			return "error";
		}		
	if(updateletterDAO.getusernameupdateletter(updateletter.getUsername()).size()>0)
	{
		patientname=patientattorneyDAO.getusernamepatientattorney(updateletter.getUsername()).get(0).getPatientname();
		System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+updateletter.getUsername();
		PatientattorneyForm patientattorneyForm = new PatientattorneyForm();
		patientattorneyForm.setPatientattorneydetails(patientattorneyDAO.getusernamepatientattorney(patientattorney.getUsername()));
		model.addAttribute("patientattorneyform", patientattorneyForm);
		model.addAttribute("menu", "perry");
		return "editpatientattorney";
	}
	if(patientDAO.getUsername(patientattorney.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(patientattorney.getUsername()).get(0).getName();
	}	
		
		System.out.println("initialemlimited"+dcfeeslip.getInitialemlimited());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);
				returnText=patientname+"|"+updateletter.getUsername();
				return returnText;
				
	}*/
	
	@RequestMapping (value="/copyofrequest", method = RequestMethod.POST)

	public String insertcopyofreuest(HttpSession session,HttpServletRequest request,ModelMap model,@ModelAttribute("Copyofrequest") @Valid Copyofrequest copyofrequest,BindingResult result) throws IOException

	{
		String username=request.getParameter("user");
		session.setAttribute("copy", copyofrequest);
		if(result.hasErrors())
		{
			CopyofrequestForm copyofrequestform= new CopyofrequestForm();
			copyofrequestform.setCopyofrequest(copydao.viewcopyrequest());
			model.addAttribute("copyofrequestform", copyofrequestform);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "perry");
			return "copyofrequest";
		}
		copydao.insertcopy(copyofrequest,username);
		CopyofrequestForm copyofrequestform=new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.viewcopyrequest());
		model.addAttribute("copyofrequestform", copyofrequestform);
		model.addAttribute("menu", "perry");
		model.addAttribute("success",true);
		return "copyofrequest";
	}
	
	@RequestMapping (value="/viewcopyofrequest", method = RequestMethod.GET)
	public String viewcopyofrequest(HttpServletRequest request,ModelMap model,Copyofrequest copyofrequest) throws IOException
	{
		
		CopyofrequestForm copyofrequestform=new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.viewcopyrequest());
		model.addAttribute("copyofrequestform", copyofrequestform);
		model.addAttribute("noofrows",copyofrequestform.getCopyofrequest().size());  
		 model.addAttribute("menu", "perry");
	    copyofrequestform.setCopyofrequest(copydao.getlimitedcopyofrequest(1));
	    model.addAttribute("noofpages",(int) Math.ceil(copydao.getnoofcopyofrequest() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewcopyofrequest";

	}	

	@RequestMapping(value="/viewcopyofrequest_page", method=RequestMethod.GET)
	public String viewcopyofrequest_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
		
		CopyofrequestForm copyofrequestform = new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.getlimitedcopyofrequest(page));
		
	   	model.addAttribute("noofpages",(int) Math.ceil(copydao.getnoofcopyofrequest() * 1.0 / 5));
	   	model.addAttribute("copyofrequestform", copyofrequestform);	
	   	model.addAttribute("noofrows",copyofrequestform.getCopyofrequest().size());   
	    model.addAttribute("currentpage",page);
	    model.addAttribute("menu", "perry");
	    model.addAttribute("button","viewall");
	    return "viewcopyofrequest";
		
	}	

	@RequestMapping(value={"/", "/viewallcopyofrequest"}, method = RequestMethod.GET)
	public String viewallcopyofrequest(HttpServletRequest request,ModelMap model, Principal principal ) {
		
        CopyofrequestForm  copyofrequestform = new CopyofrequestForm();
	    copyofrequestform.setCopyofrequest(copydao.viewcopyrequest());
		
		model.addAttribute("copyofrequestform", copyofrequestform);	
		model.addAttribute("noofrows",copyofrequestform.getCopyofrequest().size());    
	   
		model.addAttribute("menu", "perry");
	    model.addAttribute("button","close");
	      
	    model.addAttribute("menu", "perry");
	        model.addAttribute("success","false");
	        model.addAttribute("button","close");
	        return "viewcopyofrequest";

	}

	
	@RequestMapping (value="/copyofrequestlist", method = RequestMethod.GET)
	public String copyofrequestlist(@RequestParam("copyofrequestno") String copyofrequestno,HttpServletRequest request,ModelMap model,Copyofrequest copyofrequest) throws IOException
	{
		
		
		CopyofrequestForm copyofrequestform=new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.viewallcopyrequest(copyofrequestno));
		model.addAttribute("copyofrequestform", copyofrequestform);		
		 model.addAttribute("menu", "perry");
		return "copyofrequestlist";
	}
	@RequestMapping (value="/editcopyofrequestdetails", method = RequestMethod.GET)
	public String editcopyofrequestdetails(@RequestParam("username") String username,HttpServletRequest request,ModelMap model,Copyofrequest copyofrequest) throws IOException
	{
		
		CopyofrequestForm copyofrequestform=new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.getusernamecopyrequest(username));
		model.addAttribute("copyofrequestform", copyofrequestform);
		 model.addAttribute("menu", "perry");
		return "editcopyofrequest";
	}
	
	@RequestMapping (value="/editcopyofrequest", method = RequestMethod.GET)
	public String editcopyofrequest(@RequestParam("copyofrequestno") String copyofrequestno,HttpServletRequest request,ModelMap model,Copyofrequest copyofrequest) throws IOException
	{
		
		CopyofrequestForm copyofrequestform=new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.viewallcopyrequest(copyofrequestno));
		model.addAttribute("copyofrequestform", copyofrequestform);
		 model.addAttribute("menu", "perry");
		return "editcopyofrequest";
	}
	
	@RequestMapping (value="/updatecopyofrequest", method = RequestMethod.POST)
	public String updatecopyofrequest(HttpServletRequest request,ModelMap model,@ModelAttribute("Copyofrequest") @Valid Copyofrequest copyofrequest,BindingResult result,Principal principal) throws IOException
	{

	if(result.hasErrors())
	{
		model.addAttribute("menu","perry");
		CopyofrequestForm copyofrequestform=new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.viewallcopyrequest(copyofrequest.getCopyofrequestno()));
		model.addAttribute("copyofrequestform", copyofrequestform);

		return "editcopyofrequest";
	}

		int status = copydao.updatecopyofrequest(copyofrequest, copyofrequest.getCopyofrequestno(), principal.getName());
		/*CopyofrequestForm copyofrequestform=new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.viewcopyrequest());
		model.addAttribute("copyofrequestform", copyofrequestform);*/
		model.addAttribute("success", true);
		 model.addAttribute("menu", "perry");
		return "copyofrequest";
	}
	
	@RequestMapping (value="/deletecopyofrequest", method = RequestMethod.GET)
	public String deletecopyofrequest(@RequestParam("copyofrequestno") String copyofrequestno,HttpServletRequest request,ModelMap model,Copyofrequest copyofrequest) throws IOException
	{
		
		copydao.deletecopyofrequest(copyofrequestno);
		/*CopyofrequestForm copyofrequestform=new CopyofrequestForm();
		copyofrequestform.setCopyofrequest(copydao.viewcopyrequest());
		model.addAttribute("copyofrequestform", copyofrequestform);*/
		model.addAttribute("success",true);
		//model.addAttribute("menu","wristindex");
		return "copyofrequest";
	}
}