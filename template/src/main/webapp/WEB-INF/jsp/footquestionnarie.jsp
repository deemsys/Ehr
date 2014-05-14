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
<!-- <script>
  $(window).load(function(){
$("#security").keyup(function() {
	 $("#number").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	//var intRegex = /^\d+$/;
	var a= /^[0-9]{3}[-\s\.]{0,1}[0-9]{2}[-\s\.]{0,1}[0-9]{4}$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#number").html('Kindly enter a number!!!!');
		}
}).keydown(function() {
    oldValue = $(this).val();
})
});
</script> -->

<script>
i=0;
$(document).ready(function(){
  $("#security").keypress(function(){
var phone=document.getElementById("security").value;
phone = phone.replace(/(\d{3})(\d{2})(\d+)/, '$1-$2-$3');
document.getElementById("security").value=phone;
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
   
     
  <script>

	function checkSubmit()
	{
		document.getElementById("datepickererror").innerHTML=" ";
		
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
document.getElementById("securityerror").innerHTML=" ";
		
		if(document.getElementById("security").value=="")
		{
		document.getElementById("securityerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		/* document.getElementById("securityerror").innerHTML="";
		if(isNaN(document.getElementById("security").value))
		{
		document.getElementById("securityerror").innerHTML="Enter Only Numbers";
		return false;
		} */
		document.getElementById("securityerror").innerHTML="";
		if(isNaN(document.getElementById("security").value))
		{
		document.getElementById("securityerror").innerHTML="Enter Only Numbers";
		return false;
		}
	}

	</script>

</head>
<body>
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">&nbsp;2</a></li>
    <li><a href="#tabs-3">&nbsp;3</a></li>    
  </ul>  
	<form action="footquestionnarie" method="POST">
	    <c:choose>
            <c:when test="${empty fquestionnarie}">
             <div id="tabs-1">
	     
                 
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            FOOT AND ANKLE QUESTIONNAIRE</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	      <P style="font-size: 15px"><b>Please answer the following questions for the foot/ankle being treated or followed up.If it is BOTH feet/ankles,please answer the questions for your worse side.All questions are about how you have felt,on average,during the past week,If you are being treated for an injury that happened less than one week ago,please answer for the period since your injury.</b></P>
	     </br>
	     <p style="font-size: 15px"><b>1.During the past week,how stiff was your foot/ankle?</b></p>
	     <table><tr><td width="100"><input type="radio" name="stiff" value="Not at all">Not at all</td>
	     <td width="100"><input type="radio" name="stiff" value="Mildly">Mildly</td>
	     <td width="100"><input type="radio" name="stiff" value="Moderately">Moderately</td>
	     <td width="100"><input type="radio" name="stiff" value="Very">Very</td>
	     <td><input type="radio" name="stiff" value="Extremely">Extremely</td>
	     
	     </tr></table>
	     <br>
	     <p style="font-size: 15px"><b>&nbsp;2.During the past week,how swollen was your foot/ankle?</b></p>
	     <table><tr><td width="100"><input type="radio" name="swollen" value="Not at all">Not at all</td>
	     <td width="100"><input type="radio" name="swollen" value="Mildly">Mildly</td>
	     <td width="100"><input type="radio" name="swollen" value="Moderately">Moderately</td>
	     <td width="100"><input type="radio" name="swollen" value="Very">Very</td>
	     <td width="100"><input type="radio" name="swollen" value="Extremely">Extremely</td>	     
	     </tr></table>
	     <br>
	     <P style="font-size: 15px"><b>The following instructions are for questions 3-5.</b></P>
	     <p>During the past week,please tell us about how painful your foot/ankle were during the following activities.</p>
	     <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="200" style= "border:2px solid;"></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="130" valign="top" style= "border:2px solid;"><b>Could not do because of foot/ankle pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;3.Walking on uneven surfaces?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="unevensurface">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="unevensurface">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="unevensurface">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="unevensurface">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="unevensurface">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="unevensurface">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="unevensurface">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;4.Walking on flat surfaces?</b></td><td style= "border:1px solid;" align="center"> <input type="radio" value="1" name="flatsurface">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="flatsurface">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="flatsurface">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="flatsurface">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="flatsurface">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="flatsurface">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="flatsurface">&nbsp;7</td></tr>
	     
	     <tr><td style= "border:1px solid;"><b>&nbsp;5.Going up or downstairs?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="updownstairs">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="updownstairs">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="updownstairs">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="updownstairs">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="updownstairs">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="updownstairs">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="updownstairs">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;6.Lying in bed at night?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="lyinginbed">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="lyinginbed">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="lyinginbed">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="lyinginbed">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="lyinginbed">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="lyinginbed">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="lyinginbed">&nbsp;7</td></tr>
	     </table>
	     <br>
	     <P style="font-size: 15px"><b>During the past week ,did your foot/ankle give way during the following activities.</b></P>
        
<br>
<table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="260" style= "border:2px solid;"></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Did not give way at all</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Partially gave way,but I did not fall</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Completely gave way,so that I fell</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Could not do the activity because of foot/ankle giving way</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;7.Sternuous activity ,such as heavy physical work,skiing,tennis?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="sternous">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="sternous">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="sternous">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="sternous">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="sternous">&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;8.Moderate activity,such as moderate physical work,jogging,running?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="moderateactivity">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="moderateactivity">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="moderateactivity">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="moderateactivity">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="moderateactivity">&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;" ><b>&nbsp;9.Light activity ,such as walking ,house work,yard work?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="lightactivity">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="lightactivity">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="lightactivity">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="lightactivity">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="lightactivity">&nbsp;5</td></tr>
	     </table>
	     <p><b>&nbsp;10.Which  of the following statements best describes your ability to get around most of the time during the past week?</b></p>
              <table cellpadding="0" cellspacing="0" border="0" width="100%" >
              <tr><td><input type="radio" name="best" value="I did not need support or assitance at all.">I did not need support or assitance at all.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly walked without support or assitance.">I mostly walked without support or assitance.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used one cane or crutch to help me get around.">I mostly used one cane or crutch to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used two canes, two crutches or a walker to help me get around.">I mostly used two canes, two crutches or a walker to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I used a wheelchair.">I used a wheelchair.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used other supports or someone else had to help me get around.">I mostly used other supports or someone else had to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I was unable to get around at all.">I was unable to get around at all.</td></tr>
              </table>
              </div>
              </div>
              </td>
              </tr>
              </table>
              </div>
              </div>
       <div id="tabs-2">     
        <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            FOOT AND ANKLE QUESTIONNAIRE</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
          
          
              <br>
              <p><b>&nbsp;11.How much trouble did you have with balance during the past week?</b></p>
              <table><tr><td width="150"><input type="radio" name="trouble" value="No trouble at all">No at all difficult</td><td width="150"><input type="radio" name="trouble" value="A little bit of trouble">A little bit of trouble</td><td width="180"><input type="radio" name="trouble" value="A moderate amount of trouble">A moderate amount of trouble</td><td width="150"><input type="radio" name="trouble" value="Quite a bit of trouble">Quite a bit of trouble</td><td width="150"><input type="radio" name="trouble" value="A great amount of trouble">A great amount of trouble</td>&nbsp;&nbsp;<td><input type="radio" name="trouble" value="I cannot balance on my feet all">I cannot balance on my feet all</td></tr></table>     
	          <p><b>&nbsp;12.How difficult was it for you to put on or take off socks/stockings during the past week?</b></p>
        <table><tr><td width="150"><input type="radio" name="socks" value="Not at all difficult">Not at all difficult</td><td width="150"><input type="radio" name="socks" value="Slightly difficult">Slightly difficult</td><td width="150"><input type="radio" name="socks" value="Moderately difficult">Moderately difficult</td><td width="150"><input type="radio" name="socks" value="Very difficult">Very difficult</td><td width="150"><input type="radio" name="socks" value="Extremely difficult">Extremely difficult</td><td><input type="radio" name="socks" value="Cannot do it all">Cannot do it all</td></tr></table>     
	    <br>
	    <p><b>All questions are about how you have on average during the past week.</b></p>
	    <p>During the past week,please tell us about how painful your foot or ankle was when you were performing the following activities.</p>
           </br>
         <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="200" style= "border:2px solid;"></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="130" valign="top" style= "border:2px solid;"><b>Could not do because of foot/ankle pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;13.Sternuous activity ,such as heavy physical work,sking,tennis?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="heavywork">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="heavywork">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="heavywork">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="heavywork">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="heavywork">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="heavywork">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="heavywork">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;14.Moderate activity ,such as moderate physical work jogging ,running</b></td><td style= "border:1px solid;" align="center"> <input type="radio" value="1" name="jogging">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="jogging">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="jogging">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="jogging">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="jogging">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="jogging">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="jogging">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;15.Light activity such as walking ,house work,yard work?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="walking">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="walking">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="walking">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="walking">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="walking">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="walking">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="walking">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;16.Standing for an hour</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="stand">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="stand">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="stand">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="stand">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="stand">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="stand">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="stand">&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;17.Standing for a few minutes</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="fewminutes">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="fewminutes">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="fewminutes">&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="fewminutes">&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="fewminutes">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="fewminutes">&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="fewminutes">&nbsp;7</td></tr>
	     </table>
	     <br>
         <p><b>&nbsp;18.How much difficulty do you have walking on uneven surfaces(eg:Small stones,rocks,sloping ground)</b></p>
              <table cellpadding="0" cellspacing="0" border="0" width="100%" >
              <tr><td><input type="radio" name="difficulty" value="No difficulty">No difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Mild difficulty">Mild difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Moderate difficulty">Moderate difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Severe difficulty">Severe difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Extreme difficulty">Extreme difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Cannot do because of foot/ankle">Cannot do because of foot/ankle</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Cannot do for other reasons">Cannot do for other reasons</td></tr>
              </table>
          <p><b>&nbsp;What types of shoes can you wear comfortably?</b></p>  
          
         <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="250" style= "border:2px solid;"></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>Yes</b></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>No</b></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>Not Applicable</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;19.Any women's shoe (including high heels)OR any men's shoe (including fancy dress shoe) </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="women">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="women">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="women">&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;20.Most women's dress shoes(except high heels)OR most means dress shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="dress">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="dress">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="dress">&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;21.Sneakers,walking,or casual shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="shoes">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="shoes">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="shoes">&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;22.Orthopedic or prescription shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="orthopedic">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="orthopedic">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="orthopedic">&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;23.All shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="allversion">&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="allversion">&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="allversion">&nbsp;3</td></tr>
	     </table>
        <p><b>&nbsp;24.How much did your foot or ankle problem interfere with your normal work ,including work both outside the home and house work?</b></p>
              <table><tr><td width="150"><input type="radio" name="foot" value="Not at all">Not at all</td><td width="150"><input type="radio" name="foot" value="A little bit">A little bit </td><td width="180"><input type="radio" name="foot" value="Moderately">Moderately </td><td width="150"><input type="radio" name="foot" value="Quite a bit">Quite a bit</td><td width="150"><input type="radio" name="foot" value="Extremely">Extremely</td>&nbsp;&nbsp;<td><input type="radio" name="foot" value="Unable to work due to foot and ankle problems">Unable to work due to foot and ankle problems</td></tr></table>     
	          <p><b>&nbsp;25.How much did your foot or ankle problem interfere with your life and your ability to do what you want?</b></p>
        <table><tr><td width="150"><input type="radio" name="ankle" value="Not at all">Not at all</td><td width="150"><input type="radio" name="ankle" value="A little bit">A little bit </td><td width="180"><input type="radio" name="ankle" value="Moderately">Moderately </td><td width="150"><input type="radio" name="ankle" value="Quite a bit">Quite a bit</td><td width="150"><input type="radio" name="ankle" value="Extremely">Extremely</td>&nbsp;&nbsp;<td><input type="radio" name="ankle" value="Unable to work due to foot and ankle problems">Unable to work due to foot and ankle problems</td></tr></table>     
	    </div>
	    </div>
	    </td>
	    </tr>
	    </table>
	    </div>
	    </div>
 <div id="tabs-3">     
    <div id="right_content">
	    <table cellpadding="0" cellspacing="0" border="0" width="100%"  class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            FOOT AND ANKLE QUESTIONNAIRE</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
	    <span class="err">*</span>Today's Date <input type="text" name="date" id="datepicker"><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Footquestionnarie.date"></form:errors></span>
	    <br>
	    <br>
	    
	    <p>Thank you for completing this questionnaire!	 </br></br>
	    This questionnaire will help us to better understand your general health and any problems related to bone and muscle conditions.
	    <br>
	    Your completion of this questionnaire is completely voluntary and your responses will be held in the strictest confidence.
	    </br>
	    </br>
	    There are no right or wrong answers.If you are not sure how to answer a question,just give the best answer you can.You can make comments in the margin.We do read all your comments,so feel free to make as many you wish.
	    </br>
	    </br>
	       </p>
	    Your Birth Date  <input type="date"  name="birthdate">
	    <br><br>
	    <table>
	    <td>Your Social Security Number </td><td><input type="text" name="security" id="security" maxlength="11"></td><td><span id="securityerror" style="color: red;font-style:italic;"> <div id="number"></span></td></div></table>
	    <br>
	    <br>
	    <br>
	    <table width="100%" height="150"><tr><Td></Td></tr></table>
	    <table align="right"><tr><td >
	    
	     <input class="submit_btn" type="submit" value="Save" ></td>
	     <td><input class="submit_btn" type="reset" value="Cancel" >
	    </td></tr></table>
	    </div>
	    </div>
	    </td>
	    </tr>
	    </table>
	    </div>
	    </div>
	    </c:when>
	    <c:otherwise>
	    <div id="tabs-1">
	       
	      <div id="right_content">
 <div>
         <div class="headings altheading">
	            <center> <h2>
	            FOOT AND ANKLE QUESTIONNAIRE</h2></center><br/>
	             
	            </div>
	    <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">         
	     <div class="contentbox">
	      <P style="font-size: 15px"><b>Please answer the following questions for the foot/ankle being treated or followed up.If it is BOTH feet/ankles,please answer the questions for your worse side.All questions are about how you have felt,on average,during the past week,If you are being treated for an injury that happened less than one week ago,please answer for the period since your injury.</b></P>
	     </br>
	     <p style="font-size: 15px"><b>1.During the past week,how stiff was your foot/ankle?</b></p>
	     <table><tr><td width="100"><input type="radio" name="stiff" value="Not at all" <c:if test="${fquestionnarie.stiff=='Not at all'}"> <c:out value="checked"></c:out></c:if>>Not at all</td>
	     <td width="100"><input type="radio" name="stiff" value="Mildly" <c:if test="${fquestionnarie.stiff=='Mildly'}"> <c:out value="checked"></c:out></c:if>>Mildly</td>
	     <td width="100"><input type="radio" name="stiff" value="Moderately" <c:if test="${fquestionnarie.stiff=='Moderately'}"> <c:out value="checked"></c:out></c:if>>Moderately</td>
	     <td width="100"><input type="radio" name="stiff" value="Very" <c:if test="${fquestionnarie.stiff=='Very'}"> <c:out value="checked"></c:out></c:if>>Very</td>
	     <td><input type="radio" name="stiff" value="Extremely" <c:if test="${fquestionnarie.stiff=='Extremely'}"> <c:out value="checked"></c:out></c:if>>Extremely</td>
	     
	     </tr></table>
	     <br>
	     <p style="font-size: 15px"><b>&nbsp;2.During the past week,how swollen was your foot/ankle?</b></p>
	     <table><tr><td width="100"><input type="radio" name="swollen" value="Not at all" <c:if test="${fquestionnarie.swollen=='Not at all'}"> <c:out value="checked"></c:out></c:if>>Not at all</td>
	     <td width="100"><input type="radio" name="swollen" value="Mildly" <c:if test="${fquestionnarie.swollen=='Mildly'}"> <c:out value="checked"></c:out></c:if>>Mildly</td>
	     <td width="100"><input type="radio" name="swollen" value="Moderately" <c:if test="${fquestionnarie.swollen=='Moderately'}"> <c:out value="checked"></c:out></c:if>>Moderately</td>
	     <td width="100"><input type="radio" name="swollen" value="Very" <c:if test="${fquestionnarie.swollen=='Very'}"> <c:out value="checked"></c:out></c:if>>Very</td>
	     <td width="100"><input type="radio" name="swollen" value="Extremely" <c:if test="${fquestionnarie.swollen=='Extremely'}"> <c:out value="checked"></c:out></c:if>>Extremely</td>	     
	     </tr></table>
	     <br>
	     <P style="font-size: 15px"><b>The following instructions are for questions 3-5.</b></P>
	     <p>During the past week,please tell us about how painful your foot/ankle were during the following activities.</p>
	     <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="200" style= "border:2px solid;"></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="130" valign="top" style= "border:2px solid;"><b>Could not do because of foot/ankle pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;3.Walking on uneven surfaces?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="unevensurface" <c:if test="${fquestionnarie.unevensurface=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="unevensurface" <c:if test="${fquestionnarie.unevensurface=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="unevensurface" <c:if test="${fquestionnarie.unevensurface=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="unevensurface" <c:if test="${fquestionnarie.unevensurface=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="unevensurface" <c:if test="${fquestionnarie.unevensurface=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="unevensurface" <c:if test="${fquestionnarie.unevensurface=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="unevensurface" <c:if test="${fquestionnarie.unevensurface=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;4.Walking on flat surfaces?</b></td><td style= "border:1px solid;" align="center"> <input type="radio" value="1" name="flatsurface" <c:if test="${fquestionnarie.flatsurface=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="flatsurface" <c:if test="${fquestionnarie.flatsurface=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="flatsurface" <c:if test="${fquestionnarie.flatsurface=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="flatsurface" <c:if test="${fquestionnarie.flatsurface=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="flatsurface" <c:if test="${fquestionnarie.flatsurface=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="flatsurface" <c:if test="${fquestionnarie.flatsurface=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="flatsurface" <c:if test="${fquestionnarie.flatsurface=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     
	     <tr><td style= "border:1px solid;"><b>&nbsp;5.Going up or downstairs?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="updownstairs" <c:if test="${fquestionnarie.updownstairs=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="updownstairs" <c:if test="${fquestionnarie.updownstairs=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="updownstairs" <c:if test="${fquestionnarie.updownstairs=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="updownstairs" <c:if test="${fquestionnarie.updownstairs=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="updownstairs" <c:if test="${fquestionnarie.updownstairs=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="updownstairs" <c:if test="${fquestionnarie.updownstairs=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="updownstairs" <c:if test="${fquestionnarie.updownstairs=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;6.Lying in bed at night?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="lyinginbed" <c:if test="${fquestionnarie.lyinginbed=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="lyinginbed" <c:if test="${fquestionnarie.lyinginbed=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="lyinginbed" <c:if test="${fquestionnarie.lyinginbed=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="lyinginbed" <c:if test="${fquestionnarie.lyinginbed=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="lyinginbed" <c:if test="${fquestionnarie.lyinginbed=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="lyinginbed" <c:if test="${fquestionnarie.lyinginbed=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="lyinginbed" <c:if test="${fquestionnarie.lyinginbed=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     </table>
	     <br>
	     <P style="font-size: 15px"><b>During the past week ,did your foot/ankle give way during the following activities.</b></P>
        
<br>
<table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="260" style= "border:2px solid;"></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Did not give way at all</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Partially gave way,but I did not fall</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Completely gave way,so that I fell</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Could not do the activity because of foot/ankle giving way</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;7.Sternuous activity ,such as heavy physical work,skiing,tennis?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="sternous" <c:if test="${fquestionnarie.sternous=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="sternous" <c:if test="${fquestionnarie.sternous=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="sternous" <c:if test="${fquestionnarie.sternous=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="sternous" <c:if test="${fquestionnarie.sternous=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="sternous" <c:if test="${fquestionnarie.sternous=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;8.Moderate activity,such as moderate physical work,jogging,running?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="moderateactivity" <c:if test="${fquestionnarie.moderateactivity=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="moderateactivity" <c:if test="${fquestionnarie.moderateactivity=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="moderateactivity" <c:if test="${fquestionnarie.moderateactivity=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="moderateactivity" <c:if test="${fquestionnarie.moderateactivity=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="moderateactivity" <c:if test="${fquestionnarie.moderateactivity=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;" ><b>&nbsp;9.Light activity ,such as walking ,house work,yard work?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="lightactivity" <c:if test="${fquestionnarie.lightactivity=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="lightactivity" <c:if test="${fquestionnarie.lightactivity=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="lightactivity" <c:if test="${fquestionnarie.lightactivity=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="lightactivity" <c:if test="${fquestionnarie.lightactivity=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="lightactivity" <c:if test="${fquestionnarie.lightactivity=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td></tr>
	     </table>
	     <p><b>&nbsp;10.Which  of the following statements best describes your ability to get around most of the time during the past week?</b></p>
              <table cellpadding="0" cellspacing="0" border="0" width="100%" >
              <tr><td><input type="radio" name="best" value="I did not need support or assitance at all." <c:if test="${fquestionnarie.best=='I did not support or assistance at all.'}"> <c:out value="checked"></c:out></c:if>>I did not need support or assitance at all.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly walked without support or assitance." <c:if test="${fquestionnarie.best=='I mostly walked without support or assitance.'}"> <c:out value="checked"></c:out></c:if>>I mostly walked without support or assitance.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used one cane or crutch to help me get around." <c:if test="${fquestionnarie.best=='I mostly used one cane or crutch to help me get around.'}"> <c:out value="checked"></c:out></c:if>>I mostly used one cane or crutch to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used two canes, two crutches or a walker to help me get around." <c:if test="${fquestionnarie.best=='I mostly used two canes, two crutches or a walker to help me get around.'}"> <c:out value="checked"></c:out></c:if>>I mostly used two canes, two crutches or a walker to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I used a wheelchair." <c:if test="${fquestionnarie.best=='I used a wheelchair'}"> <c:out value="checked"></c:out></c:if>>I used a wheelchair.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used other supports or someone else had to help me get around." <c:if test="${fquestionnarie.best=='I mostly used other supports or someone else had to help me get around.'}"> <c:out value="checked"></c:out></c:if>>I mostly used other supports or someone else had to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I was unable to get around at all." <c:if test="${fquestionnarie.best=='I was unable to get around at all.'}"> <c:out value="checked"></c:out></c:if>>I was unable to get around at all.</td></tr>
              </table>
              </div>
              </td>
              </tr>
              </table>
              </div>
              </div>
              </div>
     <div id="tabs-2">     

	    <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
          <div class="headings altheading">
	            <center> <h2>
	            FOOT AND ANKLE QUESTIONNAIRE</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
          
          
              <br>
              <p><b>&nbsp;11.How much trouble did you have with balance during the past week?</b></p>
              <table><tr><td width="150"><input type="radio" name="trouble" value="No trouble at all" <c:if test="${fquestionnarie.trouble=='No trouble at all'}"> <c:out value="checked"></c:out></c:if>>No trouble at all</td><td width="150"><input type="radio" name="trouble" value="A little bit of trouble" <c:if test="${fquestionnarie.trouble=='A little bit of trouble'}"> <c:out value="checked"></c:out></c:if>>A little bit of trouble</td><td width="180"><input type="radio" name="trouble" value="A moderate amount of trouble" <c:if test="${fquestionnarie.trouble=='A moderate amount of trouble'}"> <c:out value="checked"></c:out></c:if>>A moderate amount of trouble</td><td width="150"><input type="radio" name="trouble" value="Quite a bit of trouble" <c:if test="${fquestionnarie.trouble=='Quite a bit of trouble'}"> <c:out value="checked"></c:out></c:if>>Quite a bit of trouble</td><td width="150"><input type="radio" name="trouble" value="A great amount of trouble" <c:if test="${fquestionnarie.trouble=='A great amount of trouble'}"> <c:out value="checked"></c:out></c:if>>A great amount of trouble</td>&nbsp;&nbsp;<td><input type="radio" name="trouble" value="I cannot balance on my feet all" <c:if test="${fquestionnarie.trouble=='I cannot balance on my feet all'}"> <c:out value="checked"></c:out></c:if>>I cannot balance on my feet all</td></tr></table>     
	          <p><b>&nbsp;12.How difficult was it for you to put on or take off socks/stockings during the past week?</b></p>
        <table><tr><td width="150"><input type="radio" name="socks" value="Not at all difficult" <c:if test="${fquestionnarie.socks=='Not at all difficult'}"> <c:out value="checked"></c:out></c:if>>Not at all difficult</td><td width="150"><input type="radio" name="socks" value="Slightly difficult" <c:if test="${fquestionnarie.socks=='Slightly difficult'}"> <c:out value="checked"></c:out></c:if>>Slightly difficult</td><td width="150"><input type="radio" name="socks" value="Moderately difficult" <c:if test="${fquestionnarie.socks=='Moderately difficult'}"> <c:out value="checked"></c:out></c:if>>Moderately difficult</td><td width="150"><input type="radio" name="socks" value="Very difficult" <c:if test="${fquestionnarie.socks=='Very difficult'}"> <c:out value="checked"></c:out></c:if>>Very difficult</td><td width="150"><input type="radio" name="socks" value="Extremely difficult" <c:if test="${fquestionnarie.socks=='Extremely difficult'}"> <c:out value="checked"></c:out></c:if>>Extremely difficult</td><td><input type="radio" name="socks" value="Cannot do it all" <c:if test="${fquestionnarie.socks=='Cannot do it all'}"> <c:out value="checked"></c:out></c:if>>Cannot do it all</td></tr></table>     
	    <br>
	    <p><b>All questions are about how you have on average during the past week.</b></p>
	    <p>During the past week,please tell us about how painful your foot or ankle was when you were performing the following activities.</p>
           </br>
         <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="200" style= "border:2px solid;"></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="130" valign="top" style= "border:2px solid;"><b>Could not do because of foot/ankle pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;13.Sternuous activity ,such as heavy physical work,sking,tennis?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="heavywork" <c:if test="${fquestionnarie.heavywork=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="heavywork" <c:if test="${fquestionnarie.heavywork=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="heavywork" <c:if test="${fquestionnarie.heavywork=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="heavywork" <c:if test="${fquestionnarie.heavywork=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="heavywork" <c:if test="${fquestionnarie.heavywork=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="heavywork" <c:if test="${fquestionnarie.heavywork=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="heavywork" <c:if test="${fquestionnarie.heavywork=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;14.Moderate activity ,such as moderate physical work jogging ,running</b></td><td style= "border:1px solid;" align="center"> <input type="radio" value="1" name="jogging" <c:if test="${fquestionnarie.jogging=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="jogging" <c:if test="${fquestionnarie.jogging=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="jogging" <c:if test="${fquestionnarie.jogging=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="jogging" <c:if test="${fquestionnarie.jogging=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="jogging">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="jogging" <c:if test="${fquestionnarie.jogging=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="jogging" <c:if test="${fquestionnarie.jogging=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;15.Light activity such as walking ,house work,yard work?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="walking" <c:if test="${fquestionnarie.walking=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="walking" <c:if test="${fquestionnarie.walking=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="walking" <c:if test="${fquestionnarie.walking=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="walking" <c:if test="${fquestionnarie.walking=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="walking" <c:if test="${fquestionnarie.walking=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="walking" <c:if test="${fquestionnarie.walking=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="walking" <c:if test="${fquestionnarie.walking=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;16.Standing for an hour</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="stand" <c:if test="${fquestionnarie.stand=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="stand" <c:if test="${fquestionnarie.stand=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="stand" <c:if test="${fquestionnarie.stand=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="stand" <c:if test="${fquestionnarie.stand=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="stand" <c:if test="${fquestionnarie.stand=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="stand" <c:if test="${fquestionnarie.stand=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="stand" <c:if test="${fquestionnarie.stand=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;17.Standing for a few minutes</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="fewminutes" <c:if test="${fquestionnarie.fewminutes=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="fewminutes" <c:if test="${fquestionnarie.fewminutes=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="fewminutes" <c:if test="${fquestionnarie.fewminutes=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="fewminutes" <c:if test="${fquestionnarie.fewminutes=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="fewminutes" <c:if test="${fquestionnarie.fewminutes=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="fewminutes" <c:if test="${fquestionnarie.fewminutes=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="fewminutes" <c:if test="${fquestionnarie.fewminutes=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     </table>
	     <br>
         <p><b>&nbsp;18.How much difficulty do you have walking on uneven surfaces(eg:Small stones,rocks,sloping ground)</b></p>
              <table cellpadding="0" cellspacing="0" border="0" width="100%" >
              <tr><td><input type="radio" name="difficulty" value="No difficulty" <c:if test="${fquestionnarie.difficulty=='No difficulty'}"> <c:out value="checked"></c:out></c:if>>No difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Mild difficulty" <c:if test="${fquestionnarie.difficulty=='Mild difficulty'}"> <c:out value="checked"></c:out></c:if>>Mild difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Moderate difficulty" <c:if test="${fquestionnarie.difficulty=='Moderate difficulty'}"> <c:out value="checked"></c:out></c:if>>Moderate difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Severe difficulty" <c:if test="${fquestionnarie.difficulty=='Severe difficulty'}"> <c:out value="checked"></c:out></c:if>>Severe difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Extreme difficulty" <c:if test="${fquestionnarie.difficulty=='Extreme difficulty'}"> <c:out value="checked"></c:out></c:if>>Extreme difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Cannot do because of foot/ankle" <c:if test="${fquestionnarie.difficulty=='Cannot do because of foot/ankle'}"> <c:out value="checked"></c:out></c:if>>Cannot do because of foot/ankle</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Cannot do for other reasons" <c:if test="${fquestionnarie.difficulty=='Cannot do for other reasons'}"> <c:out value="checked"></c:out></c:if>>Cannot do for other reasons</td></tr>
              </table>
          <p><b>&nbsp;What types of shoes can you wear comfortably?</b></p>  
          
         <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="250" style= "border:2px solid;"></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>Yes</b></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>No</b></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>Not Applicable</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;19.Any women's shoe (including high heels)OR any men's shoe (including fancy dress shoe) </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="women" <c:if test="${fquestionnarie.women=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="women" <c:if test="${fquestionnarie.women=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="women" <c:if test="${fquestionnarie.women=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;20.Most women's dress shoes(except high heels)OR most means dress shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="dress" <c:if test="${fquestionnarie.dress=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="dress" <c:if test="${fquestionnarie.dress=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="dress" <c:if test="${fquestionnarie.dress=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;21.Sneakers,walking,or casual shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="shoes" <c:if test="${fquestionnarie.shoes=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="shoes" <c:if test="${fquestionnarie.shoes=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="shoes" <c:if test="${fquestionnarie.shoes=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;22.Orthopedic or prescription shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="orthopedic" <c:if test="${fquestionnarie.orthopedic=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="orthopedic" <c:if test="${fquestionnarie.orthopedic=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="orthopedic" <c:if test="${fquestionnarie.orthopedic=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;23.All shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="allversion" <c:if test="${fquestionnarie.allversion=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="allversion" <c:if test="${fquestionnarie.allversion=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="allversion" <c:if test="${fquestionnarie.allversion=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     </table>
        <p><b>&nbsp;24.How much did your foot or ankle problem interfere with your normal work ,including work both outside the home and house work?</b></p>
              <table><tr><td width="150"><input type="radio" name="foot" value="Not at all" <c:if test="${fquestionnarie.foot=='Not at all'}"> <c:out value="checked"></c:out></c:if>>Not at all</td><td width="150"><input type="radio" name="foot" value="A little bit" <c:if test="${fquestionnarie.foot=='A little bit'}"> <c:out value="checked"></c:out></c:if>>A little bit </td><td width="180"><input type="radio" name="foot" value="Moderately" <c:if test="${fquestionnarie.foot=='Moderately'}"> <c:out value="checked"></c:out></c:if>>Moderately </td><td width="150"><input type="radio" name="foot" value="Quite a bit" <c:if test="${fquestionnarie.foot=='Quite a bit'}"> <c:out value="checked"></c:out></c:if>>Quite a bit</td><td width="150"><input type="radio" name="foot" value="Extremely" <c:if test="${fquestionnarie.foot=='Extremely'}"> <c:out value="checked"></c:out></c:if>>Extremely</td>&nbsp;&nbsp;<td><input type="radio" name="foot" value="Unable to work due to foot and ankle problems" <c:if test="${fquestionnarie.foot=='Unable to work due to foot and ankle problems'}"> <c:out value="checked"></c:out></c:if>>Unable to work due to foot and ankle problems</td></tr></table>     
	          <p><b>&nbsp;25.How much did your foot or ankle problem interfere with your life and your ability to do what you want?</b></p>
        <table><tr><td width="150"><input type="radio" name="ankle" value="Not at all" <c:if test="${fquestionnarie.ankle=='Not at all'}"> <c:out value="checked"></c:out></c:if>>Not at all</td><td width="150"><input type="radio" name="ankle" value="A little bit" <c:if test="${fquestionnarie.ankle=='A little bit'}"> <c:out value="checked"></c:out></c:if>>A little bit </td><td width="180"><input type="radio" name="ankle" value="Moderately" <c:if test="${fquestionnarie.ankle=='Moderately'}"> <c:out value="checked"></c:out></c:if>>Moderately </td><td width="150"><input type="radio" name="ankle" value="Quite a bit" <c:if test="${fquestionnarie.ankle=='Quite a bit'}"> <c:out value="checked"></c:out></c:if>>Quite a bit</td><td width="150"><input type="radio" name="ankle" value="Extremely" <c:if test="${fquestionnarie.ankle=='Extremely'}"> <c:out value="checked"></c:out></c:if>>Extremely</td>&nbsp;&nbsp;<td><input type="radio" name="ankle" value="Unable to work due to foot and ankle problems" <c:if test="${fquestionnarie.ankle=='Unable to work due to foot and ankle problems'}"> <c:out value="checked"></c:out></c:if>>Unable to work due to foot and ankle problems</td></tr></table>     
	    </div>
	    </div>
	    </td>
	    </tr>
	    </table>
	    </div>
	    </div>
         
         <div id="tabs-3">     

	    <div id="right_content">
	    <table cellpadding="0" cellspacing="0" border="0" width="100%"  class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            FOOT AND ANKLE QUESTIONNAIRE</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
	    <span class="err">*</span>Today's Date <input type="text" name="date" id="datepicker" class="input_txtbx1" value="${fquestionnarie.date }"><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Footquestionnarie.date"></form:errors></span>
	    <br>
	    <br>
	    
	    <p>Thank you for completing this questionnaire!	 </br></br>
	    This questionnaire will help us to better understand your general health and any problems related to bone and muscle conditions.
	    <br>
	    Your completion of this questionnaire is completely voluntary and your responses will be held in the strictest confidence.
	    </br>
	    </br>
	    There are no right or wrong answers.If you are not sure how to answer a question,just give the best answer you can.You can make comments in the margin.We do read all your comments,so feel free to make as many you wish.
	    </br>
	    </br>
	       </p>
	    Your Birth Date  <input type="text"  name="birthdate"  class="input_txtbx1" value="${fquestionnarie.birthdate }">
	    <br><br>
	    <table>
	  <tr><td> Your Social Security Number</td> <td> <input type="text" name="security" id="security"  class="input_txtbx1" value="${fquestionnarie.security}" maxlength="11"></td><td><span class="err"><form:errors path="Footquestionnarie.security"></form:errors></span> <div id="number"></span></td></div></tr></table>
	  
	    
	    <br>
	    <br>
	    <br>
	    <table width="100%" height="150"><tr><Td></Td></tr></table>
	    <table align="right"><tr>
	    <td>
	    
	     <input class="submit_btn" type="submit" value="Save" onclick="return checkSubmit('this');" ></td>
	     <td><input class="submit_btn" type="reset" value="Cancel" >
	    </td></tr></table>
	     </div>
	     </div>
	     </td>
	     </tr>
	     </table>
	     </div>
	     </div>
	    </c:otherwise>
	    </c:choose>
	    </form>
	    </div>
	    </body>
	    </html>
	     
	    
	    