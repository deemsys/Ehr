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
<form action="lumbopelvicexam" method="POST">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2> Viewing Lumbopelvic Exam </h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
 <c:forEach items="${lumbopelvicexamForm.lumbopelvicexam}" var="lumbopelvicexam" varStatus="status">
<td><h2>Patient Name:</h2></td><td>${lumbopelvicexam.pname}</td>
<td width="600">
<td><h2>Date:</h2></td><td>${lumbopelvicexam.date}</td>
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
 <td width="200">Gait:</td><td>${lumbopelvicexam.gait}</td> 
 <td></td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td>${lumbopelvicexam.pelvicunleveling}</td> 
  <td>A & O:${lumbopelvicexam.ao} </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
 <tr class="row2">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200">${lumbopelvicexam.allsoft}</td> 
 <td> <%-- ${lumbopelvicexam.except} --%> </td>
 <td></td>
 <td></td> 
 <td></td>
 </tr>
  <tr class="row1">
 <td width="200">Leg Length Discrepancy:Short Leg-  </td> 
 <td> ${lumbopelvicexam.leglengthcheckl} ${lumbopelvicexam.leglengthl} ${lumbopelvicexam.other1 }</td>
					<td>${lumbopelvicexam.leglengthcheckr}  ${lumbopelvicexam.leglengthr} ${lumbopelvicexam.other2}
					</td>
					<td></td>
					<td></td>
					<td></td> 
					
 </tr>
 <tr class="row1">
 <td>Piriformis:</td><td>${lumbopelvicexam.piriformis}</td> 
 
 <td>Quad Lumb:</td><td width="200">${lumbopelvicexam.quadlumb}</td> 
 
 <td>Paraspinals:</td><td width="100">${lumbopelvicexam.paraspinals}</td>
 </tr>
 <tr class="row1">
 <td>Gluteus Maximus:</td><td>${lumbopelvicexam.gluteus}</td> 
 <td>Gluteus Medius:</td><td width="200">${lumbopelvicexam.gluteusmedius}</td> 
 <td>Hamstrings:</td><td>${lumbopelvicexam.hamstrings}</td>
 </tr>
 <tr class="row1">
 <td>Iliopsoas:</td><td>${lumbopelvicexam.iliopsoas}</td> 
 <td>Rectus Abdominis:	</td><td>${lumbopelvicexam.rectus}</td> 
 <td>Obliques:</td><td>${lumbopelvicexam.obliques}</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:${lumbopelvicexam.othernotes}</td> 
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
 <td>${lumbopelvicexam.functionalrangeofmotion}</td><td> </td> 
 <td>${lumbopelvicexam.subluxation}</td><td> </td> 
 <td> ${lumbopelvicexam.orthopedic}</td><td> </td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td>(60)&nbsp;&nbsp;&nbsp; ${lumbopelvicexam.flexion}</td> 
 <td width="100">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${lumbopelvicexam.t89}</td><td width="250">T9-10:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${lumbopelvicexam.t910} </td> 
 <td><b>Trendelenburg:</b> </td><td>${lumbopelvicexam.trendelburgl} ${lumbopelvicexam.trendelburgr}</td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td>(25)&nbsp;&nbsp;&nbsp; ${lumbopelvicexam.extension}</td> 
 <td width="100">T10-11:&nbsp;${lumbopelvicexam.t1011}</td><td width="50">T11-12:&nbsp;${lumbopelvicexam.t1112} </td> 
 <td><b>Kemps:	</b> </td><td>${lumbopelvicexam.kempsl}${lumbopelvicexam.kempsr}</td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (25)&nbsp;&nbsp;&nbsp;L ${lumbopelvicexam.lflexion}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R ${lumbopelvicexam.rflexion}</td> 
 <td width="100">T12-L1:&nbsp;${lumbopelvicexam.t12l1}</td><td width="50">	L1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	${lumbopelvicexam.l12} </td> 
 <td><b>Slump:</b> </td><td>${lumbopelvicexam.slumpl}${lumbopelvicexam.slumpr} </td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (45)&nbsp;&nbsp;&nbsp;L ${lumbopelvicexam.lrotation}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R ${lumbopelvicexam.rrotation}</td> 
 <td width="100">L2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${lumbopelvicexam.l23}	</td><td width="50">L3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${lumbopelvicexam.l34} </td> 
 <td><b>Straight Leg Raise:</b> </td><td>${lumbopelvicexam.straightlegl} ${lumbopelvicexam.straightlegr} </td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">L4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${lumbopelvicexam.l45}</td><td width="50">L5-S1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${lumbopelvicexam.l5s1} </td> 
 <td><b>Well Leg Raise:	</b> </td><td>${lumbopelvicexam.welllegl} ${lumbopelvicexam.welllegr}</td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">L SI: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${lumbopelvicexam.lsi}</td><td width="50">	R SI:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${lumbopelvicexam.rsi} </td> 
 <td><b>Nachlas / Yeoman's</b> </td><td>${lumbopelvicexam.nachlasl}${lumbopelvicexam.nachlasr} </td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Minor's:	</b> </td><td>${lumbopelvicexam.positiveminor} </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Positive Adam's:	</b> </td><td>${lumbopelvicexam.positiveadam} </td>
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
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>LUMBOPELVIC EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20"> 
         <c:forEach items="${lumbopelvicexamForm.lumbopelvicexam}" var="lumbopelvicexam" varStatus="status">
                 
 <tr class="row2">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td>${lumbopelvicexam.neurologicaltest}</td><td><%-- ${lumbopelvicexam.exceptn} --%></td>
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
 <td>${lumbopelvicexam.l1l}&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l1r}&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> ${lumbopelvicexam.l15l}&nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l15r}&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td>${lumbopelvicexam.l2l}&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l2r}&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> ${lumbopelvicexam.l25l}&nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l25r}&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td>${lumbopelvicexam.l3l}&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l3r}&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> ${lumbopelvicexam.l35l}&nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l35r}&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td>${lumbopelvicexam.l4l}&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l4r}&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td>${lumbopelvicexam.l45l} &nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l45r}&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> ${lumbopelvicexam.l4l3}&nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l4r3}&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td>${lumbopelvicexam.l5l}&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l5r}&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td>${lumbopelvicexam.l55l}&nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l55r}&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td>${lumbopelvicexam.l5l3}&nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.l5r3}&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td>${lumbopelvicexam.sl}&nbsp; &nbsp; &nbsp;${lumbopelvicexam.sr}&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td>${lumbopelvicexam.s5l} &nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.s5r}&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> ${lumbopelvicexam.sil}&nbsp;/5&nbsp; &nbsp; &nbsp;${lumbopelvicexam.sir}&nbsp;/5&nbsp;(Achilles)</td>
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
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td>${lumbopelvicexam.sitting}	</td><td width="150">${lumbopelvicexam.lifting}</td>
 <td width="150">${lumbopelvicexam.walking}</td><td width="150">${lumbopelvicexam.stairs}</td>
 <td width="150">${lumbopelvicexam.otherfunctional} ${lumbopelvicexam.break_text3}</td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td>${lumbopelvicexam.assessment}</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td>${lumbopelvicexam.patientstatus}
</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row2">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)${lumbopelvicexam.diagnosis1}</td>
 <td width="250">2)${lumbopelvicexam.diagnosis2}</td>
 <td width="250">3)${lumbopelvicexam.diagnosis3}</td>
 <td width="250">4)${lumbopelvicexam.diagnosis4}</td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)${lumbopelvicexam.diagnosis5}</td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td>${lumbopelvicexam.times}Times/week for </td>
 <td>${lumbopelvicexam.week}weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250">${lumbopelvicexam.spinal}</td>
 <td width="250">${lumbopelvicexam.chiropractic}</td>
 <td width="250">${lumbopelvicexam.physical}</td>
 <td width="250">${lumbopelvicexam.orthotics}</td>
 <td width="250">${lumbopelvicexam.modalities}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250">${lumbopelvicexam.supplementation}</td>
 <td width="250">${lumbopelvicexam.hep}</td>
 <td width="250">${lumbopelvicexam.radiographic}</td>
 <td width="250">${lumbopelvicexam.mri}</td>
 <td width="250">${lumbopelvicexam.ctscan}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250">${lumbopelvicexam.nerve}</td>
 <td width="250">${lumbopelvicexam.emg}</td>
 <td width="250">${lumbopelvicexam.outside}</td>
 <td width="250">${lumbopelvicexam.dc}</td>
 <td width="250">${lumbopelvicexam.otheraddress} ${lumbopelvicexam.break_text4}</td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px">PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;${lumbopelvicexam.sign}</B></td></tr>
 </table>
 </c:forEach>
<table align="right">
<tr>
<td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewlumbopelvicexam'"></td>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>