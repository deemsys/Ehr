<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<c:if test="${elbow=='1'}">
<script>
window.close();
</script>
</c:if>   
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
   <script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script>
  <script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
	        document.getElementById('print1').style.visibility = 'hidden';
	        document.getElementById('saveid').style.visibility = 'hidden';
	        document.getElementById('cancelid').style.visibility = 'hidden';
		  
     var html="<html>";
     html+= document.getElementById(id).innerHTML;

     html+="</html>";

     var printWin = window.open('','','left=0,top=0,width=1400,height=1000,toolbar=0,scrollbars=0,status  =0');
     printWin.document.write(html);
     printWin.document.close();
     printWin.focus();
     printWin.print();
     printWin.close();
     document.getElementById('print').style.visibility = 'visible';
     document.getElementById('print1').style.visibility = 'visible';
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
	  
  }
  </script>
</head>
 <body>
 <br><br>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
<form action="elbowexam" method="POST" name="elbow">     
<input type="hidden" name="username" value="${username}">
      <c:choose>
            <c:when test="${empty elbow}">   
   <div id="tabs-1"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            
	    <div class="contentbox">
          <div class="headings altheading">
	         <img src="resources/images/print.png" id="print" width="46px" height="46px" style="float:right ;" onclick="printPage('block1');">
	            <center> <h2>ELBOW INITIAL EXAM</h2> </center><br>
	            
	            </div><table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td style="width: 293px; "><h4><span class="err">*</span>Patient Name:</h4></td><td><input type="text"  name="pname" /><span class="err"><form:errors path="Elbowexam.pname"></form:errors></span></td>
<td width="600" style="width: 226px; ">
<td style="width: 164px; "><h4><span class="err">*</span>Date:</h4></td><td><input type="text"  id="datepicker" name="date" /><span class="err"><form:errors path="Elbowexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td width="480"><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="200">Muscle Symmetry:</td><td><input type="text" name="muscle"></td> 
 <td width="180">Swelling / Discoloration:</td> 
 <td><input type="text" name="swelling"></td>
 </tr>
 <tr class="row1">
 <td>Dominant Hand: </td> <td><input type="radio" name="dominanthand" value="Left">Left <input type="radio" name="dominanthand" value="Right">Right</td> 
  <td></td>
 <td></td>
 <td><input type="text" style="visibility:hidden"> </td> 
 <td> <input type="text" style="visibility:hidden"></td>
 </tr>
 <tr class="row1">
 <td width="300"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable"> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Biceps Brachii:</td><td width="100"><input type="radio" name="biceps" value="Left">Left <input type="radio" name="biceps" value="Right">Right</td> 
 <td>Triceps Brachii:</td><td><input type="radio" name="triceps" value="Left">Left  <input type="radio" name="triceps" value="Right">Right</td>
 <td>Common Flexors:</td><td width="200"><input type="radio" name="common" value="Left">Left  <input type="radio" name="common" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Pronator Teres:</td><td width="200"><input type="radio" name="pronator" value="Left">Left  <input type="radio" name="pronator" value="Right">Right</td>
  <td>Anconeus:</td><td width="200"><input type="radio" name="anconeus" value="Left">Left  <input type="radio" name="anconeus" value="Right">Right</td>
  <td>Common Extensors:</td><td width="200"><input type="radio" name="commonextensors" value="Left">Left  <input type="radio" name="commonextensors" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes"></td> 
 <td></td><td></td>
 <td></td><td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><input type="radio" name="functionalrangeofmotion" value="Unremarkable">Unremarkable</td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><input type="radio" name="orthopedic" value="Unremarkable">Unremarkable</td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (150)</td><td>&nbsp;L <input type="text" name="flexionl" size="7" onkeypress="return isNumberKey(event);"><br/><br/>R <input type="text" name="flexionr" size="7" onkeypress="return isNumberKey(event);"></td>  
 <td><b>Golfer's Elbow (MCL):</b> </td><td><input type="text" name="mcll" size="5"> <input type="text" name="mclr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (o) </td><td> &nbsp;L<input type="text" name="extensionl" size="7" onkeypress="return isNumberKey(event);"> <br/><br/>R <input type="text" name="extensionr" size="7" onkeypress="return isNumberKey(event);"></td>  
 <td><b>Tennis Elbow (LCL):	</b> </td><td><input type="text" name="lcll" size="5"> <input type="text" name="lclr" size="5"></td>
 </tr>
  <tr class="row1">
 <td><b>Pronation:	</b> </td><td> (90)</td><td>L &nbsp;<input type="text" name="pronationl" size="7" onkeypress="return isNumberKey(event);"><br/><br/>R <input type="text" name="pronationr" size="7" onkeypress="return isNumberKey(event);"></td>  
 <td><b>Varus Stress (LCL):</b> </td><td><input type="text" name="varusl" size="5"> <input type="text" name="varusr" size="5"></td>
 </tr>
  <tr class="row1">
  <td><b> Supination:</b> </td><td> (90)</td><td>L &nbsp;<input type="text" name="supinationl" size="7" onkeypress="return isNumberKey(event);"><br/><br/>R <input type="text" name="supinationr" size="7" onkeypress="return isNumberKey(event);"></td>  
 <td><b>Valgus Stress (MCL):</b> </td><td><input type="text" name="mcl1l" size="5"> <input type="text" name="mcl1r" size="5"></td>
 </tr>
  <tr class="row1">
 <td> 	</td><td> </td>  
 <td></td>
 <td><b>Tinnel's:	</b> </td><td><input type="text" name="tinnelsl" size="5"> <input type="text" name="tinnelsr" size="5"></td>
 </tr>
  <tr class="row1">
 <td></td><td></td>  
 <td></td>
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
 <div id="block2">
	            <div class="headings altheading">
	           <img  src="resources/images/print.png" id="print1" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block2');" >
	            <center> <h2>ELBOW INITIAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td style="width: 372px; "><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
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
 <td><input type="text" name="c5l" size="5" onkeypress="return isNumberKey(event);">&nbsp; &nbsp; &nbsp;<input type="text" name="c5r" size="5" onkeypress="return isNumberKey(event);">&nbsp;(Lat deltoid)</td>
 <td>C5 </td>
 <td> <input type="text" name="c51l" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c51r" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp;(Shd ABD)</td>
 <td> C5</td>
 <td> <input type="text" name="c53l" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c53r" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp;(Biceps)</td>
 
 </tr>
 <tr class="row1">
 <td>C6</td>
 <td><input type="text" name="c6l" size="5" onkeypress="return isNumberKey(event);">&nbsp; &nbsp; &nbsp;<input type="text" name="c6r" size="5" onkeypress="return isNumberKey(event);">&nbsp;(Lat arm/hand)	</td>
 <td>C6 </td>
 <td> <input type="text" name="c61l" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c61r" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp;(Elb flex/wrist ext)	</td>
  <td>C6 </td>
 <td><input type="text" name="c63l" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c63r" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp;(Brachiorad.) </td>

 </tr>
 <tr class="row1">
 <td>C7</td>
 <td><input type="text" name="c7l" size="5" onkeypress="return isNumberKey(event);">&nbsp; &nbsp; &nbsp;<input type="text" name="c7r" size="5" onkeypress="return isNumberKey(event);">&nbsp;(3rd digit)</td>
 <td>C7 </td>
 <td> <input type="text" name="c71l" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c71r" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp;(Elb ext/wrist flex)</td>
 <td> C7</td>
 <td> <input type="text" name="c73l" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c73r" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp;(Triceps)</td>
 </tr>
 <tr class="row1">
 <td>C8</td>
 <td><input type="text" name="c8l" size="5" onkeypress="return isNumberKey(event);">&nbsp; &nbsp; &nbsp;<input type="text" name="c8r" size="5" onkeypress="return isNumberKey(event);">&nbsp;(Med forearm/hand)	</td>
 <td>C8 </td>
 <td> <input type="text" name="c81l" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c81r" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp;(Digit flexion)</td>
 <td></td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>T1</td>
 <td><input type="text" name="t1l" size="5" onkeypress="return isNumberKey(event);">&nbsp; &nbsp; &nbsp;<input type="text" name="t1r" size="5" onkeypress="return isNumberKey(event);">&nbsp;(Med elbow/arm)	</td>
 <td>T1 </td>
 <td><input type="text" name="t11l" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="t11r" size="5" onkeypress="return isNumberKey(event);">&nbsp;/5&nbsp; (Digit abd/add)</td>
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
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td>
 <td width="150"><input type="checkbox" name="overheadactivities" value="Overhead Activities">Overhead Activities &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="lifting" value="Lifting">Lifting</td>
 <td width="150"><input type="checkbox" name="otherfunctional" value="Other" onclick="this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp;</td>
 <td> <input type="text" id="break3" name="break_text3" style="visibility:hidden" /></td>
 <td width="150"></td>
  <td width="150"></td>
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
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B> </td><td><input type="text" name="sign"><span class="err"><form:errors path="Elbowexam.sign"></form:errors></span></td></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid"></td>
<td><input type="reset" class="submit_btn" value="Cancel" id="cancelid" onclick="myclose()"></td>
<script>
 function myclose()
 {
	 window.close();
 }
 </script>
</tr>
</table>
 </table>
 </div>
 </div>
 </td>
 </tr>
 </table>
 </form>
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
<td width="150"><h2><span class="err">*</span>Patient Name:</h2></td><td width="380"><input type="text"  name="pname" value="${elbow.pname}"/><span class="err"><form:errors path="Elbowexam.pname"></form:errors></span></td>
<td width="300">
<td><h2><span class="err">*</span>Date:</h2></td><td width="380"><input type="text"  id="datepicker" name="date" value="${elbow.date}"/><span class="err"><form:errors path="Elbowexam.date"></form:errors></span></td>
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
 </tr>
 <tr class="row1">
 <td width="200">Muscle Symmetry:</td><td><input type="text" name="muscle" value="${elbow.muscle}"></td> 
 <td width="150">Swelling / Discoloration:</td> 
 <td><input type="text" name="swelling" value="${elbow.swelling}"></td>
 </tr>
 <tr class="row1">
 <td>Dominant Hand: </td> <td><input type="radio" name="dominanthand" value="Left" <c:if test="${elbow.dominanthand=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="dominanthand" value="Right" <c:if test="${elbow.dominanthand=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
  <td></td>
 <td></td>
 <td><input type="text" style="visibility:hidden"> </td> 
 <td> <input type="text" style="visibility:hidden"></td>
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${elbow.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Biceps Brachii:</td><td width="100"><input type="radio" name="biceps" value="Left" <c:if test="${elbow.biceps=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="biceps" value="Right" <c:if test="${elbow.biceps=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Triceps Brachii:</td><td><input type="radio" name="triceps" value="Left" <c:if test="${elbow.triceps=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="triceps" value="Right" <c:if test="${elbow.triceps=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 <td>Common Flexors:</td><td width="200"><input type="radio" name="common" value="Left" <c:if test="${elbow.common=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="common" value="Right" <c:if test="${elbow.common=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Pronator Teres:</td><td width="200"><input type="radio" name="pronator" value="Left" <c:if test="${elbow.pronator=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="pronator" value="Right" <c:if test="${elbow.pronator=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
  <td>Anconeus:</td><td width="200"><input type="radio" name="anconeus" value="Left" <c:if test="${elbow.anconeus=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="anconeus" value="Right" <c:if test="${elbow.anconeus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
  <td>Common Extensors:</td><td width="200"><input type="radio" name="commonextensors" value="Left" <c:if test="${elbow.commonextensors=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="commonextensors" value="Right" <c:if test="${elbow.commonextensors=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes" values="${elbow.othernotes }"></td> 
 <td></td><td></td>
 <td></td><td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${elbow.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable </td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${elbow.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (150)</td><td>&nbsp;L <input type="text" name="flexionl" size="7" value="${elbow.flexionl }"><br/><br/>R <input type="text" name="flexionr" size="7" value="${elbow.flexionr }"></td>  
 <td><b>Golfer's Elbow (MCL):</b> </td><td><input type="text" name="mcll" size="5" value="${elbow.mcll }"> <input type="text" name="mclr" size="5" value="${elbow.mclr }"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (o) </td><td> &nbsp;L<input type="text" name="extensionl" size="7" value="${elbow.extensionl }"> <br/><br/>R <input type="text" name="extensionr" size="7" value="${elbow.extensionr }"></td>  
 <td><b>Tennis Elbow (LCL):	</b> </td><td><input type="text" name="lcll" size="5" value="${elbow.lcll }"> <input type="text" name="lclr" size="5" value="${elbow.lclr }"></td>
 </tr>
  <tr class="row1">
 <td><b>Pronation:	</b> </td><td> (90)</td><td>L &nbsp;<input type="text" name="pronationl" size="7" value="${elbow.pronationl }"><br/><br/>R <input type="text" name="pronationr" size="7" value="${elbow.pronationr}"></td>  
 <td><b>Varus Stress (LCL):</b> </td><td><input type="text" name="varusl" size="5" value="${elbow.varusl }"> <input type="text" name="varusr" size="5" value="${elbow.varusr }"></td>
 </tr>
  <tr class="row1">
  <td><b> Supination:</b> </td><td> (90)</td><td>L &nbsp;<input type="text" name="suppinationl" size="7" value="${elbow.suppinationl }"><br/><br/>R <input type="text" name="supinationr" size="7" value="${elbow.suppinationr }"></td>  
 <td><b>Valgus Stress (MCL):</b> </td><td><input type="text" name="mcl1l" size="5" value="${elbow.mcl1l }"> <input type="text" name="mcl1r" size="5" value="${elbow.mcl1r }"></td>
 </tr>
  <tr class="row1">
 <td> 	</td><td> </td>  
 <td></td>
 <td><b>Tinnel's:	</b> </td><td><input type="text" name="tinnelsl" size="5" value="${elbow.tinnelsl }"> <input type="text" name="tinnelsr" size="5" value="${elbow.tinnelsr }"></td>
 </tr>
  <tr class="row1">
 <td></td><td></td>  
 <td></td>
 <td><b>ULTT:	</b> </td><td><input type="text" name="ulttl" size="5" value="${elbow.ulttl }"> <input type="text" name="ulttr" size="5" value="${elbow.ulttr }"></td>
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
	            <center> <h2>ELBOW REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable" <c:if test="${elbow.neurologicaltest=='Neurological Testing Unremarkable'}"><c:out value="Checked"/></c:if>>Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
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
 <td><input type="text" name="c5l" size="5" value="${elbow.c5l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c5r" size="5"  value="${elbow.c5r}">&nbsp;(Lat deltoid)</td>
 <td>C5 </td>
 <td> <input type="text" name="c51l" size="5"  value="${elbow.c51l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c51r" size="5"  value="${elbow.c51r}">&nbsp;/5&nbsp;(Shd ABD)</td>
 <td> C5</td>
 <td> <input type="text" name="c53l" size="5" value="${elbow.c53l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c53r" size="5" value="${elbow.c53r}">&nbsp;/5&nbsp;(Biceps)</td>
 
 </tr>
 <tr class="row1">
 <td>C6</td>
 <td><input type="text" name="c6l" size="5" value="${elbow.c6l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c6r" size="5" value="${elbow.c6r}">&nbsp;(Lat arm/hand)	</td>
 <td>C6 </td>
 <td> <input type="text" name="c61l" size="5" value="${elbow.c61l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c61r" size="5" value="${elbow.c61r}">&nbsp;/5&nbsp;(Elb flex/wrist ext)	</td>
  <td>C6 </td>
 <td><input type="text" name="c63l" size="5" value="${elbow.c63l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c63r" size="5" value="${elbow.c63r}">&nbsp;/5&nbsp;(Brachiorad.) </td>

 </tr>
 <tr class="row1">
 <td>C7</td>
 <td><input type="text" name="c7l" size="5" value="${elbow.c7l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c7r" size="5" value="${elbow.c7r}">&nbsp;(3rd digit)</td>
 <td>C7 </td>
 <td> <input type="text" name="c71l" size="5" value="${elbow.c71l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c71r" size="5" value="${elbow.c71r}">&nbsp;/5&nbsp;(Elb ext/wrist flex)</td>
 <td> C7</td>
 <td> <input type="text" name="c73l" size="5" value="${elbow.c73l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c73r" size="5" value="${elbow.c73r}">&nbsp;/5&nbsp;(Triceps)</td>
 </tr>
 <tr class="row1">
 <td>C8</td>
 <td><input type="text" name="c8l" size="5" value="${elbow.c8l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c8r" size="5" value="${elbow.c8r}">&nbsp;(Med forearm/hand)	</td>
 <td>C8 </td>
 <td> <input type="text" name="c81l" size="5" value="${elbow.c81l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c81r" size="5" value="${elbow.c53l}">&nbsp;/5&nbsp;(Digit flexion)</td>
 <td></td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>T1</td>
 <td><input type="text" name="t1l" size="5" value="${elbow.t1l}">&nbsp; &nbsp; &nbsp;<input type="text" name="t1r" size="5" value="${elbow.t1r}">&nbsp;(Med elbow/arm)	</td>
 <td>T1 </td>
 <td><input type="text" name="t11l" size="5" value="${elbow.t11l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="t11r" size="5" value="${elbow.t11r}">&nbsp;/5&nbsp; (Digit abd/add)</td>
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
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td>
 <td width="150"><input type="checkbox" name="overheadactivities" value="Overhead Activities" <c:if test="${elbow.overheadactivities=='Overhead Activities'}"><c:out value="Checked"/></c:if>>Overhead Activities &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="lifting" value="Lifting" <c:if test="${elbow.lifting=='Lifting'}"><c:out value="Checked"/></c:if>>Lifting</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other" onclick="visible(this.value)" <c:if test="${elbow.otherfunctional=='Other'}"><c:out value="Checked"/></c:if> >Other&nbsp;</td>
 <td> <input type="text" id="break3" name="break_text3" style="display:none" value="${elbow.break_text3}" /></td>
 <td width="150"></td>
 <td width="150"></td>
 </tr>          
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40'>${elbow.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${elbow.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if>  >Excellent</option>
					<option value="Good" <c:if test="${elbow.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${elbow.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${elbow.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" value="${elbow.diagnosis1}"></td>
 <td width="250">2)<input type="text" name="diagnosis2" value="${elbow.diagnosis2 }"></td>
 <td width="250">3)<input type="text" name="diagnosis3" value="${elbow.diagnosis3 }"></td>
 <td width="250">4)<input type="text" name="diagnosis4" value="${elbow.diagnosis4 }"></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" value="${elbow.diagnosis5}"></td>
 <td width="250">6)<input type="text" name="diagnosis6" value="${elbow.diagnosis6 }"></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" value="${elbow.times}">Times/week for </td>
 <td><input type="text" name="week" value="${elbow.week}">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression" <c:if test="${elbow.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic" <c:if test="${elbow.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy" <c:if test="${elbow.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing" <c:if test="${elbow.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities" <c:if test="${elbow.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation" <c:if test="${elbow.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP" <c:if test="${elbow.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray" <c:if test="${elbow.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI" <c:if test="${elbow.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan" <c:if test="${elbow.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction" <c:if test="${elbow.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG" <c:if test="${elbow.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral" <c:if test="${elbow.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C" <c:if test="${elbow.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" name="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)"<c:if test="${elbow.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="display:none" value="${elbow.break_text4}"/></td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" value="${elbow.sign}"><span class="err"><form:errors path="Elbowexam.sign"></form:errors></span></B></td></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid"></td>
<td><input type="reset" class="submit_btn" value="Cancel" id="cancelid" onclick="myclose()"></td>
<script>
 function myclose()
 {
	 window.close();
 }
 </script>
</tr>
</table>
   </table>
   </div>
   </div>
   </td>
   </tr>
   </table>
   </form>
   </div>
   </div>
   </c:otherwise>
   </c:choose>
 </div>
 </body>
 </html>