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
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
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

function legvalidate()
{
if(document.getElementById('legsweakness').checked)
{
document.getElementById('legsweaknessleft').style.display="block";
document.getElementById('legleft').style.display="block";

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

	     
<form action="updatetherapy" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	             MANUAL THERAPY DAILY EVAL AND TREATMENT</h2></center><br/>
	            
	            </div>
	           
	    <c:set value="${manualform.manualtherapy[0]}" var="manualtherapy"></c:set>
	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="140"><span class="err"></span>Patient ID:</td>
           <td width="200"><input type="hidden" name="manualtherapyno" value="${manualtherapy.manualtherapyno}"><input type="text" name="pid" value="${manualtherapy.pid}"><span class="err"><form:errors path="therapy.pid"></form:errors></td><td width="400"></td><td></td><td width="100"></td>
           <td >&nbsp;&nbsp;&nbsp;&nbsp;<span class="err"></span>Date:&nbsp;</td> <td><input type="text" name="date" value="${manualtherapy.date}" id="datepicker"></td>
           </tr>
           <tr height="10"></tr>
           <tr><td><span class="err"></span>Patient Name:</td><td><input type="text" name="pname" value="${manualtherapy.pname}"><span class="err"><form:errors path="therapy.pname"></form:errors></td><td ></td>
           <td width="80" ><span class="err"></span>Time In:&nbsp;</td> <td width="200"><input type="text" name="timein" id="" value="${manualtherapy.timein}"></td>
          
           <td width="80" >&nbsp;&nbsp;&nbsp;&nbsp;<span class="err"></span>Time Out:&nbsp;</td> <td width="200"><input type="text" name="timeout" value="${manualtherapy.timeout}" id=""></td>        
           
           
           
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">
PATIENT ENTERED THE OFFICE TODAY & REPORTED THE FOLLOWING:
 </b></div>
           </br>
           <table><tr><td width="140">Major Complaint:</td><td><input type="text" value="${manualtherapy.majorcomplaint}" name="majorcomplaint"></td>
           <td width="245"></td><td width="100"><b>DIFFICULTY IN</b></td>
           <td width="100"><input type="checkbox" value="Standing" name="standing" <c:if test="${manualtherapy.standing=='Standing'}"> <c:out value="checked=checked"></c:out></c:if>>Standing</td>
           <td width="100"><input type="checkbox" value="Sitting" name="sitting" <c:if test="${manualtherapy.sitting=='Sitting'}"> <c:out value="checked=checked"></c:out></c:if>>Sitting</td>
           <td width="100"><input type="checkbox" value="Walking" name="walking" <c:if test="${manualtherapy.walking=='Walking'}"> <c:out value="checked=checked"></c:out></c:if>>Walking</td>
           <td width="100"><input type="checkbox"  value="Sleeping" name="sleeping" <c:if test="${manualtherapy.sleeping=='Sleeping'}"> <c:out value="checked=checked"></c:out></c:if>> Sleeping</td>
           <td width="100"><input type="checkbox"  value="Lifting" name="lifting" <c:if test="${manualtherapy.lifting=='Lifting'}"> <c:out value="checked=checked"></c:out></c:if>>Lifting</td>
           <td><input type="checkbox" value="Bending" name="bending" <c:if test="${manualtherapy.bending=='Bending'}"> <c:out value="checked=checked"></c:out></c:if>>Bending</td>
           
           
           </tr></table>
           
           
          
           </br>
          <b> PAIN RADIATES TO:</b>
                 </br>
                 <table>
                 <tr>
                 <td>Headache</td><td><input type="textbox" size="5" name="headache" value="${manualtherapy.headache}"> /10</td><td width="70"></td><td width="80">Shoulder</td><td><input type="radio" name="shoulder" value="Left" <c:if test="${manualtherapy.shoulder=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" value="Right" name="shoulder" <c:if test="${manualtherapy.shoulder=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio"  value="Both" name="shoulder" <c:if test="${manualtherapy.shoulder=='Both'}"> <c:out value="checked"></c:out></c:if>>Both</td><td width="50"></td><td width="100"><b>WEAKNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="armsweakness" <c:if test="${manualtherapy.armsweakness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="armsweakness"  value="Right" <c:if test="${manualtherapy.armsweakness=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="armsweakness" <c:if test="${manualtherapy.armsweakness=='Both'}"> <c:out value="checked"></c:out></c:if>>Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="handsweakness"<c:if test="${manualtherapy.handsweakness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="handsweakness"  value="R" <c:if test="${manualtherapy.handsweakness=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="handsweakness" <c:if test="${manualtherapy.handsweakness=='Both'}"> <c:out value="checked"></c:out></c:if>>Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  <c:if test="${manualtherapy.legsweakness=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="legsweakness" id="legsweaknessleft">L&nbsp;&nbsp;<input type="radio" <c:if test="${manualtherapy.legsweakness=='Right'}"> <c:out value="checked"></c:out></c:if> name="legsweakness"  value="Right">R&nbsp;&nbsp;<input type="radio" <c:if test="${manualtherapy.legsweakness=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="legsweakness">Both&nbsp;&nbsp;</td><td><b>&nbsp;&nbsp;Feet&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="radio"  value="Left" name="feetweakness" <c:if test="${manualtherapy.feetweakness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="feetweakness" <c:if test="${manualtherapy.feetweakness=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both"  <c:if test="${manualtherapy.feetweakness=='Both'}"> <c:out value="checked"></c:out></c:if> name="feetweakness">Both</td>
                 </tr>
                 <tr>
                 <td>Neck pain/stiffness</td><td><input type="textbox" size="5" name="neckpain" value="${manualtherapy.neckpain}"> /10</td><td></td><td>Arm/elbow</td><td><input type="radio" value="Left" name="elbow" <c:if test="${manualtherapy.elbow=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" value="Right" name="elbow" <c:if test="${manualtherapy.elbow=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="elbow" <c:if test="${manualtherapy.elbow=='Both'}"> <c:out value="checked"></c:out></c:if>>Both</td><td></td><td><b>PINS & NEEDLES:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="armspins" <c:if test="${manualtherapy.armspins=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="armspins"  value="Right" <c:if test="${manualtherapy.armspins=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="armspins" <c:if test="${manualtherapy.armspins=='Both'}"> <c:out value="checked"></c:out></c:if>>Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="handspins" <c:if test="${manualtherapy.handspins=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="handspins"  value="Right" <c:if test="${manualtherapy.handspins=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="handspins" <c:if test="${manualtherapy.handspins=='Both'}"> <c:out value="checked"></c:out></c:if>>Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"   <c:if test="${manualtherapy.legspins=='Left'}"> <c:out value="checked"></c:out></c:if>value="Left" name="legspins">L&nbsp;&nbsp;<input type="radio"  <c:if test="${manualtherapy.legspins=='Right'}"> <c:out value="checked"></c:out></c:if>name="legspins"  value="Right">R&nbsp;&nbsp;<input type="radio" <c:if test="${manualtherapy.legspins=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="legspins">&nbsp;&nbsp;Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="feetpins" <c:if test="${manualtherapy.feetpins=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="feetpins"  <c:if test="${manualtherapy.feetpins=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right">R&nbsp;&nbsp;<input type="radio"  <c:if test="${manualtherapy.feetpins=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="feetpins">Both</td>
                 </tr>
                 <tr>
                 <td>Upper back pain/stiffness</td><td> <input type="textbox" size="5" name="upperback" value="${manualtherapy.upperback}">/10</td><td></td><td>Wrist/hand</td><td><input type="radio" value="Left" name="wrist" <c:if test="${manualtherapy.wrist=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" value="Right"  name="wrist" <c:if test="${manualtherapy.wrist=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both"  name="wrist" <c:if test="${manualtherapy.wrist=='Both'}"> <c:out value="checked"></c:out></c:if>>Both</td><td></td><td><b>NUMBNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="armsnumbness" <c:if test="${manualtherapy.armsnumbness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="armsnumbness"  value="Right" <c:if test="${manualtherapy.armsnumbness=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="armsnumbnessboth" <c:if test="${manualtherapy.armsnumbness=='Both'}"> <c:out value="checked"></c:out></c:if>>Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="handsnumbness" <c:if test="${manualtherapy.handsnumbness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="handsnumbnessright"  value="Right" <c:if test="${manualtherapy.handsnumbness=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="handsnumbness" <c:if test="${manualtherapy.handsnumbness=='Both'}"> <c:out value="checked"></c:out></c:if>>Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left"  <c:if test="${manualtherapy.legsnumbness=='Left'}"> <c:out value="checked"></c:out></c:if>name="legsnumbness">L&nbsp;&nbsp;<input type="radio" <c:if test="${manualtherapy.legsnumbness=='Right'}"> <c:out value="checked"></c:out></c:if> name="legsnumbness"  value="Right">R&nbsp;&nbsp;<input type="radio" <c:if test="${manualtherapy.legsnumbness=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="legsnumbness">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="feetnumbness" <c:if test="${manualtherapy.feetnumbness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio"  <c:if test="${manualtherapy.feetnumbness=='Right'}"> <c:out value="checked"></c:out></c:if> name="feetnumbness"  value="Right">R&nbsp;&nbsp;<input type="radio"  <c:if test="${manualtherapy.feetnumbness=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="feetnumbness">Both</td>
                 </tr>
                 <tr>
                 <td>Mid-back pain/stiffness</td><td><input type="textbox" size="5" name="midback" value="${manualtherapy.midback}"> /10</td><td></td><td>Chest/ribs</td><td><input type="radio" value="Left" name="ribs" <c:if test="${manualtherapy.ribs=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" value="Right" name="ribs" <c:if test="${manualtherapy.ribs=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="ribs" <c:if test="${manualtherapy.ribs=='Both'}"> <c:out value="checked"></c:out></c:if>>Both</td><td></td><td><b>COLDNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="armscoldness" <c:if test="${manualtherapy.armscoldness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="armscoldness"  value="Right" <c:if test="${manualtherapy.armscoldness=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="armscoldnessboth" <c:if test="${manualtherapy.armscoldness=='Both'}"> <c:out value="checked"></c:out></c:if>>Both&nbsp;&nbsp;</td><td><b>&nbsp;&nbsp;Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="handscoldness" <c:if test="${manualtherapy.handscoldness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="handscoldnessright"  value="Right" <c:if test="${manualtherapy.handscoldness=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="handscoldness" <c:if test="${manualtherapy.handscoldness=='Both'}"> <c:out value="checked"></c:out></c:if>>Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="legscoldness" <c:if test="${manualtherapy.legscoldness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="legscoldness"  value="Right" <c:if test="${manualtherapy.legscoldness=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" <c:if test="${manualtherapy.legscoldness=='Both'}"> <c:out value="checked"></c:out></c:if> name="legscoldness">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="feetcoldness" <c:if test="${manualtherapy.feetcoldness=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" name="feetcoldness"  <c:if test="${manualtherapy.feetcoldness=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both"  <c:if test="${manualtherapy.feetcoldness=='Both'}"> <c:out value="checked"></c:out></c:if>name="feetcoldness">Both</td>
                 </tr><tr>
                 <td>Low back pain/stiffness</td><td><input type="textbox" size="5" name="lowback" value="${manualtherapy.lowback}"> /10</td><td></td><td>Hip/gluteal</td><td><input type="radio" value="Left" name="hip" <c:if test="${manualtherapy.hip=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" value="Right" name="hip" <c:if test="${manualtherapy.hip=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="hip" <c:if test="${manualtherapy.hip=='Both'}"> <c:out value="checked"></c:out></c:if>>Both</td><td></td>
                 </tr><tr>
                 <td>Tmj pain/clicking</td><td><input type="textbox" size="5" name="tmjpain" value="${manualtherapy.tmjpain}"> /10</td><td></td><td>Leg/knee</td><td><input type="radio"  value="Left" name="leg" <c:if test="${manualtherapy.leg=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" value="Right" name="leg" <c:if test="${manualtherapy.leg=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" value="Both" name="leg" <c:if test="${manualtherapy.leg=='Both'}"> <c:out value="checked"></c:out></c:if>>Both</td><td></td>
                 </tr>
                 <tr>
                 <td>Other</td><td><input type="textbox" size="5" name="other" value="${manualtherapy.other}"> /10</td><td></td><td>Ankle / foot</td><td><input type="radio" value="Left" name="ankle" <c:if test="${manualtherapy.ankle=='Left'}"> <c:out value="checked"></c:out></c:if>>L&nbsp;&nbsp;<input type="radio" value="Right" name="ankle" <c:if test="${manualtherapy.ankle=='Right'}"> <c:out value="checked"></c:out></c:if>>R&nbsp;&nbsp;<input type="radio" name="ankle" value="Both" <c:if test="${manualtherapy.ankle=='Both'}"> <c:out value="checked"></c:out></c:if>>Both</td><td></td>
                 </tr>
                 
                 
                 </table>
           <table >
           <tr><td>Patient rates their current health status/pain level:   Visual Analog Scale (VAS)</td><td width="100"></td><td>[100% Well]  </td>  <td>

<label for="amount"><b>Pain Scale:</b></label>
	 <input type="text" id="amount" value="${manualtherapy.painscale}" style="border:0; color:#f6931f; font-weight:bold;" name="painscale"  />&nbsp;&nbsp;&nbsp;
 <div id="slider"></div></td> <td>[Bed Ridden]</td></tr></table>
   </br>  
   <table>
   <tr><td>
   <table style="border-collapse: collapse;border:2px solid;">
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>CERVICAL</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td  align="center" style= "border:2px solid;" width="50"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;" align="center"><td style= "border:1px solid;">Paraspinals</td><td style= "border:1px solid;"><input align="center" type="radio" name="paraspinals" <c:if test="${manualtherapy.paraspinals=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right"  <c:if test="${manualtherapy.paraspinals=='Right'}"> <c:out value="checked"></c:out></c:if>name="paraspinals" ></td><td style= "border:1px solid;" align="center" ><input type="radio" name="paraspinals"  <c:if test="${manualtherapy.paraspinals=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">SCM</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left"  <c:if test="${manualtherapy.scm=='Left'}"> <c:out value="checked"></c:out></c:if> name="scm"></td><td style= "border:1px solid;" align="center"><input type="radio" name="scm"  <c:if test="${manualtherapy.scm=='Right'}"> <c:out value="checked"></c:out></c:if> value="Right" ></td><td style= "border:1px solid;" align="center"><input type="radio" name="scm" <c:if test="${manualtherapy.scm=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" ></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Upper Traps</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.uppertraps=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="uppertraps"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right"  <c:if test="${manualtherapy.uppertraps=='Right'}"> <c:out value="checked"></c:out></c:if> name="uppertraps"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both"  <c:if test="${manualtherapy.uppertraps=='Both'}"> <c:out value="checked"></c:out></c:if> name="uppertraps"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Suboccipitals</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left"  <c:if test="${manualtherapy.suboccipitals=='Left'}"> <c:out value="checked"></c:out></c:if> name="suboccipitals"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right"  <c:if test="${manualtherapy.suboccipitals=='Right'}"> <c:out value="checked"></c:out></c:if> name="suboccipitals"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" <c:if test="${manualtherapy.suboccipitals=='Both'}"> <c:out value="checked"></c:out></c:if>  name="suboccipitals"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Scalenes</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left"  <c:if test="${manualtherapy.scalenes=='Left'}"> <c:out value="checked"></c:out></c:if> name="scalenes"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.scalenes=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="scalenes"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.scalenes=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="scalenes"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
  <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>UPPER EXT</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td style= "border:2px solid;" width="50" align="center"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Triceps</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="triceps"  <c:if test="${manualtherapy.triceps=='Left'}"> <c:out value="checked"></c:out></c:if> align="center"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" <c:if test="${manualtherapy.triceps=='Right'}"> <c:out value="checked"></c:out></c:if>  name="triceps"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" <c:if test="${manualtherapy.triceps=='Both'}"> <c:out value="checked"></c:out></c:if> name="triceps"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Biceps</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left"  <c:if test="${manualtherapy.biceps=='Left'}"> <c:out value="checked"></c:out></c:if> name="biceps"></td><td style= "border:1px solid;" align="center"><input type="radio" name="biceps" <c:if test="${manualtherapy.biceps=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right"></td><td style= "border:1px solid;" align="center"><input type="radio" name="biceps"  <c:if test="${manualtherapy.biceps=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both"></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Brachioradialis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" <c:if test="${manualtherapy.brachioradialis=='Left'}"> <c:out value="checked"></c:out></c:if>  name="brachioradialis"></td><td style= "border:1px solid;"align="center"><input type="radio" value="Right"  <c:if test="${manualtherapy.brachioradialis=='Right'}"> <c:out value="checked"></c:out></c:if> name="brachioradialis"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both"  <c:if test="${manualtherapy.brachioradialis=='Both'}"> <c:out value="checked"></c:out></c:if> name="brachioradialis"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Wrist Flexors / Extens</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left"  <c:if test="${manualtherapy.wristflex=='Left'}"> <c:out value="checked"></c:out></c:if>name="wristflex"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" <c:if test="${manualtherapy.wristflex=='Right'}"> <c:out value="checked"></c:out></c:if>  name="wristflex"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" <c:if test="${manualtherapy.wristflex=='Both'}"> <c:out value="checked"></c:out></c:if>  name="wristflex"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Hand</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left"  <c:if test="${manualtherapy.hand=='Left'}"> <c:out value="checked"></c:out></c:if> name="hand"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right"  <c:if test="${manualtherapy.hand=='Right'}"> <c:out value="checked"></c:out></c:if> name="hand"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.hand=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="hand"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Pectoralis</td><td align="center" style= "border:1px solid;"><input type="radio" <c:if test="${manualtherapy.pectoralis=='Left'}"> <c:out value="checked"></c:out></c:if>  value="Left" name="pectoralis"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.pectoralis=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="pectoralis"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.pectoralis=='Both'}"> <c:out value="checked"></c:out></c:if> value=Both" name="pectoralis"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>THORACIC</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td style= "border:2px solid;" width="50" align="center"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Trapezius</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.trapezius=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="trapezius" align="center"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.trapezius=='Right'}"> <c:out value="checked"></c:out></c:if> value="Right" name="trapezius"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.trapezius=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="trapezius"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">S.I.Ts-supra/infra/teres min</td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.supra=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left"  name="supra"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.supra=='Right'}"> <c:out value="checked"></c:out></c:if> value="Right" name="supra"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.supra=='Both'}"> <c:out value="checked"></c:out></c:if> name="supra"></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Subscapularis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" <c:if test="${manualtherapy.subscapularis=='Left'}"> <c:out value="checked"></c:out></c:if> name="subscapularis"></td><td style= "border:1px solid;"align="center"><input type="radio" value="Right" <c:if test="${manualtherapy.subscapularis=='Right'}"> <c:out value="checked"></c:out></c:if> name="subscapularis"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both"  <c:if test="${manualtherapy.subscapularis=='Both'}"> <c:out value="checked"></c:out></c:if> name="subscapularis"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Lattissimus Dorsi</td><td align="center" style= "border:1px solid;"><input type="radio" <c:if test="${manualtherapy.dorsi=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="dorsi"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.dorsi=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="dorsi"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.dorsi=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="dorsi"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Levator Scapulae</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.levator=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="levator"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.levator=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="levator"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.levator=='Both'}"> <c:out value="checked"></c:out></c:if>   value="Both" name="levator"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Rhomboids</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.rhomboids=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="rhomboids"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.rhomboids=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="rhomboids"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.rhomboids=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="rhomboids"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Supraspinatus</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" <c:if test="${manualtherapy.supraspinatus=='Left'}"> <c:out value="checked"></c:out></c:if>  name="supraspinatus"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" <c:if test="${manualtherapy.supraspinatus=='Right'}"> <c:out value="checked"></c:out></c:if>  name="supraspinatus"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both"  <c:if test="${manualtherapy.supraspinatus=='Both'}"> <c:out value="checked"></c:out></c:if> name="supraspinatus"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Serratus Anterior</td><td align="center" style= "border:1px solid;"><input type="radio" <c:if test="${manualtherapy.anterior=='Left'}"> <c:out value="checked"></c:out></c:if>  value="Left" name="anterior"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.anterior=='Right'}"> <c:out value="checked"></c:out></c:if>   value="Right" name="anterior"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.anterior=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="anterior"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Paraspinals</td><td align="center" style= "border:1px solid;"><input type="radio" <c:if test="${manualtherapy.paraspinals=='Left'}"> <c:out value="checked"></c:out></c:if>  value="Left" name="paraspinals"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.paraspinals=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="paraspinals"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.paraspinals=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="paraspinals"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>LUMBAR</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td style= "border:2px solid;" width="50" align="center"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Paraspinals</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.paraspinalslum=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="paraspinalslum" align="center"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.paraspinalslum=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="paraspinalslum"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.paraspinalslum=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="paraspinalslum"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Iliopsoas</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.iliopsoas=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="iliopsoas"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.iliopsoas=='Right'}"> <c:out value="checked"></c:out></c:if>  name="iliopsoas" value="Right"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.iliopsoas=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="iliopsoas"></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gluteus Maximus</td><td align="center" style= "border:1px solid;"><input type="radio" <c:if test="${manualtherapy.maximus=='Left'}"> <c:out value="checked"></c:out></c:if>  value="Left" name="maximus"></td><td style= "border:1px solid;"align="center"><input type="radio"  <c:if test="${manualtherapy.maximus=='Right'}"> <c:out value="checked"></c:out></c:if> value="Right" name="maximus"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.maximus=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="maximus"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gluteus Medius</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.medius=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="medius"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.medius=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="medius"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.medius=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="medius"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Piriformis</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.piriformis=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="piriformis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" <c:if test="${manualtherapy.piriformis=='Right'}"> <c:out value="checked"></c:out></c:if>  name="piriformis"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.piriformis=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="piriformis"></td></tr>
     
 <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
  <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>LOWER EXTREMITIES</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td style= "border:2px solid;" width="50" align="center"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Quadriceps/Sartorius</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left"  <c:if test="${manualtherapy.sartorius=='Left'}"> <c:out value="checked"></c:out></c:if> name="sartorius" align="center"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.sartorius=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="sartorius"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.sartorius=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="sartorius"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Hamstrings</td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.hamstrings=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="hamstrings"></td><td style= "border:1px solid;" align="center"><input value="Right"  <c:if test="${manualtherapy.hamstrings=='Right'}"> <c:out value="checked"></c:out></c:if> type="radio" name="hamstrings"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" <c:if test="${manualtherapy.hamstrings=='Both'}"> <c:out value="checked"></c:out></c:if>  name="hamstrings"></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">TFL/ITB</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.TFL=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="TFL"></td><td style= "border:1px solid;"align="center"><input type="radio" value="Right"  <c:if test="${manualtherapy.TFL=='Right'}"> <c:out value="checked"></c:out></c:if> name="TFL"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.TFL=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="TFL"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">HIP</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.HIP1=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="HIP1"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.HIP1=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="HIP1"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.HIP1=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="HIP1"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gastroc/Soleus/Achilles</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.achilles=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="achilles"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.achilles=='Right'}"> <c:out value="checked"></c:out></c:if> value="Right" name="achilles"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.achilles=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="achilles"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Anterior/post. Tibialis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left"  <c:if test="${manualtherapy.tibialis=='Left'}"> <c:out value="checked"></c:out></c:if> name="tibialis"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.tibialis=='Right'}"> <c:out value="checked"></c:out></c:if>  value="Right" name="tibialis"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.tibialis=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="tibialis"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">QLS</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.QLS=='Left'}"> <c:out value="checked"></c:out></c:if> value="Left" name="QLS"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.QLS=='Right'}"> <c:out value="checked"></c:out></c:if> value="Right" name="QLS"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.QLS=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="QLS"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Peroneals/Ankle</td><td align="center" style= "border:1px solid;"><input type="radio"  <c:if test="${manualtherapy.ankles=='Left'}"> <c:out value="checked"></c:out></c:if> value="ankle" name="ankles"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.ankles=='Right'}"> <c:out value="checked"></c:out></c:if> value="Right" name="ankles"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.ankles=='Both'}"> <c:out value="checked"></c:out></c:if>  value="Both" name="ankles"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Adductors/Gracilis</td><td align="center" style= "border:1px solid;"><input type="radio" <c:if test="${manualtherapy.gracilis=='Left'}"> <c:out value="checked"></c:out></c:if>  value="Left" name="gracilis"></td><td style= "border:1px solid;" align="center"><input type="radio" <c:if test="${manualtherapy.gracilis=='Right'}"> <c:out value="checked"></c:out></c:if>   value="Right" name="gracilis"></td><td style= "border:1px solid;" align="center"><input type="radio"  <c:if test="${manualtherapy.gracilis=='Both'}"> <c:out value="checked"></c:out></c:if> value="Both" name="gracilis"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"></table>       
     </td>
     
     
     
     <td width="70"></td>
     <td valign="top">
     <table height="300">
     <tr><td valign="top"><b>Therapy Performed:</b>  
     
     </td><td></td></tr>
     <tr>  <td>Myofasical Release</td><td><input type="checkbox" value="Myofasical Release"  <c:if test="${manualtherapy.myofasical=='Myofasical Release'}"> <c:out value="checked=checked"></c:out></c:if> name="myofasical"></td></tr>
     <tr>  <td>Manual Traction</td><td><input type="checkbox" value="Manual Traction" name="manualtraction" <c:if test="${manualtherapy.manualtraction=='Manual Traction'}"> <c:out value="checked=checked"></c:out></c:if>></td></tr>
     <tr>  <td>Trigger Point Therapy </td><td><input type="checkbox" value="Trigger Point Therapy" name="triggerpoint" <c:if test="${manualtherapy.triggerpoint=='Trigger Point Therapy'}"> <c:out value="checked=checked"></c:out></c:if>></td></tr>
   <tr>  <td>Lymphatic Drainage</td><td><input type="checkbox" value="Lymphatic Drainage" name="lymphaticdrainage" <c:if test="${manualtherapy.lymphaticdrainage=='Lymphatic Drainage'}"> <c:out value="checked=checked"></c:out></c:if>></td></tr>
     <tr>  <td>Effleurage</td><td><input type="checkbox" value="Effleurage" name="effleurage" <c:if test="${manualtherapy.effleurage=='Effleurage'}"> <c:out value="checked=checked"></c:out></c:if>></td></tr>
     <tr>  <td>Taponnement</td><td><input type="checkbox" value="Taponnement" name="taponnement" <c:if test="${manualtherapy.taponnement=='Taponnement'}"> <c:out value="checked=checked"></c:out></c:if>></td></tr>
     <tr>  <td>Cross Friction Fiber </td><td><input type="checkbox" value="Cross Friction Fiber" name="crossfrictionfiber" <c:if test="${manualtherapy.crossfrictionfiber=='Cross Friction Fiber'}"> <c:out value="checked=checked"></c:out></c:if>></td></tr>
     <tr>  <td>PNF</td><td><input type="checkbox" value="PNF" name="PNF" <c:if test="${manualtherapy.PNF=='PNF'}"> <c:out value="checked=checked"></c:out></c:if>></td></tr>
     <tr>  <td>Neuromuscular</td><td><input type="checkbox" value="Neuromuscular" name="neuromuscular" <c:if test="${manualtherapy.neuromuscular=='Neuromuscular'}"> <c:out value="checked=checked"></c:out></c:if>></td></tr>
     <tr height="10">  </tr>   
     </table> 
     <table>
     <tr><td width="30"><input type="checkbox" value="97140-59 (MT)" name="MT" <c:if test="${manualtherapy.MT=='97140-59 (MT)'}"> <c:out value="checked=checked"></c:out></c:if>></td><td>97140-59 (MT)</td></tr>
    <tr height="10"></tr>
     <tr><td width="30"><input type="checkbox" value="97110-59 (TE)" name="TE" <c:if test="${manualtherapy.TE=='97110-59 (TE)'}"> <c:out value="checked=checked"></c:out></c:if>></td><td>97140-59 (MT)</td></tr>
     <tr height="10"></tr>
     <tr><td width="30"><input type="checkbox" value="97124-59 (MA)" name="MA" <c:if test="${manualtherapy.MA=='97124-59 (MA)'}"> <c:out value="checked=checked"></c:out></c:if>></td><td>97140-59 (MT)</td></tr>
     
     </table>
     <br>
     <table><tr ><td valign="top"  height="100">
     <b>Therapist Findings:</b>     
     </td></tr>
     <tr height="100"><td valign="top" >
     <b>Therapist Recommendations:</b>     
     </td></tr>
     <tr height="10"><td>
     <b>Future Care Recommendations:</b>     
     </td></tr>
     </table>
      
     
     </td>
     <td width="70">
     <table height="300"></table>
    </td>
     <td valign="top"><table height="300"><tr><td>
   <img class="ui-widget-content" src="resources\images\manualtherapy.png"></td></tr></table>
   <Table>
   <tr><td width="100">Units Performed:  </td><td width="30"><input type="radio" name="unit" value="1" <c:if test="${manualtherapy.unit=='1'}"> <c:out value="checked"></c:out></c:if>>1</td><td  width="30"><input type="radio" name="unit" value="2" <c:if test="${manualtherapy.unit=='2'}"> <c:out value="checked=checked"></c:out></c:if>>2</td><td><input type="radio" name="unit" value="3" <c:if test="${manualtherapy.unit=='3'}"> <c:out value="checked=checked"></c:out></c:if>>3</td><td><input type="radio" name="unit" value="4" <c:if test="${manualtherapy.unit=='4'}"> <c:out value="checked=checked"></c:out></c:if>>4</td></tr>
   <tr height="10"></tr>
   <tr><td>Units Performed:  </td><td  width="30"><input type="radio" name="units" value="1" <c:if test="${manualtherapy.units=='1'}"> <c:out value="checked"></c:out></c:if>>1</td><td  width="30"><input type="radio" name="units" value="2" <c:if test="${manualtherapy.units=='2'}"> <c:out value="checked=checked"></c:out></c:if>>2</td><td><input type="radio" name="units" value="3" <c:if test="${manualtherapy.units=='3'}"> <c:out value="checked=checked"></c:out></c:if>>3</td><td><input type="radio" name="units" value="4" <c:if test="${manualtherapy.units=='4'}"> <c:out value="checked=checked"></c:out></c:if>>4</td></tr>
   <tr height="10"></tr>
   <tr><td>Units Performed:  </td><td  width="30"><input type="radio" name="unitperform" value="1" <c:if test="${manualtherapy.unitperform=='1'}"> <c:out value="checked"></c:out></c:if>>1</td><td  width="30"><input type="radio" name="unitperform" value="2" <c:if test="${manualtherapy.unitperform=='2'}"> <c:out value="checked=checked"></c:out></c:if>>2</td><td  width="30"><input type="radio" name="unitperform" value="3" <c:if test="${manualtherapy.unitperform=='3'}"> <c:out value="checked=checked"></c:out></c:if>>3</td><td><input type="radio" name="unitperform" value="4" <c:if test="${manualtherapy.unitperform=='4'}"> <c:out value="checked=checked"></c:out></c:if>>4</td></tr>
   </Table>
   </br>
   <table>
   <tr><td><Textarea rows="5" cols="50" name="therapist">${manaualtherapy.therapist}</Textarea></td></tr>
   <tr height="20"></tr>
   <tr><td><Textarea rows="5" cols="50" name="therapistrecommend">${manaualtherapy.therapistrecommend}</Textarea></td></tr>
   <tr height="20"></tr>
   <tr><td><Textarea rows="5" cols="50" name="futurerecommend">${manaualtherapy.futurerecommend}</Textarea></td></tr>
   </table>
   
   
   
   </td>
    
    
    </tr>       
   </table>   
   <Table><tr><td></td><td></td>
   
   <td width="320"></td><td><input type="text" name="session" value="${manualtherapy.session}">of sessions recommended for length of time:[30 min./1 hour]over <input type="text"  value="${manualtherapy.weeks}" name="weeks">weeks.  </td>
   </tr>
   <tr height="10"></tr>
   <tr>
   <td><span class="err"></span>Signature:</td><td><input type="text" name="signature" value="${manualtherapy.signature}"><br><span class="err"><form:errors path="therapy.date"></form:errors></td><td></td><td><input type="text"  value="${manualtherapy.daily}" name="daily">Daily Supportive Care Visit</td>
   </tr></Table>    
 <table align="right"><tr><td><input type="submit" value="Update" class="submit_btn"></td><td> <a href="viewmanualtherapy" style="color: white" class="submit_btn">Cancel</a></td></tr></table>      
            
     </div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            