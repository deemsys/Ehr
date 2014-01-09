<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<form action="dutiesunderduress" method="POST" name="dutiesunder">
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
<td><h2>Patient Name:</h2></td><td><input type="text"  name="pname" /></td>
<td width="600">
<td><h2>Date:</h2></td><td><input type="text"  id="datepicker" name="date" /></td>
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
 </table>
</form>
</body>