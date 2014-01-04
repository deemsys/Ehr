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
<form action="cervicalexam" method="POST" name="cervicalexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>CERVICAL INITIAL EXAM</h2> </center><br/>
	            
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
 <td width="200">Muscle Symmetry:</td><td><input type="text" name="muscle"></td> 
 <td width="150">Swelling / Discoloration:</td> 
 <td><input type="text" name="swelling"></td>
 </tr>
 <tr class="row1">
 <td width="200">Forward Head Posture:</td><td><input type="text" name="headposture"></td> 
 <td>Rounded Shoulders: </td> <td><input type="radio" name="roundshoulder" value="Left">Left <input type="radio" name="roundshoulder" value="Right">Right</td>
  <td>A & O: </td>
 <td><select name="ao" id="ao"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="excellent" >Excellent</option>
					<option value="good">Good</option>
					<option value="fair">Fair</option>
					<option value="severe">Severe</option>
					</select></td> 
 
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable"> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 </tr>
  <tr class="row1">
 <td>Sub-Occipital:</td><td width="100"><input type="radio" name="suboccipital" value="Left">Left <input type="radio" name="suboccipital" value="Right">Right</td> 
 
 <td>Scalenes:</td><td width="200"><input type="radio" name="scalenes" value="Left">Left  <input type="radio" name="scalenes" value="Right">Right</td> 
 
 <td>Levator Scapulae:</td><td width="100"><input type="radio" name="levator" value="Left">Left <input type="radio" name="levator" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Teres Minor:</td><td><input type="radio" name="teresminor" value="Left">Left  <input type="radio" name="teresminor" value="Right">Right</td> 
 <td>Teres Major:</td><td width="200"><input type="radio" name="teresmajor" value="Left">Left  <input type="radio" name="teresmajor" value="Right">Right</td> 
 <td>Rhomboids:</td><td><input type="radio" name="rhomboids" value="Left">Left <input type="radio" name="rhomboids" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Trapezius:</td><td><input type="radio" name="trapezius" value="Left">Left  <input type="radio" name="trapezius" value="Right">Right</td> 
 <td>Pectoralis Minor:	</td><td><input type="radio" name="pectoralis" value="Left">Left <input type="radio" name="pectoralis" value="Right">Right</td> 
 <td>Paraspinals:</td><td><input type="radio" name="paraspinals" value="Left">Left <input type="radio" name="paraspinals" value="Right">Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes"></td> 
 <td></td><td></td>
 <td></td><td></td>
 </tr>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><input type="radio" name="functionalrangeofmotion" value="Unremarkable">Unremarkable</td> 
 <td width="280"><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td><input type="radio" name="subluxation" value="Unremarkable">Unremarkable</td> 
 <td width="180"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td width="150"><input type="radio" name="orthopedic" value="Unremarkable">Unremarkable</td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="150"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (50)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7"></td> 
 <td width="100">C0-1:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c01" size="7"> &nbsp;&nbsp;C1-2:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c12" size="7"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C2-3: &nbsp;&nbsp;<input type="text" name="c23" size="7"> </td> 
 <td><b>Hautant's:	</b> </td><td><input type="text" name="hautantl" size="5"> <input type="text" name="hautantr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (60)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7"></td> 
 <td width="100">C3-4:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c34" size="7"> &nbsp;&nbsp;C4-5:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c45" size="7"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C5-6: &nbsp;&nbsp;<input type="text" name="c56" size="7"> </td> 
 <td><b>Foraminal Comp:	</b> </td><td><input type="text" name="foraminall" size="5"> <input type="text" name="foraminalr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (45)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7"></td> 
 <td width="100">C6-7:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c67" size="7"> &nbsp;&nbsp;C7-T1:  &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c7t1" size="7"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T1-2: &nbsp;&nbsp;<input type="text" name="t12" size="7"> </td> 
 <td><b>Soto Hall:	</b> </td><td><input type="text" name="sotohalll" size="5"> <input type="text" name="sotohallr" size="5"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (80)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7"></td> 
 <td width="100">T2-3:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t23" size="7"> &nbsp;&nbsp;T3-4:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t34" size="7"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T4-5: &nbsp;&nbsp;<input type="text" name="t45" size="7"> </td> 
 <td><b>Adson's:</b> </td><td><input type="text" name="adsonsl" size="5"> <input type="text" name="adsonsr" size="5"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
<td width="100">T5-6:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t56" size="7"> &nbsp;&nbsp;T6-7:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t67" size="7"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T7-8: &nbsp;&nbsp;<input type="text" name="t78" size="7"> </td> 
 <td><b>ULTT:	</b> </td><td><input type="text" name="ulttl" size="5"> <input type="text" name="ulttr" size="5"></td>
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
	            <center> <h2>CERVICAL INITIAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td><b>Level</b> </td>
 <td><b> Sensory</b></td>
 <td width="110"><b>Level</b></td>
 <td> <b>Motor / Strength</b></td>
 <td width="110"><b>Level</b> </td>
 <td> <b>Reflexes(Muscle Spindles)</td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td>Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Right</td>
 <td> </td>
 <td> Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Right</td>
 <td> </td>
 <td> Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Right</td>
 </tr>
 <tr class="row1">
 <td>C5</td>
 <td><input type="text" name="c5l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="c5r" size="5">&nbsp;(Lat deltoid)</td>
 <td>C5 </td>
 <td> <input type="text" name="c51l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c51r" size="5">&nbsp;/5&nbsp;(Shd ABD)</td>
 <td> C5</td>
 <td> <input type="text" name="c53l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c53r" size="5">&nbsp;/5&nbsp;(Biceps)</td>
 
 </tr>
 <tr class="row1">
 <td>C6</td>
 <td><input type="text" name="c6l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="c6r" size="5">&nbsp;(Lat arm/hand)	</td>
 <td>C6 </td>
 <td> <input type="text" name="c61l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c61r" size="5">&nbsp;/5&nbsp;(Elb flex/wrist ext)	</td>
  <td>C6 </td>
 <td><input type="text" name="c63l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c63r" size="5">&nbsp;/5&nbsp;(Brachiorad.) </td>

 </tr>
 <tr class="row1">
 <td>C7</td>
 <td><input type="text" name="c7l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="c7r" size="5">&nbsp;(3rd digit)</td>
 <td>C7 </td>
 <td> <input type="text" name="c71l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c71r" size="5">&nbsp;/5&nbsp;(Elb ext/wrist flex)</td>
 <td> C7</td>
 <td> <input type="text" name="c73l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c73r" size="5">&nbsp;/5&nbsp;(Triceps)</td>
 </tr>
 <tr class="row1">
 <td>C8</td>
 <td><input type="text" name="c8l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="c8r" size="5">&nbsp;(Med forearm/hand)	</td>
 <td>C8 </td>
 <td> <input type="text" name="c81l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c81r" size="5">&nbsp;/5&nbsp;(Digit flexion)</td>
 <td></td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>T1</td>
 <td><input type="text" name="t1l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="t1r" size="5">&nbsp;(Med elbow/arm)	</td>
 <td>T1 </td>
 <td><input type="text" name="t11l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="t11r" size="5">&nbsp;/5&nbsp; (Digit abd/add)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td></td>
 <td>("-" is Normal)</td>
 <td> </td>
 <td> (5/5 is Normal)</td>
 <td> </td>
 <td> (2+/5 is Normal)</td>
 </tr>
 </table>
<table>         
 <tr class="row1">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td><input type="checkbox" name="sitting" value="Sitting">Sitting &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing">Standing</td>
 <td width="150"><input type="checkbox" name="driving" value="Driving">Driving</td><td width="150"><input type="checkbox" name="computeruse" value="Computer Use">Computer Use</td>
 <td width="150"><input type="checkbox" name="otherfunctional" value="Other" onclick="this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp; </td><td><input type="text"  id="break3" name="break_text3" style="visibility:hidden" /></td>
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