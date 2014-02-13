<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<c:if test="${knee=='1'}">
<script>
window.close();
</script>
</c:if>
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
 <br><br>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
         <c:choose>
            <c:when test="${empty knee}">
   <div id="tabs-1"> 
 <div id="right_content">
<form action="kneeexam" method="POST" name="knee">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>KNEE INITIAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
	    
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td><h2><span class="err">*</span>Patient Name:</h2></td><td><input type="text"  name="pname" /><span class="err"><form:errors path="knee.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" /><span class="err"><form:errors path="knee.date"></form:errors></span></td>
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
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="100"><input type="radio" name="functionalrangeofmotion" value="Unremarkable">Unremarkable</td><td width="300"> </td> 
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><input type="radio" name="orthopedic" value="Unremarkable">Unremarkable</td>
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
 <td width="250"><b>GIRTH</b>&nbsp;&nbsp;&nbsp; <input type="checkbox" name="circumferential" value="Circumferential Measures are Unremarkable">&nbsp; Circumferential Measures &nbsp;&nbsp;are 	</td><td>Unremarkable </td>  
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
	            <center> <h2>KNEE INITIAL EXAM</h2> </center><br/>
	            
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
<table>         
 <tr class="row1">
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
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign"><span class="err"><form:errors path="Kneeexam.sign"></form:errors></span></B></td></tr></table>
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
<td width="150"><h2><span class="err">*</span>Patient Name:</h2></td><td width="380"><input type="text"  name="pname" value="${Kneeexam.pname}"/><span class="err"><form:errors path="Kneeexam.pname"></form:errors></span></td>
<td width="300">
<td><h2><span class="err">*</span>Date:</h2></td><td width="380"><input type="text"  id="datepicker" name="date" value="${Kneeexam.date}"/><span class="err"><form:errors path="Kneeexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td width="500"><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="200">Gait:</td><td><select style="width:180px" name="gait" id="gait"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="normal" <c:if test="${knee.gait=='normal'}"><c:out value="selected"/></c:if> >Normal</option>
					<option value="antalgic" <c:if test="${knee.gait=='antalgic'}"><c:out value="selected"/></c:if>>Antalgic</option>
					<option value="shuffling" <c:if test="${knee.gait=='shuffling'}"><c:out value="selected"/></c:if>>Shuffling</option>
					<option value="limp" <c:if test="${knee.gait=='limp'}"><c:out value="selected"/></c:if>>Limp</option>
					<option value="stagger" <c:if test="${knee.gait=='stagger'}"><c:out value="selected"/></c:if>>Stagger</option>
					<option value="caneassited" <c:if test="${knee.gait=='caneassited'}"><c:out value="selected"/></c:if>>Cane Assisted</option>
					<option value="wheelchair" <c:if test="${knee.gait=='wheelchair'}"><c:out value="selected"/></c:if>>Wheel Chair</option>
					</select></td> 
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td><select style="width:180px" name="pelvicunleveling" id="pelvicunleveling"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="none" <c:if test="${knee.pelvicunleveling=='none'}"><c:out value="selected"/></c:if>>None</option>
					<option value="superiorilliaccrestright" <c:if test="${knee.pelvicunleveling=='superiorilliaccrestright'}"><c:out value="selected"/></c:if>>superior illiac crest right</option>
					<option value="superioriliaccrestleft" <c:if test="${knee.pelvicunleveling=='superiorilliaccrestleft'}"><c:out value="selected"/></c:if>>superior iliac crest left</option>
					</select></td> 
  <td>A & O:<select name="ao" id="ao"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="excellent" <c:if test="${knee.ao=='excellent'}"><c:out value="selected"/></c:if>>Excellent</option>
					<option value="good" <c:if test="${knee.ao=='good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="fair" <c:if test="${knee.ao=='fair'}"><c:out value="selected"/></c:if>>Fair</option>
					<option value="severe" <c:if test="${knee.ao=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
					</select> </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="300"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${knee.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <td> <%-- <input type="checkbox" name="except" value="Except" <c:if test="${knee.except=='Except'}"><c:out value="Checked"/></c:if>> Except --%> </td>
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
  <tr class="row1">
 <td width="200">Leg Length Discrepancy:Short Leg-  </td> 
 <td><input type="checkbox" id="leglengthl" name="leglengthl" value="left" onclick="visible(this.value)" <c:if test="${knee.leglengthl=='left'}"><c:out value="Checked"/></c:if>>Left</td>
 <td><input type="text" name="leglengthtextl" id="break5" style="display:none" value="${knee.leglengthtextl}"></td>
 <td><input type="checkbox" id="leglengthr" name="leglengthr" value="right" onclick="visible(this.value)" <c:if test="${knee.leglengthr=='right'}"><c:out value="Checked"/></c:if>>Right</td>
 <td><input type="text" name="leglengthtextr" id="break6" style="display:none" value="${knee.leglengthtextr}"></td>
					<td></td>
					<td></td>
					<td></td> 
					
 </tr>
 <tr class="row1">
 <td>VMO:</td><td width="100"><input type="radio" name="vmo" value="Left" <c:if test="${knee.vmo=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="vmo" value="Right" <c:if test="${knee.vmo=='Right'}"><c:out value="checked=checked"/></c:if> >Right</td> 
 
 <td>Quads (-VMO):</td><td width="200"><input type="radio" name="quads" value="Left" <c:if test="${knee.quads=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="quads" value="Right" <c:if test="${knee.quads=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Semimemb:</td><td width="100"><input type="radio" name="semimemb" value="Left" <c:if test="${knee.semimemb=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="semimemb" value="Right" <c:if test="${knee.semimemb=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
<td>Semitend:</td><td width="100"><input type="radio" name="semitend" value="Left" <c:if test="${knee.semitend=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="semitend" value="Right" <c:if test="${knee.semitend=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Gastroc::</td><td><input type="radio" name="gastroc" value="Left" <c:if test="${knee.gastroc=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="gastroc" value="Right" <c:if test="${knee.gastroc=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Soleus:</td><td width="200"><input type="radio" name="soleus" value="Left" <c:if test="${knee.soleus=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="soleus" value="Right" <c:if test="${knee.soleus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Iliotib Band:</td><td><input type="radio" name="iliotibband" value="Left" <c:if test="${knee.iliotibband=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="iliotibband" value="Right" <c:if test="${knee.iliotibband=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 <td>Biceps Fem:</td><td><input type="radio" name="bicepsfem" value="Left" <c:if test="${knee.bicepsfem=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="bicepsfem" value="Right" <c:if test="${knee.bicepsfem=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${knee.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if> >Unremarkable </td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${knee.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (60)</td><td>&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7" value="${knee.flexion}"></td>  
 <td><b>Ant. Drawer (ACL):</b> </td><td><input type="text" name="acll" size="5" value="${knee.acll}"> <input type="text" name="aclr" size="5" value="${knee.aclr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25) </td><td> &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="extension" size="7" value="${knee.extension}"></td>  
 <td><b>Post. Drawer (PCL):	</b> </td><td><input type="text" name="pcll" size="5" value="${knee.pcll}"> <input type="text" name="pclr" size="5" value="${knee.pclr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Internal Rotation:</b> </td><td> (25)</td><td>L &nbsp;<input type="text" name="internalrotationl" size="7" value="${knee.internalrotationl}"><br/><br/>R <input type="text" name="internalrotationr" size="7" value="${knee.internalrotationr}"></td>  
 <td><b>Lateral (Varus) Stability (LCL):</b> </td><td><input type="text" name="lcll" size="5" value="${knee.lcll}"> <input type="text" name="lclr" size="5" value="${knee.lclr}"></td>
 </tr>
  <tr class="row1">
  <td><b> External Rotation:</b> </td><td> (45)</td><td>L &nbsp;<input type="text" name="externalrotationl" size="7" value="${knee.externalrotationl}"><br/><br/>R <input type="text" name="externalrotationr" size="7" value="${knee.externalrotationr}"></td>  
 <td><b>Medial (Valgus) Stability (MCL):</b> </td><td><input type="text" name="mcll" size="5" value="${knee.mcll}"> <input type="text" name="mclr" size="5" value="${knee.mclr}"> </td>
 </tr>
  <tr class="row1">
 <td><b>GIRTH</b>&nbsp;&nbsp;&nbsp; <input type="checkbox" name="circumferential" value="Circumferential Measures are Unremarkable" <c:if test="${knee.circumferential=='Circumferential Measures are Unremarkable'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Circumferential Measures are 	</td><td>Unremarkable </td>  
 <td></td>
 <td><b>McMurray's (Med Meniscus):	</b> </td><td><input type="text" name="meniscusl" size="5" value="${knee.meniscusl}"> <input type="text" name="meniscusr" size="5" value="${knee.meniscusr}"></td>
 </tr>
  <tr class="row1">
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>5 cm Above</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Suprapatellar</b></td><td><b>Infrapatellar</b> </td>  
 <td><b>5 cm Below</b>	</td>
 <td><b>Apley's Compress (Meniscus):	</b> </td><td><input type="text" name="apleysl" size="5" value="${knee.apleysl}"> <input type="text" name="apleysr" size="5" value="${knee.apleysr}"></td>
 </tr>
  <tr class="row1">
 <td>Left &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cmabovel" size="8" value="${knee.cmabovel}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="suprapatellarl" size="8" value="${knee.suprapatellarl}"></td><td><input type="text" name="infrapatellarl" size="8" value="${knee.infrapatellarl }"> </td>  
 <td><input type="text" name="belowl" size="8" value="${knee.belowl}"></td>
 <td><b>Apley's Distraction (Cor ligs):		</b> </td><td><input type="text" name="distractionl" size="5" value="${knee.distractionl}"> <input type="text" name="distractionr" size="5" value="${knee.distractionr}"> </td>
 </tr>
 <tr class="row1">
 <td>Right &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cmabover" size="8" value="${knee.cmabover}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="suprapatellarr" size="8" value="${knee.suprapatellarr}"></td><td><input type="text" name="infrapatellarr" size="8" value="${knee.infrapatellarr}"> </td>  
 <td><input type="text" name="belowr" size="8" value="${knee.belowr}"></td>
 <td><b>Patellar Grind (CMP):		</b> </td><td><input type="text" name="cmpl" size="5" value="${knee.cmpl}"> <input type="text" name="cmpr" size="5" value="${knee.cmpr}"> </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td> 
 <td><b>Patellar Apprehension (Pat D/L):		</b> </td><td><input type="text" name="patdll" size="5" value="${knee.patdll}"> <input type="text" name="patdlr" size="5" value="${knee.patdlr}"> </td>
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
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable" <c:if test="${knee.neurologicaltest=='Neurological Testing Unremarkable'}"><c:out value="Checked"/></c:if> >Neurological Testing Unremarkable</td><td><%-- <input type="checkbox" name="exceptn" value="Except" <c:if test="${knee.exceptn=='Except'}"><c:out value="Checked"/></c:if>>Except --%></td>
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
 <td><input type="text" name="l1l" size="5" value="${knee.l1l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l1r" size="5" value="${knee.l1r}">&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> <input type="text" name="l15l" size="5" value="${knee.l15l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l15r" size="5" value="${lumbopelvic.l15r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td><input type="text" name="l2l" size="5" value="${knee.l2l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l2r" size="5" value="${knee.l2r }">&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> <input type="text" name="l25l" size="5" value="${knee.l25l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l25r" size="5" value="${knee.l25r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td><input type="text" name="l3l" size="5" value="${knee.l3l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l3r" size="5" value="${knee.l3r}">&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> <input type="text" name="l35l" size="5" value="${knee.l35l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l35r" size="5" value="${knee.l35r}">&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td><input type="text" name="l4l" size="5" value="${knee.l4l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l4r" size="5" value="${knee.l4r}">&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td> <input type="text" name="l45l" size="5" value="${knee.l45l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l45r" size="5" value="${knee.l45r}">&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> <input type="text" name="l4l3" size="5" value="${knee.l4l3}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l4r3" size="5" value="${knee.l4r3}">&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td><input type="text" name="l5l" size="5" value="${knee.l5l}">&nbsp; &nbsp; &nbsp;<input type="text" name="l5r" size="5" value="${knee.l5r}">&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td> <input type="text" name="l55l" size="5" value="${knee.l55l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l55r" size="5" value="${knee.l55r}">&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td><input type="text" name="l5l3" size="5" value="${knee.l5l3}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="l5r3" size="5" value="${knee.l5r3}">&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td><input type="text" name="sl" size="5" value="${knee.sl}">&nbsp; &nbsp; &nbsp;<input type="text" name="sr" size="5" value="${knee.sr}">&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td> <input type="text" name="s5l" size="5" value="${knee.s5l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="s5r" size="5" value="${knee.s5r}">&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> <input type="text" name="sil" size="5" value="${knee.sil}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="sir" size="5" value="${knee.sir}">&nbsp;/5&nbsp;(Achilles)</td>
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
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td>
 <td width="150"><input type="checkbox" name="walking" value="Walking" <c:if test="${knee.walking=='Walking'}"><c:out value="Checked"/></c:if>>Walking &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing" <c:if test="${knee.standing=='Standing'}"><c:out value="Checked"/></c:if>>Standing</td>
 <td width="150"><input type="checkbox" name="stairs" value="Stairs" <c:if test="${knee.stairs=='Stairs'}"><c:out value="Checked"/></c:if>>Stairs</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other"  onclick="visible(this.value)" <c:if test="${knee.otherfunctional=='Other'}"><c:out value="Checked"/></c:if> >Other&nbsp;</td>
 <td> <input type="text" id="break3" name="break_text3" style="display:none" value="break_text3"/></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40'> ${knee.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${knee.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if> >Excellent</option>
					<option value="Good" <c:if test="${knee.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${knee.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${knee.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" value="${knee.diagnosis1}"></td>
 <td width="250">2)<input type="text" name="diagnosis2" value="${knee.diagnosis2 }"></td>
 <td width="250">3)<input type="text" name="diagnosis3" value="${knee.diagnosis3 }"></td>
 <td width="250">4)<input type="text" name="diagnosis4" value="${knee.diagnosis4 }"></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" value="${knee.diagnosis5}"></td>
 <td width="250">6)<input type="text" name="diagnosis6" value="${knee.diagnosis6}"></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" value="${knee.times}">Times/week for </td>
 <td><input type="text" name="week" value="${knee.week}">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression"  <c:if test="${knee.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic"  <c:if test="${knee.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy"  <c:if test="${knee.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing"  <c:if test="${knee.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities"  <c:if test="${knee.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation"  <c:if test="${knee.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP"  <c:if test="${knee.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray"  <c:if test="${knee.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI"  <c:if test="${knee.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan"  <c:if test="${knee.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction"  <c:if test="${knee.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG"  <c:if test="${knee.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral"  <c:if test="${knee.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C"  <c:if test="${knee.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" id="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)" <c:if test="${knee.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other<input type="text" class="input_txtbx1" id="break4" name="break_text4"  style="display:none"  value="${knee.break_text4}" /></td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" value="${knee.sign}"><span class="err"><form:errors path="Kneeexam.sign"></form:errors></span></B></td></tr></table>
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
   
</div>
</div>
</form>
</body>