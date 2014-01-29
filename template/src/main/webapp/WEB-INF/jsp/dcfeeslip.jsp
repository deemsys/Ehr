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
<script>
$(window).load(function(){
var oldValue = "";

$("#less").keyup(function() {   
		var $less = $(this).val();	
	    /* alert("less"+$less); */
		var $charges = $('#charges').val();
		var $balance=$charges-$less;
		/* alert("balance"+balance); */
	document.getElementById("balance").value=$balance;

}).keydown(function() {
    oldValue = $(this).val();
})
});
</script>
   <script type="text/javascript">
function doAjaxPost() {  
	  // get the form values  
	  
	  var initialemlimited = $('#initialemlimited').val();
	  var initialexpanded = $('#initialexpanded').val();
	  var initialdetailed = $('#initialdetailed').val();
	  var initialemextended = $('#initialemextended').val();
	  var estpatientltd = $('#estpatientltd').val();
	  var estpatientexp = $('#estpatientexp').val();
	  var estpatientdetails = $('#estpatientdetails').val();
	  var estpatientcomp = $('#estpatientcomp').val();
	  var consultphys = $('#consultphys').val();
	  var consultdetail = $('#consultdetail').val();
	  var consultcomp = $('#consultcomp').val();
	  var patientexp = $('#patientexp').val();
	  var patientdetails = $('#patientdetails').val();
	  var patientcomp = $('#patientcomp').val();
	  var telephonebrief = $('#telephonebrief').val();
	  var telephoneintermediate = $('#telephoneintermediate').val();
	  var telephonecomp = $('#telephonecomp').val();
	  var tractionmechanical = $('#tractionmechanical').val();
	  var electricstim = $('#electricstim').val();
	  var vasopneumatic = $('#vasopneumatic').val();
	  var paraffin = $('#paraffin').val();
	  var microwave = $('#microwave').val();
	  var whirlpool = $('#whirlpool').val();
	  var diathermy = $('#diathermy').val();
	  var infrared = $('#infrared').val();
	  var ultraviolet = $('#ultraviolet').val();
	  var manualelectricalstim = $('#manualelectricalstim').val();
	  var iontophoresis = $('#iontophoresis').val();
	  var contrastbaths = $('#contrastbaths').val();
	  var ultrasound = $('#ultrasound').val();
	  var unlisted = $('#unlisted').val();
	  var therapeutic = $('#therapeutic').val();
	  var neuromuscular = $('#neuromuscular').val();
	  var aquatic = $('#aquatic').val();
	  var gaittraining = $('#gaittraining').val();
	  var massage = $('#massage').val();
	  var manualtherapy = $('#manualtherapy').val();
	  var unlistedother = $('#unlistedother').val();
	  var grouptherapy = $('#grouptherapy').val();
	  var orthotics = $('#orthotics').val();
	  var kinetic = $('#kinetic').val();
	  var adlselfcare = $('#adlselfcare').val();
	  var reintegration = $('#reintegration').val();
	  var acupuncturewo= $('#acupuncturewo').val();
	  var acupuncturew= $('#acupuncturew').val();
	  var spine12 = $('#spine12').val();
	  var spine34 = $('#spine34').val();
	  var spine5 = $('#spine5').val();
	  var extremity = $('#extremity').val();
	  var routine = $('#routine').val();
	  var muscle = $('#muscle').val();
	  var musclehand = $('#musclehand').val();
	  var rangeofmotion = $('#rangeofmotion').val();
	  var rangeofmotionhand = $('#rangeofmotionhand').val();
	  var ncv = $('#ncv').val();
	  var ncvw = $('#ncvw').val();
	  var ncvea = $('#ncvea').val();
	  var ssepupper = $('#ssepupper').val();
	  var sseplower = $('#sseplower').val();
	  var ssephead= $('#ssephead').val();
	  var hreflex = $('#hreflex').val();
	  var physicalperformance = $('#physicalperformance').val();
	  var functionalcapacity = $('#functionalcapacity').val();
	  var text1 = $('#text1').val();
	  var text2 = $('#text2').val();
	  var supplies = $('#supplies').val();
	  var patienteducation = $('#patienteducation').val();
	  var medicaltestimony = $('#medicaltestimony').val();
	  var insuranceform = $('#insuranceform').val();
	  var teamconference = $('#teamconference').val();
	  var completespine = $('#completespine').val();
	  var cervical23 = $('#cervical23').val();
	  var cervical4 = $('#cervical4').val();
	  var cervical67 = $('#cervical67').val();
	  var thoracic4 = $('#thoracic4').val();
	  var thoracic2 = $('#thoracic2').val();
	  var scoliosis = $('#scoliosis').val();
	  var lumbosacral = $('#lumbosacral').val();
	  var lumbosacral4 = $('#lumbosacral4').val();
	  var pelvis2 = $('#pelvis2').val();
	  var lumbarcomplete = $('#lumbarcomplete').val();
	  var elbow2 = $('#elbow2').val();
	  var wrist2 = $('#wrist2').val();
	  var hand2 = $('#hand2').val();
	  var knee2 = $('#knee2').val();
	  var ankle2 = $('#ankle2').val();
	  var foot2 = $('#foot2').val();
	  var readotherfilms = $('#readotherfilms').val();
	  var cervicalpillow = $('#cervicalpillow').val();
	  var lumbarsupport = $('#lumbarsupport').val();
	  var orthoticcustoml = $('#orthoticcustoml').val();
	  var orthoticcustomr = $('#orthoticcustomr').val();
	  var tensunit = $('#tensunit').val();
	  var coldpack = $('#coldpack').val();
	  var wristsplint = $('#wristsplint').val();
	  var heellift = $('#heellift').val();
	  var exerciseball = $('#exerciseball').val();
	  var exerciseband = $('#exerciseband').val();
	  var unlisteditem = $('#unlisteditem').val();
	  
	  $.ajax({  
	    type: "POST",  
	    url: "/EhrApp/dcfeeslip_ajax",  
	    data: "initialemlimited=" + initialemlimited + "&initialexpanded=" + initialexpanded + "&initialdetailed=" + initialdetailed + "&initialemextended=" + initialemextended + "&estpatientltd=" + estpatientltd + "&estpatientexp=" + estpatientexp + "&estpatientdetails=" + estpatientdetails + "&estpatientcomp=" + estpatientcomp + "&consultphys=" + consultphys + "&consultdetail=" + consultdetail + "&consultcomp=" + consultcomp + "&patientexp=" + patientexp + "&patientdetails=" + patientdetails + "&patientcomp=" + patientcomp + "&telephonebrief=" + telephonebrief + "&telephoneintermediate=" + telephoneintermediate + "&telephonecomp=" + telephonecomp + "&tractionmechanical=" + tractionmechanical + "&electricstim=" + electricstim + "&vasopneumatic=" + vasopneumatic + "&paraffin=" + paraffin + "&microwave=" + microwave + "&whirlpool=" + whirlpool + "&diathermy=" + diathermy + "&infrared=" + infrared + "&ultraviolet=" + ultraviolet + "&manualelectricalstim=" + manualelectricalstim + "&iontophoresis=" + iontophoresis + "&contrastbaths=" + contrastbaths + "&ultrasound=" + ultrasound + "&unlisted=" + unlisted + "&therapeutic=" + therapeutic + "&neuromuscular=" + neuromuscular + "&aquatic=" + aquatic + "&gaittraining=" + gaittraining + "&massage=" + massage + "&manualtherapy=" + manualtherapy + "&unlistedother=" + unlistedother + "&grouptherapy=" + grouptherapy + "&orthotics=" + orthotics + "&kinetic=" + kinetic + "&adlselfcare=" + adlselfcare + "&reintegration=" + reintegration + "&acupuncturewo=" + acupuncturewo + "&acupuncturew=" + acupuncturew + "&spine12=" + spine12 + "&spine34=" + spine34 + "&spine5=" + spine5 + "&extremity=" + extremity + "&routine=" + routine + "&muscle=" + muscle + "&musclehand="+musclehand+"&rangeofmotion=" + rangeofmotion + "&rangeofmotionhand=" + rangeofmotionhand + "&ncv=" + ncv + "&ncvw=" +ncvw +" &ncvea=" + ncvea + "&ssepupper=" + ssepupper + "&sseplower=" + sseplower + "&ssephead=" +ssephead+"&hreflex=" + hreflex + "&physicalperformance=" + physicalperformance + "&functionalcapacity=" + functionalcapacity + "&text1=" + text1+"&text2=" + text2 + "&supplies=" + supplies + "&patienteducation=" + patienteducation + "&medicaltestimony=" +medicaltestimony+"&insuranceform=" + insuranceform + "&teamconference=" + teamconference + "&completespine=" + completespine + "cervical23=" + cervical23+"&cervical4=" + cervical4 + "&cervical67=" + cervical67 + "&thoracic4=" + thoracic4+"&thoracic2=" + thoracic2 + "&scoliosis=" + scoliosis + "&lumbosacral=" + lumbosacral+"&lumbosacral4=" + lumbosacral4 + "&pelvis2=" + pelvis2 + "&lumbarcomplete=" + lumbarcomplete+"&elbow2=" + elbow2 + "&wrist2=" + wrist2 + "&hand2=" + hand2+"&knee2=" + knee2 + "&ankle2=" + ankle2 + "&foot2=" + foot2+"&readotherfilms=" + readotherfilms + "&cervicalpillow=" + cervicalpillow + "&lumbarsupport=" + lumbarsupport+"&orthoticcustoml=" + orthoticcustoml + "&orthoticcustomr=" + orthoticcustomr + "&tensunit=" + tensunit+"&coldpack=" + coldpack + "&wristsplint=" + wristsplint + "&heellift=" + heellift+"&exerciseball=" + exerciseball + "&exerciseband=" + exerciseband + "&unlisteditem=" + unlisteditem ,  
	    success: function(response){  
	    	alert("Success!!!");
	      // we have the response  
	       $('#info').html(response);
	       /*  $('#initialemlimited').val('');
	      $('#initialexpanded').val('');
	      $('#initialdetailed').val('');
	      $('#initialemextended').val('');
	      $('#estpatientltd').val('');
	      $('#estpatientexp').val('');
	      $('#estpatientdetails').val('');
	      $('#estpatientcomp').val('');
	      $('#consultphys').val('');
	      $('#consultdetail').val('');
	      $('#consultcomp').val('');
	      $('#patientexp').val('');
	      $('#patientdetails').val('');
	      $('#patientcomp').val('');
	      $('#telephonebrief').val('');
	      $('#telephoneintermediate').val('');
	      $('#telephonecomp').val('');
	      $('#tractionmechanical').val('');
	      $('#electricstim').val('');
	      $('#vasopneumatic').val('');
	      $('#paraffin').val('');
	      $('#microwave').val('');
	      $('#whirlpool').val('');
	      $('#diathermy').val('');
	      $('#infrared').val('');
	      $('#ultraviolet').val('');
	      $('#manualelectricalstim').val('');
	      $('#iontophoresis').val('');
	      $('#contrastbaths').val('');
	      $('#ultrasound').val('');
	      $('#unlisted').val('');
	      $('#therapeutic').val('');
	      $('#neuromuscular').val('');
	      $('#aquatic').val('');
	      $('#gaittraining').val('');
	      $('#massage').val('');
	      $('#manualtherapy').val('');
	      $('#unlistedother').val('');
	      $('#grouptherapy').val('');
	      $('#orthotics').val('');
	      $('#kinetic').val('');
	      $('#adlselfcare').val('');
	      $('#reintegration').val('');
	      $('#acupuncturewo').val('');
	      $('#acupuncturew').val('');
	      $('#spine12').val('');
	      $('#spine34').val('');
	      $('#spine5').val('');
	      $('#extremity').val('');
	      $('#routine').val('');
	      $('#muscle').val('');
	      $('#musclehand').val('');
	      $('#neuromuscular').val('');
	      $('#aquatic').val('');
	      $('#gaittraining').val('');
	      $('#massage').val('');
	      $('#manualtherapy').val('');
	      $('#unlistedother').val('');
	      $('#grouptherapy').val('');
	      $('#orthotics').val('');
	      $('#kinetic').val('');
	      $('#adlselfcare').val('');
	      $('#reintegration').val('');
	      $('#acupuncturewo').val('');
	      $('#acupuncturew').val('');
	      $('#spine12').val('');
	      $('#spine34').val('');
	      $('#spine5').val('');
	      $('#extremity').val('');
	      $('#routine').val('');
	      $('#muscle').val('');
	      $('#musclehand').val('');
	      $('#rangeofmotion').val('');
	      $('#rangeofmotionhand').val('');
	      $('#ncv').val('');
	      $('#ncvw').val('');
	      $('#ncvea').val('');
	      $('#ssepupper').val('');
	      $('#sseplower').val('');
	      $('#ssephead').val('');
	      $('#hreflex').val('');
	      $('#physicalperformance').val('');
	      $('#functionalcapacity').val('');
	      $('#text1').val('');
	      $('#text2').val('');
	      $('#supplies').val('');
	      $('#patienteducation').val('');
	      $('#medicaltestimony').val('');
	      $('#insuranceform').val('');
	      $('#teamconference').val('');
	      $('#completespine').val('');
	      $('#cervical23').val('');
	      $('#cervical4').val('');
	      $('#cervical67').val('');
	      $('#thoracic4').val('');
	      $('#thoracic2').val('');
	      $('#scoliosis').val('');
	      $('#lumbosacral').val('');
	      $('#lumbosacral4').val('');
	      $('#pelvis2').val('');
	      $('#lumbarcomplete').val('');
	      $('#elbow2').val('');
	      $('#wrist2').val('');
	      $('#hand2').val('');
	      $('#knee2').val('');
	      $('#ankle2').val('');
	      $('#foot2').val('');
	      $('#readotherfilms').val('');
	      $('#cervicalpillow').val('');
	      $('#lumbarsupport').val('');
	      $('#orthoticcustoml').val('');
	      $('#orthoticcustomr').val('');
	      $('#tensunit').val('');
	      $('#coldpack').val('');
	      $('#wristsplint').val('');
	      $('#heellift').val('');
	      $('#exerciseball').val('');
	      $('#exerciseband').val('');
	      $('#unlisteditem').val('');	 */    
	    },  
	    error: function(e){  
	      alert('Error: ' + e);  
	    }  
	  });  
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
        <form action="dcfeeslip" method="POST" name="dcfee">
       <c:choose>
            <c:when test="${empty dcfee}">     
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
           
 <tr class="row1">
<td width="90"><h2><span class="err">*</span>Patient Id:</h2></td><td><input type="text"  name="pid" size="25"/><span class="err"><form:errors path="dcfeeslipdetail.pid"></form:errors></span></td>
<td width="800">
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" /><span class="err"><form:errors path="dcfeeslipdetail.date"></form:errors></span></td>
</tr>
</table>
<table>
 <tr class="row1">
<td><h2> <span class="err">*</span>Patient Name:</h2></td><td><input type="text"  name="pname" size="25" /><span class="err"><form:errors path="dcfeeslipdetail.pname"></form:errors></span></td>
<td>
<td><h2><span class="err">*</span>Treating Physician Name:</h2></td><td><input type="text" name="dr1" size="14"/><span class="err"><form:errors path="dcfeeslipdetail.dr1"></form:errors></span></td>
<td><h2>RPT:</h2></td><td><input type="text" name="rpt" size="14"/></td>
<td><h2>PTA:</h2></td><td><input type="text" name="pta" size="14"/></td>
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
 <td><input type="text" name="initialemlimited" id="initialemlimited" size="20" value="0" > </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99202 </td><td>Initial E/M Expanded</td> 
 <td><input type="text" name="initialexpanded" id="initialexpanded" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99203 </td><td>Initial E/M Detailed</td> 
 <td><input type="text" name="initialdetailed" id="initialdetailed" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99204 </td><td>Initial E/M Extended</td> 
 <td><input type="text" name="initialemextended" id="initialemextended" size="20" value="0"> </td> 
 
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
 <td><input type="text" name="estpatientltd" id="estpatientltd" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99212 </td><td>Est. Patient E/M Exp.</td> 
 <td><input type="text" name="estpatientexp" id="estpatientexp" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99213 </td><td>Est. Patient E/M Detail.</td> 
 <td><input type="text" name="estpatientdetails" id="estpatientdetails" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99214 </td><td>Est. Patient E/M Comp.</td> 
 <td><input type="text" name="estpatientcomp" id="estpatientcomp" size="20" value="0"> </td> 

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
 <td><input type="text" name="consultphys" id="consultphys" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99243 </td><td>Consult w/Phys. Ref Detail.</td> 
 <td><input type="text" name="consultdetail" id="consultdetail" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99244 </td><td>Consult w/Phys. Ref Comp.</td> 
 <td><input type="text" name="consultcomp" id="consultcomp" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99272 </td><td>Patient Initiated Consult Exp.</td> 
 <td><input type="text" name="patientexp" id="patientexp" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99273 </td><td>Patient Initiated Consult Detail.</td> 
 <td><input type="text" name="patientdetails" id="patientdetails" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
    <td></td>
 <td width="200">99272 </td><td>Patient Initiated Consult Comp.</td> 
 <td><input type="text" name="patientcomp" id="patientcomp" size="20" value="0"> </td> 

 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99371 </td><td>Telephone Consultation Brief</td> 
 <td><input type="text" name="telephonebrief" id="telephonebrief" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99372 </td><td>Telephone Consult Intermediate</td> 
 <td><input type="text" name="telephoneintermediate" id="telephoneintermediate" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99373 </td><td>Telephone Consultation Comp</td> 
 <td><input type="text" name="telephonecomp" id="telephonecomp" size="20" value="0"> </td> 
 
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
 <td><input type="text" name="tractionmechanical" id="tractionmechanical" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97014 </td><td>Electric Stim - Unattended</td> 
 <td><input type="text" name="electricstim" id="electricstim" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97016 </td><td>Vasopneumatic Device</td> 
 <td><input type="text" name="vasopneumatic" id="vasopneumatic" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97018 </td><td>Paraffin Bath</td> 
 <td><input type="text" name="paraffin" id="paraffin" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97020 </td><td>Microwave</td> 
 <td><input type="text" name="microwave" id="microwave" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97022 </td><td>Whirlpool/Hydrotherapy</td> 
 <td><input type="text" name="whirlpool" id="whirlpool" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97024 </td><td>Diathermy</td> 
 <td><input type="text" name="diathermy" id="diathermy" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97026 </td><td>Infrared</td> 
 <td><input type="text" name="infrared" id="infrared" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97028 </td><td>Ultraviolet</td> 
 <td><input type="text" name="ultraviolet" id="ultraviolet" size="20" value="0"> </td> 
 
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
 <td><input type="text" name="manualelectricalstim" id="manualelectricalstim" size="20" value="0"> </td> 
 
 </tr>
  <tr class="row1">
  <td></td>
 <td width="200">97033 </td><td>Iontophoresis</td> 
 <td><input type="text" name="iontophoresis" id="iontophoresis" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97034 </td><td>Contrast Baths</td> 
 <td><input type="text" name="contrastbaths" id="contrastbaths" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97035 </td><td>Ultrasound</td> 
 <td><input type="text" name="ultrasound" id="ultrasound" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97039 </td><td>Other/Unlisted</td> 
 <td><input type="text" name="unlisted" id="unlisted" size="20" value="0"> </td> 

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
 <td><input type="text" name="therapeutic" id="therapeutic" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97112 </td><td>Neuromuscular Re-Ed</td> 
 <td><input type="text" name="neuromuscular" id="neuromuscular" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97113 </td><td>Aquatic Therapy</td> 
 <td><input type="text" name="aquatic" id="aquatic" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97116 </td><td>Gait Training (Incl. Stairs)</td> 
 <td><input type="text" name="gaittraining" id="gaittraining" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97124 </td><td>Massage</td> 
 <td><input type="text" name="massage" id="massage" size="20" value="0"> </td> 
 </tr>
<tr class="row1">
 <td></td>
 <td width="200">97140 </td><td>Manual Therapy</td> 
 <td><input type="text" name="manualtherapy" id="manualtherapy" size="20" value="0"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97139 </td><td>Unlisted/Other</td> 
 <td><input type="text" name="unlistedother" id="unlistedother" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97150 </td><td>Group Therapy (2 or More)</td> 
 <td><input type="text" name="grouptherapy" id="grouptherapy" size="20" value="0"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97504 </td><td>Orthotics Fitting</td> 
 <td><input type="text" name="orthotics" id="orthotics" size="20" value="0"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97530 </td><td>Kinetic Activities</td> 
 <td><input type="text" name="kinetic" id="kinetic" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97535 </td><td>ADL Self-Care</td> 
 <td><input type="text" name="adlselfcare" id="adlselfcare" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97537 </td><td>Reintegration Training</td> 
 <td><input type="text" name="reintegration" id="reintegration" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97780 </td><td>Acupuncture w/o E-stimulation</td> 
 <td><input type="text" name="acupuncturewo" id="acupuncturewo" size="20" value="0"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97781 </td><td>Acupuncture w/ E-stimulation</td> 
 <td><input type="text" name="acupuncturew" id="acupuncturew" size="20" value="0"> </td> 
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
 <td><input type="text" name="spine12" id="spine12" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">98941 </td><td>Spine 3-4 Regions</td> 
 <td><input type="text" name="spine34" id="spine34" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">98942 </td><td>Spine 5 Regions</td> 
 <td><input type="text" name="spine5" id="spine5" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">98943 </td><td>Extremity (1 or More Regions)</td> 
 <td><input type="text" name="extremity" id="extremity" size="20" value="0"> </td> 

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
 <td><input type="text" name="routine" id="routine" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95831 </td><td>Muscle Test/Report</td> 
 <td><input type="text" name="muscle" id="muscle" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95832 </td><td>Muscle Test Hand/Report</td> 
 <td><input type="text" name="musclehand" id="musclehand" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95851 </td><td>Range of Motion/ Report</td> 
 <td><input type="text" name="rangeofmotion" id="rangeofmotion" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95852 </td><td>Range of Motion Hand/Rpt</td> 
 <td><input type="text" name="rangeofmotionhand" id="rangeofmotionhand" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
    <td></td>
 <td width="200">95900 </td><td>NCV Ea. Motor w/o F-Wave</td> 
 <td><input type="text" name="ncv" id="ncv" size="20" value="0"> </td> 

 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95903 </td><td>NCV Ea. Motor w/ F-Wave</td> 
 <td><input type="text" name="ncvw" id="ncvw" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95904 </td><td>NCV Ea. Sensory</td> 
 <td><input type="text" name="ncvea" id="ncvea" size="20" value="0"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95925 </td><td>SSEP: Upper</td> 
 <td><input type="text" name="ssepupper" id="ssepupper" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95926 </td><td>SSEP: Lower</td> 
 <td><input type="text" name="sseplower" id="sseplower" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95927 </td><td>SSEP: Head/Trunk</td> 
 <td><input type="text" name="ssephead" id="ssephead" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95934 </td><td>H-Reflex R / L</td> 
 <td><input type="text" name="hreflex" id="hreflex" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">97750 </td><td>Physical Performance Test</td> 
 <td><input type="text" name="physicalperformance" id="physicalperformance" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">99456 </td><td>Functional Capacity Evaluation</td> 
 <td><input type="text" name="functionalcapacity" id="functionalcapacity" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200"> </td><td></td> 
 <td><input type="text" name="text1" id="text1" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200"> </td><td></td> 
 <td><input type="text" name="text2" id="text2" size="20" value="0"> </td> 
 
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
 <td><input type="text" name="supplies" id="supplies" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99071 </td><td>Patient Education Materials</td> 
 <td><input type="text" name="patienteducation" id="patienteducation" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99075 </td><td>Medical Testimony</td> 
 <td><input type="text" name="medicaltestimony" id="medicaltestimony" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99080 </td><td>Insurance Form / Report</td> 
 <td><input type="text" name="insuranceform" id="insuranceform" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99361</td><td>Team Conference</td> 
 <td><input type="text" name="teamconference" id="teamconference" size="20" value="0"> </td> 
 
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
 <td><input type="text" name="completespine" id="completespine" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72040 </td><td>Cervical: 2-3 Views</td> 
 <td><input type="text" name="cervical23" id="cervical23" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72050 </td><td>Cervical: 4 Views</td> 
 <td><input type="text" name="cervical4" id="cervical4" size="20" value="0"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72052</td><td>Cervical: 6 - 7 Views (Davis)</td> 
 <td><input type="text" name="cervical67" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72074 </td><td>Thoracic: 4 Views</td> 
 <td><input type="text" name="thoracic4" id="thoracic4" size="20" value="0"> </td> 
 </tr>
<tr class="row1">
 <td></td>
 <td width="200">72070 </td><td>Thoracic: 2 Views</td> 
 <td><input type="text" name="thoracic2" id="thoracic2" size="20" value="0"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72090 </td><td>Scoliosis Study</td> 
 <td><input type="text" name="scoliosis" id="scoliosis" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72100 </td><td>Lumbosacral: 2 - 3 Views</td> 
 <td><input type="text" name="lumbosacral" id="lumbosacral" size="20" value="0"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72110 </td><td>Lumbosacral: 4 Views</td> 
 <td><input type="text" name="lumbosacral4" id="lumbosacral4" size="20" value="0"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72170 </td><td>Pelvis: 2 Views</td> 
 <td><input type="text" name="pelvis2" id="pelvis2" size="20" value="0" > </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72114 </td><td>Lumbar Complete incl Bending</td> 
 <td><input type="text" name="lumbarcomplete" id="lumbarcomplete" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73070 </td><td>Elbow: 2 Views</td> 
 <td><input type="text" name="elbow2" id="elbow2" size="20" value="0" > </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73100 </td><td>Wrist: 2 Views</td> 
 <td><input type="text" name="wrist2" id="wrist2" size="20" value="0" > </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">73120 </td><td>Hand: 2 Views</td> 
 <td><input type="text" name="hand2" id="hand2" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73560 </td><td>Knee: 2 Views</td> 
 <td><input type="text" name="knee2" id="knee2" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73600 </td><td>Ankle: 2 Views</td> 
 <td><input type="text" name="ankle2" id="ankle2" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73620 </td><td>Foot: 2 Views</td> 
 <td><input type="text" name="foot2" id="foot2" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">76140 </td><td>Read Other Films(X)</td> 
 <td><input type="text" name="readotherfilms" id="readotherfilms" size="20" value="0"> </td> 
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
 <td><input type="text" name="cervicalpillow" id="cervicalpillow" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L0515 </td><td>Lumbar Support</td> 
 <td><input type="text" name="lumbarsupport" id="lumbarsupport" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">L3030L </td><td>Orthotic Custom (Left)</td> 
 <td><input type="text" name="orthoticcustoml" id="orthoticcustoml" size="20" value="0"> </td>
</tr>
 <tr class="row1">
  <td></td>
 <td width="200">L3030R </td><td>Orthotic Custom (Right)</td> 
 <td><input type="text" name="orthoticcustomr" id="orthoticcustomr" size="20" value="0"> </td> 

 </tr>
 
 <tr class="row1">
  <td></td>
 <td width="200">E0720 </td><td>Tens Unit</td> 
 <td><input type="text" name="tensunit" id="tensunit" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">E0230 </td><td>Cold Pack</td> 
 <td><input type="text" name="coldpack" id="coldpack" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99070 </td><td>Wrist Splint</td> 
 <td><input type="text" name="wristsplint" id="wristsplint" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L3332 </td><td>Heel Lift</td> 
 <td><input type="text" name="heellift" id="heellift" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Ball </td><td>Exercise Ball</td> 
 <td><input type="text" name="exerciseball" id="exerciseball" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Band </td><td>Exercise Band</td> 
 <td><input type="text" name="exerciseband" id="exerciseband" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">A9270 </td><td>Unlisted Item</td> 
 <td><input type="text" name="unlisteditem" id="unlisteditem" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Charges: $</td> 
 <td><div id="info"><input type="text" name="charges" id="charges" size="20" value="0"></div> </td> 
 <td ><input type="button"  class="submit_btn" value="calculate" onclick="return doAjaxPost()"></td>
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Less(-): $</td> 
 <td><input type="text" name="less" id="less" size="20" value="0"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Balance: $</td> 
 <td><input type="text" name="balance" id="balance" size="20" value="0"> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Payment:(Circle)</td><td><input type="radio" name="payment" value="Cash" checked="true" onclick="toggle3('hide3')" >Cash &nbsp;&nbsp;&nbsp; <input type="radio" name="payment" value="Check"  onchange="toggle3('show3')" >Check &nbsp;&nbsp; Amt: $  </td>
 <td><input type="text" name="paymentcashcheck" size="20"> </td> 
 </tr>
 </table>
 <div id="check" style="display:none;">
 <table>
  <tr class="row1">
  <td></td>
  <td></td>
  <td width="150"></td>
 <td width="200">Charge: </td><td><input type="checkbox" name="amex" id="break1" value="Amex" >Amex &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="discover" id="break1" value="Discover" > Discover</td> 
 <td><input type="checkbox" name="mc" id="break1" value="MC" > MC &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="visa" id="break1" value="Visa" > Visa </td> 
 </tr>
 <tr class="row1">
  <td></td><td> </td>
  <td width="150"></td>
 <td width="200">Card Holder Signature </td><td><input type="text" name="cardsign" size="20"> </td> 
  
 </tr>
 </table>
 </div>
 <table>

  <tr class="row1">
  <td></td><td> </td>
 <td width="200"><span class="err">*</span>Date </td><td><input type="text"  id="datepicker1" name="date1"/><span class="err"><form:errors path="dcfeeslipdetail.date1"></form:errors></span></td> </td> 
  
 </tr>
 <tr class="row1">
  <td></td><td> </td>
 <td width="200"><b>"I have received the services  </b></td><td width="300"><b>above and agree with the
charges."</b></td> 
  
 </tr>
 <tr class="row1">
 <td> </td><td></td>
  <td><span class="err">*</span>Patient/Guardian Signature:</td>
 <td width="200"><input type="text" name="parentsign"><span class="err"><form:errors path="dcfeeslipdetail.parentsign"></form:errors></span></td> 
  
 </tr>
  <tr class="row1">
  <td> </td> <td></td>
  <td><span class="err">*</span>Dr. / Tech. Signature(s)</td>
 <td width="200"><input type="text" name="doctorsign" ><span class="err"><form:errors path="dcfeeslipdetail.doctorsign"></form:errors></span></td> 
 
 </tr>
 <tr class="row1">
  <td>Reschedule: M T W Th F S for</td>
 <td width="200">1wk &nbsp; 2wks &nbsp; 3wks &nbsp; 4wks</td><td width="200"><input type="text" name="week"> Weeks</td> 
 <td width="200"><input type="text" name="month"> Months </td> 
 </tr>
 </table>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save"></td>
<td><input type="reset" class="submit_btn" value="Cancel"></td>
</tr>
</table>
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
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td width="150"><h2><span class="err">*</span>Patient Id:</h2></td><td width="430"><input type="text"  name="pid" size="25" value="${dcfee.pid}"/><span class="err"><form:errors path="dcfeeslipdetail.pid"></form:errors></span></td>
<td width="300">
<td><h2><span class="err">*</span>Date:</h2></td><td width="430"><input type="text"  id="datepicker" name="date" value="${dcfee.date}"/><span class="err"><form:errors path="dcfeeslipdetail.date"></form:errors></span></td>
</tr>

</table>
<table>
 <tr class="row1">
<td><h2> <span class="err">*</span>Patient Name:</h2></td><td width="370"><input type="text"  name="pname" size="25" value="${dcfee.pname}"/><span class="err"><form:errors path="dcfeeslipdetail.pname"></form:errors></span></td>
<td>
<td><h2><span class="err">*</span>Treating Physician Name:</h2></td><td width="310"><input type="text" name="dr1" size="14" value="${dcfee.dr1}"/><span class="err"><form:errors path="dcfeeslipdetail.dr1"></form:errors></span></td>
<td><h2>RPT:</h2></td><td><input type="text" name="rpt" size="14" value="${dcfee.rpt}"/></td>
<td><h2>PTA:</h2></td><td><input type="text" name="pta" size="14" value="${dcfee.pta}"/></td>
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
 <td><input type="text" name="initialemlimited" id="initialemlimited" size="20" value="${dcfee.initialemlimited}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99202 </td><td>Initial E/M Expanded</td> 
 <td><input type="text" name="initialexpanded" id="initialexpanded" size="20" value="${dcfee.initialexpanded}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99203 </td><td>Initial E/M Detailed</td> 
 <td><input type="text" name="initialdetailed" id="initialdetailed" size="20" value="${dcfee.initialdetailed}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99204 </td><td>Initial E/M Extended</td> 
 <td><input type="text" name="initialemextended" id="initialemextended" size="20" value="${dcfee.initialemextended}"> </td> 
 
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
 <td><input type="text" name="estpatientltd" id="estpatientltd" size="20" value="${dcfee.estpatientltd}"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99212 </td><td>Est. Patient E/M Exp.</td> 
 <td><input type="text" name="estpatientexp" id="estpatientexp" size="20" value="${dcfee.estpatientexp}"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99213 </td><td>Est. Patient E/M Detail.</td> 
 <td><input type="text" name="estpatientdetails" id="estpatientdetails" size="20" value="${dcfee.estpatientdetails}"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99214 </td><td>Est. Patient E/M Comp.</td> 
 <td><input type="text" name="estpatientcomp" id="estpatientcomp" size="20" value="${dcfee.estpatientcomp}"> </td> 

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
 <td><input type="text" name="consultphys" id="consultphys" size="20" value="${dcfee.consultphys}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99243 </td><td>Consult w/Phys. Ref Detail.</td> 
 <td><input type="text" name="consultdetail" id="consultdetail" size="20" value="${dcfee.consultdetail}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99244 </td><td>Consult w/Phys. Ref Comp.</td> 
 <td><input type="text" name="consultcomp" id="consultcomp" size="20" value="${dcfee.consultcomp}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99272 </td><td>Patient Initiated Consult Exp.</td> 
 <td><input type="text" name="patientexp" id="patientexp" size="20" value="${dcfee.patientexp}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99273 </td><td>Patient Initiated Consult Detail.</td> 
 <td><input type="text" name="patientdetails" id="patientdetails" size="20" value="${dcfee.patientdetails}"> </td> 
 
 </tr>
   <tr class="row1">
    <td></td>
 <td width="200">99272 </td><td>Patient Initiated Consult Comp.</td> 
 <td><input type="text" name="patientcomp" id="patientcomp" size="20" value="${dcfee.patientcomp}"> </td> 

 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99371 </td><td>Telephone Consultation Brief</td> 
 <td><input type="text" name="telephonebrief" id="telephonebrief" size="20" value="${dcfee.telephonebrief}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99372 </td><td>Telephone Consult Intermediate</td> 
 <td><input type="text" name="telephoneintermediate" id="telephoneintermediate" size="20" value="${dcfee.telephoneintermediate}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99373 </td><td>Telephone Consultation Comp</td> 
 <td><input type="text" name="telephonecomp" id="telephonecomp" size="20" value="${dcfee.telephonecomp}"> </td> 
 
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
 <td><input type="text" name="tractionmechanical" id="tractionmechanical" size="20" value="${dcfee.tractionmechanical}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97014 </td><td>Electric Stim - Unattended</td> 
 <td><input type="text" name="electricstim" id="electricstim" size="20" value="${dcfee.electricstim}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97016 </td><td>Vasopneumatic Device</td> 
 <td><input type="text" name="vasopneumatic" id="vasopneumatic" size="20" value="${dcfee.vasopneumatic}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97018 </td><td>Paraffin Bath</td> 
 <td><input type="text" name="paraffin" id="paraffin" size="20" value="${dcfee.paraffin}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97020 </td><td>Microwave</td> 
 <td><input type="text" name="microwave" id="microwave" size="20" value="${dcfee.microwave}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97022 </td><td>Whirlpool/Hydrotherapy</td> 
 <td><input type="text" name="whirlpool" id="whirlpool" size="20" value="${dcfee.whirlpool}"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97024 </td><td>Diathermy</td> 
 <td><input type="text" name="diathermy" id="diathermy" size="20" value="${dcfee.diathermy}"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97026 </td><td>Infrared</td> 
 <td><input type="text" name="infrared" id="infrared" size="20" value="${dcfee.infrared}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97028 </td><td>Ultraviolet</td> 
 <td><input type="text" name="ultraviolet" id="ultraviolet" size="20" value="${dcfee.ultraviolet}"> </td> 
 
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
 <td><input type="text" name="manualelectricalstim" id="manualelectricalstim" size="20" value="${dcfee.manualelectricalstim}"> </td> 
 
 </tr>
  <tr class="row1">
  <td></td>
 <td width="200">97033 </td><td>Iontophoresis</td> 
 <td><input type="text" name="iontophoresis" id="iontophoresis" size="20" value="${dcfee.iontophoresis}"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97034 </td><td>Contrast Baths</td> 
 <td><input type="text" name="contrastbaths" id="contrastbaths" size="20" value="${dcfee.contrastbaths}"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97035 </td><td>Ultrasound</td> 
 <td><input type="text" name="ultrasound" id="ultrasound" size="20" value="${dcfee.ultrasound}"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97039 </td><td>Other/Unlisted</td> 
 <td><input type="text" name="unlisted" id="unlisted" size="20" value="${dcfee.unlisted}"> </td> 

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
 <td><input type="text" name="therapeutic" id="therapeutic" size="20" value="${dcfee.therapeutic}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97112 </td><td>Neuromuscular Re-Ed</td> 
 <td><input type="text" name="neuromuscular" id="neuromuscular" size="20" value="${dcfee.neuromuscular}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97113 </td><td>Aquatic Therapy</td> 
 <td><input type="text" name="aquatic" id="aquatic" size="20" value="${dcfee.aquatic}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97116 </td><td>Gait Training (Incl. Stairs)</td> 
 <td><input type="text" name="gaittraining" id="gaittraining" size="20" value="${dcfee.gaittraining}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97124 </td><td>Massage</td> 
 <td><input type="text" name="massage" id="massage" size="20" value="${dcfee.massage}"> </td> 
 </tr>
<tr class="row1">
 <td></td>
 <td width="200">97140 </td><td>Manual Therapy</td> 
 <td><input type="text" name="manualtherapy" id="manualtherapy" size="20" value="${dcfee.manualtherapy}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97139 </td><td>Unlisted/Other</td> 
 <td><input type="text" name="unlistedother" id="unlistedother" size="20" value="${dcfee.unlistedother}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97150 </td><td>Group Therapy (2 or More)</td> 
 <td><input type="text" name="grouptherapy" id="grouptherapy" size="20" value="${dcfee.grouptherapy}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97504 </td><td>Orthotics Fitting</td> 
 <td><input type="text" name="orthotics" id="orthotics" size="20" value="${dcfee.orthotics}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97530 </td><td>Kinetic Activities</td> 
 <td><input type="text" name="kinetic" id="kinetic" size="20" value="${dcfee.kinetic}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97535 </td><td>ADL Self-Care</td> 
 <td><input type="text" name="adlselfcare" id="adlselfcare" size="20" value="${dcfee.adlselfcare}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97537 </td><td>Reintegration Training</td> 
 <td><input type="text" name="reintegration" id="reintegration" size="20" value="${dcfee.reintegration}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97780 </td><td>Acupuncture w/o E-stimulation</td> 
 <td><input type="text" name="acupuncturewo" id="acupuncturewo" size="20" value="${dcfee.acupuncturewo}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97781 </td><td>Acupuncture w/ E-stimulation</td> 
 <td><input type="text" name="acupuncturew" id="acupuncturew" size="20" value="${dcfee.acupuncturew}"> </td> 
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
 <td><input type="text" name="spine12" id="spine12" size="20" value="${dcfee.spine12}"> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">98941 </td><td>Spine 3-4 Regions</td> 
 <td><input type="text" name="spine34" id="spine34" size="20" value="${dcfee.spine34}"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">98942 </td><td>Spine 5 Regions</td> 
 <td><input type="text" name="spine5" id="spine5" size="20" value="${dcfee.spine5}"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">98943 </td><td>Extremity (1 or More Regions)</td> 
 <td><input type="text" name="extremity" id="extremity" size="20" value="${dcfee.extremity}"> </td> 

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
 <td><input type="text" name="routine" id="routine" size="20" value="${dcfee.routine}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95831 </td><td>Muscle Test/Report</td> 
 <td><input type="text" name="muscle" id="muscle" size="20" value="${dcfee.muscle}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95832 </td><td>Muscle Test Hand/Report</td> 
 <td><input type="text" name="musclehand" id="musclehand" size="20" value="${dcfee.musclehand}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95851 </td><td>Range of Motion/ Report</td> 
 <td><input type="text" name="rangeofmotion" id="rangeofmotion" size="20" value="${dcfee.rangeofmotion}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95852 </td><td>Range of Motion Hand/Rpt</td> 
 <td><input type="text" name="rangeofmotionhand" id="rangeofmotionhand" size="20" value="${dcfee.rangeofmotionhand}"> </td> 
 
 </tr>
   <tr class="row1">
    <td></td>
 <td width="200">95900 </td><td>NCV Ea. Motor w/o F-Wave</td> 
 <td><input type="text" name="ncv" id="ncv" size="20" value="${dcfee.ncv}"> </td> 

 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95903 </td><td>NCV Ea. Motor w/ F-Wave</td> 
 <td><input type="text" name="ncvw" id="ncvw" size="20" value="${dcfee.ncvw}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95904 </td><td>NCV Ea. Sensory</td> 
 <td><input type="text" name="ncvea" id="ncvea" size="20" value="${dcfee.ncvea}"> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95925 </td><td>SSEP: Upper</td> 
 <td><input type="text" name="ssepupper" id="ssepupper" size="20" value="${dcfee.ssepupper}"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95926 </td><td>SSEP: Lower</td> 
 <td><input type="text" name="sseplower" id="sseplower" size="20" value="${dcfee.sseplower}"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95927 </td><td>SSEP: Head/Trunk</td> 
 <td><input type="text" name="ssephead" id="ssephead" size="20" value="${dcfee.ssephead}"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95934 </td><td>H-Reflex R / L</td> 
 <td><input type="text" name="hreflex" id="hreflex" size="20" value="${dcfee.hreflex}"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">97750 </td><td>Physical Performance Test</td> 
 <td><input type="text" name="physicalperformance" id="physicalperformance" size="20" value="${dcfee.physicalperformance}"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">99456 </td><td>Functional Capacity Evaluation</td> 
 <td><input type="text" name="functionalcapacity" id="functionalcapacity" size="20" value="${dcfee.functionalcapacity}"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200"> </td><td></td> 
 <td><input type="text" name="text1" id="text1" size="20" value="${dcfee.text1}"> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200"> </td><td></td> 
 <td><input type="text" name="text2" id="text2" size="20" value="${dcfee.text2}"> </td> 
 
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
 <td><input type="text" name="supplies" id="supplies" size="20" value="${dcfee.supplies}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99071 </td><td>Patient Education Materials</td> 
 <td><input type="text" name="patienteducation" id="patienteducation" size="20" value="${dcfee.patienteducation}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99075 </td><td>Medical Testimony</td> 
 <td><input type="text" name="medicaltestimony" id="medicaltestimony" size="20" value="${dcfee.medicaltestimony}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99080 </td><td>Insurance Form / Report</td> 
 <td><input type="text" name="insuranceform" id="insuranceform" size="20" value="${dcfee.insuranceform}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99361</td><td>Team Conference</td> 
 <td><input type="text" name="teamconference" id="teamconference" size="20" value="${dcfee.teamconference}"> </td> 
 
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
 <td><input type="text" name="completespine" id="completespine" size="20" value="${dcfee.completespine}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72040 </td><td>Cervical: 2-3 Views</td> 
 <td><input type="text" name="cervical23" id="cervical23" size="20" value="${dcfee.cervical23}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72050 </td><td>Cervical: 4 Views</td> 
 <td><input type="text" name="cervical4" id="cervical4" size="20" value="${dcfee.cervical4}"> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72052</td><td>Cervical: 6 - 7 Views (Davis)</td> 
 <td><input type="text" name="cervical67" size="20" value="${dcfee.cervical67}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72074 </td><td>Thoracic: 4 Views</td> 
 <td><input type="text" name="thoracic4" id="thoracic4" size="20" value="${dcfee.thoracic4}"> </td> 
 </tr>
<tr class="row1">
 <td></td>
 <td width="200">72070 </td><td>Thoracic: 2 Views</td> 
 <td><input type="text" name="thoracic2" id="thoracic2" size="20" value="${dcfee.thoracic2}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72090 </td><td>Scoliosis Study</td> 
 <td><input type="text" name="scoliosis" id="scoliosis" size="20" value="${dcfee.scoliosis}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72100 </td><td>Lumbosacral: 2 - 3 Views</td> 
 <td><input type="text" name="lumbosacral" id="lumbosacral" size="20" value="${dcfee.lumbosacral}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72110 </td><td>Lumbosacral: 4 Views</td> 
 <td><input type="text" name="lumbosacral4" id="lumbosacral4" size="20" value="${dcfee.lumbosacral4}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72170 </td><td>Pelvis: 2 Views</td> 
 <td><input type="text" name="pelvis2" id="pelvis2" size="20" value="${dcfee.pelvis2}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72114 </td><td>Lumbar Complete incl Bending</td> 
 <td><input type="text" name="lumbarcomplete" id="lumbarcomplete" size="20" value="${dcfee.lumbarcomplete}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73070 </td><td>Elbow: 2 Views</td> 
 <td><input type="text" name="elbow2" id="elbow2" size="20" value="${dcfee.elbow2}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73100 </td><td>Wrist: 2 Views</td> 
 <td><input type="text" name="wrist2" id="wrist2" size="20" value="${dcfee.wrist2}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">73120 </td><td>Hand: 2 Views</td> 
 <td><input type="text" name="hand2" id="hand2" size="20" value="${dcfee.hand2}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73560 </td><td>Knee: 2 Views</td> 
 <td><input type="text" name="knee2" id="knee2" size="20" value="${dcfee.knee2}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73600 </td><td>Ankle: 2 Views</td> 
 <td><input type="text" name="ankle2" id="ankle2" size="20" value="${dcfee.ankle2}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73620 </td><td>Foot: 2 Views</td> 
 <td><input type="text" name="foot2" id="foot2" size="20" value="${dcfee.foot2}"> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">76140 </td><td>Read Other Films(X)</td> 
 <td><input type="text" name="readotherfilms" id="readotherfilms" size="20" value="${dcfee.readotherfilms}"> </td> 
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
 <td><input type="text" name="cervicalpillow" id="cervicalpillow" size="20" value="${dcfee.cervicalpillow}"> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L0515 </td><td>Lumbar Support</td> 
 <td><input type="text" name="lumbarsupport" id="lumbarsupport" size="20" value="${dcfee.lumbarsupport}"> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">L3030L </td><td>Orthotic Custom (Left)</td> 
 <td><input type="text" name="orthoticcustoml" id="orthoticcustoml" size="20" value="${dcfee.orthoticcustoml}"> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L3030R </td><td>Orthotic Custom (Right)</td> 
 <td><input type="text" name="orthoticcustomr" id="orthoticcustomr" size="20" value="${dcfee.orthoticcustomr}"> </td> 

 </tr>
 
 <tr class="row1">
  <td></td>
 <td width="200">E0720 </td><td>Tens Unit</td> 
 <td><input type="text" name="tensunit" id="tensunit" size="20" value="${dcfee.tensunit}"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">E0230 </td><td>Cold Pack</td> 
 <td><input type="text" name="coldpack" id="coldpack" size="20" value="${dcfee.coldpack}"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99070 </td><td>Wrist Splint</td> 
 <td><input type="text" name="wristsplint" id="wristsplint" size="20" value="${dcfee.wristsplint}"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L3332 </td><td>Heel Lift</td> 
 <td><input type="text" name="heellift" id="heellift" size="20" value="${dcfee.heellift}"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Ball </td><td>Exercise Ball</td> 
 <td><input type="text" name="exerciseball" id="exerciseball" size="20" value="${dcfee.exerciseball}"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Band </td><td>Exercise Band</td> 
 <td><input type="text" name="exerciseband" id="exerciseband" size="20" value="${dcfee.exerciseband}"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">A9270 </td><td>Unlisted Item</td> 
 <td><input type="text" name="unlisteditem" id="unlisteditem" size="20" value="${dcfee.unlisteditem}"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Charges: $</td> 
 <td><div id="info"><input type="text" name="charges" id="charges" size="20" value="${dcfee.charges}"></div> </td> 
 <td ><input type="button"  class="submit_btn" value="calculate" onclick="return doAjaxPost()"></td>
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Less(-): $</td> 
 <td><input type="text" name="less" id="less" size="20" value="${dcfee.less}"> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Balance: $</td> 
 <td><input type="text" name="balance" id="balance" size="20" value="${dcfee.balance}"> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Payment:(Circle)</td><td><input type="radio" name="payment" value="Cash" checked="true" onclick="toggle3('hide3')" <c:if test="${dcfee.payment=='Cash'}"><c:out value="checked=checked"/></c:if> >Cash &nbsp;&nbsp;&nbsp; <input type="radio" name="payment" value="Check"  onchange="toggle3('show3')" <c:if test="${dcfee.payment=='Check'}"><c:out value="checked=checked"/></c:if>>Check &nbsp;&nbsp; Amt: $  </td>
 <td><input type="text" name="paymentcashcheck" size="20" value="${dcfee.paymentcashcheck}"> </td> 
 </tr>
 </table>
 <div id="check" style="display:none;">
 <table>
  <tr class="row1">
  <td></td>
  <td></td>
  <td width="150"></td>
 <td width="200">Charge: </td><td><input type="checkbox" name="amex" id="break1" value="Amex" <c:if test="${dcfee.amex=='Amex'}"><c:out value="Checked"/></c:if>>Amex &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="discover" id="break1" value="Discover" <c:if test="${dcfee.discover=='Discover'}"><c:out value="Checked"/></c:if>> Discover</td> 
 <td><input type="checkbox" name="mc" id="break1" value="MC" <c:if test="${dcfee.mc=='MC'}"><c:out value="Checked"/></c:if>> MC &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="visa" id="break1" value="Visa" <c:if test="${dcfee.visa=='Visa'}"><c:out value="Checked"/></c:if>> Visa </td> 
 </tr>
 <tr class="row1">
  <td></td><td> </td>
  <td width="150"></td>
 <td width="200">Card Holder Signature </td><td><input type="text" name="cardsign" size="20" value="${dcfee.cardsign}" > </td> 
  
 </tr>
 </table>
 </div>
 <table>

  <tr class="row1">
  <td></td><td> </td>
 <td width="200"><span class="err">*</span>Date </td><td><input type="text"  id="datepicker1" name="date1" value="${dcfee.date1}"/><span class="err"><form:errors path="dcfeeslipdetail.date1"></form:errors></span></td> </td> 
  
 </tr>
 <tr class="row1">
  <td></td><td> </td>
 <td width="200"><b>"I have received the services  </b></td><td width="300"><b>above and agree with the
charges."</b></td> 
  
 </tr>
 <tr class="row1">
 <td> </td><td></td>
  <td><span class="err">*</span>Patient/Guardian Signature:</td>
 <td width="200"><input type="text" name="parentsign" value="${dcfee.parentsign}"><span class="err"><form:errors path="dcfeeslipdetail.parentsign"></form:errors></span></td> 
  
 </tr>
  <tr class="row1">
  <td> </td> <td></td>
  <td><span class="err">*</span>Dr. / Tech. Signature(s)</td>
 <td width="200"><input type="text" name="doctorsign" value="${dcfee.doctorsign}"><span class="err"><form:errors path="dcfeeslipdetail.doctorsign"></form:errors></span></td> 
 
 </tr>
 <tr class="row1">
  <td>Reschedule: M T W Th F S for</td>
 <td width="200">1wk &nbsp; 2wks &nbsp; 3wks &nbsp; 4wks</td><td width="200"><input type="text" name="week" value="${dcfee.week}"> Weeks</td> 
 <td width="200"><input type="text" name="month" value="${dcfee.months}"> Months </td> 
 </tr>
  </table>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save"></td>
<td><input type="reset" class="submit_btn" value="Cancel"></td>
</tr>
</table>
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
