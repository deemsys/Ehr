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
 <c:forEach items="${kneeexamForm.kneeexam}" var="kneeexam" varStatus="status">
<td><h2>Patient Name:</h2></td><td>${kneeexam.pname}</td>
<td width="600">
<td><h2>Date:</h2></td><td>${kneeexam.date}</td>
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
 <td width="200">Gait:</td><td>${kneeexam.gait}</td> 
 <td> <input type="text" style="visibility:hidden"></td> 
 <td><input type="text" style="visibility:hidden"></td>
 </tr>
 <tr class="row1">
 <td width="200">Pelvic Unleveling:</td><td>${kneeexam.pelvicunleveling}</td> 
  <td>A & O:${kneeexam.ao} </td>
 <td><input type="text" style="visibility:hidden"></td>
 <td><input type="text" style="visibility:hidden"></td> 
 <td><input type="text" style="visibility:hidden"></td>
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200">${kneeexam.allsoft}</td> 
 <td> <%-- ${kneeexam.except} --%> </td>
 <td><input type="text" style="visibility:hidden"></td>
 <td><input type="text" style="visibility:hidden"></td> 
 <td><input type="text" style="visibility:hidden"></td>
 </tr>
   <tr class="row1">
 <td width="200">Leg Length (ASIS to Medial Malleolus): </td> 
 <td>${kneeexam.leglengthl} ${kneeexam.leglengthtextl}
					</td>
					<td> ${kneeexam.leglengthr}</td>
					<td>${kneeexam.leglengthtextr}</td>					
					<td></td>
					<td></td> 
					
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>VMO:</td><td width="100">${kneeexam.vmo}</td> 
 <td>Quads (-VMO)::</td><td>${kneeexam.quads}</td>
 <td>Semimemb:</td> ${kneeexam.semimemb}</td>
 <td>Semitend:</td>${kneeexam.semitend}</td>
 </tr>
 <tr class="row1">
 <td>Gastroc:</td><td width="200">${kneeexam.gastroc}</td>
  <td>Soleus:</td><td width="200">${kneeexam.soleus}</td>
  <td>Iliotib Band:</td><td width="200">${kneeexam.iliotibband}</td>
 <td>Biceps Fem::</td><td> ${kneeexam.bicepsfem}</td>
 </tr>
 </table>
 <table>
 <tr class="row2">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td><B style="font-size:14px"></B></td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><B style="font-size:14px"></B></td>
 </tr>
  <tr class="row1">
 <td>${kneeexam.functionalrangeofmotion} &nbsp;&nbsp;<!-- <input type="radio" name="functionalrangeofmotion" value="Except">Except --></td><td> </td>  
 <td></td>
 <td> ${kneeexam.orthopedic}&nbsp;&nbsp;<!-- <input type="radio" name="orthopedic" value="Except">Except --></td><td> </td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (60)</td><td>&nbsp;&nbsp;&nbsp; ${kneeexam.flexion} </td>  
 <td><b>Ant. Drawer (ACL):</b> </td><td>${kneeexam.acll} ${kneeexam.aclr} </td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25) </td><td> &nbsp;&nbsp;&nbsp;&nbsp;${kneeexam.extension}</td>  
 <td><b>Post. Drawer (PCL):	</b> </td><td>${kneeexam.pcll} ${kneeexam.pclr} </td>
 </tr>
  <tr class="row2">
 <td><b>Internal Rotation:</b> </td><td> (25)</td><td>L &nbsp;${kneeexam.internalrotationl}<br/><br/>R ${kneeexam.internalrotationr}</td>  
 <td><b>Lateral (Varus) Stability (LCL):</b> </td><td> ${kneeexam.lcll}${kneeexam.lclr}</td>
 </tr>
  <tr class="row1">
  <td><b> External Rotation:</b> </td><td> (45)</td><td>L &nbsp;${kneeexam.externalrotationl}<br/><br/>R ${kneeexam.externalrotationr}</td>  
 <td><b>Medial (Valgus) Stability (MCL):</b> </td><td>${kneeexam.mcll} ${kneeexam.mclr} </td>
 </tr>
  <tr class="row1">
 <td><b>GIRTH</b>&nbsp;&nbsp;&nbsp;${kneeexam.circumferential} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	</td><td> </td>  
 <td></td>
 <td><b>McMurray's (Med Meniscus):	</b> </td><td>${kneeexam.meniscusl} ${kneeexam.meniscusr}</td>
 </tr>
  <tr class="row1">
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>5 cm Above</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Suprapatellar</b></td><td><b>Infrapatellar</b> </td>  
 <td><b>5 cm Below</b>	</td>
 <td><b>Apley's Compress (Meniscus):	</b> </td><td>${kneeexam.apleysl} ${kneeexam.apleysr} </td>
 </tr>
  <tr class="row1">
 <td>Left &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${kneeexam.cmabovel}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${kneeexam.suprapatellarl}</td><td>${kneeexam.infrapatellarl} </td>  
 <td>${kneeexam.belowl}</td>
 <td><b>Apley's Distraction (Cor ligs):		</b> </td><td>${kneeexam.distractionl} ${kneeexam.distractionr}  </td>
 </tr>
 <tr class="row1">
 <td>Right &nbsp;&nbsp;&nbsp;&nbsp;${kneeexam.cmabover}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${kneeexam.suprapatellarr}</td><td>${kneeexam.infrapatellarr}</td>  
 <td>${kneeexam.belowr}</td>
 <td><b>Patellar Grind (CMP):</b> </td><td>${kneeexam.cmpl}${kneeexam.cmpr} </td>
 </tr>
 <tr class="row1">
 <td></td><td> </td> 
 <td></td> 
 <td><b>Patellar Apprehension (Pat D/L):</b> </td><td> ${kneeexam.patdll} ${kneeexam.patdlr}  </td>
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
	            <center> <h2> Viewing Knee Exam</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20"> 
         <c:forEach items="${kneeexamForm.kneeexam}" var="kneeexam" varStatus="status">
                 
 <tr class="row2">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td>${kneeexam.neurologicaltest}</td><td><%-- ${kneeexam.exceptn} --%></td>
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
 <td>${kneeexam.l1l}&nbsp; &nbsp; &nbsp;${kneeexam.l1r}&nbsp;(Inguinal area)</td>
 <td>L1 </td>
 <td> ${kneeexam.l15l}&nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.l15r}&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td>  </td>
 </tr>
 <tr class="row1">
 <td>L2</td>
 <td>${kneeexam.l2l}&nbsp; &nbsp; &nbsp;${kneeexam.l2r}&nbsp;(Ant/med thigh)</td>
 <td>L2 </td>
 <td> ${kneeexam.l25l}&nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.l25r}&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L3</td>
 <td>${kneeexam.l3l}&nbsp; &nbsp; &nbsp;${kneeexam.l3r}&nbsp;(Medial knee)	</td>
 <td>L3 </td>
 <td> ${kneeexam.l35l}&nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.l35r}&nbsp;/5&nbsp;(Iliopsoas)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>L4</td>
 <td>${kneeexam.l4l}&nbsp; &nbsp; &nbsp;${kneeexam.l4r}&nbsp;(Medial leg)	</td>
 <td>L4 </td>
 <td>${kneeexam.l45l} &nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.l45r}&nbsp;/5&nbsp;(Rectus fem.)</td>
 <td> L4</td>
 <td> ${kneeexam.l4l3}&nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.l4r3}&nbsp;/5&nbsp;(Patellar)</td>
 </tr>
 <tr class="row1">
 <td>L5</td>
 <td>${kneeexam.l5l}&nbsp; &nbsp; &nbsp;${kneeexam.l5r}&nbsp;(Ant/lat leg)	</td>
 <td>L5 </td>
 <td>${kneeexam.l55l}&nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.l55r}&nbsp;/5&nbsp;  (Glut Med)</td>
 <td>L5 </td>
 <td>${kneeexam.l5l3}&nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.l5r3}&nbsp;/5&nbsp;(Med HS) </td>
 </tr>
 <tr class="row1">
 <td>SI</td>
 <td>${kneeexam.sl}&nbsp; &nbsp; &nbsp;${kneeexam.sr}&nbsp;(Big toe/plantar)		</td>
 <td>SI </td>
 <td>${kneeexam.s5l} &nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.s5r}&nbsp;/5&nbsp; (Glut Max)</td>
 <td>SI </td>
 <td> ${kneeexam.sil}&nbsp;/5&nbsp; &nbsp; &nbsp;${kneeexam.sir}&nbsp;/5&nbsp;(Achilles)</td>
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
 <td width="150">${kneeexam.walking} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${kneeexam.standing}</td>
 <td width="150">${kneeexam.stairs}</td>
 <td width="150">${kneeexam.otherfunctional}<input type="checkbox" name="otherfunctional" value="Other" onclick="this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp;</td>
 <td>${kneeexam.break_text3} </td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td>${kneeexam.assessment}</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td>${kneeexam.patientstatus}
</td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row2">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)${kneeexam.diagnosis1}</td>
 <td width="250">2)${kneeexam.diagnosis2}</td>
 <td width="250">3)${kneeexam.diagnosis3}</td>
 <td width="250">4)${kneeexam.diagnosis4}</td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)${kneeexam.diagnosis5}</td>
 <td width="250">6)${kneeexam.diagnosis6}</td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td>${kneeexam.times}Times/week for </td>
 <td>${kneeexam.week}weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250">${kneeexam.spinal}</td>
 <td width="250">${kneeexam.chiropractic}</td>
 <td width="250">${kneeexam.physical}</td>
 <td width="250">${kneeexam.orthotics}</td>
 <td width="250">${kneeexam.modalities}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250">${kneeexam.supplementation}</td>
 <td width="250">${kneeexam.hep}</td>
 <td width="250">${kneeexam.radiographic}</td>
 <td width="250">${kneeexam.mri}</td>
 <td width="250">${kneeexam.ctscan}</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250">${kneeexam.nerve}</td>
 <td width="250">${kneeexam.emg}</td>
 <td width="250">${kneeexam.outside}</td>
 <td width="250">${kneeexam.dc}</td>
 <td width="250">${kneeexam.otheraddress} ${kneeexam.break_text4}</td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px">PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;${kneeexam.sign}</B></td></tr>
 </table>
 </c:forEach>
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