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
<form action="updatelowback" method="POST" name="lowback">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>LOW BACK DISABILITY QUESTIONNARIE(REVISED OSWESTRY)</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
          <c:set value="${lowbackForm.lowback[0]}" var="lowback"/> 
 <tr class="row1">
 <input type="hidden" name="lowbackno" id="inp_id" value="${lowback.lowbackno}">
<td><h2>Patient Name:</h2></td><td><input type="text"  name="pname" value="${lowback.pname}"/></td>
<td width="600">
<td><h2>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${lowback.date}" /></td>
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
 <td width="50%"><input type="checkbox" name="tolerate" value="I Can tolerate the pain" <c:if test="${lowback.tolerate=='I Can tolerate the pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I Can tolerate the pain without having to use painkillers </td>
 <td width="50%"><input type="checkbox" name="withoutpain" value="I Can stand as long as I want " <c:if test="${lowback.withoutpain=='I Can stand as long as I want'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I Can stand as long as I want without extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="badpain" value="The pain is bad but I manage without using painkillers" <c:if test="${lowback.badpain=='The pain is bad but I manage without using painkillers'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;The pain is bad but I manage without using painkillers </td>
 <td width="50%"><input type="checkbox" name="withpain" value="I Can stand as long as I want but it gives extra pain" <c:if test="${lowback.withpain=='I Can stand as long as I want but it gives extra pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I Can stand as long as I want but it gives extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="complete" value="Painkillers give complete relief from pain" <c:if test="${lowback.complete=='Painkillers give complete relief from pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Painkillers give complete relief from pain </td>
 <td width="50%"><input type="checkbox" name="onehour" value="Pain prevents me from standing more than 1 hour" <c:if test="${lowback.onehour=='Pain prevents me from standing more than 1 hour'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from standing more than 1 hour</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="moderate" value="Painkillers give moderate relief from pain" <c:if test="${lowback.moderate=='Painkillers give complete relief from pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Painkillers give moderate relief from pain </td>
 <td width="50%"><input type="checkbox" name="thirtyminutes" value="Pain prevents me from standing more than 30 minutes" <c:if test="${lowback.thirtyminutes=='Pain prevents me from standing more than 30 minutes'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from standing more than 30 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="little" value="Painkillers give very little relief from pain" <c:if test="${lowback.little=='Painkillers give very little relief from pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Painkillers give very little relief from pain </td>
 <td width="50%"><input type="checkbox" name="tenminutes" value="Pain prevents me from standing more than 10 minutes" <c:if test="${lowback.tenminutes=='Pain prevents me from standing more than 10 minutes'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from standing more than 10 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="noeffect" value="Painkillers have no effect on the pain and I do not use them" <c:if test="${lowback.noeffect=='Painkillers have no effect on the pain and I do not use them'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Painkillers have no effect on the pain and I do not use them </td>
 <td width="50%"><input type="checkbox" name="atall" value="Pain prevents me from standing at all" <c:if test="${lowback.atall=='Pain prevents me from standing at all'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from standing at all</td> 
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
 <td width="50%"><input type="checkbox" name="withoutcausingpain" value="I can look after myself normally without causing extra pain" <c:if test="${lowback.withoutcausingpain=='I can look after myself normally without causing extra pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can look after myself normally without causing extra pain </td>
 <td width="50%"><input type="checkbox" name="sleepingwell" value="pain does not prevent me from sleeping well" <c:if test="${lowback.sleepingwell=='pain does not prevent me from sleeping well'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I Can stand as long as I want without extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="extrapain" value="I can look after myself normally but it causes extra pain" <c:if test="${lowback.extrapain=='I can look after myself normally but it causes extra pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can look after myself normally but it causes extra pain </td>
 <td width="50%"><input type="checkbox" name="tablets" value="I Can sleep well only by using tablets" <c:if test="${lowback.tablets=='I Can sleep well only by using tablets'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I Can sleep well only by using tablets</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="slow" value="It is painful to look after myself and I am slow and careful" <c:if test="${lowback.slow=='It is painful to look after myself and I am slow and careful'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;It is painful to look after myself and I am slow and careful </td>
 <td width="50%"><input type="checkbox" name="sixhour" value="Even when I take tablets I have less than 6 hours sleep" <c:if test="${lowback.sixhour=='Even when I take tablets I have less than 6 hours sleep'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Even when I take tablets I have less than 6 hours sleep</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="personalcare" value="I need some help but manage  most of my personal care" <c:if test="${lowback.personalcare=='I need some help but manage  most of my personal care'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I need some help but manage  most of my personal care </td>
 <td width="50%"><input type="checkbox" name="fourhours" value="Even when I take tablets I have less than 4 hours sleep" <c:if test="${lowback.fourhours=='Even when I take tablets I have less than 4 hours sleep'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Even when I take tablets I have less than 4 hours sleep</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="littlehelp" value="I need help every day in most aspects of self care" <c:if test="${lowback.littlehelp=='I need help every day in most aspects of self care'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I need help every day in most aspects of self care </td>
 <td width="50%"><input type="checkbox" name="twohours" value="Even when I take tablets I have less than 2 hours sleep" <c:if test="${lowback.twohours=='Even when I take tablets I have less than 2 hours sleep'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Even when I take tablets I have less than 2 hours sleep</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="difficulty" value="I do not get dressed;I wash without difficulty and stay in bed" <c:if test="${lowback.difficulty=='I do not get dressed;I wash without difficulty and stay in bed'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I do not get dressed;I wash without difficulty and stay in bed </td>
 <td width="50%"><input type="checkbox" name="atall1" value="Pain prevents me from sleeping at all" <c:if test="${lowback.atall1=='Pain prevents me from sleeping at all'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from sleeping at all</td> 
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
 <td width="50%"><input type="checkbox" name="canlift" value="I can lift heavy weights without extra pain" <c:if test="${lowback.canlift=='I can lift heavy weights without extra pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can lift heavy weights without extra pain </td>
 <td width="50%"><input type="checkbox" name="normal" value="My social life is normal and gives me no extra pain" <c:if test="${lowback.normal=='My social life is normal and gives me no extra pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;My social life is normal and gives me no extra pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="canliftwithpain" value="I can lift heavy weights  but it gives extra pain" <c:if test="${lowback.canliftwithpain=='I can lift heavy weights  but it gives extra pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can lift heavy weights  but it gives extra pain </td>
 <td width="50%"><input type="checkbox" name="normalwithpain" value="My social life is normal but increases the degree of pain" <c:if test="${lowback.normalwithpain=='My social life is normal but increases the degree of pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;My social life is normal but increases the degree of pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="heavyweights" value="Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positions for example: On a table" <c:if test="${lowback.heavyweights=='Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positions for example: On a table'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positions for example: On a table </td>
 <td width="50%"><input type="checkbox" name="significanteffect" value="Pain has no significant effect on my social life apart from limiting my more energetic interest,e.g. dancing" <c:if test="${lowback.significanteffect=='Pain has no significant effect on my social life apart from limiting my more energetic interest,e.g. dancing'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain has no significant effect on my social life apart from limiting my more energetic interest,e.g. dancing</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="mediumweights" value="Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned" <c:if test="${lowback.mediumweights=='Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned </td>
 <td width="50%"><input type="checkbox" name="restricted" value="Pain has restricted my social life and i do not go out as often " <c:if test="${lowback.restricted=='Pain has restricted my social life and i do not go out as often'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain has restricted my social life and i do not go out as often </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="verylightweight" value="I can lift very light weights" <c:if test="${lowback.verylightweight=='I can lift very light weights'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can lift very light weights </td>
 <td width="50%"><input type="checkbox" name="myhome" value="Pain has restricted my social life to my home" <c:if test="${lowback.myhome=='Pain has restricted my social life to my home'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain has restricted my social life to my home</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="carryatall" value="I cannot lift or carry anything at all" <c:if test="${lowback.carryatall=='I cannot lift or carry anything at all'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I cannot lift or carry anything at all </td>
 <td width="50%"><input type="checkbox" name="nosociallife" value="I have no social life because of pain" <c:if test="${lowback.nosociallife=='I have no social life because of pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I have no social life because of pain</td> 
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
 <td width="50%"><input type="checkbox" name="walkingdistance" value="Pain does not prevent me from walking any distance" <c:if test="${lowback.walkingdistance=='Pain does not prevent me from walking any distance'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain does not prevent me from walking any distance </td>
 <td width="50%"><input type="checkbox" name="travelwithoutpain" value="I can travel anywhere without extra pain" <c:if test="${lowback.travelwithoutpain=='I can travel anywhere without extra pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can travel anywhere without extra pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="onemile" value="Pain prevents me from walking more than one mile" <c:if test="${lowback.onemile=='Pain prevents me from walking more than one mile'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from walking more than one mile </td>
 <td width="50%"><input type="checkbox" name="travelwithpain" value="I can travel anywhere but it gives me extra pain" <c:if test="${lowback.travelwithpain=='I can travel anywhere but it gives me extra pain'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can travel anywhere but it gives me extra pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="onehalfmile" value="Pain prevents me from walking more than one-half mile" <c:if test="${lowback.onehalfmile=='Pain prevents me from walking more than one-half mile'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from walking more than one-half mile </td>
 <td width="50%"><input type="checkbox" name="journey2hours" value="Pain is bad but I manage journeys over 2 hours" <c:if test="${lowback.journey2hours=='Pain is bad but I manage journeys over 2 hours'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain is bad but I manage journeys over 2 hours</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="onequartermile" value="Pain prevents me from walking more than one-quarter mile" <c:if test="${lowback.onequartermile=='Pain prevents me from walking more than one-quarter mile'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from walking more than one-quarter mile </td>
 <td width="50%"><input type="checkbox" name="onehourless" value="Pain is bad but I manage journeys less than one hour " <c:if test="${lowback.onehourless=='Pain is bad but I manage journeys less than one hour'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain is bad but I manage journeys less than one hours </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="usingstick" value="I can only using stick or crutches" <c:if test="${lowback.usingstick=='I can only using stick or crutches'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can only using stick or crutches </td>
 <td width="50%"><input type="checkbox" name="journeys30mins" value="Pain restrict me to short necessary journeys undo 30 minutes" <c:if test="${lowback.journeys30mins=='Pain restrict me to short necessary journeys undo 30 minutes'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain restrict me to short necessary journeys undo 30 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="bedtime" value="I am in bed most of the time and have to crawl to the toilet" <c:if test="${lowback.bedtime=='I am in bed most of the time and have to crawl to the toilet'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I am in bed most of the time and have to crawl to the toilet </td>
 <td width="50%"><input type="checkbox" name="todoctor" value="Pain prevents me from traveling except to the doctor or hospital" <c:if test="${lowback.todoctor=='Pain prevents me from traveling except to the doctor or hospital'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from traveling except to the doctor or hospital</td> 
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
 <td width="50%"><input type="checkbox" name="cansit" value="I can sit in a chair as long as I like" <c:if test="${lowback.cansit=='I can sit in a chair as long as I like'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;I can sit in a chair as long as I like </td>
 <td width="50%"><input type="checkbox" name="rapidlybetter" value="My pain is rapidly getting better" <c:if test="${lowback.rapidlybetter=='My pain is rapidly getting better'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;My pain is rapidly getting better</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="favoritechair" value="I can only sit in my favorite chair as long as I like" <c:if test="${lowback.favoritechair=='I can only sit in my favorite chair as long as I like'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from walking more than one mile </td>
 <td width="50%"><input type="checkbox" name="flucutates" value="My pain flucutates but overall is definitely getting better " <c:if test="${lowback.flucutates=='My pain flucutates but overall is definitely getting better'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;My pain flucutates but overall is definitely getting better</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="sitonehour" value="Pain prevents me from sitting more than one hour" <c:if test="${lowback.sitonehour=='Pain prevents me from sitting more than one hour'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from sitting more than one hour </td>
 <td width="50%"><input type="checkbox" name="slowimprovement" value="My pain seems to be getting better but improvement is slow at the present" <c:if test="${lowback.slowimprovement=='My pain seems to be getting better but improvement is slow at the present'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;My pain seems to be getting better but improvement is slow at the present</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="sit30mins" value="Pain prevents me from sitting more than 30 minutes" <c:if test="${lowback.sit30mins=='Pain prevents me from sitting more than 30 minutes'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from sitting more than 30 minutes </td>
 <td width="50%"><input type="checkbox" name="samepain" value="Pain is neither getting better nor worse " <c:if test="${lowback.samepain=='Pain is neither getting better nor worse'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain is neither getting better nor worse </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="sit10mins" value="Pain prevents me from sitting more than 10 minutes" <c:if test="${lowback.sit10mins=='Pain prevents me from sitting more than 10 minutes'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from sitting more than 30 minutes </td>
 <td width="50%"><input type="checkbox" name="graduallyworsening" value="My pain is gradually worsening" <c:if test="${lowback.graduallyworsening=='My pain is gradually worsening'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;My pain is gradually worsening</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="checkbox" name="allthetime" value="Pain prevents me from sitting all most all the time" <c:if test="${lowback.allthetime=='Pain prevents me from sitting all most all the time'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;Pain prevents me from sitting all most all the time </td>
 <td width="50%"><input type="checkbox" name="rapidlyworsening" value="My pain is rapidly worsening" <c:if test="${lowback.rapidlyworsening=='My pain is rapidly worsening'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;My pain is rapidly worsening</td> 
 </tr>
 </table>
 <table>
 <tr>
  <td></td>
 <td width="50%">Scoring:Questions are scored on a vertical scale of 0-5.Total scores and multiply by 2 .Divide by number of sections answered multiplied by 10.A score of 22% or more is considered significant activities of daily living disability.<br/><br/>(Score &nbsp;<input type="text" name="score" size="7" value="${lowback.score}">*2)&nbsp;/&nbsp;( <input type="text" name="section" size="7" value="${lowback.section}">Section *10)&nbsp;&nbsp;=&nbsp;&nbsp;<input type="text" name="adl" size="9" value="${lowback.adl}">&nbsp;%ADL&nbsp;<input type="text" name="adl2" size="9" value="${lowback.adl2}"></td>
 <td width="50%">Comments:&nbsp;&nbsp;<textarea rows="6" cols="50" name="comment">${lowback.comment}</textarea></td>
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