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
<script>
$(function() {
    $( "#slider" ).slider({
      value:1,
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

	     
<form action="inserttherapy" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	             MANUAL THERAPY DAILY EVAL AND TREATMENT</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="140"><span class="err">*</span>Patient ID:</td>
           <td width="200"><input type="text" name="pid"><br><span class="err"><form:errors path="therapy.pid"></form:errors></td><td width="400"></td><td></td><td width="100"></td>
           <td >&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Date:&nbsp;</td> <td width="200"><input type="text" name="date" id="datepicker"><br><span class="err"><form:errors path="therapy.date"></form:errors></td>
           </tr>
           <tr height="10"></tr>
           <tr><td><span class="err">*</span>Patient Name:</td><td><input type="text" name="pname"><br><span class="err"><form:errors path="therapy.pname"></form:errors></td><td width=""></td>
           <td width="80"><span class="err">*</span>Time In:&nbsp;</td> <td width="200"><input type="text" name="timein" id=""><br><span class="err"><form:errors path="therapy.timein"></form:errors></td>
          
           <td width="80">&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Time Out:&nbsp;</td> <td><input type="text" name="timeout" id=""><br><span class="err"><form:errors path="therapy.timeout"></form:errors></td>        
           
           
           
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">
PATIENT ENTERED THE OFFICE TODAY & REPORTED THE FOLLOWING:
 </b></div>
           </br>
           <table><tr><td width="140">Major Complaint:</td><td><input type="text" name="majorcomplaint"></td>
           <td width="245"></td><td width="100"><b>DIFFICULTY IN</b></td>
           <td width="100"><input type="checkbox" value="Standing" name="standing">Standing</td>
           <td width="100"><input type="checkbox" value="Sitting" name="sitting">Sitting</td>
           <td width="100"><input type="checkbox" value="Walking" name="walking">Walking</td>
           <td width="100"><input type="checkbox"  value="Sleeping" name="sleeping"> Sleeping</td>
           <td width="100"><input type="checkbox"  value="Lifting" name="lifting">Lifting</td>
           <td><input type="checkbox" value="Bending" name="bending">Bending</td>
           
           
           </tr></table>
           
           
          
           </br>
          <b> PAIN RADIATES TO:</b>
                 </br>
                 <table>
                 <tr>
                 <td>Headache</td><td><input type="textbox" size="5" name="headache"> /10</td><td width="70"></td><td width="80">Shoulder</td><td><input type="radio" name="shoulder" value="Left">L&nbsp;&nbsp;<input type="radio" value="Right" name="shoulder">R&nbsp;&nbsp;<input type="radio"  value="Both" name="shoulder">Both</td><td width="50"></td><td width="100"><b>WEAKNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="armsweakness">L&nbsp;&nbsp;<input type="radio" name="armsweakness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="armsweakness" >Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="handsweakness">L&nbsp;&nbsp;<input type="radio" name="handsweakness"  value="R">R&nbsp;&nbsp;<input type="radio" value="Both" name="handsweakness">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="legsweakness" id="legsweaknessleft">L&nbsp;&nbsp;<input type="radio" name="legsweakness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="legsweakness">Both&nbsp;&nbsp;</td><td><b>&nbsp;&nbsp;Feet&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="radio"  value="Left" name="feetweakness">L&nbsp;&nbsp;<input type="radio" name="feetweakness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="feetweakness">Both</td>
                 </tr>
                 <tr>
                 <td>Neck pain/stiffness</td><td><input type="textbox" size="5" name="neckpain"> /10</td><td></td><td>Arm/elbow</td><td><input type="radio" value="Left" name="elbow">L&nbsp;&nbsp;<input type="radio" value="Right" name="elbow">R&nbsp;&nbsp;<input type="radio" value="Both" name="elbow">Both</td><td></td><td><b>PINS & NEEDLES:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="armspins">L&nbsp;&nbsp;<input type="radio" name="armspins"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="armspins">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="handspins">L&nbsp;&nbsp;<input type="radio" name="handspins"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="handspins">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="legspins">L&nbsp;&nbsp;<input type="radio" name="legspins"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="legspins">&nbsp;&nbsp;Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="feetpins">L&nbsp;&nbsp;<input type="radio" name="feetpins"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="feetpins">Both</td>
                 </tr>
                 <tr>
                 <td>Upper back pain/stiffness</td><td> <input type="textbox" size="5" name="upperback">/10</td><td></td><td>Wrist/hand</td><td><input type="radio" value="Left" name="wrist">L&nbsp;&nbsp;<input type="radio" value="Right"  name="wrist">R&nbsp;&nbsp;<input type="radio" value="Both"  name="wrist">Both</td><td></td><td><b>NUMBNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="armsnumbness">L&nbsp;&nbsp;<input type="radio" name="armsnumbness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="armsnumbnessboth">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="handsnumbness">L&nbsp;&nbsp;<input type="radio" name="handsnumbnessright"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="handsnumbness">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="legsnumbness">L&nbsp;&nbsp;<input type="radio" name="legsnumbness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="legsnumbness">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="feetnumbness">L&nbsp;&nbsp;<input type="radio" name="feetnumbness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="feetnumbness">Both</td>
                 </tr>
                 <tr>
                 <td>Mid-back pain/stiffness</td><td><input type="textbox" size="5" name="midback"> /10</td><td></td><td>Chest/ribs</td><td><input type="radio" value="Left" name="ribs">L&nbsp;&nbsp;<input type="radio" value="Right" name="ribs">R&nbsp;&nbsp;<input type="radio" value="Both" name="ribs">Both</td><td></td><td><b>COLDNESS:</b></td><td><b>Arms:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="armscoldness">L&nbsp;&nbsp;<input type="radio" name="armscoldness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="armscoldnessboth">Both&nbsp;&nbsp;</td><td><b>&nbsp;&nbsp;Hands:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="handscoldness">L&nbsp;&nbsp;<input type="radio" name="handscoldnessright"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="handscoldness">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Legs:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="legscoldness">L&nbsp;&nbsp;<input type="radio" name="legscoldness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="legscoldness">Both&nbsp;&nbsp;</td><td>&nbsp;&nbsp;<b>Feet:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  value="Left" name="feetcoldness">L&nbsp;&nbsp;<input type="radio" name="feetcoldness"  value="Right">R&nbsp;&nbsp;<input type="radio" value="Both" name="feetcoldness">Both</td>
                 </tr><tr>
                 <td>Low back pain/stiffness</td><td><input type="textbox" size="5" name="lowback"> /10</td><td></td><td>Hip/gluteal</td><td><input type="radio" value="Left" name="hip">L&nbsp;&nbsp;<input type="radio" value="Right" name="hip">R&nbsp;&nbsp;<input type="radio" value="Both" name="hip">Both</td><td></td>
                 </tr><tr>
                 <td>Tmj pain/clicking</td><td><input type="textbox" size="5" name="tmjpain"> /10</td><td></td><td>Leg/knee</td><td><input type="radio"  value="Left" name="leg">L&nbsp;&nbsp;<input type="radio" value="Right" name="leg">R&nbsp;&nbsp;<input type="radio" value="Both" name="leg">Both</td><td></td>
                 </tr>
                 <tr>
                 <td>Other</td><td><input type="textbox" size="5" name="other"> /10</td><td></td><td>Ankle / foot</td><td><input type="radio" value="Left" name="ankle">L&nbsp;&nbsp;<input type="radio" value="Right" name="ankle">R&nbsp;&nbsp;<input type="radio" name="ankle" value="Both">Both</td><td></td>
                 </tr>
                 
                 
                 </table>
           <table >
           <tr><td>Patient rates their current health status/pain level:   Visual Analog Scale (VAS)</td><td width="100"></td><td>[100% Well]  </td>  <td>

<label for="amount"><b>Pain Scale:</b></label>
	 <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;" name="painscale" />&nbsp;&nbsp;&nbsp;
 <div id="slider"></div></td> <td>[Bed Ridden]</td></tr></table>
   </br>  
   <table>
   <tr><td>
   <table style="border-collapse: collapse;border:2px solid;">
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>CERVICAL</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td  align="center" style= "border:2px solid;" width="50"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;" align="center"><td style= "border:1px solid;">Paraspinals</td><td style= "border:1px solid;"><input align="center" type="radio" name="paraspinals" value="Left"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="paraspinals" ></td><td style= "border:1px solid;" align="center" ><input type="radio" name="paraspinals" value="Both"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">SCM</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="scm"></td><td style= "border:1px solid;" align="center"><input type="radio" name="scm"  value="Right" ></td><td style= "border:1px solid;" align="center"><input type="radio" name="scm" value="Both" ></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Upper Traps</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="uppertraps"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="uppertraps"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="uppertraps"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Suboccipitals</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="suboccipitals"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="suboccipitals"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="suboccipitals"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Scalenes</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="scalenes"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="scalenes"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="scalenes"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
  <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>UPPER EXT</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td style= "border:2px solid;" width="50" align="center"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Triceps</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="triceps" align="center"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="triceps"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="triceps"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Biceps</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="biceps"></td><td style= "border:1px solid;" align="center"><input type="radio" name="biceps" value="Right"></td><td style= "border:1px solid;" align="center"><input type="radio" name="biceps" value="Both"></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Brachioradialis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="brachioradialis"></td><td style= "border:1px solid;"align="center"><input type="radio" value="Right" name="brachioradialis"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="brachioradialis"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Wrist Flexors / Extens</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="wristflex"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="wristflex"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="wristflex"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Hand</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="hand"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="hand"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="hand"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Pectoralis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="pectoralis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="pectoralis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value=Both" name="pectoralis"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>THORACIC</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td style= "border:2px solid;" width="50" align="center"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Trapezius</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="trapezius" align="center"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="trapezius"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="trapezius"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">S.I.Ts-supra/infra/teres min</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left"  name="supra"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="supra"></td><td style= "border:1px solid;" align="center"><input type="radio" name="supra"></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Subscapularis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="subscapularis"></td><td style= "border:1px solid;"align="center"><input type="radio" value="Right" name="subscapularis"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="subscapularis"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Lattissimus Dorsi</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="dorsi"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="dorsi"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="dorsi"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Levator Scapulae</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="levator"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="levator"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="levator"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Rhomboids</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="rhomboids"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="rhomboids"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="rhomboids"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Supraspinatus</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="supraspinatus"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="supraspinatus"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="supraspinatus"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Serratus Anterior</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="anterior"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="anterior"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="anterior"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Paraspinals</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="paraspinals"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="paraspinals"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="paraspinals"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>LUMBAR</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td style= "border:2px solid;" width="50" align="center"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Paraspinals</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="paraspinalslum" align="center"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="paraspinalslum"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="paraspinalslum"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Iliopsoas</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="iliopsoas"></td><td style= "border:1px solid;" align="center"><input type="radio" name="iliopsoas" value="Right"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="iliopsoas"></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gluteus Maximus</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="maximus"></td><td style= "border:1px solid;"align="center"><input type="radio" value="Right" name="maximus"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="maximus"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gluteus Medius</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="medius"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="medius"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="medius"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Piriformis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="piriformis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="piriformis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="piriformis"></td></tr>
     
 <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
  <tr style="border:2px solid;" class="row2"><td align="center" style= "border:2px solid;" width="200"><b>LOWER EXTREMITIES</b></td><td align="center" style= "border:2px solid;" width="50"><b>L</b></td><td style= "border:2px solid;" width="50" align="center"><b>R</b></td><td align="center" style= "border:2px solid;" width="50"><b>B</b></td></tr>
  <tr style="border:1px solid;"><td  align="center" style= "border:1px solid;">Quadriceps/Sartorius</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="sartorius" align="center"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="sartorius"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="sartorius"></td></tr>
  <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Hamstrings</td><td style= "border:1px solid;" align="center"><input type="radio" value="Left" name="hamstrings"></td><td style= "border:1px solid;" align="center"><input value="Right" type="radio" name="hamstrings"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="hamstrings"></td></tr>
   <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">TFL/ITB</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="TFL"></td><td style= "border:1px solid;"align="center"><input type="radio" value="Right" name="TFL"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="TFL"></td></tr>
    <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">HIP</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="HIP1"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="HIP1"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="HIP1"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Gastroc/Soleus/Achilles</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="achilles"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="achilles"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="achilles"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Anterior/post. Tibialis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="tibialis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="tibialis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="tibialis"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">QLS</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="QLS"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Right" name="QLS"></td><td style= "border:1px solid;" align="center"><input type="radio" value="Both" name="QLS"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Peroneals/Ankle</td><td align="center" style= "border:1px solid;"><input type="radio" value="ankle" name="ankles"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="ankles"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="ankles"></td></tr>
     <tr style="border:1px solid;"><td align="center" style= "border:1px solid;">Adductors/Gracilis</td><td align="center" style= "border:1px solid;"><input type="radio" value="Left" name="gracilis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Right" name="gracilis"></td><td style= "border:1px solid;" align="center"><input type="radio"  value="Both" name="gracilis"></td></tr>
      <tr style="border:1px solid;"><td align="center" style= "border:1px solid;"></td><td align="center" style= "border:1px solid;"></td><td style= "border:1px solid;"></td><td style= "border:1px solid;"></td></tr>
   <tr style="border:2px solid;" class="row2"></table>       
     </td>
     
     
     
     <td width="70"></td>
     <td valign="top">
     <table height="300">
     <tr><td valign="top"><b>Therapy Performed:</b>  
     
     </td><td></td></tr>
     <tr>  <td>Myofasical Release</td><td><input type="checkbox" value="Myofasical Release" name="myofasical"></td></tr>
     <tr>  <td>Manual Traction</td><td><input type="checkbox" value="Manual Traction" name="manualtraction"></td></tr>
     <tr>  <td>Trigger Point Therapy </td><td><input type="checkbox" value="Trigger Point Therapy " name="triggerpoint"></td></tr>
   <tr>  <td>Lymphatic Drainage</td><td><input type="checkbox" value="Lymphatic Drainage" name="lymphaticdrainage"></td></tr>
     <tr>  <td>Effleurage</td><td><input type="checkbox" value="Effleurage" name="effleurage"></td></tr>
     <tr>  <td>Taponnement</td><td><input type="checkbox" value="Taponnement" name="taponnement"></td></tr>
     <tr>  <td>Cross Friction Fiber </td><td><input type="checkbox" value="Cross Friction Fiber" name="crossfrictionfiber"></td></tr>
     <tr>  <td>PNF</td><td><input type="checkbox" value="PNF" name="PNF"></td></tr>
     <tr>  <td>Neuromuscular</td><td><input type="checkbox" value="Neuromuscular" name="neuromuscular"></td></tr>
     <tr height="10">  </tr>   
     </table> 
     <table>
     <tr><td width="30"><input type="checkbox" value="97140-59 (MT)" name="MT" ></td><td>97140-59 (MT)</td></tr>
     <tr height="10"></tr>
     <tr><td width="30"><input type="checkbox" value="97110-59 (TE)" name="TE" ></td><td>97140-59 (MT)</td></tr>
     <tr height="10"></tr>
     <tr><td width="30"><input type="checkbox" value="97124-59 (MA)" name="MA" ></td><td>97140-59 (MT)</td></tr>
     
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
   <tr ><td width="100">Units Performed:  </td><td width="30"><input type="radio" name="unit" value="1">1</td><td width="30"><input type="radio" name="unit" value="2">2</td><td width="30"><input type="radio" name="unit" value="3">3</td><td><input type="radio" name="unit" value="4">4</td></tr>
   <tr height="10"></tr>
   <tr ><td>Units Performed:  </td><td><input type="radio" name="units" value="1">1</td><td><input type="radio" name="units" value="2">2</td><td><input type="radio" name="units" value="3">3</td><td><input type="radio" name="units" value="4">4</td></tr>
    <tr height="10"></tr>
   <tr><td>Units Performed:  </td><td><input type="radio" name="unitperform" value="1">1</td><td><input type="radio" name="unitperform" value="2">2</td><td><input type="radio" name="unitperform" value="3">3</td><td><input type="radio" name="unitperform" value="4">4</td></tr>
   </Table>
   </br>
   <table>
   <tr><td><Textarea rows="5" cols="50" name="therapist"></Textarea></td></tr>
   <tr height="20"></tr>
   <tr><td><Textarea rows="5" cols="50" name="therapistrecommend"></Textarea></td></tr>
   <tr height="20"></tr>
   <tr><td><Textarea rows="5" cols="50" name="futurerecommend"></Textarea></td></tr>
   </table>
   
   
   
   </td>
    
    
    </tr>       
   </table>   
   <Table><tr><td></td><td></td>
   
   <td width="320"></td><td><input type="text" name="session">of sessions recommended for length of time:[30 min./1 hour]over <input type="text" name="weeks">weeks.  </td>
   </tr>
   <tr height="10"></tr>
   <tr>
   <td><span class="err">*</span>Signature:</td><td><input type="text" name="signature"><br><span class="err"><form:errors path="therapy.date"></form:errors></td><td></td><td><input type="text" name="daily">Daily Supportive Care Visit</td>
   </tr></Table>    
   <table align="right"><tr><td><input type="submit" value="Save" class="submit_btn"></td><td> <a href="viewmanualtherapy" style="color: white" class="submit_btn">Cancel</a></td></tr></table>      
            
     </div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            