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
function softtissuevalidate()
{
if(document.getElementById('softtissuess').checked)
{
document.getElementById('softtissue').style.display="none";
document.getElementById('softtissue1').style.display="none";
document.getElementById('softtissue2').style.display="none";
 }
 else if(document.getElementById('softtissues').checked)
{
document.getElementById('softtissue').style.display="block";
document.getElementById('softtissue1').style.display="block";
document.getElementById('softtissue2').style.display="block";
 } 
}

function neurologicalvalidate()
{
if(document.getElementById('neurologicalunremarkable').checked)
{
document.getElementById('neurological').style.display="none";

 }
 else if(document.getElementById('neurologicalexcept').checked)
{
document.getElementById('neurological').style.display="block";
 } 
}
function Checksymptom(val){
 var element=document.getElementById('legother');
 
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
function Checksymptom1(val){
 var element=document.getElementById('legother1');

 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
function visible(val)
{
if(document.getElementById('other').checked)
{
 var element=document.getElementById('otherdefict');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('otherdefict');
 element.style.display='none';
 }
 
}
function shortlegvalidate(val)
{
if(document.getElementById('leftvalue').checked)
{
var element=document.getElementById('shortlegleft');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('shortlegleft');
 element.style.display='none';
 }
}
function shortlegvalidate1(val)
{
if(document.getElementById('shortlegcheck').checked)
{
var element=document.getElementById('shortlegright');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('shortlegright');
 element.style.display='none';
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
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">&nbsp;2</a></li>
       
  </ul>  
	     <div id="tabs-1">
	     
<form action="updateoswestryindex" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            VIEW OSWESTRY DISABILITY INDEX 2.0</h2></center><br/>
	            
	            </div>
	            <div class="contentbox"> 
	            
	            <c:set value="${oswestryform.oswestrydetails[0]}" var="oswestrydetails"></c:set>
	           
	      <p><b>PLEASE READ:Could you please complete this questionnaire.It is designed to give us information as to how your back(or leg) trouble has affected your ability to manage in everyday life.
	      <br>Please answer every section.Mark one box only in each section that most closely describes you today.</p>
           <table width="100%" class="margin_table">
           <tr><td width="50%"><b>Section 1-Pain intensity</b></td><td width="20"></td><td width="500"><b>Section 6-Standing</b></td></tr>
           <tr><td> <c:if test= "${oswestrydetails.painintensity== '0'}"> <c:out value="I have no pain at the moment."></c:out></c:if>
           <c:if test="${oswestrydetails.painintensity=='1'}"> <c:out value="The pain is very mild at the moment."></c:out></c:if>
           <c:if test="${oswestrydetails.painintensity=='2'}"> <c:out value="The pain is very moderate at the moment."></c:out></c:if>
           <c:if test="${oswestrydetails.painintensity=='3'}"> <c:out value="The pain is fairly severe at the moment."></c:out></c:if>
           <c:if test="${oswestrydetails.painintensity=='4'}"> <c:out value="The pain is very severe at the moment."></c:out></c:if>
           <c:if test="${oswestrydetails.painintensity=='5'}"> <c:out value="The pain is the worst imaginable at the moment."></c:out></c:if>
           </td>      
           <td></td>
           
           <td> <c:if test="${oswestrydetails.standing=='0'}"> <c:out value="I can stand as long as I want without extra pain."></c:out></c:if>
           <c:if test="${oswestrydetails.standing=='1'}"> <c:out value="I can stand as long as I want but it gives me extra pain.</"></c:out></c:if>
          <c:if test="${oswestrydetails.standing=='2'}"> <c:out value="Pain prevents me from standing for more than 1 hour"></c:out></c:if>
          <c:if test="${oswestrydetails.standing=='3'}"> <c:out value="Pain prevents me from standing for more than 1/2 hour."></c:out></c:if>
          <c:if test="${oswestrydetails.standing=='4'}"> <c:out value="Pain prevents me from standing for more than 10 hour."></c:out></c:if>
          <c:if test="${oswestrydetails.standing=='5'}"> <c:out value="Pain prevents me from standing at all."></c:out></c:if>
            </td>
           </tr>
          
           <tr height="10"></tr>
           <tr ><td ><b>Section 2-personal Care(Washing,Dressing,etc.)</b></td> <td></td><td ><b>Section 7-Driving</b></td></tr>
           <tr><td><c:if test="${oswestrydetails.personal=='0'}"> <c:out value="I can look after myself normally without causing extra pain."></c:out></c:if>
           <c:if test="${oswestrydetails.personal=='1'}"> <c:out value="I can look after myself normally but it causes extra pain."></c:out></c:if>
           <c:if test="${oswestrydetails.personal=='2'}"> <c:out value="It is painful to look after myself and I am slow and careful."></c:out></c:if>
           <c:if test="${oswestrydetails.personal=='3'}"> <c:out value="I need some help but manage most of my personal care."></c:out></c:if>
           <c:if test="${oswestrydetails.personal=='4'}"> <c:out value="I need help every day in most aspects of self care."></c:out></c:if>
           <c:if test="${oswestrydetails.personal=='5'}"> <c:out value="I do not get dressed,I wash with difficulty and stay in bed."></c:out></c:if>
           </td>
           
           
           <td></td>
           
           <td><c:if test="${oswestrydetails.sleeping=='0'}"> <c:out value="My sleep is never disturbed by pain."></c:out></c:if> 
<c:if test="${oswestrydetails.sleeping=='1'}"> <c:out value="My sleep is occasionally disturbed by pain."></c:out></c:if>
<c:if test="${oswestrydetails.sleeping=='2'}"> <c:out value="Because of pain I have less than 6 houes sleep."></c:out></c:if>
<c:if test="${oswestrydetails.sleeping=='3'}"> <c:out value="Because of pain I have less than 4 houes sleep."></c:out></c:if>
<c:if test="${oswestrydetails.sleeping=='4'}"> <c:out value="Because of pain I have less than 2 houes sleep."></c:out></c:if>
<c:if test="${oswestrydetails.sleeping=='5'}"> <c:out value="Pain prevents me from sleeping at all."></c:out></c:if>
</td>
           </tr>
          
           <tr height="10"></tr>
           <tr ><td ><b>Section 3-Lifting</b></td><td></td><td ><b>Section 8-Sex Life(if applicable)</b></b></td></tr>
           
           <tr><td> <c:if test="${oswestrydetails.lifting=='0'}"> <c:out value="I can lift heavy weights without extra pain."></c:out></c:if>
           <c:if test="${oswestrydetails.lifting=='1'}"> <c:out value="I can lift heavy weights but it gives extra pain."></c:out></c:if>
           <c:if test="${oswestrydetails.lifting=='2'}"> <c:out value="Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positioned,for example on a table."></c:out></c:if>
           <c:if test="${oswestrydetails.lifting=='3'}"> <c:out value="Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned."></c:out></c:if>
          <c:if test="${oswestrydetails.lifting=='4'}"> <c:out value="I can lift very light weights."></c:out></c:if>
           <c:if test="${oswestrydetails.lifting=='5'}"> <c:out value="I cannot lift or carry anything at all."></c:out></c:if>
           </td>
           <td></td>
           <td><c:if test="${oswestrydetails.life=='0'}"> <c:out value="My sex life is normal and causes me no extra pain."></c:out></c:if>
           <c:if test="${oswestrydetails.life=='1'}"> <c:out value="My sex life is normal ,but causes some extra pain."></c:out></c:if>
           <c:if test="${oswestrydetails.life=='2'}"> <c:out value="My sex life is nearly normal but is very painful."></c:out></c:if>
           <c:if test="${oswestrydetails.life=='3'}"> <c:out value="My sex life is severely restricted by pain."></c:out></c:if>
           <c:if test="${oswestrydetails.life=='4'}"> <c:out value="My sex life is nearly absent because of pain."></c:out></c:if>
           <c:if test="${oswestrydetails.life=='5'}"> <c:out value="Pain prevents any sex life at all."></c:out></c:if>
           </td>
           </tr>
          
           
           <tr height="10"></tr>
           <tr ><td ><b>Section 4-Walking</b></td><td></td><td ><b>Section 9-Social Life</b></td></tr>
           
<tr><td><c:if test="${oswestrydetails.walking=='0'}"> <c:out value="Pain does not prevent me from walking any distance."></c:out></c:if>
<c:if test="${oswestrydetails.walking=='1'}"> <c:out value="Pain prevents me from walking more than one mile."></c:out></c:if>
<c:if test="${oswestrydetails.walking=='2'}"> <c:out value="Pain prevents me from walking more than 1/4 mile."></c:out></c:if> 
<c:if test="${oswestrydetails.walking=='3'}"> <c:out value="Pain prevents me from walking more than 100 yards."></c:out></c:if>  
<c:if test="${oswestrydetails.walking=='4'}"> <c:out value="I can only walk while using a stick or crutches."></c:out></c:if>
<c:if test="${oswestrydetails.walking=='5'}"> <c:out value="I am in bed most of the time and have to crawl to the toilet."></c:out></c:if> 
</td>
       <td></td>    <td>
           <c:if test="${oswestrydetails.social=='0'}"> <c:out value="My social life is normal and causes me no extra pain."></c:out></c:if>
           <c:if test="${oswestrydetails.social=='1'}"> <c:out value="My social life is normal,but it increases the degree of pain."></c:out></c:if>
           <c:if test="${oswestrydetails.social=='2'}"> <c:out value="Pain has no significant effect on my social life apart from limiting my more emergetic interest,e.g.,sport,etc."></c:out></c:if>
           <c:if test="${oswestrydetails.social=='3'}"> <c:out value="Pain has restricted my social life and I do not go out as often."></c:out></c:if>
           <c:if test="${oswestrydetails.social=='4'}"> <c:out value="Pain has restricted my social life to my home."></c:out></c:if>  
           <c:if test="${oswestrydetails.social=='5'}"> <c:out value="I have no social life because of the pain."></c:out></c:if> 
             </td>
           
           
           </tr>
           
            <tr height="10"></tr>
           <tr ><td ><b>Section 5 - Sitting</b></td><td></td><td ><b>Section 10- Traveling</b></td></tr>
           
           <tr><td><c:if test="${oswestrydetails.sitting=='0'}"> <c:out value="I can sit in any chair as long as I like."></c:out></c:if>  
           <c:if test="${oswestrydetails.sitting=='1'}"> <c:out value="I can only sit in my favorite chaor as long as I like."></c:out></c:if>
           <c:if test="${oswestrydetails.sitting=='2'}"> <c:out value="Pain prevents me from sitting more than 1 hour."></c:out></c:if>
           <c:if test="${oswestrydetails.sitting=='3'}"> <c:out value="Pain prevents me from sitting more than 1/2 hour."></c:out></c:if>
           <c:if test="${oswestrydetails.sitting=='4'}"> <c:out value="Pain prevents me from sitting more than ten minutes."></c:out></c:if>
           <c:if test="${oswestrydetails.sitting=='5'}"> <c:out value="Pain prevents me from sitting at all."></c:out></c:if>
           </td><td></td>
           <td> <c:if test="${oswestrydetails.traveling=='0'}"> <c:out value="I can travel anywhere without pain."></c:out></c:if> 
           
           <c:if test="${oswestrydetails.traveling=='1'}"> <c:out value="I can travel anywhere but I gives extra pain."></c:out></c:if> 
 
           <c:if test="${oswestrydetails.traveling=='2'}"> <c:out value="Pain is bad but I manage journeys over 2 hours."></c:out></c:if>
           
          
           <c:if test="${oswestrydetails.traveling=='3'}"> <c:out value="Pain restricts me to journeys of less than  hour."></c:out></c:if>
         
           <c:if test="${oswestrydetails.traveling=='4'}"> <c:out value="Pain restricts me to short necessary journeys under 30 minutes."></c:out></c:if>
          
           <c:if test="${oswestrydetails.traveling=='5'}"> <c:out value="Pain prevents me from travelling except to receive treatment."></c:out></c:if> </td>
           </tr>
           </table>
           </br>     
           
          
           
           
          
           <br>
           <table><tr><Td valign="top"><b>Comments:</b></Td><td width="20"></td><td><c:out value="${oswestrydetails.comments}"></c:out></td></tr></table>
           <br>
          <Table><tr><td width="88"><b>Name:</b></td><td><c:out value="${oswestrydetails.name}"/></td><Td width="245"></td><td ><b>Date:</b></td><td><c:out value="${oswestrydetails.date}"/></td><td width="160"></td><td><b>Score:</b></td><td><input type="hidden" name="scores" value="${oswestrydetails.scores}" id="scores"><div id="score" ><c:out value="${oswestrydetails.scores}"></c:out></div></td></tr>
          <tr height="20"></tr>
          </Table>
          
    
	       
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
	            
	           VIEW OSWESTRY DISABILITY INDEX 2.0</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
         
	    <table><tr><td valign="bottom"><b>1.What is your pain RIGHT NOW?</b></td><td><c:out value="${oswestrydetails.painscale}" />&nbsp;&nbsp;&nbsp;X
 </td><Td width="20"></Td><td valign="bottom"><b>What is your pain at its worse?</b>&nbsp;&nbsp;&nbsp;</td><td><c:out value="${oswestrydetails.painscale1}" />&nbsp;&nbsp;&nbsp;O
 
 
 </tr>
	    <tr></tr>
	       
	    
	    </table>
	    <br>
	    <p><B>WORK MODULE(OPTIONAL)</B></p>
	    <P>The following questions ask about the impact of your arm,shoulder or hand problem on your ability to work(including homemaking if that is your main work role).</P>
	    <p>Please  indicate what your job/work is:<c:out value="${oswestrydetails.job}"/></br></br>
	    <c:out value="${oswestrydetails.joboptional}"/> <br><br>
	    <b>Please circle the number that best describes your physical ability in the past week.</b>
	     </p>
	     <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="460"><b>Did you have any difficulty:</b></td><td width="150" valign="top"  align="center"></td></tr>
	    
	     <tr><td style= "border:1px solid;">1.Using your usual technique for your work?</td><td style= "border:1px solid;" align="center">
	     <c:if test="${oswestrydetails.work=='1'}"> <c:out value="No Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.work=='2'}"> <c:out value="Mild Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.work=='3'}"> <c:out value="Moderate Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.work=='4'}"> <c:out value="Severe Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.work=='5'}"> <c:out value="Unable"></c:out></c:if>   
	     
	     
	     </td></tr>
	     
	     <tr><td style= "border:1px solid;">2.Doing your usual work because of arm,shoulder or hand pain?</td><td style= "border:1px solid;" align="center">
	      <c:if test="${oswestrydetails.worka=='1'}"> <c:out value="No Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.worka=='2'}"> <c:out value="Mild Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.worka=='3'}"> <c:out value="Moderate Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.worka=='4'}"> <c:out value="Severe Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.worka=='5'}"> <c:out value="Unable"></c:out></c:if> </td></tr>
	     <tr><td style= "border:1px solid;">3.Doing your work as well as you would like?</td><td style= "border:1px solid;" align="center">
	      <c:if test="${oswestrydetails.workb=='1'}"> <c:out value="No Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.workb=='2'}"> <c:out value="Mild Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.workb=='3'}"> <c:out value="Moderate Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.workb=='4'}"> <c:out value="Severe Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.workb=='5'}"> <c:out value="Unable"></c:out></c:if> </td></tr>
	     <tr><td style= "border:1px solid;">4.Spending your usual amount of time doing your work?</td><td style= "border:1px solid;" align="center">
	      <c:if test="${oswestrydetails.instrumentb=='1'}"> <c:out value="No Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentb=='2'}"> <c:out value="Mild Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentb=='3'}"> <c:out value="Moderate Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentb=='4'}"> <c:out value="Severe Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentb=='5'}"> <c:out value="Unable"></c:out></c:if> </td></tr>
	     </table>
	     <br>
	     <p><B>SPORTS/PERFORMING ARTS MODULE(OPTIONAL)</B><br></br>
	     The following questions relate to the impact of your arm,shoulder or hand problem on playing your musical instrument oro sport or both.If you play more than one sport or instrument(or play both),please answer with respect to that activity which is most important to you.</br></br>
	     Please indicate the sport or instrument which is most important to you:<c:out value="${oswestrydetails.sport}"/><br></br>
	     <c:out value="${oswestrydetails.sportoptional}"/> 
	     <br><br>
	     <b>Please circle the number that best describes your physical ability in the past week.</b>
	     </p>
	     <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="200" ><b>Did you have any difficulty:</b></td><td width="150"></td></tr>
	    
	    
	     <tr><td style= "border:1px solid;">1.Using your usual technique for playing your instrument or sport?</td>
	     <td style= "border:1px solid;"><c:if test="${oswestrydetails.instrument=='1'}"> <c:out value="No Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrument=='2'}"> <c:out value="Mild Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrument=='3'}"> <c:out value="Moderate Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrument=='4'}"> <c:out value="Severe Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrument=='5'}"> <c:out value="Unable"></c:out></c:if> 
	     </td></tr>
	     
	     <tr><td style= "border:1px solid;">2.Playing your musical instrument or sport because of arm,shoulder or hand pain?</td>
	     <td style= "border:1px solid;" align="center">
	     <c:if test="${oswestrydetails.instrumenta=='1'}"> <c:out value="No Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumenta=='2'}"> <c:out value="Mild Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumenta=='3'}"> <c:out value="Moderate Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumenta=='4'}"> <c:out value="Severe Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumenta=='5'}"> <c:out value="Unable"></c:out></c:if> 
	     </td></tr>
	     
	     <tr><td style= "border:1px solid;">3.Playing your musical instrument or sport as well as you would like?</td>
	     <td style= "border:1px solid;" align="center">
	     <c:if test="${oswestrydetails.instrumentb=='1'}"> <c:out value="No Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentb=='2'}"> <c:out value="Mild Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentb=='3'}"> <c:out value="Moderate Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentb=='4'}"> <c:out value="Severe Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentb=='5'}"> <c:out value="Unable"></c:out></c:if> 
	     </td></tr>
	     <tr><td style= "border:1px solid;">4.Spending your usual amount of time practicing or playing your instrument or sport?</td>
	     <td style= "border:1px solid;" align="center">
	     <c:if test="${oswestrydetails.instrumentc=='1'}"> <c:out value="No Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentc=='2'}"> <c:out value="Mild Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentc=='3'}"> <c:out value="Moderate Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentc=='4'}"> <c:out value="Severe Difficulty"></c:out></c:if>
	     <c:if test="${oswestrydetails.instrumentc=='5'}"> <c:out value="Unable"></c:out></c:if> 
	     </td></tr>
	     </table>
	     <br>   
	   <br>
	    <br>
	    <br>
	   
	     <table align="right"><tr><td> <a href="viewoswestryindex" style="color: white" class="submit_btn">Cancel</a></td></tr></table>>
	    
           
           
           
          
             
           </br>
           </br>
           
          
         
        
         
         </div></td></tr></table></div></div>
         
            
	    </div></div>
         
         
        
         
         
         
         </div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            