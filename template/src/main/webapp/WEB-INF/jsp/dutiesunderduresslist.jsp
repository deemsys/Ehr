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
         <c:forEach items="${dutiesduressForm.dutiesunderduressdetails}" var="dutiesunderduressdetails" varStatus="status">  
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td>${dutiesunderduressdetails.pname}</td>
<td width="600">
<td><h2>Date:</h2></td><td>${dutiesunderduressdetails.date}</td>
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
 <td> ${dutiesunderduressdetails.jobdescription}</td></tr>
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
 <td>${dutiesunderduressdetails.lifting1} </td>
 <td>Lifting</td> 
 <td>${dutiesunderduressdetails.incresedpain1}&nbsp;Increased Pain &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement1}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness1}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva1}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing1}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.bending1} </td>
 <td>Bending</td> 
 <td>${dutiesunderduressdetails.incresedpain2}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement2}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.weekness2} &nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva2}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing2}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.sitting1} </td>
 <td>Sitting</td> 
 <td>${dutiesunderduressdetails.incresedpain3}&nbsp;&nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement3}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness3}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva3}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing3}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.walking1} </td>
 <td>Walking</td> 
 <td>${dutiesunderduressdetails.incresedpain4}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement4}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness4}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva4}&nbsp;&nbsp;&nbsp; ${dutiesunderduressdetails.ongoing1}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.computerduties1} </td>
 <td>Bending</td> 
 <td>${dutiesunderduressdetails.incresedpain5}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement5}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness5}&nbsp;</td>
 <td><input type="checkbox" name="sincemva5" value="Since MVA">&nbsp;Since MVA &nbsp;&nbsp;&nbsp;Ongoing</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other1}</td> 
 <td>${dutiesunderduressdetails.incresedpain6}&nbsp; &nbsp;&nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement6} &nbsp;&nbsp; &nbsp;${dutiesunderduressdetails.weekness6}</td>
 <td>${dutiesunderduressdetails.sincemva6}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing6}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other2}</td> 
 <td>${dutiesunderduressdetails.incresedpain7}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement7}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness7}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva7}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing7}&nbsp;</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Studies/Schools</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.lifting2} </td>
 <td>Lifting</td> 
 <td>${dutiesunderduressdetails.incresedpain8}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement8}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness8}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva8}&nbsp;&nbsp;&nbsp;${dutiesunderduressdetails.ongoing8}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.bending2} </td>
 <td>Bending</td> 
 <td>${dutiesunderduressdetails.incresedpain9}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement9}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness9}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva9}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing9}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.sitting2} </td>
 <td>Sitting</td> 
 <td>${dutiesunderduressdetails.incresedpain10}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement10}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness10}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva10}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing10}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.walking2} </td>
 <td>Walking</td> 
 <td>${dutiesunderduressdetails.incresedpain11}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement11}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness11}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva11}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.ongoing11}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.computerduties2} </td>
 <td>Computerduties</td> 
 <td>${dutiesunderduressdetails.incresedpain12}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement12}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.weekness12} &nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva12}&nbsp;Since MVA &nbsp;&nbsp;${dutiesunderduressdetails.ongoing12}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.studying} </td>
 <td>Studying</td> 
 <td>${dutiesunderduressdetails.incresedpainstudy}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovementstudy}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.weeknessstudy} &nbsp;</td>
 <td>${dutiesunderduressdetails.sincemvastudy}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoingstudy}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.concentrating} </td>
 <td>Concentrating</td> 
 <td>${dutiesunderduressdetails.incresedpainconcentrate}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovementconcentrate}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weeknessconcentrate}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemvaconcentrate}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoingconcentrate}</td>
 </tr>
 
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other3}</td> 
 <td>${dutiesunderduressdetails.incresedpain13}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement13}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.weekness13}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva13}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing13}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other4}</td> 
 <td>${dutiesunderduressdetails.incresedpain14}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement14}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness14}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva14}&nbsp;Since MVA &nbsp;&nbsp;${dutiesunderduressdetails.ongoing14}&nbsp;</td>
 </tr>
 
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Domestic Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.vacumming} </td>
 <td>Vacumming</td> 
 <td>${dutiesunderduressdetails.incresedpain15}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement15}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness15}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva15}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing15}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.takingcareofkids}</td>
 <td>Taking Care Of Kids</td> 
 <td>${dutiesunderduressdetails.incresedpain16}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement16}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness16}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva16}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing16}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.cleaning} </td>
 <td>Cleaning</td> 
 <td>${dutiesunderduressdetails.incresedpain17}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement17}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness17}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva17}&nbsp;&nbsp;&nbsp;${dutiesunderduressdetails.ongoing17}&nbsp;/td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.preparingmeals} </td>
 <td>Preparing Meals</td> 
 <td>${dutiesunderduressdetails.incresedpain18}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement18}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness18}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva18}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.ongoing18}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other5}</td> 
 <td>${dutiesunderduressdetails.incresedpain20} &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement20}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness20}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva20}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing20}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other6}</td> 
 <td>${dutiesunderduressdetails.incresedpain21}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement21}&nbsp;&nbsp;&nbsp; ${dutiesunderduressdetails.weekness21}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva21}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing21}&nbsp;</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Household Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.yardwork} </td>
 <td>Yard Work</td> 
 <td>${dutiesunderduressdetails.incresedpain22}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement22}&nbsp;&nbsp;&nbsp; ${dutiesunderduressdetails.weekness22}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva22}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing22}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.transportation} </td>
 <td>Transportation</td> 
 <td>${dutiesunderduressdetails.incresedpain23}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement23}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.weekness23} &nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva23}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing23}</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.shopping} </td>
 <td>Shopping</td> 
 <td>${dutiesunderduressdetails.incresedpain24}&nbsp;&nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement24}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.weekness24} &nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva24}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing24}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>${dutiesunderduressdetails.takingouttrash} </td>
 <td>Taking Out Trash</td> 
 <td>${dutiesunderduressdetails.incresedpain25}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement25}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness25}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva25}&nbsp;&nbsp;&nbsp; ${dutiesunderduressdetails.ongoing25}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other7}</td> 
 <td>${dutiesunderduressdetails.incresedpain27}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement27}&nbsp; &nbsp;&nbsp; ${dutiesunderduressdetails.weekness27}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva27}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing27}&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other8}</td> 
 <td>${dutiesunderduressdetails.incresedpain28}&nbsp;&nbsp;&nbsp;${dutiesunderduressdetails.restrictedmovement28}&nbsp;&nbsp;&nbsp; ${dutiesunderduressdetails.weekness28}&nbsp;</td>
 <td>${dutiesunderduressdetails.sincemva28}&nbsp; &nbsp;&nbsp;${dutiesunderduressdetails.ongoing28}&nbsp;</td>
 </tr>
 </table>
 </c:forEach>
 <table align="right">
<tr>
<td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewduties'"></td>
</tr>
</table>
 </table>
</form>
</body>