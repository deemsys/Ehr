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
 <br><br>
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
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.lifting1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.lifting1}</c:otherwise>
	          
	            </c:choose> </td>
 <td>Lifting</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain}</c:otherwise>
	          
	            </c:choose>&nbsp;Increased Pain &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement1}</c:otherwise>
	          
	            </c:choose>&nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness1}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva1}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing1}</c:otherwise>
	          
	            </c:choose>&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.bending1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.bending1}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Bending</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain2}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement2}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness2}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva2}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing2}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sitting1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sitting1}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Sitting</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain3=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain3}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement3=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement3}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness3=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness3}</c:otherwise>
	          
	            </c:choose>&nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva3=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva3}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing3=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing3}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.walking1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.walking1}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Walking</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain4=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain4}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement4=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement4}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness4=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness4}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva4=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva4}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing1}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.computerduties1=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.computerduties1}</c:otherwise>
	          
	            </c:choose> </td>
 <td>Bending</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain5=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain5}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement5=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement5}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness5=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness5}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva5=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva5}</c:otherwise>
	          
	            </c:choose>&nbsp; &nbsp;&nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing5=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing5}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>
	           ${dutiesunderduressdetails.other1}</td>
	          
	           
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain6=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain6}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement6=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement6}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp; &nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness6=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness6}</c:otherwise>
	          
	            </c:choose></td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva6=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva6}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing6=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing6}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other2}
	          
	            </td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain7=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain7}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement7=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement7}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness7=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness7}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva7=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva7}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing7=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing7}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Studies/Schools</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.lifting2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.lifting2}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Lifting</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain8=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain8}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement8=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement8}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness8=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness8}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva8=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva8}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing8=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing8}</c:otherwise>
	          
	            </c:choose>&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.bending2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.bending2}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Bending</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain9=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain9}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement9=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement9}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness9=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness9}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva9=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva9}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing9=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing9}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sitting2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sitting2}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Sitting</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain10=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain10}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement10=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement10}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness10=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness10}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva10=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva10}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing10=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing10}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.walking2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.walking2}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Walking</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain11=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain11}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement11=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement11}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness11=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness11}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva11=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva11}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing11=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing11}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.computerduties2=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.computerduties2}</c:otherwise>
	          
	            </c:choose> </td>
 <td>Computerduties</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain12=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain12}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement12=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement12}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness12=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness12}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva12=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva12}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing12=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing12}</c:otherwise>
	          
	            </c:choose>&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.studying=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.studying}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Studying</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpainstudy=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpainstudy}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovementstudy=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovementstudy}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weeknessstudy=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weeknessstudy}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemvastudy=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemvastudy}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoingstudy=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoingstudy}</c:otherwise>
	          
	            </c:choose>&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.concentrating=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.concentrating}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Concentrating</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpainconcentrate=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpainconcentrate}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovementconcentrate=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovementconcentrate}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weeknessconcentrate=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weeknessconcentrate}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemvaconcentrate=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemvaconcentrate}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoingconcentrate=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoingconcentrate}</c:otherwise>
	          
	            </c:choose> </td>
 </tr>
 
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other3}</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain13=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain13}</c:otherwise>
	          
	            </c:choose>&nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement13=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement13}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness13=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness13}</c:otherwise>
	          
	            </c:choose>&nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva13=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva13}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing13=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing13}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other4}</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain14=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain14}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement14=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement14}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness14=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness14}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva14=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva14}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing14=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing14}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Domestic Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.vacumming=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.vacumming}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Vacumming</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain15=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain15}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement15=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement15}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness15=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness15}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva15=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva15}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing15=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing15}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.takingcareofkids=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.takingcareofkids}</c:otherwise>
	          
	            </c:choose> </td>
 <td>Taking Care Of Kids</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain16=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain16}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement16=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement16}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness16=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness16}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva16=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva16}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing16=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing16}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.cleaning=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.cleaning}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Cleaning</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain17=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain17}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement17=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement17}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness17=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness17}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva17=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva17}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing17=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing17}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.preparingmeals=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.preparingmeals}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Preparing Meals</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain18=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain18}</c:otherwise>
	          
	            </c:choose>&nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement18=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement18}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness18=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness18}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva18=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva18}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing18=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing18}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other5}</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain20=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain20}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement20=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement20}</c:otherwise>
	          
	            </c:choose>&nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness20=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness20}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva20=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva20}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing20=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing20}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other6}</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain21=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain21}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement21=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement21}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness21=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness21}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva21=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva21}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing21=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing21}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row2"> 
 <td><B style="font-size:14px">N/A</B></td>
 <td><B style="font-size:14px">Household Duties</B></td>
 <td><B style="font-size:14px">Reason for the difficulty</B></td> 
 <td><B style="font-size:14px">Duration</B></td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.yardwork=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.yardwork}</c:otherwise>
	          
	            </c:choose> </td>
 <td>Yard Work</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain22=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain22}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement22=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement22}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness22=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness22}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva22=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva22}</c:otherwise>
	          
	            </c:choose>&nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing22=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing22}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.transportation=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.transportation}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Transportation</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain23=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain23}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement23=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement23}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness23=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness23}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva23=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva23}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing23=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing23}</c:otherwise>
	          
	            </c:choose> </td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.shopping=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.shopping}</c:otherwise>
	          
	            </c:choose> </td>
 <td>Shopping</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain24=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain24}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement24=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement24}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness24=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness24}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva24=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva24}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing24=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing24}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.takingouttrash=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.takingouttrash}</c:otherwise>
	          
	            </c:choose>  </td>
 <td>Taking Out Trash</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain25=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain25}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement25=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement25}</c:otherwise>
	          
	            </c:choose>&nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness25=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness25}</c:otherwise>
	          
	            </c:choose>  &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva25=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva25}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing25=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing25}</c:otherwise>
	          
	            </c:choose>&nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other7}</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain27=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain27}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement27=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement27}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness27=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness27}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva27=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva27}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing27=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing27}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 </tr>
 <tr class="row1">  
 <td>Other</td>
 <td>${dutiesunderduressdetails.other8}</td> 
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.incresedpain28=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.incresedpain28}</c:otherwise>
	          
	            </c:choose> &nbsp;&nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.restrictedmovement28=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.restrictedmovement28}</c:otherwise>
	          
	            </c:choose>&nbsp;&nbsp;&nbsp; <c:choose>
	            <c:when test="${dutiesunderduressdetails.weekness28=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.weekness28}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
 <td><c:choose>
	            <c:when test="${dutiesunderduressdetails.sincemva28=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.sincemva28}</c:otherwise>
	          
	            </c:choose> &nbsp; &nbsp;&nbsp;<c:choose>
	            <c:when test="${dutiesunderduressdetails.ongoing28=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${dutiesunderduressdetails.ongoing28}</c:otherwise>
	          
	            </c:choose> &nbsp;</td>
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