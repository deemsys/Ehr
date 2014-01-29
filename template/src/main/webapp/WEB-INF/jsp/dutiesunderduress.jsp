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
 <br><br>
<form action="dutiesunderduress" method="POST" name="dutiesunder">
<c:choose>
            <c:when test="${empty duties}">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>Duties Under Duress Summary</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td><h2><span class="err">*</span> Patient Name:</h2></td><td><input type="text"  name="pname" /><span class="err"><form:errors path="Dutiesunderduress.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span> Date:</h2></td><td><input type="text"  id="datepicker" name="date" /><span class="err"><form:errors path="Dutiesunderduress.date"></form:errors></span></td>
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
 <td> <textarea rows="6" cols="70" name="jobdescription"></textarea></td></tr>
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
 <td><input type="checkbox" name="lifting1" value="Lifting"> </td>
 <td>Lifting</td> 
 <td><input type="checkbox" name="incresedpain1" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement1" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness1" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva1" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing1" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending1" value="Bending"> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain2" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement2" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness2" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva2" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing2" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting1" value="Sitting"> </td>
 <td>Sitting</td> 
 <td><input type="checkbox" name="incresedpain3" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement3" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness3" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva3" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing3" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking1" value="Walking"> </td>
 <td>Walking</td> 
 <td><input type="checkbox" name="incresedpain4" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement4" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness4" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva4" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing4" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties1" value="Computerduties"> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain5" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement5" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness5" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva5" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing5" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other1"></td> 
 <td><input type="checkbox" name="incresedpain6" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement6" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness6" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva6" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing6" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other2"></td> 
 <td><input type="checkbox" name="incresedpain7" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement7" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness7" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva7" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing7" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Studies/Schools</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting2" value="Lifting"> </td>
 <td>Lifting</td> 
 <td><input type="checkbox" name="incresedpain8" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement8" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness8" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva8" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing8" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending2" value="Bending"> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain9" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement9" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness9" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva9" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing9" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting2" value="Sitting"> </td>
 <td>Sitting</td> 
 <td><input type="checkbox" name="incresedpain10" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement10" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness10" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva10" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing10" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking2" value="Walking"> </td>
 <td>Walking</td> 
 <td><input type="checkbox" name="incresedpain11" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement11" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness11" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva11" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing11" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties2" value="Computerduties"> </td>
 <td>Computerduties</td> 
 <td><input type="checkbox" name="incresedpain12" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement12" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness12" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva12" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing12" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="studying" value="Studying"> </td>
 <td>Studying</td> 
 <td><input type="checkbox" name="incresedpainstudy" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementstudy" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weeknessstudy" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemvastudy" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoingstudy" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="concentrating" value="Concentrating"> </td>
 <td>Concentrating</td> 
 <td><input type="checkbox" name="incresedpainconcentrate" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementconcentrate" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weeknessconcentrate" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemvaconcentrate" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoingconcentrate" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other3"></td> 
 <td><input type="checkbox" name="incresedpain13" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement13" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness13" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva13" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing13" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other4"></td> 
 <td><input type="checkbox" name="incresedpain14" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement14" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness14" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva14" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing14" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Domestic Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="vacumming" value="Vacumming"> </td>
 <td>Vacumming</td> 
 <td><input type="checkbox" name="incresedpain15" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement15" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness15" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva15" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing15" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingcareofkids" value="Taking Care of Kids"> </td>
 <td>Taking Care Of Kids</td> 
 <td><input type="checkbox" name="incresedpain16" value="Increased pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement16" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness16" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva16" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing16" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="cleaning" value="Cleaning"> </td>
 <td>Cleaning</td> 
 <td><input type="checkbox" name="incresedpain17" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement17" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness17" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva17" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing17" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="preparingmeals" value="Preparing Meals"> </td>
 <td>Preparing Meals</td> 
 <td><input type="checkbox" name="incresedpain18" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement18" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness18" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva18" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing18" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other5"></td> 
 <td><input type="checkbox" name="incresedpain20" value="Increased Pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement20" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness20" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva20" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing20" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other6"></td> 
 <td><input type="checkbox" name="incresedpain21" value="Increased Pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement21" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness21" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva21" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing21" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Household Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="yardwork" value="Yard Work"> </td>
 <td>Yard Work</td> 
 <td><input type="checkbox" name="incresedpain22" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement22" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness22" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva22" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing22" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="transportation" value="Transportation"> </td>
 <td>Transportation</td> 
 <td><input type="checkbox" name="incresedpain23" value="Increased pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement23" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness23" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva23" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing23" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="shopping" value="Shopping"> </td>
 <td>Shopping</td> 
 <td><input type="checkbox" name="incresedpain24" value="Increased pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement24" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness24" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva24" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing24" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingouttrash" value="Taking Out Trash"> </td>
 <td>Taking Out Trash</td> 
 <td><input type="checkbox" name="incresedpain25" value="Increased pain">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement25" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness25" value="Weekness">&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva25" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing25" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other7"></td> 
 <td><input type="checkbox" name="incresedpain27" value="Increased pain/Anxiety">&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement27" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness27" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva27" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing27" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other8"></td> 
 <td><input type="checkbox" name="incresedpain28" value="Increased pain/Anxiety">&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement28" value="Restricted Movement">&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness28" value="Fatigue">&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva28" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing28" value="Ongoing">&nbsp;Ongoing</td>
 </tr>
 </table>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save"></td>
<td><input type="reset" class="submit_btn" value="Cancel"></td>
</tr>
</table>
 </div>
 </div>
 </td>
 </tr>
 </table>
 </c:when>
  <c:otherwise>
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%"> 
 <tr class="row1">
<td><h2><span class="err">*</span>Patient Name:</h2></td><td><input type="text"  name="pname" value="${duties.pname }"/><span class="err"><form:errors path="Dutiesunderduress.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${duties.date }"/><span class="err"><form:errors path="Dutiesunderduress.date"></form:errors></span></td>
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
 <td> <textarea rows="6" cols="70" name="jobdescription">${duties.jobdescription}</textarea></td></tr>
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
 <td><input type="checkbox" name="lifting1" value="Lifting" <c:if test="${duties.lifting1=='Lifting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Lifting</td> 
 <td><input type="checkbox" name="incresedpain1" value="Increased pain" <c:if test="${duties.incresedpain1=='Increased pain'}"><c:out value="Checked"/></c:if> >&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement1" value="Restricted Movement" <c:if test="${duties.restrictedmovement1=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness1" value="Weekness" <c:if test="${duties.weekness1=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva1" value="Since MVA" <c:if test="${duties.sincemva1=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing1" value="Ongoing" <c:if test="${duties.ongoing1=='On Going'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending1" value="Bending" <c:if test="${duties.bending1=='Bending'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain2" value="Increased pain" <c:if test="${duties.incresedpain2=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement2" value="Restricted Movement" <c:if test="${duties.restrictedmovement2=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness2" value="Weekness" <c:if test="${duties.weekness2=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva2" value="Since MVA" <c:if test="${duties.sincemva2=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing2" value="Ongoing" <c:if test="${duties.ongoing2=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting1" value="Sitting" <c:if test="${duties.sitting1=='Sitting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Sitting</td> 
 <td><input type="checkbox" name="incresedpain3" value="Increased pain" <c:if test="${duties.incresedpain3=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement3" value="Restricted Movement" <c:if test="${duties.restrictedmovement3=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness3" value="Weekness" <c:if test="${duties.weekness3=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva3" value="Since MVA" <c:if test="${duties.sincemva3=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing3" value="Ongoing" <c:if test="${duties.ongoing3=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking1" value="Walking" <c:if test="${duties.walking1=='Walking'}"><c:out value="Checked"/></c:if>> </td>
 <td>Walking</td> 
 <td><input type="checkbox" name="incresedpain4" value="Increased pain" <c:if test="${duties.incresedpain4=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement4" value="Restricted Movement" <c:if test="${duties.restrictedmovement4=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness4" value="Weekness" <c:if test="${duties.weekness4=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva4" value="Since MVA" <c:if test="${duties.sincemva4=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing4" value="Ongoing" <c:if test="${duties.ongoing4=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties1" value="Computerduties" <c:if test="${duties.computerduties1=='Computerduties'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain5" value="Increased pain" <c:if test="${duties.incresedpain5=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement5" value="Restricted Movement" <c:if test="${duties.restrictedmovement5=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness5" value="Fatigue" <c:if test="${duties.weekness5=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva5" value="Since MVA" <c:if test="${duties.sincemva5=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing5" value="Ongoing" <c:if test="${duties.ongoing5=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other1" value="${duties.other1 }"></td> 
 <td><input type="checkbox" name="incresedpain6" value="Increased pain" <c:if test="${duties.incresedpain6=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement6" value="Restricted Movement" <c:if test="${duties.restrictedmovement5=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness6" value="Weekness" <c:if test="${duties.weekness6=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva6" value="Since MVA" <c:if test="${duties.sincemva6=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing6" value="Ongoing" <c:if test="${duties.ongoing6=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other2" value="${duties.other2 }"></td> 
 <td><input type="checkbox" name="incresedpain7" value="Increased pain" <c:if test="${duties.incresedpain7=='Increased pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement7" value="Restricted Movement" <c:if test="${duties.restrictedmovement6=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness7" value="Weekness" <c:if test="${duties.weekness6=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva7" value="Since MVA" <c:if test="${duties.sincemva6=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing7" value="Ongoing" <c:if test="${duties.ongoing7=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Studies/Schools</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="lifting2" value="Lifting" <c:if test="${duties.lifting2=='Lifting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Lifting</td> 
 <td><input type="checkbox" name="incresedpain8" value="Increased pain" <c:if test="${duties.incresedpain8=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement8" value="Restricted Movement" <c:if test="${duties.restrictedmovement8=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness8" value="Weekness" <c:if test="${duties.weekness8=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva8" value="Since MVA" <c:if test="${duties.sincemva8=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing8" value="Ongoing" <c:if test="${duties.ongoing8=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="bending2" value="Bending" <c:if test="${duties.bending2=='Bending'}"><c:out value="Checked"/></c:if>> </td>
 <td>Bending</td> 
 <td><input type="checkbox" name="incresedpain9" value="Increased pain" <c:if test="${duties.incresedpain9=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement9" value="Restricted Movement" <c:if test="${duties.restrictedmovement9=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness9" value="Weekness" <c:if test="${duties.weekness9=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva9" value="Since MVA" <c:if test="${duties.sincemva9=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing9" value="Ongoing" <c:if test="${duties.ongoing9=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="sitting2" value="Sitting" <c:if test="${duties.sitting2=='Sitting'}"><c:out value="Checked"/></c:if>> </td>
 <td>Sitting</td> 
 <td><input type="checkbox" name="incresedpain10" value="Increased pain" <c:if test="${duties.incresedpain10 =='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement10" value="Restricted Movement" <c:if test="${duties.restrictedmovement10=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness10" value="Weekness" <c:if test="${duties.weekness10=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva10" value="Since MVA" <c:if test="${duties.sincemva10=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing10" value="Ongoing" <c:if test="${duties.ongoing10=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="walking2" value="Walking" <c:if test="${duties.walking2=='Walking'}"><c:out value="Checked"/></c:if>> </td>
 <td>Walking</td> 
 <td><input type="checkbox" name="incresedpain11" value="Increased pain" <c:if test="${duties.incresedpain11=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement11" value="Restricted Movement" <c:if test="${duties.restrictedmovement11=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness11" value="Weekness" <c:if test="${duties.weekness11=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva11" value="Since MVA" <c:if test="${duties.sincemva11=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing11" value="Ongoing" <c:if test="${duties.ongoing11=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="computerduties2" value="Computerduties" <c:if test="${duties.computerduties2=='Computerduties'}"><c:out value="Checked"/></c:if>> </td>
 <td>Computerduties</td> 
 <td><input type="checkbox" name="incresedpain12" value="Increased pain" <c:if test="${duties.incresedpain12=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement12" value="Restricted Movement" <c:if test="${duties.restrictedmovement12=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness12" value="Fatigue" <c:if test="${duties.weekness12=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva12" value="Since MVA" <c:if test="${duties.sincemva12=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing12" value="Ongoing" <c:if test="${duties.ongoing12=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="studying" value="Studying" <c:if test="${duties.studying=='Studying'}"><c:out value="Checked"/></c:if>> </td>
 <td>Studying</td> 
 <td><input type="checkbox" name="incresedpainstudy" value="Increased pain" <c:if test="${duties.incresedpainstudy=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementstudy" value="Restricted Movement" <c:if test="${duties.restrictedmovementstudy=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weeknessstudy" value="Fatigue" <c:if test="${duties.weeknessstudy=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemvastudy" value="Since MVA" <c:if test="${duties.sincemvastudy=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoingstudy" value="Ongoing" <c:if test="${duties.ongoingstudy=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="concentrating" value="Concentrating" <c:if test="${duties.concentrating=='Concentrating'}"><c:out value="Checked"/></c:if>> </td>
 <td>Concentrating</td> 
 <td><input type="checkbox" name="incresedpainconcentrate" value="Increased pain" <c:if test="${duties.incresedpainconcentrate=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovementconcentrate" value="Restricted Movement" <c:if test="${duties.restrictedmovementconcentrate=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weeknessconcentrate" value="Fatigue" <c:if test="${duties.weeknessconcentrate=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemvaconcentrate" value="Since MVA" <c:if test="${duties.sincemvaconcentrate=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoingconcentrate" value="Ongoing" <c:if test="${duties.ongoingconcentrate=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other3" value="${duties.other3 }"></td> 
 <td><input type="checkbox" name="incresedpain13" value="Increased pain" <c:if test="${duties.incresedpain13=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement13" value="Restricted Movement" <c:if test="${duties.restrictedmovement13=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness13" value="Weekness" <c:if test="${duties.weekness13=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva13" value="Since MVA" <c:if test="${duties.sincemva13=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing13" value="Ongoing" <c:if test="${duties.ongoing13=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other4" value="${duties.other4 }"></td> 
 <td><input type="checkbox" name="incresedpain14" value="Increased pain" <c:if test="${duties.incresedpain14=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement14" value="Restricted Movement" <c:if test="${duties.restrictedmovement14=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness14" value="Weekness" <c:if test="${duties.weekness14=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva14" value="Since MVA" <c:if test="${duties.sincemva14=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing14" value="Ongoing" <c:if test="${duties.ongoing14=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Domestic Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="vacumming" value="Vacumming" <c:if test="${duties.vacumming=='Vacumming'}"><c:out value="Checked"/></c:if>> </td>
 <td>Vacumming</td> 
 <td><input type="checkbox" name="incresedpain15" value="Increased pain" <c:if test="${duties.incresedpain15=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement15" value="Restricted Movement" <c:if test="${duties.restrictedmovement15=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness15" value="Fatigue" <c:if test="${duties.weekness15=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva15" value="Since MVA" <c:if test="${duties.sincemva15=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing15" value="Ongoing" <c:if test="${duties.ongoing15=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingcareofkids" value="Taking Care of Kids" <c:if test="${duties.takingcareofkids=='Taking Care of kids'}"><c:out value="Checked"/></c:if>> </td>
 <td>Taking Care Of Kids</td> 
 <td><input type="checkbox" name="incresedpain16" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain16=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement16" value="Restricted Movement" <c:if test="${duties.restrictedmovement15=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness16" value="Fatigue" <c:if test="${duties.weekness16=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva16" value="Since MVA" <c:if test="${duties.sincemva16=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing16" value="Ongoing" <c:if test="${duties.ongoing16=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="cleaning" value="Cleaning" <c:if test="${duties.cleaning=='Cleaning'}"><c:out value="Checked"/></c:if>> </td>
 <td>Cleaning</td> 
 <td><input type="checkbox" name="incresedpain17" value="Increased pain" <c:if test="${duties.incresedpain17=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement17" value="Restricted Movement" <c:if test="${duties.restrictedmovement17=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness17" value="Fatigue" <c:if test="${duties.weekness17=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva17" value="Since MVA" <c:if test="${duties.sincemva17=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing17" value="Ongoing" <c:if test="${duties.ongoing17=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="preparingmeals" value="Preparing Meals" <c:if test="${duties.preparingmeals=='Preparing Meals'}"><c:out value="Checked"/></c:if>> </td>
 <td>Preparing Meals</td> 
 <td><input type="checkbox" name="incresedpain18" value="Increased pain" <c:if test="${duties.incresedpain18=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement18" value="Restricted Movement" <c:if test="${duties.restrictedmovement18=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness18" value="Fatigue" <c:if test="${duties.weekness18=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva18" value="Since MVA" <c:if test="${duties.sincemva18=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing18" value="Ongoing" <c:if test="${duties.ongoing18=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other5" value="${duties.other5 }"></td> 
 <td><input type="checkbox" name="incresedpain20" value="Increased Pain/Anxiety" <c:if test="${duties.incresedpain20=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement20" value="Restricted Movement" <c:if test="${duties.restrictedmovement20=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness20" value="Fatigue" <c:if test="${duties.weekness20=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva20" value="Since MVA" <c:if test="${duties.sincemva20=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing20" value="Ongoing" <c:if test="${duties.ongoing20=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other6" value="${duties.other6 }"></td> 
 <td><input type="checkbox" name="incresedpain21" value="Increased Pain/Anxiety" <c:if test="${duties.incresedpain21=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement21" value="Restricted Movement" <c:if test="${duties.restrictedmovement21=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness21" value="Fatigue" <c:if test="${duties.weekness21=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva21" value="Since MVA" <c:if test="${duties.sincemva21=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing21" value="Ongoing" <c:if test="${duties.ongoing21=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Household Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="yardwork" value="Yard Work" <c:if test="${duties.yardwork=='Yard Work'}"><c:out value="Checked"/></c:if>> </td>
 <td>Yard Work</td> 
 <td><input type="checkbox" name="incresedpain22" value="Increased pain" <c:if test="${duties.incresedpain22=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement22" value="Restricted Movement" <c:if test="${duties.restrictedmovement22=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness22" value="Fatigue" <c:if test="${duties.weekness22=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva22" value="Since MVA" <c:if test="${duties.sincemva22=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing22" value="Ongoing" <c:if test="${duties.ongoing22=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="transportation" value="Transportation" <c:if test="${duties.transportation=='Transportation'}"><c:out value="Checked"/></c:if>> </td>
 <td>Transportation</td> 
 <td><input type="checkbox" name="incresedpain23" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain23=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement23" value="Restricted Movement" <c:if test="${duties.restrictedmovement23=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness23" value="Fatigue" <c:if test="${duties.weekness23=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva23" value="Since MVA" <c:if test="${duties.sincemva23=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing23" value="Ongoing" <c:if test="${duties.ongoing23=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="shopping" value="Shopping" <c:if test="${duties.shopping=='Shopping'}"><c:out value="Checked"/></c:if>> </td>
 <td>Shopping</td> 
 <td><input type="checkbox" name="incresedpain24" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain24=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement24" value="Restricted Movement" <c:if test="${duties.restrictedmovement24=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness24" value="Fatigue" <c:if test="${duties.weekness24=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva24" value="Since MVA" <c:if test="${duties.sincemva24=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing24" value="Ongoing" <c:if test="${duties.ongoing24=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td><input type="checkbox" name="takingouttrash" value="Taking Out Trash" <c:if test="${duties.takingouttrash=='Taking Out Trash'}"><c:out value="Checked"/></c:if>> </td>
 <td>Taking Out Trash</td> 
 <td><input type="checkbox" name="incresedpain25" value="Increased pain" <c:if test="${duties.incresedpain25=='Incresed Pain'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement25" value="Restricted Movement" <c:if test="${duties.restrictedmovement25=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness25" value="Weekness" <c:if test="${duties.weekness25=='Weekness'}"><c:out value="Checked"/></c:if>>&nbsp;Weekness</td>
 <td><input type="checkbox" name="sincemva25" value="Since MVA" <c:if test="${duties.sincemva25=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp; <input type="checkbox" name="ongoing25" value="Ongoing" <c:if test="${duties.ongoing25=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other7" value="${dutiesunderduress.other7 }"></td> 
 <td><input type="checkbox" name="incresedpain27" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain27=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain/Anxiety &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement27" value="Restricted Movement" <c:if test="${duties.restrictedmovement27=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness27" value="Fatigue" <c:if test="${duties.weekness27=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva27" value="Since MVA" <c:if test="${duties.sincemva27=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing27" value="Ongoing" <c:if test="${duties.ongoing27=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td><input type="text" name="other8" value="${dutiesunderduress.other8 }"></td> 
 <td><input type="checkbox" name="incresedpain28" value="Increased pain/Anxiety" <c:if test="${duties.incresedpain28=='Incresed Pain/Anxiety'}"><c:out value="Checked"/></c:if>>&nbsp;Increased Pain &nbsp;&nbsp;<input type="checkbox" name="restrictedmovement28" value="Restricted Movement" <c:if test="${duties.restrictedmovement28=='Restricted Movement'}"><c:out value="Checked"/></c:if>>&nbsp;Restricted Movement &nbsp;&nbsp; <input type="checkbox" name="weekness28" value="Fatigue" <c:if test="${duties.weekness28=='Fatigue'}"><c:out value="Checked"/></c:if>>&nbsp;Fatigue</td>
 <td><input type="checkbox" name="sincemva28" value="Since MVA" <c:if test="${duties.sincemva28=='Since MVA'}"><c:out value="Checked"/></c:if>>&nbsp;Since MVA &nbsp;&nbsp;<input type="checkbox" name="ongoing28" value="Ongoing" <c:if test="${duties.ongoing28=='Ongoing'}"><c:out value="Checked"/></c:if>>&nbsp;Ongoing</td>
 </tr>
 </table>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save"></td>
<td><input type="reset" class="submit_btn" value="Cancel"></td>
</tr>
</table>
</div>
</div>
</td>
</tr>
</table>
 </c:otherwise>
 </c:choose>
 </form>
 </body>
 </html>
 
 