<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script type="text/javascript">
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
    $( "#datepicker4" ).datepicker();
  });
$(function() {
    $( "#datepicker5" ).datepicker();
  });
$(function() {
    $( "#datepicker6" ).datepicker();
  });
$(function() {
    $( "#datepicker7" ).datepicker();
  });
$(function() {
    $( "#datepicker8" ).datepicker();
  });
$(function() {
    $( "#datepicker9" ).datepicker();
  });
$(function() {
    $( "#datepicker10" ).datepicker();
  });
$(function() {
    $( "#datepicker11" ).datepicker();
  });
</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
  <script type="text/javascript">
function Checksymptom(val){
	 var element=document.getElementById('level1');
	 if(val=='Not Within Normal Limits')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
function Checksymptom(val){
	 var element=document.getElementById('level2');
	 if(val=='Hyper-reflexic')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
	
function Checksymptom(val){
	 var element=document.getElementById('fracture');
	 if(val=='Positive for fracture of the')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
function Checksymptom(val){
	 var element=document.getElementById('presentlevel');
	 if(val=='Present at the')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
</script>
<script>

	function checkSubmit()
	{
		document.getElementById("datepicker11error").innerHTML=" ";
		
		if(document.getElementById("datepicker11").value=="")
		{
		document.getElementById("datepicker11error").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("datepicker11error").innerHTML=" ";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker11").value.match(datechk)==null)
    {
    	document.getElementById("datepicker11error").innerHTML="Invalid Date Format";
    	
        return false;
    }	
	
document.getElementById("patientnameerror").innerHTML=" ";
		
		if(document.getElementById("patientname").value=="")
		{
		document.getElementById("patientnameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
document.getElementById("datepicker1error").innerHTML=" ";
		
		if(document.getElementById("datepicker1").value=="")
		{
		document.getElementById("datepicker1error").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("datepicker1error").innerHTML=" ";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker1").value.match(datechk)==null)
    {
    	document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
    	
        return false;
    }	
	document.getElementById("datepicker2error").innerHTML=" ";
    var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker2").value !="") {
		  if (re.test(document.getElementById("datepicker2").value) == false) {
			  document.getElementById("datepicker2error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}	
document.getElementById("datepickererror").innerHTML=" ";
		
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("datepickererror").innerHTML=" ";
		 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
        return false;
    }	
	document.getElementById("datepicker3error").innerHTML=" ";
	 var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker3").value !="") {
		  if (re.test(document.getElementById("datepicker3").value) == false) {
			  document.getElementById("datepicker3error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		document.getElementById("datepicker4error").innerHTML=" ";
    var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker4").value !="") {
		  if (re.test(document.getElementById("datepicker4").value) == false) {
			  document.getElementById("datepicker4error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		document.getElementById("datepicker2error").innerHTML=" ";
		var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker2").value !="") {
		  if (re.test(document.getElementById("datepicker2").value) == false) {
			  document.getElementById("datepicker2error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		document.getElementById("datepicker7error").innerHTML=" ";
		var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker7").value !="") {
		  if (re.test(document.getElementById("datepicker7").value) == false) {
			  document.getElementById("datepicker7error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		document.getElementById("datepicker9error").innerHTML=" ";
		var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker9").value !="") {
		  if (re.test(document.getElementById("datepicker9").value) == false) {
			  document.getElementById("datepicker9error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		document.getElementById("datepicker10error").innerHTML=" ";
		var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker10").value !="") {
		  if (re.test(document.getElementById("datepicker10").value) == false) {
			  document.getElementById("datepicker10error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}	
document.getElementById("signerror").innerHTML=" ";
		
		if(document.getElementById("sign").value=="")
		{
		document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	}
		
		</script>
		<script type="text/javascript">
       function Validate(event) {
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
</head>
 <style>
  /* force a height so the tabs don't jump as content height changes */
  #tabs .tabs-spacer { float: left; height: 200px; }
  .tabs-bottom .ui-tabs-nav { clear: left; padding: 0 .2em .2em .2em; }
  .tabs-bottom .ui-tabs-nav li { top: auto; bottom: 0; margin: 0 .2em 1px 0; border-bottom: auto; border-top: 0; }
  .tabs-bottom .ui-tabs-nav li.ui-tabs-active { margin-top: -1px; padding-top: 1px; }
  </style>
 <body>
 
 
 <div id="tabs" class="tabs-bottom" >
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>  
           <li><a href="#tabs-3">3</a></li>        
       </ul>
      
   <div class="tabs-spacer"></div>
  <div id="tabs-1">  
                       
   <div id="right_content"> 
 <form action="updatenarrativereport" method="POST">
<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
<c:set value="${narrativereportForm.narrativereport[0]}" var="narrativereport"/>
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2> CHIROPRACTIC THERAPY CENTER</h2> </center><br/>
	            </div>
	            <div class="contentbox"><center> Sheffield Village Plaza </center><br/>
	            <center> 5190 Detroit Road </center><br/>
	            <center> Sheffield Village, OH 44035 </center><br/>
	            <center> (440) 934-3099     Fax (440) 934-3107 </center><br/>
	            <center> <B style="font-size:18px">Narrative Report</B> </center><br/>
          <table cellpadding="0" cellspacing="0" border="0" width="70%" align="center">
          <tr height="30">
           <input type="hidden" name="narrativeno" id="inp_id" value="${narrativereport.narrativeno}"/>
          <td><span class="err">*</span>Report Date: </td>
          <td><input type="text"  class="input_txtbx1" name="reportdate" size="40" id="datepicker11" value="${narrativereport.reportdate }"><span id="datepicker11error" style="color: red;font-style:italic;"><form:errors path="Copyofrequest.patient"></form:errors></span></td>
          </tr>   
          <tr height="30">
          <td><span class="err">*</span>Patient: </td>
          <td><input type="text"  class="input_txtbx1" id="patientname" name="patient" size="40" value="${narrativereport.patient}"><span id="patientnameerror" style="color: red;font-style:italic;"><form:errors path="Copyofrequest.patient"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td>Date of Injury: </td>
          <td><input type="text"  class="input_txtbx1" name="dateofinjury" size="40" id="datepicker1" value="${narrativereport.dateofinjury}"><span id="datepicker1error" style="color: red;font-style:italic;"></span></td>
          </tr>
          <tr height="30">
          <td>Date of first visit: </td>
          <td><input type="text"  class="input_txtbx1" name="dateoffirstvisit" id="datepicker" size="40" value="${narrativereport.dateoffirstvisit}"><span id="datepickererror" style="color: red;font-style:italic;"></span></td>
          </tr>
          </table>
          <table cellpadding="0" cellspacing="0" border="0" width="70%" align="center">
          <tr height="30">
          <td width="35%">TO</td>
          <td><input type="text"  class="input_txtbx1" name="towhom"  size="40" value="${narrativereport.towhom}"></td>
          </tr>
          </table>
          <br/>
          <div><p style="line-height:1.5"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;At your request and with permission from my patient, <input type="text"  class="input_txtbx1" name="patientname" size="40" value="${narrativereport.patientname}">, I am writing the following narrative report concerning the injuries <select  name="gender" id="gender">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereprot.gender=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> sustained as the result of an automobile accident on <input type="text"  class="input_txtbx1" name="accident" id="datepicker2" value="${narrativereport.accident}"><span class="err" id="datepicker2error"></span></p>
               <p><B style="font-size:14px">History</B></p>
               <p style="line-height:26px"><input type="text" class="input_txtbx1"  name="name" value="${narrativereport.name}"> was initially seen for the purpose of consultation and examination on <input type="text"  class="input_txtbx1" name="dateofconsultation" id="datepicker3" value="${narrativereport.dateofconsultation}"><span class="err" id="datepicker3error"></span>.  <select name="gender1" id="gender1">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender1=='He'}"><c:out value="Selected"/></c:if> >He</option>
					<option value="She" <c:if test="${narrativereport.gender1=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> stated that <select  name="gender2" id="gender2">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender2=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender2=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> was the driver in a motor vehicle accident <input type="text"  class="input_txtbx1" name="accidentdate" id="datepicker4" value="${narrativereport.accidentdate}"><span class="err" id="datepicker4error"></span>.  <select  name="gender3" id="gender3">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender3=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender3=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> further stated that <select  name="gender4" id="gender4">
					<option selected="selected" value="His" <c:if test="${narrativereport.gender4=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender4=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> GMC Truck was struck from behind by a Ford Aerostar while <select name="gender5" id="gender5">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender5=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender5=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> was at a dead stop. It was daylight and road conditions were dry at the time of impact. <input type="text" class="input_txtbx1"  name="name1" value="${narrativereport.name1}"> wearing <select  name="gendernew" id="gendernew">
					<option selected="selected" value="His" <c:if test="${narrativereport.gendernew=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="Her" <c:if test="${narrativereport.gendernew=='She'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> seatbelt with both hands on the wheel and <select  name="gender6" id="gender6">
					<option selected="selected" value="His" <c:if test="${narrativereport.gender6=='His'}"><c:out value="Selected"/></c:if> >His</option>
					<option value="Her" <c:if test="${narrativereport.gender6=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> head straight when struck. <select  name="gender7" id="gender7">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender7=='He'}"><c:out value="Selected"/></c:if> >He</option>
					<option value="She" <c:if test="${narrativereport.gender7=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> was unaware that another vehicle was about to crash into <select  name="gender8" id="gender8">
					<option selected="selected" value="His" <c:if test="${narrativereport.gender8=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender8=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> car. The airbag was not deployed upon impact. During the crash, <select  name="gender9" id="gender9">
					<option selected="selected" value="Mr" <c:if test="${narrativereport.gender9=='Mr'}"><c:out value="Selected"/></c:if>>Mr</option>
					<option value="Mrs" <c:if test="${narrativereport.gender9=='Mrs'}"><c:out value="Selected"/></c:if>>Ms</option>
					<option value="Ms" <c:if test="${narrativereport.gender9=='Ms'}"><c:out value="Selected"/></c:if>>Ms</option>
					</select>.<input type="text"  class="input_txtbx1" name="name2" value="${narrativereport.name2}">body was <input type="text"  class="input_txtbx1" name="body" value="${narrativereport.body}"> . <select  name="gender10" id="gender10">
					<option selected="selected" value="His" <c:if test="${narrativereport.gender10=='His'}"><c:out value="Selected"/></c:if> >His</option>
					<option value="Her" <c:if test="${narrativereport.gender10=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> <input type="text" name="slammed" value="${narrativereport.slammed}">slammed into the <input type="text"  class="input_txtbx1" name="slammed1" value="${narrativereport.slammed1}">. Symptoms of <input type="text"  class="input_txtbx1" name="symptom" value="${narrativereport.symptom }">, directly related to the accident, appeared <input type="text"  class="input_txtbx1" name="appeared" value="${narrativereport.appeared }"> after the incident.  The victim did (not )drive to the emergency room after the wreck. </p>
               <p><B style="font-size:14px">Past History</B></p>
               <p style="line-height:26px">Past history revealed (no prior auto accidents, a prior automobile accident which occurred in <input type="text"  class="input_txtbx1" name="priordate" id="datepicker4" value="${narrativereport.priordate}">. <select  name="gender11" id="gender11">
					<option selected="selected" value="Mr" <c:if test="${narrativereport.gender11=='Mr'}"><c:out value="Selected"/></c:if> >Mr</option>
					<option value="Mrs" <c:if test="${narrativereport.gender11=='Mrs'}"><c:out value="Selected"/></c:if>>Mrs</option>
					<option value="Ms" <c:if test="${narrativereport.gender11=='Ms'}"><c:out value="Selected"/></c:if>>Ms</option>
					</select><input type="text" class="input_txtbx1"  name="name3" value="${narrativereport.name3}">stated that there were no residual effects from that accident and <select  name="gender12" id="gender12">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender12=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender12=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> was in good health prior to the current accident.  Past medical history revealed <input type="text" name="pastmedicalhistory" value="${narrativereport.pastmedicalhistory}">.  There <select  name="gender13" id="gender13">
					<option selected="selected" value="Were" <c:if test="${narrativereport.gender13=='Were'}"><c:out value="Selected"/></c:if>>Were</option>
					<option value="Were no" <c:if test="${narrativereport.gender13=='Were no'}"><c:out value="Selected"/></c:if>>Were no</option>
					</select> past surgeries and <select  name="gender14" id="gender14">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender14=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender14=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> <select  name="gender15" id="gender15">
					<option selected="selected" value="Was" <c:if test="${narrativereport.gender15=='Was'}"><c:out value="Selected"/></c:if>>Was</option>
					<option value="Was not" <c:if test="${narrativereport.gender15=='Was not'}"><c:out value="Selected"/></c:if>>Was not</option>
					</select> currently on medication.  Social history revealed a <select  name="gender16" id="gender16">
					<option selected="selected" value="Smoker" <c:if test="${narrativereport.gender16=='Smoker'}"><c:out value="Selected"/></c:if>>Smoker</option>
					<option value="Recreational drug user" <c:if test="${narrativereport.gender16=='Recreational drug user'}"><c:out value="Selected"/></c:if>>Recreational drug user</option>
					</select> who <select  name="gender17" id="gender17">
					<option selected="selected" value="Exercises on a Regular Basis" <c:if test="${narrativereport.gender17=='Exercises on a Regular Basis'}"><c:out value="Selected"/></c:if>>Exercises on a Regular Basis</option>
					<option value="Drinks Alcohol regularly" <c:if test="${narrativereport.gender17=='Drinks Alcohol Regularly'}"><c:out value="Selected"/></c:if>>Drinks alcohol regularly</option>
					</select>.  Work history was non-contributory.</p>
					<p><B style="font-size:14px">Present Compliant</B></p>
					<p style="line-height:26px">
					<select  name="gender18" id="gender18">
					<option selected="selected" value="Mr" <c:if test="${narrativereport.gender18=='Mr'}"><c:out value="Selected"/></c:if>>Mr</option>
					<option value="Mrs" <c:if test="${narrativereport.gender18=='Mrs'}"><c:out value="Selected"/></c:if>>Mrs</option>
					<option value="Ms" <c:if test="${narrativereport.gender18=='Ms'}"><c:out value="Selected"/></c:if>>Ms</option>
					</select> <input type="text"  class="input_txtbx1" name="name4" value="${narrativereport.name4}"> presented to this clinic on <input type="text"  class="input_txtbx1" name="clinicdate" id="datepicker7" value="${narrativereport.clinicdate}"><span class="err" id="datepicker7error"></span>with complaints of <select  name="gender19" id="gender19">
					<option selected="selected" value="Headache" <c:if test="${narrativereport.gender19=='Headache'}"><c:out value="Selected"/></c:if>>Headache</option>
					<option value="Neck pain" <c:if test="${narrativereport.gender19=='Neck pain'}"><c:out value="Selected"/></c:if>>Neck pain</option>
					<option value="Mid Back Pain" <c:if test="${narrativereport.gender19=='Mid Back Pain'}"><c:out value="Selected"/></c:if>>Mid Back Pain</option>
					<option value="Low Back Pain" <c:if test="${narrativereport.gender19=='Low Back Pain'}"><c:out value="Selected"/></c:if>>Low Back Pain</option>
					<option value="L-R Shoulder Pain" <c:if test="${narrativereport.gender19=='L-R Shoulder Pain'}"><c:out value="Selected"/></c:if>>L-R Shoulder Pain</option>
					<option value="L-R Arm Pain" <c:if test="${narrativereport.gender19=='L-R Arm Pain'}"><c:out value="Selected"/></c:if>>L-R Arm Pain</option>
					<option value="L-R Hand Pain" <c:if test="${narrativereport.gender19=='L-R Hand Pain'}"><c:out value="Selected"/></c:if>>L-R Hand Pain</option>
					<option value="L-R leg Pain" <c:if test="${narrativereport.gender19=='L-R leg Pain'}"><c:out value="Selected"/></c:if>>L-R Leg Pain</option>
					<option value="L-R foot Pain" <c:if test="${narrativereport.gender19=='L-R foot Pain'}"><c:out value="Selected"/></c:if>>L-R foot Pain</option>
					<option value="L-R gluteal pain" <c:if test="${narrativereport.gender19=='L-R gluteal Pain'}"><c:out value="Selected"/></c:if>>L-R gluteal pain</option>
					</select>due to a motor vehicle accident on <input type="text" name="vehicleaccident" id="datepicker4" value="${narrativereport.vehicleaccident}">.  <select  name="gender20" id="gender20">
					<option selected="selected" value="Activity" <c:if test="${narrativereport.gender20=='Activity'}"><c:out value="Selected"/></c:if>>Activity</option>
					<option value="Bending" <c:if test="${narrativereport.gender20=='Bending'}"><c:out value="Selected"/></c:if>>Bending</option>
					<option value="Twisting" <c:if test="${narrativereport.gender20=='Twisting'}"><c:out value="Selected"/></c:if>>Twisting</option>
					<option value="Walking" <c:if test="${narrativereport.gender20=='Walking'}"><c:out value="Selected"/></c:if>>Walking</option>
					<option value="Lifting" <c:if test="${narrativereport.gender20=='Lifting'}"><c:out value="Selected"/></c:if>>Lifting</option>
					<option value="Other" <c:if test="${narrativereport.gender20=='Other'}"><c:out value="Selected"/></c:if>>Other</option>
					</select>aggravated  condition while <select  name="gender21" id="gender21">
					<option selected="selected" value="His" <c:if test="${narrativereport.gender21=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender21=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> <input type="text" name="allieviated" value="${narrativereport.allieviated}">allieviated it.  <select  name="gender22" id="gender22">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender22=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender22=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> described <select  name="gender23" id="gender23">
					<option selected="selected" value="His" <c:if test="${narrativereport.gender23=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender23=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> pain as <select  name="gender24" id="gender24">
					<option selected="selected" value="Vicelike" <c:if test="${narrativereport.gender24=='Vicelike'}"><c:out value="Selected"/></c:if> >Vicelike</option>
					<option value="Sharp" <c:if test="${narrativereport.gender24=='Sharp'}"><c:out value="Selected"/></c:if>>Sharp</option>
					<option value="Shooting" <c:if test="${narrativereport.gender24=='Shooting'}"><c:out value="Selected"/></c:if>>Shooting</option>
					<option value="Dull" <c:if test="${narrativereport.gender24=='Dull'}"><c:out value="Selected"/></c:if>>Dull</option>
					<option value="Achy" <c:if test="${narrativereport.gender24=='Achy'}"><c:out value="Selected"/></c:if>>Achy</option>
					<option value="Burning" <c:if test="${narrativereport.gender24=='Burning'}"><c:out value="Selected"/></c:if>>Burning</option>
					<option value="Throbbing" <c:if test="${narrativereport.gender24=='Throbbing'}"><c:out value="Selected"/></c:if>>Throbbing</option>
					<option value="Numb" <c:if test="${narrativereport.gender24=='Numb'}"><c:out value="Selected"/></c:if>>Numb</option>
					<option value="Tingling" <c:if test="${narrativereport.gender24=='Tingling'}"><c:out value="Selected"/></c:if>>Tingling</option>
					<option value="Stiff" <c:if test="${narrativereport.gender24=='Stiff'}"><c:out value="Selected"/></c:if>>Stiff</option>
					<option value="Stabbing" <c:if test="${narrativereport.gender24=='Stabbing'}"><c:out value="Selected"/></c:if>>Stabbing</option>
					<option value="Cramping" <c:if test="${narrativereport.gender24=='She'}"><c:out value="Selected"/></c:if>>Cramping</option>
					<option value="Toothache" <c:if test="${narrativereport.gender24=='She'}"><c:out value="Selected"/></c:if>>Numb</option>
					</select>
					  ,  <select  name="gendernew2" id="gendernew2">
					<option selected="selected" value="Intermittant" <c:if test="${narrativereport.gendernew2=='Intermittant'}"><c:out value="Selected"/></c:if>>Intermittant</option>
					<option value="Constant" <c:if test="${narrativereport.gendernew2=='Constant'}"><c:out value="Selected"/></c:if>>Constant</option>
					</select>, <select  name="gendernew3" id="gendernew3">
					<option selected="selected" value="Mild" <c:if test="${narrativereport.gendernew3=='Mild'}"><c:out value="Selected"/></c:if> >Mild</option>
					<option value="Moderate" <c:if test="${narrativereport.gendernew3=='Moderate'}"><c:out value="Selected"/></c:if>>Moderate</option>
					<option value="Severe" <c:if test="${narrativereport.gendernew3=='Severe'}"><c:out value="Selected"/></c:if>>Severe</option>
					<option value="Crippling" <c:if test="${narrativereport.gendernew3=='Crippling'}"><c:out value="Selected"/></c:if>>Crippling</option>
					</select> and <select  name="gender25" id="gender25">
					<option selected="selected" value="Worse in the Mornings" <c:if test="${narrativereport.gender25=='Worse in the Mornings'}"><c:out value="Selected"/></c:if>>Worse in the Mornings</option>
					<option value="Evenings" <c:if test="${narrativereport.gender25=='Evenings'}"><c:out value="Selected"/></c:if>>Evenings</option>
					</select>.  <select  name="gender26" id="gender26">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender26=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender26=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> further stated that <select  name="gender27" id="gender27">
					<option selected="selected" value="His" <c:if test="${narrativereport.gender27=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender27=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> condition <select  name="gender28" id="gender28">
					<option selected="selected" value="Was" <c:if test="${narrativereport.gender28=='Was'}"><c:out value="Selected"/></c:if>>Was</option>
					<option value="Was not" <c:if test="${narrativereport.gender28=='Was not'}"><c:out value="Selected"/></c:if>>Was not</option>
					</select> getting any better and that it affected <select  name="gender29" id="gender29">
					<option selected="selected" value="His" <c:if test="${narrativereport.gender29=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender29=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> daily living activites, such as <select  name="gender30" id="gender30">
					<option selected="selected" value="Work" <c:if test="${narrativereport.gender30=='Work'}"><c:out value="Selected"/></c:if>>Work</option>
					<option value="Sleep" <c:if test="${narrativereport.gender30=='Sleep'}"><c:out value="Selected"/></c:if>>Sleep</option>
					<option value="Housework" <c:if test="${narrativereport.gender30=='Housework'}"><c:out value="Selected"/></c:if>>Housework</option>
					<option value="Recreation" <c:if test="${narrativereport.gender30=='Recreation'}"><c:out value="Selected"/></c:if>>Recreation</option>
					<option value="Other" <c:if test="${narrativereport.gender30=='Other'}"><c:out value="Selected"/></c:if>>Other</option>
					</select>.
					</p>
					<p><B style="font-size:14px">Physical Exam</B></p>
					<p>&nbsp;&nbsp;<B style="font-size:13px">Physical Inspection</B></p>
					<p style="line-height:26px">Examination revealed a <input type="text"  class="input_txtbx1" name="age" value="${narrativereport.age}"> year old, <input type="text"  class="input_txtbx1" name="age1" value="${narrativereport.age1}">, <input type="text"  class="input_txtbx1" name="lb" value="${narrativereport.lb}">lb. <select  name="gender31" id="gender31">
					<option selected="selected" value="White" <c:if test="${narrativereport.gender31=='White'}"><c:out value="Selected"/></c:if>>White</option>
					<option value="Black" <c:if test="${narrativereport.gender31=='Black'}"><c:out value="Selected"/></c:if>>Black</option> </select><select  name="gender32" id="gender32">
					<option selected="selected" value="Male" <c:if test="${narrativereport.gender32=='Male'}"><c:out value="Selected"/></c:if>>Male</option>
					<option value="Female" <c:if test="${narrativereport.gender32=='Female'}"><c:out value="Selected"/></c:if>>Female</option></select> with <select  name="gender33" id="gender33">
					<option selected="selected" value="Undernourished" <c:if test="${narrativereport.gender33=='Undernourished'}"><c:out value="Selected"/></c:if>>Undernourished</option>
					<option value="Normal" <c:if test="${narrativereport.gender33=='Normal'}"><c:out value="Selected"/></c:if>>Normal</option> 
					<option value="Well-nourished" <c:if test="${narrativereport.gender33=='Well-nourished'}"><c:out value="Selected"/></c:if>>Well-nourished</option></select> musculature.<select  name="gender34" id="gender34">
					<option selected="selected" value="He" <c:if test="${narrativereport.gender34=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender34=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select>  presented under <select  name="gendernew4" id="gendernew4">
					<option selected="selected" value="Fair" <c:if test="${narrativereport.gendernew4=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Severe" <c:if test="${narrativereport.gendernew4=='Severe'}"><c:out value="Selected"/></c:if>>Severe</option>
					</select> distress,<select  name="gender35" id="gender35">
					<option selected="selected" value="Normal" <c:if test="${narrativereport.gender35=='Normal'}"><c:out value="Selected"/></c:if>>Normal</option>
					<option value="Antalgic" <c:if test="${narrativereport.gender35=='Antalgic'}"><c:out value="Selected"/></c:if>>Antalgic</option>
					<option value="Staggering" <c:if test="${narrativereport.gender35=='Staggering'}"><c:out value="Selected"/></c:if>>Staggering</option>
					<option value="Limping" <c:if test="${narrativereport.gender35=='Limping'}"><c:out value="Selected"/></c:if>>Limping</option>
					<option value="Swaying" <c:if test="${narrativereport.gender35=='Swaying'}"><c:out value="Selected"/></c:if>>Swaying</option>
					</select>  gait and <select  name="gender36" id="gender36">
					<option selected="selected" value="Poor" <c:if test="${narrativereport.gender36=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					<option value="Good" <c:if test="${narrativereport.gender36=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					</select> posture.  Visceral pathologies revealed <select  name="gender37" id="gender37">
					<option selected="selected" value="Normal" <c:if test="${narrativereport.gender37=='Normal'}"><c:out value="Selected"/></c:if>>Normal</option>
					<option value="Pathology" <c:if test="${narrativereport.gender37=='Pathology'}"><c:out value="Selected"/></c:if>>Pathology</option>
					<option value="Others" <c:if test="${narrativereport.gender37=='Others'}"><c:out value="Selected"/></c:if>>Others</option>
					</select>. Visual inspection demonstrated a <select  name="gender38" id="gender38">
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender38=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender38=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="lumbar" <c:if test="${narrativereport.gender38=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					</select><select  name="gender39" id="gender39">
					<option selected="selected" value="Hypolordosis" <c:if test="${narrativereport.gender39=='Hypolordosis'}"><c:out value="Selected"/></c:if>>Hypolordosis</option>
					<option value="Hyperlordosis" <c:if test="${narrativereport.gender39=='Hyperlordosis'}"><c:out value="Selected"/></c:if>>Hyperlordosis</option>
					<option value="Hypokyphosis" <c:if test="${narrativereport.gender39=='Hypokyphosis'}"><c:out value="Selected"/></c:if>>Hypokyphosis</option>
					<option value="Hyperkyphosis" <c:if test="${narrativereport.gender39=='Hyperkyphosis'}"><c:out value="Selected"/></c:if>>Hyperkyphosis</option>
					<option value="Cervical Tilting" <c:if test="${narrativereport.gender39=='Cervical Tilting'}"><c:out value="Selected"/></c:if>>Cervical Tilting</option>
					<option value="L/R" <c:if test="${narrativereport.gender39=='L/R'}"><c:out value="Selected"/></c:if>>L/R</option>
					<option value="Cervical Rotation L-R" <c:if test="${narrativereport.gender39=='Cervical Rotation L-R'}"><c:out value="Selected"/></c:if>>Cervical Rotation L-R</option>
					<option value="superior L-R scapula" <c:if test="${narrativereport.gender39=='superior L-R scapula'}"><c:out value="Selected"/></c:if>>Superior L-R scapula</option>
					<option value="L-R scapular winging" <c:if test="${narrativereport.gender39=='L-R scapular winging'}"><c:out value="Selected"/></c:if>>L-R scapular winging</option>
					<option value="L-R rib hump" <c:if test="${narrativereport.gender39=='L-R rib hump'}"><c:out value="Selected"/></c:if>>L-R rib hump</option>
					<option value="Superior L-R illiac crest" <c:if test="${narrativereport.gender39=='Superior L-R illiac crest'}"><c:out value="Selected"/></c:if>>Superior L-R illiac crest</option>
					</select>.</p>
					<p><B style="font-size:14px">Digital Palpation</B></p>
					<p style="line-height:26px">Palpation of the <select  name="gendernew5" id="gendernew5">
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gendernew5=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic"<c:if test="${narrativereport.gendernew5=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gendernew5=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					</select>spine revealed paraspinal pain, spasm, edema and trigger points. There was <input type="text"  class="input_txtbx1" name="tenderness" value="${narrativereport.tenderness}"> tenderness on the <select  name="gender40" id="gender40">
					<option selected="selected" value="L-R" <c:if test="${narrativereport.gender40=='L-R'}"><c:out value="Selected"/></c:if>>L-R</option>
					<option value="Bilaterally" <c:if test="${narrativereport.gender40=='Bilaterally'}"><c:out value="Selected"/></c:if>>Bilaterally</option>
					</select> and vertebral fixations. Tonicity of the <select  name="gendernew6" id="gendernew6">
					<option selected="selected" value="L-R Trapezius" <c:if test="${narrativereport.gendernew6=='L-R Trapezius'}"><c:out value="Selected"/></c:if>>L-R Trapezius</option>
					<option value="L-R Sternocleidomastoid" <c:if test="${narrativereport.gendernew6=='L-R Sternocleidomastoid'}"><c:out value="Selected"/></c:if>>L-R Sternocleidomastoid</option>
					<option value="L-R quadratus lumborum" <c:if test="${narrativereport.gendernew6=='L-R quadratus lumborum'}"><c:out value="Selected"/></c:if>>L-R quadratus lumborum</option>
					<option value="L-R hamstring" <c:if test="${narrativereport.gendernew6=='L-R hamstring'}"><c:out value="Selected"/></c:if>>L-R hamstring</option>
					</select>on the <select  name="gender41" id="gender41">
					<option selected="selected" value="L-R" <c:if test="${narrativereport.gender41=='L-R'}"><c:out value="Selected"/></c:if>>L-R</option>
					<option value="Bilaterally" <c:if test="${narrativereport.gender41=='Bilaterally'}"><c:out value="Selected"/></c:if>>Bilaterally</option>
					</select> was evident. Also noted was ,<input type="text"  class="input_txtbx1" name="noted" value="${narrativereport.noted}">.   </p>
					<table>
					<tr>
					<td width="150">Range Of Motion</td>
					<td>
					<input type="text"  class="input_txtbx1" name="rangeofmotion" value="${narrativereport.rangeofmotion}">
					</td>
					</tr>
					</table>
					</div>
					</div>
					</div>
					</td>
					</tr>
					</table>
					</div>
					</div>
					
					<div id="tabs-2"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>CHIROPRACTIC THERAPY CENTER</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
                  <table cellpadding="0" cellspacing="0" border="0">
					<tr class="row2">
					<td width="200"><B style="font-size:13px">Cervical Range of Motion</B></td>
					<td width="200"><B style="font-size:13px">Normal</B></td>
					<td width="200"><B style="font-size:13px">Pain Restriction</B></td>
					<td width="200"><B style="font-size:13px">Tonicity Restriction</B></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;60</td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="painres1" value="${narrativereport.painres1}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity1" value="${narrativereport.tonicity1}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Extension</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;75</td>
					<td width="200">&nbsp;&nbsp;<input type="text" class="input_txtbx1"  name="painres2" value="${narrativereport.painres2}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity2" value="${narrativereport.tonicity2}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Right Lateral Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;45</td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="painres3" value="${narrativereport.painres3}"  onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1"  name="tonicity3" value="${narrativereport.tonicity3}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Left lateral Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;45</td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="painres4" value="${narrativereport.painres4}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity4" value="${narrativereport.tonicity4}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Right Rotation</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;80</td>
					<td width="200">&nbsp;&nbsp;<input type="text" class="input_txtbx1"  name="painres5" value="${narrativereport.painres5}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity5" value="${narrativereport.tonicity5}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Left Rotation</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;80</td>
					<td width="200">&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="painres6" value="${narrativereport.painres6}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="tonicity6" value="${narrativereport.tonicity6 }" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr class="row2">
					<td width="200"><B style="font-size:13px">Thoraco-Lumbar ROM</B></td>
					<td width="200"><B style="font-size:13px">Normal</B></td>
					<td width="200"><B style="font-size:13px">Pain Restriction</B></td>
					<td width="200"><B style="font-size:13px">Tonicity Restriction</B></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;80</td>
					<td width="200">&nbsp;&nbsp;<input type="text" class="input_txtbx1"  name="painres7" value="${narrativereport.painres7}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity7" value="${narrativereport.tonicity7}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Extension</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;30</td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="painres8" value="${narrativereport.painres8}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity8" value="${narrativereport.tonicity8}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Right Lateral Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;25</td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="painres9" value="${narrativereport.painres9}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity9" value="${narrativereport.tonicity9}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Left lateral Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;25</td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="painres10" value="${narrativereport.painres10}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity10" value="${narrativereport.tonicity10}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Right Rotation</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;30</td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="painres11" value="${narrativereport.painres11}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity11" value="${narrativereport.tonicity11}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Left Rotation</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;30</td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="painres12" value="${narrativereport.painres12}" onkeypress="return Validate(event)";></td>
					<td width="200">&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="tonicity12" value="${narrativereport.tonicity12}" onkeypress="return Validate(event)";></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					</table>  
					<p><B style="font-size:14px"> Neurologic Testing</B></p>
					<p style="line-height:26px">Neurologic tests were performed for the purpose of assessing dermatomes, myotomes and deep tendon reflexes.  Peripheral sensitivity revealed (sensation to be equal and intact and without incident,abnormal sensation at the <input type="text" class="input_txtbx1"  name="dermatome" value="${narrativereport.dermatome}"> dermatome level(s) on the L-R) for the <select  name="gender42" id="gender42">
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender42=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender42=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gender42=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					</select> spine. Myotome strength was tested in the <select  name="gender43" id="gender43">
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender43=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender43=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gender43=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					</select> musculature  and was found to be <select  name="gender44" id="gender44" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Within normal limits" <c:if test="${narrativereport.gender44=='Within normal limits'}"><c:out value="Selected"/></c:if>>Within Normal Limits</option>
					<option value="Not Within Normal Limits" <c:if test="${narrativereport.gender39=='Not Within Normal Limits'}"><c:out value="Selected"/></c:if>>Not Within Normal limits</option>
					</select> <input type="text" name="level1" id="level1" style='display:none' value="${narrativereport.level1}">/5 at the <input type="text"  class="input_txtbx1" name="level" value="${narrativereport.level}">level .  Pathologic and deep tendon reflexes were tested using the Wexler Scale and were found to be <select  name="gender45" id="gender45" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Equal and intact without incident" <c:if test="${narrativereport.gender45=='Equal and intact without incident'}"><c:out value="Selected"/></c:if>>Equal and intact and without incident</option>
					<option value="Hypo-reflexic" <c:if test="${narrativereport.gender45=='Hypo-reflexic'}"><c:out value="Selected"/></c:if>>Hypo-reflexic</option>
					<option value="Hyper-reflexic" <c:if test="${narrativereport.gender45=='Hyper-reflexic'}"><c:out value="Selected"/></c:if>>Hyper-reflexic</option>
					</select> <input type="text" name="level2" id="level2" style='display:none' placeholder="specify the level" value="${narrativereport.level2}"> </p>
         		  <p><B style="font-size:14px">Orthopedic Exam</B></p>
         		<p>Extensive orthopedic testing was performed and the following tests were found to be positive</p>
         		<table cellpadding="0" cellspacing="0" border="0">
					<tr class="row2">
					<td width="200"></td>
					<td width="250"><B style="font-size:13px">Orthopedic Test</B></td>
					<td width="250"><B style="font-size:13px">Right side</B></td>
					<td width="250"><B style="font-size:13px">Left side</B></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250"><input type="text"  class="input_txtbx1" name="orthopedictest1" value="${narrativereport.orthopedictest1}"> </td>
					<td width="250"><input type="radio" name="jacksonsr" value="Positive" <c:if test="${narrativereport.jacksonsr=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="jacksonsr" value="Negative" <c:if test="${narrativereport.jacksonsr=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="250"><input type="radio" name="jacksonsl" value="Positive" <c:if test="${narrativereport.jacksonsl=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="jacksonsl" value="Negative" <c:if test="${narrativereport.jacksonsl=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250"><input type="text"  class="input_txtbx1" name="orthopedictest2" value="${narrativereport.orthopedictest2}"> </td>
					<td width="250"><input type="radio"   name="doublelegraiser" value="Positive" <c:if test="${narrativereport.doublelegraiser=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="doublelegraiser" value="Negative" <c:if test="${narrativereport.doublelegraiser=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="250"><input type="radio" name="doublelegraisel" value="Positive" <c:if test="${narrativereport.doublelegraisel=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="doublelegraisel" value="Negative" <c:if test="${narrativereport.doublelegraisel=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250"><input type="text" class="input_txtbx1" name="orthopedictest3" value="${narrativereport.orthopedictest3}"> </td>
					<td width="250"><input type="radio" name="yeomansr" value="Positive" <c:if test="${narrativereport.yeomansr=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="yeomansr" value="Negative" <c:if test="${narrativereport.yeomansr=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="250"><input type="radio" name="yeomansl" value="Positive" <c:if test="${narrativereport.yeomansl=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="yeomansl" value="Negative" <c:if test="${narrativereport.yeomansl=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250"><input type="text"  class="input_txtbx1" name="orthopedictest4" value="${narrativereport.orthopedictest4}"> </td>
					<td width="250"><input type="radio" name="foraminalr" value="Positive" <c:if test="${narrativereport.foraminalr=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="foraminalr" value="Negative" <c:if test="${narrativereport.foraminalr=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="250"><input type="radio" name="foraminall" value="Positive" <c:if test="${narrativereport.foraminall=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="foraminall" value="Negative" <c:if test="${narrativereport.foraminall=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250"><input type="text"  class="input_txtbx1" name="orthopedictest5" value="${narrativereport.orthopedictest5}"> </td>
					<td width="250"><input type="radio" name="shoulderr" value="Positive" <c:if test="${narrativereport.shoulderr=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="shoulderr" value="Negative" <c:if test="${narrativereport.shoulderr=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="250"><input type="radio" name="shoulderl" value="Positive" <c:if test="${narrativereport.shoulderl=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="shoulderl" value="Negative" <c:if test="${narrativereport.shoulderl=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250"><input type="text"  class="input_txtbx1" name="orthopedictest6" value="${narrativereport.orthopedictest6}"> </td>
					<td width="250"><input type="radio" name="orthopedicr" value="Positive" <c:if test="${narrativereport.orthopedicr=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="orthopedicr" value="Negative" <c:if test="${narrativereport.orthopedicr=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="250"><input type="radio" name="orthopedicl" value="Positive" <c:if test="${narrativereport.orthopedicl=='Positive'}"><c:out value="checked=checked"/></c:if>>Positive &nbsp;&nbsp;<input type="radio" name="orthopedicl" value="Negative" <c:if test="${narrativereport.orthopedicl=='Negative'}"><c:out value="checked=checked"/></c:if>>Negative</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					</table>
					<p><B style="font-size:14px">RadiologicReport</B></p>
					<p style="line-height:26px"><select  name="gender46" id="gender46" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender46=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender46=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gender46=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					<option value="Sacroilliac Spine" <c:if test="${narrativereport.gender46=='Sacroilliac Spine'}"><c:out value="Selected"/></c:if>>Sacroilliac Spine</option>
					<option value="Other" <c:if test="${narrativereport.gender46=='Other'}"><c:out value="Selected"/></c:if>>Other</option>
					</select>:  A <select  name="gender47" id="gender47" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Two" <c:if test="${narrativereport.gender47=='Two'}"><c:out value="Selected"/></c:if>>Two</option>
					<option value="Three" <c:if test="${narrativereport.gender47=='Three'}"><c:out value="Selected"/></c:if>>Three</option>
					<option value="Four" <c:if test="${narrativereport.gender47=='Four'}"><c:out value="Selected"/></c:if>>Four</option>
					<option value="Five" <c:if test="${narrativereport.gender47=='Five'}"><c:out value="Selected"/></c:if>>Five</option>
					<option value="Six" <c:if test="${narrativereport.gender47=='Six'}"><c:out value="Selected"/></c:if>>Six</option>
					<option value="Seven" <c:if test="${narrativereport.gender47=='Seven'}"><c:out value="Selected"/></c:if>>Seven</option>
					</select>view <select  name="gender48" id="gender48" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender48=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender48=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gender48=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					<option value="SI" <c:if test="${narrativereport.gender48=='SI'}"><c:out value="Selected"/></c:if>>SI</option>
					<option value="Other" <c:if test="${narrativereport.gender48=='Other'}"><c:out value="Selected"/></c:if>>Other</option>
					</select>series and a  <select  name="gender49" id="gender49" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Two" <c:if test="${narrativereport.gender49=='Two'}"><c:out value="Selected"/></c:if>>Two</option>
					<option value="Three" <c:if test="${narrativereport.gender49=='Three'}"><c:out value="Selected"/></c:if>>Three</option>
					<option value="Four" <c:if test="${narrativereport.gender49=='Four'}"><c:out value="Selected"/></c:if>>Four</option>
					<option value="Five" <c:if test="${narrativereport.gender49=='Five'}"><c:out value="Selected"/></c:if>>Five</option>
					<option value="Six" <c:if test="${narrativereport.gender49=='Six'}"><c:out value="Selected"/></c:if>>Six</option>
					<option value="Seven" <c:if test="${narrativereport.gender49=='Seven'}"><c:out value="Selected"/></c:if>>Seven</option>
					</select> view  <select  name="gender50" id="gender50" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender50=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender50=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gender50=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					<option value="SI" <c:if test="${narrativereport.gender50=='SI'}"><c:out value="Selected"/></c:if>>SI</option>
					<option value="Other" <c:if test="${narrativereport.gender50=='Other'}"><c:out value="Selected"/></c:if>>Other</option>
					</select>series was performed and found <select  name="gender51" id="gender51" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Negative for recent fracture" <c:if test="${narrativereport.gender51=='Negative for recent fracture'}"><c:out value="Selected"/></c:if>>Negative for recent fracture</option>
					<option value="Dislocation or gross osteopathology" <c:if test="${narrativereport.gender51=='Dislocation or gross osteopathology'}"><c:out value="Selected"/></c:if>>Dislocation or gross osteopathology</option>
					<option value="Positive for fracture of the" <c:if test="${narrativereport.gender51=='Positive for fracture of the'}"><c:out value="Selected"/></c:if>>Positive for fracture of the</option>
					</select><input type="text"  class="input_txtbx1" name="fracture" id="fracture" style='display:none' placeholder="specify the level" value="${narrativereport.fracture}">.  There was a <select  name="gender52" id="gender52" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender52=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender52=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gender52=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					</select><select  name="gender53" id="gender53" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Hypolordosis" <c:if test="${narrativereport.gender53=='Hypolordosis'}"><c:out value="Selected"/></c:if>>Hypolordosis</option>
					<option value="Hyperlordosis" <c:if test="${narrativereport.gender53=='Hyperlordosis'}"><c:out value="Selected"/></c:if>>Hyperlordosis</option>
					</select>present due to spastic musculature.Degenerative joint disease of the spine was <select  name="gender54" id="gender54" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Not Present" <c:if test="${narrativereport.gender54=='Not present'}"><c:out value="Selected"/></c:if>>Not Present</option>
					<option value="Present at the" <c:if test="${narrativereport.gender54=='Present at the'}"><c:out value="Selected"/></c:if>>Present at the</option>
					</select><input type="text" class="input_txtbx1"  name="presentlevel" id="presentlevel" style='display:none' placeholder="specify the level" value="${narrativereport.presentlevel}">levels. There were <select  name="gender55" id="gender55" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Anterior" <c:if test="${narrativereport.gender55=='Anterior'}"><c:out value="Selected"/></c:if>>Anterior</option>
					<option value="Posterior" <c:if test="${narrativereport.gender55=='Posterior'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					</select> vertebral body osteophytes of <input type="text"  class="input_txtbx1" name="osteophytes" value="${narrativereport.osteophytes}">.  A <select  name="gender56" id="gender56" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Mild" <c:if test="${narrativereport.gender56=='Mild'}"><c:out value="Selected"/></c:if>>Mild</option>
					<option value="Moderate" <c:if test="${narrativereport.gender56=='Moderate'}"><c:out value="Selected"/></c:if>>Moderate</option>
					<option value="Severe" <c:if test="${narrativereport.gender56=='Severe'}"><c:out value="Selected"/></c:if>>Severe</option>
					</select><select  name="gender57" id="gender57" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Dextro" <c:if test="${narrativereport.gender57=='Dextro'}"><c:out value="Selected"/></c:if>>Dextro</option>
					<option value="levo" <c:if test="${narrativereport.gender57=='levo'}"><c:out value="Selected"/></c:if>>levo</option>
					</select><select  name="gender58" id="gender58" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Scoliosis" <c:if test="${narrativereport.gender58=='Scoliosis'}"><c:out value="Selected"/></c:if>>Scoliosis</option>
					<option value="Towering" <c:if test="${narrativereport.gender58=='Towering'}"><c:out value="Selected"/></c:if>>Towering</option>
					</select> was evident in the <select  name="gender59" id="gender59" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender59=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender59=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gender59=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					</select>spine.  Soft tissue edema was apparent in the paraspinal muscle tissue of the <select  name="gender60" id="gender60" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Cervical" <c:if test="${narrativereport.gender60=='Cervical'}"><c:out value="Selected"/></c:if>>Cervical</option>
					<option value="Thoracic" <c:if test="${narrativereport.gender60=='Thoracic'}"><c:out value="Selected"/></c:if>>Thoracic</option>
					<option value="Lumbar" <c:if test="${narrativereport.gender60=='Lumbar'}"><c:out value="Selected"/></c:if>>Lumbar</option>
					</select>spine.  Subluxations were present at <input type="text"  class="input_txtbx1" name="subluxations" value="${narrativereport.subluxations}">.</p>
         		</div>
         		</div>
         		</td>
         		</tr>
         		</table>
         		</div>
         		</div>
         		<div id="tabs-3">                       
 <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2> CHIROPRACTIC THERAPY CENTER</h2> </center><br/>
	            </div>
	            <div class="contentbox">
	             <p><B style="font-size:14px">Diagnosis</B></p>
         		<table>
         		<tr height="30" class="row2">
					<td width="200"></td>
					<td width="250"></td>
					<td width="250"><B style="font-size:14px">ICD</B></td>
					<td width="250"><B style="font-size:14px">Description</B></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">1</td>
					<td width="250"><input type="text"  class="input_txtbx1" name="icd1" value="${narrativereport.icd1}"></td>
					<td width="250"><input type="text"  class="input_txtbx1" name="description1" value="${narrativereport.description1}"></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">2</td>
					<td width="250"><input type="text"  class="input_txtbx1" name="icd2" value="${narrativereport.icd2}"></td>
					<td width="250"><input type="text"  class="input_txtbx1" name="description2" value="${narrativereport.description2 }"></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">3</td>
					<td width="250"><input type="text"  class="input_txtbx1" name="icd3" value="${narrativereport.icd3}"></td>
					<td width="250"><input type="text"  class="input_txtbx1" name="description3" value="${narrativereport.description3 }"></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">4</td>
					<td width="250"><input type="text" name="icd4" class="input_txtbx1" value="${narrativereport.icd4}"></td>
					<td width="250"><input type="text" name="description4" class="input_txtbx1" value="${narrativereport.description4}"></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
         		</table>
         		<p><B style="font-size:14px">Treatment</B></p>
         		<p style="line-height:26px">Active relief care, initial pain management directed towards reducing symptoms and improving function.  The goal of continued treatment is to reduce pain, reduce spasm, improve activities of daily living and the quality of the patient's life.
Injuries of this nature and magnitude respond well to a treatment program consisting of skilled chiropractic spinal manipulation, electrical muscle stimulation, massage therapy, hot/cold packs and exercise.  Our office began care with <select  name="gender61" id="gender61" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Mr" <c:if test="${narrativereport.gender61=='Mr'}"><c:out value="Selected"/></c:if> >Mr</option>
					<option value="Mrs" <c:if test="${narrativereport.gender61=='Mrs'}"><c:out value="Selected"/></c:if>>Mrs</option>
					<option value="Ms" <c:if test="${narrativereport.gender61=='Ms'}"><c:out value="Selected"/></c:if>>Ms</option>
					</select> <input type="text"  class="input_txtbx1" name="pname" value="${narrativereport.pname}">on <input type="text"  class="input_txtbx1" name="date9" id="datepicker9" value="${narrativereport.date9}"><span class="err" id="datepicker9error" ></span>and during that period of time, records indicate <select  name="gender62" id="gender62" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="He" <c:if test="${narrativereport.gender62=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender62=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> experienced steady improvement.
         		</p> 
         		<p><B style="font-size:14px">Prognosis</B></p>
	            <p style="line-height:26px"><select  name="gender63" id="gender63" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Mr" <c:if test="${narrativereport.gender63=='Mr'}"><c:out value="Selected"/></c:if>>Mr</option>
					<option value="Mrs" <c:if test="${narrativereport.gender63=='Mrs'}"><c:out value="Selected"/></c:if>>Mrs</option>
					<option value="Ms" <c:if test="${narrativereport.gender63=='Ms'}"><c:out value="Selected"/></c:if>>Ms</option>
					</select> <input type="text"  class="input_txtbx1" name="pname1" value="${narrativereport.pname1}"> condition reached maximum medical improvement on <input type="text"  class="input_txtbx1" name="datenew" id="datepicker10" value="${narrativereport.datenew}"><span class="err" id="datepicker10error"></span> and was therefore released from care.   <select  name="gender64" id="gender64" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="His" <c:if test="${narrativereport.gender64=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender64=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> prognosis is considered  <select  name="gender65" id="gender65" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Good at this time" <c:if test="${narrativereport.gender65=='Good at this time'}"><c:out value="Selected"/></c:if>>Good at this time</option>
					<option value="Poor due to" <c:if test="${narrativereport.gender65=='Poor due to'}"><c:out value="Selected"/></c:if>>Poor due to</option>
					</select> <input type="text"  class="input_txtbx1" name="poor" id="poor" style='display:none' placeholder="specify the level" value="${narrativereport.poor}">.  <select  name="gender67" id="gender67" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="He" <c:if test="${narrativereport.gender67=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender67=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> is expected to experience mild residual effects, if any, from <select  name="gender68" id="gender68" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="His" <c:if test="${narrativereport.gender68=='Her'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender68=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> injuries.  It should be noted that the patient's response to conservative therapy and treatment has been consistent and encouraging in view of the severity and chronicity of <select  name="gender69" id="gender69" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="His" <c:if test="${narrativereport.gender69=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender69=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> condition.  The effects of healing residuals of the fibrosis of repair of injured muscle and ligamentous tissues are permanent in nature and 
<select  name="gender70" id="gender70" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Mr" <c:if test="${narrativereport.gender70=='Mr'}"><c:out value="Selected"/></c:if>>Mr</option>
					<option value="Mrs" <c:if test="${narrativereport.gender70=='Mrs'}"><c:out value="Selected"/></c:if>>Mrs</option>
					<option value="Ms" <c:if test="${narrativereport.gender70=='Ms'}"><c:out value="Selected"/></c:if>>Ms</option>
					</select><input type="text"  class="input_txtbx1" name="pname2" value="${narrativereport.pname2}"> may have occasional exacerbations.  This is due to fact that fibrotic repair of once injured tissues leaves it permanently weaker, less elastic and more sensitive to the normal stresses of daily activities.  There is no need to place limitations on <select  name="gender71" id="gender71" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="His" <c:if test="${narrativereport.gender71=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender71=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> activities at this time.  Yet, it is possible that any activity that causes stress upon the once injured ligaments and muscles of <select  name="gender72" id="gender72" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="His" <c:if test="${narrativereport.gender72=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender72=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select> neck and lower back may create a symptomatic exacerbation of <select  name="gender73" id="gender73" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="His" <c:if test="${narrativereport.gender73=='His'}"><c:out value="Selected"/></c:if>>His</option>
					<option value="Her" <c:if test="${narrativereport.gender73=='Her'}"><c:out value="Selected"/></c:if>>Her</option>
					</select>condition.  At that time, <select  name="gender74" id="gender74" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="He" <c:if test="${narrativereport.gender74=='He'}"><c:out value="Selected"/></c:if>>He</option>
					<option value="She" <c:if test="${narrativereport.gender74=='She'}"><c:out value="Selected"/></c:if>>She</option>
					</select> may need to resume chiropractic care for palliative purposes.

I hope you find this narrative report and discussion helpful in resolving the current status of <select  name="gender75" id="gender75" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Mr" <c:if test="${narrativereport.gender75=='Mr'}"><c:out value="Selected"/></c:if>>Mr</option>
					<option value="Mrs" <c:if test="${narrativereport.gender75=='Mrs'}"><c:out value="Selected"/></c:if>>Mrs</option>
					<option value="Ms" <c:if test="${narrativereport.gender75=='Ms'}"><c:out value="Selected"/></c:if>>Ms</option>
					</select><input type="text"  class="input_txtbx1" name="pname3" value="${narrativereport.pname3}"> condition.  If you have any questions, please feel free to contact me.
	            </p>
	            <div align="right">
          <p><B style="font-size:13px">Sincerely,</B></p>
          <p> <span class="err">*</span><input type="text" class="input_txtbx1"  name="sign" size="30" value="${narrativereport.sign}"><span id="signerror" style="color: red;font-style:italic;"><form:errors path="Copyofrequest.sign"></form:errors></span></p>
          <p>Dr. Darrin A. Pordash</p>
          </div>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
<td><a href="deletenarrativereport?narrativeno=${narrativereport.narrativeno}"style="color:white" class="submit_btn">Delete</a></td>
<td><a href="viewallpatientdetails"style="color:white" class="submit_btn">Cancel</a></td>
</tr>
</table>
	            </div>
	            </div>
	            </td>
	            </tr>
	            </table>
	            </div>
	            </div>
			    </form>
			    </div>
			    </body>
			  </html>

				

					
					


