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
<form action="lowbackdisability" method="POST" name="lowback">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>LOW BACK DISABILITY QUESTIONNARIE(REVISED OSWESTRY)</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
       <c:forEach items="${lowbackForm.lowback}" var="lowback" varStatus="status">    
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td>${lowback.pname}</td>
<td width="600">
<td><h2>Date:</h2></td><td>${lowback.date}</td>
</tr>
</table>
<br/>

<table cellpadding="0" cellspacing="0" border="0" width="98%">
<tr>
<td>The Questionnarie has been designed to give the doctor information as to how your back pain has affected your ability to manage in everyday life.Please answer every section and mark in each section only ONE box,which applies to you.We Realize you may consider that two of the statements in any one section relates to you but please just mark the box which MOST CLOSELY describes your problem.</td>
</tr></table>
<br/>
<br/>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section1-Pain Intensity</B></td>
 <td width="50%"><B style="font-size:14px">Section6-Standing</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.tolerate}</td>
 <td width="50%">${lowback.withoutpain}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.badpain} </td>
 <td width="50%">${lowback.withpain}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.complete} </td>
 <td width="50%">${lowback.onehour}</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.moderate} </td>
 <td width="50%">${lowback.thirtyminutes}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.little} </td>
 <td width="50%">${lowback.tenminutes}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.noeffect} </td>
 <td width="50%">${lowback.atall}</td> 
 </tr>
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section2-Personal Care(Washing,Dressing,etc)</B></td>
 <td width="50%"><B style="font-size:14px">Section7-Sleeping</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.withoutcausingpain} </td>
 <td width="50%">${lowback.sleepingwell}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.extrapain} </td>
 <td width="50%">${lowback.tablets}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.slow} </td>
 <td width="50%">${lowback.sixhour}</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.personalcare} </td>
 <td width="50%">${lowback.fourhours}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.littlehelp} </td>
 <td width="50%">${lowback.twohours}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.difficulty} </td>
 <td width="50%">${lowback.atall1}</td> 
 </tr>
  
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section3-Lifting</B></td>
 <td width="50%"><B style="font-size:14px">Section8-Social Life</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.canlift} </td>
 <td width="50%">${lowback.normal}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.canliftwithpain} </td>
 <td width="50%">${lowback.normalwithpain}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.heavyweights} </td>
 <td width="50%">${lowback.significanteffect}</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.mediumweights} </td>
 <td width="50%">${lowback.restricted} </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.verylightweight} </td>
 <td width="50%">${lowback.myhome}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.carryatall} </td>
 <td width="50%">${lowback.nosociallife}</td> 
 </tr>
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section4-Walking</B></td>
 <td width="50%"><B style="font-size:14px">Section9-Traveling</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.walkingdistance} </td>
 <td width="50%">${lowback.travelwithoutpain}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.onemile} </td>
 <td width="50%">${lowback.travelwithpain}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.onehalfmile} </td>
 <td width="50%">${lowback.journey2hours}</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.onequartermile} </td>
 <td width="50%">${lowback.onehourless} </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.usingstick} </td>
 <td width="50%">${lowback.journeys30mins}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.bedtime} </td>
 <td width="50%">${lowback.todoctor}</td> 
 </tr>
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section5-Sitting</B></td>
 <td width="50%"><B style="font-size:14px">Section10-Changing degree of pain</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.cansit} </td>
 <td width="50%">${lowback.rapidlybetter}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.favoritechair} </td>
 <td width="50%">${lowback.flucutates}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.sitonehour} </td>
 <td width="50%">${lowback.slowimprovement}</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.sit30mins} </td>
 <td width="50%">${lowback.samepain} </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.sit10mins} </td>
 <td width="50%">${lowback.graduallyworsening}</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%">${lowback.allthetime} </td>
 <td width="50%">${lowback.rapidlyworsening}</td> 
 </tr>
 </table>
 <table>
 <tr>
  <td></td>
 <td width="50%">Scoring:Questions are scored on a vertical scale of 0-5.Total scores and multiply by 2 .Divide by number of sections answered multiplied by 10.A score of 22% or more is considered significant activities of daily living disability.<br/><br/>(Score &nbsp;${lowback.score}*2)&nbsp;/&nbsp;( ${lowback.section}Section *10)&nbsp;&nbsp;=&nbsp;&nbsp;${lowback.adl}&nbsp;%ADL&nbsp;${lowback.adl2}</td>
 <td width="50%">Comments:&nbsp;&nbsp;${lowback.comment}</td>
 </tr>
 </c:forEach>
 </table>
<table align="right">
<tr>
<td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewlowback'"></td>
</tr>
</table>
 </table>
</form>
</body>