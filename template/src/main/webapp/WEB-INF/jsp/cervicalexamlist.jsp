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
<form action="cervicalexam" method="POST" name="cervicalexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>Viewing Cervical Exam</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
   <c:forEach items="${cervicalexamForm.cervicalexam}" var="cervicalexam" varStatus="status">        
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td>${cervicalexam.pname}</td>
<td width="600">
<td><h2>Date:</h2></td><td>${cervicalexam.date}</td>
</tr>
</table>
<br/>
<br/>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row2">
 <td><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Muscle Symmetry:</td><td>${cervicalexam.muscle}</td> 
 <td width="150">Swelling / Discoloration:</td> 
 <td>${cervicalexam.swelling}</td>
 </tr>
 <tr class="row1">
 <td width="200">Forward Head Posture:</td><td>${cervicalexam.headposture}</td> 
 <td>Rounded Shoulders: </td> <td>${cervicalexam.roundshoulder}</td>
  <td>A & O: </td>
 <td> ${cervicalexam.ao}</td> 
 
 </tr>
 <tr class="row2">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200">${cervicalexam.allsoft}</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
  <tr class="row1">
 <td>Sub-Occipital:</td><td width="100">${cervicalexam.suboccipital}</td> 
 
 <td>Scalenes:</td><td width="200">${cervicalexam.scalenes}</td> 
 
 <td>Levator Scapulae:</td><td width="100">${cervicalexam.levator}</td>
 </tr>
 <tr class="row1">
 <td>Teres Minor:</td><td>${cervicalexam.teresminor}</td> 
 <td>Teres Major:</td><td width="200">${cervicalexam.teresmajor}</td> 
 <td>Rhomboids:</td><td>${cervicalexam.rhomboids}</td>
 </tr>
 <tr class="row1">
 <td>Trapezius:</td><td>${cervicalexam.trapezius}</td> 
 <td>Pectoralis Minor:	</td><td>${cervicalexam.pectoralis}</td> 
 <td>Paraspinals:</td><td>${cervicalexam.paraspinals}</td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td>Other/Notes: ${cervicalexam.othernotes}</td> 
 <td></td><td></td>
 <td></td><td></td>
 </tr>
 <tr class="row2">
 <td width="350"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><B style="font-size:14px"></B></td> 
 <td width="350"><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td></td> 
 <td width="300"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td><B style="font-size:14px"></B></td>
 </tr>
  <tr class="row1">
 <td> ${cervicalexam.functionalrangeofmotion}</td><td> </td> 
 <td> ${cervicalexam.subluxation}</td><td> </td> 
 <td> ${cervicalexam.orthopedic}</td><td> </td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="150"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (50)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.flexion} </td> 
 <td width="100">C0-1:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.c01} &nbsp;&nbsp;C1-2:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.c12}</td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C2-3: &nbsp;&nbsp;${cervicalexam.c23}</td> 
 <td><b>Hautant's:	</b> </td><td>${cervicalexam.hautantl} ${cervicalexam.hautantr}</td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (60)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.extension} </td> 
 <td width="100">C3-4:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.c34} &nbsp;&nbsp;C4-5:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.c45}</td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C5-6: &nbsp;&nbsp;${cervicalexam.c56} </td> 
 <td><b>Foraminal Comp:	</b> </td><td>${cervicalexam.foraminall} ${cervicalexam.foraminalr} </td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (45)&nbsp;&nbsp;&nbsp;L ${cervicalexam.lflexion}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R ${cervicalexam.rflexion}</td> 
 <td width="100">C6-7:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.c67} &nbsp;&nbsp;C7-T1:  &nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.c7t1}</td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T1-2: &nbsp;&nbsp;${cervicalexam.t12} </td> 
 <td><b>Soto Hall:	</b> </td><td> ${cervicalexam.sotohalll} ${cervicalexam.sotohallr} </td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (80)&nbsp;&nbsp;&nbsp;L ${cervicalexam.lrotation}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R ${cervicalexam.rrotation}</td> 
 <td width="100">T2-3:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.t23} &nbsp;&nbsp;T3-4:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.t34}</td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T4-5: &nbsp;&nbsp;${cervicalexam.t45}</td> 
 <td><b>Adson's:</b> </td><td>${cervicalexam.adsonsl} ${cervicalexam.adsonsr} </td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
<td width="100">T5-6:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.t56} &nbsp;&nbsp;T6-7:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.t67}</td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T7-8: &nbsp;&nbsp;${cervicalexam.t78} </td> 
 <td><b>ULTT:	</b> </td><td>${cervicalexam.ulttl} ${cervicalexam.ulttr} </td>
 </tr>
 </c:forEach>
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
	            <center> <h2> Viewing Cervical Exam</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20"> 
          <c:forEach items="${cervicalexamForm.cervicalexam}" var="cervicalexam" varStatus="status">        
 <tr class="row2">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td>${cervicalexam.neurologicaltest}</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
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
 <td> ${cervicalexam.c5l}&nbsp; &nbsp; &nbsp;${cervicalexam.c5r}&nbsp;(Lat deltoid)</td>
 <td>C5 </td>
 <td> ${cervicalexam.c51l}&nbsp;/5&nbsp; &nbsp; &nbsp;${cervicalexam.c51r}&nbsp;/5&nbsp;(Shd ABD)</td>
 <td> C5</td>
 <td> ${cervicalexam.c53l}&nbsp;/5&nbsp; &nbsp; &nbsp;${cervicalexam.c53r}&nbsp;/5&nbsp;(Biceps)</td>
 
 </tr>
 <tr class="row1">
 <td>C6</td>
 <td>${cervicalexam.c6l}&nbsp; &nbsp; &nbsp;${cervicalexam.c6r}&nbsp;(Lat arm/hand)	</td>
 <td>C6 </td>
 <td> ${cervicalexam.c61l}&nbsp;/5&nbsp; &nbsp; &nbsp;${cervicalexam.c61r}&nbsp;/5&nbsp;(Elb flex/wrist ext)	</td>
  <td>C6 </td>
 <td> ${cervicalexam.c63l}&nbsp;/5&nbsp; &nbsp; &nbsp;${cervicalexam.c63r}&nbsp;/5&nbsp;(Brachiorad.) </td>

 </tr>
 <tr class="row1">
 <td>C7</td>
 <td>${cervicalexam.c7l}&nbsp; &nbsp; &nbsp;${cervicalexam.c7r}&nbsp;(3rd digit)</td>
 <td>C7 </td>
 <td>${cervicalexam.c71l} &nbsp;/5&nbsp; &nbsp; &nbsp;${cervicalexam.c71r}&nbsp;/5&nbsp;(Elb ext/wrist flex)</td>
 <td> C7</td>
 <td> ${cervicalexam.c73l}&nbsp;/5&nbsp; &nbsp; &nbsp;${cervicalexam.c73r}&nbsp;/5&nbsp;(Triceps)</td>
 </tr>
 <tr class="row1">
 <td>C8</td>
 <td>${cervicalexam.c8l}&nbsp; &nbsp; &nbsp;${cervicalexam.c8r}&nbsp;(Med forearm/hand)	</td>
 <td>C8 </td>
 <td> ${cervicalexam.c81l}&nbsp;/5&nbsp; &nbsp; &nbsp;${cervicalexam.c81r}&nbsp;/5&nbsp;(Digit flexion)</td>
 <td></td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>T1</td>
 <td>${cervicalexam.t1l}&nbsp; &nbsp; &nbsp;${cervicalexam.t1r}&nbsp;(Med elbow/arm)	</td>
 <td>T1 </td>
 <td>${cervicalexam.t11l}&nbsp;/5&nbsp; &nbsp; &nbsp;${cervicalexam.t11r}&nbsp;/5&nbsp; (Digit abd/add)</td>
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
<table cellpadding="0" cellspacing="0" border="0">         
 <tr class="row2">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td>${cervicalexam.sitting} &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;${cervicalexam.standing}</td>
 <td width="150">${cervicalexam.driving}</td><td width="150">${cervicalexam.computeruse}</td>
 <td width="150"> ${cervicalexam.otherfunctional} </td><td>${cervicalexam.break_text3}</td>
 <td width="150"></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td>${cervicalexam.assessment}</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td> ${cervicalexam.patientstatus}</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row2">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1) ${cervicalexam.diagnosis1}</td>
 <td width="250">2) ${cervicalexam.diagnosis2}</td>
 <td width="250">3) ${cervicalexam.diagnosis3}</td>
 <td width="250">4) ${cervicalexam.diagnosis4}</td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5) ${cervicalexam.diagnosis5}</td>
 <td width="250">6) ${cervicalexam.diagnosis6}</td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td> ${cervicalexam.times} Times/week for </td>
 <td>${cervicalexam.week}weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table cellpadding="0" cellspacing="0" border="0">
 <tr class="row1">
 <td width="120">
 <td width="250"> ${cervicalexam.spinal}</td>
 <td width="250"> ${cervicalexam.chiropractic}</td>
 <td width="250"> ${cervicalexam.physical}</td>
 <td width="250"> ${cervicalexam.orthotics}</td>
 <td width="250"> ${cervicalexam.modalities}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"> ${cervicalexam.supplementation}</td>
 <td width="250"> ${cervicalexam.hep}</td>
 <td width="250"> ${cervicalexam.radiographic}</td>
 <td width="250"> ${cervicalexam.mri}</td>
 <td width="250"> ${cervicalexam.ctscan}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250">${cervicalexam.nerve}</td>
 <td width="250">${cervicalexam.emg}</td>
 <td width="250"> ${cervicalexam.outside}</td>
 <td width="250"> ${cervicalexam.dc}</td>
 <td width="250"> ${cervicalexam.otheraddress} ${cervicalexam.break_text4}</td>
 </tr>
 </tr>
 <br/>
 <table cellpadding="0" cellspacing="0" border="0"><tr><td><B style="font-size:14px">PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;${cervicalexam.sign}</B></td></tr></table>
 </c:forEach>
<table align="right">
<tr>
<td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewcervicalexam'"></td>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>