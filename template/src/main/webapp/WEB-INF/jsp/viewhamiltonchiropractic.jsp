<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery-1.9.1.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
 </head>
 <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  $(function() {
	    $( "#tabss" ).tabs();
	  });
  </script>
 <body>
<form action="hamiltonchiropractic" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="left">
	            <div class="headings altheading">
	             <h2> Viewing InitialExam</h2> 
	            </div>
	            <div class="contentbox">
              
            

              
  <div id="tabs">
       <ul>
          <li><a href="#tabs-1">Pain Assessment</a></li>
          <li><a href="#tabs-2">Diagnosis/TP/Goals</a></li>
          <li><a href="#tabs-3">Orthopaedic Tests</a></li>
       </ul>
         
   <div id="tabs-1"> 
<div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	             <h2>Hamilton Chiropractic</h2> 
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <h6>Pain Assessment</h6>
              </tr>
              <c:forEach items="${hamiltonchiropracticForm.hamiltonchiropractic}" var="hamiltonchiropractic" varStatus="status">
              <tr class="row1">
               <td width="15%" valign="middle" align="left">I understand you have pain in your:</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.hacheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.ha}</td>
                 </tr>
                <tr class="row1">
                <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.neckcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.neck}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.mbcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.mb}</td>
                 </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.ribscheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.ribs}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.shouldercheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.shoulder}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.elbowcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.elbow}</td>
                 </tr>
                 <tr class="row1">
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.handcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.hand}</td>
                  </tr>
                 <tr class="row1">                
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.wristcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.wrist}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.lbpcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.lbp}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.hipcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.hip}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.legcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.leg}</td>
                 </tr>
                <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.kneecheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.knee}</td>
                 </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.footcheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.foot}</td>
                 </tr>
                 <tr class="row1">
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.anklecheck}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.ankle}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Did it begin gradually or suddenly?</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.suddenly}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.gradually}</td>
                 <td width="84%" valign="middle" align="left">Hours</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.hours}</td>
                 <td width="84%" valign="middle" align="left">Days</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.days}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">On what date did your injury occur?  </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.date}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">How did it happen?  </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.reason}</textarea></td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">Was this the first episode or is this a chronic injury? </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.acute}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.subacute}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.chronic}</td>
                 </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">What makes it feel better?</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.lyingdown}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.sitting}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.standing}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.bending}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.rest}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherb}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.othere}</td>
                 </tr>
                  <tr class="row1">
                 <td  width="84%" valign="middle" align="left">What have you done for it?  </td>
                 <td  width="84%" valign="middle" align="left">${hamiltonchiropractic.ice}</td>
                 <td  width="84%" valign="middle" align="left">${hamiltonchiropractic.heat}</td>
                 <td  width="84%" valign="middle" align="left"> ${hamiltonchiropractic.massage}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.aspirin}</td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherdone}</td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherit}</td>
                 <td></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td width="84%" valign="middle" align="left">What makes it feel worse? </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.bendingworse}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.twisting}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.lifting}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.walking}</td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.activity}</td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherworse}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherfeel}</td>
                  </tr>
                  <tr class="row1">
                 <td width="84%" valign="middle" align="left">How would you describe the pain?   </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.severe}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.dull}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.burning}</td>
                 </tr>
                 <tr class="row2">
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.nagging}</td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.throbbing}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.numb} </td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.tingling}</td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.stiff}</td>
                 </tr>
                  <tr class="row2">
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.stabbing}</td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.cramping}</td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherdescribe}</td>
                <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.otherpain}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Is it constant or does it come and go?</td>
                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.constant}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.intermittent}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">Does the pain shoot down your arms and/or legs, or is it contained in one area?</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.local}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.diffuse}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.radiates} </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherradiates}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Would you describe it as:</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.mild}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.moderate}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.severepain}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.crippling}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">Is it worse in the morning or at night?  </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.am}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.pm}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.othertime}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherdn}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Is your condition getting worse or better?</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.better}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.same}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.worse}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">Are you working? </td>
                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.yes}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.no}</td>
                 <td width="84%" valign="middle" align="left">When was your last day?</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.day}</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Has your condition affected your daily living in any way? </td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.work}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.sleep}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.otherdaily}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.othercondition}</td>
                 </tr>
                 </c:forEach>
            </table> 
            </div>
            </div>
            </td>
            </tr>
            </table>
            
            
            
            </div> 
            </div>
             
     <div id="tabs-2"> 
<div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <c:forEach items="${hamiltonchiropracticForm.hamiltonchiropractic}" var="hamiltonchiropractic" varStatus="status">
              <tr class="row1">
              <h4>Diagnosis/TP/Goals</h4>
              </tr>
              <tr class="row1">
            <td width="84%" valign="middle" align="left">Assessment/Diagnosis:</td>
             <td width="84%" valign="middle" align="left">${hamiltonchiropractic.sameass}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.improved}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.worseass}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.plateau}</td>
             </tr>
             <tr class="row2">
                  <td></td>
             
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.preinjury}</td>
                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.slight}</td>
                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.moderatly}</td>
                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.great}</td>
                   
                   <td></td>
                   <td></td>
             </tr>
             <tr class="row1">
                 <td width="84%" valign="middle" align="left">Treatment plan:</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.chiropractic}  </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.ems}</td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.iceplan}  </td>
                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.heatplan}</td>
            </tr>
            <tr class="row2">                 
            <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.nimmo}</td>
            <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.ultrasound}</td>
             <td width="84%" valign="middle" align="left">${hamiltonchiropractic.manualtraction}</td>
            <td width="84%" valign="middle" align="left">${hamiltonchiropractic.massageplan}</td>
            </tr>
            <tr class="row1">                   
            <td width="84%" valign="middle" align="left">${hamiltonchiropractic.neuromuscular}</td>
            <td width="84%" valign="middle" align="left">${hamiltonchiropractic.stretching}</td>
            <td width="84%" valign="middle" align="left">${hamiltonchiropractic.strengthening}</td>
            <td width="84%" valign="middle" align="left">${hamiltonchiropractic.remobilization}</td>
            </tr>
             <tr class="row2">
            <td width="84%" valign="middle" align="left">${hamiltonchiropractic.rehab}</td>
            <td width="84%" valign="middle" align="left">${hamiltonchiropractic.modificat}  </td>
            <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.care}  </td>
            <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.refer} </td>
            </tr>      
            
            <tr class="row1">
                <td width="84%" valign="middle" align="left">Goals:</td>
                <td width="84%" valign="middle" align="left"> <h4>Short Term:</h4></td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.decreasepain} </td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.decreasespam}  </td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.increaserom}</td>
             </tr>
             <tr class="row2">
                <td></td>
                <td></td>                   
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.improveadl}  </td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.improvesubluxations}</td>
                <td></td>
             </tr>
              <tr class="row1">
                <td></td>
                <td width="84%" valign="middle" align="left"> <h4>Long Term:</h4></td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.fullactivity}  </td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.returntowork} </td>
                <td width="84%" valign="middle" align="left">${hamiltonchiropractic.renewsports}  </td>
             </tr>
             </c:forEach>
 
             </table>
            </div>
            </div>
            </td>
            </tr>
            </table>
            </div>
            </div>
            
      <div id="tabs-3"> 
            
            <div id="tabss">
       <ul>
          <li><a href="#tabss-1">CERVICAL</a></li>
          <li><a href="#tabss-2">THORACIC</a></li>
          <li><a href="#tabss-3">LUMBAR</a></li>
           <li><a href="#tabss-4">EXTREMITIES</a></li>
       </ul>
       
           <div id="tabss-1">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <c:forEach items="${hamiltonchiropracticForm.hamiltonchiropractic}" var="hamiltonchiropractic" varStatus="status">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0">
                         <tr class="row1">
				               <td><b>CERVICAL:</b></td>				               
				                  </tr>
				                 
				                  <tr class="row2">
				                  <td >Jacksons</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.jacksonsr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.jacksonsl}</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.jacksonslo}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>	 Foramin Comp</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.foramin_compr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.foramin_compl} </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.foramin_complo}</td>
				                 
				                  </tr>
				                  
				                  <tr class="row2">
				                  <td>Shoulder Depr</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.shoulder_deprr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.shoulder_deprl}</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.shoulder_deprlo}</td>
				                 
				                  </tr>
              <tr class="row1">
				                  <td>Georges	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.georgesr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.georgesl}</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.georgeslo}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">O'Donoghues</td>	
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.odonor} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.odonol} </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.odonolo}</td>			                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Bakody Sign</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.bakody_signr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.bakody_signl}</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.bakody_signlo}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Distraction Test*</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.distraction_testr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.distraction_testl} </td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.distraction_testlo}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Valsalva 	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.valsalvar}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.valsalval}</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.valsalvalo}</td>				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Spinal Percuss</td>
				                  <td width="84%" valign="middle" align="left">Painlevel</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.spinal_percuss}</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Grip Dynamom 	</td>
				                  <td width="84%" valign="middle" align="left">Right</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.gripdynamomright}</td>	
				                  <td width="84%" valign="middle" align="left">Left</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.gripdynamomleft}</td>			                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Adsons</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.adsonsr} </td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.adsonsl}</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.adsonslo}</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Rust Sign</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.rustsignr}</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.rustsignl} </td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.rustsignlo}</td>				                 
				                  </tr>
				                  </table>
				                  </td>
				                  </tr>
				                  </c:forEach>
 
				                  </table>
				                  </div>
				                  </div>
				                  </td>
				                  </tr>
				                  </table>
				                  
				                  </div>
				                  </div>
				                <div id="tabss-2">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <c:forEach items="${hamiltonchiropracticForm.hamiltonchiropractic}" var="hamiltonchiropractic" varStatus="status">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0">
                         <tr class="row1">
				               <td><b>THORACIC:</b></td>				               
				                  </tr>
				                 
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Spinal Percuss</td>
				                  <td width="84%" valign="middle" align="left">Painlevel</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.spinal_percusst}</td>				                 
				                  </tr>
			                     <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Adam's Test</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.adams_testr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.adams_testl}</td>				                  			                 
				                  </tr>
         <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Sheppal Sign</td>
				                    <td width="84%" valign="middle" align="left">${hamiltonchiropractic.sheppal_signr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.sheppal_signl}</td>				                  			                    			                 
				                  </tr>
   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Soto Hall</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.soto_hallr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.soto_halll}</td>				                  			                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Compression Test	</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.compression_testr}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.compression_testl} </td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.compression_testlo}</td>				                 
				                  </tr>
				                  </table>
				                  </td>
				                  </tr>
				                  </c:forEach>
 
				                  </table>
				                  </div>
				                  </div>
				                  </td>
				                  </tr>
				                  </table>
				                  
				                  </div>
				                  </div>
				                  
				    <div id="tabss-3">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <c:forEach items="${hamiltonchiropracticForm.hamiltonchiropractic}" var="hamiltonchiropractic" varStatus="status">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0">
                         <tr class="row1">
				               <td><b>LUMBAR:</b></td>				               
				                  </tr>              
<tr class="row2">
				                  <td width="84%" valign="middle" align="left">Antalgia</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.antalgiar} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.antalgial}</td>
				                 
				                  </tr>				            
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Spinal Percuss</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.spinal_percusslr} Right</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.spinal_percussll}Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Valsalva	</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.valsalvalr}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.valsalvall} </td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>Minors Sign</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.minors_signr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.minors_signl}</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Braggard's Test</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.braggards_testr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.braggards_testl}</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">SLR</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.slrr}     </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.slrl}</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>WLR</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.wlrr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.wlrl}</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Hoovers	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.hooversr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.hooversl}</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Dbl Leg Raise</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.dbl_leg_raiser}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.dbl_leg_raisel} </td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Long Leg Test</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.long_leg_testr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.long_leg_testl}</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Anvil Test</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.anvil_testr}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.anvil_testl} </td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Thomas	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.thomasr}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.thomasl} </td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Milgram's Test	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.milgrams_testr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.milgrams_testl}</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Obers		</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.obersr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.obersl}</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Illiac Comp	</td>
				                  <td valign="top" align="left" class="input_txt">${hamiltonchiropractic.illiaccompr}</td>
				                 <td class="input_txt" align="left"> ${hamiltonchiropractic.illiaccompl}</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Yeomans	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.yeomansr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.yeomansl}</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Allis Sign        	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.allis_signr}  </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.allis_signl}</td>
				                 
				                  </tr>	
				                  </table>
				                  </td>
				                  </tr>
				                  </c:forEach>
 
				                  </table>
				                  </div>
				                  </div>
				                  </td>
				                  </tr>
				                  </table>
				                  
				                  </div>
				                  </div>
				                  
				                 <div id="tabss-4">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <c:forEach items="${hamiltonchiropracticForm.hamiltonchiropractic}" var="hamiltonchiropractic" varStatus="status">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0">
                         <tr class="row1">
				               <td><b>EXTREMITIES :</b></td>				               
				                  </tr> 
				                  <tr class="row2">
				               <td><b>SHOULDERS</b></td>				               
				                  </tr>      
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Dugas</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.dugasr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.dugasl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Supraspinatus</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.supraspinatusr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.supraspinatusl}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Codmans	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.codmansr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.codmansl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Speed's Test</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.speeds_testr}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.speeds_testl} </td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Yergasons</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.yergasonsr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.yergasonsl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ELBOWS</b></td>				               
				                  </tr> 
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">tinels</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.tinelsr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.tinelsl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Ligam Instab   </td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.lingaminstabr}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.lingaminstabl} </td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Golfers Elbow</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.golfers_elbowr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.golfers_elbowl}</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Tennis Elbow</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.tennis_elbowr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.tennis_elbowl}</td>
				                 <tr class="row1">
				               <td><b>WRISTS</b></td>				               
				                  </tr>
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Tinels</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.adsonslo}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.adsonslo} </td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Phalens</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.phalensr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.phalensl} </td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Finkelstein's Test</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.finkelsteins_testr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.finkelsteins_testl}</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Bracelet	</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.braceletr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.braceletl} </td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Allens</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.allensr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.allensl} </td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Valgus/Varus </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.valgus_varusr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.valgus_varusl} </td>
				                 
				                  </tr>
				                  <tr class="row1">
				               <td><b>KNEES</b></td>				               
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Pat Ball</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.pat_ballr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.pat_balll}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Drawer</td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.drawerr}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.drawerl} </td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Val/Varus  </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.val_varusr}</td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.val_varusl}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left"> Apleys   </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.apleysr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.apleysl} </td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ANKLES</b></td>				               
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left"> Drawer  </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.drawerar}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.draweral}</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Thompsons </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.thompsonsr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.thompsonsl} </td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Tinels </td>
				                  <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.tinelsr}</td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.tinelsl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left"> Strunskys</td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.strunskysr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.strunskysl}</td>
				                 
				                  </tr>
				                 
                        <tr class="row1">
				                  <td width="84%" valign="middle" align="left"> Homans </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.homansr} </td>
				                 <td width="84%" valign="middle" align="left"> ${hamiltonchiropractic.homansl}</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Claudication Test </td>
				                  <td width="84%" valign="middle" align="left">${hamiltonchiropractic.claudication_testr} </td>
				                 <td width="84%" valign="middle" align="left">${hamiltonchiropractic.claudication_testl} </td>
				                 
				                  </tr>
            </table>
            </td>
            </tr>
            </c:forEach>
 
            </table>
            <table align="right">
            <tr><td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewfirsthamiltonchiropractic'">
            </td>
            </tr>
            </table>
            </div>
            </div>
            </td>
            </tr>
            </table>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </td>
            </tr>
            </table>
            </form>
            </body>
            </html>