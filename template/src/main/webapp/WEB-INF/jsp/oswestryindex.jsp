<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<html>
<head>
<script type="text/javascript">
 function doAdd() {
	 
	 var painintensity=0;
	 if($("input[type='radio'].painintensity").is(':checked')) {
		     painintensity = $("input[type='radio'].painintensity:checked").val();		    
		
		
		}
	// var painintensity=$('input[name=painintensity]:radio').click(function() {var value = $(this).val();});
	 //var painintensity = $('#painintensity').val();
	 //alert(painintensity);
	 var standing =0;
	 if($("input[type='radio'].standing").is(':checked')) {
	     standing = $("input[type='radio'].standing:checked").val();		    
	}
	 
	 var sleeping = 0;
	 if($("input[type='radio'].sleeping").is(':checked')) {
		 sleeping = $("input[type='radio'].sleeping:checked").val();		    
	}
	 
	 var lifting =0;
	 if($("input[type='radio'].lifting").is(':checked')) {
		 lifting = $("input[type='radio'].lifting:checked").val();		    
	}
	 
	 var life = 0;
	 if($("input[type='radio'].life").is(':checked')) {
		 life = $("input[type='radio'].life:checked").val();		    
	}
	 var walking = 0;
	 if($("input[type='radio'].walking").is(':checked')) {
		 walking = $("input[type='radio'].walking:checked").val();		    
	}
	 var social = 0;
	 if($("input[type='radio'].social").is(':checked')) {
		 social = $("input[type='radio'].social:checked").val();		    
	}
	 var sitting = 0;
	 if($("input[type='radio'].sitting").is(':checked')) {
		 sitting = $("input[type='radio'].sitting:checked").val();		    
	}
	 var traveling = 0;
	 if($("input[type='radio'].traveling").is(':checked')) {
		 traveling = $("input[type='radio'].traveling:checked").val();		    
	}
	var personal = 0;
	 if($("input[type='radio'].personal").is(':checked')) {
		 personal = $("input[type='radio'].personal:checked").val();		    
	}
	 var total=parseInt(painintensity)+parseInt(sitting)+parseInt(lifting)+parseInt(walking)+parseInt(personal)+parseInt(sleeping)+parseInt(life)+parseInt(social)+parseInt(standing)+parseInt(traveling);
	  /* $check1>=406 && $check1<=429 */

	 document.getElementById("scores").value=total;
	 document.getElementById("score").innerHTML=total;
		    }
		  
 </script>
<script>
$(function() {
    $( "#slider" ).slider({
      value:document.getElementById("amount").value,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount" ).val(+ ui.value );
      }
    });
    $( "#amount" ).val(+ $( "#slider" ).slider( "value" ) );
    $( "#slider1" ).slider({
        value:document.getElementById("amount1").value,
        min: 0,
        max: 10,
        step: 1,
        slide: function( event, ui ) {
          $( "#amount1" ).val(+ ui.value );
        }
      });
      $( "#amount1" ).val(+ $( "#slider1" ).slider( "value" ) );
  });

</script>

<script type="text/javascript">
function workhidden()
{

if(document.getElementById('workoptional').checked)
{

document.getElementById('circle').style.display="none";
document.getElementById('work').style.display="none";
 }
 else
 {

document.getElementById('circle').style.display="block";
document.getElementById('work').style.display="block";
 }

 
}
function instrumenthidden()
{
if(document.getElementById('instrumentoptional').checked)
{
document.getElementById('physical').style.display="none";
document.getElementById('instrument').style.display="none";
 }
 else
 {
document.getElementById('physical').style.display="block";
document.getElementById('instrument').style.display="block";
 }
 
}




</script >

<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<script type="text/javascript">
$(function() {
    $( "#tabs" ).tabs();
 
    // fix the classes
    $( ".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *" )
      .removeClass( "ui-corner-all ui-corner-top" )
      .addClass( "ui-corner-bottom" );
 
    // move the nav to the bottom
    $( ".tabs-bottom .ui-tabs-nav" ).appendTo( ".tabs-bottom" );
  });
</script>
<script type="text/javascript">
    var currentTab = 0;
    $(function () {
        $("#tabs").tabs({
            select: function (e, i) {
                currentTab = i.index;
            }
        });
    });
    $("#btnNext").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == (c - 1) ? currentTab : (currentTab + 1);
        tabs.tabs('select', currentTab);
        $("#btnPrevious").show();
        if (currentTab == (c - 1)) {
            $("#btnNext").hide();
        } else {
            $("#btnNext").show();
        }
    });
    $("#btnPrevious").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == 0 ? currentTab : (currentTab - 1);
        tabs.tabs('select', currentTab);
        if (currentTab == 0) {
            $("#btnNext").show();
            $("#btnPrevious").hide();
        }
        if (currentTab < (c - 1)) {
            $("#btnNext").show();
        }
    });
</script>

 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
    <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
   
  

</head>
<body>
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">&nbsp;2</a></li>
       
  </ul>  
	     <div id="tabs-1">
	     
<form action="insertoswestryindex" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            OSWESTRY DISABILITY INDEX 2.0</h2></center><br/>
	            
	            </div>
	            <div class="contentbox"> 
	            <input type="hidden" name="symptom" id="symptom" value="${symptom}">
	            <c:choose>
	            <c:when test="${empty oswestrydisability}">
	      <p><b>PLEASE READ:Could you please complete this questionnaire.It is designed to give us information as to how your back(or leg) trouble has affected your ability to manage in everyday life.
	      <br>Please answer every section.Mark one box only in each section that most closely describes you today.</p>
           <table width="100%" class="margin_table" >
           <tr ><td width="50%" class="margin_table" ><b>Section 1-Pain Intensity</b></td><td width="500"><b>Section 6-Standing</b></td></tr>
           <tr><td><input type="radio" class="painintensity" id="painintensity" name="painintensity" value="0" onclick="doAdd()">&nbsp;&nbsp;I have no pain at the moment.</td>
           <td><input type="radio" name="standing" class="standing" id="standing" value="0" onclick="doAdd()">&nbsp;&nbsp;I can stand as long as I want without extra pain.</td>
           </tr>
           <tr><td><input type="radio" class="painintensity" id="painintensity" name="painintensity" value="1" onclick="doAdd()" >&nbsp;&nbsp;The pain is very mild at the moment.</td>
           <td><input type="radio" name="standing" class="standing" id="standing" value="1" onclick="doAdd()">&nbsp;&nbsp;I can stand as long as I want but it gives me extra pain.</td>
           </tr>
<tr><td><input type="radio" name="painintensity"  class="painintensity" id="painintensity" value="2" onclick="doAdd()">&nbsp;&nbsp;The pain is very moderate at the moment.</td>
           <td><input type="radio" id="standing" class="standing" name="standing" value="2" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from standing for more than 1 hour.</td>
           </tr>
           <tr><td><input type="radio"  class="painintensity" name="painintensity" id="painintensity" value="3" onclick="doAdd()">&nbsp;&nbsp;The pain is fairly severe at the moment.</td>
           <td><input type="radio" name="standing" class="standing" id="standing" value="3" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from standing for more than 1/2 hour.</td>
           </tr>
           <tr><td><input type="radio" name="painintensity"  class="painintensity"  id="painintensity" value="4" onclick="doAdd()">&nbsp;&nbsp;The pain is very severe at the moment.</td>
           <td><input type="radio" name="standing" class="standing" id="standing" value="4" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from standing for more than 10 hour.</td>
           </tr>
           <tr><td><input type="radio" name="painintensity" class="painintensity" id="painintensity" value="5" onclick="doAdd()">&nbsp;&nbsp;The pain is the worst imaginable at the moment.</td>
           <td><input type="radio" name="standing" id="standing" class="standing" value="5" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from standing at all.</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 2-Personal Care(Washing,Dressing,etc.)</b></td><td ><b>Section 7-Sleeping</b></td></tr>
           <tr><td><input type="radio" name="personal" id="personal" class="personal" value="0" onclick="doAdd()">&nbsp;&nbsp;I can look after myself normally without causing extra pain.</td>
           <td><input type="radio" name="sleeping" id="sleeping" class="sleeping" value="0" onclick="doAdd()">&nbsp;&nbsp;My sleep is never disturbed by pain.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal" class="personal" value="1" onclick="doAdd()">&nbsp;&nbsp;I can look after myself normally but it causes extra pain.</td>
           <td><input type="radio" name="sleeping"  id="sleeping"  class="sleeping" value="1" onclick="doAdd()">&nbsp;&nbsp;My sleep is occasionally disturbed by pain.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal" class="personal" value="2" onclick="doAdd()">&nbsp;&nbsp;It is painful to look after myself and I am slow and careful.</td>
           <td><input type="radio" name="sleeping"  id="sleeping" class="sleeping"  value="2" onclick="doAdd()">&nbsp;&nbsp;Because of pain I have less than 6 houes sleep.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal"  class="personal" value="3" onclick="doAdd()">&nbsp;&nbsp;I need some help but manage most of my personal care.</td>
           <td><input type="radio" name="sleeping"  id="sleeping" class="sleeping"  value="3" onclick="doAdd()">&nbsp;&nbsp;Because of pain I have less than 4 houes sleep.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal"  class="personal" value="4" onclick="doAdd()">&nbsp;&nbsp;I need help every day in most aspects of self care.</td>
           <td><input type="radio" name="sleeping"  id="sleeping"  class="sleeping" value="4" onclick="doAdd()">&nbsp;&nbsp;Because of pain I have less than 2 houes sleep.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal"  class="personal" value="5" onclick="doAdd()">&nbsp;&nbsp;I do not get dressed,I wash with difficulty and stay in bed.</td>
           <td><input type="radio" name="sleeping"  id="sleeping"  class="sleeping" value="5" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sleeping at all.</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 3-Lifting</b></td><td ><b>Section 8-Sex Life(if applicable)</b></td></tr>
           <tr><td><input type="radio" id="lifting" name="lifting" class="lifting" value="0" onclick="doAdd()">&nbsp;&nbsp;I can lift heavy weights without extra pain.</td>
           <td><input type="radio"  id="life" class="life"  name="life" value="0" onclick="doAdd()">&nbsp;&nbsp;My sex life is normal and causes me no extra pain.</td>
           </tr>
           <tr><td><input type="radio" id="lifting" name="lifting" class="lifting"  onclick="doAdd()"  value="1">&nbsp;&nbsp;I can lift heavy weights but it gives extra pain.</td>
           <td><input type="radio"  id="life" class="life"  name="life" value="1" onclick="doAdd()">&nbsp;&nbsp;My sex life is normal ,but causes some extra pain.</td>
           </tr>
          <tr><td><input type="radio" id="lifting" name="lifting" class="lifting" onclick="doAdd()" value="2">&nbsp;&nbsp;Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positioned,for example on a table. </td>
           <td><input type="radio"  id="life" class="life"  name="life" value="2" onclick="doAdd()">&nbsp;&nbsp;My sex life is nearly normal but is very painful.</td>
           </tr>
            <tr><td><input type="radio" id="lifting"  name="lifting" class="lifting" value="3" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned.</td>
           <td><input type="radio" id="life" class="life"  name="life" value="3" onclick="doAdd()">&nbsp;&nbsp;My sex life is severely restricted by pain.</td>
           </tr>
            <tr><td><input type="radio" id="lifting" name="lifting" class="lifting" value="4" onclick="doAdd()">&nbsp;&nbsp;I can lift very light weights.</td>
           <td><input type="radio"  id="life" class="life" name="life" value="4" onclick="doAdd()">&nbsp;&nbsp;My sex life is nearly absent because of pain.</td>
           </tr>
            <tr><td><input type="radio"  id="lifting" name="lifting"  class="lifting" value="5" onclick="doAdd()">&nbsp;&nbsp;I cannot lift or carry anything at all.</td>
           <td><input type="radio"  id="life" class="life" name="life" value="5" onclick="doAdd()">&nbsp;&nbsp;Pain prevents any sex life at all.</td>
           </tr>
           
           <tr height="10"></tr>
           <tr ><td ><b>Section 4-Walking</b></td><td ><b>SECTION 9-Social Life</b></td></tr>
           
           <tr><td><input type="radio" name="walking" class="walking"  id="walking" value="0" onclick="doAdd()">&nbsp;&nbsp;Pain does not prevent me from walking any distance.</td>
           <td><input type="radio" name="social" class="social" id="social" value="0" onclick="doAdd()">&nbsp;&nbsp;My social life is normal and causes me no extra pain.</td>
           </tr>
            <tr><td><input type="radio" name="walking" class="walking"  id="walking" value="1" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from walking more than one mile.</td>
           <td><input type="radio" name="social"  class="social" id="social" value="1" onclick="doAdd()">&nbsp;&nbsp;My social life is normal,but it increases the degree of pain.</td>
           </tr>
            <tr><td><input type="radio" name="walking" class="walking" id="walking" value="2" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from walking more than 1/4 mile.</td>
           <td><input type="radio" name="social"  class="social" id="social" value="2" onclick="doAdd()">&nbsp;&nbsp;Pain has no significant effect on my social life apart from limiting my more emergetic interest,e.g.,sport,etc.</td>
           </tr>
            <tr><td><input type="radio" name="walking" class="walking"  id="walking" value="3" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from walking more than 100 yards.</td>
           <td><input type="radio" name="social" class="social" id="social" value="3" onclick="doAdd()">&nbsp;&nbsp;Pain has restricted my social life and I do not go out as often.</td>
           </tr>
            <tr><td><input type="radio" name="walking" id="walking" class="walking" value="4" onclick="doAdd()">&nbsp;&nbsp;I can only walk while using a stick or crutches.</td>
           <td><input type="radio" name="social" class="social"  id="social" value="4" onclick="doAdd()">&nbsp;&nbsp;Pain has restricted my social life to my home.</td>
           </tr>
             <tr><td><input type="radio" name="walking" id="walking" class="walking" value="5" onclick="doAdd()">&nbsp;&nbsp;I am in bed most of the time and have to crawl to the toilet.</td>
           <td><input type="radio" name="social" class="social" id="social" value="5" onclick="doAdd()">&nbsp;&nbsp;I have no social life because of the pain.</td>
           </tr>
            <tr height="10"></tr>
           <tr ><td ><b>Section 5 - Sitting</b></td><td ><b>Section 10- Traveling</b></td></tr>
           
           <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting" value="0" onclick="doAdd()">&nbsp;&nbsp;I can sit in any chair as long as I like.</td>
           <td><input type="radio"  id="traveling" class="traveling" name="traveling" value="0" onclick="doAdd()">&nbsp;&nbsp;I can travel anywhere without pain .</td>
           </tr>
            <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting" value="1" onclick="doAdd()">&nbsp;&nbsp;I can only sit in my favorite chaor as long as I like.</td>
           <td><input type="radio" id="traveling" class="traveling" name="traveling" value="1" onclick="doAdd()">&nbsp;&nbsp;I can travel anywhere but I gives extra pain.</td>
           </tr>
           <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting" value="2" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sitting more than 1 hour.</td>
           <td><input type="radio"  id="traveling" class="traveling" name="traveling" value="2" onclick="doAdd()">&nbsp;&nbsp;Pain is bad but I manage journeys over 2 hours.</td>
           </tr>
           <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting" value="3" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sitting more than 1/2 hour.</td>
           <td><input type="radio"  id="traveling" class="traveling" name="traveling" value="3" onclick="doAdd()">&nbsp;&nbsp;Pain restricts me to journeys of less than  hour.</td>
           </tr>
           <tr><td><input type="radio" id="sitting" class="sitting" name="sitting" value="4" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sitting more than ten minutes.</td>
           <td><input type="radio"  id="traveling" class="traveling" name="traveling" value="4" onclick="doAdd()">&nbsp;&nbsp;Pain restricts me to short necessary journeys under 30 minutes.</td>
           </tr>
            <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting" value="5" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sitting at all.</td>
           <td><input type="radio" id="traveling" class="traveling" name="traveling" value="5" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from travelling except to receive treatment.</td>
           </tr>
           </table>
           <br>
           <table><tr><Td valign="top"><b>Comments:</b></Td><td width="20"></td><td><textarea rows="5" cols="150" name="comments"></textarea></td></tr></table>
           
          
          
    
	       
	         </table>
	         
	         </div></div>
        <div id="tabs-2">     

	    <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            
	            OSWESTRY DISABILITY INDEX 2.0</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
         <Table><tr><td><span class="err">*</span>Name:</td><td width="250"><input type="text" name="name"><br><span class="err"><form:errors path="oswestrydetails.name"></form:errors></td><Td width="200"></td><td ><span class="err">*</span>Date:</td><td width="250"><input type="date" name="date"><br><span class="err"><form:errors path="oswestrydetails.date"></form:errors></td><td width="200"></td><td>Score:</td><td><input type="hidden" name="scores" id="scores"><div id="score"></div></td></tr></Table>
	    <table><tr><td valign="bottom"><b>1.What is your pain RIGHT NOW?</b>&nbsp;&nbsp;&nbsp;X</td><td width="10"></td><td valign="bottom">No Pain</td><Td><label for="amount"><b></label>
	 <input type="text" id="amount"  value="0" style="border:0; color:#f6931f; font-weight:bold;" name="painscale" />&nbsp;&nbsp;&nbsp;
 <div id="slider"></div></td><td valign="bottom"><b>Worst Possible Pain</Td><Td width="20"></Td><td valign="bottom"><b>What is your pain at its worse?</b>&nbsp;&nbsp;&nbsp;O</td><td width="10"></td><td valign="bottom">No Pain</td><Td>
 <label for="amount1"></label>
	 <input type="text" id="amount1" value="0" style="border:0; color:#f6931f; font-weight:bold;" name="painscale1" />&nbsp;&nbsp;&nbsp;
 <div id="slider1"></div>
 
 </Td><td valign="bottom">Worst Possible Pain</td></tr>
	    <tr></tr>
	       
	    
	    </table>
	    <br>
	    <p><B>WORK MODULE(OPTIONAL)</B></p>
	    <P>The following questions ask about the impact of your arm,shoulder or hand problem on your ability to work(including homemaking if that is your main work role).</P>
	    <p>Please  indicate what your job/work is:<input type="text" name="job"></br></br>
	    <input type="checkbox" name="joboptional" id="workoptional" onclick="workhidden()" >&nbsp;&nbsp;&nbsp;I do not work(You may skip this section.) <br><br>
	    <b id="circle">Please circle the number that best describes your physical ability in the past week.</b>
	     </p>
	     <table id="work" style="border-collapse: collapse;border:2px solid; display:block;">
	    
	    <tr><td width="460" style= "border:2px solid;"><b>Did you have any difficulty:</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>No Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mild Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderate Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Severe Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Unable</b></td></tr>
	    
	     <tr><td style= "border:1px solid;">1.Using your usual technique for your work?</td><td style= "border:1px solid;" align="center"><input type="radio" name="work"  value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio"  name="work" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  name="work" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"  value="4" name="work">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="work" value="5">&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;">2.Doing your usual work because of arm,shoulder or hand pain?</td><td style= "border:1px solid;" align="center"><input type="radio" name="worka"  value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="worka"  value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  name="worka" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"   value="4" name="worka">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="worka" value="5">&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;">3.Doing your work as well as you would like?</td><td style= "border:1px solid;" align="center"><input type="radio" name="workb" value="1" >&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="workb"   value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="workb"   value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="workb">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="workb" value="5">&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;">4.Spending your usual amount of time doing your work?</td><td style= "border:1px solid;" align="center"><input type="radio" name="workc"  value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio"  name="workc" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  name="workc" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4"   name="workc">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="workc" value="5">&nbsp;5</td></tr>
	     </table>
	     <br>
	     <p><B>SPORTS/PERFORMING ARTS MODULE(OPTIONAL)</B><br></br>
	     The following questions relate to the impact of your arm,shoulder or hand problem on playing your musical instrument oro sport or both.If you play more than one sport or instrument(or play both),please answer with respect to that activity which is most important to you.</br></br>
	     Please indicate the sport or instrument which is most important to you:<input type="text" name="sport"><br></br>
	     <input type="checkbox" name="sportoptional" id="instrumentoptional" onclick="instrumenthidden()">&nbsp;&nbsp;&nbsp;I do not play a sport or an instrument(You may skip this section.)
	     <br><br>
	     <b id="physical">Please circle the number that best describes your physical ability in the past week.</b>
	     </p>
	     <table style="border-collapse: collapse;border:2px solid;" id="instrument">
	    
	    <tr><td width="200" style= "border:2px solid;"><b>Did you have any difficulty:</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>No Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mild Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderate Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Severe Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Unable</b></td></tr>
	    
	     <tr><td style= "border:1px solid;">1.Using your usual technique for playing your instrument or sport?</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrument"  value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrument" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"   name="instrument" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"   value="4" name="instrument">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrument" value="5">&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;">2.Playing your musical instrument or sport because of arm,shoulder or hand pain?</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumenta"  value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumenta"   value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrumenta" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"   value="4" name="instrumenta">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrumenta" value="5">&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;">3.Playing your musical instrument or sport as well as you would like?</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumentb" value="1" >&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumentb"   value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumentb"   value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="instrumentb">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrumentb" value="5">&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;">4.Spending your usual amount of time practicing or playing your instrument or sport?</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumentc" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrumentc" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrumentc" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4"  name="instrumentc">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrumentc" value="5">&nbsp;5</td></tr>
	     </table>
	     <br>
	    </c:when>
	     <c:otherwise>
	     
	      <p><b>PLEASE READ:Could you please complete this questionnaire.It is designed to give us information as to how your back(or leg) trouble has affected your ability to manage in everyday life.
	      <br>Please answer every section.Mark one box only in each section that most closely describes you today.</p>
           <table width="100%" class="margin_table" >
           <tr ><td width="50%" class="margin_table" ><b>Section 1-Pain Intensity</b><input type="hidden" name="oswestryno" value="${oswestrydisability.oswestryno}"></td><td width="500"><b>Section 6-Standing</b></td></tr>
           <tr><td><input type="radio" class="painintensity" id="painintensity"  <c:if test="${oswestrydisability.painintensity=='0'}"> <c:out value="checked"></c:out></c:if> name="painintensity" value="0" onclick="doAdd()">&nbsp;&nbsp;I have no pain at the moment.</td>
           <td><input type="radio" name="standing" class="standing" id="standing" value="0"  <c:if test="${oswestrydisability.standing=='0'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I can stand as long as I want without extra pain.</td>
           </tr>
           <tr><td><input type="radio" class="painintensity" id="painintensity"  <c:if test="${oswestrydisability.painintensity=='1'}"> <c:out value="checked"></c:out></c:if> name="painintensity" value="1" onclick="doAdd()" >&nbsp;&nbsp;The pain is very mild at the moment.</td>
           <td><input type="radio" name="standing" class="standing" id="standing" <c:if test="${oswestrydisability.standing=='1'}"> <c:out value="checked"></c:out></c:if> value="1" onclick="doAdd()">&nbsp;&nbsp;I can stand as long as I want but it gives me extra pain.</td>
           </tr>
<tr><td><input type="radio" name="painintensity"   <c:if test="${oswestrydisability.painintensity=='2'}"> <c:out value="checked"></c:out></c:if> class="painintensity" id="painintensity" value="2" onclick="doAdd()">&nbsp;&nbsp;The pain is very moderate at the moment.</td>
           <td><input type="radio" id="standing" class="standing" <c:if test="${oswestrydisability.standing=='2'}"> <c:out value="checked"></c:out></c:if> name="standing" value="2" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from standing for more than 1 hour.</td>
           </tr>
           <tr><td><input type="radio"  class="painintensity" name="painintensity" <c:if test="${oswestrydisability.painintensity=='3'}"> <c:out value="checked"></c:out></c:if> id="painintensity" value="3" onclick="doAdd()">&nbsp;&nbsp;The pain is fairly severe at the moment.</td>
           <td><input type="radio" name="standing" class="standing" id="standing" <c:if test="${oswestrydisability.standing=='3'}"> <c:out value="checked"></c:out></c:if> value="3" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from standing for more than 1/2 hour.</td>
           </tr>
           <tr><td><input type="radio" name="painintensity"  class="painintensity"  <c:if test="${oswestrydisability.painintensity=='4'}"> <c:out value="checked"></c:out></c:if> id="painintensity" value="4" onclick="doAdd()">&nbsp;&nbsp;The pain is very severe at the moment.</td>
           <td><input type="radio" name="standing" class="standing" id="standing" value="4" <c:if test="${oswestrydisability.standing=='4'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from standing for more than 10 hour.</td>
           </tr>
           <tr><td><input type="radio" name="painintensity" class="painintensity" <c:if test="${oswestrydisability.painintensity=='5'}"> <c:out value="checked"></c:out></c:if> id="painintensity" value="5" onclick="doAdd()">&nbsp;&nbsp;The pain is the worst imaginable at the moment.</td>
           <td><input type="radio" name="standing" id="standing" class="standing" value="5" <c:if test="${oswestrydisability.standing=='5'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from standing at all.</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 2-Personal Care(Washing,Dressing,etc.)</b></td><td ><b>Section 7-Sleeping</b></td></tr>
           <tr><td><input type="radio" name="personal" id="personal" class="personal" value="0"  <c:if test="${oswestrydisability.personal=='0'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I can look after myself normally without causing extra pain.</td>
           <td><input type="radio" name="sleeping" id="sleeping" class="sleeping" value="0" <c:if test="${oswestrydisability.sleeping=='0'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;My sleep is never disturbed by pain.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal" class="personal"  <c:if test="${oswestrydisability.personal=='1'}"> <c:out value="checked"></c:out></c:if> value="1" onclick="doAdd()">&nbsp;&nbsp;I can look after myself normally but it causes extra pain.</td>
           <td><input type="radio" name="sleeping"  id="sleeping"  class="sleeping" value="1"  <c:if test="${oswestrydisability.sleeping=='1'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;My sleep is occasionally disturbed by pain.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal" class="personal" <c:if test="${oswestrydisability.personal=='2'}"> <c:out value="checked"></c:out></c:if>  value="2" onclick="doAdd()">&nbsp;&nbsp;It is painful to look after myself and I am slow and careful.</td>
           <td><input type="radio" name="sleeping"  id="sleeping" class="sleeping"  value="2" <c:if test="${oswestrydisability.sleeping=='2'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;Because of pain I have less than 6 houes sleep.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal"  class="personal" value="3"  <c:if test="${oswestrydisability.personal=='3'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I need some help but manage most of my personal care.</td>
           <td><input type="radio" name="sleeping"  id="sleeping" class="sleeping" <c:if test="${oswestrydisability.sleeping=='3'}"> <c:out value="checked"></c:out></c:if>  value="3" onclick="doAdd()">&nbsp;&nbsp;Because of pain I have less than 4 houes sleep.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal"  class="personal" value="4" <c:if test="${oswestrydisability.personal=='4'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I need help every day in most aspects of self care.</td>
           <td><input type="radio" name="sleeping"  id="sleeping"  class="sleeping" value="4" <c:if test="${oswestrydisability.sleeping=='4'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;Because of pain I have less than 2 houes sleep.</td>
           </tr>
           <tr><td><input type="radio" name="personal" id="personal"  class="personal" value="5" <c:if test="${oswestrydisability.personal=='5'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I do not get dressed,I wash with difficulty and stay in bed.</td>
           <td><input type="radio" name="sleeping"  id="sleeping"  class="sleeping" value="5" <c:if test="${oswestrydisability.sleeping=='5'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sleeping at all.</td>
           </tr>
           <tr height="10"></tr>
           <tr ><td ><b>Section 3-Lifting</b></td><td ><b>Section 8-Sex Life(if applicable)</b></td></tr>
           <tr><td><input type="radio" id="lifting" name="lifting" <c:if test="${oswestrydisability.lifting=='0'}"> <c:out value="checked"></c:out></c:if> class="lifting" value="0" onclick="doAdd()">&nbsp;&nbsp;I can lift heavy weights without extra pain.</td>
           <td><input type="radio"  id="life" class="life"  name="life" value="0" <c:if test="${oswestrydisability.life=='0'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;My sex life is normal and causes me no extra pain.</td>
           </tr>
           <tr><td><input type="radio" id="lifting" name="lifting" <c:if test="${oswestrydisability.lifting=='1'}"> <c:out value="checked"></c:out></c:if> class="lifting"  onclick="doAdd()"  value="1">&nbsp;&nbsp;I can lift heavy weights but it gives extra pain.</td>
           <td><input type="radio"  id="life" class="life"  name="life" value="1" <c:if test="${oswestrydisability.life=='1'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;My sex life is normal ,but causes some extra pain.</td>
           </tr>
          <tr><td><input type="radio" id="lifting" name="lifting"  <c:if test="${oswestrydisability.lifting=='2'}"> <c:out value="checked"></c:out></c:if> class="lifting" onclick="doAdd()" value="2">&nbsp;&nbsp;Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positioned,for example on a table. </td>
           <td><input type="radio"  id="life" class="life"  name="life" value="2" <c:if test="${oswestrydisability.life=='2'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;My sex life is nearly normal but is very painful.</td>
           </tr>
            <tr><td><input type="radio" id="lifting"  name="lifting" class="lifting" <c:if test="${oswestrydisability.lifting=='3'}"> <c:out value="checked"></c:out></c:if>  value="3" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned.</td>
           <td><input type="radio" id="life" class="life"  name="life" value="3" <c:if test="${oswestrydisability.life=='3'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;My sex life is severely restricted by pain</td>
           </tr>
            <tr><td><input type="radio" id="lifting" name="lifting" class="lifting" value="4" <c:if test="${oswestrydisability.lifting=='4'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I can lift very light weights.</td>
           <td><input type="radio"  id="life" class="life" name="life" <c:if test="${oswestrydisability.life=='4'}"> <c:out value="checked"></c:out></c:if> value="4" onclick="doAdd()">&nbsp;&nbsp;My sex life is nearly absent because of pain.</td>
           </tr>
            <tr><td><input type="radio"  id="lifting" name="lifting"  class="lifting" value="5" <c:if test="${oswestrydisability.lifting=='5'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I cannot lift or carry anything at all.</td>
           <td><input type="radio"  id="life" class="life"  <c:if test="${oswestrydisability.life=='5'}"> <c:out value="checked"></c:out></c:if> name="life" value="5" onclick="doAdd()">&nbsp;&nbsp;Pain prevents any sex life at all.</td>
           </tr>
           
           <tr height="10"></tr>
           <tr ><td ><b>Section 4-Walking</b></td><td ><b>SECTION 9-Social Life</b></td></tr>
           
           <tr><td><input type="radio" name="walking" class="walking"  id="walking" <c:if test="${oswestrydisability.walking=='0'}"> <c:out value="checked"></c:out></c:if> value="0" onclick="doAdd()">&nbsp;&nbsp;Pain does not prevent me from walking any distance.</td>
           <td><input type="radio" name="social" class="social" id="social" value="0" <c:if test="${oswestrydisability.social=='0'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;My social life is normal and causes me no extra pain.</td>
           </tr>
            <tr><td><input type="radio" name="walking" class="walking"  id="walking" <c:if test="${oswestrydisability.walking=='1'}"> <c:out value="checked"></c:out></c:if> value="1" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from walking more than one mile.</td>
           <td><input type="radio" name="social"  class="social" id="social" value="1" <c:if test="${oswestrydisability.social=='1'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;My social life is normal,but it increases the degree of pain.</td>
           </tr>
            <tr><td><input type="radio" name="walking" class="walking" id="walking" <c:if test="${oswestrydisability.walking=='2'}"> <c:out value="checked"></c:out></c:if> value="2" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from walking more than 1/4 mile.</td>
           <td><input type="radio" name="social"  class="social" id="social" value="2" <c:if test="${oswestrydisability.social=='2'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;Pain has no significant effect on my social life apart from limiting my more emergetic interest,e.g.,sport,etc.</td>
           </tr>
            <tr><td><input type="radio" name="walking" class="walking"  id="walking" value="3" <c:if test="${oswestrydisability.walking=='3'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from walking more than 100 yards.</td>
           <td><input type="radio" name="social" class="social" id="social" <c:if test="${oswestrydisability.social=='3'}"> <c:out value="checked"></c:out></c:if> value="3" onclick="doAdd()">&nbsp;&nbsp;Pain has restricted my social life and I do not go out as often.</td>
           </tr>
            <tr><td><input type="radio" name="walking" id="walking" class="walking" value="4" <c:if test="${oswestrydisability.walking=='4'}"> <c:out value="checked"></c:out></c:if>  onclick="doAdd()">&nbsp;&nbsp;I can only walk while using a stick or crutches.</td>
           <td><input type="radio" name="social" class="social"  id="social" value="4" <c:if test="${oswestrydisability.social=='4'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;Pain has restricted my social life to my home.</td>
           </tr>
             <tr><td><input type="radio" name="walking" id="walking" class="walking" value="5" <c:if test="${oswestrydisability.walking=='5'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I am in bed most of the time and have to crawl to the toilet.</td>
           <td><input type="radio" name="social" class="social" id="social" value="5"  <c:if test="${oswestrydisability.social=='5'}"> <c:out value="checked"></c:out></c:if> onclick="doAdd()">&nbsp;&nbsp;I have no social life because of the pain.</td>
           </tr>
            <tr height="10"></tr>
           <tr ><td ><b>Section 5 - Sitting</b></td><td ><b>Section 10- Traveling</b></td></tr>
           
           <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting"  <c:if test="${oswestrydisability.sitting=='0'}"> <c:out value="checked"></c:out></c:if> value="0" onclick="doAdd()">&nbsp;&nbsp;I can sit in any chair as long as I like.</td>
           <td><input type="radio"  id="traveling" class="traveling" name="traveling"  <c:if test="${oswestrydisability.traveling=='0'}"> <c:out value="checked"></c:out></c:if>  value="0" onclick="doAdd()">&nbsp;&nbsp;I can travel anywhere without pain .</td>
           </tr>
            <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting"  <c:if test="${oswestrydisability.sitting=='1'}"> <c:out value="checked"></c:out></c:if>  value="1" onclick="doAdd()">&nbsp;&nbsp;I can only sit in my favorite chaor as long as I like.</td>
           <td><input type="radio" id="traveling" class="traveling" name="traveling" <c:if test="${oswestrydisability.traveling=='1'}"> <c:out value="checked"></c:out></c:if> value="1" onclick="doAdd()">&nbsp;&nbsp;I can travel anywhere but I gives extra pain.</td>
           </tr>
           <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting"  <c:if test="${oswestrydisability.sitting=='2'}"> <c:out value="checked"></c:out></c:if>  value="2" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sitting more than 1 hour.</td>
           <td><input type="radio"  id="traveling" class="traveling" name="traveling" <c:if test="${oswestrydisability.traveling=='2'}"> <c:out value="checked"></c:out></c:if> value="2" onclick="doAdd()">&nbsp;&nbsp;Pain is bad but I manage journeys over 2 hours.</td>
           </tr>
           <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting"  <c:if test="${oswestrydisability.sitting=='3'}"> <c:out value="checked"></c:out></c:if>  value="3" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sitting more than 1/2 hour.</td>
           <td><input type="radio"  id="traveling" class="traveling" name="traveling" <c:if test="${oswestrydisability.traveling=='3'}"> <c:out value="checked"></c:out></c:if> value="3" onclick="doAdd()">&nbsp;&nbsp;Pain restricts me to journeys of less than  hour.</td>
           </tr>
           <tr><td><input type="radio" id="sitting" class="sitting" name="sitting" value="4"   <c:if test="${oswestrydisability.sitting=='4'}"> <c:out value="checked"></c:out></c:if>  onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sitting more than ten minutes.</td>
           <td><input type="radio"  id="traveling" class="traveling" name="traveling" <c:if test="${oswestrydisability.traveling=='4'}"> <c:out value="checked"></c:out></c:if> value="4" onclick="doAdd()">&nbsp;&nbsp;Pain restricts me to short necessary journeys under 30 minutes.</td>
           </tr>
            <tr><td><input type="radio"  id="sitting" class="sitting" name="sitting" value="5"  <c:if test="${oswestrydisability.sitting=='5'}"> <c:out value="checked"></c:out></c:if>  onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from sitting at all.</td>
           <td><input type="radio" id="traveling" class="traveling" name="traveling" <c:if test="${oswestrydisability.traveling=='5'}"> <c:out value="checked"></c:out></c:if> value="5" onclick="doAdd()">&nbsp;&nbsp;Pain prevents me from travelling except to receive treatment.</td>
           </tr>
           </table>
           <br>
           <table><tr><Td valign="top"><b>Comments:</b></Td><td width="20"></td><td><textarea rows="5" cols="150" name="comments">${oswestrydisability.comments}</textarea></td></tr></table>
           
          
          
    
	       
	         </table>
	         
	         </div></div>
        <div id="tabs-2">     

	    <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            
	            EDIT OSWESTRY DISABILITY INDEX 2.0</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
         <Table><tr><td><span class="err">*</span>Name:</td><td width="250"><input type="text" name="name" value="${oswestrydisability.name}"><br><span class="err"><form:errors path="oswestrydetails.name"></form:errors></td><Td width="245"></td><td ><span class="err">*</span>Date:</td><td width="250"><input type="date" name="date" value="${oswestrydisability.date}"><br><span class="err"><form:errors path="oswestrydetails.date"></form:errors></td><td width="200"></td><td>Score:</td><td><input type="hidden" name="scores" value="${oswestrydisability.scores}" id="scores"><div id="score" ><c:out value="${oswestrydisability.scores}"></c:out></div></td></tr></Table>
	    <table><tr><td valign="bottom"><b>1.What is your pain RIGHT NOW?</b>&nbsp;&nbsp;&nbsp;X</td><td width="10"></td><td valign="bottom">No Pain</td><Td><label for="amount"><b></label>
	 <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;" name="painscale" value="${oswestrydisability.painscale}" />&nbsp;&nbsp;&nbsp;
 <div id="slider"></div></td><td valign="bottom"><b>Worst Possible Pain</Td><Td width="20"></Td><td valign="bottom"><b>What is your pain at its worse?</b>&nbsp;&nbsp;&nbsp;O</td><td width="10"></td><td valign="bottom">No Pain</td><Td>
 <label for="amount1"></label>
	 <input type="text" id="amount1" style="border:0; color:#f6931f; font-weight:bold;" name="painscale1" value="${oswestrydisability.painscale1}" />&nbsp;&nbsp;&nbsp;
 <div id="slider1"></div>
 
 </Td><td valign="bottom">Worst Possible Pain</td></tr>
	    <tr></tr>
	       
	    
	    </table>
	    <br>
	    <p><B>WORK MODULE(OPTIONAL)</B></p>
	    <P>The following questions ask about the impact of your arm,shoulder or hand problem on your ability to work(including homemaking if that is your main work role).</P>
	    <p>Please  indicate what your job/work is:<input type="text" name="job" value="${oswestrydisability.job}"></br></br>
	    <input type="checkbox" name="joboptional" id="workoptional" onclick="workhidden()" <c:if test="${oswestrydisability.joboptional=='I do not work(You may skip this section.)'}"> <c:out value="checked=checked"></c:out></c:if> value="I do not work(You may skip this section.)">&nbsp;&nbsp;&nbsp;I do not work(You may skip this section.) <br><br>
	    <b id="circle">Please circle the number that best describes your physical ability in the past week.</b>
	     </p>
	     <table style="border-collapse: collapse;border:2px solid;" id="work">
	    
	    <tr><td width="460" style= "border:2px solid;"><b>Did you have any difficulty:</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>No Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mild Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderate Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Severe Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Unable</b></td></tr>
	    
	     <tr><td style= "border:1px solid;">1.Using your usual technique for your work?</td><td style= "border:1px solid;" align="center"><input type="radio" name="work"  <c:if test="${oswestrydisability.work=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio"  name="work" <c:if test="${oswestrydisability.work=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  name="work" <c:if test="${oswestrydisability.work=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.work=='4'}"> <c:out value="checked"></c:out></c:if> value="4" name="work">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="work" <c:if test="${oswestrydisability.work=='5'}"> <c:out value="checked"></c:out></c:if> value="5">&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;">2.Doing your usual work because of arm,shoulder or hand pain?</td><td style= "border:1px solid;" align="center"><input type="radio" name="worka" <c:if test="${oswestrydisability.worka=='1'}"> <c:out value="checked"></c:out></c:if> value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="worka" <c:if test="${oswestrydisability.worka=='2'}"> <c:out value="checked"></c:out></c:if> value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  name="worka" <c:if test="${oswestrydisability.worka=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${oswestrydisability.worka=='4'}"> <c:out value="checked"></c:out></c:if> value="4" name="worka">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.worka=='5'}"> <c:out value="checked"></c:out></c:if> name="worka" value="5">&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;">3.Doing your work as well as you would like?</td><td style= "border:1px solid;" align="center"><input type="radio" name="workb" value="1" <c:if test="${oswestrydisability.workb=='1'}"> <c:out value="checked"></c:out></c:if> >&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="workb" <c:if test="${oswestrydisability.workb=='2'}"> <c:out value="checked"></c:out></c:if>   value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="workb"  <c:if test="${oswestrydisability.workb=='3'}"> <c:out value="checked"></c:out></c:if>   value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" <c:if test="${oswestrydisability.workb=='4'}"> <c:out value="checked"></c:out></c:if> name="workb">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="workb" <c:if test="${oswestrydisability.workb=='5'}"> <c:out value="checked"></c:out></c:if> value="5">&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;">4.Spending your usual amount of time doing your work?</td><td style= "border:1px solid;" align="center"><input type="radio" name="workc" <c:if test="${oswestrydisability.workc=='1'}"> <c:out value="checked"></c:out></c:if>  value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${oswestrydisability.workc=='2'}"> <c:out value="checked"></c:out></c:if> name="workc" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${oswestrydisability.workc=='3'}"> <c:out value="checked"></c:out></c:if> name="workc" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4"  <c:if test="${oswestrydisability.workc=='4'}"> <c:out value="checked"></c:out></c:if>  name="workc">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.workc=='5'}"> <c:out value="checked"></c:out></c:if>  name="workc" value="5">&nbsp;5</td></tr>
	     </table>
	     <br>
	     <p><B>SPORTS/PERFORMING ARTS MODULE(OPTIONAL)</B><br></br>
	     The following questions relate to the impact of your arm,shoulder or hand problem on playing your musical instrument oro sport or both.If you play more than one sport or instrument(or play both),please answer with respect to that activity which is most important to you.</br></br>
	     Please indicate the sport or instrument which is most important to you:<input type="text" name="sport" value="${oswestrydisability.sport}"><br></br>
	     <input type="checkbox"  id="instrumentoptional" name="sportoptional" onclick="instrumenthidden()" value="I do not play a sport or an instrument(You may skip this section.)" <c:if test="${oswestrydisability.sportoptional=='I do not play a sport or an instrument(You may skip this section.)'}"> <c:out value="checked=checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;I do not play a sport or an instrument(You may skip this section.)
	     <br><br>
	     <b id="physical">Please circle the number that best describes your physical ability in the past week.</b>
	     </p>
	     <table id="instrument" style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="200" style= "border:2px solid;"><b>Did you have any difficulty:</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>No Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Mild Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Moderate Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Severe Difficulty</b></td><td width="150" valign="top" style= "border:2px solid;" align="center"><b>Unable</b></td></tr>
	    
	     <tr><td style= "border:1px solid;">1.Using your usual technique for playing your instrument or sport?</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrument=='1'}"> <c:out value="checked"></c:out></c:if> name="instrument"  value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${oswestrydisability.instrument=='2'}"> <c:out value="checked"></c:out></c:if> name="instrument" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrument=='3'}"> <c:out value="checked"></c:out></c:if>   name="instrument" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrument=='4'}"> <c:out value="checked"></c:out></c:if>  value="4" name="instrument">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrument=='5'}"> <c:out value="checked"></c:out></c:if>   name="instrument" value="5">&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;">2.Playing your musical instrument or sport because of arm,shoulder or hand pain?</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrumenta=='1'}"> <c:out value="checked"></c:out></c:if> name="instrumenta"  value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumenta" <c:if test="${oswestrydisability.instrumenta=='2'}"> <c:out value="checked"></c:out></c:if>   value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrumenta=='3'}"> <c:out value="checked"></c:out></c:if>  name="instrumenta" value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio"   value="4" name="instrumenta" <c:if test="${oswestrydisability.instrumenta=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrumenta=='5'}"> <c:out value="checked"></c:out></c:if>  name="instrumenta" value="5">&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;">3.Playing your musical instrument or sport as well as you would like?</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumentb" <c:if test="${oswestrydisability.instrumentb=='1'}"> <c:out value="checked"></c:out></c:if> value="1" >&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumentb" <c:if test="${oswestrydisability.instrumentb=='2'}"> <c:out value="checked"></c:out></c:if>   value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" name="instrumentb"  <c:if test="${oswestrydisability.instrumentb=='3'}"> <c:out value="checked"></c:out></c:if>  value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="instrumentb" <c:if test="${oswestrydisability.instrumentb=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrumentb" <c:if test="${oswestrydisability.instrumentb=='5'}"> <c:out value="checked"></c:out></c:if> value="5">&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;">4.Spending your usual amount of time practicing or playing your instrument or sport?</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrumentc=='1'}"> <c:out value="checked"></c:out></c:if>  name="instrumentc" value="1">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrumentc=='2'}"> <c:out value="checked"></c:out></c:if>  name="instrumentc" value="2">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio"  name="instrumentc" <c:if test="${oswestrydisability.instrumentc=='3'}"> <c:out value="checked"></c:out></c:if> value="3">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" <c:if test="${oswestrydisability.instrumentc=='4'}"> <c:out value="checked"></c:out></c:if>  name="instrumentc">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${oswestrydisability.instrumentc=='5'}"> <c:out value="checked"></c:out></c:if>  name="instrumentc" value="5">&nbsp;5</td></tr>
	     </table>
	     
	     
	     
	     </c:otherwise>
	     
	     </c:choose>
	   <table align="right"><tr><td><input type="submit" value="Save" class="submit_btn"></td><td> <a href="viewoswestryindex" style="color: white" class="submit_btn">Cancel</a></td></tr></table>
	    
	    
	    
	    <br>
	    <br>
	    <br>
	   
	    <table align="right"><tr><td  >
	    
	     
	    </td></tr></table>
	    
           
           
           
          
             
           </br>
           </br>
           
          
         
        
         
         </div></td></tr></table></div></div>
         
            
	    </div></div>
         
         
        
         
         
         
         </div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            