<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/jquery.min.js"></script>
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
	  <form method="post" action="patientDetails">
	  <div class="tabs-spacer"></div>
	  <div id="tabs-1">
		<div id="right_content">
				<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

	 			 <tr>
        			<td valign="top" align="left">
       
        	<div class="headings altheading">
	              <h2>Patient Information Details</h2>
	       </div>     
	       
	       
				<div class="contentbox">

          	    <table cellpadding="0" cellspacing="0" border="0" width="100%">
  					<tr>
    					<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
                    	    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                       	<br>
                        <br>
                        <tr class="row1">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <c:forEach items="${patientDetailsForm.patientDetails}" var="patientDetails" varStatus="status">
                		
                        <tr class="row1">
                        	  <td><span class="err">*</span>Name</td>
                			 <td>${patientDetails.name}</td>
                		</tr>	 
                		<tr class="row2">
				                  <td><span class="err">*</span> Date:</td>
				                  <td>${patientDetails.date}</td>
				        </tr>   
				        <tr class="row1">
				        <td><span class="err">*</span>Street Address:</td>
				        <td>${patientDetails.streetAddress}</td>
				        </tr>
				         <tr class="row2">
				        <td><span class="err">*</span>City:</td>
				        <td>${patientDetails.city}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">*</span>State:</td>
				        <td>${patientDetails.state}</td>
				        </tr>
				         <tr class="row2">
				        <td><span class="err">*</span>ZipCode:</td>
				        <td>${patientDetails.zipCode}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">*</span>Home phone:</td>
				        <td>${patientDetails.homephone}</td>
				        </tr>
				         <tr class="row2">
				        <td>><span class="err">*</span>E-mail Id:</td>
				        <td>${patientDetails.emailid}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">*</span>MobileNumber:</td>
				        <td>${patientDetails.mobileNumber}</td>
				        </tr>
				         <tr class="row2">
				        <td><span class="err">*</span>DateOfBirth:</td>
				        <td>${patientDetails.dateOfBirth}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">*</span>Social Security Number:</td>
				        <td>${patientDetails.socialSecurityNumber}</td>
				        </tr>
				         <tr class="row2">
				        <td><span class="err">*</span>Gender:</td>
				        <td>${patientDetails.gender}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">*</span>MaritalStatus:</td>
				        <td>${patientDetails.maritalStatus}</td>
				        </tr>
				        </table>
				       
				          <td align="left" valign="top"> <h2 class="quck-txt"></h2>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							 <tr class="row1">
				        <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Are you:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">${patientDetails.areyou}</td>
				                 
				        		</tr>
				           
							
							 
							<c:if test="${patientDetails.areyou =='Employee'}">
							<tr class="row2">
							<td><span class="err">*</span>Student:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				        <td>${patientDetails.student}</td>
				        </tr>
							<tr class="row1">
							<td><span class="err">*</span>Employer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>${patientDetails.employerName}</td>
							</tr>
				          <tr class="row2">
				         	<td><span class="err">*</span>Occupation:</td>
				         	<td>${patientDetails.occupation}</td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>Employer Address:</td>
				         	<td>${patientDetails.employerAddress}</td>
				        </tr>
				          <tr class="row2">
				         	<td><span class="err">*</span>WorkPhone:</td>
				         	<td>${patientDetails.workphone}</td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>EmployerCity:</td>
				         	<td>${patientDetails.employerCity}</td>
				        </tr>
				        
				          <tr class="row2">
				         	<td><span class="err">*</span>State:</td>
				         	<td>${patientDetails.estate}</td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>ZipCode:</td>
				         	<td>${patientDetails.ezip}</td>
				        </tr>
				          </c:if>      
				           <tr class="row2">
				                  	<td><span class="err">*</span>Spouse's or significant others name:</td></td>
								    <td>${patientDetails.spousesName}</td>              
				                   </tr>
				                  <tr class="row1">
				                  <td><span class="err">*</span>Spouses Employer:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td>${patientDetails.spousesEmp}</td>
				                  </tr>
				                  <tr class="row2">
				                  <td><span class="err">*</span>Spouse's Workphone:</td>
				                  <td>${patientDetails.spousesph}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td><span class="err">*</span>Name of Nearest Friend/ Relative Not Living With You:</td>
				                  <td>${patientDetails.name_friend}</td>
				                  </tr>
				                    <tr class="row2">
				                  <td><span class="err">*</span>Phone of Nearest Friend/ Relative Not Living With You:</td>
				                  <td>${patientDetails.phone_friend}</td>
				                  </tr>
				                    <tr class="row1">
				                  <td><span class="err">*</span>Have you ever had chiropractic care? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td>${patientDetails.chiropratic_care}</td>
				                  </tr>
				                  </table>
				                  <table align="right">
				  <tr>
				  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				  <td>&nbsp;&nbsp;</td>
				  <td><br><input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewpatient'"/><br></td>
				  </tr>
				  </table>
				                  </td>
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
				                  
				                
		<div id="tabs-2">           
         <div id="right_content">
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>View Present Complaint</h2>
	            </div>
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        
                
      
				              <tr class="row2">
				         	<td><span class="err">*</span>Please Describe Your Symptoms Briefly:</td>
				         	<td>${patientDetails.symptoms}</td>
				         	<td>Pain Scale:</td>
				         	<td>${patientDetails.painscale}</td>
				         	</tr>
				         	<tr class="row1">
				         	<td></td>
				         	<td>${patientDetails.symptom1}</td>
				         	<td>Pain Scale1:</td>
				         	<td>${patientDetails.painscale1}</td>
				         	
				        </tr>
				        <tr class="row2">
				        	<td></td>
				        	<td>${patientDetails.symptom2}</td>
				         	<td>Pain Scale2:</td>
				         	<td>${patientDetails.painscale2}</td>
				         
				        </tr>
				        
				       <tr class="row1">
				         	<td><span class="err">*</span>Are These Symptoms Due to an Accident?</td>
				         	<td>${patientDetails.symptom_Accident}</td>
				         	<td></td>
				         	<td></td>	
				        </tr>
				         <tr class="row2">
				         
				         	<td><span class="err">*</span>Type Of Accident:</td>
				         	<td>${patientDetails.type_Of_Accident}</td>
				         	<td></td>
				         	<td></td>
				         	</tr>
				         				         	<%-- <c:if test="${patientDetails.type_Of_Accident == 'other'}">
				         			<td>${patientDetails.accident}</td>
				         </c:if>
				         <c:if test="${patientDetails.type_Of_Accident != 'other'}">
				         <c:out value="${patientDetails.type_Of_Accident}"></c:out>
				         	<td>${patientDetails.type_Of_Accident}</td>
				         	</c:if> --%>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>Date Of Accident:</td>
				         	<td>${patientDetails.date_Of_Accident}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				      
				         <tr class="row2">
				         	<td><span class="err">*</span>Accident Reported:</td>
				         	<td>${patientDetails.accident_Reported}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				          
				          <tr class="row1">
				         	<td><span class="err">*</span>Medical Treatment for this Condition: &nbsp;&nbsp;&nbsp;&nbsp;When:</td>
				         	<td>${patientDetails.when1}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">*</span>Where:</td>
				         	<td>${patientDetails.where1}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				        
				          <tr class="row1">
				         	<td><span class="err">*</span>Have You Retained an Attorney for this Accident:</td>
				         	<td>${patientDetails.attorney_accident}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">*</span>Name Of Attorney:</td>
				         	<td>${patientDetails.nameOfAttorney}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				        
				          <tr class="row1">
				         	<td><span class="err">*</span>phone:</td>
				         	<td>${patientDetails.phone_Number}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">*</span>Name of Person at Fault for the Accident:</td>
				         	<td>${patientDetails.fault_accident}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>Insurance Company of the at Fault Person:</td>
				         	<td>${patientDetails.insurance}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">*</span>Phone:</td>
				         	<td>${patientDetails.insurance_phone}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>Name of your auto insurance:</td>
				         	<td>${patientDetails.name_auto}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">*</span>phone of your auto insurance:</td>
				         	<td>${patientDetails.phone_auto}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>Policy#:</td>
				         	<td>${patientDetails.policy}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">*</span>Name of Your Health Insurance</td>
				         	<td>${patientDetails.name_health}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>Phone:</td>
				         	<td>${patientDetails.health_phone}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">*</span>Have You Ever Been Involved in a Previous Auto or Work Accident:</td>
				         	<td>${patientDetails.prev_accident}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>When:</td>
				         	<td>${patientDetails.prev_When}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				           	</tr>   
				</table>
				<table align="right">
				  <tr>
				  <td><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  /></td>
				  	<td>&nbsp;&nbsp;</td>
				  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				  <td>&nbsp;&nbsp;</td>
				  <td><br><input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewpatient'"/><br></td>
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
				         	<td>${patientDetails.anemia}</td>
				         	<td>${patientDetails.muscular}</td>
				         	<td>${patientDetails.rheumatic}</td>
				         	<td>${patientDetails.allergies}</td>
				         	<td>${patientDetails.cancer}</td>
				         	<td>${patientDetails.polio1}</td>
				         
				        </tr>
				         <tr class="row1">
				         <td>${patientDetails.multiple}</td>
				         	<td>${patientDetails.scarlet}</td>
				         	<td>${patientDetails.HIV}</td>
				         	<td>${patientDetails.sinus}</td>
				         	<td>${patientDetails.asthma}</td>
				         	<td>${patientDetails.german}</td>
				        </tr>
				         <tr class="row1">
				         	<td>${patientDetails.nervousness}</td>
				         	<td>${patientDetails.numbness}</td>
				         	<td>${patientDetails.convulsions}</td>
				         	<td>${patientDetails.epilepsy}</td>
				         	<td>${patientDetails.concussion}</td>
				         	<td>${patientDetails.dizziness}</td>
				        </tr>
				         <tr class="row1">
				         <td>${patientDetails.neuritis}</td>
				         	<td>${patientDetails.rheumatism}</td>
				         	<td>${patientDetails.diabetes}</td>
				         	<td>${patientDetails.arthritis}</td>
				         	<td>${patientDetails.venereal}</td>
				         	<td>${patientDetails.backaches}</td>
				        </tr>
				         <tr class="row1">
				         <td>${patientDetails.tuberculosis}</td>
				         	<td>${patientDetails.liver}</td>
				         	<td>${patientDetails.kidney}</td>
				         	<td>${patientDetails.thyroid}</td>
				         	<td>${patientDetails.alchoholism}</td>
				         	<td>${patientDetails.hepatitis}</td>
				        </tr>
				        
				         <tr class="row1">
				         	<td>${patientDetails.mental}</td>
				         	<td>${patientDetails.high}</td>
				         	<td>${patientDetails.digestive}</td>
				         	<td>${patientDetails.heart}</td>
				         	<td>${patientDetails.other}</td>
				         	<td>${patientDetails.ifother}</td>
				        </tr>
				        </table>
				        
				        
				         <tr class="row2">
				         <td><span class="err">*</span>Surgeries or Major Illnesses You Have Had: </td>
				         <td>${patientDetails.illness}</td>
				         </tr>
				         <tr class="row1">
				         	<td><span class="err">*</span>Dates:</td>
				         	<td>${patientDetails.dates}</td>
				         </tr>	
				         <tr class="row2">
				         	<td><span class="err">*</span>Medications You are Currently Taking and Why:</td>
				         	<td>${patientDetails.medications}</td>
				        </tr>
				        <tr class="row1">
				        	<td><span class="err">*</span>Do You:</td>
				         	<td>${patientDetails.drink}  ${patientDetails.smoke}
				         	${patientDetails.drugs}
				         	${patientDetails.diet}
				         	${patientDetails.exercise}</td>
				        </tr>
				        <tr class="row2">
				        	<td><span class="err">*</span>Do You Work Around Hazardous Substances:
				        	<c:if test="${patientDetails.hazardous=='yes'}">
				        	${patientDetails.hazardousyes}
				        	</c:if>
				        	<c:if test="${patientDetails.hazardous=='No'}">
				        	${patientDetails.hazardous}
				        	</c:if>
				        	 </td>
				        	 <td></td>
				        </tr>
				        <tr class="row1">
				        <td><span class="err">*</span>Females Only:<br>Are you pregnant:</td>
				        <td>${patientDetails.female}</td>
				        </tr>
				        <tr class="row2">
				        	<td><span class="err">*</span>Dr:</td>
				        	<td>${patientDetails.dr}</td>
				        
				        </tr>
				        <tr>
				        <td><span class="err">*</span>Patient Signature:</td>
				        <td>${patientDetails.patient}</td>
				      </tr>
				      </table>
				      <table align="right">
				  <tr>
				  <td><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  /></td>
				  	<td>&nbsp;&nbsp;</td>
				  <td><br><input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewpatient'"/><br></td>
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
				      </div>
				      
				      </c:forEach>	
				      
				      </form>
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
 if(val=='other')
   element.style.display='block';
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
				              