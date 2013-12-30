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
<form action="kneeexam" method="POST" name="kneeexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>KNEE EXAM</h2> </center><br/>
	            
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
 <tr class="row2">
 <td><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
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
 <td><input type="text" style="visibility:hidden"> </td> 
 <td> <input type="text" style="visibility:hidden"></td>
 </tr>
 <tr class="row2">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable"> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
 
  <tr class="row1">
 <td width="200">Leg Length (ASIS to Medial Malleolus): </td> 
 <td><input type="checkbox" name="leglengthl" value="left" onclick="this.form.break5.style.visibility = this.checked? 'visible' : 'hidden'">Left
					<input type="text" name="leglengthtextl" id="break5" style="visibility:hidden">
					</td>
					<td><input type="checkbox" name="leglengthr" value="right" onclick="this.form.break6.style.visibility = this.checked? 'visible' : 'hidden'">Right</td>
					<td><input type="text" name="leglengthtextr" id="break6" style="visibility:hidden"></td>					
					<td></td>
					<td></td> 
					
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>VMO:</td><td width="100"><input type="radio" name="vmo" value="Left">Left <input type="radio" name="vmo" value="Right">Right</td> 
 <td>Quads (-VMO):</td><td><input type="radio" name="quads" value="Left">Left  <input type="radio" name="quads" value="Right">Right</td>
 <td>Semimemb:</td><td width="200"><input type="radio" name="semimemb" value="Left">Left  <input type="radio" name="semimemb" value="Right">Right</td>
 <td>Semitend:</td><td width="200"><input type="radio" name="semitend" value="Left">Left  <input type="radio" name="semitend" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Gastroc:</td><td width="200"><input type="radio" name="gastroc" value="Left">Left  <input type="radio" name="gastroc" value="Right">Right</td>
  <td>Soleus:</td><td width="200"><input type="radio" name="soleus" value="Left">Left  <input type="radio" name="soleus" value="Right">Right</td>
  <td>Iliotib Band:</td><td width="200"><input type="radio" name="iliotibband" value="Left">Left  <input type="radio" name="iliotibband" value="Right">Right</td>
 <td>Biceps Fem:</td><td><input type="radio" name="bicepsfem" value="Left">Left <input type="radio" name="bicepsfem" value="Right">Right</td>
 </tr>
 </table>
 <table>
 <tr class="row2">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td><B style="font-size:14px"></B></td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><B style="font-size:14px"></B></td>
 </tr>
  <tr class="row1">
 <td><input type="radio" name="functionalrangeofmotion" value="Unremarkable">Unremarkable &nbsp;&nbsp;<!-- <input type="radio" name="functionalrangeofmotion" value="Except">Except --></td><td> </td>  
 <td></td>
 <td> <input type="radio" name="orthopedic" value="Unremarkable">Unremarkable&nbsp;&nbsp;<!-- <input type="radio" name="orthopedic" value="Except">Except --></td><td> </td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (60)</td><td>&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7"></td>  
 <td><b>Ant. Drawer (ACL):</b> </td><td><input type="text" name="acll" size="5"> <input type="text" name="aclr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25) </td><td> &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="extension" size="7"></td>  
 <td><b>Post. Drawer (PCL):	</b> </td><td><input type="text" name="pcll" size="5"> <input type="text" name="pclr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Internal Rotation:</b> </td><td> (25)</td><td>L &nbsp;<input type="text" name="internalrotationl" size="7"><br/><br/>R <input type="text" name="internalrotationr" size="7"></td>  
 <td><b>Lateral (Varus) Stability (LCL):</b> </td><td><input type="text" name="lcll" size="5"> <input type="text" name="lclr" size="5"></td>
 </tr>
  <tr class="row1">
  <td><b> External Rotation:</b> </td><td> (45)</td><td>L &nbsp;<input type="text" name="externalrotationl" size="7"><br/><br/>R <input type="text" name="externalrotationr" size="7"></td>  
 <td><b>Medial (Valgus) Stability (MCL):</b> </td><td><input type="text" name="mcll" size="5"> <input type="text" name="mclr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>GIRTH</b>&nbsp;&nbsp;&nbsp; <input type="checkbox" name="circumferential" value="Circumferential Measures are Unremarkable">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Circumferential Measures are 	</td><td>Unremarkable </td>  
 <td></td>
 <td><b>McMurray's (Med Meniscus):	</b> </td><td><input type="text" name="meniscusl" size="5"> <input type="text" name="meniscusr" size="5"></td>
 </tr>
  <tr class="row1">
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>5 cm Above</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Suprapatellar</b></td><td><b>Infrapatellar</b> </td>  
 <td><b>5 cm Below</b>	</td>
 <td><b>Apley's Compress (Meniscus):	</b> </td><td><input type="text" name="apleysl" size="5"> <input type="text" name="apleysr" size="5"></td>
 </tr>
  <tr class="row1">
 <td>Left &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cmabovel" size="8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="suprapatellarl" size="8"></td><td><input type="text" name="infrapatellarl" size="8"> </td>  
 <td><input type="text" name="belowl" size="8"></td>
 <td><b>Apley's Distraction (Cor ligs):		</b> </td><td><input type="text" name="distractionl" size="5"> <input type="text" name="distractionr" size="5"> </td>
 </tr>
 <tr class="row1">
 <td>Right &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cmabover" size="8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="suprapatellarr" size="8"></td><td><input type="text" name="infrapatellarr" size="8"> </td>  
 <td><input type="text" name="belowr" size="8"></td>
 <td><b>Patellar Grind (CMP):		</b> </td><td><input type="text" name="cmpl" size="5"> <input type="text" name="cmpr" size="5"> </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td> 
 <td><b>Patellar Apprehension (Pat D/L):		</b> </td><td><input type="text" name="patdll" size="5"> <input type="text" name="patdlr" size="5"> </td>
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
	            <center> <h2>KNEE EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row2">
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
<table>         
 <tr class="row2">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td>
 <td width="150"><input type="checkbox" name="walking" value="Walking">Walking &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing">Standing</td>
 <td width="150"><input type="checkbox" name="stairs" value="Stairs">Stairs</td>
 <td width="150"><input type="checkbox" name="otherfunctional" value="Other" onclick="this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp;</td>
 <td> <input type="text" id="break3" name="break_text3" style="visibility:hidden" /></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40'></textarea></td><td></td>
 <td></td><td></td>
 <td><input type="text" style="visibility:hidden" ></td>
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
 <tr class="row2">
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