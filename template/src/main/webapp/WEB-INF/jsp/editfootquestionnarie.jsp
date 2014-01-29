<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
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
    <li><a href="#tabs-3">&nbsp;3</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="updatefootquestionnarie" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            FOOT AND ANKLE QUESTIONNAIRE</h2></center><br/>
	            
	            </div>
	     <c:set value="${footquestionnarieForm.footquestionnariedetails[0]}" var="footquestionnariedetails"/>      
	    <input type="hidden" name="footquestionno" value="${footquestionnariedetails.footquestionno }">
	     <div class="contentbox">
	      <P style="font-size: 15px"><b>Please answer the following questions for the foot/ankle being treated or followed up.If it is BOTH feet/ankles,please answer the questions for your worse side.All questions are about how you have felt,on average,during the past week,If you are being treated for an injury that happened less than one week ago,please answer for the period since your injury.</b></P>
	     </br>
	     <p style="font-size: 15px"><b>1.During the past week,how stiff was your foot/ankle?</b></p>
	     <table><tr><td width="100"><input type="radio" name="stiff" value="Not at all" <c:if test="${footquestionnariedetails.stiff=='Not at all'}"> <c:out value="checked"></c:out></c:if>>Not at all</td>
	     <td width="100"><input type="radio" name="stiff" value="Mildly" <c:if test="${footquestionnariedetails.stiff=='Mildly'}"> <c:out value="checked"></c:out></c:if>>Mildly</td>
	     <td width="100"><input type="radio" name="stiff" value="Moderately" <c:if test="${footquestionnariedetails.stiff=='Moderately'}"> <c:out value="checked"></c:out></c:if>>Moderately</td>
	     <td width="100"><input type="radio" name="stiff" value="Very" <c:if test="${footquestionnariedetails.stiff=='Very'}"> <c:out value="checked"></c:out></c:if>>Very</td>
	     <td><input type="radio" name="stiff" value="Extremely" <c:if test="${footquestionnariedetails.stiff=='Extremely'}"> <c:out value="checked"></c:out></c:if>>Extremely</td>
	     
	     </tr></table>
	     <br>
	     <p style="font-size: 15px"><b>&nbsp;2.During the past week,how swollen was your foot/ankle?</b></p>
	     <table><tr><td width="100"><input type="radio" name="swollen" value="Not at all" <c:if test="${footquestionnariedetails.swollen=='Not at all'}"> <c:out value="checked"></c:out></c:if>>Not at all</td>
	     <td width="100"><input type="radio" name="swollen" value="Mildly" <c:if test="${footquestionnariedetails.swollen=='Mildly'}"> <c:out value="checked"></c:out></c:if>>Mildly</td>
	     <td width="100"><input type="radio" name="swollen" value="Moderately" <c:if test="${footquestionnariedetails.swollen=='Moderately'}"> <c:out value="checked"></c:out></c:if>>Moderately</td>
	     <td width="100"><input type="radio" name="swollen" value="Very" <c:if test="${footquestionnariedetails.swollen=='Very'}"> <c:out value="checked"></c:out></c:if>>Very</td>
	     <td width="100"><input type="radio" name="swollen" value="Extremely" <c:if test="${footquestionnariedetails.swollen=='Extremely'}"> <c:out value="checked"></c:out></c:if>>Extremely</td>	     
	     </tr></table>
	     <br>
	     <P style="font-size: 15px"><b>The following instructions are for questions 3-5.</b></P>
	     <p>During the past week,please tell us about how painful your foot/ankle were during the following activities.</p>
	     <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="200" style= "border:2px solid;"></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="130" valign="top" style= "border:2px solid;"><b>Could not do because of foot/ankle pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;3.Walking on uneven surfaces?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="unevensurface" <c:if test="${footquestionnariedetails.unevensurface=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="unevensurface" <c:if test="${footquestionnariedetails.unevensurface=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="unevensurface" <c:if test="${footquestionnariedetails.unevensurface=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="unevensurface" <c:if test="${footquestionnariedetails.unevensurface=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="unevensurface" <c:if test="${footquestionnariedetails.unevensurface=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="unevensurface" <c:if test="${footquestionnariedetails.unevensurface=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="unevensurface" <c:if test="${footquestionnariedetails.unevensurface=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;4.Walking on flat surfaces?</b></td><td style= "border:1px solid;" align="center"> <input type="radio" value="1" name="flatsurface" <c:if test="${footquestionnariedetails.flatsurface=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="flatsurface" <c:if test="${footquestionnariedetails.flatsurface=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="flatsurface" <c:if test="${footquestionnariedetails.flatsurface=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="flatsurface" <c:if test="${footquestionnariedetails.flatsurface=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="flatsurface" <c:if test="${footquestionnariedetails.flatsurface=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="flatsurface" <c:if test="${footquestionnariedetails.flatsurface=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="flatsurface" <c:if test="${footquestionnariedetails.flatsurface=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     
	     <tr><td style= "border:1px solid;"><b>&nbsp;5.Going up or downstairs?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="updownstairs" <c:if test="${footquestionnariedetails.updownstairs=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="updownstairs" <c:if test="${footquestionnariedetails.updownstairs=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="updownstairs" <c:if test="${footquestionnariedetails.updownstairs=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="updownstairs" <c:if test="${footquestionnariedetails.updownstairs=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="updownstairs" <c:if test="${footquestionnariedetails.updownstairs=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="updownstairs" <c:if test="${footquestionnariedetails.updownstairs=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="updownstairs" <c:if test="${footquestionnariedetails.updownstairs=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;6.Lying in bed at night?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="lyinginbed" <c:if test="${footquestionnariedetails.lyinginbed=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="lyinginbed" <c:if test="${footquestionnariedetails.lyinginbed=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="lyinginbed" <c:if test="${footquestionnariedetails.lyinginbed=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="lyinginbed" <c:if test="${footquestionnariedetails.lyinginbed=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="lyinginbed" <c:if test="${footquestionnariedetails.lyinginbed=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="lyinginbed" <c:if test="${footquestionnariedetails.lyinginbed=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="lyinginbed" <c:if test="${footquestionnariedetails.lyinginbed=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     </table>
	     <br>
	     <P style="font-size: 15px"><b>During the past week ,did your foot/ankle give way during the following activities.</b></P>
        
<br>
<table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="260" style= "border:2px solid;"></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Did not give way at all</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Partially gave way,but I did not fall</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Completely gave way,so that I fell</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Could not do the activity because of foot/ankle giving way</b></td><td width="160" valign="top" style= "border:2px solid;" align="center"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;7.Sternuous activity ,such as heavy physical work,skiing,tennis?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="sternous" <c:if test="${footquestionnariedetails.sternous=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="sternous" <c:if test="${footquestionnariedetails.sternous=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="sternous" <c:if test="${footquestionnariedetails.sternous=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="sternous" <c:if test="${footquestionnariedetails.sternous=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="sternous" <c:if test="${footquestionnariedetails.sternous=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;8.Moderate activity,such as moderate physical work,jogging,running?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="moderateactivity" <c:if test="${footquestionnariedetails.moderateactivity=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="moderateactivity" <c:if test="${footquestionnariedetails.moderateactivity=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="moderateactivity" <c:if test="${footquestionnariedetails.moderateactivity=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="moderateactivity" <c:if test="${footquestionnariedetails.moderateactivity=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="moderateactivity" <c:if test="${footquestionnariedetails.moderateactivity=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td></tr>
	     
	     <tr><td style= "border:1px solid;" ><b>&nbsp;9.Light activity ,such as walking ,house work,yard work?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="lightactivity" <c:if test="${footquestionnariedetails.lightactivity=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="lightactivity" <c:if test="${footquestionnariedetails.lightactivity=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="lightactivity" <c:if test="${footquestionnariedetails.lightactivity=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="lightactivity" <c:if test="${footquestionnariedetails.lightactivity=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="lightactivity" <c:if test="${footquestionnariedetails.lightactivity=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td></tr>
	     </table>
	     <p><b>&nbsp;10.Which  of the following statements best describes your ability to get around most of the time during the past week?</b></p>
              <table cellpadding="0" cellspacing="0" border="0" width="100%" >
              <tr><td><input type="radio" name="best" value="I did not need support or assitance at all." <c:if test="${footquestionnariedetails.best=='I did not support or assistance at all.'}"> <c:out value="checked"></c:out></c:if>>I did not need support or assitance at all.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly walked without support or assitance." <c:if test="${footquestionnariedetails.best=='I mostly walked without support or assitance.'}"> <c:out value="checked"></c:out></c:if>>I mostly walked without support or assitance.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used one cane or crutch to help me get around." <c:if test="${footquestionnariedetails.best=='I mostly used one cane or crutch to help me get around.'}"> <c:out value="checked"></c:out></c:if>>I mostly used one cane or crutch to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used two canes, two crutches or a walker to help me get around." <c:if test="${footquestionnariedetails.best=='I mostly used two canes, two crutches or a walker to help me get around.'}"> <c:out value="checked"></c:out></c:if>>I mostly used two canes, two crutches or a walker to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I used a wheelchair." <c:if test="${footquestionnariedetails.best=='I used a wheelchair'}"> <c:out value="checked"></c:out></c:if>>I used a wheelchair.</td></tr>
              <tr><td><input type="radio" name="best" value="I mostly used other supports or someone else had to help me get around." <c:if test="${footquestionnariedetails.best=='I mostly used other supports or someone else had to help me get around.'}"> <c:out value="checked"></c:out></c:if>>I mostly used other supports or someone else had to help me get around.</td></tr>
              <tr><td><input type="radio" name="best" value="I was unable to get around at all." <c:if test="${footquestionnariedetails.best=='I was unable to get around at all.'}"> <c:out value="checked"></c:out></c:if>>I was unable to get around at all.</td></tr>
              
              
              </table>
	         </td></tr></table></div></div>
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
              <table><tr><td width="150"><input type="radio" name="trouble" value="No trouble at all" <c:if test="${footquestionnariedetails.trouble=='No trouble at all'}"> <c:out value="checked"></c:out></c:if>>No trouble at all</td><td width="150"><input type="radio" name="trouble" value="A little bit of trouble" <c:if test="${footquestionnariedetails.trouble=='A little bit of trouble'}"> <c:out value="checked"></c:out></c:if>>A little bit of trouble</td><td width="180"><input type="radio" name="trouble" value="A moderate amount of trouble" <c:if test="${footquestionnariedetails.trouble=='A moderate amount of trouble'}"> <c:out value="checked"></c:out></c:if>>A moderate amount of trouble</td><td width="150"><input type="radio" name="trouble" value="Quite a bit of trouble" <c:if test="${footquestionnariedetails.trouble=='Quite a bit of trouble'}"> <c:out value="checked"></c:out></c:if>>Quite a bit of trouble</td><td width="150"><input type="radio" name="trouble" value="A great amount of trouble" <c:if test="${footquestionnariedetails.trouble=='A great amount of trouble'}"> <c:out value="checked"></c:out></c:if>>A great amount of trouble</td>&nbsp;&nbsp;<td><input type="radio" name="trouble" value="I cannot balance on my feet all" <c:if test="${footquestionnariedetails.trouble=='I cannot balance on my feet all'}"> <c:out value="checked"></c:out></c:if>>I cannot balance on my feet all</td></tr></table>     
	          <p><b>&nbsp;12.How difficult was it for you to put on or take off socks/stockings during the past week?</b></p>
        <table><tr><td width="150"><input type="radio" name="socks" value="Not at all difficult" <c:if test="${footquestionnariedetails.socks=='Not at all difficult'}"> <c:out value="checked"></c:out></c:if>>Not at all difficult</td><td width="150"><input type="radio" name="socks" value="Slightly difficult" <c:if test="${footquestionnariedetails.socks=='Slightly difficult'}"> <c:out value="checked"></c:out></c:if>>Slightly difficult</td><td width="150"><input type="radio" name="socks" value="Moderately difficult" <c:if test="${footquestionnariedetails.socks=='Moderately difficult'}"> <c:out value="checked"></c:out></c:if>>Moderately difficult</td><td width="150"><input type="radio" name="socks" value="Very difficult" <c:if test="${footquestionnariedetails.socks=='Very difficult'}"> <c:out value="checked"></c:out></c:if>>Very difficult</td><td width="150"><input type="radio" name="socks" value="Extremely difficult" <c:if test="${footquestionnariedetails.socks=='Extremely difficult'}"> <c:out value="checked"></c:out></c:if>>Extremely difficult</td><td><input type="radio" name="socks" value="Cannot do it all" <c:if test="${footquestionnariedetails.socks=='Cannot do it all'}"> <c:out value="checked"></c:out></c:if>>Cannot do it all</td></tr></table>     
	    <br>
	    <p><b>All questions are about how you have on average during the past week.</b></p>
	    <p>During the past week,please tell us about how painful your foot or ankle was when you were performing the following activities.</p>
           </br>
         <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="200" style= "border:2px solid;"></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Not painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Mildly painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Moderately painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>very painful</b></td><td width="130" valign="top" style= "border:2px solid;" align="center"><b>Extremely painful</b></td><td width="130" valign="top" style= "border:2px solid;"><b>Could not do because of foot/ankle pain</b></td><td valign="top" style= "border:2px solid;"><b>Could not do for other reasons</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;13.Sternuous activity ,such as heavy physical work,sking,tennis?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="heavywork" <c:if test="${footquestionnariedetails.heavywork=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="heavywork" <c:if test="${footquestionnariedetails.heavywork=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="heavywork" <c:if test="${footquestionnariedetails.heavywork=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="heavywork" <c:if test="${footquestionnariedetails.heavywork=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="heavywork" <c:if test="${footquestionnariedetails.heavywork=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="heavywork" <c:if test="${footquestionnariedetails.heavywork=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="heavywork" <c:if test="${footquestionnariedetails.heavywork=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;14.Moderate activity ,such as moderate physical work jogging ,running</b></td><td style= "border:1px solid;" align="center"> <input type="radio" value="1" name="jogging" <c:if test="${footquestionnariedetails.jogging=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="jogging" <c:if test="${footquestionnariedetails.jogging=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="jogging" <c:if test="${footquestionnariedetails.jogging=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="jogging" <c:if test="${footquestionnariedetails.jogging=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="jogging">&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="jogging" <c:if test="${footquestionnariedetails.jogging=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="jogging" <c:if test="${footquestionnariedetails.jogging=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;15.Light activity such as walking ,house work,yard work?</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="walking" <c:if test="${footquestionnariedetails.walking=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="walking" <c:if test="${footquestionnariedetails.walking=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="walking" <c:if test="${footquestionnariedetails.walking=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="walking" <c:if test="${footquestionnariedetails.walking=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="walking" <c:if test="${footquestionnariedetails.walking=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="walking" <c:if test="${footquestionnariedetails.walking=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="walking" <c:if test="${footquestionnariedetails.walking=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;16.Standing for an hour</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="stand" <c:if test="${footquestionnariedetails.stand=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="stand" <c:if test="${footquestionnariedetails.stand=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="stand" <c:if test="${footquestionnariedetails.stand=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="stand" <c:if test="${footquestionnariedetails.stand=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="stand" <c:if test="${footquestionnariedetails.stand=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="stand" <c:if test="${footquestionnariedetails.stand=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="stand" <c:if test="${footquestionnariedetails.stand=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     <tr><td style= "border:1px solid;"><b>&nbsp;17.Standing for a few minutes</b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="fewminutes" <c:if test="${footquestionnariedetails.fewminutes=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="fewminutes" <c:if test="${footquestionnariedetails.fewminutes=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="fewminutes" <c:if test="${footquestionnariedetails.fewminutes=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td><td style= "border:1px solid;" align="center"><input type="radio" value="4" name="fewminutes" <c:if test="${footquestionnariedetails.fewminutes=='4'}"> <c:out value="checked"></c:out></c:if>>&nbsp;4</td><td style= "border:1px solid;" align="center"><input type="radio" value="5" name="fewminutes" <c:if test="${footquestionnariedetails.fewminutes=='5'}"> <c:out value="checked"></c:out></c:if>>&nbsp;5</td><td style= "border:1px solid;" align="center"><input type="radio" value="6" name="fewminutes" <c:if test="${footquestionnariedetails.fewminutes=='6'}"> <c:out value="checked"></c:out></c:if>>&nbsp;6</td><td style= "border:1px solid;" align="center"><input type="radio" value="7" name="fewminutes" <c:if test="${footquestionnariedetails.fewminutes=='7'}"> <c:out value="checked"></c:out></c:if>>&nbsp;7</td></tr>
	     </table>
	     <br>
         <p><b>&nbsp;18.How much difficulty do you have walking on uneven surfaces(eg:Small stones,rocks,sloping ground)</b></p>
              <table cellpadding="0" cellspacing="0" border="0" width="100%" >
              <tr><td><input type="radio" name="difficulty" value="No difficulty" <c:if test="${footquestionnariedetails.difficulty=='No difficulty'}"> <c:out value="checked"></c:out></c:if>>No difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Mild difficulty" <c:if test="${footquestionnariedetails.difficulty=='Mild difficulty'}"> <c:out value="checked"></c:out></c:if>>Mild difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Moderate difficulty" <c:if test="${footquestionnariedetails.difficulty=='Moderate difficulty'}"> <c:out value="checked"></c:out></c:if>>Moderate difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Severe difficulty" <c:if test="${footquestionnariedetails.difficulty=='Severe difficulty'}"> <c:out value="checked"></c:out></c:if>>Severe difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Extreme difficulty" <c:if test="${footquestionnariedetails.difficulty=='Extreme difficulty'}"> <c:out value="checked"></c:out></c:if>>Extreme difficulty</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Cannot do because of foot/ankle" <c:if test="${footquestionnariedetails.difficulty=='Cannot do because of foot/ankle'}"> <c:out value="checked"></c:out></c:if>>Cannot do because of foot/ankle</td></tr>
              <tr><td><input type="radio" name="difficulty" value="Cannot do for other reasons" <c:if test="${footquestionnariedetails.difficulty=='Cannot do for other reasons'}"> <c:out value="checked"></c:out></c:if>>Cannot do for other reasons</td></tr>
              </table>
          <p><b>&nbsp;What types of shoes can you wear comfortably?</b></p>  
          
         <table style="border-collapse: collapse;border:2px solid;">
	    
	    <tr><td width="250" style= "border:2px solid;"></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>Yes</b></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>No</b></td><td width="180" valign="top" style= "border:2px solid;" align="center"><b>Not Applicable</b></td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;19.Any women's shoe (including high heels)OR any men's shoe (including fancy dress shoe) </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="women" <c:if test="${footquestionnariedetails.women=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="women" <c:if test="${footquestionnariedetails.women=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="women" <c:if test="${footquestionnariedetails.women=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;20.Most women's dress shoes(except high heels)OR most means dress shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="dress" <c:if test="${footquestionnariedetails.dress=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="dress" <c:if test="${footquestionnariedetails.dress=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="dress" <c:if test="${footquestionnariedetails.dress=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;21.Sneakers,walking,or casual shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="shoes" <c:if test="${footquestionnariedetails.shoes=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="shoes" <c:if test="${footquestionnariedetails.shoes=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="shoes" <c:if test="${footquestionnariedetails.shoes=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;22.Orthopedic or prescription shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="orthopedic" <c:if test="${footquestionnariedetails.orthopedic=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="orthopedic" <c:if test="${footquestionnariedetails.orthopedic=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="orthopedic" <c:if test="${footquestionnariedetails.orthopedic=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     <tr><td style= "border:1px solid;" ><b>&nbsp;23.All shoes </b></td><td style= "border:1px solid;" align="center"><input type="radio" value="1" name="allversion" <c:if test="${footquestionnariedetails.allversion=='1'}"> <c:out value="checked"></c:out></c:if>>&nbsp;1</td><td style= "border:1px solid;" align="center"><input type="radio" value="2" name="allversion" <c:if test="${footquestionnariedetails.allversion=='2'}"> <c:out value="checked"></c:out></c:if>>&nbsp;2</td><td style= "border:1px solid;" align="center"><input type="radio" value="3" name="allversion" <c:if test="${footquestionnariedetails.allversion=='3'}"> <c:out value="checked"></c:out></c:if>>&nbsp;3</td></tr>
	     </table>
        <p><b>&nbsp;24.How much did your foot or ankle problem interfere with your normal work ,including work both outside the home and house work?</b></p>
              <table><tr><td width="150"><input type="radio" name="foot" value="Not at all" <c:if test="${footquestionnariedetails.foot=='Not at all'}"> <c:out value="checked"></c:out></c:if>>Not at all</td><td width="150"><input type="radio" name="foot" value="A little bit" <c:if test="${footquestionnariedetails.foot=='A little bit'}"> <c:out value="checked"></c:out></c:if>>A little bit </td><td width="180"><input type="radio" name="foot" value="Moderately" <c:if test="${footquestionnariedetails.foot=='Moderately'}"> <c:out value="checked"></c:out></c:if>>Moderately </td><td width="150"><input type="radio" name="foot" value="Quite a bit" <c:if test="${footquestionnariedetails.foot=='Quite a bit'}"> <c:out value="checked"></c:out></c:if>>Quite a bit</td><td width="150"><input type="radio" name="foot" value="Extremely" <c:if test="${footquestionnariedetails.foot=='Extremely'}"> <c:out value="checked"></c:out></c:if>>Extremely</td>&nbsp;&nbsp;<td><input type="radio" name="foot" value="Unable to work due to foot and ankle problems" <c:if test="${footquestionnariedetails.foot=='Unable to work due to foot and ankle problems'}"> <c:out value="checked"></c:out></c:if>>Unable to work due to foot and ankle problems</td></tr></table>     
	          <p><b>&nbsp;25.How much did your foot or ankle problem interfere with your life and your ability to do what you want?</b></p>
        <table><tr><td width="150"><input type="radio" name="ankle" value="Not at all" <c:if test="${footquestionnariedetails.ankle=='Not at all'}"> <c:out value="checked"></c:out></c:if>>Not at all</td><td width="150"><input type="radio" name="ankle" value="A little bit" <c:if test="${footquestionnariedetails.ankle=='A little bit'}"> <c:out value="checked"></c:out></c:if>>A little bit </td><td width="180"><input type="radio" name="ankle" value="Moderately" <c:if test="${footquestionnariedetails.ankle=='Moderately'}"> <c:out value="checked"></c:out></c:if>>Moderately </td><td width="150"><input type="radio" name="ankle" value="Quite a bit" <c:if test="${footquestionnariedetails.ankle=='Quite a bit'}"> <c:out value="checked"></c:out></c:if>>Quite a bit</td><td width="150"><input type="radio" name="ankle" value="Extremely" <c:if test="${footquestionnariedetails.ankle=='Extremely'}"> <c:out value="checked"></c:out></c:if>>Extremely</td>&nbsp;&nbsp;<td><input type="radio" name="ankle" value="Unable to work due to foot and ankle problems" <c:if test="${footquestionnariedetails.ankle=='Unable to work due to foot and ankle problems'}"> <c:out value="checked"></c:out></c:if>>Unable to work due to foot and ankle problems</td></tr></table>     
	    
         
         </div></td></tr></table></div></div>
         
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
	   <span class="err">*</span> Today's Date <input type="text" name="date" id="datepicker" value="${footquestionnariedetails.date }"><span class="err"><form:errors path="Footquestionnarie.date"></form:errors></span>
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
	    Your Birth Date  <input type="date"  name="birthdate" value="${footquestionnariedetails.birthdate }">
	    <br><br>
	    Your Social Security Number <input type="text" name="security" value="${footquestionnariedetails.security }">
	    
	    <br>
	    <br>
	    <br>
	    <table width="100%" height="150"><tr><Td></Td></tr></table>
	    <table align="right"><tr>
	    <td>
	    
	     <input class="submit_btn" type="submit" value="Update" ></td>
	     <td><input class="submit_btn" type="reset" value="Cancel" >
	    </td></tr></table>
	    
	    </div></div>
         
         
        
         
         
         
         </div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            