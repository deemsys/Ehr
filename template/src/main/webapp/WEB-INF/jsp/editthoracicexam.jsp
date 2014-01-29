<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
   //$( "#draggable" ).draggable({ revert: "not valid" });
   
   $(window).load(function(){	
	     });
  
    $('input:checkbox[name=otherfunctional]').each(function() 
		{    
		   if($(this).is(':checked'))
		   var other=$(this).val();
		      if(other=="Other")
		   {
		   document.getElementById("break3").style.display="block";
		   }
		   else
		   {
			   document.getElementById("break3").style.display="none";
		   }  
		});
    
    $('input:checkbox[name=otheraddress]').each(function() 
    		{    
    		   if($(this).is(':checked'))
    		   var other=$(this).val();   
    		      if(other=="Other")
    		   {
    		   document.getElementById("break4").style.display="block";
    		   }
    		   else
    		   {
    			   document.getElementById("break4").style.display="none";
    		   }  
    		});
});
</script>
<script>
function visible(val)
{

if(document.getElementById('otherfunctional').checked)
{
var element=document.getElementById('break3');
element.style.display='block';
}
else
{
var element=document.getElementById('break3');
element.style.display='none';
}

if(document.getElementById('otheraddress').checked)
{
var element=document.getElementById('break4');
element.style.display='block';
}
else
{
var element=document.getElementById('break4');
element.style.display='none';
}


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
<form action="updatethoracicexam" method="POST" name="thoracicexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>THORACIC REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
         <c:set value="${thoracicexamForm.thoracicexam[0]}" var="thoracicexam"/>    
 <tr class="row1">
 <input type="hidden" name="thoracicexamid" id="inp_id" value="${thoracicexam.thoracicexamid}">
<td><h2><span class="err">*</span>Patient Name:</h2></td><td><input type="text"  name="pname" value="${thoracicexam.pname}"/><span class="err"><form:errors path="Thoracicexam.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${thoracicexam.date}"/><span class="err"><form:errors path="Thoracicexam.date"></form:errors></span></td>
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
 <td width="200">Muscle Symmetry: </td><td><input type="text" name="muscle" value="${thoracicexam.muscle}"></td> 
 <td>Swelling / Discoloration: </td> 
 <td><input type="text" name="swelling" value="${thoracicexam.swelling}"></td>
 </tr>
 <tr class="row1">
 <td width="200">Asymmetries (High Side Marked):</td>
  <td>Acromion: </td><td><input type="radio" name="acromion" value="Left" <c:if test="${thoracicexam.acromion=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="acromion" value="Right" <c:if test="${thoracicexam.acromion=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Inferior Pole of Scapula:</td>
 <td><input type="radio" name="inferior" value="Left" <c:if test="${thoracicexam.inferior=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="inferior" value="Right" <c:if test="${thoracicexam.inferior=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"></td>
  <td>Iliac Crest: </td><td><input type="radio" name="iliac" value="Left" <c:if test="${thoracicexam.iliac=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="iliac" value="Right" <c:if test="${thoracicexam.iliac=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Rib Humping:</td>
 <td><input type="radio" name="ribhumping" value="Left" <c:if test="${thoracicexam.ribhumping=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="ribhumping" value="Right" <c:if test="${thoracicexam.ribhumping=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${thoracicexam.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
  <td></td>
 </tr>
  
 <tr class="row1">
 <td>Rectus Abdominis:</td><td width="100"><input type="radio" name="rectus" value="Left" <c:if test="${thoracicexam.rectus=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="rectus" value="Right" <c:if test="${thoracicexam.rectus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Obliques:</td><td width="200"><input type="radio" name="obliques" value="Left" <c:if test="${thoracicexam.obliques=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="obliques" value="Right" <c:if test="${thoracicexam.obliques=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Levator Scapulae:</td><td width="100"><input type="radio" name="levator" value="Left" <c:if test="${thoracicexam.levator=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="levator" value="Right" <c:if test="${thoracicexam.levator=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Serratus Anterior:</td><td><input type="radio" name="serratus" value="Left" <c:if test="${thoracicexam.serratus=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="serratus" value="Right" <c:if test="${thoracicexam.serratus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Pectoralis Major:</td><td width="200"><input type="radio" name="pectoralis" value="Left" <c:if test="${thoracicexam.pectoralis=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="pectoralis" value="Right" <c:if test="${thoracicexam.pectoralis=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Trapezius:	</td><td><input type="radio" name="trapezius" value="Left" <c:if test="${thoracicexam.trapezius=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="trapezius" value="Right" <c:if test="${thoracicexam.trapezius=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Rhomboids:</td><td><input type="radio" name="rhomboids" value="Left" <c:if test="${thoracicexam.rhomboids=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="rhomboids" value="Right" <c:if test="${thoracicexam.rhomboids=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Pectoralis Minor:	</td><td><input type="radio" name="pectoralisminor" value="Left" <c:if test="${thoracicexam.pectoralisminor=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="pectoralisminor" value="Right" <c:if test="${thoracicexam.pectoralisminor=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Paraspinals:</td><td><input type="radio" name="paraspinals" value="Left" <c:if test="${thoracicexam.paraspinals=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="paraspinals" value="Right" <c:if test="${thoracicexam.paraspinals=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes" value="${thoracicexam.othernotes}"></td> 
 <td width="150">
 <td></td><td></td>
 <td width="150">
 <td></td><td></td>
 </tr>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="200"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${thoracicexam.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable </td> 
 <td width="250"><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td width="150"><input type="radio" name="subluxation" value="Unremarkable" <c:if test="${thoracicexam.subluxation=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td> 
 <td width="250"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${thoracicexam.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (20-40)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7" value="${thoracicexam.flexion}"></td> 
 <td width="100">T1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t12" size="7" value="${thoracicexam.t12}"></td><td width="250">T2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t23" size="7" value="${thoracicexam.t23 }"> </td> 
 <td><b>Adam's Sign:	</b> </td><td><input type="text" name="adamsignl" size="5" value="${thoracicexam.adamsignl}"> <input type="text" name="adamsignr" size="5" value="${thoracicexam.adamsignr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25-45)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7" value="${thoracicexam.extension}"></td> 
 <td width="100">T3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t34" size="7" value="${thoracicexam.t34}"></td><td width="50">T4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t45" size="7" value="${thoracicexam.t45}"> </td> 
 <td><b>Schepelman's:	</b> </td><td><input type="text" name="schepelmanl" size="5" value="${thoracicexam.schepelmanl}"> <input type="text" name="schepelmanr" size="5" value="${thoracicexam.schepelmanr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (20-40)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7" value="${thoracicexam.lflexion}"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7" value="${thoracicexam.rflexion}"></td> 
 <td width="100">T5-6:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t56" size="7" value="${thoracicexam.t56}"></td><td width="50">	T6-7:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="t67" size="7" value="${thoracicexam.t67}"> </td> 
 <td><b>Valsalva:</b> </td><td><input type="text" name="valsalval" size="5" value="${thoracicexam.valsalval}"> <input type="text" name="valsalvar" size="5" value="${thoracicexam.valsalvar}"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (35-50)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7" value="${thoracicexam.lrotation}"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7" value="${thoracicexam.rrotation}"></td> 
 <td width="100">T7-8:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="t78" size="7" value="${thoracicexam.t78}"></td><td width="50">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t89" size="7" value="${thoracicexam.t89}"> </td> 
 <td><b>Dejerine's Triad:</b> </td><td><input type="text" name="dejerinel" size="5" value="${thoracicexam.dejerinel}"> <input type="text" name="dejeriner" size="5" value="${thoracicexam.dejeriner}"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">T9-10:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t910" size="7" value="${thoracicexam.t910}"></td><td width="50">T10-11:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t1011" size="7" value="${thoracicexam.t1011}"> </td> 
 <td><b>Soto Hall:	</b> </td><td><input type="text" name="sotohalll" size="5" value="${thoracicexam.sotohalll}"> <input type="text" name="sotohallr" size="5" value="${thoracicexam.sotohallr}"></td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">T11-12: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t1112" size="7" value="${thoracicexam.t1112}"></td><td width="50">	T12-L1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t12l1" size="7" value="${thoracicexam.t12l1}"> </td> 
 <td><b>Sternal Compression:</b> </td><td><input type="text" name="sternall" size="5" value="${thoracicexam.sternall}"> <input type="text" name="sternalr" size="5" value="${thoracicexam.sternalr}"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Beevor's Sign:	</b> </td><td><input type="text" name="beevorl" size="5" value="${thoracicexam.beevorl}"> <input type="text" name="beevorr" size="5" value="${thoracicexam.beevorr}"> </td>
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
	            <center> <h2>THORACIC REEXAM</h2> </center><br/>
	            
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
 <td><textarea name="notes" rows='5' cols='40'> ${thoracicexam.notes}</textarea></td>
 <td width="110">Intercostal:</td>
 <td><select name="intercostal" id="intercostal"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="T1" <c:if test="${thoracicexam.intercostal=='T1'}"><c:out value="Selected"/></c:if>  >T1</option>
					<option value="T2" <c:if test="${thoracicexam.intercostal=='T2'}"><c:out value="Selected"/></c:if>>T2</option>
					<option value="T3" <c:if test="${thoracicexam.intercostal=='T3'}"><c:out value="Selected"/></c:if>>T3</option>
					<option value="T4" <c:if test="${thoracicexam.intercostal=='T4'}"><c:out value="Selected"/></c:if>>T4</option>
					<option value="T5" <c:if test="${thoracicexam.intercostal=='T5'}"><c:out value="Selected"/></c:if>>T5</option>
					<option value="T6" <c:if test="${thoracicexam.intercostal=='T6'}"><c:out value="Selected"/></c:if>>T6</option>
					<option value="T7" <c:if test="${thoracicexam.intercostal=='T7'}"><c:out value="Selected"/></c:if>>T7</option>
					<option value="T8" <c:if test="${thoracicexam.intercostal=='T8'}"><c:out value="Selected"/></c:if>>T8</option>
					<option value="T9" <c:if test="${thoracicexam.intercostal=='T9'}"><c:out value="Selected"/></c:if>>T9</option>
					<option value="T10" <c:if test="${thoracicexam.intercostal=='T10'}"><c:out value="Selected"/></c:if>>T10</option>
					<option value="T11" <c:if test="${thoracicexam.intercostal=='T11'}"><c:out value="Selected"/></c:if>>T11</option>
					<option value="T12" <c:if test="${thoracicexam.intercostal=='T12'}"><c:out value="Selected"/></c:if>>T12</option>
					</select> </td>
 <td width="110"> </td>
 <td> </td> 
 </tr>
 </table>
<table>         
 <tr class="row1">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td><input type="checkbox" name="sitting" value="Sitting" <c:if test="${thoracicexam.sitting=='Sitting'}"><c:out value="Checked"/></c:if>>Sitting 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing" <c:if test="${thoracicexam.standing=='Standing'}"><c:out value="Checked"/></c:if>>Standing</td>
 <td width="150"><input type="checkbox" name="driving" value="Driving" <c:if test="${thoracicexam.driving=='Driving'}"><c:out value="Checked"/></c:if>>Driving</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other" onclick="visible(this.value)" <c:if test="${thoracicexam.otherfunctional=='Other'}"><c:out value="Checked"/></c:if>>Other&nbsp; </td>
 <td width="250"><input type="text" class="input_txtbx1" id="break3" name="break_text3" style="display:none" value="${thoracicexam.break_text3 }"/></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40'>${thoracicexam.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${thoracicexam.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if>  >Excellent</option>
					<option value="Good" <c:if test="${thoracicexam.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${thoracicexam.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${thoracicexam.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" value="${thoracicexam.diagnosis1}"></td>
 <td width="250">2)<input type="text" name="diagnosis2" value="${thoracicexam.diagnosis2 }"></td>
 <td width="250">3)<input type="text" name="diagnosis3" value="${thoracicexam.diagnosis3 }"></td>
 <td width="250">4)<input type="text" name="diagnosis4" value="${thoracicexam.diagnosis4 }"></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" value="${thoracicexam.diagnosis5}"></td>
 <td width="250">6)<input type="text" name="diagnosis6" value="${thoracicexam.diagnosis6 }"></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" value="${thoracicexam.times}">Times/week for </td>
 <td><input type="text" name="week" value="${thoracicexam.week}">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression" <c:if test="${thoracicexam.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic" <c:if test="${thoracicexam.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy" <c:if test="${thoracicexam.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing" <c:if test="${thoracicexam.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities" <c:if test="${thoracicexam.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation" <c:if test="${thoracicexam.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP" <c:if test="${thoracicexam.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray" <c:if test="${thoracicexam.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI" <c:if test="${thoracicexam.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan" <c:if test="${thoracicexam.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction" <c:if test="${thoracicexam.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG" <c:if test="${thoracicexam.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral" <c:if test="${thoracicexam.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C" <c:if test="${thoracicexam.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" id="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)" <c:if test="${thoracicexam.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="display:none" value="${thoracicexam.break_text4}"/></td>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err"></span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" value="${thoracicexam.sign}"><span class="err"><form:errors path="Thoracicexam.sign"></form:errors></span></B></td></tr></table>
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