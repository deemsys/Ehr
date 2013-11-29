public ModelAndView printWelcome(HttpServletRequest request,ModelMap model, Principal principal ) {
		
       int role=mainDAO.getrole();
       System.out.println(role);
       
       SignupForm signupForm1= new SignupForm();
    	signupForm1.setSignup(mainDAO.getSignup());
		model.addAttribute("SignupForm",signupForm);
		
       	ParticipantsDetailsForm participantsDetailsForm1 = new ParticipantsDetailsForm();
		participantsDetailsForm1.setParticipantsDetails(mainDAO.getParticipants());         
        ParticipantsDetailsForm participantsDetailsForm = new ParticipantsDetailsForm();
		participantsDetailsForm.setParticipantsDetails(mainDAO.getlimitedParticipants(1));
        model.addAttribute("participantsDetailsForm", participantsDetailsForm);
       
        model.addAttribute("currentpage",1);      
        model.addAttribute("noofrows",participantsDetailsForm1.getParticipantsDetails().size());       
        participantsDetailsForm.setParticipantsDetails(mainDAO.getlimitedParticipants(1));
		model.addAttribute("noofpages",(int) Math.ceil(mainDAO.getnoofParticipants() * 1.0 / 5));	 
        model.addAttribute("menu","dashboard");
        model.addAttribute("success","false");
        model.addAttribute("button","viewall");
        ModelAndView mav = new ModelAndView("dashboard");
        ModelAndView mav_participant=new ModelAndView("viewregisterparticipants");
         //session start       
        AdminUserForm adminUserForm=new AdminUserForm();
        adminUserForm.setAdminuser(adminuserdao.getAdminUserby_username(principal.getName()));      
        mav.addObject("currentuser", adminUserForm);
        mav.addObject("role",role);
        mav_participant.addObject("role",role);
        //session stop
        if(role==0)
        {
        	ParticipantsDetailsForm participantsDetailsForm2 = new ParticipantsDetailsForm();
		String participantid=mainDAO.getparticipantid();	
		String providername=mainDAO.getprovidername(participantid);
		model.addAttribute("providername",providername);
		participantsDetailsForm2.setParticipantsDetails(mainDAO.getParticipants(participantid));
        model.addAttribute("participantsDetailsForm", participantsDetailsForm2);
        model.addAttribute("menu","participants");
        ParticipantsGroupForm participantGroupForm = new ParticipantsGroupForm();
		participantGroupForm.setParticipantGroups(partDAO.getGroups());
        model.addAttribute("participantGroupForm", participantGroupForm);
        
        	return mav_participant;
        }
        else
		return mav;
     
