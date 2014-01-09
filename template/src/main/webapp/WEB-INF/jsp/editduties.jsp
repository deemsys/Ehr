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
   
   <script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('other1');
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
}
function Checksymptom(val){
 var element=document.getElementById('other2');
 if(val=='other')
  element.style.display='block';
 else  
  element.style.display='none';
	}
</script >
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });

</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
</head>
 <body>
<form action="updateduties" method="POST" name="dutiesunder">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>Duties Under Duress Summary</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
          <c:set value="${dutiesduressForm.dutiesunderduressdetails[0]}" var="dutiesunderduressdetails"/> 
 <tr class="row1">
 <input type="hidden" name="dutiesno" id="inp_id" value="${dutiesunderduressdetails.dutiesno}">
<td><h2>Patient Name:</h2></td><td><input type="text"  name="pname" value="${dutiesunderduressdetails.pname }"/></td>
<td width="600">
<td><h2>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${dutiesunderduressdetails.date }"/></td>
</tr>
</table>
<br/>
<table cellpadding="0" cellspacing="0" border="0" width="96%">
<tr>
<td>Complete the following questionarrie as it is relates to how your injury(s) affect your performance of your living and work duties.Place a check in front of the day to day living duties which are painful or difficult for you to perform as a result of injuries you sustained in the motor vehicle collision. Then check mark the appropriate box designating reason for difficulty. Then check mark the appropriate box designating the duration. Include those duties/responsibilities which require that you reduce the time you are capable of performing them.  </td>
</tr>
</table>
<br/>
<table>
<tr>
<td width="50%"><h2>Job Description :</h2></td>
 <td> <textarea rows="6" cols="70" name="jobdescription">${dutiesunderduressdetails.jobdescription}</textarea></td></tr>
</table>
<br/>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Work</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting1" value="Lifting" <c:if test="${dutiesunderduressdetails.lifting1=='Lifting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Lifting</td> 
 <td><input type="checkbox" name="incresedpain1" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain1=='Incresed Pain'}"><c:out value="Checked"/></c:if> >&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement1" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement1=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness1" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness1=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva1" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva1=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing1" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing1=='On Going'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending1" value="Bending" <c:if test="${dutiesunderduressdetails.bending1=='Bending'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain2" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain2=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement2" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement2=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness2" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness2=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva2" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva2=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing2" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing2=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting1" value="Sitting" <c:if test="${dutiesunderduressdetails.sitting1=='Sitting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Sitting</td> 
 <td><input type="checkbox" name="incresedpain3" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain3=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement3" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement3=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness3" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness3=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva3" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva3=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing3" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing3=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking1" value="Walking" <c:if test="${dutiesunderduressdetails.walking1=='Walking'}"><c:out value="Checked"/></c:if>> </td>
 <td>Walking</td> 
 <td><input type="checkbox" name="incresedpain4" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain4=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement4" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement4=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness4" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness4=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva4" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva4=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing4" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing4=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties1" value="Computerduties" <c:if test="${dutiesunderduressdetails.computerduties1=='Computerduties'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain5" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain5=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement5" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement5=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness5" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness5=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva5" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva5=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing5" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing5=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other1" value="${dutiesunderduressdetails.other1 }"></td> 
 <td><input type="checkbox" name="incresedpain6" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain6=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement6" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement5=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness6" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness6=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva6" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva6=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing6" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing6=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other2" value="${dutiesunderduressdetails.other2 }"></td> 
 <td><input type="checkbox" name="incresedpain7" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain7=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement7" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement6=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness7" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness6=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva7" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva6=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing7" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing7=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Studies/Schools</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting2" value="Lifting" <c:if test="${dutiesunderduressdetails.lifting2=='Lifting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Lifting</td> 
 <td><input type="checkbox" name="incresedpain8" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain8=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement8" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement8=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness8" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness8=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva8" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva8=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing8" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing8=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending2" value="Bending" <c:if test="${dutiesunderduressdetails.bending2=='Bending'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain9" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain9=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement9" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement9=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness9" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness9=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva9" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva9=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing9" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing9=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting2" value="Sitting" <c:if test="${dutiesunderduressdetails.sitting2=='Sitting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Sitting</td> 
 <td><input type="checkbox" name="incresedpain10" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain10 =='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement10" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement10=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness10" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness10=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva10" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva10=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing10" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing10=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking2" value="Walking" <c:if test="${dutiesunderduressdetails.walking2=='Walking'}"><c:out value="Checked"/></c:if>> </td>
 <td>Walking</td> 
 <td><input type="checkbox" name="incresedpain11" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain11=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement11" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement11=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness11" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness11=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva11" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva11=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing11" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing11=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties2" value="Computerduties" <c:if test="${dutiesunderduressdetails.computerduties2=='Computerduties'}"><c:out value="Checked"/></c:if>> </td>
 <td>Computerduties</td> 
 <td><input type="checkbox" name="incresedpain12" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain12=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement12" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement12=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness12" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness12=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva12" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva12=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing12" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing12=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="studying" value="Studying" <c:if test="${dutiesunderduressdetails.studying=='Studying'}"><c:out value="Checked"/></c:if>> </td>
 <td>Studying</td> 
 <td><input type="checkbox" name="incresedpainstudy" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpainstudy=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementstudy" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovementstudy=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weeknessstudy" value="Fatigue" <c:if test="${dutiesunderduressdetails.weeknessstudy=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemvastudy" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemvastudy=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoingstudy" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoingstudy=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="concentrating" value="Concentrating" <c:if test="${dutiesunderduressdetails.concentrating=='Concentrating'}"><c:out value="Checked"/></c:if>> </td>
 <td>Concentrating</td> 
 <td><input type="checkbox" name="incresedpainconcentrate" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpainconcentrate=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementconcentrate" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovementconcentrate=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weeknessconcentrate" value="Fatigue" <c:if test="${dutiesunderduressdetails.weeknessconcentrate=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemvaconcentrate" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemvaconcentrate=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoingconcentrate" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoingconcentrate=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other3" value="${dutiesunderduressdetails.other3 }"></td> 
 <td><input type="checkbox" name="incresedpain13" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain13=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement13" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement13=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness13" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness13=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva13" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva13=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing13" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing13=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other4" value="${dutiesunderduressdetails.other4 }"></td> 
 <td><input type="checkbox" name="incresedpain14" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain14=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement14" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement14=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness14" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness14=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva14" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva14=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing14" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing14=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Domestic Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="vacumming" value="Vacumming" <c:if test="${dutiesunderduressdetails.vacumming=='Vacumming'}"><c:out value="Checked"/></c:if>> </td>
 <td>Vacumming</td> 
 <td><input type="checkbox" name="incresedpain15" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain15=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement15" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement15=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness15" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness15=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva15" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva15=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing15" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing15=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingcareofkids" value="Taking Care of Kids" <c:if test="${dutiesunderduressdetails.takingcareofkids=='Taking Care of kids'}"><c:out value="Checked"/></c:if>> </td>
 <td>Taking Care Of Kids</td> 
 <td><input type="checkbox" name="incresedpain16" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain16=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement16" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement15=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness16" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness16=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva16" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva16=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing16" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing16=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="cleaning" value="Cleaning" <c:if test="${dutiesunderduressdetails.cleaning=='Cleaning'}"><c:out value="Checked"/></c:if>> </td>
 <td>Cleaning</td> 
 <td><input type="checkbox" name="incresedpain17" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain17=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement17" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement17=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness17" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness17=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva17" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva17=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing17" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing17=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="preparingmeals" value="Preparing Meals" <c:if test="${dutiesunderduressdetails.preparingmeals=='Preparing Meals'}"><c:out value="Checked"/></c:if>> </td>
 <td>Preparing Meals</td> 
 <td><input type="checkbox" name="incresedpain18" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain18=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement18" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement18=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness18" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness18=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva18" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva18=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing18" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing18=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other5" value="${dutiesunderduressdetails.other5 }"></td> 
 <td><input type="checkbox" name="incresedpain20" value="Increased Pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain20=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement20" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement20=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness20" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness20=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva20" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva20=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing20" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing20=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other6" value="${dutiesunderduressdetails.other6 }"></td> 
 <td><input type="checkbox" name="incresedpain21" value="Increased Pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain21=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement21" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement21=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness21" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness21=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva21" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva21=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing21" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing21=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Household Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="yardwork" value="Yard Work" <c:if test="${dutiesunderduressdetails.yardwork=='Yard Work'}"><c:out value="Checked"/></c:if>> </td>
 <td>Yard Work</td> 
 <td><input type="checkbox" name="incresedpain22" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain22=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement22" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement22=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness22" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness22=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva22" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva22=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing22" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing22=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="transportation" value="Transportation" <c:if test="${dutiesunderduressdetails.transportation=='Transportation'}"><c:out value="Checked"/></c:if>> </td>
 <td>Transportation</td> 
 <td><input type="checkbox" name="incresedpain23" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain23=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement23" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement23=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness23" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness23=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva23" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva23=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing23" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing23=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="shopping" value="Shopping" <c:if test="${dutiesunderduressdetails.shopping=='Shopping'}"><c:out value="Checked"/></c:if>> </td>
 <td>Shopping</td> 
 <td><input type="checkbox" name="incresedpain24" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain24=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement24" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement24=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness24" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness24=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva24" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva24=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing24" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing24=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingouttrash" value="Taking Out Trash" <c:if test="${dutiesunderduressdetails.takingouttrash=='Taking Out Trash'}"><c:out value="Checked"/></c:if>> </td>
 <td>Taking Out Trash</td> 
 <td><input type="checkbox" name="incresedpain25" value="Increased pain" <c:if test="${dutiesunderduressdetails.incresedpain25=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement25" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement25=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness25" value="Weekness" <c:if test="${dutiesunderduressdetails.weekness25=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva25" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva25=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing25" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing25=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other7" value="${dutiesunderduress.other7 }"></td> 
 <td><input type="checkbox" name="incresedpain27" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain27=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement27" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement27=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness27" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness27=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva27" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva27=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing27" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing27=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other8" value="${dutiesunderduress.other8 }"></td> 
 <td><input type="checkbox" name="incresedpain28" value="Increased pain/Anxiety" <c:if test="${dutiesunderduressdetails.incresedpain28=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement28" value="Restricted Movement" <c:if test="${dutiesunderduressdetails.restrictedmovement28=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness28" value="Fatigue" <c:if test="${dutiesunderduressdetails.weekness28=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva28" value="Since MVA" <c:if test="${dutiesunderduressdetails.sincemva28=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing28" value="Ongoing" <c:if test="${dutiesunderduressdetails.ongoing28=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 </table>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update"></td>
<td><input type="reset" class="submit_btn" value="Cancel"></td>
</tr>
</table>
 </table>
</form>
</body>