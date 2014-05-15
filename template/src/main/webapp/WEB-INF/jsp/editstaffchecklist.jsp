<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
<script src="resources/js/jquey-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
  	               <script type=text/javascript>        
	                           
	            function patientvalidate(){		
	         		var sample="editusernamepatientdetails?username="+document.getElementById("username").value;
	         		 //alert("sample"+sample);
	              popupWindow = window.open(sample,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
	              		}         
function screenvalidate(){		
		var sample="editscreeningauthz?username="+document.getElementById("username").value;
		// alert("sample"+sample);
     popupWindow = window.open(sample,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
     		}
     		
function autovalidate(){
	 
		var sample="editusernameautoaccident?username="+document.getElementById("username").value;
		//alert("sample"+sample);
     popupWindow = window.open(sample,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
     		}
function workvalidate(){
	
	
		var url="editusernameworkaccident?username="+document.getElementById("username").value;
		//alert("sample"+url);
    popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
    		}
function waivervalidate(){

		var url="editusernameinsuranceplan?username="+document.getElementById("username").value;
		//alert("sample"+url);
   popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
   		}
  
function healthvalidate(){

	var url="editusernameinsuranceinformation?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
		
function treatvalidate(){

	var url="editusernametreatform?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
function minorvalidate(){

	var url="editusernametreatminor?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
function hardshipvalidate(){

	var url="editusernamehardship?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
function medicalvalidate(){

	var url="editusernamemedical?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
function assignmentvalidate(){

	var url="editusernameassignment?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
function hippavalidate(){

	var url="editusernamehippa?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
function hipquestionvalidate(){

	var url="editusernamehipquestionnaire?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
function footquestionvalidate(){

	var url="editusernamefootquestionnarie?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
function symptomvalidate(){

	var url="editusernamesymptom?username="+document.getElementById("username").value;
	//alert("sample"+url);
popupWindow = window.open(url,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
</script>
  <script>
 $(window).load(function(){
		
	  $("#damageamt").keyup(function() {
			
			 $("#damageamterror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#damageamterror").html('Invalid character.please enter numbers only.!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
});
</script>
<script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 $(function() {
     $( "#datepicker1" ).datepicker();
   });
 
</script>
<script>

	function checkSubmit()
	{
		document.getElementById("pat_nameerror").innerHTML=" ";
		
		if(document.getElementById("pat_name").value=="")
		{
		document.getElementById("pat_nameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("insureerror").innerHTML="";
	if(document.getElementById("insure").value=="")
		{
		document.getElementById("insureerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	 
	document.getElementById("damageamterror").innerHTML="";
	if(document.getElementById("damageamt").value=="")
	{
	document.getElementById("damageamterror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	
	document.getElementById("fault_insureerror").innerHTML="";
	if(document.getElementById("fault_insure").value=="")
	{
	document.getElementById("fault_insureerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("med_payerror").innerHTML="";
	if(document.getElementById("med_pay").value=="")
	{
	document.getElementById("med_payerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("other_attorneyerror").innerHTML="";
	if(document.getElementById("other_attorney").value=="")
	{
	document.getElementById("other_attorney").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("protect_receivederror").innerHTML="";
	if(document.getElementById("protect_received").value=="")
	{
	document.getElementById("protect_receivederror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
	{
	document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepicker1error").innerHTML="";
	if(document.getElementById("datepicker1").value=="")
	{
	document.getElementById("datepicker1error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	}

	</script>
</head>
 <body>
<div id="right_content">
<form action="updatestaffchecklist" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="55%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	             <h2>Editing Auto/Personal Injury Patient Checklist<h2> 
	            </div>
	            <div class="contentbox">
	            <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <c:set value="${StaffchecklistForm.staffchecklist[0]}" var="Staffchecklist"> </c:set>
	            <tr class="row1">
	            <input type="hidden" class="input_txtbx1" id="inp_id" value="${Staffchecklist.form_no}" name="form_no" />
    
    <input type="hidden" name="patientusername" value="${Staffchecklist.patientusername}" id="username">
  <c:if test="${patient==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="patientvalidate()" style="text-decoration: none;cursor: pointer;">Confidential Patient Information</a>
	            </td>
	            </tr>
	            </c:if>

	            
	             <c:if test="${autoaccident==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="autovalidate()" style="text-decoration: none;cursor: pointer;">Auto Accident</a></td>
	          <!--   <td valign="top" align="left" class="input_txt">Auto Accident</td> -->
	            </tr>
	            </c:if>
	            
	             <c:if test="${workaccident==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="workvalidate()" style="text-decoration: none;cursor: pointer;">Work Accident</a></td>
	        
	            </tr>
	            </c:if>
	            
	             <c:if test="${waiver==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="waivervalidate()" style="text-decoration: none;cursor: pointer;">Insurance waiver</a> </td>
	           
	            </tr>
	            </c:if>
	            
	             <c:if test="${health==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="healthvalidate()" style="text-decoration: none;cursor: pointer;">Health Insurance Information</a></td>
	           
	            </tr>
	            </c:if>
	            
	            <c:if test="${treat==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="treatvalidate()" style="text-decoration: none;cursor: pointer;">Authorization And Consent To Treat</a></td>
	            <td valign="top" align="left" class="input_txt"></td>
	            </tr>
	            </c:if>
	             <c:if test="${minor==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="minorvalidate()" style="text-decoration: none;cursor: pointer;">Consent to Treat Form/Minor</a></td>
	           
	            </tr>
	            </c:if>
	             <c:if test="${hardship==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="hardshipvalidate()" style="text-decoration: none;cursor: pointer;">Hardship Agreement</a></td>
	            
	            </tr>
	            </c:if>
	             <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="screenvalidate()" style="text-decoration: none;cursor: pointer;">Screening Disclosure/referral</a></td>
	             </tr>
	             <c:if test="${medical==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="medicalvalidate()" style="text-decoration: none;cursor: pointer;">Release Of Records</a></td>
	            </tr>
	            </c:if>
	           
	            <c:if test="${assignment==true}">
	            <tr class="row1">
	           
	            <td valign="top" align="left" class="input_txt"><a onclick="assignmentvalidate()" style="text-decoration: none;cursor: pointer;">Assignment Of Benefits</a></td>
	            </tr>
	            </c:if>
	              <c:if test="${hippa==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="hippavalidate()" style="text-decoration: none;cursor: pointer;">Hippa Privacy</a></td>
	           
	            </tr>
	            </c:if>
	             <c:if test="${hipquestion==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="hipquestionvalidate()" style="text-decoration: none;cursor: pointer;">Hip And Knee Questionnaire</a></td>
	          
	            </tr>
	            </c:if>
	             <c:if test="${footquestion==true}">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><a onclick="footquestionvalidate()" style="text-decoration: none;cursor: pointer;">Foot And Ankle Questionnaire</a></td>
	            
	            </tr>
	            </c:if>           
	            
	            <c:if test="${symptom==true}">
	            <tr class="row1">
	            
	            <td valign="top" align="left" class="input_txt"><a onclick="symptomvalidate()" style="text-decoration: none;cursor: pointer;">Pain Diagram</a></td>
	            </tr>
	            </c:if>
    
    
    
	            <%-- <td><input type="checkbox" name="patinfo" value="Confidential Patient Information" <c:if test="${Staffchecklist.patinfo=='Confidential Patient Information'}"><c:out value="Checked"/></c:if>/>Confidential Patient Information</td>
	            </tr>
	            <tr class="row1">
	            <td><input type="checkbox" name="screening" value="Screening Disclosure/referral" <c:if test="${Staffchecklist.screening=='Screening Disclosure/referral'}"><c:out value="Checked"/></c:if>/>
	           Screening Disclosure/referral</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="aob" value="Assignment of Benefits/Lien" <c:if test="${Staffchecklist.aob=='Assignment of Benefits/Lien'}"><c:out value="Checked"/></c:if>/>
	            Assignment of Benefits/Lien</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="history" value="History/Exam Sheet" <c:if test="${Staffchecklist.history=='History/Exam Sheet'}"><c:out value="Checked"/></c:if>/>
	            History/Exam Sheet</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="xray_sheet" value="SOAP Note/X-ray_sheet" <c:if test="${Staffchecklist.xray_sheet=='SOAP Note/X-ray_sheet'}"><c:out value="Checked"/></c:if>/>
	            SOAP Note/X-ray Sheet</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="consent" value="Consent to treat Form/Minor" <c:if test="${Staffchecklist.consent=='Consent to treat Form/Minor'}"><c:out value="Checked"/></c:if>/>
	            Consent to Treat Form/Minor</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="report" value="Accident Report" <c:if test="${Staffchecklist.report=='Accident Report'}"><c:out value="Checked"/></c:if>/>
	            Accident Report </td>
	            </tr>
	             --%></table>
	            <br>
	            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Patient Name</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="pat_name" name="pat_name" value="${Staffchecklist.pat_name}"/><span class="err" id="pat_nameerror"><form:errors path="Staffchecklist.pat_name"></form:errors>
		      </td>
			  </tr>
			  <!-- </table>
			  <br>
			  <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Insurance/Attorney</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="insure" name="insure" value="${Staffchecklist.insure}"/><span class="err" id="insureerror"><form:errors path="Staffchecklist.insure"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Damage Amount</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="damageamt" name="damage_amount" value="${Staffchecklist.damage_amount}"/><span class="err" id="damageamterror"><form:errors path="Staffchecklist.damage_amount"></form:errors></span>
		      <br><span class="err" id="damageamterror"></span>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Notice of Assignment to Fault Insurance</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="fault_insure" name="fault_insure" value="${Staffchecklist.fault_insure}"/><span class="err" id="fault_insureerror"><form:errors path="Staffchecklist.fault_insure"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Notice of Assignment to Med Pay</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="med_pay" name="med_pay" value="${Staffchecklist.med_pay}"/><span class="err" id="med_payerror"><form:errors path="Staffchecklist.med_pay"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Notice of Assignment to other Attorney</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="other_attorney" name="other_attorney" value="${Staffchecklist.other_attorney}"/><span class="err" id="other_attorneyerror"><form:errors path="Staffchecklist.other_attorney"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Attorney Letter of Protection Received</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="protect_received" name="protect_received" value="${Staffchecklist.protect_received}"/><span class="err" id="protect_receivederror"><form:errors path="Staffchecklist.protect_received"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Amount & Dated Billed</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" name="bill" id="datepicker" value="${Staffchecklist.bill}"/><span class="err" id="datepickererror"><form:errors path="Staffchecklist.bill"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Reimbursement Date</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" name="re_date" id="datepicker1" value="${Staffchecklist.re_date}" /><span class="err" id="datepicker1error"><form:errors path="Staffchecklist.re_date"></form:errors>
		      </td>
			  </tr>
			  </table>
			  <br>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"
              ></td>
               <td>&nbsp;&nbsp;</td>
              <td><a href="deletestaffchecklist?form_no=${Staffchecklist.form_no}" class="submit_btn" style="text-decoration: none;color: white">Delete</a></td>
              
              <td>&nbsp;&nbsp;</td>
              <td><a href="checklistsearch" class="submit_btn" style="text-decoration: none;color: white">Cancel</a></td>
              
        	  </tr>
        	  </table>
			  </div>
			  </div>
			  </td>
			  </tr>
			  </table>
			  </form>
			  </div>
			  </body>
			  </html>
			  
			 <jsp:include page="footer.jsp"></jsp:include> 
			  
			  
			
			  
				  
              