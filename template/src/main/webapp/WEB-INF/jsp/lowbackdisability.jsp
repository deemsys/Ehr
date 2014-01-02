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
           
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td><input type="text"  name="pname" /></td>
<td width="600">
<td><h2>Date:</h2></td><td><input type="text"  id="datepicker" name="date" /></td>
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
 <td width="50%"><input type="checkbox" name="tolerate" value="I Can tolerate the pain">&nbsp;&nbsp;I Can tolerate the pain without having to use painkillers </td>
 <td width="50%"><input type="checkbox" name="withoutpain" value="I Can stand as long as I want ">&nbsp;&nbsp;I Can stand as long as I want without extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="badpain" value="The pain is bad but I manage without using painkillers">&nbsp;&nbsp;The pain is bad but I manage without using painkillers </td>
 <td width="50%"><input type="checkbox" name="withpain" value="I Can stand as long as I want but it gives extra pain">&nbsp;&nbsp;I Can stand as long as I want but it gives extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="complete" value="Painkillers give complete relief from pain">&nbsp;&nbsp;Painkillers give complete relief from pain </td>
 <td width="50%"><input type="checkbox" name="onehour" value="Pain prevents me from standing more than 1 hour">&nbsp;&nbsp;Pain prevents me from standing more than 1 hour</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="moderate" value="Painkillers give moderate relief from pain">&nbsp;&nbsp;Painkillers give moderate relief from pain </td>
 <td width="50%"><input type="checkbox" name="thirtyminutes" value="Pain prevents me from standing more than 30 minutes">&nbsp;&nbsp;Pain prevents me from standing more than 30 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="little" value="Painkillers give very little relief from pain">&nbsp;&nbsp;Painkillers give very little relief from pain </td>
 <td width="50%"><input type="checkbox" name="tenminutes" value="Pain prevents me from standing more than 10 minutes">&nbsp;&nbsp;Pain prevents me from standing more than 10 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="noeffect" value="Painkillers have no effect on the pain and I do not use them">&nbsp;&nbsp;Painkillers have no effect on the pain and I do not use them </td>
 <td width="50%"><input type="checkbox" name="atall" value="Pain prevents me from standing at all">&nbsp;&nbsp;Pain prevents me from standing at all</td> 
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
 <td width="50%"><input type="checkbox" name="withoutcausingpain" value="I can look after myself normally without causing extra pain">&nbsp;&nbsp;I can look after myself normally without causing extra pain </td>
 <td width="50%"><input type="checkbox" name="sleepingwell" value="pain does not prevent me from sleeping well">&nbsp;&nbsp;I Can stand as long as I want without extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="extrapain" value="I can look after myself normally but it causes extra pain">&nbsp;&nbsp;I can look after myself normally but it causes extra pain </td>
 <td width="50%"><input type="checkbox" name="tablets" value="I Can sleep well only by using tablets">&nbsp;&nbsp;I Can sleep well only by using tablets</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="slow" value="It is painful to look after myself and I am slow and careful">&nbsp;&nbsp;It is painful to look after myself and I am slow and careful </td>
 <td width="50%"><input type="checkbox" name="sixhour" value="Even when I take tablets I have less than 6 hours sleep">&nbsp;&nbsp;Even when I take tablets I have less than 6 hours sleep</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="personalcare" value="I need some help but manage  most of my personal care">&nbsp;&nbsp;I need some help but manage  most of my personal care </td>
 <td width="50%"><input type="checkbox" name="fourhours" value="Even when I take tablets I have less than 4 hours sleep">&nbsp;&nbsp;Even when I take tablets I have less than 4 hours sleep</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="littlehelp" value="I need help every day in most aspects of self care">&nbsp;&nbsp;I need help every day in most aspects of self care </td>
 <td width="50%"><input type="checkbox" name="twohours" value="Even when I take tablets I have less than 2 hours sleep">&nbsp;&nbsp;Even when I take tablets I have less than 2 hours sleep</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="difficulty" value="I do not get dressed;I wash without difficulty and stay in bed">&nbsp;&nbsp;I do not get dressed;I wash without difficulty and stay in bed </td>
 <td width="50%"><input type="checkbox" name="atall1" value="Pain prevents me from sleeping at all">&nbsp;&nbsp;Pain prevents me from sleeping at all</td> 
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
 <td width="50%"><input type="checkbox" name="canlift" value="I can lift heavy weights without extra pain">&nbsp;&nbsp;I can lift heavy weights without extra pain </td>
 <td width="50%"><input type="checkbox" name="normal" value="My social life is normal and gives me no extra pain">&nbsp;&nbsp;My social life is normal and gives me no extra pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="canliftwithpain" value="I can lift heavy weights  but it gives extra pain">&nbsp;&nbsp;I can lift heavy weights  but it gives extra pain </td>
 <td width="50%"><input type="checkbox" name="normalwithpain" value="My social life is normal but increases the degree of pain">&nbsp;&nbsp;I Can sleep well only by using tablets</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="heavyweights" value="Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positions for example: On a table">&nbsp;&nbsp;Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positions for example: On a table </td>
 <td width="50%"><input type="checkbox" name="significanteffect" value="Pain has no significant effect on my social life apart from limiting my more energetic interest,e.g. dancing">&nbsp;&nbsp;Pain has no significant effect on my social life apart from limiting my more energetic interest,e.g. dancing</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="mediumweights" value="Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned">&nbsp;&nbsp;Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned </td>
 <td width="50%"><input type="checkbox" name="restricted" value="Pain has restricted my social life and i do not go out as often ">&nbsp;&nbsp;Pain has restricted my social life and i do not go out as often </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="verylightweight" value="I can lift very light weights">&nbsp;&nbsp;I can lift very light weights </td>
 <td width="50%"><input type="checkbox" name="myhome" value="Pain has restricted my social life to my home">&nbsp;&nbsp;Pain has restricted my social life to my home</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="carryatall" value="I cannot lift or carry anything at all">&nbsp;&nbsp;I cannot lift or carry anything at all </td>
 <td width="50%"><input type="checkbox" name="nosociallife" value="I have no social life because of pain">&nbsp;&nbsp;I have no social life because of pain</td> 
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
 <td width="50%"><input type="checkbox" name="walkingdistance" value="Pain does not prevent me from walking any distance">&nbsp;&nbsp;Pain does not prevent me from walking any distance </td>
 <td width="50%"><input type="checkbox" name="travelwithoutpain" value="I can travel anywhere without extra pain">&nbsp;&nbsp;I can travel anywhere without extra pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="onemile" value="Pain prevents me from walking more than one mile">&nbsp;&nbsp;Pain prevents me from walking more than one mile </td>
 <td width="50%"><input type="checkbox" name="travelwithpain" value="I can travel anywhere but it gives me extra pain">&nbsp;&nbsp;Pain prevents me from walking more than one mile</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="onehalfmile" value="Pain prevents me from walking more than one-half mile">&nbsp;&nbsp;Pain prevents me from walking more than one-half mile </td>
 <td width="50%"><input type="checkbox" name="journeys2hours" value="Pain is bad but I manage journeys over 2 hours">&nbsp;&nbsp;Pain is bad but I manage journeys over 2 hours</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="onequartermile" value="Pain prevents me from walking more than one-quarter mile">&nbsp;&nbsp;Pain prevents me from walking more than one-quarter mile </td>
 <td width="50%"><input type="checkbox" name="onehourless" value="Pain is bad but I manage journeys less than one hour ">&nbsp;&nbsp;Pain is bad but I manage journeys less than one hours </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="usingstick" value="I can only using stick or crutches">&nbsp;&nbsp;I can only using stick or crutches </td>
 <td width="50%"><input type="checkbox" name="journeys30mins" value="Pain restrict me to short necessary journeys undo 30 minutes">&nbsp;&nbsp;Pain restrict me to short necessary journeys undo 30 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="bedtime" value="I am in bed most of the time and have to crawl to the toilet">&nbsp;&nbsp;I am in bed most of the time and have to crawl to the toilet </td>
 <td width="50%"><input type="checkbox" name="todoctor" value="Pain prevents me from traveling except to the doctor or hospital">&nbsp;&nbsp;Pain prevents me from traveling except to the doctor or hospital</td> 
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
 <td width="50%"><input type="checkbox" name="cansit" value="I can sit in a chair as long as I like">&nbsp;&nbsp;I can sit in a chair as long as I like </td>
 <td width="50%"><input type="checkbox" name="rapidlybetter" value="My pain is rapidly getting better">&nbsp;&nbsp;My pain is rapidly getting better</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="favoritechair" value="I can only sit in my favorite chair as long as I like">&nbsp;&nbsp;Pain prevents me from walking more than one mile </td>
 <td width="50%"><input type="checkbox" name="flucutates" value="My pain flucutates but overall is definitely getting better ">&nbsp;&nbsp;My pain flucutates but overall is definitely getting better</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="sitonehour" value="Pain prevents me from sitting more than one hour">&nbsp;&nbsp;Pain prevents me from sitting more than one hour </td>
 <td width="50%"><input type="checkbox" name="slowimprovement" value="My pain seems to be getting better but improvement is slow at the present">&nbsp;&nbsp;My pain seems to be getting better but improvement is slow at the present</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="sit30mins" value="Pain prevents me from sitting more than 30 minutes">&nbsp;&nbsp;Pain prevents me from sitting more than 30 minutes </td>
 <td width="50%"><input type="checkbox" name="samepain" value="Pain is neither getting better nor worse ">&nbsp;&nbsp;Pain is neither getting better nor worse </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="sit10mins" value="Pain prevents me from sitting more than 10 minutes">&nbsp;&nbsp;Pain prevents me from sitting more than 30 minutes </td>
 <td width="50%"><input type="checkbox" name="graduallyworsening" value="My pain is gradually worsening">&nbsp;&nbsp;My pain is gradually worsening</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="allthetime" value="Pain prevents me from sitting all most all the time">&nbsp;&nbsp;Pain prevents me from sitting all most all the time </td>
 <td width="50%"><input type="checkbox" name="rapidlyworsening" value="My pain is rapidly worsening">&nbsp;&nbsp;My pain is rapidly worsening</td> 
 </tr>
 </table>
 <table>
 <tr>
  <td></td>
 <td width="50%">Scoring:Questions are scored on a vertical scale of 0-5.Total scores and multiply by 2 .Divide by number of sections answered multiplied by 10.A score of 22% or more is considered significant activities of daily living disability.<br/><br/>(Score &nbsp;<input type="text" name="score" size="7">*2)&nbsp;/&nbsp;( <input type="text" name="section" size="7">Section *10)&nbsp;&nbsp;=&nbsp;&nbsp;<input type="text" name="adl" size="9">&nbsp;%ADL&nbsp;<input type="text" name="adl2" size="9"></td>
 <td width="50%">Comments:&nbsp;&nbsp;<textarea rows="6" cols="50" name="comment"></textarea></td>
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