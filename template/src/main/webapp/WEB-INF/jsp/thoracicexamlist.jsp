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
<form action="thoracicexam" method="POST" name="thoracicexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>THORACIC EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
         <c:forEach items="${thoracicexamForm.thoracicexam}" var="thoracicexam" varStatus="status">  
 <tr class="row1">
<td><h2>Patient Name:</h2></td><td>${thoracicexam.pname}</td>
<td width="600">
<td><h2>Date:</h2></td><td>${thoracicexam.date}</td>
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
 <td width="200">Muscle Symmetry: </td><td>${thoracicexam.muscle}</td> 
 <td>Swelling / Discoloration: </td> 
 <td>${thoracicexam.swelling}</td>
 </tr>
 <tr class="row1">
 <td width="200">Asymmetries (High Side Marked):</td>
  <td>Acromion: </td><td>${thoracicexam.acromion}</td> 
 <td>Inferior Pole of Scapula:</td>
 <td>${thoracicexam.inferior}</td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"></td>
  <td>Iliac Crest: </td><td>${thoracicexam.iliac}</td> 
 <td>Rib Humping:</td>
 <td> ${thoracicexam.ribhumping}</td> 
 <td></td>
 </tr>
 <tr class="row2">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200">${thoracicexam.allsoft}</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
  
 <tr class="row1">
 <td>Rectus Abdominis:</td><td width="100">${thoracicexam.rectus}</td> 
 
 <td>Obliques:</td><td width="200">${thoracicexam.obliques}</td> 
 
 <td>Levator Scapulae:</td><td width="100">${thoracicexam.levator}</td>
 </tr>
 <tr class="row1">
 <td>Serratus Anterior:</td><td>${thoracicexam.serratus}</td> 
 <td>Pectoralis Major:</td><td width="200">${thoracicexam.pectoralis}</td> 
 <td>Trapezius:	</td><td>${thoracicexam.trapezius}</td>
 </tr>
 <tr class="row1">
 <td>Rhomboids:</td><td>${thoracicexam.rhomboids}</td> 
 <td>Pectoralis Minor:	</td><td>${thoracicexam.pectoralisminor}</td> 
 <td>Paraspinals:</td><td>${thoracicexam.paraspinals}</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes: ${thoracicexam.othernotes}</td> 
 <td width="150">
 <td></td><td></td>
 <td width="150">
 <td></td><td></td>
 </tr>
 <tr class="row2">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="200"><B style="font-size:14px"></B></td> 
 <td width="250"><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td width="150"></td> 
 <td width="250"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td><B style="font-size:14px"></B></td>
 </tr>
  <tr class="row1">
 <td>${thoracicexam.functionalrangeofmotion} &nbsp;&nbsp;<!-- <input type="radio" name="functionalrangeofmotion" value="Except">Except --></td><td> </td> 
 <td> ${thoracicexam.subluxation}<!-- <input type="radio" name="subluxation" value="Except">Except --></td><td> </td> 
 <td> ${thoracicexam.orthopedic}&nbsp;&nbsp;<!-- <input type="radio" name="orthopedic" value="Except">Except --></td><td> </td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (20-40)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.flexion} </td> 
 <td width="100">T1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t12}</td><td width="250">T2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t23} </td> 
 <td><b>Adam's Sign:	</b> </td><td>${thoracicexam.adamsignl} ${thoracicexam.adamsignr} </td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25-45)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.extension}</td> 
 <td width="100">T3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t34}</td><td width="50">T4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t45} </td> 
 <td><b>Schepelman's:	</b> </td><td>${thoracicexam.schepelmanl} ${thoracicexam.schepelmanr}</td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (20-40)&nbsp;&nbsp;&nbsp;L ${thoracicexam.lflexion} <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R ${thoracicexam.rflexion}</td> 
 <td width="100">T5-6:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t56}</td><td width="50">	T6-7:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	${thoracicexam.t67} </td> 
 <td><b>Valsalva:</b> </td><td>${thoracicexam.valsalval}${thoracicexam.valsalvar} </td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (35-50)&nbsp;&nbsp;&nbsp;L ${thoracicexam.lrotation}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R ${thoracicexam.rrotation}</td> 
 <td width="100">T7-8:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	${thoracicexam.t78}</td><td width="50">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t89} </td> 
 <td><b>Dejerine's Triad:</b> </td><td>${thoracicexam.dejerinel}${thoracicexam.dejeriner} </td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">T9-10:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t910}</td><td width="50">T10-11:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t1011} </td> 
 <td><b>Soto Hall:	</b> </td><td>${thoracicexam.sotohalll}${thoracicexam.sotohallr}</td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">T11-12: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t1112}</td><td width="50">	T12-L1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.t12l1}  </td> 
 <td><b>Sternal Compression:</b> </td><td>${thoracicexam.sternall} ${thoracicexam.sternalr}</td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Beevor's Sign:	</b> </td><td>${thoracicexam.beevorl} ${thoracicexam.beevorr} </td>
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
	            <center> <h2>THORACIC EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row2">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td>${thoracicexam.neurologicaltest}</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td> Notes</td>
 <td>${thoracicexam.notes}</textarea></td>
 <td width="110">Intercostal:</td>
 <td>${thoracicexam.intercostal} </td>
 <td width="110"> </td>
 <td> </td> 
 </tr>
 </table>
<table>         
 <tr class="row2">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td>${thoracicexam.sitting}</td>
 <td>${thoracicexam.standing}</td>
 <td width="150">${thoracicexam.driving}</td>
 <td width="150">${thoracicexam.otherfunctional}Other&nbsp; </td>
 <td width="150">${thoracicexam.break_text3}</td>
 <td width="250"></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td>${thoracicexam.assessment}</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td>${thoracicexam.patientstatus}</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row2">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)${thoracicexam.diagnosis1}</td>
 <td width="250">2)${thoracicexam.diagnosis2}</td>
 <td width="250">3)${thoracicexam.diagnosis3}</td>
 <td width="250">4)${thoracicexam.diagnosis4}</td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)${thoracicexam.diagnosis5}</td>
<td width="250">6) ${thoracicexam.diagnosis6}</td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td>${thoracicexam.times}Times/week for </td>
 <td> ${thoracicexam.week}weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250">${thoracicexam.spinal}</td>
 <td width="250">${thoracicexam.chiropractic}</td>
 <td width="250">${thoracicexam.physical}</td>
 <td width="250">${thoracicexam.orthotics}</td>
 <td width="250">${thoracicexam.modalities}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250">${thoracicexam.supplementation}</td>
 <td width="250">${thoracicexam.hep}</td>
 <td width="250">${thoracicexam.radiographic}</td>
 <td width="250">${thoracicexam.mri}</td>
 <td width="250">${thoracicexam.ctscan}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250">${thoracicexam.nerve}</td>
 <td width="250">${thoracicexam.emg}</td>
 <td width="250">${thoracicexam.outside} </td>
 <td width="250">${thoracicexam.dc}</td>
 <td width="250">${thoracicexam.otheraddress} ${thoracicexam.break_text4}</td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px">PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;${thoracicexam.sign}</B></td></tr></table>
 </c:forEach>
<table align="right">
<tr>
<td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewthoracicexam'"></td>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>