<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/jquery-1.9.1.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
<script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  $(function() {
	    $( "#datepicker1" ).datepicker();
	  });
  $(function() {
	    $( "#datepicker2" ).datepicker();
	  });
  $(function() {
	    $( "#datepicker3" ).datepicker();
	  });
  $(function() {
	    $( "#tabs" ).tabs();
	 
	    // fix the classes
	    $( ".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *" )
	      .removeClass( "ui-corner-all ui-corner-top" )
	      .addClass( "ui-corner-bottom" );
	 
	    // move the nav to the bottom
	    $( ".tabs-bottom .ui-tabs-nav" ).appendTo( ".tabs-bottom" );
	  });
	  </script>
	  <style>
	  /* force a height so the tabs don't jump as content height changes */
	  #tabs .tabs-spacer { float: left; height: 200px; }
	  .tabs-bottom .ui-tabs-nav { clear: left; padding: 0 .2em .2em .2em; }
	  .tabs-bottom .ui-tabs-nav li { top: auto; bottom: 0; margin: 0 .2em 1px 0; border-bottom: auto; border-top: 0; }
	  .tabs-bottom .ui-tabs-nav li.ui-tabs-active { margin-top: -1px; padding-top: 1px; }
	  </style>
	  <script>
	  </script>
	</head>
	<body>
	 
	<div id="tabs" class="tabs-bottom">
	  <ul>
	    <li><a href="#tabs-1">1</a></li>
	    <li><a href="#tabs-2">2</a></li>
	    <li><a href="#tabs-3">3</a></li>
	  </ul>
	  <div class="tabs-spacer"></div>
	  <div id="tabs-1">
<div id="right_content">
<form method="POST" action="patientDetails">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<c:if test="${success==true}">
        <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
            <div id="success_statusbar" class="status success">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="resources/images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>
    </c:if>  

      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2>Patient Information</h2>
	       </div>     </div>
	       
<div class="contentbox">

              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<h2 class="quck-txt">Patient Details</h2>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name" /><br><span class="err"><form:errors path="PatientDetails.Name"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span> Date:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker" class="input_txtbx1" name="Date" /><br><span class="err"><form:errors path="PatientDetails.Date"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Street Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="StreetAddress"/><br><span class="err"><form:errors path="PatientDetails.StreetAddress"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>City:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="City" /><br><span class="err"><form:errors path="PatientDetails.City"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="State" /><br><span class="err"><form:errors path="PatientDetails.State"></form:errors></span>
				                  </td>
				                </tr>
                               <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="ZipCode" /><br><span class="err"><form:errors path="PatientDetails.ZipCode"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Homephone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Homephone" /><br><span class="err"><form:errors path="PatientDetails.Homephone"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Pager:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Pager" /><br><span class="err"><form:errors path="PatientDetails.Pager"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MobileNumber:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="MobileNumber" /><br><span class="err"><form:errors path="PatientDetails.MobileNumber"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>DateOfBirth:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker1" class="input_txtbx1" name="DateOfBirth"/><br><span class="err"><form:errors path="PatientDetails.DateOfBirth"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>SocialSecurityNumber:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SocialSecurityNumber" /><br><span class="err"><form:errors path="PatientDetails.SocialSecurityNumber"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Gender:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Gender" value="0" class="input_txt" checked="true">Male&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="1" class="input_txt">Female&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="2" class="input_txt">Transgender</td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MaritalStatus:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="MaritalStatus" value="0" class="input_txt" checked="true">Single&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="1" class="input_txt">Married&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="2" class="input_txt">Divorced</td>
				                
				                </tr>
				                
				                </table>
				                <td align="left" valign="top"> <h2 class="quck-txt"></h2>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Student:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Student" value="0" class="input_txt" checked="true">FullTime&nbsp;&nbsp;&nbsp;<input type="radio" name="Student" value="1" class="input_txt">PartTime</td>
				                  
				                </tr>
				                
				                </tr><tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Employer Name:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerName" /><br><span class="err"><form:errors path="PatientDetails.EmployerName"></form:errors></span>
				                  </td>
				                </tr>
				                
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Occupation:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Occupation" /><br><span class="err"><form:errors path="PatientDetails.Occupation"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Employer Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerAddress" /><br><span class="err"><form:errors path="PatientDetails.EmployerAddress"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>WorkPhone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Workphone" /><br><span class="err"><form:errors path="PatientDetails.Workphone"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>EmployerCity:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerCity" /><br><span class="err"><form:errors path="PatientDetails.EmployerCity"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Estate" /><br><span class="err"><form:errors path="PatientDetails.Estate"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Zip:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Ezip" /><br><span class="err"><form:errors path="PatientDetails.Ezip"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's or significant others name:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SpousesName" /><br><span class="err"><form:errors path="PatientDetails.SpousesName"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouses Employer:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SpousesEmp" /><br><span class="err"><form:errors path="PatientDetails.SpousesEmp"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's Workphone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Spousesph" /><br><span class="err"><form:errors path="PatientDetails.Spousesph"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name and Phone # of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_phone" /><br><span class="err"><form:errors path="PatientDetails.Name_phone"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have you ever had chiropractic care? </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Chiropratic_care" value="0" class="input_txt" checked="true">yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Chiropratic_care" value="1" class="input_txt">No</td>
				                </tr> 
				                
              </table>
              
                </td>
                </tr>
              
               
                </table>
                
                </div>
                </table>
               
                </div>
                </div>
                
                
      
    
          <div id="tabs-2">           
         <div id="right_content">
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>Present Complaint</h2>
	            </div>
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                        <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Please Describe Your Symptoms Briefly:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptoms"></textarea>&nbsp;&nbsp;&nbsp; <br><span class="err"><form:errors path="PatientDetails.Symptoms"></form:errors></span>
				                  	</td>
				                  	<td>
				                  	<label for="amount"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount" name="Painscale" />&nbsp;&nbsp;&nbsp;
				                  	<div id="slider"></div>
				                  </td>
				                </tr>
				                <tr>
                                 <td valign="middle" align="left" class="input_txt"></td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptom1"></textarea>&nbsp;&nbsp;&nbsp; 
				                  	</td>
				                  	<td>
				                  	<label for="amount"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount1" name="Painscale1"/>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider1"></div>
				                  </td>
				                </tr>
				                <tr>
                                 <td valign="middle" align="left" class="input_txt"></td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptom2"></textarea>&nbsp;&nbsp;&nbsp; 
				                  	</td>
				                  	<td>
				                  	<label for="amount"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount2" name="Painscale2" />&nbsp;&nbsp;&nbsp;
				                  	<div id="slider2"></div>
				                  </td>
				                </tr>
				           
				           <tr class="row2">
                        <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are These Symptoms Due to an Accident?</td>
				                  <td valign="top" align="left" class="input_txt">
				                  
				                  	<input type="radio" name="Symptom_Accident" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Symptom_Accident" value="1" class="input_txt">No</td>
				                  	<td>																										                                                              </td>
				                  	<br>
				
				                  </td>
				                </tr>   
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type Of Accident:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="Type_Of_Accident" class="input_cmbbx1">
						                    <option selected="selected" value="auto" >Auto</option>
											<option value="work">Work</option>
											<option value="other">Other</option>
				                   		</select>
				                   	
				                   	</td>
				                   	
				                </tr>  
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date Of Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker2" class="input_txtbx1" name="Date_Of_Accident"/><br><span class="err"><form:errors path="PatientDetails.Date_Of_Accident"></form:errors></span>
				                  	<td>                                                                                                                                      </td>
				                  	
				                  </td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Accident Reported:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Accident_Reported" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Accident_Reported" value="1" class="input_txt">No</td>
				                  	<td></td>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medical Treatment for this Condition: &nbsp;&nbsp;&nbsp;&nbsp;When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="When" /> <br><span class="err"><form:errors path="PatientDetails.When"></form:errors></span>
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Where:</td><br><span class="err"><form:errors path="PatientDetails.when"></form:errors></span>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbox1" id="inp_id" name="Where"/><br><span class="err"><form:errors path="PatientDetails.Where"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Retained an Attorney for this Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Attorney_accident" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Attorney_accident" value="1" class="input_txt">No</td>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name Of Attorney:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="NameOfAttorney" /><br><span class="err"><form:errors path="PatientDetails.NameOfAttorney"></form:errors></span>
				                  	<td>                                                                                                       </td>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Phone_Number" /><br><span class="err"><form:errors path="PatientDetails.Phone_Number"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Person at Fault for the Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Fault_accident" /><br><span class="err"><form:errors path="PatientDetails.Fault_accident"></form:errors></span>
				                  	<td>                                                                                           </td>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance Company of the at Fault Person:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Insurance" /><br><span class="err"><form:errors path="PatientDetails.Insurance"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Insurance_phone" /><br><span class="err"><form:errors path="PatientDetails.Insurance_phone"></form:errors></span>
				                  	<td>                                                                                       </td>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name And phone of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_ph" /><br><span class="err"><form:errors path="PatientDetails.Name_ph"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Policy#:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Policy" /><br><span class="err"><form:errors path="PatientDetails.Policy"></form:errors></span>
				                  	<td>                                                                            </td>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Your Health Insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_health" /><br><span class="err"><form:errors path="PatientDetails.Name_health"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				            <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Health_phone" /><br><span class="err"><form:errors path="PatientDetails.Health_phone"></form:errors></span>
				                  	<td>                                                                            </td>
				                  </td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Ever Been Involved in a Previous Auto or Work Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Prev_accident" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Prev_accident" value="1" class="input_txt">No</td>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Prev_When" /><br><span class="err"><form:errors path="PatientDetails.Prev_When"></form:errors></span>
				                  	</tr>   
				
				  
                </table>
               
                </td>
                </tr>
                
                </table>
                
                </div>
               </td>
               </tr>
              </table>
                </div>
                </div>
                <div id="tabs-3">           
                 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>Medical/Social/Work History</h2>
	            </div>
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>CheckBox if it applies to you,parents,siblings,children</td>
				                  <td valign="top" align="left" class="input_txt">
				                 
				                  	<input type="checkbox" name="Anemia" value="Anemia">Anemia &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <input type="checkbox" name="Muscular" value="Muscular">Muscular Dystrophy &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Rheumatic" value="Rheumatic">Rheumatic Fever &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Allergies" value="Allergies">Allergies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Polio1" value="Polio1">Polio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Multiple" value="Multiple">Multiple Sclerosis<br>
				                  	<input type="checkbox" name="HIV" value="HIV">HIV &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Sinus" value="Sinus">Sinus Trouble &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Asthma" value="Asthma">Asthma &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="German" value="German">German Measles &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Nervousness" value="Nervousness">Nervousness &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Numbness" value="Numbness">Numbness<br>
				                  	<input type="checkbox" name="Convulsions" value="Convulsions">Convulsions &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Epilepsy" value="Epilepsy">Epilepsy &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Concussion" value="Concussion">Concussion &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Dizziness" value="Dizziness">Dizziness &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Neuritis" value="Neuritis">Neuritis &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Rheumatism" value="Rheumatism">Rheumatism<br>
				                  	<input type="checkbox" name="Diabetes" value="Diabetes">Diabetes &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Arthritis" value="Arthritis">Arthritis &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Venereal" value="Venereal">Venereal Disease &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Backaches" value="Backaches">Backaches &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Liver" value="Liver">Liver Disease &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Kidney" value="Kidney">Kidney Disease<br>
				                  	<input type="checkbox" name="Thyroid" value="Thyroid">Thyroid Disease &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Alcoholism" value="Alcoholism">Alcoholism &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Hepatitis" value="Hepatitis">Hepatitis &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Mental" value="Mental">Mental Illness &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="High" value="High">High Blood Pressure<br>
				                  	<input type="checkbox" name="Digestive" value="Digestive">Digestive Disorders &nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Heart" value="Heart">Heart trouble	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Other" value="Other">other
				                  	
				                  	</tr> 
				                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Surgeries or Major Illnesses You Have Had: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Illness" /><br><span class="err"><form:errors path="PatientDetails.Illness"></form:errors></span>
				                  	</tr>   
				                 
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dates:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker3" name="Dates" /><br><span class="err"><form:errors path="PatientDetails.Dates"></form:errors></span>
				                  	</tr>    		
				                  	
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medications You are Currently Taking and Why:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Medications" name="Medications"></textarea>&nbsp;&nbsp;&nbsp;<br><span class="err"><form:errors path="PatientDetails.Medications"></form:errors></span>
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="checkbox" name="Drink" value="Drink">Drink Regularly	&nbsp;&nbsp;&nbsp;&nbsp; 
				                  	<input type="checkbox" name="Smoke" value="Smoke">Smoke	&nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Drugs" value="Drugs">Take Recreational Drugs &nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Diet" value="Diet">Eat a Poor Diet &nbsp;&nbsp;&nbsp;&nbsp;
				                  	<input type="checkbox" name="Exercise" value="Exercise">Exercise Regularly &nbsp;&nbsp;&nbsp;&nbsp;
				                  	
				                  	
				                  	</tr> 
				                  	<tr class="row2">
				  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do You Work Around Hazardous Substances:  </td>
				  <td valign="top" align="left" class="input_txt">
				  <div id="send_to">
				  <input type="radio" name="Hazordous" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<div id="send_to_one"><label>If yes,Please List: </label><input type="text" id="list" name="Hazardousyes" /><br/><br/>
    </div><input type="radio" name="Hazordous" value="1" class="input_txt">No
			      
			      </div>
			      </td>
				  </tr>
				  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Females Only:<br>Are you pregnant:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Female" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Female" value="1" class="input_txt">No</td>
				                
				                  	</tr>
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dr:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Dr" /><br><span class="err"><form:errors path="PatientDetails.Dr"></form:errors></span>
				                  	</tr>  
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Patient" /><br><span class="err"><form:errors path="PatientDetails.Patient"></form:errors></span>
				                  	</tr>  
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Signature:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Sign" /><br><span class="err"><form:errors path="PatientDetails.Sign"></form:errors></span>
				                  	</tr>  
				                  	
				                  	 <tr>
				  <td valign="top" align="center">&nbsp;</td><br>
				                <td valign="top" align="right"><br><input type="submit" class="submit_btn2" value="Submit"></td>
				  </tr>
				  
				                  	</table>
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	</div>
				                  	</td>
				                  	</tr>
				                  	</form>
				                  	</table>
				                  	</div>
				                  	</div>
				                  	</div>
				               
                </body>
                </html>
               <script>          
  
  $(function() {
	    $( "#slider" ).slider({
	      value:1,
	      min: 0,
	      max: 10,
	      step: 1,
	      slide: function( event, ui ) {
	        $( "#amount" ).val(+ ui.value );
	      }
	    });
	    $( "#amount" ).val(+ $( "#slider" ).slider( "value" ) );
	  });
  $(function() {
	    $( "#slider1" ).slider({
	      value:1,
	      min: 0,
	      max: 10,
	      step: 1,
	      slide: function( event, ui ) {
	        $( "#amount1" ).val(+ ui.value );
	      }
	    });
	    $( "#amount1" ).val(+ $( "#slider1" ).slider( "value" ) );
	  });
 
  $(function() {
	    $( "#slider2" ).slider({
	      value:1,
	      min: 0,
	      max: 10,
	      step: 1,
	      slide: function( event, ui ) {
	        $( "#amount2" ).val(+ ui.value );
	      }
	    });
	    $( "#amount2" ).val(+ $( "#slider2" ).slider( "value" ) );
	  });

  $(document).ready(function(){
	  
	    $("#send_to_one").hide();
	  
	    $("input:radio[name='Hazordous']").change(function(){  

	            if(this.value == '0' && this.checked){
	              $("#send_to_one").show();
	            }else{
	              $("#send_to_one").hide();
	            }

	    });

	});
  </script>
  
        <jsp:include page="footer.jsp"></jsp:include>







