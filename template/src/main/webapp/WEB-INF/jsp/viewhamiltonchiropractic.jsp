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
              
            <c:set value="${Hamiltonchiropracticform.hamiltonchiropractic[0]}" var="Hamiltonchiropractic"> </c:set>
              
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
              <tr class="row1">
               <td width="15%" valign="middle" align="left">I understand you have pain in your:</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.hacheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.ha}</td>
                 </tr>
                <tr class="row2">
                <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.neckcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.neck}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.mbcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.mb}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.ribscheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.ribs}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.shouldercheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.shoulder}</td>
                  </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.elbowcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.elbow}</td>
                 </tr>
                 <tr class="row1">
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.handcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.hand}</td>
                  </tr>
                 <tr class="row2">                
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.wristcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.wrist}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.lbpcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.lbp}</td>
                  </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.hipcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.hip}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.legcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.leg}</td>
                 </tr>
                <tr class="row2">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.kneecheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.knee}</td>
                 </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.footcheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.foot}</td>
                 </tr>
                 <tr class="row2">
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.anklecheck}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.ankle}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Did it begin gradually or suddenly?</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.suddenly}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.gradually}</td>
                 <td width="84%" valign="middle" align="left">Hours</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.hours}</td>
                 <td width="84%" valign="middle" align="left">Days</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.days}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">On what date did your injury occur?  </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.date}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">How did it happen?  </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.reason}</textarea></td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">Was this the first episode or is this a chronic injury? </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.acute}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.subacute}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.chronic}</td>
                 </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">What makes it feel better?</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.lyingdown}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.sitting}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.standing}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.bending}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.rest}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherb}</td>
                  <td width="84%" valign="middle" align="left">other</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.othere}</td>
                 </tr>
                  <tr class="row1">
                 <td  width="84%" valign="middle" align="left">What have you done for it?  </td>
                 <td  width="84%" valign="middle" align="left">${Hamiltonchiropractic.ice}</td>
                 <td  width="84%" valign="middle" align="left">${Hamiltonchiropractic.heat}</td>
                 <td  width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.massage}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.aspirin}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherdone}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherit}</td>
                 <td></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td width="84%" valign="middle" align="left">What makes it feel worse? </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.bendingworse}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.twisting}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.lifting}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.walking}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.activity}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherworse}</td>
                <td width="84%" valign="middle" align="left">other </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherfeel}</td>
                  </tr>
                  <tr class="row1">
                 <td width="84%" valign="middle" align="left">How would you describe the pain?   </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.severe}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.dull}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.burning}</td>
                 </tr>
                 <tr class="row2">
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.burning}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.nagging}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.throbbing}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.numb} </td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.tingling}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.stiff}</td>
                 </tr>
                  <tr class="row2">
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.stabbing}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.cramping}</td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherdescribe}</td>
                <td width="84%" valign="middle" align="left">other </td> 
                <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.otherpain}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Is it constant or does it come and go?</td>
                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.constant}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.intermittent}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">Does the pain shoot down your arms and/or legs, or is it contained in one area?</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.local}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.diffuse}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.radiates} </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherradiates}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Would you describe it as:</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.mild}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.moderate}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.severepain}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.crippling}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">Is it worse in the morning or at night?  </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.am}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.pm}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.othertime}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherdn}</td>
                  </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Is your condition getting worse or better?</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.better}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.same}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.worse}</td>
                 </tr>
                 <tr class="row2">
                 <td width="84%" valign="middle" align="left">Are you working? </td>
                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.yes}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.no}</td>
                 <td width="84%" valign="middle" align="left">When was your last day?</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.day}</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td width="84%" valign="middle" align="left">Has your condition affected your daily living in any way? </td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.work}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.sleep}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.otherdaily}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.othercondition}</td>
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
              <tr class="row1">
              <h4>Diagnosis/TP/Goals</h4>
              </tr>
              <tr class="row1">
            <td width="84%" valign="middle" align="left">Assessment/Diagnosis:</td>
             <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.sameass}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.improved}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.worseass}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.plateau}</td>
             </tr>
             <tr class="row2">
                  <td></td>
             
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.preinjury}</td>
                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.slight}</td>
                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.moderatly}</td>
                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.great}</td>
                   
                   <td></td>
                   <td></td>
             </tr>
             <tr class="row1">
                 <td width="84%" valign="middle" align="left">Treatment plan:</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.chiropractic}  </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.ems}</td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.iceplan}  </td>
                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.heatplan}</td>
            </tr>
            <tr class="row2">                 
            <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.nimmo}</td>
            <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.ultrasound}</td>
             <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.manualtraction}</td>
            <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.massageplan}</td>
            </tr>
            <tr class="row1">                   
            <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.neuromuscular}</td>
            <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.stretching}</td>
            <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.strengthening}</td>
            <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.remobilization}</td>
            </tr>
             <tr class="row2">
            <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.rehab}</td>
            <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.modificat}  </td>
            <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.release}  </td>
            <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.refer} </td>
            </tr>      
            
            <tr class="row1">
                <td width="84%" valign="middle" align="left">Goals:</td>
                <td width="84%" valign="middle" align="left"> <h4>Short Term:</h4></td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.decreasepain} </td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.decreasespam}  </td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.increaserom}</td>
             </tr>
             <tr class="row2">
                <td></td>
                <td></td>                   
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.improveadl}  </td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.improvesubluxations}</td>
                <td></td>
             </tr>
              <tr class="row1">
                <td></td>
                <td width="84%" valign="middle" align="left"> <h4>Long Term:</h4></td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.fullactivity}  </td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.returntowork} </td>
                <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.renewsports}  </td>
             </tr>
             
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
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0">
                         <tr class="row1">
				               <td><b>CERVICAL:</b></td>				               
				                  </tr>
				                 
				                  <tr class="row2">
				                  <td >Jacksons</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.jacksonsr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.jacksonsl}</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.jacksonslo}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>	 Foramin Comp</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.foramin_compr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.foramin_compl} </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.foramin_complo}</td>
				                 
				                  </tr>
				                  
				                  <tr class="row2">
				                  <td>Shoulder Depr</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.shoulder_deprr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.shoulder_deprl}</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.shoulder_deprlo}</td>
				                 
				                  </tr>
              <tr class="row1">
				                  <td>Georges	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.georgesr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.georgesl}</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.georgeslo}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">O'Donoghues</td>	
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.odonor} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.odonol} </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.odonolo}</td>			                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Bakody Sign</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.bakody_signr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.bakody_signl}</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.bakody_signlo}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Distraction Test*</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.distraction_testr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.distraction_testl} </td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.distraction_testlo}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Valsalva 	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.valsalvar}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.valsalval}</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.valsalvalo}</td>				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Spinal Percuss</td>
				                  <td width="84%" valign="middle" align="left">Painlevel</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.spinal_percuss}</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Grip Dynamom 	</td>
				                  <td width="84%" valign="middle" align="left">Right</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.gripdynamomright}</td>	
				                  <td width="84%" valign="middle" align="left">Left</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.gripdynamomleft}</td>			                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Adsons</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.adsonsr} </td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.adsonsl}</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.adsonslo}</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Rust Sign</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.rustsignr}</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.rustsignl} </td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.rustsignlo}</td>				                 
				                  </tr>
				                  </table>
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
				                <div id="tabss-2">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0">
                         <tr class="row1">
				               <td><b>THORACIC:</b></td>				               
				                  </tr>
				                 
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Spinal Percuss</td>
				                  <td width="84%" valign="middle" align="left">Painlevel</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.spinal_percusst}</td>				                 
				                  </tr>
			                     <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Adam's Test</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.adams_testr} <input type="checkbox" name="adams_test" value="adams_testr">Hump Remains</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.adams_testl}<input type="checkbox" name="adams_test" value="adams_testl">Hump Dissap</td>				                  			                 
				                  </tr>
         <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Sheppal Sign</td>
				                    <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.sheppal_signr} <input type="checkbox" name="sheppal_signr" value="sheppal_signr">Hump Remains</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.sheppal_signl}<input type="checkbox" name="sheppal_signl" value="sheppal_signl">Hump Dissap</td>				                  			                    			                 
				                  </tr>
   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Soto Hall</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.soto_hallr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.soto_halll}</td>				                  			                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Compression Test	</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.compression_testr}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.compression_testl} </td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.compression_testlo}</td>				                 
				                  </tr>
				                  </table>
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
				                  
				    <div id="tabss-3">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0">
                         <tr class="row1">
				               <td><b>LUMBAR:</b></td>				               
				                  </tr>              
<tr class="row2">
				                  <td width="84%" valign="middle" align="left">Antalgia</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.antalgiar} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.antalgial}</td>
				                 
				                  </tr>				            
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Spinal Percuss</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.spinal_percusslr} <input type="checkbox" name="spinal_percusslr" value="spinal_percusslr">Right</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.spinal_percussll}<input type="checkbox" name="spinal_percussll" value="spinal_percussll">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Valsalva	</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.valsalvalr}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.valsalvall} </td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>Minors Sign</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.minors_signr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.minors_signl}</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Braggard's Test</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.braggards_testr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.braggards_testl}</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">SLR</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.slrr}     </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.slrl}</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>WLR</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.wlrr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.wlrl}</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Hoovers	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.hooversr} <input type="checkbox" name="hooversr" value="hooversr">Right</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.hooversl}<input type="checkbox" name="hooversl" value="hooversl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Dbl Leg Raise</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.dbl_leg_raiser}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.dbl_leg_raisel} </td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Long Leg Test</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.long_leg_testr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.long_leg_testl}</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Anvil Test</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.anvil_testr}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.anvil_testl} </td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Thomas	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.thomasr}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.thomasl} </td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Milgram's Test	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.milgrams_testr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.milgrams_testl}</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Obers		</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.obersr}<input type="checkbox" name="obersr" value="obersr">Right</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.obersl}<input type="checkbox" name="obersl" value="obersl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Illiac Comp	</td>
				                  <td valign="top" align="left" class="input_txt">${Hamiltonchiropractic.illiaccompr}</td>
				                 <td class="input_txt" align="left"> ${Hamiltonchiropractic.illiacompl}</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Yeomans	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.yeomansr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.yeomansl}</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Allis Sign        	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.allis_signr}  </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.allis_signl}</td>
				                 
				                  </tr>	
				                  </table>
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
				                  
				                 <div id="tabss-4">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
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
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.dugasr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.dugasl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Supraspinatus</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.supraspinatus}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.supraspinatus}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Codmans	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.codmansr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.codmansl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Speed's Test</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.speeds_testr}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.speeds_testl} </td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Yergasons</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.yergasonsr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.yergasonsl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ELBOWS</b></td>				               
				                  </tr> 
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">tinels</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.tinelsr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.tinelsl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Ligam Instab   </td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.lingaminstabr}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.lingaminstabl} </td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Golfers Elbow</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.golfers_elbowr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.golfers_elbowl}</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Tennis Elbow</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.tennis_elbowr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.tennis_elbowl}</td>
				                 <tr class="row1">
				               <td><b>WRISTS</b></td>				               
				                  </tr>
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Tinels</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.adsonslo}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.adsonslo} </td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Phalens</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.phalensr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.phalensl} </td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Finkelstein's Test</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.finkelsteins_testr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.finkelsteins_testl}</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Bracelet	</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.braceletr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.braceletl} </td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Allens</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.allensr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.allensl} </td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Valgus/Varus </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.valgus_varusr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.valgus_varusl} </td>
				                 
				                  </tr>
				                  <tr class="row1">
				               <td><b>KNEES</b></td>				               
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Pat Ball</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.pat_ballr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.pat_balll}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Drawer</td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.drawerr}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.drawerl} </td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Val/Varus  </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.val_varusr}</td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.val_varusl}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left"> Apleys   </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.apleysr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.apleysl} </td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ANKLES</b></td>				               
				                  </tr>
				                   <tr class="row1">
				                  <td width="84%" valign="middle" align="left"> Drawer  </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.drawerar}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.draweral}</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Thompsons </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.thompsonsr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.thompsonsl} </td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="84%" valign="middle" align="left">Tinels </td>
				                  <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.tinelsr}</td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.tinelsl}</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="84%" valign="middle" align="left"> Strunskys</td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.strunskysr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.strunskysl}</td>
				                 
				                  </tr>
				                 
                        <tr class="row1">
				                  <td width="84%" valign="middle" align="left"> Homans </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.homansr} </td>
				                 <td width="84%" valign="middle" align="left"> ${Hamiltonchiropractic.homansl}</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td width="84%" valign="middle" align="left">Claudication Test </td>
				                  <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.claudication_testr} </td>
				                 <td width="84%" valign="middle" align="left">${Hamiltonchiropractic.claudication_testl} </td>
				                 
				                  </tr>
            </table>
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