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
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });
$(function() {
    $( "#datepicker1" ).datepicker();
  });
$(function() {
    $( "#datepicker2" ).datepicker();
  });
$(function() {
    $( "#datepicker3" ).datepicker();
  });
$(function() {
    $( "#datepicker4" ).datepicker();
  });
$(function() {
    $( "#datepicker5" ).datepicker();
  });
$(function() {
    $( "#datepicker6" ).datepicker();
  });
$(function() {
    $( "#datepicker7" ).datepicker();
  });
$(function() {
    $( "#datepicker8" ).datepicker();
  });
$(function() {
    $( "#datepicker9" ).datepicker();
  });
$(function() {
    $( "#datepicker10" ).datepicker();
  });
$(function() {
    $( "#datepicker11" ).datepicker();
  });
</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
  <script type="text/javascript">
function Checksymptom(val){
	 var element=document.getElementById('level1');
	 if(val=='Not Within Normal Limits')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
function Checksymptom(val){
	 var element=document.getElementById('level2');
	 if(val=='Hyper-reflexic')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
	
function Checksymptom(val){
	 var element=document.getElementById('fracture');
	 if(val=='Positive for fracture of the')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
function Checksymptom(val){
	 var element=document.getElementById('presentlevel');
	 if(val=='Present at the')
	   element.style.display='block';
	 else  
	   element.style.display='none';
	}
</script>
</head>
 
 <body>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>  
           <li><a href="#tabs-3">3</a></li>        
       </ul>
       <form action="narrativereport" method="POST">
  <div id="tabs-1">                       
 <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
<c:forEach items="${narrativereportForm.narrativereport}" var="narrativereport" varStatus="status">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2> CHIROPRACTIC THERAPY CENTER</h2> </center><br/>
	            </div>
	            <div class="contentbox"><center> Sheffield Village Plaza </center><br/>
	            <center> 5190 Detroit Road </center><br/>
	            <center> Sheffield Village, OH 44035 </center><br/>
	            <center> (440) 934-3099     Fax (440) 934-3107 </center><br/>
	            <center> <B style="font-size:18px">Narrative Report</B> </center><br/>
          <table cellpadding="0" cellspacing="0" border="0" width="70%" align="center">
          <tr height="30">
          <td><span class="err">*</span>Report Date: </td>
          <td>${narrativereport.reportdate}</td>
          </tr>   
          <tr height="30">
          <td><span class="err">*</span>Patient: </td>
          <td>${narrativereport.patient}</td>
          </tr>
          <tr height="30">
          <td>Date of Injury: </td>
          <td>${narrativereport.dateofinjury}</td>
          </tr>
          <tr height="30">
          <td>Date of first visit: </td>
          <td>${narrativereport.dateoffirstvisit}</td>
          </tr>
          </table>
          <table width="85">
          <tr height="30">
          <td width="40">TO  </td>
          <td>${narrativereport.towhom}</td>
          </tr>
          </table>
          <br/>
          <div><p style="line-height:1.5"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;At your request and with permission from my patient,${narrativereport.patientname} , I am writing the following narrative report concerning the injuries ${narrativereport.gender} sustained as the result of an automobile accident on ${narrativereport.accident}</p>
               <p><B style="font-size:14px">History</B></p>
               <p style="line-height:26px">${narrativereport.name} was initially seen for the purpose of consultation and examination on ${narrativereport.dateofconsultation} .  ${narrativereport.gender1} stated that ${narrativereport.gender2} was the driver in a motor vehicle accident ${narrativereport.accidentdate}.  ${narrativereport.gender3} further stated that ${narrativereport.gender4} GMC Truck was struck from behind by a Ford Aerostar while ${narrativereport.gender5} was at a dead stop. It was daylight and road conditions were dry at the time of impact. ${narrativereport.name1} wearing ${narrativereport.gendernew} seatbelt with both hands on the wheel and ${narrativereport.gender6}  head straight when struck.${narrativereport.gender7}  was unaware that another vehicle was about to crash into ${narrativereport.gender8} car. The airbag was not deployed upon impact. During the crash, ${narrativereport.gender9}.${narrativereport.name2}body was ${narrativereport.body} . ${narrativereport.gender10}${narrativereport.slammed} slammed into the ${narrativereport.slammed1}. Symptoms of ${narrativereport.symptom}, directly related to the accident, appeared ${narrativereport.appeared}after the incident.  The victim did (not )drive to the emergency room after the wreck. </p>
               <p><B style="font-size:14px">Past History</B></p>
               <p style="line-height:26px">Past history revealed (no prior auto accidents, a prior automobile accident which occurred in ${narrativereport.priordate}. ${narrativereport.gender11} ${narrativereport.name3}stated that there were no residual effects from that accident and ${narrativereport.gender12} was in good health prior to the current accident.  Past medical history revealed ${narrativereport.pastmedicalhistory}.  There ${narrativereport.gender13} past surgeries and ${narrativereport.gender14} ${narrativereport.gender15} currently on medication.  Social history revealed a ${narrativereport.gender16}.  Work history was non-contributory.</p>
					<p><B style="font-size:14px">Present Compliant</B></p>
					<p style="line-height:26px">
					${narrativereport.gender18} ${narrativereport.name4}  presented to this clinic on ${narrativereport.clinicdate}with complaints of ${narrativereport.gender19}due to a motor vehicle accident on ${narrativereport.vehicleaccident}. ${narrativereport.gender20} aggravated  condition while ${narrativereport.gender21}${narrativereport.allieviated} allieviated it.  ${narrativereport.gender22} described ${narrativereport.gender23} pain as ${narrativereport.gender24}
					  ,  ${narrativereport.gendernew2},${narrativereport.gendernew3}  and ${narrativereport.gender25}. ${narrativereport.gender26}   further stated that ${narrativereport.gender27} condition ${narrativereport.gender28} getting any better and that it affected ${narrativereport.gender29} daily living activites, such as ${narrativereport.gender30}.
					</p>
					<p><B style="font-size:14px">Physical Exam</B></p>
					<p>&nbsp;&nbsp;<B style="font-size:13px">Physical Inspection</B></p>
					<p style="line-height:26px">Examination revealed a ${narrativereport.age} year old, ${narrativereport.age1},${narrativereport.lb} lb. ${narrativereport.gender31}${narrativereport.gender32} with ${narrativereport.gender33} musculature.${narrativereport.gender34}  presented under ${narrativereport.gendernew4} distress,${narrativereport.gender35}  gait and ${narrativereport.gender36} posture.  Visceral pathologies revealed ${narrativereport.gender37}. Visual inspection demonstrated a ${narrativereport.gender38}${narrativereport.gender39}.</p>
					<p><B style="font-size:14px">Digital Palpation</B></p>
					<p style="line-height:26px">Palpation of the ${narrativereport.gendernew5}spine revealed paraspinal pain, spasm, edema and trigger points. There was ${narrativereport.tenderness}  tenderness on the ${narrativereport.gender40} and vertebral fixations. Tonicity of the ${narrativereport.gendernew6}on the ${narrativereport.gender41} was evident. Also noted was ,${narrativereport.noted}.   </p>
					<table>
					<tr>
					<td width="150">Range Of Motion</td>
					<td>
					${narrativereport.rangeofmotion}
					</td>
					</tr>
					</table>
					</div>
					</div>
					</div>
					</td>
					</tr>
					</table>
					</div>
					</div>
					
					<div id="tabs-2"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>CHIROPRACTIC THERAPY CENTER</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
                  <table cellpadding="0" cellspacing="0" border="0">
					<tr class="row2">
					<td width="200"><B style="font-size:13px">Cervical Range of Motion</B></td>
					<td width="200"><B style="font-size:13px">Normal</B></td>
					<td width="200"><B style="font-size:13px">Pain Restriction</B></td>
					<td width="200"><B style="font-size:13px">Tonicity Restriction</B></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;60</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres1}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity1}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Extension</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;75</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres2}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity2}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Right Lateral Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;45</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres3}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity3}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Left lateral Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;45</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres4}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity4}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Right Rotation</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;80</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres5}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity5}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Left Rotation</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;80</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres6}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity6}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr class="row2">
					<td width="200"><B style="font-size:13px">Thoraco-Lumbar ROM</B></td>
					<td width="200"><B style="font-size:13px">Normal</B></td>
					<td width="200"><B style="font-size:13px">Pain Restriction</B></td>
					<td width="200"><B style="font-size:13px">Tonicity Restriction</B></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;80</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres7}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity7}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Extension</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;30</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres8}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity8}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Right Lateral Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;25</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres9}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity9}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Left lateral Flexion</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;25</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres10}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity10}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Right Rotation</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;30</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres11}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity11}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;Left Rotation</td>
					<td width="200">&nbsp;&nbsp;&nbsp;&nbsp;30</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.painres12}</td>
					<td width="200">&nbsp;&nbsp;${narrativereport.tonicity12}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					</table>  
					<p><B style="font-size:14px"> Neurologic Testing</B></p>
					<p style="line-height:26px">Neurologic tests were performed for the purpose of assessing dermatomes, myotomes and deep tendon reflexes.  Peripheral sensitivity revealed (sensation to be equal and intact and without incident,abnormal sensation at the ${narrativereport.dermatome} dermatome level(s) on the L-R) for the ${narrativereport.gender42} spine. Myotome strength was tested in the ${narrativereport.gender43} musculature  and was found to be ${narrativereport.gender44} ${narrativereport.level1}/5 at the ${narrativereport.level}level .  Pathologic and deep tendon reflexes were tested using the Wexler Scale and were found to be ${narrativereport.gender45} ${narrativereport.level2} </p>
         		  <p><B style="font-size:14px">Orthopedic Exam</B></p>
         		<p>Extensive orthopedic testing was performed and the following tests were found to be positive</p>
         		<table cellpadding="0" cellspacing="0" border="0">
					<tr class="row2">
					<td width="200"></td>
					<td width="250"><B style="font-size:13px">Orthopedic Test</B></td>
					<td width="250"><B style="font-size:13px">Right side</B></td>
					<td width="250"><B style="font-size:13px">Left side</B></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">${narrativereport.orthopedictest1} </td>
					<td width="250">${narrativereport.jacksonsr}</td>
					<td width="250">${narrativereport.jacksonsl}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">${narrativereport.orthopedictest2} </td>
					<td width="250">${narrativereport.doublelegraiser}</td>
					<td width="250">${narrativereport.doublelegraisel}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">${narrativereport.orthopedictest3} </td>
					<td width="250">${narrativereport.yeomansr}</td>
					<td width="250">${narrativereport.yeomansl}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">${narrativereport.orthopedictest4} </td>
					<td width="250">${narrativereport.foraminalr}</td>
					<td width="250">${narrativereport.foraminall}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">${narrativereport.orthopedictest5} </td>
					<td width="250">${narrativereport.shoulderr}</td>
					<td width="250">${narrativereport.shoulderl}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">${narrativereport.orthopedictest6} </td>
					<td width="250">${narrativereport.orthopedicr}</td>
					<td width="250">${narrativereport.orthopedicl}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					</table>
					<p><B style="font-size:14px">RadiologicReport</B></p>
					<p style="line-height:26px">${narrativereport.gender46}:  A ${narrativereport.gender47}view ${narrativereport.gender48}series and a ${narrativereport.gender49}  view  ${narrativereport.gender50}series was performed and found ${narrativereport.gender51}${narrativereport.fracture}.  There was a ${narrativereport.gender52}${narrativereport.gender53}present due to spastic musculature.Degenerative joint disease of the spine was ${narrativereport.gender54}${narrativereport.presentlevel}levels. There were ${narrativereport.gender55} vertebral body osteophytes of ${narrativereport.osteophytes}.  A ${narrativereport.gender56} ${narrativereport.gender57}${narrativereport.gender58} was evident in the ${narrativereport.gender59}spine.  Soft tissue edema was apparent in the paraspinal muscle tissue of the ${narrativereport.gender60}spine.  Subluxations were present at ${narrativereport.subluxations} .</p>
         		</div>
         		</div>
         		</td>
         		</tr>
         		</table>
         		</div>
         		</div>
         		<div id="tabs-3">                       
 <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2> CHIROPRACTIC THERAPY CENTER</h2> </center><br/>
	            </div>
	            <div class="contentbox">
	             <p><B style="font-size:14px">Diagnosis</B></p>
         		<table>
         		<tr height="30" class="row2">
					<td width="200"></td>
					<td width="250"></td>
					<td width="250"><B style="font-size:14px">ICD</B></td>
					<td width="250"><B style="font-size:14px">Description</B></td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">1</td>
					<td width="250">${narrativereport.icd1}</td>
					<td width="250">${narrativereport.description1}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">2</td>
					<td width="250">${narrativereport.icd2}</td>
					<td width="250">${narrativereport.description2}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">3</td>
					<td width="250">${narrativereport.icd3}</td>
					<td width="250">${narrativereport.description3}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
					<tr height="30">
					<td width="200"></td>
					<td width="250">4</td>
					<td width="250">${narrativereport.icd4}</td>
					<td width="250">${narrativereport.description4}</td>
					<td width="200"></td>
					<td width="200"></td>
					</tr>
         		</table>
         		<p><B style="font-size:14px">Treatment</B></p>
         		<p style="line-height:26px">Active relief care, initial pain management directed towards reducing symptoms and improving function.  The goal of continued treatment is to reduce pain, reduce spasm, improve activities of daily living and the quality of the patient's life.
Injuries of this nature and magnitude respond well to a treatment program consisting of skilled chiropractic spinal manipulation, electrical muscle stimulation, massage therapy, hot/cold packs and exercise.  Our office began care with ${narrativereport.gender61} ${narrativereport.pname} on ${narrativereport.date9}and during that period of time, records indicate ${narrativereport.gender62} experienced steady improvement.
         		</p> 
         		<p><B style="font-size:14px">Prognosis</B></p>
	            <p style="line-height:26px">${narrativereport.gender63} ${narrativereport.pname1} condition reached maximum medical improvement on ${narrativereport.datenew} and was therefore released from care.  ${narrativereport.gender64}  prognosis is considered  ${narrativereport.gender65} ${narrativereport.poor}.  ${narrativereport.gender67} is expected to experience mild residual effects, if any, from ${narrativereport.gender68} injuries.  It should be noted that the patient's response to conservative therapy and treatment has been consistent and encouraging in view of the severity and chronicity of ${narrativereport.gender69} condition.  The effects of healing residuals of the fibrosis of repair of injured muscle and ligamentous tissues are permanent in nature and 
      ${narrativereport.gender70}${narrativereport.pname2} may have occasional exacerbations.  This is due to fact that fibrotic repair of once injured tissues leaves it permanently weaker, less elastic and more sensitive to the normal stresses of daily activities.  There is no need to place limitations on ${narrativereport.gender71} activities at this time.  Yet, it is possible that any activity that causes stress upon the once injured ligaments and muscles of ${narrativereport.gender72} neck and lower back may create a symptomatic exacerbation of ${narrativereport.gender73} condition.  At that time, ${narrativereport.gender74} may need to resume chiropractic care for palliative purposes.

I hope you find this narrative report and discussion helpful in resolving the current status of ${narrativereport.gender75} ${narrativereport.pname3} condition.  If you have any questions, please feel free to contact me.
	            </p>
	            <div align="right">
          <p><B style="font-size:13px">Sincerely,</B></p>
          <p>${narrativereport.sign}<span class="err"><form:errors path="Copyofrequest.sign"></form:errors></span></p>
          <p>Dr. Darrin A. Pordash</p>
          </div>
 <table align="right">
<tr>
<td><input type="reset" class="submit_btn" value="Cancel" onclick="window.location.href='viewnarrativereport'"></td>
</tr>
</table>
</c:forEach>
	            </div>
	            </div>
	            </td>
	            </tr>
	            </table>
	            </div>
	            </div>
			    </form>
			    </div>
			    </body>
			  </html>

				

					
					


