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
<form action="elbowexam" method="POST" name="kneeexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>ELBOW EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <c:forEach items="${elbowexamForm.elbowexam}" var="elbowexam" varStatus="status">        
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td>${elbowexam.pname}</td>
<td width="600">
<td><h2>Date:</h2></td><td>${elbowexam.date}</td>
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
 <td width="200">Muscle Symmetry:</td><td>${elbowexam.muscle}</td> 
 <td width="150">Swelling / Discoloration:</td> 
 <td>${elbowexam.swelling}</td>
 </tr>
 <tr class="row2">
 <td>Dominant Hand: </td> <td>${elbowexam.dominanthand}</td> 
  <td></td>
 <td></td>
 <td><input type="text" style="visibility:hidden"> </td> 
 <td> <input type="text" style="visibility:hidden"></td>
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200">${elbowexam.allsoft}</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Biceps Brachii:</td><td width="100">${elbowexam.biceps}</td> 
 <td>Triceps Brachii:</td><td>${elbowexam.triceps}</td>
 <td>Common Flexors:</td><td width="200">${elbowexam.common}</td>
 </tr>
 <tr class="row2">
 <td>Pronator Teres:</td><td width="200">${elbowexam.pronator}</td>
  <td>Anconeus:</td><td width="200">${elbowexam.anconeus}</td>
  <td>Common Extensors:</td><td width="200">${elbowexam.commonextensors}</td>
 </tr>
 <tr class="row2">
 <td>Other/Notes: ${elbowexam.othernotes}</td> 
 <td></td><td></td>
 <td></td><td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td><B style="font-size:14px"></B></td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><B style="font-size:14px"></B></td>
 </tr>
  <tr class="row2">
 <td> ${elbowexam.functionalrangeofmotion}</td><td> </td>  
 <td></td>
 <td> ${elbowexam.orthopedic}</td><td> </td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row2">
 <td><b>Flexion:</b> </td><td> (150)</td><td>&nbsp;L ${elbowexam.flexionl} <br/><br/>R  ${elbowexam.flexionr}</td>  
 <td><b>Golfer's Elbow (MCL):</b> </td><td>${elbowexam.mcll} ${elbowexam.mclr} </td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (o) </td><td> &nbsp;L ${elbowexam.extensionl} <br/><br/>R ${elbowexam.extensionr}</td>  
 <td><b>Tennis Elbow (LCL):	</b> </td><td> ${elbowexam.lcll}${elbowexam.lclr}</td>
 </tr>
  <tr class="row2">
 <td><b>Pronation:	</b> </td><td> (90)</td><td>L &nbsp;${elbowexam.pronationl}<br/><br/>R ${elbowexam.pronationr}</td>  
 <td><b>Varus Stress (LCL):</b> </td><td>${elbowexam.varusl}${elbowexam.varusr} </td>
 </tr>
  <tr class="row1">
  <td><b> Supination:</b> </td><td> (90)</td><td>L &nbsp;${elbowexam.suppinationl}<br/><br/>R ${elbowexam.suppinationr}</td>  
 <td><b>Valgus Stress (MCL):</b> </td><td>${elbowexam.mcl1l}${elbowexam.mcl1r} </td>
 </tr>
  <tr class="row2">
 <td> 	</td><td> </td>  
 <td></td>
 <td><b>Tinnel's:	</b> </td><td>${elbowexam.tinnelsl}${elbowexam.tinnelsr} </td>
 </tr>
  <tr class="row1">
 <td></td><td></td>  
 <td></td>
 <td><b>ULTT:	</b> </td><td>${elbowexam.ulttl}${elbowexam.ulttr} </td>
 </tr>
 </table>
 </c:forEach>
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
	            <center> <h2> VIEWING CERVICAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20"> 
          <c:forEach items="${elbowexamForm.elbowexam}" var="elbowexam" varStatus="status">        
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td>${elbowexam.neurologicaltest}</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row2">
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
 <tr class="row2">
 <td>C5</td>
 <td> ${elbowexam.c5l}&nbsp; &nbsp; &nbsp;${elbowexam.c5r}&nbsp;(Lat deltoid)</td>
 <td>C5 </td>
 <td> ${elbowexam.c51l}&nbsp;/5&nbsp; &nbsp; &nbsp;${elbowexam.c51r}&nbsp;/5&nbsp;(Shd ABD)</td>
 <td> C5</td>
 <td> ${elbowexam.c53l}&nbsp;/5&nbsp; &nbsp; &nbsp;${elbowexam.c53r}&nbsp;/5&nbsp;(Biceps)</td>
 
 </tr>
 <tr class="row1">
 <td>C6</td>
 <td>${elbowexam.c6l}&nbsp; &nbsp; &nbsp;${elbowexam.c6r}&nbsp;(Lat arm/hand)	</td>
 <td>C6 </td>
 <td> ${elbowexam.c61l}&nbsp;/5&nbsp; &nbsp; &nbsp;${elbowexam.c61r}&nbsp;/5&nbsp;(Elb flex/wrist ext)	</td>
  <td>C6 </td>
 <td> ${elbowexam.c63l}&nbsp;/5&nbsp; &nbsp; &nbsp;${elbowexam.c63r}&nbsp;/5&nbsp;(Brachiorad.) </td>

 </tr>
 <tr class="row2">
 <td>C7</td>
 <td>${elbowexam.c7l}&nbsp; &nbsp; &nbsp;${elbowexam.c7r}&nbsp;(3rd digit)</td>
 <td>C7 </td>
 <td>${elbowexam.c71l} &nbsp;/5&nbsp; &nbsp; &nbsp;${elbowexam.c71r}&nbsp;/5&nbsp;(Elb ext/wrist flex)</td>
 <td> C7</td>
 <td> ${elbowexam.c73l}&nbsp;/5&nbsp; &nbsp; &nbsp;${elbowexam.c73r}&nbsp;/5&nbsp;(Triceps)</td>
 </tr>
 <tr class="row1">
 <td>C8</td>
 <td>${elbowexam.c8l}&nbsp; &nbsp; &nbsp;${elbowexam.c8r}&nbsp;(Med forearm/hand)	</td>
 <td>C8 </td>
 <td> ${elbowexam.c81l}&nbsp;/5&nbsp; &nbsp; &nbsp;${elbowexam.c81r}&nbsp;/5&nbsp;(Digit flexion)</td>
 <td></td>
 <td> </td>
 </tr>
 <tr class="row2">
 <td>T1</td>
 <td>${elbowexam.t1l}&nbsp; &nbsp; &nbsp;${elbowexam.t1r}&nbsp;(Med elbow/arm)	</td>
 <td>T1 </td>
 <td>${elbowexam.t11l}&nbsp;/5&nbsp; &nbsp; &nbsp;${elbowexam.t11r}&nbsp;/5&nbsp; (Digit abd/add)</td>
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
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td>${elbowexam.overheadactivities} &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;${elbowexam.lifting}</td>
 <td width="150"> ${elbowexam.otherfunctional} </td><td>${elbowexam.break_text3}</td>
 <td width="150"></td><td width="150"></td>
 </tr>         
 <tr class="row2">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td>${elbowexam.assessment}</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td> ${elbowexam.patientstatus}</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row2">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1) ${elbowexam.diagnosis1}</td>
 <td width="250">2) ${elbowexam.diagnosis2}</td>
 <td width="250">3) ${elbowexam.diagnosis3}</td>
 <td width="250">4) ${elbowexam.diagnosis4}</td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5) ${elbowexam.diagnosis5}</td>
 <td width="250">6) ${elbowexam.diagnosis6}</td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row2">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td> ${elbowexam.times} Times/week for </td>
 <td>${elbowexam.week}weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"> ${elbowexam.spinal}</td>
 <td width="250"> ${elbowexam.chiropractic}</td>
 <td width="250"> ${elbowexam.physical}</td>
 <td width="250"> ${elbowexam.orthotics}</td>
 <td width="250"> ${elbowexam.modalities}</td>
 </tr>
 <tr class="row2">
 <td width="120">
 <td width="250"> ${elbowexam.supplementation}</td>
 <td width="250"> ${elbowexam.hep}</td>
 <td width="250"> ${elbowexam.radiographic}</td>
 <td width="250"> ${elbowexam.mri}</td>
 <td width="250"> ${elbowexam.ctscan}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250">${elbowexam.nerve}</td>
 <td width="250">${elbowexam.emg}</td>
 <td width="250"> ${elbowexam.outside}</td>
 <td width="250"> ${elbowexam.dc}</td>
 <td width="250"> ${elbowexam.otheraddress} ${elbowexam.break_text4}</td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px">PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;${elbowexam.sign}</B></td></tr></table>
 </c:forEach>
<table align="right">
<tr>
<td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewelbowexam'"></td>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>