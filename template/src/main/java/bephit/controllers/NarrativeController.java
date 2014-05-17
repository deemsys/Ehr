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
import org.springframework.web.bind.annotation.SessionAttributes;

import bephit.dao.*;
import bephit.forms.*;
import bephit.model.*;

@Controller
@SessionAttributes({"narrative"})
public class NarrativeController
{
	@Autowired  
	NarrativereportDAO narrativeDAO;
	
	@Autowired
	PhysicalexamDAO physicalexamDAO;
	
	@Autowired 
	PatientDAO patientDAO;
	
	@RequestMapping(value="/narrativereport", method = RequestMethod.GET)
	public String viewingnarrativereport(HttpSession session,ModelMap model) {		
		session.removeAttribute("narrative");
		model.addAttribute("menu","narrative");
		return "narrativereport";
 
	
}
	@RequestMapping(value="/narrativesearch", method = RequestMethod.GET)
	public String narrativesearch(HttpSession session,ModelMap model) {		
		session.removeAttribute("narrative");
		model.addAttribute("menu","narrative");
		return "narrativesearch";
}	

	
	@RequestMapping(value="/narrativesearch", method = RequestMethod.POST)
	public String getnarrativesearchdetails(HttpServletRequest request,PatientDetails patientDetails,HttpSession session,@ModelAttribute("Narrativereport")  @Valid Narrativereport narrativereport,BindingResult result,ModelMap model) {
		String username=request.getParameter("username");	
		model.addAttribute("username",username);
		model.addAttribute("menu","narrative");	
		
		PatientDetailsForm patientDetailsForm=new PatientDetailsForm();
		patientDetailsForm.setPatientDetails(patientDAO.getUsername(username));
		if(patientDAO.getUsername(username).size()==0)
		{
			model.addAttribute("nsearch","error");
			return "narrativesearch";
		}
		System.out.println("patientid"+patientDetailsForm.getPatientDetails().get(0).getPatient_id());
		
	if(narrativeDAO.viewusernamenarrativereportlist(username).size()>0)
	{
		NarrativereportForm narrativereportForm=new NarrativereportForm();
		narrativereportForm.setNarrativereport(narrativeDAO.viewusernamenarrativereportlist(username));	
		model.addAttribute("narrativereportForm",narrativereportForm);
		model.addAttribute("menu","narrative");
		 /*model.addAttribute("menu","initial");*/
		
		return "editnarrativereport";
		
	}
		
		String patientid=patientDetailsForm.getPatientDetails().get(0).getUsername();
		PhysicalexamForm physicalexamForm=new PhysicalexamForm();
		physicalexamForm.setPhysicalexam(physicalexamDAO.getPhysicalpatient_id(patientid));
		model.addAttribute("physicalexamform",physicalexamForm);
		model.addAttribute("patientdetailsform",patientDetailsForm);
		model.addAttribute("menu","narrative");
		
		return "narrativereport";
 
	}
	
	
	@RequestMapping(value="/narrativereport", method = RequestMethod.POST)
	public String insert_narrativereport(HttpSession session,@ModelAttribute("Narrativereport")  @Valid Narrativereport narrativereport,BindingResult result,ModelMap model) {
		session.setAttribute("narrative", narrativereport);
		if(result.hasErrors())
		{
			NarrativereportForm narrativereportForm= new NarrativereportForm();
			narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereport());
			model.addAttribute("narrativereportForm",narrativereportForm);
			model.addAttribute("menu","narrative");
			model.addAttribute("Success","true");
			session.removeAttribute("narrative");
			return "narrativereport";
		}
		
		
    	int a=narrativeDAO.insertnarrativereport(narrativereport);
		NarrativereportForm narrativereportForm= new NarrativereportForm();
		narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereport());
		model.addAttribute("narrativereportForm",narrativereportForm);
		/*model.addAttribute("menu", "Accident");*/
		model.addAttribute("menu","narrative");
		session.removeAttribute("narrative");
	
		return "narrativesearch";
 
	}
	@RequestMapping(value="/viewnarrativereport", method = RequestMethod.GET)	
	public String viewnarrativereport(ModelMap model,Narrativereport narrativereport) {
		NarrativereportForm narrativereportForm=new NarrativereportForm();
		narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereport());	
		model.addAttribute("narrativereportForm",narrativereportForm);
		model.addAttribute("menu","narrative");
	  	model.addAttribute("noofrows",narrativereportForm.getNarrativereport().size());       
	    narrativereportForm.setNarrativereport(narrativeDAO.getlimitednarrativereport(1));
	    model.addAttribute("noofpages",(int) Math.ceil(narrativeDAO.getnoofnarrativereport() * 1.0 / 5));	 
	        model.addAttribute("button","viewall");
	        model.addAttribute("success","false");
	        model.addAttribute("currentpage",1);
		
		
		return "viewnarrativereport";

	}	

@RequestMapping(value="/viewnarrativereport_page", method=RequestMethod.GET)
public String viewnarrativereport_page(HttpServletRequest request,@RequestParam("page") int page,ModelMap model) {	
	
	NarrativereportForm narrativereportForm = new NarrativereportForm();
	narrativereportForm.setNarrativereport(narrativeDAO.getlimitednarrativereport(page));
	
   	model.addAttribute("noofpages",(int) Math.ceil(narrativeDAO.getnoofnarrativereport() * 1.0 / 5));
   	model.addAttribute("narrativereportForm",narrativereportForm);	
   	model.addAttribute("noofrows",narrativereportForm.getNarrativereport().size());   
    model.addAttribute("currentpage",page);
    model.addAttribute("menu","narrative");
    model.addAttribute("button","viewall");
    return "viewnarrativereport";
	
}	

@RequestMapping(value={"/", "/viewallnarrativereport"}, method = RequestMethod.GET)
public String viewallnarrativereport(HttpServletRequest request,ModelMap model, Principal principal ) {
	
	NarrativereportForm narrativereportForm = new NarrativereportForm();
    narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereport());
	
    model.addAttribute("narrativereportForm",narrativereportForm);	
	model.addAttribute("noofrows",narrativereportForm.getNarrativereport().size());    
   
    model.addAttribute("menu","narrative");
    model.addAttribute("button","close");
      
    model.addAttribute("menu","narrative");
        model.addAttribute("success","false");
        model.addAttribute("button","close");
        return "viewnarrativereport";

}
@RequestMapping(value="/narrativereportlist", method = RequestMethod.GET)	
public String narrativereportlist(@RequestParam("narrativeno") String narrativeno,ModelMap model,Narrativereport narrativereport) {	
NarrativereportForm narrativereportForm=new NarrativereportForm();
narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereportlist(narrativeno));
model.addAttribute("narrativereportForm",narrativereportForm);	
model.addAttribute("menu","narrative");
return "narrativereportlist";
}

@RequestMapping(value="/editnarrativereport", method = RequestMethod.GET)
	public String editnarrativereport(@RequestParam("narrativeno") String narrativeno,ModelMap model,Narrativereport narrativereport) {	
	NarrativereportForm narrativereportForm=new NarrativereportForm();
	narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereportlist(narrativeno));	
	model.addAttribute("narrativereportForm",narrativereportForm);
	model.addAttribute("menu","narrative");
	 /*model.addAttribute("menu","initial");*/
	
	return "editnarrativereport";
	
	}
	
	@RequestMapping(value="/updatenarrativereport", method = RequestMethod.POST)
	public String updatenarrativereport(HttpServletRequest request,HttpSession session,@ModelAttribute("narrativereport")  @Valid Narrativereport narrativereport,BindingResult result,ModelMap model) {
		//System.out.print(hipexamdetails.getOutsidereferral());
		if(result.hasErrors())
		{
			NarrativereportForm narrativereportForm=new NarrativereportForm();
			narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereportlist(narrativereport.getNarrativeno()));	
			model.addAttribute("narrativereportForm",narrativereportForm);
			model.addAttribute("menu","narrative");
			session.removeAttribute("narrative");
			return "editnarrativereport";
			
		}
		int c=narrativeDAO.updatenarrativereport(narrativereport,narrativereport.getNarrativeno());
		System.out.println("c---"+c);
		NarrativereportForm narrativereportForm=new NarrativereportForm();
		narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereport());	
		model.addAttribute("narrativereportForm",narrativereportForm);	
		model.addAttribute("menu","narrative");
		model.addAttribute("success", true);
		session.removeAttribute("narrative");
		return "narrativesearch";
	}
	@RequestMapping(value="/deletenarrativereport", method = RequestMethod.GET)
	public String deletenarrativereport(@RequestParam("narrativeno") String narrativeno,ModelMap model,Narrativereport narrativereport) {	
	narrativeDAO.deletenarrativeno(narrativeno);	
	NarrativereportForm narrativereportForm=new NarrativereportForm();
	narrativereportForm.setNarrativereport(narrativeDAO.viewnarrativereport());
	model.addAttribute("narrativereportForm",narrativereportForm);
	model.addAttribute("menu","narrative");
	return "narrativesearch";
	
	}
}
