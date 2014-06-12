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
	    data: "initialemlimited=" + initialemlimited + "&initialexpanded=" + initialexpanded + "&initialdetailed=" + initialdetailed + "&initialemextended=" + initialemextended + "&estpatientltd=" + estpatientltd + "&estpatientexp=" + estpatientexp + "&estpatientdetails=" + estpatientdetails + "&estpatientcomp=" + estpatientcomp + "&consultphys=" + consultphys + "&consultdetail=" + consultdetail + "&consultcomp=" + consultcomp + "&patientexp=" + patientexp + "&patientdetails=" + patientdetails + "&patientcomp=" + patientcomp + "&telephonebrief=" + telephonebrief + "&telephoneintermediate=" + telephoneintermediate + "&telephonecomp=" + telephonecomp + "&tractionmechanical=" + tractionmechanical + "&electricstim=" + electricstim + "&vasopneumatic=" + vasopneumatic + "&paraffin=" + paraffin + "&microwave=" + microwave + "&whirlpool=" + whirlpool + "&diathermy=" + diathermy + "&infrared=" + infrared + "&ultraviolet=" + ultraviolet + "&manualelectricalstim=" + manualelectricalstim + "&iontophoresis=" + iontophoresis + "&contrastbaths=" + contrastbaths + "&ultrasound=" + ultrasound + "&unlisted=" + unlisted + "&therapeutic=" + therapeutic + "&neuromuscular=" + neuromuscular + "&aquatic=" + aquatic + "&gaittraining=" + gaittraining + "&massage=" + massage + "&manualtherapy=" + manualtherapy + "&unlistedother=" + unlistedother + "&grouptherapy=" + grouptherapy + "&orthotics=" + orthotics + "&kinetic=" + kinetic + "&adlselfcare=" + adlselfcare + "&reintegration=" + reintegration + "&acupuncturewo=" + acupuncturewo + "&acupuncturew=" + acupuncturew + "&spine12=" + spine12 + "&spine34=" + spine34 + "&spine5=" + spine5 + "&extremity=" + extremity + "&routine=" + routine + "&muscle=" + muscle + "&musclehand="+musclehand+"&rangeofmotion=" + rangeofmotion + "&rangeofmotionhand=" + rangeofmotionhand + "&ncv=" + ncv + "&ncvw=" +ncvw +" &ncvea=" + ncvea + "&ssepupper=" + ssepupper + "&sseplower=" + sseplower + "&ssephead=" +ssephead+"&hreflex=" + hreflex + "&physicalperformance=" + physicalperformance + "&functionalcapacity=" + functionalcapacity + "&text1=" + text1+"&text2=" + text2 + "&supplies=" + supplies + "&patienteducation=" + patienteducation + "&medicaltestimony=" +medicaltestimony+"&insuranceform=" + insuranceform + "&teamconference=" + teamconference + "&completespine=" + completespine + "&cervical23=" + cervical23+"&cervical4=" + cervical4 + "&cervical67=" + cervical67 + "&thoracic4=" + thoracic4+"&thoracic2=" + thoracic2 + "&scoliosis=" + scoliosis + "&lumbosacral=" + lumbosacral+"&lumbosacral4=" + lumbosacral4 + "&pelvis2=" + pelvis2 + "&lumbarcomplete=" + lumbarcomplete+"&elbow2=" + elbow2 + "&wrist2=" + wrist2 + "&hand2=" + hand2+"&knee2=" + knee2 + "&ankle2=" + ankle2 + "&foot2=" + foot2+"&readotherfilms=" + readotherfilms + "&cervicalpillow=" + cervicalpillow + "&lumbarsupport=" + lumbarsupport+"&orthoticcustoml=" + orthoticcustoml + "&orthoticcustomr=" + orthoticcustomr + "&tensunit=" + tensunit+"&coldpack=" + coldpack + "&wristsplint=" + wristsplint + "&heellift=" + heellift+"&exerciseball=" + exerciseball + "&exerciseband=" + exerciseband + "&unlisteditem=" + unlisteditem ,  
	    success: function(response){  
	    	
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



<script>

	function checkSubmit()
	{
		document.getElementById("piderror").innerHTML="";
		if(document.getElementById("pid").value=="")
		{
		document.getElementById("piderror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
		document.getElementById("piderror").innerHTML="";
		if(isNaN(document.getElementById("pid").value))
		{		document.getElementById("piderror").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
	
		document.getElementById("pnameerror").innerHTML="";
	if(document.getElementById("pname").value=="")
	{
	document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("dr1error").innerHTML="";
	if(document.getElementById("dr1").value=="")
	{
	document.getElementById("dr1error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
	{
	document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepickererror").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format. Please correct and submit again";
    	
        return false;
    }

	document.getElementById("datepicker1error").innerHTML="";
	if(document.getElementById("datepicker1").value=="")
	{
	document.getElementById("datepicker1error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepicker1error").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker1").value.match(datechk)==null)
    {
    	document.getElementById("datepicker1error").innerHTML="Invalid Date Format. Please correct and submit again";
    	
        return false;
    }

	document.getElementById("parentsignerror").innerHTML="";
	if(document.getElementById("parentsign").value=="")
	{
	document.getElementById("parentsignerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("doctorsignerror").innerHTML="";
	if(document.getElementById("doctorsign").value=="")
	{
	document.getElementById("doctorsignerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
		}


	</script>
</head>
 <body>
 <br><br>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li> 
          <li><a href="#tabs-3">3</a></li>         
       </ul>
    <form action="updatedcfeeslip" method="POST" name="dcfeeslip">     
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
          <c:set value="${dcfeeslipForm.dcfeeslip[0]}" var="dcfeeslip"/> 
 <tr class="row1">
 <input type="hidden" name="dcfeeid" id="inp_id" value="${dcfeeslip.dcfeeid}">
<td width="90"><h2><span class="err">*</span>Patient Id:</h2></td><td><input type="text"   class="input_txtbx1"  name="pid" size="25" value="${dcfeeslip.pid}" id="pid"/><span class="err" id="piderror" style="color: red;font-style:italic;" ><form:errors path="dcfeeslipdetail.pid"></form:errors></span></td>
<td width="800">
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  class="input_txtbx1"  id="datepicker" name="date" value="${dcfeeslip.date}" /></td><span class="err" id="datepickererror"  style="color: red;font-style:italic;"><form:errors path="dcfeeslipdetail.date"></form:errors></span>
</tr>
</table>
<table>
 <tr class="row1">
<td><h2><span class="err">*</span> Patient Name:</h2></td><td><input type="text"  class="input_txtbx1"  name="pname" size="25" value="${dcfeeslip.pname}"/><span class="err"><form:errors path="dcfeeslipdetail.pname"></form:errors></span></td>
<td>
<td><h2><span class="err">*</span>Treating Physician Name:</h2></td><td><input type="text"  class="input_txtbx1" name="dr1" size="14" value="${dcfeeslip.dr1}" id="dr1"/><span class="err" id="dr1error"  style="color: red;font-style:italic;"><form:errors path="dcfeeslipdetail.dr1"></form:errors></span></td>
<td><h2>RPT:</h2></td><td><input type="text"   class="input_txtbx1" name="rpt" size="14" value="${dcfeeslip.rpt}"/></td>
<td><h2>PTA:</h2></td><td><input type="text"   class="input_txtbx1" name="pta" size="14" value="${dcfeeslip.pta}"/></td>
</tr>
</table>

<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>



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
 <td><input type="text"  class="input_txtbx1" name="initialemlimited" id="initialemlimited" size="20" value="${dcfeeslip.initialemlimited}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99202 </td><td>Initial E/M Expanded</td> 
 <td><input type="text"  class="input_txtbx1" name="initialexpanded" id="initialexpanded" size="20" value="${dcfeeslip.initialexpanded}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99203 </td><td>Initial E/M Detailed</td> 
 <td><input type="text"   class="input_txtbx1"  name="initialdetailed" id="initialdetailed" size="20" value="${dcfeeslip.initialdetailed}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99204 </td><td>Initial E/M Extended</td> 
 <td><input type="text"  class="input_txtbx1" name="initialemextended" id="initialemextended" size="20" value="${dcfeeslip.initialemextended}" onkeypress="return validate(event)";> </td> 
 
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
 <td><input type="text"  class="input_txtbx1" name="estpatientltd" id="estpatientltd" size="20" value="${dcfeeslip.estpatientltd}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99212 </td><td>Est. Patient E/M Exp.</td> 
 <td><input type="text"  class="input_txtbx1" name="estpatientexp" id="estpatientexp" size="20" value="${dcfeeslip.estpatientexp}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99213 </td><td>Est. Patient E/M Detail.</td> 
 <td><input type="text"  class="input_txtbx1" name="estpatientdetails" id="estpatientdetails" size="20" value="${dcfeeslip.estpatientdetails}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99214 </td><td>Est. Patient E/M Comp.</td> 
 <td><input type="text"  class="input_txtbx1" name="estpatientcomp" id="estpatientcomp" size="20" value="${dcfeeslip.estpatientcomp}" onkeypress="return validate(event)";> </td> 

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
 <td><input type="text" class="input_txtbx1"  name="consultphys" id="consultphys" size="20" value="${dcfeeslip.consultphys}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99243 </td><td>Consult w/Phys. Ref Detail.</td> 
 <td><input type="text"  class="input_txtbx1" name="consultdetail" id="consultdetail" size="20" value="${dcfeeslip.consultdetail}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99244 </td><td>Consult w/Phys. Ref Comp.</td> 
 <td><input type="text" class="input_txtbx1"  name="consultcomp" id="consultcomp" size="20" value="${dcfeeslip.consultcomp}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99272 </td><td>Patient Initiated Consult Exp.</td> 
 <td><input type="text"  class="input_txtbx1" name="patientexp" id="patientexp" size="20" value="${dcfeeslip.patientexp}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99273 </td><td>Patient Initiated Consult Detail.</td> 
 <td><input type="text"  class="input_txtbx1" name="patientdetails" id="patientdetails" size="20" value="${dcfeeslip.patientdetails}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
    <td></td>
 <td width="200">99272 </td><td>Patient Initiated Consult Comp.</td> 
 <td><input type="text"  class="input_txtbx1" name="patientcomp" id="patientcomp" size="20" value="${dcfeeslip.patientcomp}" onkeypress="return validate(event)";> </td> 

 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99371 </td><td>Telephone Consultation Brief</td> 
 <td><input type="text" class="input_txtbx1"  name="telephonebrief" id="telephonebrief" size="20" value="${dcfeeslip.telephonebrief}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99372 </td><td>Telephone Consult Intermediate</td> 
 <td><input type="text"  class="input_txtbx1" name="telephoneintermediate" id="telephoneintermediate" size="20" value="${dcfeeslip.telephoneintermediate}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">99373 </td><td>Telephone Consultation Comp</td> 
 <td><input type="text"  name="telephonecomp" id="telephonecomp" size="20" value="${dcfeeslip.telephonecomp}" onkeypress="return validate(event)";> </td> 
 
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
 <td><input type="text"  class="input_txtbx1" name="tractionmechanical" id="tractionmechanical" size="20" value="${dcfeeslip.tractionmechanical}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97014 </td><td>Electric Stim - Unattended</td> 
 <td><input type="text"  class="input_txtbx1" name="electricstim" id="electricstim" size="20" value="${dcfeeslip.electricstim}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97016 </td><td>Vasopneumatic Device</td> 
 <td><input type="text"  class="input_txtbx1" name="vasopneumatic" id="vasopneumatic" size="20" value="${dcfeeslip.vasopneumatic}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97018 </td><td>Paraffin Bath</td> 
 <td><input type="text"  class="input_txtbx1" name="paraffin" id="paraffin" size="20" value="${dcfeeslip.paraffin}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97020 </td><td>Microwave</td> 
 <td><input type="text"  class="input_txtbx1" name="microwave" id="microwave" size="20" value="${dcfeeslip.microwave}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97022 </td><td>Whirlpool/Hydrotherapy</td> 
 <td><input type="text" class="input_txtbx1" name="whirlpool" id="whirlpool" size="20" value="${dcfeeslip.whirlpool}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97024 </td><td>Diathermy</td> 
 <td><input type="text"  class="input_txtbx1" name="diathermy" id="diathermy" size="20" value="${dcfeeslip.diathermy}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97026 </td><td>Infrared</td> 
 <td><input type="text"  class="input_txtbx1" name="infrared" id="infrared" size="20" value="${dcfeeslip.infrared}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97028 </td><td>Ultraviolet</td> 
 <td><input type="text"  class="input_txtbx1" name="ultraviolet" id="ultraviolet" size="20" value="${dcfeeslip.ultraviolet}" onkeypress="return validate(event)";> </td> 
 
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
 <td><input type="text"  class="input_txtbx1" name="manualelectricalstim" id="manualelectricalstim" size="20" value="${dcfeeslip.manualelectricalstim}" onkeypress="return validate(event)";> </td> 
 
 </tr>
  <tr class="row1">
  <td></td>
 <td width="200">97033 </td><td>Iontophoresis</td> 
 <td><input type="text" class="input_txtbx1"  name="iontophoresis" id="iontophoresis" size="20" value="${dcfeeslip.iontophoresis}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97034 </td><td>Contrast Baths</td> 
 <td><input type="text"  class="input_txtbx1" name="contrastbaths" id="contrastbaths" size="20" value="${dcfeeslip.contrastbaths}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97035 </td><td>Ultrasound</td> 
 <td><input type="text"  class="input_txtbx1" name="ultrasound" id="ultrasound" size="20" value="${dcfeeslip.ultrasound}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">97039 </td><td>Other/Unlisted</td> 
 <td><input type="text" class="input_txtbx1"  name="unlisted" id="unlisted" size="20" value="${dcfeeslip.unlisted}" onkeypress="return validate(event)";> </td> 

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
 <td><input type="text" class="input_txtbx1"  name="therapeutic" id="therapeutic" size="20" value="${dcfeeslip.therapeutic}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97112 </td><td>Neuromuscular Re-Ed</td> 
 <td><input type="text"  class="input_txtbx1" name="neuromuscular" id="neuromuscular" size="20" value="${dcfeeslip.neuromuscular}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97113 </td><td>Aquatic Therapy</td> 
 <td><input type="text"  class="input_txtbx1" name="aquatic" id="aquatic" size="20" value="${dcfeeslip.aquatic}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97116 </td><td>Gait Training (Incl. Stairs)</td> 
 <td><input type="text" class="input_txtbx1"  name="gaittraining" id="gaittraining" size="20" value="${dcfeeslip.gaittraining}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97124 </td><td>Massage</td> 
 <td><input type="text" class="input_txtbx1"  name="massage" id="massage" size="20" value="${dcfeeslip.massage}" onkeypress="return validate(event)";> </td> 
 </tr>
<tr class="row1">
 <td></td>
 <td width="200">97140 </td><td>Manual Therapy</td> 
 <td><input type="text"  class="input_txtbx1" name="manualtherapy" id="manualtherapy" size="20" value="${dcfeeslip.manualtherapy}" onkeypress="return validate(event)";> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97139 </td><td>Unlisted/Other</td> 
 <td><input type="text"  class="input_txtbx1" name="unlistedother" id="unlistedother" size="20" value="${dcfeeslip.unlistedother}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97150 </td><td>Group Therapy (2 or More)</td> 
 <td><input type="text"  class="input_txtbx1" name="grouptherapy" id="grouptherapy" size="20" value="${dcfeeslip.grouptherapy}" onkeypress="return validate(event)";> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97504 </td><td>Orthotics Fitting</td> 
 <td><input type="text" class="input_txtbx1"  name="orthotics" id="orthotics" size="20" value="${dcfeeslip.orthotics}" onkeypress="return validate(event)";> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97530 </td><td>Kinetic Activities</td> 
 <td><input type="text" class="input_txtbx1"  name="kinetic" id="kinetic" size="20" value="${dcfeeslip.kinetic}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97535 </td><td>ADL Self-Care</td> 
 <td><input type="text"  class="input_txtbx1" name="adlselfcare" id="adlselfcare" size="20" value="${dcfeeslip.adlselfcare}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97537 </td><td>Reintegration Training</td> 
 <td><input type="text"  class="input_txtbx1" name="reintegration" id="reintegration" size="20" value="${dcfeeslip.reintegration}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">97780 </td><td>Acupuncture w/o E-stimulation</td> 
 <td><input type="text"  class="input_txtbx1" name="acupuncturewo" id="acupuncturewo" size="20" value="${dcfeeslip.acupuncturewo}"> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">97781 </td><td>Acupuncture w/ E-stimulation</td> 
 <td><input type="text" class="input_txtbx1"  name="acupuncturew" id="acupuncturew" size="20" value="${dcfeeslip.acupuncturew}" onkeypress="return validate(event)";> </td> 
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
 <td><input type="text"  class="input_txtbx1" name="spine12" id="spine12" size="20" value="${dcfeeslip.spine12}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">98941 </td><td>Spine 3-4 Regions</td> 
 <td><input type="text" class="input_txtbx1"  name="spine34" id="spine34" size="20" value="${dcfeeslip.spine34}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">98942 </td><td>Spine 5 Regions</td> 
 <td><input type="text"  class="input_txtbx1" name="spine5" id="spine5" size="20" value="${dcfeeslip.spine5}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">98943 </td><td>Extremity (1 or More Regions)</td> 
 <td><input type="text"  class="input_txtbx1" name="extremity" id="extremity" size="20" value="${dcfeeslip.extremity}" onkeypress="return validate(event)";> </td> 

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
 <td><input type="text"  class="input_txtbx1" name="routine" id="routine" size="20" value="${dcfeeslip.routine}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95831 </td><td>Muscle Test/Report</td> 
 <td><input type="text"  class="input_txtbx1" name="muscle" id="muscle" size="20" value="${dcfeeslip.muscle}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95832 </td><td>Muscle Test Hand/Report</td> 
 <td><input type="text"  class="input_txtbx1" name="musclehand" id="musclehand" size="20" value="${dcfeeslip.musclehand}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95851 </td><td>Range of Motion/ Report</td> 
 <td><input type="text"  class="input_txtbx1" name="rangeofmotion" id="rangeofmotion" size="20" value="${dcfeeslip.rangeofmotion}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95852 </td><td>Range of Motion Hand/Rpt</td> 
 <td><input type="text" class="input_txtbx1"  name="rangeofmotionhand" id="rangeofmotionhand" size="20" value="${dcfeeslip.rangeofmotionhand}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
    <td></td>
 <td width="200">95900 </td><td>NCV Ea. Motor w/o F-Wave</td> 
 <td><input type="text" class="input_txtbx1"  name="ncv" id="ncv" size="20" value="${dcfeeslip.ncv}" onkeypress="return validate(event)";> </td> 

 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95903 </td><td>NCV Ea. Motor w/ F-Wave</td> 
 <td><input type="text" class="input_txtbx1"  name="ncvw" id="ncvw" size="20" value="${dcfeeslip.ncvw}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95904 </td><td>NCV Ea. Sensory</td> 
 <td><input type="text"  class="input_txtbx1" name="ncvea" id="ncvea" size="20" value="${dcfeeslip.ncvea}" onkeypress="return validate(event)";> </td> 
 
 </tr>
   <tr class="row1">
   <td></td>
 <td width="200">95925 </td><td>SSEP: Upper</td> 
 <td><input type="text"  class="input_txtbx1" name="ssepupper" id="ssepupper" size="20" value="${dcfeeslip.ssepupper}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95926 </td><td>SSEP: Lower</td> 
 <td><input type="text"  class="input_txtbx1" name="sseplower" id="sseplower" size="20" value="${dcfeeslip.sseplower}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95927 </td><td>SSEP: Head/Trunk</td> 
 <td><input type="text"  class="input_txtbx1" name="ssephead" id="ssephead" size="20" value="${dcfeeslip.ssephead}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">95934 </td><td>H-Reflex R / L</td> 
 <td><input type="text"  class="input_txtbx1" name="hreflex" id="hreflex" size="20" value="${dcfeeslip.hreflex}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">97750 </td><td>Physical Performance Test</td> 
 <td><input type="text"  class="input_txtbx1" name="physicalperformance" id="physicalperformance" size="20" value="${dcfeeslip.physicalperformance}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200">99456 </td><td>Functional Capacity Evaluation</td> 
 <td><input type="text"  class="input_txtbx1" name="functionalcapacity" id="functionalcapacity" size="20" value="${dcfeeslip.functionalcapacity}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200"> </td><td></td> 
 <td><input type="text"    class="input_txtbx1" name="text1" id="text1" size="20" value="${dcfeeslip.text1}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
   <td></td>
 <td width="200"> </td><td></td> 
 <td><input type="text" class="input_txtbx1" name="text2" id="text2" size="20" value="${dcfeeslip.text2}" onkeypress="return validate(event)";> </td> 
 
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
 <td><input type="text" class="input_txtbx1"  name="supplies" id="supplies" size="20" value="${dcfeeslip.supplies}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99071 </td><td>Patient Education Materials</td> 
 <td><input type="text"  class="input_txtbx1" name="patienteducation" id="patienteducation" size="20" value="${dcfeeslip.patienteducation}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99075 </td><td>Medical Testimony</td> 
 <td><input type="text" class="input_txtbx1"  name="medicaltestimony" id="medicaltestimony" size="20" value="${dcfeeslip.medicaltestimony}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99080 </td><td>Insurance Form / Report</td> 
 <td><input type="text"  class="input_txtbx1" name="insuranceform" id="insuranceform" size="20" value="${dcfeeslip.insuranceform}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">99361</td><td>Team Conference</td> 
 <td><input type="text" class="input_txtbx1"  name="teamconference" id="teamconference" size="20" value="${dcfeeslip.teamconference}" onkeypress="return validate(event)";> </td> 
 
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
 <td><input type="text"  class="input_txtbx1" name="completespine" id="completespine" size="20" value="${dcfeeslip.completespine}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72040 </td><td>Cervical: 2-3 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="cervical23" id="cervical23" size="20" value="${dcfeeslip.cervical23}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72050 </td><td>Cervical: 4 Views</td> 
 <td><input type="text" class="input_txtbx1"  name="cervical4" id="cervical4" size="20" value="${dcfeeslip.cervical4}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72052</td><td>Cervical: 6 - 7 Views (Davis)</td> 
 <td><input type="text"  class="input_txtbx1" name="cervical67" size="20" value="${dcfeeslip.cervical67}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72074 </td><td>Thoracic: 4 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="thoracic4" id="thoracic4" size="20" value="${dcfeeslip.thoracic4}" onkeypress="return validate(event)";> </td> 
 </tr>
<tr class="row1">
 <td></td>
 <td width="200">72070 </td><td>Thoracic: 2 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="thoracic2" id="thoracic2" size="20" value="${dcfeeslip.thoracic2}" onkeypress="return validate(event)";> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72090 </td><td>Scoliosis Study</td> 
 <td><input type="text"  class="input_txtbx1" name="scoliosis" id="scoliosis" size="20" value="${dcfeeslip.scoliosis}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72100 </td><td>Lumbosacral: 2 - 3 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="lumbosacral" id="lumbosacral" size="20" value="${dcfeeslip.lumbosacral}" onkeypress="return validate(event)";> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72110 </td><td>Lumbosacral: 4 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="lumbosacral4" id="lumbosacral4" size="20" value="${dcfeeslip.lumbosacral4}" onkeypress="return validate(event)";> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">72170 </td><td>Pelvis: 2 Views</td> 
 <td><input type="text" class="input_txtbx1"  name="pelvis2" id="pelvis2" size="20" value="${dcfeeslip.pelvis2}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">72114 </td><td>Lumbar Complete incl Bending</td> 
 <td><input type="text" class="input_txtbx1" name="lumbarcomplete" id="lumbarcomplete" size="20" value="${dcfeeslip.lumbarcomplete}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73070 </td><td>Elbow: 2 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="elbow2" id="elbow2" size="20" value="${dcfeeslip.elbow2}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73100 </td><td>Wrist: 2 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="wrist2" id="wrist2" size="20" value="${dcfeeslip.wrist2}" onkeypress="return validate(event)";> </td> 
 </tr>
  <tr class="row1">
 <td></td>
 <td width="200">73120 </td><td>Hand: 2 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="hand2" id="hand2" size="20" value="${dcfeeslip.hand2}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73560 </td><td>Knee: 2 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="knee2" id="knee2" size="20" value="${dcfeeslip.knee2}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73600 </td><td>Ankle: 2 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="ankle2" id="ankle2" size="20" value="${dcfeeslip.ankle2}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">73620 </td><td>Foot: 2 Views</td> 
 <td><input type="text"  class="input_txtbx1" name="foot2" id="foot2" size="20" value="${dcfeeslip.foot2}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">76140 </td><td>Read Other Films(X)</td> 
 <td><input type="text"  class="input_txtbx1" name="readotherfilms" id="readotherfilms" size="20" value="${dcfeeslip.readotherfilms}" onkeypress="return validate(event)";> </td> 
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
 <td><input type="text"   class="input_txtbx1" name="cervicalpillow" id="cervicalpillow" size="20" value="${dcfeeslip.cervicalpillow}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L0515 </td><td>Lumbar Support</td> 
 <td><input type="text"  class="input_txtbx1" name="lumbarsupport" id="lumbarsupport" size="20" value="${dcfeeslip.lumbarsupport}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
 <td></td>
 <td width="200">L3030L </td><td>Orthotic Custom (Left)</td> 
 <td><input type="text" class="input_txtbx1"  name="orthoticcustoml" id="orthoticcustoml" size="20" value="${dcfeeslip.orthoticcustoml}" onkeypress="return validate(event)";> </td> 
 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L3030R </td><td>Orthotic Custom (Right)</td> 
 <td><input type="text"  class="input_txtbx1" name="orthoticcustomr" id="orthoticcustomr" size="20" value="${dcfeeslip.orthoticcustomr}" onkeypress="return validate(event)";> </td> 

 </tr>
 
 <tr class="row1">
  <td></td>
 <td width="200">E0720 </td><td>Tens Unit</td> 
 <td><input type="text"  class="input_txtbx1" name="tensunit" id="tensunit" size="20" value="${dcfeeslip.tensunit}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">E0230 </td><td>Cold Pack</td> 
 <td><input type="text"  class="input_txtbx1" name="coldpack" id="coldpack" size="20" value="${dcfeeslip.coldpack}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">99070 </td><td>Wrist Splint</td> 
 <td><input type="text"  class="input_txtbx1" name="wristsplint" id="wristsplint" size="20" value="${dcfeeslip.wristsplint}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">L3332 </td><td>Heel Lift</td> 
 <td><input type="text"  class="input_txtbx1" name="heellift" id="heellift" size="20" value="${dcfeeslip.heellift}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Ball </td><td>Exercise Ball</td> 
 <td><input type="text"  class="input_txtbx1" name="exerciseball" id="exerciseball" size="20" value="${dcfeeslip.exerciseball}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Band </td><td>Exercise Band</td> 
 <td><input type="text"  class="input_txtbx1" name="exerciseband" id="exerciseband" size="20" value="${dcfeeslip.exerciseband}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">A9270 </td><td>Unlisted Item</td> 
 <td><input type="text"  class="input_txtbx1" name="unlisteditem" id="unlisteditem" size="20" value="${dcfeeslip.unlisteditem}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Charges: $</td> 
 <td><div id="info"><input type="text"  class="input_txtbx1" name="charges" id="charges" size="20" value="${dcfeeslip.charges}" onkeypress="return validate(event)";></div> </td> 
 <td ><input type="button" class="submit_btn" value="calculate" onclick="return doAjaxPost()"></td>
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Less(-): $</td> 
 <td><input type="text"  class="input_txtbx1" name="less" id="less" size="20" value="${dcfeeslip.less}" onkeypress="return validate(event)";> </td> 

 </tr>
 <tr class="row1">
  <td></td>
 <td width="200"> </td><td>Balance: $</td> 
 <td><input type="text" class="input_txtbx1"  name="balance" id="balance" size="20" value="${dcfeeslip.balance}" onkeypress="return validate(event)";> </td> 
 </tr>
 <tr class="row1">
  <td></td>
 <td width="200">Payment:(Circle)</td><td><input type="radio" name="payment" value="Cash" checked="true" onclick="toggle3('hide3')" <c:if test="${dcfeeslip.payment=='Cash'}"><c:out value="checked=checked"/></c:if> >Cash &nbsp;&nbsp;&nbsp; <input type="radio" name="payment" value="Check"  onchange="toggle3('show3')" <c:if test="${dcfeeslip.payment=='Check'}"><c:out value="checked=checked"/></c:if>>Check &nbsp;&nbsp; Amt: $  </td>
 <td><input type="text"  class="input_txtbx1" name="paymentcashcheck" size="20" value="${dcfeeslip.paymentcashcheck}" onkeypress="return validate(event)";> </td> 
 </tr>
 </table>
 <div id="check" style="display:none;">
 <table>
  <tr class="row1">
  <td></td>
  <td></td>
  <td width="150"></td>
 <td width="200">Charge: </td><td><input type="checkbox" name="amex" id="break1" value="Amex" <c:if test="${dcfeeslip.amex=='Amex'}"><c:out value="Checked"/></c:if>>Amex &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="discover" id="break1" value="Discover" <c:if test="${dcfeeslip.discover=='Discover'}"><c:out value="Checked"/></c:if>> Discover</td> 
 <td><input type="checkbox" name="mc" id="break1" value="MC" <c:if test="${dcfeeslip.mc=='MC'}"><c:out value="Checked"/></c:if>> MC &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="visa" id="break1" value="Visa" <c:if test="${dcfeeslip.visa=='Visa'}"><c:out value="Checked"/></c:if>> Visa </td> 
 </tr>
 <tr class="row1">
  <td></td><td> </td>
  <td width="150"></td>
 <td width="200">Card Holder Signature </td><td><input type="text"  class="input_txtbx1" name="cardsign" size="20" value="${dcfeeslip.cardsign}" > </td> 
  
 </tr>
 </table>
 </div>
 <table>

  <tr class="row1">
  <td></td><td> </td>
 <td width="200"><span class="err">*</span>Date </td><td><input type="text"  class="input_txtbx1" id="datepicker1" name="date1" value="${dcfeeslip.date1}"/><span class="err" id="datepicker1error"  style="color: red;font-style:italic;"><form:errors path="dcfeeslipdetail.date1"></form:errors></span></td> </td> 
  
 </tr>
 <tr class="row1">
  <td></td><td> </td>
 <td width="200"><b>"I have received the services  </b></td><td width="300"><b>above and agree with the
charges."</b></td> 
  
 </tr>
 <tr class="row1">
 <td> </td><td></td>
  <td><span class="err">*</span>Patient/Guardian Signature:</td>
 <td width="200"><input type="text" class="input_txtbx1" name="parentsign" value="${dcfeeslip.parentsign}" id="parentsign"><span class="err" id="parentsignerror"  style="color: red;font-style:italic;"><form:errors path="dcfeeslipdetail.parentsign"></form:errors></span></td> 
  
 </tr>
  <tr class="row1">
  <td> </td> <td></td>
  <td><span class="err">*</span>Dr. / Tech. Signature(s)</td>
 <td width="200"><input type="text"  class="input_txtbx1" name="doctorsign" value="${dcfeeslip.doctorsign}" id="doctorsign"><span class="err" id="doctorsignerror"  style="color: red;font-style:italic;"><form:errors path="dcfeeslipdetail.doctorsign"></form:errors></span></td> 
 
 </tr>
 <tr class="row1">
  <td>Reschedule: M T W Th F S for</td>
 <td width="200">1wk &nbsp; 2wks &nbsp; 3wks &nbsp; 4wks</td><td width="200"><input type="text"  class="input_txtbx1" name="week" value="${dcfeeslip.week}"> Weeks</td> 
 <td width="200"><input type="text"  class="input_txtbx1" name="months" value="${dcfeeslip.months}"> Months </td> 
 </tr>
  </table>
  
<script language="javascript">

function confirmation() {
	var answer = confirm("Are you Sure You Want to Delete  Patient from Fee Slip ?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}

</script>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
  <td><a href="deletedcfeeslip?dcfeeid=${dcfeeslip.dcfeeid}" style="color:white" class="submit_btn" onclick="return confirmation() ">Delete</a></td>
 <td><a href="viewallpatientdetails" style="color:white" class="submit_btn">Cancel</a></td>
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
