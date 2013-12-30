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
$(function() {
    $( "#datepicker1" ).datepicker();
  });
</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
   <script type="text/javascript">
function toggle3(value){
	/* alert(value); */
	var e = document.getElementById('check');
	
if(value=='show3')
	{
 e.style.display="block";
 e1.style.display="none";
	}
else
	{
 e.style.display="none";
 e1.style.display="block";
	}
}

</script>
</head>
 <body>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li> 
          <li><a href="#tabs-3">3</a></li>         
       </ul>
    <form action="dcfeeslip" method="POST" name="dcfeeslip">     
   <div id="tabs-1"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>DC FEE SLIP</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
        <c:forEach items="${dcfeeslipForm.dcfeeslip}" var="dcfeeslip" varStatus="status">    
 <tr class="row1">
<td width="90"><h2>Patient Id:</h2></td><td>${dcfeeslip.pid}</td>
<td width="800">
<td><h2>Date:</h2></td><td>${dcfeeslip.date}</td>
</tr>
</table>
<table>
 <tr class="row1">
<td><h2> Patient Name:</h2></td><td>${dcfeeslip.pname}</td>
<td>
<td><h2>Treating Physician Name:</h2></td><td>${dcfeeslip.dr1}</td>
<td><h2>RPT:</h2></td><td>${dcfeeslip.rpt}</td>
<td><h2>PTA:</h2></td><td>${dcfeeslip.pta}</td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row2">
 <td width="200"></td>
 <td width="200"></td>
 <td><B style="font-size:14px">NEW PATIENT</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99201 </td><td>Initial E/M Limited</td> 
 <td>${dcfeeslip.initialemlimited} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99202 </td><td>Initial E/M Expanded</td> 
 <td>${dcfeeslip.initialexpanded} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99203 </td><td>Initial E/M Detailed</td> 
 <td>${dcfeeslip.initialdetailed} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99204 </td><td>Initial E/M Extended</td> 
 <td>${dcfeeslip.initialemextended} </td> 
 
 </tr>
  
  <tr class="row2">
  <td width="200"></td>
 <td width="200"></td>
 <td><B style="font-size:14px">ESTABLISHED PATIENT</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
  <tr class="row1">
  <td></td>
 <td width="200">99211 </td><td>Est. Patient E/M Ltd.</td> 
 <td>${dcfeeslip.estpatientltd} </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99212 </td><td>Est. Patient E/M Exp.</td> 
 <td>${dcfeeslip.estpatientexp} </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99213 </td><td>Est. Patient E/M Detail.</td> 
 <td>${dcfeeslip.estpatientdetails} </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99214 </td><td>Est. Patient E/M Comp.</td> 
 <td>${dcfeeslip.estpatientcomp} </td> 

 </tr>
 <tr class="row2">
 <td width="200"></td>
  <td width="200"></td>
 <td><B style="font-size:14px">CONSULTATIONS</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99242 </td><td>Consult w/Phys. Ref Exp.</td> 
 <td>${dcfeeslip.consultphys} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99243 </td><td>Consult w/Phys. Ref Detail.</td> 
 <td>${dcfeeslip.consultdetail} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99244 </td><td>Consult w/Phys. Ref Comp.</td> 
 <td>${dcfeeslip.consultcomp} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99272 </td><td>Patient Initiated Consult Exp.</td> 
 <td>${dcfeeslip.patientexp}</td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99273 </td><td>Patient Initiated Consult Detail.</td> 
 <td>${dcfeeslip.patientdetails} </td> 
 
 </tr>
   <tr class="row1">
    <td></td>
 <td width="200">99272 </td><td>Patient Initiated Consult Comp.</td> 
 <td>${dcfeeslip.patientcomp} </td> 

 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99371 </td><td>Telephone Consultation Brief</td> 
 <td>${dcfeeslip.telephonebrief} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99372 </td><td>Telephone Consult Intermediate</td> 
 <td>${dcfeeslip.telephoneintermediate} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99373 </td><td>Telephone Consultation Comp</td> 
 <td>${dcfeeslip.telephonecomp} </td> 
 
 </tr>
  <tr class="row2">
  <td width="200"></td>
 <td width="200"></td>
 <td width="200"><B style="font-size:14px">SUPERVISED MODALITIES</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97012 </td><td>Traction Mechanical</td> 
 <td>${dcfeeslip.tractionmechanical} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97014 </td><td>Electric Stim - Unattended</td> 
 <td>${dcfeeslip.electricstim} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97016 </td><td>Vasopneumatic Device</td> 
 <td>${dcfeeslip.vasopneumatic} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97018 </td><td>Paraffin Bath</td> 
 <td>${dcfeeslip.paraffin} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97020 </td><td>Microwave</td> 
 <td>${dcfeeslip.microwave}</td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97022 </td><td>Whirlpool/Hydrotherapy</td> 
 <td>${dcfeeslip.whirlpool} </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97024 </td><td>Diathermy</td> 
 <td>${dcfeeslip.diathermy} </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97026 </td><td>Infrared</td> 
 <td>${dcfeeslip.infrared} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97028 </td><td>Ultraviolet</td> 
 <td>${dcfeeslip.ultraviolet} </td> 
 
 </tr>
 <tr class="row2">
 <td width="200"></td>
 <td width="200"></td>
 <td width="300"><B style="font-size:14px">CONSTANT ATTENDANCE MODALITIES</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97032 </td><td>Manual Electrical Stim.</td> 
 <td>${dcfeeslip.manualelectricalstim} </td> 
 
 </tr>
  <tr class="row1">
  <td></td>
 <td width="200">97033 </td><td>Iontophoresis</td> 
 <td>${dcfeeslip.iontophoresis} </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97034 </td><td>Contrast Baths</td> 
 <td>${dcfeeslip.contrastbaths} </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97035 </td><td>Ultrasound</td> 
 <td>${dcfeeslip.ultrasound} </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97039 </td><td>Other/Unlisted</td> 
 <td>${dcfeeslip.unlisted} </td> 

</tr>
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
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>DC FEE SLIP</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row2">
 <td width="200"></td>
 <td width="200"></td>
 <td width="300"><B style="font-size:14px">THERAPEUTIC PROCEDURES</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97110 </td><td>Therapeutic Exercise</td> 
 <td>${dcfeeslip.therapeutic} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97112 </td><td>Neuromuscular Re-Ed</td> 
 <td>${dcfeeslip.neuromuscular} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97113 </td><td>Aquatic Therapy</td> 
 <td>${dcfeeslip.aquatic} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97116 </td><td>Gait Training (Incl. Stairs)</td> 
 <td>${dcfeeslip.gaittraining} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97124 </td><td>Massage</td> 
 <td>${dcfeeslip.massage} </td> 
 </tr>
<tr class="row1">
 <td></td>
 <td width="200">97140 </td><td>Manual Therapy</td> 
 <td>${dcfeeslip.manualtherapy} </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97139 </td><td>Unlisted/Other</td> 
 <td>${dcfeeslip.unlistedother}</td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97150 </td><td>Group Therapy (2 or More)</td> 
 <td>${dcfeeslip.grouptherapy} </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97504 </td><td>Orthotics Fitting</td> 
 <td>${dcfeeslip.orthotics} </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97530 </td><td>Kinetic Activities</td> 
 <td>${dcfeeslip.kinetic} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97535 </td><td>ADL Self-Care</td> 
 <td>${dcfeeslip.adlselfcare} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97537 </td><td>Reintegration Training</td> 
 <td>${dcfeeslip.reintegration} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97780 </td><td>Acupuncture w/o E-stimulation</td> 
 <td>${dcfeeslip.acupuncturewo} </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97781 </td><td>Acupuncture w/ E-stimulation</td> 
 <td>${dcfeeslip.acupuncturew} </td> 
 </tr>
  <tr class="row2">
  <td width="200"></td>
 <td width="200"></td>
 <td width="300"><B style="font-size:14px">CHIROPRACTIC MANIPULATION</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
  <tr class="row1">
  <td></td>
 <td width="200">98940 </td><td>Spine 1-2 Regions</td> 
 <td>${dcfeeslip.spine12}</td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">98941 </td><td>Spine 3-4 Regions</td> 
 <td>${dcfeeslip.spine34} </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">98942 </td><td>Spine 5 Regions</td> 
 <td>${dcfeeslip.spine5} </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">98943 </td><td>Extremity (1 or More Regions)</td> 
 <td>${dcfeeslip.extremity} </td> 

 </tr>
 <tr class="row2">
 <td width="200"></td>
  <td width="200"></td>
 <td><B style="font-size:14px">DIAGNOSIS</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">81000 </td><td>Routine Urinalysis</td> 
 <td>${dcfeeslip.routine} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95831 </td><td>Muscle Test/Report</td> 
 <td>${dcfeeslip.muscle} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95832 </td><td>Muscle Test Hand/Report</td> 
 <td>${dcfeeslip.musclehand} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95851 </td><td>Range of Motion/ Report</td> 
 <td>${dcfeeslip.rangeofmotion} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95852 </td><td>Range of Motion Hand/Rpt</td> 
 <td>${dcfeeslip.rangeofmotionhand} </td> 
 
 </tr>
   <tr class="row1">
    <td></td>
 <td width="200">95900 </td><td>NCV Ea. Motor w/o F-Wave</td> 
 <td>${dcfeeslip.ncv} </td> 

 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95903 </td><td>NCV Ea. Motor w/ F-Wave</td> 
 <td>${dcfeeslip.ncvw}</td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95904 </td><td>NCV Ea. Sensory</td> 
 <td>${dcfeeslip.ncvea} </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95925 </td><td>SSEP: Upper</td> 
 <td>${dcfeeslip.ssepupper} </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95926 </td><td>SSEP: Lower</td> 
 <td>${dcfeeslip.sseplower} </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95927 </td><td>SSEP: Head/Trunk</td> 
 <td>${dcfeeslip.ssephead}</td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95934 </td><td>H-Reflex R / L</td> 
 <td>${dcfeeslip.hreflex} </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">97750 </td><td>Physical Performance Test</td> 
 <td>${dcfeeslip.physicalperformance} </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">99456 </td><td>Functional Capacity Evaluation</td> 
 <td>${dcfeeslip.functionalcapacity} </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200"> </td><td></td> 
 <td>${dcfeeslip.text1} </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200"> </td><td></td> 
 <td>${dcfeeslip.text2} </td> 
 
 </tr>
  <tr class="row2">
  <td width="200"></td>
 <td width="200"></td>
 <td width="200"><B style="font-size:14px">MISCELLANEOUS</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99070 </td><td>Supplies</td> 
 <td>${dcfeeslip.supplies} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99071 </td><td>Patient Education Materials</td> 
 <td>${dcfeeslip.patienteducation}</td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99075 </td><td>Medical Testimony</td> 
 <td>${dcfeeslip.medicaltestimony} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99080 </td><td>Insurance Form / Report</td> 
 <td>${dcfeeslip.insuranceform} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99361</td><td>Team Conference</td> 
 <td>${dcfeeslip.teamconference} </td> 
 
 </tr>
 </table>
  </div>
  </div>
  </td>
  </tr>
  </table>
  </div>
  </div>
  
  <div id="tabs-3"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>DC FEE SLIP</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row2">
 <td width="200"></td>
 <td width="200"></td>
 <td><B style="font-size:14px">RADIOGRAPHY</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72010 </td><td>Complete Spine</td> 
 <td>${dcfeeslip.completespine} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72040 </td><td>Cervical: 2-3 Views</td> 
 <td>${dcfeeslip.cervical23} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72050 </td><td>Cervical: 4 Views</td> 
 <td>${dcfeeslip.cervical4} </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72052</td><td>Cervical: 6 - 7 Views (Davis)</td> 
 <td>${dcfeeslip.cervical67} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72074 </td><td>Thoracic: 4 Views</td> 
 <td>${dcfeeslip.thoracic4} </td> 
 </tr>
<tr class="row1">
 <td></td>
 <td width="200">72070 </td><td>Thoracic: 2 Views</td> 
 <td>${dcfeeslip.thoracic2} </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72090 </td><td>Scoliosis Study</td> 
 <td>${dcfeeslip.scoliosis}</td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72100 </td><td>Lumbosacral: 2 - 3 Views</td> 
 <td>${dcfeeslip.lumbosacral} </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72110 </td><td>Lumbosacral: 4 Views</td> 
 <td>${dcfeeslip.lumbosacral4} </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72170 </td><td>Pelvis: 2 Views</td> 
 <td>${dcfeeslip.pelvis2} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72114 </td><td>Lumbar Complete incl Bending</td> 
 <td>${dcfeeslip.lumbarcomplete} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73070 </td><td>Elbow: 2 Views</td> 
 <td>${dcfeeslip.elbow2} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73100 </td><td>Wrist: 2 Views</td> 
 <td>${dcfeeslip.wrist2} </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">73120 </td><td>Hand: 2 Views</td> 
 <td>${dcfeeslip.hand2} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73560 </td><td>Knee: 2 Views</td> 
 <td>${dcfeeslip.knee2} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73600 </td><td>Ankle: 2 Views</td> 
 <td>${dcfeeslip.ankle2}</td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73620 </td><td>Foot: 2 Views</td> 
 <td>${dcfeeslip.foot2} </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">76140 </td><td>Read Other Films(X)</td> 
 <td>${dcfeeslip.readotherfilms} </td> 
 </tr>
  <tr class="row2">
  <td width="200"></td>
 <td width="200"></td>
 <td><B style="font-size:14px">SUPPLIES</td>
 <td><B style="font-size:14px">Fee</B></td>
 <td width="200"></td>
 <td width="200"></td>
 
 </tr>
  <tr class="row1">
  <td></td>
 <td width="200">E0934W </td><td>Cervical Pillow</td> 
 <td>${dcfeeslip.cervicalpillow} </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L0515 </td><td>Lumbar Support</td> 
 <td>${dcfeeslip.lumbarsupport} </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">L3030L </td><td>Orthotic Custom (Left)</td> 
 <td>${dcfeeslip.orthoticcustoml} </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L3030R </td><td>Orthotic Custom (Right)</td> 
 <td>${dcfeeslip.orthoticcustomr}</td> 

 </tr>
 
 <tr class="row1">
  <td></td>
 <td width="200">E0720 </td><td>Tens Unit</td> 
 <td>${dcfeeslip.tensunit} </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">E0230 </td><td>Cold Pack</td> 
 <td>${dcfeeslip.coldpack}</td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99070 </td><td>Wrist Splint</td> 
 <td>${dcfeeslip.wristsplint} </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L3332 </td><td>Heel Lift</td> 
 <td>${dcfeeslip.heellift} </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Ball </td><td>Exercise Ball</td> 
 <td>${dcfeeslip.exerciseball}</td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Band </td><td>Exercise Band</td> 
 <td>${dcfeeslip.exerciseband} </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">A9270 </td><td>Unlisted Item</td> 
 <td>${dcfeeslip.unlisteditem} </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Charges: $</td> 
 <td><div id="info">${dcfeeslip.charges}</div> </td> 
 <td ></td>
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Less(-): $</td> 
 <td>${dcfeeslip.less}</td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Balance: $</td> 
 <td>${dcfeeslip.balance} </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Payment:(Circle)</td><td>${dcfeeslip.payment} &nbsp;&nbsp; Amt: $  </td>
 <td>${dcfeeslip.paymentcashcheck} </td> 
 </tr>
 </table>
 <div id="check" style="display:none;">
 <table>
  <tr class="row1">
  <td></td>
  <td></td>
  <td width="150"></td>
 <td width="200">Charge: </td><td>${dcfeeslip.amex} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dcfeeslip.discover}</td> 
 <td>${dcfeeslip.mc} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${dcfeeslip.visa}  </td> 
 </tr>
 <tr class="row1">
  <td></td><td> </td>
  <td width="150"></td>
 <td width="200">Card Holder Signature </td><td>${dcfeeslip.cardsign} </td> 
  
 </tr>
 </table>
 </div>
 <table>

  <tr class="row1">
  <td></td><td> </td>
 <td width="200">Date </td><td>${dcfeeslip.date1}</td>  
  
 </tr>
 <tr class="row1">
  <td></td><td> </td>
 <td width="200"><b>"I have received the services  </b></td><td width="300"><b>above and agree with the
charges."</b></td> 
  
 </tr>
 <tr class="row1">
 <td> </td><td></td>
  <td>Patient/Guardian Signature:</td>
 <td width="200">${dcfeeslip.parentsign}</td> 
  
 </tr>
  <tr class="row1">
  <td> </td> <td></td>
  <td>Dr. / Tech. Signature(s)</td>
 <td width="200">${dcfeeslip.doctorsign}</td> 
 
 </tr>
 <tr class="row1">
  <td>Reschedule: M T W Th F S for</td>
 <td width="200">1wk &nbsp; 2wks &nbsp; 3wks &nbsp; 4wks</td><td width="200">${dcfeeslip.week} </td> 
 <td width="200">${dcfeeslip.months}</td> 
 </tr>
  </table>
  </c:forEach>
<table align="right">
<tr>
<td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewdcfeeslip'"></td>
</tr>
</table>
</div>
</div>
</td>
</tr>
</table>
</div>
</div>
</form>
</div>
</body>
</html>
