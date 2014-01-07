<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/jquery.js"></script>
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
   
   <script type="text/javascript">
 function percentage()
 {
	 alert("hi");
	 var score=document.getElementById("score").value;
	 var section=document.getElementById("section").value;
	 var div=(score*2)/(section*10);
	 var adl=div/100;
	 alert("div"+div);
	 document.getElementById("adl").value=adl;
 }
 
 
 </script>
 <script type="text/javascript">
 function doAjaxPost() {
	 
	 document.getElementById("page").style.display="block";
	 var section1=0;
	 var tolerate=0;
	 if($("input[type='radio'].tolerate").is(':checked')) {
		 tolerate = $("input[type='radio'].tolerate:checked").val();
		 section1=1;
		}
	// var painintensity=$('input[name=painintensity]:radio').click(function() {var value = $(this).val();});
	 //var painintensity = $('#painintensity').val();
	 //alert(painintensity);
	 var section2=0;
	 var withoutpain = 0;
	 if($("input[type='radio'].withoutpain").is(':checked')) {
		 withoutpain = $("input[type='radio'].withoutpain:checked").val();	
		 section2=1;
	}
	 var section3=0;
	 var withoutcausingpain =0;
	 if($("input[type='radio'].withoutcausingpain").is(':checked')) {
		 withoutcausingpain = $("input[type='radio'].withoutcausingpain:checked").val();		    
	     section3=1;
	 }
	 var section4=0;
	 var sleepingwell =0;
	 if($("input[type='radio'].sleepingwell").is(':checked')) {
		 sleepingwell = $("input[type='radio'].sleepingwell:checked").val();		    
	     section4=1;
	 }
	 var section5=0;
	 var canlift = 0;
	 if($("input[type='radio'].canlift").is(':checked')) {
		 canlift = $("input[type='radio'].canlift:checked").val();		    
	     section5=1;
	 }
	 var section6=0;
	 var normal = 0;
	 if($("input[type='radio'].normal").is(':checked')) {
		 normal  = $("input[type='radio'].normal:checked").val();		    
	     section6=1;
	 }
	 var section7=0;
	 var walkingdistance = 0;
	 if($("input[type='radio'].walkingdistance").is(':checked')) {
		 sleeping = $("input[type='radio'].sleeping:checked").val();		    
	     section7=1;
	 }
	 var section8=0;
	 var withoutextrapain = 0;
	 if($("input[type='radio'].withoutextrapain").is(':checked')) {
		 withoutextrapain = $("input[type='radio'].withoutextrapain:checked").val();		    
	     section8=1;
	 }
	 var section9=0;
	 var cansit = 0;
	 if($("input[type='radio'].cansit").is(':checked')) {
		 cansit = $("input[type='radio'].cansit:checked").val();
		 section9=1;
	}
	 var section10=0;
	 var rapidlybetter = 0;
	 if($("input[type='radio'].rapidlybetter").is(':checked')) {
		 rapidlybetter = $("input[type='radio'].rapidlybetter:checked").val();		    
	     section10=1;
	 }
	 var total=parseInt(tolerate)+parseInt(withoutpain)+parseInt(withoutcausingpain)+parseInt(sleepingwell)+parseInt(canlift)+parseInt(normal)+parseInt(walkingdistance)+parseInt(withoutextrapain)+parseInt(cansit)+parseInt(rapidlybetter);
	 document.getElementById("score").value=total;
	 var sectiontotal=parseInt(section1)+parseInt(section2)+parseInt(section3)+parseInt(section4)+parseInt(section5)+parseInt(section6)+parseInt(section7)+parseInt(section8)+parseInt(section9)+parseInt(section10);
	 document.getElementById("section").value=sectiontotal;		   
 }
		  
 </script>
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
 <td width="50%"><c:if test= "${lowback.tolerate== '0'}"> <c:out value="I Can tolerate the pain without having to use painkillers"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.tolerate== '1'}"> <c:out value="The pain is bad but I manage without using painkillers"></c:out></c:if> &nbsp;&nbsp;
  <c:if test= "${lowback.tolerate== '2'}"> <c:out value="Painkillers give complete relief from pain"></c:out></c:if> &nbsp;&nbsp;
  <c:if test= "${lowback.tolerate== '3'}"> <c:out value="Painkillers give moderate relief from pain"></c:out></c:if> &nbsp;&nbsp; 
  <c:if test= "${lowback.tolerate== '4'}"> <c:out value="Painkillers give very little relief from pain"></c:out></c:if> &nbsp;&nbsp; 
  <c:if test= "${lowback.tolerate== '5'}"> <c:out value="Painkillers have no effect on the pain and I do not use them"></c:out></c:if> &nbsp;&nbsp; </td> 
 
 <td width="50%"><c:if test= "${lowback.withoutpain== '0'}"> <c:out value="I Can stand as long as I want but it gives extrapain"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.withoutpain== '1'}"> <c:out value="I Can stand as long as I want without extrapain"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.withoutpain== '2'}"> <c:out value="Pain prevents me from standing more than 1 hour"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.withoutpain== '3'}"> <c:out value="Pain prevents me from standing more than 30 minutes"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.withoutpain== '4'}"> <c:out value="Pain prevents me from standing more than 10 minutes"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.withoutpain== '5'}"> <c:out value="Pain prevents me from standing at all"></c:out></c:if> &nbsp;&nbsp;</td>
 <td></td>
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
 <td width="50%"><c:if test= "${lowback.withoutcausingpain== '0'}"> <c:out value="I can look after myself normally without causing extra pain"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.withoutcausingpain== '1'}"> <c:out value="I can look after myself normally but it causes extra pain"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.withoutcausingpain== '2'}"> <c:out value="It is painful to look after myself and I am slow and careful"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.withoutcausingpain== '3'}"> <c:out value="I need some help but manage  most of my personal care"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.withoutcausingpain== '4'}"> <c:out value="I need help every day in most aspects of self care"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.withoutcausingpain== '5'}"> <c:out value="I do not get dressed;I wash without difficulty and stay in bed"></c:out></c:if> &nbsp;&nbsp; </td> 
 
 <td width="50%"><c:if test= "${lowback.sleepingwell== '0'}"> <c:out value="I Can stand as long as I want without extrapain"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.sleepingwell== '1'}"> <c:out value="I Can sleep well only by using tablets"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.sleepingwell== '2'}"> <c:out value="Even when I take tablets I have less than 6 hours sleep"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.sleepingwell== '3'}"> <c:out value="Even when I take tablets I have less than 4 hours sleep"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.sleepingwell== '4'}"> <c:out value="Even when I take tablets I have less than 2 hours sleep"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.sleepingwell== '5'}"> <c:out value="Pain prevents me from sleeping at all"></c:out></c:if> &nbsp;&nbsp;</td>
 <td></td>
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
 <td width="50%"><c:if test= "${lowback.canlift== '0'}"> <c:out value="I can lift heavy weights without extra pain"></c:out></c:if> &nbsp;&nbsp; 
  <c:if test= "${lowback.canlift== '1'}"> <c:out value="I can lift heavy weights  but it gives extra pain"></c:out></c:if> &nbsp;&nbsp; 
  <c:if test= "${lowback.canlift== '2'}"> <c:out value="Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positions for example: On a table"></c:out></c:if> &nbsp;&nbsp; 
  <c:if test= "${lowback.canlift== '3'}"> <c:out value="Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.canlift== '4'}"> <c:out value="I can lift very light weights"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.canlift== '5'}"> <c:out value="I cannot lift or carry anything at all"></c:out></c:if> &nbsp;&nbsp; </td> 
 
 <td width="50%"><c:if test= "${lowback.normal== '0'}"> <c:out value="My social life is normal and gives me no extra pain"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.normal== '1'}"> <c:out value="I Can sleep well only by using tablets"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.normal== '2'}"> <c:out value="Pain has no significant effect on my social life apart from limiting my more energetic interest,e.g. dancing"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.normal== '3'}"> <c:out value="Pain has restricted my social life and i do not go out as often"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.normal== '4'}"> <c:out value="Pain has restricted my social life to my home"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.normal== '5'}"> <c:out value="I have no social life because of pain"></c:out></c:if> &nbsp;&nbsp;</td>
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
 <td width="50%"><c:if test= "${lowback.walkingdistance== '0'}"> <c:out value="Pain does not prevent me from walking any distance"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.walkingdistance== '1'}"> <c:out value="Pain prevents me from walking more than one mile"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.walkingdistance== '2'}"> <c:out value="Pain prevents me from walking more than one-half mile"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.walkingdistance== '3'}"> <c:out value="Pain prevents me from walking more than one-quarter mile"></c:out></c:if> &nbsp;&nbsp; 
<c:if test= "${lowback.walkingdistance== '4'}"> <c:out value="I can only using stick or crutches"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.walkingdistance== '5'}"> <c:out value="I am in bed most of the time and have to crawl to the toilet"></c:out></c:if> &nbsp;&nbsp; </td> 
 
 <td width="50%"><c:if test= "${lowback.withoutextrapain== '0'}"> <c:out value="I can travel anywhere without extra pain"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.withoutextrapain== '1'}"> <c:out value="I can travel anywhere but it gives me extra pain"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.withoutextrapain== '2'}"> <c:out value="Pain is bad but I manage journeys over 2 hours"></c:out></c:if> &nbsp;&nbsp;
  <c:if test= "${lowback.withoutextrapain== '3'}"> <c:out value="Pain is bad but I manage journeys less than one hours"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.withoutextrapain== '4'}"> <c:out value="Pain restrict me to short necessary journeys undo 30 minutes"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.withoutextrapain== '5'}"> <c:out value="Pain prevents me from traveling except to the doctor or hospital"></c:out></c:if> &nbsp;&nbsp;</td>
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
 <td width="50%"><c:if test= "${lowback.cansit== '0'}"> <c:out value="I can sit in a chair as long as I like"></c:out></c:if> &nbsp;&nbsp;
  <c:if test= "${lowback.cansit== '1'}"> <c:out value="Pain prevents me from walking more than one mile"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.cansit== '2'}"> <c:out value="Pain prevents me from sitting more than one hour"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.cansit== '3'}"> <c:out value="Pain prevents me from sitting more than 30 minutes"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.cansit== '4'}"> <c:out value="Pain prevents me from sitting more than 30 minutes"></c:out></c:if> &nbsp;&nbsp; 
<c:if test= "${lowback.cansit== '5'}"> <c:out value="Pain prevents me from sitting all most all the time"></c:out></c:if> &nbsp;&nbsp;</td> 
 
 <td width="50%"><c:if test= "${lowback.rapidlybetter== '0'}"> <c:out value="My pain is rapidly getting better"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.rapidlybetter== '1'}"> <c:out value="My pain flucutates but overall is definitely getting better"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.rapidlybetter== '2'}"> <c:out value="My pain seems to be getting better but improvement is slow at the present"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.rapidlybetter== '3'}"> <c:out value="Pain is neither getting better nor worse"></c:out></c:if> &nbsp;&nbsp; 
 <c:if test= "${lowback.rapidlybetter== '4'}"> <c:out value="My pain is gradually worsening"></c:out></c:if> &nbsp;&nbsp;
 <c:if test= "${lowback.rapidlybetter== '5'}"> <c:out value="My pain is rapidly worsening"></c:out></c:if> &nbsp;&nbsp;</td>
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