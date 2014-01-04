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
<form action="lumbopelvicexam" method="POST" name="lumbopelvicexam">
<table  width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>LUMBOPELVIC INITIAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table  cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td><input type="text"  name="pname" /></td>
<td width="600">
<td><h2>Date:</h2></td><td><input type="text"  id="datepicker" name="date" /></td>
</tr>
</table>
<br/>
<br/>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td width="300"><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Gait:</td><td><select style="width:180px" name="gait" id="gait"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="normal" >Normal</option>
					<option value="antalgic">Antalgic</option>
					<option value="shuffling">Shuffling</option>
					<option value="limp">Limp</option>
					<option value="stagger">Stagger</option>
					<option value="caneassited">Cane Assisted</option>
					<option value="wheelchair">Wheel Chair</option>
					</select></td> 
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td><select style="width:180px" name="pelvicunleveling" id="pelvicunleveling"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="none" >None</option>
					<option value="superiorilliaccrestright">superior illiac crest right</option>
					<option value="superioriliaccrestleft">superior iliac crest left</option>
					</select></td> 
  <td>A & O:<select name="ao" id="ao"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="excellent" >Excellent</option>
					<option value="good">Good</option>
					<option value="fair">Fair</option>
					<option value="severe">Severe</option>
					</select> </td>
 <td></td>
 <td></td> 
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
 <td width="200">Leg Length Discrepancy:Short Leg-  </td> 
 <td><input type="checkbox" name="leglengthcheckl" value="left" onclick="this.form.break5.style.visibility = this.checked? 'visible' : 'hidden'">Left
 <select name="leglengthl" id="break5" style="visibility:hidden" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="1/8">1/8</option>
					<option value="1/4">1/4</option>
					<option value="3/8">3/8</option>
					<option value="1/2">1/2</option>
					<option value="5/8">5/8</option>
					<option value="3/4">3/4</option>
					<option value="7/8">7/8</option>
					<option value="1">1</option>
					<option value="other">other</option>
					<input type="text" name="other1" id="other1" style='display:none'>
					</select></td>
					<td><input type="checkbox" name="leglengthcheckr" value="right" onclick="this.form.break6.style.visibility = this.checked? 'visible' : 'hidden'">Right
					<select name="leglengthr" id="break6" style="visibility:hidden" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="1/8">1/8</option>
					<option value="1/4">1/4</option>
					<option value="3/8">3/8</option>
					<option value="1/2">1/2</option>
					<option value="5/8">5/8</option>
					<option value="3/4">3/4</option>
					<option value="7/8">7/8</option>
					<option value="1">1</option>
					<option value="other">other</option>
					</select><input type="text" name="other2" id="other2" style='display:none'>
					</td>
					<td></td>
					<td></td>
					<td></td> 
					
 </tr>
 <tr class="row1">
 <td>Piriformis:</td><td width="100"><input type="radio" name="piriformis" value="Left">Left <input type="radio" name="piriformis" value="Right">Right</td> 
 
 <td>Quad Lumb:</td><td width="200"><input type="radio" name="quadlumb" value="Left">Left  <input type="radio" name="quadlumb" value="Right">Right</td> 
 
 <td>Paraspinals:</td><td width="100"><input type="radio" name="paraspinals" value="Left">Left <input type="radio" name="paraspinals" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Gluteus Maximus:</td><td><input type="radio" name="gluteus" value="Left">Left  <input type="radio" name="gluteus" value="Right">Right</td> 
 <td>Gluteus Medius:</td><td width="200"><input type="radio" name="gluteusmedius" value="Left">Left  <input type="radio" name="gluteusmedius" value="Right">Right</td> 
 <td>Hamstrings:</td><td><input type="radio" name="hamstrings" value="Left">Left <input type="radio" name="hamstrings" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Iliopsoas:</td><td><input type="radio" name="iliopsoas" value="Left">Left  <input type="radio" name="iliopsoas" value="Right">Right</td> 
 <td>Rectus Abdominis:	</td><td><input type="radio" name="rectus" value="Left">Left <input type="radio" name="rectus" value="Right">Right</td> 
 <td>Obliques:</td><td><input type="radio" name="obliques" value="Left">Left <input type="radio" name="obliques" value="Right">Right</td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
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
 <td width="250"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td><input type="radio" name="orthopedic" value="Unremarkable">Unremarkable</td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (60)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7"></td> 
 <td width="100">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t89" size="7"></td><td width="250">T9-10:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t910" size="7"> </td> 
 <td><b>Trendelenburg:</b> </td><td><input type="text" name="trendelburgl" size="5"> <input type="text" name="trendelburgr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7"></td> 
 <td width="100">T10-11:&nbsp;<input type="text" name="t1011" size="7"></td><td width="50">T11-12:&nbsp;&nbsp;&nbsp;<input type="text" name="t1112" size="7"> </td> 
 <td><b>Kemps:	</b> </td><td><input type="text" name="kempsl" size="5"> <input type="text" name="kempsr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (25)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7"></td> 
 <td width="100">T12-L1:&nbsp;<input type="text" name="t12l1" size="7"></td><td width="50">	L1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="l12" size="7"> </td> 
 <td><b>Slump:</b> </td><td><input type="text" name="slumpl" size="5"> <input type="text" name="slumpr" size="5"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (45)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7"></td> 
 <td width="100">L2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="l23" size="7"></td><td width="50">L3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l34" size="7"> </td> 
 <td><b>Straight Leg Raise:</b> </td><td><input type="text" name="straightlegl" size="5"> <input type="text" name="straightlegr" size="5"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">L4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l45" size="7"></td><td width="50">L5-S1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="l5s1" size="7"> </td> 
 <td><b>Well Leg Raise:	</b> </td><td><input type="text" name="welllegl" size="5"> <input type="text" name="welllegr" size="5"></td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">L SI: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="lsi" size="7"></td><td width="50">	R SI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="rsi" size="7"> </td> 
 <td><b>Nachlas / Yeoman's</b> </td><td><input type="text" name="nachlasl" size="5"> <input type="text" name="nachlasr" size="5"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Minor's:	</b> </td><td><input type="text" name="positiveminor" size="15"> </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Adam's:	</b> </td><td><input type="text" name="positiveadam" size="15"> </td>
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
	            <center> <h2>LUMBOPELVIC INITIAL EXAM</h2> </center><br/>
	            
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
 <td>L1</td>
 <td><input type="text" name="l1l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="l1r" size="5">&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> <input type="text" name="l15l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l15r" size="5">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td><input type="text" name="l2l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="l2r" size="5">&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> <input type="text" name="l25l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l25r" size="5">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td><input type="text" name="l3l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="l3r" size="5">&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> <input type="text" name="l35l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l35r" size="5">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td><input type="text" name="l4l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="l4r" size="5">&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td> <input type="text" name="l45l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l45r" size="5">&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> <input type="text" name="l4l3" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l4r3" size="5">&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td><input type="text" name="l5l" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="l5r" size="5">&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td> <input type="text" name="l55l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l55r" size="5">&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td><input type="text" name="l5l3" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l5r3" size="5">&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td><input type="text" name="sl" size="5">&nbsp; &nbsp; &nbsp;<input type="text" name="sr" size="5">&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td> <input type="text" name="s5l" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="s5r" size="5">&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> <input type="text" name="sil" size="5">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="sir" size="5">&nbsp;/5&nbsp;(Achilles)</td>
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
<table cellpadding="0" cellspacing="0" border="0">         
 <tr class="row1">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td><input type="checkbox" name="sitting" value="Sitting to Standing">Sitting to Standing &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="lifting" value="Lifting">Lifting	</td>
 <td width="150"><input type="checkbox" name="walking" value="Walking">Walking</td><td width="150"><input type="checkbox" name="stairs" value="Stairs">Stairs</td>
 <td width="150"><input type="checkbox" name="otherfunctional" value="Other" onclick="this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp;</td><td> <input type="text" class="input_txtbx1" id="break3" name="break_text3" style="visibility:hidden" /></td>
 </tr>         
 <tr class="row1">
 <td width="450"><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40'></textarea></td><td></td>
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
 <table cellpadding="0" cellspacing="0" border="0">
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
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times">Times/week for </td>
 <td><input type="text" name="week">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
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
 <table cellpadding="0" cellspacing="0" border="0"><tr><td><B style="font-size:14px">PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign"></B></td></tr></table>
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