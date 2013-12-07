<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
<script>
  $(function() {
	  $("#datepicker3").datepicker({changeMonth: true,changeYear: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'yy-mm-dd'});
		
		$("#datepicker2").datepicker({changeMonth: true, changeYear: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'yy-mm-dd' });
		
		
		$("#datepicker1").datepicker({ changeMonth: true,changeYear: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'yy-mm-dd' });
	  $("#datepicker").datepicker({ changeYear: true,changeMonth: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'yy-mm-dd' }).bind("change",function(){
	        var minValue = $(this).val();
	        minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
	        minValue.setDate(minValue.getDate()+1);
	        $("#datepicker").datepicker( "option", "minDate", minValue );
	    })
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
				<form action="updatepatientdetails" method="post" name="update" id="update">
					<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
						<tr>
        					<td valign="top" align="left">
        						<div> 
        							<div class="headings altheading">
	             				    <h2>Edit Patient Information</h2>
	       							</div>
	       				        </div>
	       						<div class="contentbox">
									<table cellpadding="0" cellspacing="0" border="0" width="100%">
  									  <tr>
    									<td align="left" valign="top" width="50%" style="padding-right:25px;">
    										<c:set value="${patientDetailsForm.patientDetails[0]}" var="patientDetails"/>
    											<table cellpadding="0" cellspacing="0" border="0" width="100%">
                       								 <tr class="row1">
                        	 							<td><span class="err">*</span>Name :</td>
                        	 							<input type="hidden" class="input_txtbx1" id="inp_id" value="${patientDetails.patient_id}" name="patient_id" />
                                 						<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.name }" name="name" /></br><span class="err"><form:errors path="PatientDetails.name"></form:errors></span></td>
                      								  </tr>
                        <tr class="row2">
                        	<td><span class="err">*</span>Date:</td>
                        	 <td class="input_txt"><input type="text" class="input_txtbx1" id="datepicker"   value="${patientDetails.date }" name="date" /></br><span class="err"><form:errors path="PatientDetails.date"></form:errors></span></td>
                        </tr> 
                        <tr class="row1">
                        	<td><span class="err">*</span>Street Address:</td>
							<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.streetAddress }" name="streetAddress" /></br><span class="err"><form:errors path="PatientDetails.streetAddress"></form:errors></span></td>
                        </tr> 
                        <tr class="row2">
                        	<td><span class="err">*</span>City:</td>
                        	<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.city}" name="city" /></br><span class="err"><form:errors path="PatientDetails.city"></form:errors></span></td>
						</tr>                        
						<tr class="row1">
                        	<td><span class="err">*</span>State:</td>
                        	<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.state }" name="state" /></br><span class="err"><form:errors path="PatientDetails.state"></form:errors></span></td>
						</tr>                        
						<tr class="row2">
                        	<td><span class="err">*</span>ZipCode:</td>
                        	<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.zipCode}" name="zipCode" /></br><span class="err"><form:errors path="PatientDetails.zipCode"></form:errors></span></td>
						</tr>                        
						
						<tr class="row1">
                        	<td><span class="err">*</span>Home phone:</td>
                        	<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.homephone}" name="homephone" /></br><span class="err"><form:errors path="PatientDetails.homephone"></form:errors></span></td>
						</tr>                        
						
						<tr class="row2">
                        	<td><span class="err">*</span>E-mail Id:</td>
                        	<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.emailid }" name="emailid" /></br><span class="err"><form:errors path="PatientDetails.emailid"></form:errors></span></td>
						</tr>                        
						
						<tr class="row1">
                        	<td><span class="err">*</span>MobileNumber:</td>
                        	<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.mobileNumber}" name="mobileNumber" /></br><span class="err"><form:errors path="PatientDetails.mobileNumber"></form:errors></span></td>
						</tr>                        
						
						<tr class="row2">
                        	<td><span class="err">*</span>DateOfBirth:</td>
                        	<td class="input_txt"><input type="text" class="input_txtbx1" id="datepicker1"   value="${patientDetails.dateOfBirth}" name="dateOfBirth" /></br><span class="err"><form:errors path="PatientDetails.dateOfBirth"></form:errors></span></td>
						</tr>                        
						
						<tr class="row1">
                        	<td><span class="err">*</span>Social Security Number:</td>
                        	<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.socialSecurityNumber}" name="socialSecurityNumber" /></br><span class="err"><form:errors path="PatientDetails.socialSecurityNumber"></form:errors></span></td>
						</tr>                        
						<tr class="row2">
                        	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Gender:</td>
				         	<td>	<input type="radio" name="gender" value="Male" class="input_txt"  <c:if test="${patientDetails.gender=='Male'}"><c:out value="checked=checked"/></c:if>>Male&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="gender" value="Female" class="input_txt"  <c:if test="${patientDetails.gender=='Female'}"><c:out value="checked=checked"/></c:if>>Female&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="gender" value="Transgender" class="input_txt"  <c:if test="${patientDetails.gender=='Transgender'}"><c:out value="checked=checked"/></c:if>>Transgender&nbsp;&nbsp;&nbsp;
				            </td>
				                  	
				        </tr>
				        <tr class="row1">
                        	 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>MaritalStatus:</td>
				        	 <td>	<input type="radio" name="maritalStatus" value="Single" class="input_txt"  <c:if test="${patientDetails.maritalStatus=='Single'}"><c:out value="checked=checked"/></c:if>>Single&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="maritalStatus" value="Married" class="input_txt"  <c:if test="${patientDetails.maritalStatus=='Married'}"><c:out value="checked=checked"/></c:if>>Married&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="maritalStatus" value="Divorced" class="input_txt"  <c:if test="${patientDetails.maritalStatus=='Divorced'}"><c:out value="checked=checked"/></c:if>>Divorced&nbsp;&nbsp;&nbsp;
				         	</td>
				        </tr>
				               
				          </table></td>
				          
				                <td align="left" valign="top"> <h2 class="quck-txt"></h2>
								<table cellpadding="0" cellspacing="0" border="0" width="100%">
							 	<tr class="row2">
									<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are you:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                 <td><input type="radio" name="areyou" value="Student" id="studentchecked" class="input_txt" onclick="radiocheck();" <c:if test="${patientDetails.areyou=='Student'}"><c:out value="checked=checked"/></c:if>>Student
				                  	<input type="radio" name="areyou" value="Employee" id="employeechecked" class="input_txt"  onclick="radiocheck();" <c:if test="${patientDetails.areyou=='Employee'}"><c:out value="checked=checked"/></c:if>>Employee
				                  </td>
				            	</tr>
				            	
							</table>
				            	<div id="studentno1" style="display:none;">
				            	<table cellpadding="0" cellspacing="0" border="0" width="100%">
				            	
				           			 <tr class="row1">
							 			<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Student:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				            		    <td valign="top" align="left" class="input_txt">
				                  			<input type="radio" name="student" value="FullTime" class="input_txt" <c:if test="${patientDetails.student=='FullTime'}"><c:out value="checked=checked"/></c:if>>Full Time&nbsp;&nbsp;&nbsp;
				                  			<input type="radio" name="student" value="PartTime" class="input_txt" <c:if test="${patientDetails.student=='PartTime'}"><c:out value="checked=checked"/></c:if>>Part Time
				             			</td>
				           			   </tr>
							
							</table>
							</div>
							
				          	<div id="employee" style="display:none;">
				            	
								<table cellpadding="0" cellspacing="0" border="0" width="100%">
								
					            <tr class="row1">
					                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Employer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</td>
					                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.employerName}" name="employerName" /></br><span class="err"><form:errors path="PatientDetails.employerName"></form:errors></span></td>
								</tr> 
				   			    <tr class="row2">
                        			<td><span class="err">*</span>Occupation:</td>
                        			<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.occupation}" name="occupation" /></br><span class="err"><form:errors path="PatientDetails.occupation"></form:errors></span></td>
								</tr>                        
						 		<tr class="row1">
                        			<td><span class="err">*</span>Employer Address:</td>
                        			<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.employerAddress }" name="employerAddress" /></br><span class="err"><form:errors path="PatientDetails.employerAddress"></form:errors></span></td>
								</tr>                        
						 		<tr class="row2">
                        			<td><span class="err">*</span>WorkPhone:</td>
                        			<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.workphone}" name="workphone" /></br><span class="err"><form:errors path="PatientDetails.workphone"></form:errors></span></td>
								</tr>                        
			    				<tr class="row1">
                        			<td><span class="err">*</span>EmployerCity:</td>
                        			<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.employerCity}" name="employerCity" /></br><span class="err"><form:errors path="PatientDetails.employerCity"></form:errors></span></td>
								</tr>                        
						 		<tr class="row2">
                        			<td><span class="err">*</span>State:</td>
                        			<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.estate}" name="estate" /></br><span class="err"><form:errors path="PatientDetails.estate"></form:errors></span></td>
								</tr>
							    <tr class="row1">
                        			<td><span class="err">*</span>ZipCode:</td>
                        			<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.ezip}" name="ezip" /></br><span class="err"><form:errors path="PatientDetails.ezip"></form:errors></span></td>
								</tr> 
								                   
							</table>
							</div>
							 <table cellpadding="0" cellspacing="0" border="0" width="100%">
				                
				 			 <tr class="row2">
				               
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Spouse's or significant others name:</td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.spousesName}" name="spousesName" /></br><span class="err"><form:errors path="PatientDetails.spousesName"></form:errors></span></td>
							</tr>
							 <tr class="row1">
                        		<td><span class="err">*</span>Spouses Employer:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        		<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.spousesEmp}" name="spousesEmp" /></br><span class="err"><form:errors path="PatientDetails.spousesEmp"></form:errors></span></td>
							</tr>   	                     
						
						    <tr class="row2">
                        		<td><span class="err">*</span>Spouse's Workphone:</td>
                        		<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.spousesph}" name="spousesph" /></br><span class="err"><form:errors path="PatientDetails.spousesph"></form:errors></span></td>
							</tr>                        
						    <tr class="row1">
                        		<td><span class="err">*</span>Name of Nearest Friend/ Relative Not Living With You:</td>
                        		<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.name_friend}" name="name_friend" /></br><span class="err"><form:errors path="PatientDetails.name_friend"></form:errors></span></td>
							</tr>                        
						 	<tr class="row2">
                        		<td><span class="err">*</span>Phone of Nearest Friend/ Relative Not Living With You:</td>
                        		<td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.phone_friend}" name="phone_friend" /></br><span class="err"><form:errors path="PatientDetails.phone_friend"></form:errors></span></td>
							</tr>                        
						    <tr class="row1">
                        		<td><span class="err">*</span>Have you ever had chiropractic care? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                <td> 	<input type="radio" name="chiropratic_care" value="yes" class="input_txt" <c:if test="${patientDetails.chiropratic_care=='yes'}"><c:out value="checked=checked"/></c:if>>yes&nbsp;&nbsp;&nbsp;
				                  		<input type="radio" name="chiropratic_care" value="No" class="input_txt"<c:if test="${patientDetails.chiropratic_care=='No'}"><c:out value="checked=checked"/></c:if>>No
				                </td>
						   </tr>                        
						</table>
						</td>
					<td>
					</tr>
					</table>
						
                   <table align="right">
				               <tr>
				  
                     <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
                     <td>&nbsp;&nbsp;</td>
                     <td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewpatient'"></td>
                  </tr>
				             
				  </table>
				  </td>
				  </tr>
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
        	<h2>Update Present Complaint</h2>
	            </div>
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        
                
      
				              <tr>
				         	 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Please Describe Your Symptoms Briefly:</td>
				          		<td class="input_txt">
				          			<textarea rows="3" cols="25" name="symptoms" > ${patientDetails.symptoms}</textarea>&nbsp;&nbsp;&nbsp;
				          		</td>
				          			<td><label for="amount"><b>Pain Scale:</b></label>
				          			<input type="text" class="input_txtbx1" id="amount"  value="${patientDetails.painscale}" name="painscale" /></br><span class="err"><form:errors path="PatientDetails.painscale"></form:errors></span>
				          				<div id="slider"></div>
				                 	 </td>
				                </tr>
				                
				                
				                <tr>
				         	
				          		<td ></td>
				          		<td>
				          			<textarea rows="3" cols="25" name="symptom1" > ${patientDetails.symptom1}</textarea>&nbsp;&nbsp;&nbsp; </td>
				          			<td><label for="amount"><b>Pain Scale:</b></label>
				          			
				          			<input type="text" class="input_txtbx1" id="amount1"value="${patientDetails.painscale1}" name="painscale1" /></br><span class="err"><form:errors path="PatientDetails.painscale1"></form:errors></span>
				          				<div id="slider1"></div>
				                  </td>
				                </tr>
				                <tr>
				         	 <td class="input_txt"></td>
				         	
				          		<td>
				          			<textarea rows="3" cols="25" name="symptom2" > ${patientDetails.symptom2}</textarea>&nbsp;&nbsp;&nbsp; </td>
				          			<td><label for="amount"><b>Pain Scale:</b></label>
				          			<input type="text" class="input_txtbx1" id="amount2"  name="painscale2" /></br><span class="err"><form:errors path="PatientDetails.painscale2"></form:errors></span>
				          				<div id="slider2"></div>
				                  </td>
				                </tr>
				                 <tr class="row2">
                        <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are These Symptoms Due to an Accident?</td>
				                 <td>	<input type="radio" name="symptom_Accident" value="yes" class="input_txt" checked="true"<c:if test="${patientDetails.symptom_Accident=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                 	<input type="radio" name="symptom_Accident" value="No" class="input_txt"<c:if test="${patientDetails.symptom_Accident=='No'}"><c:out value="checked=checked"/></c:if>>No
				                 	</td>
				                  	<td></td>
				        </tr> 
				       
				          <tr class="row1">
                							<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Type Of Accident:</td>

				                  		
				                  		<td>	<select name="type_Of_Accident" id="typeofaccident" class="input_cmbbx1" onchange='Checklight();'>
						                  <option value="autoaccident" <c:if test="${patientDetails.type_Of_Accident=='autoaccident'}"><c:out value="selected"/></c:if>>Auto</option>
						                  <option value="workaccident" <c:if test="${patientDetails.type_Of_Accident=='workaccident'}"><c:out value="selected"/></c:if>>Work</option>
						                  <option value="otheraccident"  <c:if test="${patientDetails.type_Of_Accident=='otheraccident'}"><c:out value="selected"/></c:if>>Other</option>
						                    </select>
						                    </td>
						                   	 <td><input type="text" name="accident" id="accident1" style='display:none' value="${patientDetails.accident}" /></br><span class="err"><form:errors path="PatientDetails.accident"></form:errors></span></td>

						           </tr>  
						 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date Of Accident:</td>
                        <td class="input_txt"><input type="text" class="input_txtbx1" id="datepicker2"   value="${patientDetails.date_Of_Accident}" name="date_Of_Accident" /><span class="err"><form:errors path="PatientDetails.date_Of_Accident"></form:errors></span></td>
				                 <td></td>                   
						  </tr>
						  <tr class="row1">
						   <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Accident Reported:
						   </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="accident_Reported" value="yes" class="input_txt" <c:if test="${patientDetails.accident_Reported=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="accident_Reported" value="No" class="input_txt"<c:if test="${patientDetails.accident_Reported=='No'}"><c:out value="checked=checked"/></c:if>>No
				                </td>
				              </tr>        
				            
						 <tr class="row2">
				          <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medical Treatment for this Condition: &nbsp;&nbsp;&nbsp;&nbsp;When:</td>
                        <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.when1}" name="when1" /></br><span class="err"><form:errors path="PatientDetails.when1"></form:errors></span></td>
						<td></td>
						</tr>   
						<tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Where:</td>
                        <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.where1}" name="where1" /></br><span class="err"><form:errors path="PatientDetails.where1"></form:errors></span></td>
				         </tr>
				          <tr class="row2">
                        <td><span class="err">*</span>Have You Retained an Attorney for this Accident:</td>
				                  <td>	<input type="radio" name="attorney_accident" value="yes" class="input_txt" <c:if test="${patientDetails.attorney_accident=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="attorney_accident" value="No" class="input_txt"<c:if test="${patientDetails.attorney_accident=='No'}"><c:out value="checked=checked"/></c:if>>No
									<td></td>
						</tr>   
						 <tr class="row1">
                        <td><span class="err">*</span>Name Of Attorney:</td>
                        <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.nameOfAttorney}" name="nameOfAttorney" /></br><span class="err"><form:errors path="PatientDetails.nameOfAttorney"></form:errors></span></td>
						</tr>          	
				          
						 <tr class="row2">
                        <td><span class="err">*</span>phone:</td>
                        <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.phone_Number}" name="phone_Number" /></br><span class="err"><form:errors path="PatientDetails.phone_Number"></form:errors></span></td>
						<td></td>
						</tr> 
						    <tr class="row1">
                        <td><span class="err">*</span>Name of Person at Fault for the Accident:</td>
                        <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.fault_accident}" name="fault_accident" /></br><span class="err"><form:errors path="PatientDetails.fault_accident"></form:errors></span></td>
						</tr>  
						<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance Company of the at Fault Person:</td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.insurance}" name="insurance" /></br><span class="err"><form:errors path="PatientDetails.insurance"></form:errors></span></td>     	         
				       			<td></td>
				        </tr>
				         <tr class="row1">
                        <td><span class="err">*</span>Phone:</td>
                        <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.insurance_phone}" name="insurance_phone" /></br><span class="err"><form:errors path="PatientDetails.insurance_phone"></form:errors></span></td>
						</tr>   
						  <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="name_auto" value="${patientDetails.name_auto}"/><span class="err"><form:errors path="PatientDetails.name_auto"></form:errors></span></td>
				                  	<td> </td>
				                </tr>
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>phone of your auto insurance:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="phone_auto" value="${patientDetails.phone_auto}"/><span class="err"><form:errors path="PatientDetails.phone_auto"></form:errors></span></td>
				                  	<td> </td>
				                </tr>                     
						 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Policy#:</td>
				                 <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.policy}" name="policy" /></br><span class="err"><form:errors path="PatientDetails.policy"></form:errors></span></td>	 
				        			<td></td>
				        </tr>
				         <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Your Health Insurance:</td>
				                   <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.name_health}" name="name_health" /></br><span class="err"><form:errors path="PatientDetails.name_health"></form:errors></span></td>
				         </tr>
				         <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Phone:</td>
				                   <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.health_phone }" name="health_phone" /></br><span class="err"><form:errors path="PatientDetails.health_phone"></form:errors></span></td>
				        			<td></td>
				         </tr>                  
				         <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Have You Ever Been Involved in a Previous Auto or Work Accident:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="prev_accident" value="yes" class="input_txt" <c:if test="${patientDetails.prev_accident=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="prev_accident" value="No" class="input_txt"<c:if test="${patientDetails.prev_accident=='No'}"><c:out value="checked=checked"/></c:if>>No
				                  	</td>
				                 
				                  <td></td>
				                </tr>
				          <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>When:</td>
				                   <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.prev_When }" name="prev_When" /></br><span class="err"><form:errors path="PatientDetails.prev_When"></form:errors></span></td>       
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
				                 <tr class="row1">
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Anemia" name="anemia" <c:if test="${patientDetails.anemia=='Anemia'}"><c:out value="Checked"/></c:if>   />Anemia</td>
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Muscular" name="muscular" <c:if test="${patientDetails.muscular=='Muscular'}"><c:out value="Checked"/></c:if>   />Muscular</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Rheumatic" name="rheumatic" <c:if test="${patientDetails.rheumatic=='Rheumatic'}"><c:out value="Checked"/></c:if>   />Rheumatic</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Allergies" name="allergies" <c:if test="${patientDetails.allergies=='Allergies'}"><c:out value="Checked"/></c:if>   />Allergies</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Cancer" name="cancer" <c:if test="${patientDetails.cancer=='Cancer'}"><c:out value="Checked"/></c:if>   />Cancer</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Polio1" name="polio1" <c:if test="${patientDetails.polio1=='Polio1'}"><c:out value="Checked"/></c:if>   />Polio1</td>
								 </tr>
				
				                 <tr class="row2">
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Multiple" name="multiple" <c:if test="${patientDetails.multiple=='Multiple'}"><c:out value="Checked"/></c:if>   />Multiple</td>
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Scarlet" name="scarlet" <c:if test="${patientDetails.scarlet=='Scarlet'}"><c:out value="Checked"/></c:if>   />Scarlet Fever</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="HIV" name="HIV" <c:if test="${patientDetails.HIV=='HIV'}"><c:out value="Checked"/></c:if>   />HIV</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Sinus" name="sinus" <c:if test="${patientDetails.sinus=='Sinus'}"><c:out value="Checked"/></c:if>   />Sinus</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Asthma" name="asthma" <c:if test="${patientDetails.asthma=='Asthma'}"><c:out value="Checked"/></c:if>   />Asthma</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="German" name="german" <c:if test="${patientDetails.german=='German'}"><c:out value="Checked"/></c:if>   />German Measles </td>
								 </tr>
				
				                 <tr class="row1">
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Nervousness" name="nervousness" <c:if test="${patientDetails.nervousness=='Nervousness'}"><c:out value="Checked"/></c:if>   />Nervousness</td>
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Numbness" name="numbness" <c:if test="${patientDetails.numbness=='Numbness'}"><c:out value="Checked"/></c:if>   />Numbness</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Convulsions" name="convulsions" <c:if test="${patientDetails.convulsions=='Convulsions'}"><c:out value="Checked"/></c:if>   />Convulsions</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Epilepsy" name="epilepsy" <c:if test="${patientDetails.epilepsy=='Epilepsy'}"><c:out value="Checked"/></c:if>   />Epilepsy</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Concussion" name="concussion" <c:if test="${patientDetails.concussion=='Concussion'}"><c:out value="Checked"/></c:if>   />Concussion</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Dizziness" name="dizziness" <c:if test="${patientDetails.dizziness=='Dizziness'}"><c:out value="Checked"/></c:if>   />Dizziness</td>
								 </tr>
				
				                 <tr class="row2">
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Neuritis" name="Neuritis" <c:if test="${patientDetails.neuritis=='Neuritis'}"><c:out value="Checked"/></c:if>   />Neuritis</td>
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Rheumatism" name="rheumatism" <c:if test="${patientDetails.rheumatism=='Rheumatism'}"><c:out value="Checked"/></c:if>   />Rheumatism</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Diabetes" name="diabetes" <c:if test="${patientDetails.diabetes=='Diabetes'}"><c:out value="Checked"/></c:if>   />Diabetes</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Arthritis" name="arthritis" <c:if test="${patientDetails.arthritis=='Arthritis'}"><c:out value="Checked"/></c:if>   />Arthritis</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Venereal" name="venereal" <c:if test="${patientDetails.venereal=='Venereal'}"><c:out value="Checked"/></c:if>   />Venereal</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Backaches" name="backaches" <c:if test="${patientDetails.backaches=='Backaches'}"><c:out value="Checked"/></c:if>   />Backaches</td>
								 </tr>				 				 				 
								 <tr class="row1">
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Tuberculosis" name="tuberculosis" <c:if test="${patientDetails.tuberculosis=='Tuberculosis'}"><c:out value="Checked"/></c:if>   />Tuberculosis</td>
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Liver" name="liver" <c:if test="${patientDetails.liver=='Liver'}"><c:out value="Checked"/></c:if>   />Liver Disease</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Kidney" name="kidney" <c:if test="${patientDetails.kidney=='Kidney'}"><c:out value="Checked"/></c:if>   />Kidney Disease</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Thyroid" name="thyroid" <c:if test="${patientDetails.thyroid=='Thyroid'}"><c:out value="Checked"/></c:if>   />Thyroid Disease</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Alcoholism" name="alchoholism" <c:if test="${patientDetails.alchoholism=='Alcoholism'}"><c:out value="Checked"/></c:if>   />Alcoholism</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Hepatitis" name="hepatitis" <c:if test="${patientDetails.hepatitis=='Hepatitis'}"><c:out value="Checked"/></c:if>   />Hepatitis</td>
								 </tr>
				
				                 <tr class="row2">
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Mental" name="mental" <c:if test="${patientDetails.mental=='Mental'}"><c:out value="Checked"/></c:if>   />Mental</td>
				                 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="High" name="high" <c:if test="${patientDetails.high=='High'}"><c:out value="Checked"/></c:if>   />High</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Digestive" name="digestive" <c:if test="${patientDetails.digestive=='Digestive'}"><c:out value="Checked"/></c:if>   />Digestive</td>
								 <td valign="top" align="left" class="input_txt"><input type="checkbox"  value="Heart" name="heart" <c:if test="${patientDetails.heart=='Heart'}"><c:out value="Checked"/></c:if>   />Heart</td>
								 <td valign="top" align="left" class="input_txt">
								 <input type="checkbox"  value="Other" name="other" id="othercheck"onclick="Other();"<c:if test="${patientDetails.other=='Other'}"><c:out value="Checked"/></c:if>   />Other
								<input type="text" class="input_txtbx1"   id="other1" style='display:none'  value="${patientDetails.ifother}" name="ifother" /></br><span class="err"><form:errors path="patient.ifother"></form:errors></span></td>

								
					
					</tr>
					</table>
					 <tr class="row2">
                        <td><span class="err">*</span>Surgeries or Major Illnesses You Have Had: </td>
                        <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.illness }" name="illness" /></br><span class="err"><form:errors path="PatientDetails.illness"></form:errors></span></td>
					</tr>   
					  <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dates:</td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="datepicker3"   value="${patientDetails.dates }" name="dates" /></br><span class="err"><form:errors path="PatientDetails.dates"></form:errors></span></td>
				    	</tr>    		
				                  	
				                  	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Medications You are Currently Taking and Why:</td>
				                  <td>
				                  	<textarea rows="3" cols="25" name="medications">${patientDetails.medications}</textarea>  </td>  
				                  </tr>
				      	
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do You:</td>
				              
				                  <td valign="top" align="left" class="input_txt">
				                  <input type="checkbox"  value="Drink" name="drink" <c:if test="${patientDetails.drink=='Drink'}"><c:out value="Checked"/></c:if>   />Drink Regularly	&nbsp;&nbsp;&nbsp;&nbsp;
				                  <input type="checkbox"  value="Smoke" name="smoke" <c:if test="${patientDetails.smoke=='Smoke'}"><c:out value="Checked"/></c:if>   />Smoke	&nbsp;&nbsp;&nbsp;&nbsp;
				                  <input type="checkbox"  value="Drugs" name="drugs" <c:if test="${patientDetails.drugs=='Drugs'}"><c:out value="Checked"/></c:if>   />Take Recreational Drugs	&nbsp;&nbsp;&nbsp;&nbsp;
				                  <input type="checkbox"  value="Diet" name="diet" <c:if test="${patientDetails.diet=='Diet'}"><c:out value="Checked"/></c:if>   />Diet	&nbsp;&nbsp;&nbsp;&nbsp;
				                    <input type="checkbox"  value="Exercise" name="exercise" <c:if test="${patientDetails.exercise=='Exercise'}"><c:out value="Checked"/></c:if>   />Exercise Regularly	&nbsp;&nbsp;&nbsp;&nbsp;
				                  </td>
				                  </tr>
				                  	
				                  	
				      <tr class="row2">
				 				 <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Do You Work Around Hazardous Substances:
				 			     </td>
				  				 <td valign="top" align="left" class="input_txt">
				 
										  <input type="radio" name="hazardous" value="yes" class="input_txt" id="hazardouscheck" onclick="Hazardous();"<c:if test="${patientDetails.hazardous=='yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				 						  <label>If yes,Please List:</label>
				 						  <input type="text" class="input_txtbx1"   value="${patientDetails.hazardousyes}" name="hazardousyes" id="hazardousyes1" style='display:none'/></br><span class="err"><form:errors path="PatientDetails.hazardousyes"></form:errors></span>
										
										  <input type="radio" name="hazardous" value="No" class="input_txt"  onclick="Hazardous();"<c:if test="${patientDetails.hazardous=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;&nbsp;
			    				 </td>
					  </tr>
					   <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Females Only:<br>Are you pregnant:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="female" value="yes" class="input_txt" <c:if test="${patientDetails.female=='yes'}"><c:out value="checked=checked"/></c:if>>Yes
				                  	<input type="radio" name="female" value="No" class="input_txt"<c:if test="${patientDetails.female=='No'}"><c:out value="checked=checked"/></c:if>>No
				                
				      </tr>
				      	<tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Dr:</td>
				                  <td> <input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.dr}" name="dr" /></br><span class="err"><form:errors path="PatientDetails.dr"></form:errors></span></td>
				       </tr>
				       <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:</td>
				                  <td> <input type="text" class="input_txtbx1" id="inp_id"   value="${patientDetails.patient}" name="patient" /></br><span class="err"><form:errors path="PatientDetails.patient"></form:errors></span></td>
				      </tr>
				        <table align="right">        
				         
				     <tr>
				  <td><br><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  />&nbsp;</td>
                 
 				  <td>&nbsp;&nbsp;</td>
             		 <td><input type="submit" class="submit_btn1" value="Update" ></td>
				
                  <td>&nbsp;&nbsp;</td>
                  <td><input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='viewpatient'"></td>
				 
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
					</div>
					</div>
					</td>
					</tr>
					</table>
					</form>
					</div>
					</div>
					</div>
					</body>
					</html>
					
<script> 


$(document).ready(function(){
	
  $(function() {
	 
	    $( "#slider" ).slider({
	      value:("${patientDetails.painscale}"),
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
	      value:("${patientDetails.painscale1}"),
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
	      value:("${patientDetails.painscale2}"),
	      min: 0,
	      max: 10,
	      step: 1,
	      slide: function( event, ui ) {
	        $( "#amount2" ).val(+ ui.value );
	      }
	    });
	    $( "#amount2" ).val(+ $( "#slider2" ).slider( "value" ) );
	  });
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
  
function Checklight(){
	

 


 var element=document.getElementById('accident1');
  var type1=document.getElementById('typeofaccident');
 var type = type1.options[type1.selectedIndex].value;


 var index = type1.selectedIndex; 



 var index = type1.selectedIndex; 
 
/*  alert(type2);
 alert(index); */ 

 


 
 if(type=='otheraccident')


	 {
	
   element.style.display='block';

	 }
 else 
	 {
	
   element.style.display='none';
	 }
} 
</script>

 <script type="text/javascript">
 function Other()
	{
		var element = document.getElementById('other1');
		if(document.getElementById('othercheck').checked)
			{
				element.style.display="block";
			}
		else
			element.style.display="none";
	}



function radiocheck()
{
	var e = document.getElementById('studentno1');
	var e1=document.getElementById('employee');
	if(document.getElementById('studentchecked').checked)
	{
		
		e.style.display="block";
		e1.style.display="none";
	}
else if(document.getElementById('employeechecked').checked)
	{
		
		e.style.display="none";
		e1.style.display="block";
	}		
}
function Hazardous()
{
	
	var element = document.getElementById('hazardousyes1');
	if(document.getElementById('hazardouscheck').checked)
		{
		
			element.style.display="block";
		
		}
	else
		element.style.display="none";
	
	
}	

</script>
<script>

window.onload = function(){
	Checklight();Other();radiocheck();Hazardous();
}

</script>

        <jsp:include page="footer.jsp"></jsp:include>
                   	