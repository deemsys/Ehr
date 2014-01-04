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
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
         
   <div id="tabs-1"> 
 <div id="right_content">
<form action="thoracicexam" method="POST" name="thoracicexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>THORACIC INITIAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td><input type="text"  name="pname" /></td>
<td width="600">
<td><h2>Date:</h2></td><td><input type="text"  id="datepicker" name="date" /></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Muscle Symmetry: </td><td><input type="text" name="muscle"></td> 
 <td>Swelling / Discoloration: </td> 
 <td><input type="text" name="swelling"></td>
 </tr>
 <tr class="row1">
 <td width="200">Asymmetries (High Side Marked):</td>
  <td>Acromion: </td><td><input type="radio" name="acromion" value="Left">Left <input type="radio" name="acromion" value="Right">Right</td> 
 <td>Inferior Pole of Scapula:</td>
 <td><input type="radio" name="inferior" value="Left">Left <input type="radio" name="inferior" value="Right">Right</td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"></td>
  <td>Iliac Crest: </td><td><input type="radio" name="iliac" value="Left">Left <input type="radio" name="iliac" value="Right">Right</td> 
 <td>Rib Humping:</td>
 <td><input type="radio" name="ribhumping" value="Left">Left <input type="radio" name="ribhumping" value="Right">Right</td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable"> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
  
 <tr class="row1">
 <td>Rectus Abdominis:</td><td width="100"><input type="radio" name="rectus" value="Left">Left <input type="radio" name="rectus" value="Right">Right</td> 
 
 <td>Obliques:</td><td width="200"><input type="radio" name="obliques" value="Left">Left  <input type="radio" name="obliques" value="Right">Right</td> 
 
 <td>Levator Scapulae:</td><td width="100"><input type="radio" name="levator" value="Left">Left <input type="radio" name="levator" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Serratus Anterior:</td><td><input type="radio" name="serratus" value="Left">Left  <input type="radio" name="serratus" value="Right">Right</td> 
 <td>Pectoralis Major:</td><td width="200"><input type="radio" name="pectoralis" value="Left">Left  <input type="radio" name="pectoralis" value="Right">Right</td> 
 <td>Trapezius:	</td><td><input type="radio" name="trapezius" value="Left">Left <input type="radio" name="trapezius" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Rhomboids:</td><td><input type="radio" name="rhomboids" value="Left">Left  <input type="radio" name="rhomboids" value="Right">Right</td> 
 <td>Pectoralis Minor:	</td><td><input type="radio" name="pectoralisminor" value="Left">Left <input type="radio" name="pectoralisminor" value="Right">Right</td> 
 <td>Paraspinals:</td><td><input type="radio" name="paraspinals" value="Left">Left <input type="radio" name="paraspinals" value="Right">Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes"></td> 
 <td width="150">
 <td></td><td></td>
 <td width="150">
 <td></td><td></td>
 </tr>
  <tr class="row1">
 <td width="350"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="200"><input type="radio" name="functionalrangeofmotion" value="Unremarkable">Unremarkable</td> 
 <td width="350"><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td width="150"><input type="radio" name="subluxation" value="Unremarkable">Unremarkable</td> 
 <td width="250"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td width="150"><input type="radio" name="orthopedic" value="Unremarkable">Unremarkable</td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (20-40)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7"></td> 
 <td width="100">T1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t12" size="7"></td><td width="250">T2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t23" size="7"> </td> 
 <td><b>Adam's Sign:	</b> </td><td><input type="text" name="adamsignl" size="5"> <input type="text" name="adamsignr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25-45)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7"></td> 
 <td width="100">T3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t34" size="7"></td><td width="50">T4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t45" size="7"> </td> 
 <td><b>Schepelman's:	</b> </td><td><input type="text" name="schepelmanl" size="5"> <input type="text" name="schepelmanr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (20-40)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7"></td> 
 <td width="100">T5-6:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t56" size="7"></td><td width="50">	T6-7:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="t67" size="7"> </td> 
 <td><b>Valsalva:</b> </td><td><input type="text" name="valsalval" size="5"> <input type="text" name="valsalvar" size="5"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (35-50)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7"></td> 
 <td width="100">T7-8:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="t78" size="7"></td><td width="50">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t89" size="7"> </td> 
 <td><b>Dejerine's Triad:</b> </td><td><input type="text" name="dejerinel" size="5"> <input type="text" name="dejeriner" size="5"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">T9-10:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t910" size="7"></td><td width="50">T10-11:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t1011" size="7"> </td> 
 <td><b>Soto Hall:	</b> </td><td><input type="text" name="sotohalll" size="5"> <input type="text" name="sotohallr" size="5"></td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">T11-12: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t1112" size="7"></td><td width="50">	T12-L1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t12l1" size="7"> </td> 
 <td><b>Sternal Compression:</b> </td><td><input type="text" name="sternall" size="5"> <input type="text" name="sternalr" size="5"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Beevor's Sign:	</b> </td><td><input type="text" name="beevorl" size="5"> <input type="text" name="beevorr" size="5"> </td>
 </tr>
 </table>
 
</div>
</td>
</tr>
</table>
</div>
</div>
<div id="tabs-2"> 
 <div id="right_content">
<form action="soapnotes" method="POST" name="soapnotes">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>THORACIC INITIAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td> Notes</td>
 <td><textarea name="notes" rows='5' cols='40'></textarea></td>
 <td width="110">Intercostal:</td>
 <td><select name="intercostal" id="intercostal"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="T1" >T1</option>
					<option value="T2">T2</option>
					<option value="T3">T3</option>
					<option value="T4">T4</option>
					<option value="T5">T5</option>
					<option value="T6">T6</option>
					<option value="T7">T7</option>
					<option value="T8">T8</option>
					<option value="T9">T9</option>
					<option value="T10">T10</option>
					<option value="T11">T11</option>
					<option value="T12">T12</option>
					</select> </td>
 <td width="110"> </td>
 <td> </td> 
 </tr>
 </table>
<table>         
 <tr class="row1">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td><input type="checkbox" name="sitting" value="Sitting">Sitting 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing">Standing</td>
 <td width="150"><input type="checkbox" name="driving" value="Driving">Driving</td>
 <td width="150"><input type="checkbox" name="otherfunctional" value="Other" onclick="this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp; </td>
 <td width="250"><input type="text" class="input_txtbx1" id="break3" name="break_text3" style="visibility:hidden" /></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40'></textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" >Excellent</option>
					<option value="Good">Good</option>
					<option value="Fair">Fair</option>
					<option value="Poor">Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1"></td>
 <td width="250">2)<input type="text" name="diagnosis2"></td>
 <td width="250">3)<input type="text" name="diagnosis3"></td>
 <td width="250">4)<input type="text" name="diagnosis4"></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5"></td>
<td width="250">6)<input type="text" name="diagnosis6"></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times">Times/week for </td>
 <td><input type="text" name="week">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression">Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic">Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy">Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing">Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities">Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP">HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray"> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI">MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan">CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction">Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG">EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral">Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C">D/C</td>
 <td width="250"><input type="checkbox" name="otheraddress" value="Other" onclick="this.form.break4.style.visibility = this.checked? 'visible' : 'hidden'">Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="visibility:hidden" /></td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px">PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign"></B></td></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save"></td>
<td><input type="reset" class="submit_btn" value="Cancel"></td>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>