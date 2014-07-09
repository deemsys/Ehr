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
function ajax()
{
	symptom=document.getElementById("symptom_ajax").value;
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/check_symptom_ajax",  
		    data: "symptom_ajax=" +symptom,
		    success: function(response){  
		    	
		    			
				 var url="quadraplevisual?symptom="+document.getElementById("symptom_ajax").value;			
				 
			
		    	if(response=="")
		    		{
		    		 window.open(url,'popUpWindow','resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
		    		}
		    	else
		    		{
		    		var url="editquadraplevisual?quadrupleno="+response;
		    		popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		    		}
		    
	
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });

	
	}


function check(id)
{
	document.getElementById("symptom_ajax").value=id.value;
	
	if(id.value=="")
		{
		alert("The Symptom cannot be blank");
		}
	else
		{
	var xx = document.getElementsByName('symptom[]').length;
	
	if(xx==1)
	{
		
		ajax();
		
		
		
	
	}
		}
}
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
	    $( ".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > * " )
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
<!-- <script>
 $(window).load(function(){
 $("#zipcode").keyup(function() {
			
			 $("#zipcodeerror").html(''); 
			/*  var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; * /
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#zipcodeerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		});
</script> -->

	  <style>
	  /*  force a height so the tabs don't jump as content height changes * /
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
<input type="hidden" value="" id="symptom_ajax">
          	    
          	    <table cellpadding="0" cellspacing="0" border="0" width="100%">
  					<tr>
    					<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
                <br>
                      
                    	    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                       	
                        <tr class="row1">
  				
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
                      <br><br>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <c:forEach items="${patientDetailsForm.patientDetails}" var="patientDetails" varStatus="status">
                		
                        <tr class="row1">
                        	<br>
                        	  <td><span class="err">* </span>Name:</td>
                			 <td>${patientDetails.name}</td>
                		</tr>	 
                		<tr class="row2">
				                  <td><span class="err">* </span> Date:</td>
				                  <td>${patientDetails.date}</td>
				        </tr>   
				        <tr class="row1">
				        <td><span class="err">* </span>Street Address:</td>
				        <td>${patientDetails.streetAddress}</td>
				        </tr>
				         <tr class="row2">
				        <td><span class="err">* </span>City:</td>
				        <td>${patientDetails.city}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">* </span>State:</td>
				        <td>${patientDetails.state}</td>
				        </tr>
				         <tr class="row2">
				        <td> <input type="hidden" name="number" id="zipcode" ><span class="err">* </span >ZipCode:</td>
				        <td>${patientDetails.zipCode}</td>
				        </tr>
				          <tr class="row1">
				        <td>  <span class="err">* </span>Home phone:</td>
				        <td>${patientDetails.homephone}</td>
				        </tr>
				         <tr class="row2">
				        <td><span class="err">* </span>E-mail Id:</td>
				        <td>${patientDetails.emailid}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">* </span>Mobile Number:</td>
				        <td>${patientDetails.mobileNumber}</td>
				        </tr>
				         <tr class="row2">
				        <td><span class="err">* </span>Date Of Birth:</td>
				        <td>${patientDetails.dateOfBirth}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">* </span>Social Security Number:</td>
				        <td>${patientDetails.socialSecurityNumber}</td>
				        </tr>
				         <tr class="row2">
				        <td><span class="err">* </span>Gender:</td>
				        <td>${patientDetails.gender}</td>
				        </tr>
				          <tr class="row1">
				        <td><span class="err">* </span>MaritalStatus:</td>
				        <td>${patientDetails.maritalStatus}</td>
				        </tr>
				        </table>
				       </td>
				       
				          <td align="left" valign="top"> <h2 class="quck-txt"></h2>
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
							 <tr class="row1">
				        		<td valign="top" align="left" class="input_txt"><span class="err">* </span>Are you:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td valign="top" align="left" class="input_txt">${patientDetails.areyou}</td>
				                 
				        		</tr>
				           <c:if test="${patientDetails.areyou == 'Student' }">
				           <tr class="row2">
							<td><span class="err">&nbsp;&nbsp; </span>Student:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				        <td>${patientDetails.student}</td>
				        </tr>
				           </c:if>
							
							 
							<c:if test="${patientDetails.areyou =='Employee'}">
							
							<tr class="row2">
							
							<td>Employer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>${patientDetails.employerName}</td>
							</tr>
				          <tr class="row1">
				         	<td>Occupation:</td>
				         	<td>${patientDetails.occupation}</td>
				        </tr>
				         <tr class="row2">
				         	<td>Employer Address:</td>
				         	<td>${patientDetails.employerAddress}</td>
				        </tr>
				          <tr class="row1">
				         	<td>WorkPhone:</td>
				         	<td>${patientDetails.workphone}</td>
				        </tr>
				        
				        <tr class="row2">
				         	<td>Zipcode</td>
				         	<td>${patientDetails.zip}</td>
				        </tr>
				        
				        
				         <tr class="row1">
				         	<td>EmployerCity:</td>
				         	<td>${patientDetails.employerCity}</td>
				        </tr>
				        
				          <tr class="row2">
				         	<td>State:</td>
				         	<td>${patientDetails.estate}</td>
				        </tr>
				        <%--  <tr class="row1">
				         	<td>ZipCode:</td>
				         	<td>${patientDetails.ezip}</td>
				        </tr> --%>
				          </c:if>      
				           <tr class="row1">
				                  	<td><span class="err">* </span>Spouse's or significant others name:</td></td>
								    <td>${patientDetails.spousesName}</td>              
				                   </tr>
				                  <tr class="row2">
				                  <td><span class="err">* </span>Spouses Employer:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td>${patientDetails.spousesEmp}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td><span class="err">* </span>Spouse's Workphone:</td>
				                  <td>${patientDetails.spousesph}</td>
				                  </tr>
				                  <tr class="row2">
				                  <td><span class="err">* </span>Name of Nearest Friend/ Relative Not Living With You:</td>
				                  <td>${patientDetails.name_friend}</td>
				                  </tr>
				                    <tr class="row1">
				                  <td><span class="err">* </span>Phone of Nearest Friend/ Relative Not Living With You:</td>
				                  <td>${patientDetails.phone_friend}</td>
				                  </tr>
				                    <tr class="row2">
				                  <td><span class="err">* </span>Have you ever had chiropractic care?: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                  <td>${patientDetails.chiropratic_care}</td>
				                  </tr>
				                  </table>
				                  <table align="right">
				  <tr>
				  <td><br><input type="button" id="btnNext" class="submit_btn" value="Next"/><br></td>
				  <td>&nbsp;&nbsp;</td>
				  <td><br><!-- <input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewpatient'"/> --><br></td>
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
                       <span class="err">&nbsp;&nbsp;&nbsp;* </span>Please Describe Your Symptoms Briefly: 
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">                      
                <%int i=1;%>
                 <c:forEach items="${symptom}" var="symptom" varStatus="status">
                 
                  <tr>
                  <td valign="middle" align="left" class="input_txt" width="29%"></td>
                 
                  <td valign="top" align="left" class="input_txt" width="70%">
                
                &nbsp;&nbsp;&nbsp;&nbsp;<textarea  rows="3" cols="25" name="symptom[]" onInput="return validatename(id)"; id="symptom<%=i%><%i++;%>" onBlur="check(this)" >${symptom}</textarea><span id="symptom1error" style="color: red;font-style:italic;"></span>
               
                </td> <td width="700"></td></tr><tr height="10"></tr>  </c:forEach>
				         
				        
				       <tr class="row2">
				         	<td><span class="err">* </span>Are These Symptoms Due to an Accident?:</td>
				         	<td>${patientDetails.symptom_Accident}</td>
				         	<td></td>
				         	<td></td>	
				        </tr>
				         <tr class="row1">
				         
				         	<td><span class="err">* </span>Type Of Accident:</td>
				         	<%-- <td>${patientDetails.type_Of_Accident}</td>
				         	<td>${patientDetails.accident}</td>
				         	<td></td>
				         	</tr> --%>
				        
				         	  <c:if test="${patientDetails.type_Of_Accident != 'otheraccident'}">
				       
				         	<td>${patientDetails.type_Of_Accident}</td>
				         	</c:if>
				         <c:if test="${patientDetails.type_Of_Accident == 'otheraccident'}">
				         	<td>${patientDetails.accident}</td>
				         			
				         </c:if>
				       
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">* </span>Date Of Accident:</td>
				         	<td>${patientDetails.date_Of_Accident}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				      
				         <tr class="row1">
				         	<td><span class="err">* </span>Accident Reported:</td>
				         	<td>${patientDetails.accident_Reported}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				          
				          <tr class="row2">
				         	<td><span class="err">* </span>Medical Treatment for this Condition: &nbsp;&nbsp;&nbsp;&nbsp;When:</td>
				         	<td>${patientDetails.when1}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">* </span>Where:</td>
				         	<td>${patientDetails.where1}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				        
				          <tr class="row2">
				         	<td><span class="err">* </span>Have You Retained an Attorney for this Accident:</td>
				         	<td>${patientDetails.attorney_accident}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				          
				        
				        
				         <tr class="row1">
				         	<td><span class="err">* </span>Name Of Attorney:</td>
				         	<td>${patientDetails.nameOfAttorney}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				        
				          <tr class="row2">
				         	<td><span class="err">* </span>Attorney Phone:</td>
				         	<td>${patientDetails.phone_Number}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				        <tr class="row1">
				         	<td><span class="err">* </span>Name of Person at Fault for the Accident:</td>
				         	<td>${patientDetails.fault_accident}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">* </span>MLS There A Claim Open:</td>
				         	<td>${patientDetails.claim_open}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>What Is Your Dominant Hand:</td>
				                  <td valign="top" align="left" class="input_txt">${patientDetails.retain}
				                  	</td>
				                <td></td>
				                </tr>
				                  
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Would You Like Us To Send Your Records To Your Family Physician: </td>
				                  <td valign="top" align="left" class="input_txt">${patientDetails.record}
				                  	</td>
				                <td style="width: 100"></td><td style="width: 100"></td>
				                </tr>
				                				              
  <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">* </span>What Is Your Physician's Name:</td>
				                  	<td valign="top" align="left" class="input_txt">${patientDetails.phyname}</td>
				                  	<td></td>
				                    </tr>
				                
				                <tr class="row2">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">* </span>What Is Your Physician's Phone: </td>
				                  	<td valign="top" align="left" class="input_txt">${patientDetails.phyphone}</td>
				                  	<td></td><td></td>
				                    </tr>
				                     <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">* </span>Damages To Your car: </td>
				                  	<td valign="top" align="left" class="input_txt">${patientDetails.car11}</td>
				                  	<td></td>
				                    </tr> 
				                     <tr class="row2">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">* </span>What Body Parts Were X-Rayed: </td>
				                  	<td valign="top" align="left" class="input_txt">${patientDetails.xray}</td>
				                  	<td></td><td></td>
				                    </tr>
				                    
				                     <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">* </span>What Treatment Was Given: </td>
				                  	<td valign="top" align="left" class="input_txt">${patientDetails.treat}</td>
				                  	<td></td>
				                    </tr>
						
				         
				         <tr class="row2">
				         	<td><span class="err">* </span>Insurance Company Of The At Fault Person:</td>
				         	<td>${patientDetails.insurance}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">* </span> Insurance Company Phone:</td>
				         	<td>${patientDetails.insurance_phone}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">* </span>Name Of Your Auto Insurance:</td>
				         	<td>${patientDetails.name_auto}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">* </span>Phone Of Your Auto Insurance:</td>
				         	<td>${patientDetails.phone_auto}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">* </span>Policy#:</td>
				         	<td>${patientDetails.policy}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">* </span>Name Of Your Health Insurance</td>
				         	<td>${patientDetails.name_health}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">* </span>Phone Of Your Health Insurance:</td>
				         	<td>${patientDetails.health_phone}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row1">
				         	<td><span class="err">* </span>Have You Ever Been Involved In A Previous Auto Or Work Accident:</td>
				         	<td>${patientDetails.prev_accident}</td>
				         	<td></td>
				         	<td></td>
				        </tr>
				         <tr class="row2">
				         	<td><span class="err">* </span>When:</td>
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
				  <td><br><!-- <input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewpatient'"/> --><br></td>
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
				                  <td valign="middle" align="left" class="input_txt"><span class="err"></span>&nbsp;&nbsp;CheckBox If It Applies To You,Parents,Siblings,Children:</td>
				                  <td valign="top" align="left" class="input_txt">
				                 <table>
				                 
				                 
				         <tr class="row1">
				         
				         	<td>
				         	<c:choose>
	            <c:when test="${patientDetails.anemia=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.anemia}</c:otherwise>
	          
	            </c:choose>
				         	</td>
				         	<td>
				         	<c:choose>
	            <c:when test="${patientDetails.muscular=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.muscular}</c:otherwise>
	          
	            </c:choose>
				         	</td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.rheumatic=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.rheumatic}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.allergies=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.allergies}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.cancer=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.cancer}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.polio1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.polio1}</c:otherwise>
	          
	            </c:choose></td>
				         
				        </tr>
				         <tr class="row1">
				         <td><c:choose>
	            <c:when test="${patientDetails.multiple=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.multiple}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.scarlet=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.scarlet}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.HIV=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.HIV}}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.sinus=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.sinus}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.asthma=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.asthma}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.german=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.german}</c:otherwise>
	          
	            </c:choose></td>
				        </tr>
				         <tr class="row1">
				         	<td><c:choose>
	            <c:when test="${patientDetails.nervousness=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.nervousness}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.numbness=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.numbness}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.convulsions=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.convulsions}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.epilepsy=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.epilepsy}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.concussion=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.concussion}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.dizziness=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.dizziness}</c:otherwise>
	          
	            </c:choose></td>
				        </tr>
				         <tr class="row1">
				         <td><c:choose>
	            <c:when test="${patientDetails.neuritis=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.neuritis}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.rheumatism=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.rheumatism}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.diabetes=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.diabetes}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.arthritis=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.arthritis}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.venereal=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.venereal}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.backaches=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.backaches}</c:otherwise>
	          
	            </c:choose></td>
				        </tr>
				         <tr class="row1">
				         <td><c:choose>
	            <c:when test="${patientDetails.tuberculosis=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.tuberculosis}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.liver=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.liver}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.kidney=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.kidney}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.thyroid=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.thyroid}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.alchoholism=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.alchoholism}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.hepatitis=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.hepatitis}</c:otherwise>
	          
	            </c:choose></td>
				        </tr>
				        
				         <tr class="row1">
				         	<td><c:choose>
	            <c:when test="${patientDetails.mental=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.mental}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.high=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.high}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.digestive=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.digestive}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.heart=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.heart}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.other=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.other}</c:otherwise>
	          
	            </c:choose></td>
				         	<td><c:choose>
	            <c:when test="${patientDetails.ifother=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.ifother}</c:otherwise>
	          
	            </c:choose></td>
				        </tr>
				        </table>
				        
				        
				         <tr class="row2">
				         <td><span class="err">* </span>Surgeries Or Major Illnesses You Have Had: </td>
				         <td>${patientDetails.illness}</td>
				         </tr>
				         <tr class="row1">
				         	<td><span class="err">* </span>Dates:</td>
				         	<td>${patientDetails.dates}</td>
				         </tr>	
				         <tr class="row2">
				         	<td><span class="err">* </span>Medications You Are Currently Taking And Why:</td>
				         	<td>${patientDetails.medications}</td>
				        </tr>
				        <tr class="row1">
				        	<td><span class="err">* </span>Do You:</td>
				         		<td><c:choose>
	            <c:when test="${patientDetails.drink=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.drink}</c:otherwise>
	          
	            </c:choose><c:choose>
	            <c:when test=" ${patientDetails.smoke=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.smoke}</c:otherwise>
	          
	            </c:choose><c:choose>
	            <c:when test=" ${patientDetails.drugs=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.drugs}</c:otherwise>
	          
	            </c:choose><c:choose>
	            <c:when test=" ${patientDetails.diet=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise>${patientDetails.diet}</c:otherwise>
	          
	            </c:choose>
	          
	            <c:choose>
	            <c:when test="${patientDetails.exercise=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${patientDetails.exercise}</c:otherwise>
	          
	            </c:choose>
				         	 </td>
				        </tr>
				        <tr class="row2">
				        	<td><span class="err">* </span>Do You Work Around Hazardous Substances:
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
				        <td><span class="err">* </span>Females Only:<br>&nbsp;&nbsp;Are you Pregnant:</td>
				        <td>${patientDetails.female}</td>
				        </tr>
				        <tr class="row2">
				        	<td><span class="err">* </span>Dr:</td>
				        	<td>${patientDetails.dr}</td>
				        
				        </tr>
				        <tr>
				        <td><span class="err">&nbsp;&nbsp;&nbsp;* </span>Patient Signature:</td>
				        <td>${patientDetails.patient}</td>
				      </tr>
				      </table>
				      <table align="right">
				  <tr>
				  <td><input type="button" id="btnPrevious" class="submit_btn" value="Previous"  /></td>
				  	<td>&nbsp;&nbsp;</td>
				  <td><br><!-- <input type="button"  class="submit_btn" value="Cancel" onclick="window.location.href='viewpatient'"/> --><br></td>
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
				      
				     
				            
                		 
				             
<!-- <script>          
  
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
	/*  alert(value); * /
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
  -->
        <jsp:include page="footer.jsp"></jsp:include>
				              