<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
  
<script>
$(function(){
	$("#datepicker3").datepicker({ dateFormat: 'yy-mm-dd' });
	$("#datepicker2").datepicker({ dateFormat: 'yy-mm-dd' });
	$("#datepicker1").datepicker({ dateFormat: 'yy-mm-dd' });
    $("#datepicker").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
        var minValue = $(this).val();
        minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
        minValue.setDate(minValue.getDate()+1);
        $("#datepicker").datepicker( "option", "minDate", minValue );
    })
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
	  <script type="text/javascript">
    var currentTab = 0;
    $(function () {
        $("#tabs").tabs({
            select: function (e, i) {
                currentTab = i.index;
            }
        });
    });
    $("#btnNext").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == (c - 1) ? currentTab : (currentTab + 1);
        tabs.tabs('select', currentTab);
        $("#btnPrevious").show();
        if (currentTab == (c - 1)) {
            $("#btnNext").hide();
        } else {
            $("#btnNext").show();
        }
    });
    $("#btnPrevious").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == 0 ? currentTab : (currentTab - 1);
        tabs.tabs('select', currentTab);
        if (currentTab == 0) {
            $("#btnNext").show();
            $("#btnPrevious").hide();
        }
        if (currentTab < (c - 1)) {
            $("#btnNext").show();
        }
    });
</script>
	  <style>
	  /* force a height so the tabs don't jump as content height changes */
	  #tabs .tabs-spacer { float: left; height: 200px; }
	  .tabs-bottom .ui-tabs-nav { clear: right; padding: 0 .2em .2em .2em; }
	  .tabs-bottom .ui-tabs-nav li { top: auto; bottom: 0; margin: 0 .2em 1px 0; border-bottom: auto; border-top: 0; }
	  .tabs-bottom .ui-tabs-nav li.ui-tabs-active { margin-top: -1px; padding-top: 1px; }
	  </style>
	  <script>
	  </script>
	</head>
	<body>
	 
	<div id="tabs" class="tabs-bottom">
	  <ul>
	    <li><a href="#tabs-1" >1</a></li>
	    <li><a href="#tabs-2">2</a></li>
	    <li><a href="#tabs-3">3</a></li>
	  </ul>
	  <div class="tabs-spacer"></div>
	  <div id="tabs-1">
<div id="right_content">
<form method="POST" action="patientDetails">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

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
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
    					<c:choose>
    					<c:when test="${empty patient}">
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                       <br>
                        <br>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name" /><br><span class="err"><form:errors path="PatientDetails.name"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span> Date:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker" class="input_txtbx1" name="Date" /><br><span class="err"><form:errors path="PatientDetails.date"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Street Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="StreetAddress"/><br><span class="err"><form:errors path="PatientDetails.streetAddress"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>City:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="City" /><br><span class="err"><form:errors path="PatientDetails.city"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="State" /><br><span class="err"><form:errors path="PatientDetails.state"></form:errors></span>
				                  </td>
				                </tr>
                               <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="ZipCode" /><br><span class="err"><form:errors path="PatientDetails.zipCode"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Home phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Homephone" /><br><span class="err"><form:errors path="PatientDetails.homephone"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Emailid" /><br><span class="err"><form:errors path="PatientDetails.emailid"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MobileNumber:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="MobileNumber" /><br><span class="err"><form:errors path="PatientDetails.mobileNumber"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>DateOfBirth:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker1" class="input_txtbx1" name="DateOfBirth"/><br><span class="err"><form:errors path="PatientDetails.dateOfBirth"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Social Security Number:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SocialSecurityNumber" /><br><span class="err"><form:errors path="PatientDetails.socialSecurityNumber"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Gender:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Gender" value="Male" class="input_txt" checked="true">Male&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="Female" class="input_txt">Female&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="Transgender" class="input_txt">Transgender</td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MaritalStatus:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="MaritalStatus" value="Single" class="input_txt" checked="true">Single&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="Married" class="input_txt">Married&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="Divorced" class="input_txt">Divorced</td>
				                
				                </tr>
				                
				                </table>
				                <td align="left" valign="top"> <h2 class="quck-txt"></h2>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							 <tr class="row1">
							 
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are you:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Areyou" value="Student" class="input_txt"  onchange="toggle3('show3')">Student&nbsp;&nbsp;&nbsp;<input type="radio" name="Areyou" value="Employee" class="input_txt" checked="true" onclick="toggle3('hide3')">Employee</td>
				                  
				                </tr>
							</table>
							<div id="student" style="display:none;">
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Student:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Student" value="FullTime" class="input_txt" checked="true">Full Time&nbsp;&nbsp;&nbsp;<input type="radio" name="Student" value="PartTime" class="input_txt">Part Time</td>
				                  
				                </tr>
							
							</table>
							</div>
							<div id="employee" >
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Employer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerName" />

				                  </td>
				                </tr>
				                
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Occupation:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Occupation" />
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Employer Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerAddress" />
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>WorkPhone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Workphone" />

				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>EmployerCity:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerCity" />

				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Estate" />
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Ezip" />
				                  	
				                  </td>
				                </tr>
							
							
							</table>
							</div>
							
							
							
				                
				                <table cellpadding="0" cellspacing="0" border="0" width="100%">
				                
				                <tr class="row1">
				               
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's or significant others name:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SpousesName" /><br><span class="err"><form:errors path="PatientDetails.spousesName"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouses Employer:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SpousesEmp" /><br><span class="err"><form:errors path="PatientDetails.spousesEmp"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's Workphone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Spousesph" /><br><span class="err"><form:errors path="PatientDetails.spousesph"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_friend" /><br><span class="err"><form:errors path="PatientDetails.name_friend"></form:errors></span>
				               
				                  </td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Phone_friend" /><br><span class="err"><form:errors path="PatientDetails.phone_friend"></form:errors></span>
				                  	
				                  </td>
				                  </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have you ever had chiropractic care? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Chiropratic_care" value="yes" class="input_txt" checked="true">yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Chiropratic_care" value="No" class="input_txt">No</td>
				                </tr> 
				               </table>
				               <table align="right">
				               <tr>
				  
                     <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
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
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptoms"></textarea>&nbsp;&nbsp;&nbsp; <br><span class="err"><form:errors path="PatientDetails.symptoms"></form:errors></span>
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
				                  
				                  	<input type="radio" name="Symptom_Accident" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Symptom_Accident" value="No" class="input_txt">No</td>
				                  	<td></td>
				                </tr>   
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type Of Accident:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="Type_Of_Accident" class="input_cmbbx1" id="type_of_accident"onclick='Checklight(this.value)';>

						                    <option selected="selected" value="autoaccident" id="auto" >Auto</option>

						                   

											<option value="workaccident" id="work">Work</option>
											<option value="other" id="other">Other</option>
				                   		</select>
				                   <input type="text" name="accident" id="accident" style='display:none' />
				                   	</td>
				                   	
				                </tr>  
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date Of Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker2" class="input_txtbx1" name="Date_Of_Accident"/><span class="err"><form:errors path="PatientDetails.date_Of_Accident"></form:errors></span>
				                  </td>
				                  <td></td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Accident Reported:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Accident_Reported" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Accident_Reported" value="No" class="input_txt">No</td>
				                  
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medical Treatment for this Condition: &nbsp;&nbsp;&nbsp;&nbsp;When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="when1" /> <br><span class="err"><form:errors path="patientDetails.when1"></form:errors></span></td>
				                  	<td></td>
				                  	</tr>
				                  	<tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Where:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="where1"/><br><span class="err"><form:errors path="patientDetails.where1"></form:errors></span>
				                    </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Retained an Attorney for this Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Attorney_accident" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Attorney_accident" value="No" class="input_txt">No</td>
				                <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name Of Attorney:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="NameOfAttorney" /><br><span class="err"><form:errors path="PatientDetails.mameOfAttorney"></form:errors></span>
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Phone_Number" /><br><span class="err"><form:errors path="PatientDetails.phone_Number"></form:errors></span>
				                  	
				                  </td>
				                  <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Person at Fault for the Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Fault_accident" /><br><span class="err"><form:errors path="PatientDetails.fault_accident"></form:errors></span></td>
				                  	<td></td>                                                                                        
				                 
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance Company of the at Fault Person:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Insurance" /><br><span class="err"><form:errors path="PatientDetails.insurance"></form:errors></span></td>
				                  <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Insurance_phone" /><br><span class="err"><form:errors path="PatientDetails.insurance_phone"></form:errors></span></td>
				                  	<td></td>
				                  </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_auto" /><br><span class="err"><form:errors path="PatientDetails.name_auto"></form:errors></span></td>
				                  	<td> </td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>phone of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Phone_auto" /><br><span class="err"><form:errors path="PatientDetails.phone_auto"></form:errors></span></td>
				                  	<td> </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Policy#:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Policy" /><br><span class="err"><form:errors path="PatientDetails.policy"></form:errors></span></td>
				                  	<td> </td>
				                 
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Your Health Insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_health" /><br><span class="err"><form:errors path="PatientDetails.name_health"></form:errors></span></td>
				                  	
				                  <td></td>
				                </tr>
				            <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Health_phone" /><br><span class="err"><form:errors path="PatientDetails.health_phone"></form:errors></span></td>
				                  	<td></td>
				                  
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Ever Been Involved in a Previous Auto or Work Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Prev_accident" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Prev_accident" value="No" class="input_txt">No</td>
				                  	
				                 
				                  <td></td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Prev_When" /><br><span class="err"><form:errors path="PatientDetails.prev_When"></form:errors></span>
				                  	<td></td>
				                  	</tr>   
				                  	</table>
				                  	
				                  	<table align="right">
				                  	 <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous" style = "display:none" />&nbsp;</td>
                  <td>&nbsp;&nbsp;</td>
                  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
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
				                 <table>
				                 
				                 <tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Anemia" value="Anemia">Anemia </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Muscular" value="Muscular">Muscular Dystrophy </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Rheumatic" value="Rheumatic">Rheumatic Fever </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Allergies" value="Allergies">Allergies</td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Cancer" value="Cancer">Cancer </td>
				                   <td class="input_txt" align="left"><input type="checkbox" name="Polio1" value="Polio1">Polio </td>
				                  </tr>
				                  <tr>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Multiple" value="Multiple">Multiple Sclerosis</td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Scarlet" value="Scarlet">ScarletFever </td>
                                      <td class="input_txt" align="left"><input type="checkbox" name="HIV" value="HIV">HIV </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Sinus" value="Sinus">Sinus Trouble </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Asthma" value="Asthma">Asthma </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="German" value="German">German Measles </td>
				                  	 </tr>
				                  	 <tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Nervousness" value="Nervousness">Nervousness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Numbness" value="Numbness">Numbness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Convulsions" value="Convulsions">Convulsions </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Epilepsy" value="Epilepsy">Epilepsy </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Concussion" value="Concussion">Concussion </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Dizziness" value="Dizziness">Dizziness </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Neuritis" value="Neuritis">Neuritis </td>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Rheumatism" value="Rheumatism">Rheumatism </td>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Diabetes" value="Diabetes">Diabetes</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Arthritis" value="Arthritis">Arthritis </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Venereal" value="Venereal">Venereal Disease</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Backaches" value="Backaches">Backaches </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Tuberculosis" value="Tuberculosis">Tuberculosis	</td>    
				                    <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Liver" value="Liver">Liver Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Kidney" value="Kidney">Kidney Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Thyroid" value="Thyroid">Thyroid Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Alcoholism" value="Alcoholism">Alcoholism </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Hepatitis" value="Hepatitis">Hepatitis </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Mental" value="Mental">Mental Illness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="High" value="High">High Blood Pressure</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Digestive" value="Digestive">Digestive Disorders </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Heart" value="Heart">Heart trouble	</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Other" value="Other"onclick="this.form.ifother.style.visibility = this.checked? 'visible' : 'hidden'"/>other </td>
				                 <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="ifother" style="visibility:hidden" name="Ifother" placeholder="If other" /></td>
				                  	</tr>
				                  	
				                  	</table> 
				                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Surgeries or Major Illnesses You Have Had: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Illness" /><br><span class="err"><form:errors path="PatientDetails.illness"></form:errors></span>
				                  	</tr>   
				                 
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dates:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker3" name="Dates" /><br><span class="err"><form:errors path="PatientDetails.dates"></form:errors></span>
				                  	</tr>    		
				                  	
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medications You are Currently Taking and Why:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Medications" name="Medications"></textarea>&nbsp;&nbsp;&nbsp;<br><span class="err"><form:errors path="PatientDetails.medications"></form:errors></span>
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
				  <input type="radio" name="Hazardous" value="yes" class="input_txt" checked="true" onclick="this.form.list.style.visibility = this.checked? 'visible' : 'hidden'">Yes&nbsp;&nbsp;&nbsp;<div id="send_to_one">
				  <label>If yes,Please List: </label><input type="text" id="list" name="Hazardousyes" style="visibility:hidden"/><br/><br/>
    </div><input type="radio" name="Hazardous" value="No" class="input_txt">No
			      
			      </div>
			      </td>
				  </tr>
				  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Females Only:<br>Are you pregnant:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Female" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Female" value="No" class="input_txt">No</td>
				                
				                  	</tr>
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dr:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Dr" /><br><span class="err"><form:errors path="PatientDetails.dr"></form:errors></span>
				                  	</tr>  
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Patient" /><br><span class="err"><form:errors path="PatientDetails.patient"></form:errors></span>
				                  	</tr>  
				                  	<table align="right">
				  <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  />&nbsp;</td>
                 
 				  <td>&nbsp;&nbsp;</td>
             		 
                  <td><input type="submit" class="submit_btn" value="Save" ></td>
                  <td>&nbsp;&nbsp;</td>
                  <td><input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='patientDetails'"></td>
				 
			</tr>
			</table>
				                  	 
				                  	</table>
				                   
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	</div>
				                  	
				                  	</td>
				                  	</tr>
				                  	
				                  	</table>
				                  	</c:when>
				                  	<c:otherwise>
				                  	<table cellpadding="0" cellspacing="0" border="0" width="100%">
                       <br>
                        <br>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name" value="${patient.name}"/><br><span class="err"><form:errors path="PatientDetails.Name"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span> Date:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker" class="input_txtbx1" name="Date" value="${patient.date}"/><br><span class="err"><form:errors path="PatientDetails.Date"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Street Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="StreetAddress" value="${patient.streetAddress}"/><br><span class="err"><form:errors path="PatientDetails.StreetAddress"></form:errors></span>
				                  </td>
				                </tr>
                                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>City:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="City" value="${patient.city}"/><br><span class="err"><form:errors path="PatientDetails.City"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="State" value="${patient.state }"/><br><span class="err"><form:errors path="PatientDetails.State"></form:errors></span>
				                  </td>
				                </tr>
                               <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="ZipCode" value="${patient.zipCode}"/><br><span class="err"><form:errors path="PatientDetails.ZipCode"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Home phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Homephone" value="${patient.homephone }"/><br><span class="err"><form:errors path="PatientDetails.Homephone"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Emailid" value="${patient.emailid}"/><br><span class="err"><form:errors path="PatientDetails.Emailid"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MobileNumber:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="MobileNumber" value="${patient.mobileNumber}"/><br><span class="err"><form:errors path="PatientDetails.MobileNumber"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>DateOfBirth:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker1" class="input_txtbx1" name="DateOfBirth" value="${patient.dateOfBirth}"/><br><span class="err"><form:errors path="PatientDetails.DateOfBirth"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Social Security Number:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SocialSecurityNumber" value="${patient.socialSecurityNumber}"/><br><span class="err"><form:errors path="PatientDetails.SocialSecurityNumber"></form:errors></span>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Gender:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Gender" value="Male" class="input_txt" checked="true">Male&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="Female" class="input_txt">Female&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="2" class="input_txt">Transgender</td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MaritalStatus:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="MaritalStatus" value="Single" class="input_txt" checked="true">Single&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="Married" class="input_txt">Married&nbsp;&nbsp;&nbsp;<input type="radio" name="MaritalStatus" value="Divorced" class="input_txt">Divorced</td>
				                
				                </tr>
				                
				                </table>
				                <td align="left" valign="top"> <h2 class="quck-txt"></h2>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							 <tr class="row1">
							 
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are you:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Areyou" value="Student" class="input_txt"  onchange="toggle3('show3')">Student&nbsp;&nbsp;&nbsp;<input type="radio" name="Areyou" value="Employee" class="input_txt" checked="true" onclick="toggle3('hide3')">Employee</td>
				                  
				                </tr>
							</table>
							<div id="student" style="display:none;">
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Student:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Student" value="FullTime" class="input_txt" checked="true">Full Time&nbsp;&nbsp;&nbsp;<input type="radio" name="Student" value="PartTime" class="input_txt">Part Time</td>
				                  
				                </tr>
							
							</table>
							</div>
							<div id="employee" >
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Employer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerName" value="${patient.employerName}"/>

				                  </td>
				                </tr>
				                
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Occupation:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Occupation" value="${patient.occupation}"/>
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Employer Address:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerAddress" value="${patient.employerAddress }"/>
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>WorkPhone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Workphone" value="${patient.workphone}"/>

				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>EmployerCity:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="EmployerCity" value="${patient.employerCity}"/>

				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>State:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Estate" value="${patient.estate}"/>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ZipCode:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Ezip" value="${patient.ezip}"/>
				                  	
				                  </td>
				                </tr>
							
							
							</table>
							</div>
							
							
							
				                
				                <table cellpadding="0" cellspacing="0" border="0" width="100%">
				                
				                <tr class="row1">
				               
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's or significant others name:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SpousesName" value="${patient.spousesName}"/><br><span class="err"><form:errors path="PatientDetails.SpousesName"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouses Employer:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="SpousesEmp" value="${patient.spousesEmp}"/><br><span class="err"><form:errors path="PatientDetails.SpousesEmp"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's Workphone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Spousesph" value="${patient.spousesph}"/><br><span class="err"><form:errors path="PatientDetails.Spousesph"></form:errors></span>
				                  	
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_friend" value="${patient.name_friend}"/><br><span class="err"><form:errors path="PatientDetails.Name_friend"></form:errors></span>
				               
				                  </td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone of Nearest Friend/ Relative Not Living With You:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Phone_friend" value="${patient.phone_friend}"/><br><span class="err"><form:errors path="PatientDetails.Phone_friend"></form:errors></span>
				                  	
				                  </td>
				                  </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have you ever had chiropractic care? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Chiropratic_care" value="yes" class="input_txt" checked="true">yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Chiropratic_care" value="No" class="input_txt">No</td>
				                </tr> 
				               </table>
				               <table align="right">
				               <tr>
				  
                     <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
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
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptoms">${patient.symptoms}</textarea>&nbsp;&nbsp;&nbsp; <br><span class="err"><form:errors path="PatientDetails.Symptoms"></form:errors></span>
				                  	</td>
				                  	<td>
				                  	<label for="amount"><b>Pain Scale:</b></label>
				                  	<input type="text" id="amount" name="Painscale"/>&nbsp;&nbsp;&nbsp;
				                  	<div id="slider"></div>
				                  </td>
				                </tr>
				                <tr>
                                 <td valign="middle" align="left" class="input_txt"></td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptom1">${patient.symptom1}</textarea>&nbsp;&nbsp;&nbsp; 
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
				                  	<textarea rows="3" cols="25" placeholder="Specify your Symptoms" name="Symptom2">${patient.symptom2}</textarea>&nbsp;&nbsp;&nbsp; 
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
				                  
				                  	<input type="radio" name="Symptom_Accident" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Symptom_Accident" value="No" class="input_txt">No</td>
				                  	<td></td>
				                </tr>   
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type Of Accident:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="Type_Of_Accident" class="input_cmbbx1" onchange='Checklight(this.value)';>
						                    <option selected="selected" value="autoaccident" >Auto</option>
											<option value="workaccident">Work</option>
											<option value="other">Other</option>
				                   		</select>
				                   <input type="text" name="accident" id="accident" style='display:none'/>
				                   	</td>
				                   	
				                </tr>  
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date Of Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" id="datepicker2" class="input_txtbx1" name="Date_Of_Accident" value="${patient.date_Of_Accident}"/><span class="err"><form:errors path="PatientDetails.Date_Of_Accident"></form:errors></span>
				                  </td>
				                  <td></td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Accident Reported:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Accident_Reported" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Accident_Reported" value="No" class="input_txt">No</td>
				                  
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medical Treatment for this Condition: &nbsp;&nbsp;&nbsp;&nbsp;When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="when1" value="${patient.when1}"/> <span class="err"><form:errors path="PatientDetails.when1"></form:errors></span></td>
				                  	<td></td>
				                  	</tr>
				                  	<tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Where:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="where1" value="${patient.where1}"/><span class="err"><form:errors path="PatientDetails.where1"></form:errors></span>
				                    </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Retained an Attorney for this Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Attorney_accident" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Attorney_accident" value="No" class="input_txt">No</td>
				                <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name Of Attorney:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="NameOfAttorney" value="${patient.nameOfAttorney}"/><span class="err"><form:errors path="PatientDetails.NameOfAttorney"></form:errors></span>
				                  
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Phone_Number" value="${patient.phone_Number}"/><span class="err"><form:errors path="PatientDetails.Phone_Number"></form:errors></span>
				                  	
				                  </td>
				                  <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Person at Fault for the Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Fault_accident" value="${patient.fault_accident}"/><span class="err"><form:errors path="PatientDetails.Fault_accident"></form:errors></span></td>
				                  	<td></td>                                                                                        
				                 
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance Company of the at Fault Person:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Insurance" value="${patient.insurance}"/><span class="err"><form:errors path="PatientDetails.Insurance"></form:errors></span></td>
				                  <td></td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Insurance_phone" value="${patient.insurance_phone}"/><span class="err"><form:errors path="PatientDetails.Insurance_phone"></form:errors></span></td>
				                  	<td></td>
				                  </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_auto" value="${patient.name_auto}"/><span class="err"><form:errors path="PatientDetails.Name_auto"></form:errors></span></td>
				                  	<td> </td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>phone of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Phone_auto" value="${patient.phone_auto}"/><span class="err"><form:errors path="PatientDetails.Phone_auto"></form:errors></span></td>
				                  	<td> </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Policy#:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Policy" value="${patient.policy}"/><span class="err"><form:errors path="PatientDetails.Policy"></form:errors></span></td>
				                  	<td> </td>
				                 
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Your Health Insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Name_health" value="${patient.name_health}"/><span class="err"><form:errors path="PatientDetails.Name_health"></form:errors></span></td>
				                  	
				                  <td></td>
				                </tr>
				            <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Health_phone" value="${patient.health_phone}"/><span class="err"><form:errors path="PatientDetails.Health_phone"></form:errors></span></td>
				                  	<td></td>
				                  
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Ever Been Involved in a Previous Auto or Work Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Prev_accident" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Prev_accident" value="No" class="input_txt">No</td>
				                  	
				                 
				                  <td></td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>When:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Prev_When" value="${patient.prev_When}"/><span class="err"><form:errors path="PatientDetails.Prev_When"></form:errors></span>
				                  	<td></td>
				                  	</tr>   
				                  	</table>
				                  	
				                  	<table align="right">
				                  	 <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous" style = "display:none" />&nbsp;</td>
                  <td>&nbsp;&nbsp;</td>
                  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
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
				                 <table>
				                 
				                 <tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Anemia" value="Anemia">Anemia </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Muscular" value="Muscular">Muscular Dystrophy </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Rheumatic" value="Rheumatic">Rheumatic Fever </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Allergies" value="Allergies">Allergies</td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Cancer" value="Cancer">Cancer </td>
				                   <td class="input_txt" align="left"><input type="checkbox" name="Polio1" value="Polio1">Polio </td>
				                  </tr>
				                  <tr>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Multiple" value="Multiple">Multiple Sclerosis</td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Scarlet" value="Scarlet">ScarletFever </td>
                                      <td class="input_txt" align="left"><input type="checkbox" name="HIV" value="HIV">HIV </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Sinus" value="Sinus">Sinus Trouble </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="Asthma" value="Asthma">Asthma </td>
				                  	 <td class="input_txt" align="left"><input type="checkbox" name="German" value="German">German Measles </td>
				                  	 </tr>
				                  	 <tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Nervousness" value="Nervousness">Nervousness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Numbness" value="Numbness">Numbness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Convulsions" value="Convulsions">Convulsions </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Epilepsy" value="Epilepsy">Epilepsy </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Concussion" value="Concussion">Concussion </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Dizziness" value="Dizziness">Dizziness </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Neuritis" value="Neuritis">Neuritis </td>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Rheumatism" value="Rheumatism">Rheumatism </td>
				                  	 <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Diabetes" value="Diabetes">Diabetes</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Arthritis" value="Arthritis">Arthritis </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Venereal" value="Venereal">Venereal Disease</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Backaches" value="Backaches">Backaches </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Tuberculosis" value="Tuberculosis">Tuberculosis	</td>    
				                    <td valign="top" align="left" class="input_txt"><input type="checkbox" name="Liver" value="Liver">Liver Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Kidney" value="Kidney">Kidney Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Thyroid" value="Thyroid">Thyroid Disease </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Alcoholism" value="Alcoholism">Alcoholism </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Hepatitis" value="Hepatitis">Hepatitis </td>
				                  	</tr>
				                  	<tr>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Mental" value="Mental">Mental Illness </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="High" value="High">High Blood Pressure</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Digestive" value="Digestive">Digestive Disorders </td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Heart" value="Heart">Heart trouble	</td>
				                  	<td valign="top" align="left" class="input_txt"><input type="checkbox" name="Other" value="Other">other </td>
				                 <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="Ifother" placeholder="If other" /></td>
				                  	</tr>
				                  	
				                  	</table> 
				                  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Surgeries or Major Illnesses You Have Had: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Illness" value="${patient.illness}"/><span class="err"><form:errors path="PatientDetails.Illness"></form:errors></span>
				                  	</tr>   
				                 
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dates:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker3" name="Dates" value="${patient.dates }"/><span class="err"><form:errors path="PatientDetails.Dates"></form:errors></span>
				                  	</tr>    		
				                  	
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medications You are Currently Taking and Why:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<textarea rows="3" cols="25" placeholder="Medications" name="Medications">${patient.medications}</textarea>&nbsp;&nbsp;&nbsp;<span class="err"><form:errors path="PatientDetails.Medications"></form:errors></span>
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
				  <input type="radio" name="Hazardous" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<div id="send_to_one"><label>If yes,Please List: </label><input type="text" id="list" name="Hazardousyes" /><br/><br/>
    </div><input type="radio" name="Hazardous" value="No" class="input_txt">No
			      
			      </div>
			      </td>
				  </tr>
				  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Females Only:<br>Are you pregnant:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="Female" value="yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="Female" value="No" class="input_txt">No</td>
				                
				                  	</tr>
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dr:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Dr" value="${patient.dr}"/><span class="err"><form:errors path="PatientDetails.Dr"></form:errors></span>
				                  	</tr>  
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="Patient" value="${patient.patient}"/><span class="err"><form:errors path="PatientDetails.Patient"></form:errors></span>
				                  	</tr>  
				                  	<table align="right">
				  <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  />&nbsp;</td>
                 
 				  <td>&nbsp;&nbsp;</td>
             		
				 <td>&nbsp;&nbsp;</td>
                  <td><input type="submit" class="submit_btn" value="Save" ></td>
                  <td>&nbsp;&nbsp;</td>
                  <td><input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='patientDetails'"></td>
				 
			</tr>
			</table>
				                  	 
				                  	</table>
				                   
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	</div>
				                  	
				                  	</td>
				                  	</tr>
				                  	
				                  	</table>
				                  	</c:otherwise>
				                  	</c:choose>
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
   
  <script type="text/javascript">
  
function Checklight(val){
 var element=document.getElementById('accident');
 var type1=document.getElementById('type_of_accident');
 var type = type1.options[type1.selectedIndex].value;
 /* document.location.href = "/header.jsp?value=type"; */
 
 if(val=='other')
 			{
   				element.style.display='block';
   				element.focus(); 
 			}
			 else  
 				  element.style.display='none';

} 
</script>

 <script type="text/javascript">
function toggle3(value){
	/* alert(value); */
	var e = document.getElementById('student');
	var e1=document.getElementById('employee');
if(value=='show3')
	{
 e.style.display="block";
 e1.style.display="none";
	}
else
	{
 e.style.display="none";
 e1.style.display="block";
	}
}
</script>
 
        <jsp:include page="footer.jsp"></jsp:include>







