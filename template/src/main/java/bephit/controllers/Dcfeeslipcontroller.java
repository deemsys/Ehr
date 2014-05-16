package bephit.controllers;

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

import bephit.dao.DcfeeslipDAO;
import bephit.dao.PatientDAO;
import bephit.dao.SignupDAO;
import bephit.forms.DcfeeslipForm;
import bephit.model.Dcfeeslip;

@Controller
public class Dcfeeslipcontroller
{
	@Autowired
	DcfeeslipDAO feeslipDAO;
	
	
	@Autowired
	SignupDAO signupDAO;
	
	@Autowired
	PatientDAO patientDAO;
	
	@RequestMapping(value="/dcfeeslip", method = RequestMethod.GET)
	public String viewdcfeeslip(HttpSession session, ModelMap model) {
		session.removeAttribute("dcfee");
		model.addAttribute("menu","dcfee");
		return "dcfeeslip";
 
	}
	
	@RequestMapping(value="/dcfeeslipdetails_ajax",method=RequestMethod.POST)
	public @ResponseBody String dcfeeslipdetails_ajax(@ModelAttribute(value="dcfeeslip") Dcfeeslip dcfeeslip, BindingResult result,ModelMap model ) {
		String returnText="";
		String patientname="";
		System.out.println("initialemlimited"+dcfeeslip.getDate());
	
		if(signupDAO.getPatientusername(dcfeeslip.getUsername()).size()==0)
		{
			return "error";
		}	
		System.out.println(dcfeeslip.getUsername()+dcfeeslip.getDate()+feeslipDAO.getusernameDcfee(dcfeeslip.getUsername(),dcfeeslip.getDate()).size());
		
	if(feeslipDAO.getusernameDcfee(dcfeeslip.getUsername(),dcfeeslip.getDate().trim()).size()>0)
	{
		patientname=dcfeeslip.getDate().trim();
		System.out.println("pname"+patientname);
		
		model.addAttribute("edit","1");
		return "edit"+patientname+"|"+dcfeeslip.getUsername();		
	}
	if(patientDAO.getUsername(dcfeeslip.getUsername()).size()>0)
	{
		patientname=patientDAO.getUsername(dcfeeslip.getUsername()).get(0).getName();
	}		
	returnText=patientname+"|"+dcfeeslip.getUsername()+"@"+dcfeeslip.getDate().trim();
		
		
		
				return returnText;
				
	}
	@RequestMapping(value="/dcfeeslip_ajax",method=RequestMethod.POST)
	public @ResponseBody String addUser(@ModelAttribute(value="dcfeeslip") Dcfeeslip dcfeeslip, BindingResult result,ModelMap model ) {
		String returnText="";
		System.out.println("initialemlimited"+dcfeeslip.getCervical23());
	
		
			int ans=feeslipDAO.setAns(dcfeeslip);
			System.out.println("ans"+ans);
			returnText=Integer.toString(ans);
				returnText="<input type=text id=charges value='"+returnText+"'>";
				return returnText;
				
	}
	@RequestMapping(value="/updatedcfeeslip", method=RequestMethod.POST)
	public String updatedcfeeslip(HttpServletRequest request,ModelMap model,@ModelAttribute("dcfeeslip") @Valid Dcfeeslip dcfeeslip,
			BindingResult result,Principal principal)
	{
		model.addAttribute("menu","dcfee");
		if (result.hasErrors())
		{
			DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
	     
	       dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfee(dcfeeslip.getDcfeeid()));
	      
	        model.addAttribute("dcfeeslipForm", dcfeeslipForm);
	        model.addAttribute("menu", "dcfee"); 
	     		        return "editdcfeeslip";
		}
		int status = feeslipDAO.updatedcfeeslip(dcfeeslip, dcfeeslip.getDcfeeid(), principal.getName());
		System.out.println(status);
		
		DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
        
       dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
       
        model.addAttribute("dcfeeslipForm", dcfeeslipForm);
        model.addAttribute("success",true);
    	model.addAttribute("menu","dcfee");
    	 
    	
	        return "dcfeeslip";
		
	}
	@RequestMapping(value="/dcfeeslip", method = RequestMethod.POST)
	public String insert_dcfeeslip(HttpServletRequest request,HttpSession session,ModelMap model,@ModelAttribute("dcfeeslipdetail")  @Valid Dcfeeslip dcfeeslip,BindingResult result) {
		session.setAttribute("dcfee", dcfeeslip);
		model.addAttribute("menu","dcfee");
		if(result.hasErrors())
		{
		
			DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
		    dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
			model.addAttribute("dcfeeslipForm",dcfeeslipForm);
			model.addAttribute("Success","true");
			model.addAttribute("menu", "dcfee");
			 session.removeAttribute("dcfee");
			return "dcfeeslip";
		}

		int b=feeslipDAO.setDcfeeslip(dcfeeslip,request.getParameter("user"));
		DcfeeslipForm dcfeeslipForm= new DcfeeslipForm();
		dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
		model.addAttribute("dcfeeslipForm",dcfeeslipForm);
		model.addAttribute("success",true);
		model.addAttribute("menu","dcfee");
		session.removeAttribute("dcfee");
		 session.removeAttribute("dcfee");
		return "dcfeeslip";
 }

	@RequestMapping(value="/viewdcfeeslip", method=RequestMethod.GET)
	public String viewdcfeeslip(HttpServletRequest request,ModelMap model, Principal principal) {
		 model.addAttribute("success","false");
		
		  DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();
		 
		  dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
		  
		  	model.addAttribute("dcfeeslipForm", dcfeeslipForm);
		  	model.addAttribute("menu","dcfee");
		  	model.addAttribute("noofrows",dcfeeslipForm.getDcfeeslip().size());       
		    dcfeeslipForm.setDcfeeslip(feeslipDAO.getlimiteddcfeeslip(1));  
		    model.addAttribute("noofpages",(int) Math.ceil(feeslipDAO.getnoofdcfeeslip() * 1.0 / 5));	 
		        model.addAttribute("button","viewall");
		        model.addAttribute("success","false");
		        model.addAttribute("currentpage",1);
			
			
			return "viewdcfeeslip";

		}	
		
	@RequestMapping(value="/editdcfeeslip", method=RequestMethod.GET)
	public String editdcfeeslip(HttpServletRequest request,@RequestParam("dcfeeid") String dcfeeid,ModelMap model,Dcfeeslip dcfeeslip) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();       
        dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfee(dcfeeid));
        model.addAttribute("dcfeeslipForm",dcfeeslipForm);
        model.addAttribute("menu","dcfee"); 
       		return "editdcfeeslip";
	}
	
	@RequestMapping(value="/editdcfeeslipdetails", method=RequestMethod.GET)
	public String editdcfeeslipetails(HttpServletRequest request,@RequestParam("username") String username,@RequestParam("date") String date,ModelMap model,Dcfeeslip dcfeeslip) 
	{
		/*String lumbopelvicexam=request.getParameter("lumbopelvicexam");*/
		DcfeeslipForm dcfeeslipForm = new DcfeeslipForm();       
        dcfeeslipForm.setDcfeeslip(feeslipDAO.getusernameDcfee(username,date));
        model.addAttribute("dcfeeslipForm",dcfeeslipForm);
        model.addAttribute("menu","dcfee");
        
		return "editdcfeeslip";
	}
	
	
	@RequestMapping(value="/deletedcfeeslip", method=RequestMethod.GET)
	public String removedcfeeslip(@RequestParam("dcfeeid") String dcfeeid,ModelMap model, Principal principal) {
	
		int status=feeslipDAO.deletedcfeeslip(dcfeeid);
		
		if(status==1)
		{
        model.addAttribute("success","true");
		
        DcfeeslipForm dcfeeslipForm= new DcfeeslipForm();
        dcfeeslipForm.setDcfeeslip(feeslipDAO.getDcfeeslip());
		model.addAttribute("dcfeeslipForm",dcfeeslipForm);  
		}
		model.addAttribute("menu","dcfee");
		return "dcfeeslip";
	}
	
	
	
}