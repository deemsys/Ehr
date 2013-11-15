<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
  <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
	</head>
	<script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
	<body>
	<form method="POST" action="physicalexam">
<c:forEach items="${physicalexamForm.physicalexam}" var="physicalexam" varStatus="status">  
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<c:set value="${physicalexamForm.physicalexam[0]}" var="physicalexam"> </c:set>
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
	              <h2 align="center" >Chiropractic Therapy Center<br></b></h2>
	       </div></div> 
	       <div class="contentbox">
	        
	        <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                            <%-- <c:set value="${physicalexamForm.physicalexam[0]}" var="physicalexam"> </c:set> --%>
                      
	                            <tr class="row2">
				                 <td width="35%" valign="middle" align="left">Physician Signature</td>
             					 <td width="1%" valign="middle" align="left">:</td>
             					 <td width="74%" valign="middle" align="left">${physicalexam.sign}</td>
				                </tr>
				                <tr class="row1">
				                  <td width="35%" valign="middle" align="left">Patient Name</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.name}</td>
				                  
				                </tr>
				                <tr class="row2">
				                  <td width="35%" valign="middle" align="left">ID</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.id}</td>
				                </tr>
				                <tr class="row1">
				                  <td width="35%" valign="middle" align="left">Date</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.date}</td>
				                </tr>
				                <tr class="row2">
				                  <td width="35%" valign="middle" align="left">Vitals-Age</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.age}</td>
				                </tr>
				                <tr class="row1">
				                  <td width="35%" valign="middle" align="left">Sex</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.sex}</td>
				                </tr>
				                <tr class="row2">
				                  <td width="35%" valign="middle" align="left">Height</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.height}</td>
				                </tr>
				                <tr class="row1">
				                  <td width="35%" valign="middle" align="left">Weight</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.weight}</td>
				                </tr>
				                <tr class="row2">
				                  <td width="35%" valign="middle" align="left">Temp</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.temp}</td>
				                  
				                </tr>
				                <tr class="row1">
				                  <td width="35%" valign="middle" align="left">BP</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.bp}</td>
				                  
				                </tr>
				                </table>
				                <td align="left" valign="top"> 
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
				                <tr class="row2">
				                  <td width="35%" valign="middle" align="left">Pulse</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.pulse}</td>
				                 
				                </tr>
				                <tr class="row1">
				                 	<td width="35%" valign="middle" align="left">Appearance</td>
				                 	<td width="1%" valign="middle" align="left">:</td>
				                  	<td width="74%" valign="middle" align="left">${physicalexam.appearance}</td>
				                    </tr>  
				                   	 <tr class="row2">
				                 	<td width="35%" valign="middle" align="left">Weight</td>
				                 	<td width="1%" valign="middle" align="left">:</td>
				                  	<td width="74%" valign="middle" align="left">${physicalexam.weight1}</td>
				                   	 </tr>  
				                   	 <tr class="row1">
				                 	<td width="35%" valign="middle" align="left">GAIT</td>
				                 	<td width="1%" valign="middle" align="left">:</td>
				                  	<td width="74%" valign="middle" align="left">${physicalexam.gait}</td>
				                   	</tr>
				                   	 <tr class="row2">
				                  <td width="35%" valign="middle" align="left">HEAD,EENT</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.head}</td>
				                  </tr>
				                 <tr class="row1">
				                  <td width="35%" valign="middle" align="left">Visceral Pathologies</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.path}</td>
				                  </tr>
				                <tr class="row2">
				                  <td width="35%" valign="middle" align="left">Posture</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.posture}</td>
				                  </tr>
				                   	<tr class="row1">
				                  <td width="35%" valign="middle" align="left">Romberg's Sign</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.romber}</td>
				                  </tr>
				                 <tr class="row2">
				                  <td width="35%" valign="middle" align="left">CN Exam</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.exam}</td>
				                  </tr>	
				               <tr class="row1">
				                  <td width="35%" valign="middle" align="left">Abnormal Findings</td>
				                  <td width="1%" valign="middle" align="left">:</td>
				                  <td width="74%" valign="middle" align="left">${physicalexam.abnormal}</td>
				                  
				                </tr>
				               
				             
				                </table>
				               
				                </td>
				                </tr>
	</table>
	</div>
	</td>
	</tr>
	</table>
	
	
<div id="tabs">
       <ul>
          <li><a href="#tabs-1">CERVICAL SPINE</a></li>
          <li><a href="#tabs-2">THORACIC SPINE</a></li>
          <li><a href="#tabs-3">LUMBAR SPINE - SI - HIP</a></li>
       </ul>
         
   <div id="tabs-1">
	 <div id="right_content">
		 <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>CERVICAL SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                               
                        <table border="0">
				               <tr class="row1">
				               <td><b>INSPECTION:</b></td>
				               
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>Head Tilt:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.headtiltright} </td>
				                 <td class="input_txt" align="left"> ${physicalexam.headtiltleft}</td>
				                  <td class="input_txt">${physicalexam.headtiltnormal}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rotation:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.rotationright}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.rotationleft}</td>
				                  <td class="input_txt">${physicalexam.rotationnormal}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>TMJ Syndrome:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.tmjright}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.tmjleft}</td>
				                  <td class="input_txt">${physicalexam.tmjnormal}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>High Shoulder:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.highright}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.highleft}</td>
				                  <td class="input_txt">${physicalexam.highnormal}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.lordhyper}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.lordhypo}</td>
				                  <td class="input_txt">${physicalexam.lordnormal}</td>
				                 
				                  </tr>
				                
				                </table>
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Lymph Nodes:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.lymphedema}</td>
				                 <td class="input_txt" align="left">${physicalexam.lymphnormal}</td>
				                  </tr>
				                   <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.paraspain}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.parasspasm}</td>
				                  <td class="input_txt" align="left"> ${physicalexam.parasedema}</td>
				                   <td class="input_txt" align="left">${physicalexam.parastriggerpoint}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Trapezius/SCM:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.trapeziusrl}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.trapeziustono}</td>
				                  <td class="input_txt" align="left">${physicalexam.trapeziusnormal}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.vertebraefix}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.vertebraenofix}</td>
				                  </tr>
				                  </table>
				               <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 60:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.flexnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.flexpain}</td>
				                  <td class="input_txt">${physicalexam.flexspasm}</td>
				                  <td class="input_txt">${physicalexam.flexstiff}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 75:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.extnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.extpain}</td>
				                  <td class="input_txt">${physicalexam.extspasm}</td>
				                  <td class="input_txt">${physicalexam.extstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 45:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.rlfnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.rlfpain}</td>
				                  <td class="input_txt">${physicalexam.rlfspasm}</td>
				                  <td class="input_txt">${physicalexam.rlfstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 45:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.llfnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.llfpain}</td>
				                  <td class="input_txt">${physicalexam.llfspasm}</td>
				                  <td class="input_txt">${physicalexam.llfstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 80:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.rrnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.rrpain} </td>
				                  <td class="input_txt">${physicalexam.rrspasm}</td>
				                  <td class="input_txt">${physicalexam.rrstiff}</td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 80:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.lrnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.lrpain}</td>
				                  <td class="input_txt">${physicalexam.lrspasm}</td>
				                  <td class="input_txt">${physicalexam.lrstiff}</td>
				                  </tr>
				                </table>
				                
				                 <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>DERMATOMES:</td>
				                  </tr>
				               <tr class="row1">
				                  <td><b>Sensation:</td>
				                  <td valign="top" align="left" class="input_txt"><b>Normal</td>
				                 <td class="input_txt" align="left"><b>Abnormal Sensation</td>
				                  
				                 
				                  </tr>
				                <tr class="row1">
				                   <td>C-5:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.c5}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.c5right}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.c5left}</td>
				                  </tr>
				                <tr class="row1">
				                   <td>C-6:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.c6}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.c6right}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.c6left}</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-7:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.c7}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.c7right}</td>
				                 <td class="input_txt" align="left">${physicalexam.c7left}</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-8:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.c8}</td>
				                 <td class="input_txt" align="left">${physicalexam.c8right}</td>
				                 <td class="input_txt" align="left">${physicalexam.c8left}</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-1:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.t1}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.t1right}</td>
				                 <td class="input_txt" align="left">${physicalexam.t1left}</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.other}</td>
				                 <td class="input_txt" align="left">${physicalexam.otherright}</td>
				                 <td class="input_txt" align="left">${physicalexam.otherleft}</td>
				                  </tr>
				       </table>
				       
				       <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>MYOTOMES:</td>
				                  </tr>
				               <tr class="row1">
				                 <td></td>
				                  <td valign="top" align="left" class="input_txt"><b>Right</td>
				                 <td class="input_txt" align="left"><b>Left</td>
				                  </tr>
				                    <tr class="row1">
				                 <td>(Deltoid) C-5	</td>
				                 <td>${physicalexam.deltoidright}</td>
				                   		<td>${physicalexam.deltoidleft}</td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td>${physicalexam.wristright}</td>
				                   		<td>${physicalexam.wristleft}</td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Flex) C-7	</td>
				                 <td>${physicalexam.wristflexright}</td>
				                   		<td>${physicalexam.wristflexleft}</td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Flex) C-8</td>
				                 <td>${physicalexam.fingerflexright}</td>
				                   		<td>${physicalexam.fingerflexleft}</td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Add.) T-1</td>
				                 <td>${physicalexam.fingeraddright}</td>
				                   		<td>${physicalexam.fingeraddleft}</td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td>${physicalexam.wristextright}</td>
				                   		<td>${physicalexam.wristextleft}</td>
				                   		
				                  </tr>
				                 </table>
				                  <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>DEEP TENDON REFLEXES:</td>
				                  </tr>
				               <tr class="row1">
				                 <td></td>
				                  <td valign="top" align="left" class="input_txt"><b>Right</td>
				                 <td class="input_txt" align="left"><b>Left</td>
				                  </tr> 
				                  <tr class="row1">
				                 <td>C-5/6 (Bicep) </td>
				                 <td>${physicalexam.bicepright}</td>
				                   		<td>${physicalexam.bicepleft}</td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-6/7 (Bracio-Rad.)</td>
				                 <td>${physicalexam.bracioradright}</td>
				                   		<td>${physicalexam.bracioradleft}</td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-7/8 (Tricep)</td>
				                 <td>${physicalexam.tricepright}</td>
				                   		<td>${physicalexam.tricepleft}</td>
				                   		
				                  </tr>
				                 
				              </table>
				              </td>
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
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>THORACIC SPINE</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				               <td><b>INSPECTION:</b></td>
				               
				                  </tr>
				                 <tr class="row1">
				                  <td>High Shoulder:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.highshoulderright}</td>
				                 <td class="input_txt" align="left">${physicalexam.highshoulderleft}</td>
				                  <td class="input_txt">${physicalexam.highshouldernormal}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.curvatureright}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.curvatureleft}</td>
				                  <td class="input_txt">${physicalexam.curvaturenormal}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Winging:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.wingingright}</td>
				                 <td class="input_txt" align="left">${physicalexam.wingingleft}</td>
				                  <td class="input_txt">${physicalexam.wingingnormal}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Rib Hump:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.ribhumpright}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.ribhumpleft}</td>
				                  <td class="input_txt">${physicalexam.ribhumpnormal}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Chest Measure:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.chestmeasurein}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.chestmeasureex}</td>
				                  
				                  </tr>
				                  <tr class="row1">
				                   <td>kyphosis:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.kyphosishyper}</td>
				                 <td class="input_txt" align="left">${physicalexam.kyphosishypo}</td>
				                  <td class="input_txt">${physicalexam.kyphosisnormal}</td>
				                 
				                  </tr>
				                
				                </table>
				                
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.parapain}</td>
				                 <td class="input_txt" align="left">${physicalexam.paraspasm}</td>
				                 <td class="input_txt" align="left">${physicalexam.paraedema}</td>
				                 <td class="input_txt" align="left">${physicalexam.paratriggerpoint}</td>
				                  </tr> 
				                  <tr class="row1">
				                  <td>Ribs:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.ribspost}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.ribsnor}</td>
				                 </tr>
				                   <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.vertefix}</td>
				                 <td class="input_txt" align="left">${physicalexam.vertenofix}</td>
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 40:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.thoracicnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.thoracicpain}</td>
				                  <td class="input_txt">${physicalexam.thoracicspasm}</td>
				                  <td class="input_txt">${physicalexam.thoracicstiff}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.thoextnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.thoextpain}</td>
				                  <td class="input_txt">${physicalexam.thoextspasm}</td>
				                  <td class="input_txt">${physicalexam.thoextstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 30:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.thorlfnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.thorlfpain}</td>
				                  <td class="input_txt">${physicalexam.thorlfspasm}</td>
				                  <td class="input_txt">${physicalexam.thorlfstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 30:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.thollfnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.thollfpain}</td>
				                  <td class="input_txt">${physicalexam.thollfspasm}</td>
				                  <td class="input_txt">${physicalexam.thollfstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 40:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.thorrnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.thorrpain}</td>
				                  <td class="input_txt">${physicalexam.thorrspasm}</td>
				                  <td class="input_txt">${physicalexam.thorrstiff}</td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 40:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.tholrnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.tholrpain}</td>
				                  <td class="input_txt">${physicalexam.tholrspasm}</td>
				                  <td class="input_txt">${physicalexam.tholrstiff}</td>
				                  </tr>
				                </table>
				                 <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>DERMATOMES:</td>
				                  </tr>
				               <tr class="row1">
				                  <td><b>Sensation:</td>
				                  <td valign="top" align="left" class="input_txt"><b>Normal</td>
				                 <td class="input_txt" align="left"><b>Abnormal Sensation</td>
				                  
				                 
				                  </tr>
				                <tr class="row1">
				                   <td>T-1:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.thot1}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.thot1right}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.thot1left}</td>
				                  </tr>
				                <tr class="row1">
				                   <td>T-4:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.thot4}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.thot4right}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.thot4left}</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-10:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.thot10}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.thot10right}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.thot10left}</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.thoother}</td>
				                 <td class="input_txt" align="left">${physicalexam.thootherright}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.thootherleft}</td>
				                  </tr>
				                  </table>
				                  <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>MYOTOMES:</td>
				                  </tr>
				                  <tr class="row1">
				                   <td valign="top" align="left" class="input_txt">
				                  	${physicalexam.myotomes}</td>
				                  </tr>
				                  </table>
				                  <div id="positive">
				                   <table border="0">
				                   <tr class="row1">
				                    <td>${physicalexam.positiveruq}</td>
				                    <td>${physicalexam.positiveluq}</td>
				                    <td>${physicalexam.positiverlq}</td>
				                    <td>${physicalexam.positivellq}</td>
				                   </tr>
				                   </table>
				                 </div>
				                 </td>
				                 </tr>
				                 </table>
				                 </div>
				                 </td>
				                 </tr>
				                 </table>
				                 </div>
				                 </div>
				                 
				                 
				                   <div id="tabs-3">
				                 
				                 <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>LUMBAR SPINE-SI-HIP</h2>
	            </div>
	            </div>
	             <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				               <td><b>INSPECTION:</b></td>
				               </tr>
				                 <tr class="row1">
				                  <td>High Crest:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.highcrestright}</td>
				                 <td class="input_txt" align="left">${physicalexam.highcrestleft}</td>
				                  <td class="input_txt">${physicalexam.highcrestnormal}</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>High PSIS:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.highpsisright}</td>
				                 <td class="input_txt" align="left">${physicalexam.highpsisleft}</td>
				                  <td class="input_txt">${physicalexam.highpsisnormal}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.curveright}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.curveleft}</td>
				                  <td class="input_txt">${physicalexam.curvenormal}</td>
				                 </tr>
				                 <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.lordosishyper}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.lordosishypo}</td>
				                  <td class="input_txt">${physicalexam.lordosisnormal}</td>
				                 
				                  </tr>
				                  </table>
				                
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.paraspinalpain}</td>
				                 <td class="input_txt" align="left">${physicalexam.paraspinalspasm}</td>
				                 <td class="input_txt" align="left">${physicalexam.paraspinaledema}</td>
				                 <td class="input_txt" align="left">${physicalexam.paraspinaltp}</td>
				                  </tr> 
				                   <tr class="row1">
				                  <td>Quadratus Lumborum:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.quadrl}</td>
				                 <td class="input_txt" align="left">${physicalexam.quadtono}</td>
				                  <td class="input_txt" align="left">${physicalexam.quadnor}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Hamstring:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.hamstringrl}</td>
				                 <td class="input_txt" align="left"> ${physicalexam.hamstringtono}</td>
				                  <td class="input_txt" align="left"> ${physicalexam.hamstringnor}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.verfix}</td>
				                 <td class="input_txt" align="left">${physicalexam.vernofix}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Abdomen:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.abdomentender}</td>
				                 <td class="input_txt" align="left">${physicalexam.abdomenpulse}</td>
				                  <td class="input_txt" align="left">${physicalexam.abdomenascites}</td>
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>RANGE OF MOTION:(Include Degrees)</b></td>
				               <td valign="top" align="left" class="input_txt">Normal ROM </td>
				                  <td class="input_txt">Pain</td>
				                  <td class="input_txt">Spasm</td>
				                  <td class="input_txt">Stiff</td>
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>FLEX 80:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.lumflexnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.lumflexpain}</td>
				                  <td class="input_txt">${physicalexam.lumflexspasm}</td>
				                  <td class="input_txt">${physicalexam.lumflexstiff}</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 30:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.lumextnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.lumextpain}</td>
				                  <td class="input_txt">${physicalexam.lumextspasm}</td>
				                  <td class="input_txt">${physicalexam.lumextstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 25:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.lumrlfnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.lumrlfpain}</td>
				                  <td class="input_txt">${physicalexam.lumrlfspasm}</td>
				                  <td class="input_txt">${physicalexam.lumrlfstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 25:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.lumllfnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.lumllfpain}</td>
				                  <td class="input_txt">${physicalexam.lumllfspasm}</td>
				                  <td class="input_txt">${physicalexam.lumllfstiff}</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 30:</td>
				                  <td valign="top" align="left" class="input_txt"> ${physicalexam.lumrrnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.lumrrpain}</td>
				                  <td class="input_txt">${physicalexam.lumrrspasm}</td>
				                  <td class="input_txt">${physicalexam.lumrrstiff}</td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 30:</td>
				                  <td valign="top" align="left" class="input_txt">${physicalexam.lumlrnormal}</td>
				                 <td class="input_txt" align="left">${physicalexam.lumlrpain}</td>
				                  <td class="input_txt">${physicalexam.lumlrspasm}</td>
				                  <td class="input_txt">${physicalexam.lumlrstiff}</td>
				                  </tr>
				                </table>
				                 <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>MYOTOMES:</td>
				                  </tr>
				               <tr class="row1">
				                 <td></td>
				                  <td valign="top" align="left" class="input_txt"><b>Right</td>
				                 <td class="input_txt" align="left"><b>Left</td>
				                  </tr>
				                    <tr class="row1">
				                 <td>(Hip Flex) L-5	</td>
				                 <td>${physicalexam.hipflexright}</td>
				                   		<td>${physicalexam.hipflexleft}</td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Leg Ext.) L-3	</td>
				                 <td>${physicalexam.legextright}</td>
				                   		<td>${physicalexam.legextleft}</td>
				                   		
				                  </tr>
				              
				                    <tr class="row1">
				                 <td>(Dorsiflex) L-4	</td>
				                 <td>${physicalexam.dorsiflexright}</td>
				                   		<td>${physicalexam.dorsiflexleft}</td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(1st digit flex.) L-5	</td>
				                 <td>${physicalexam.digitflexright}</td>
				                   		<td>${physicalexam.digitflexleft}</td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                  <td>(Heel Walk)L-4/5</td>
				                 <td>${physicalexam.heelright}</td>
				                 <td>${physicalexam.heelleft}</td>
				                  
				                  </tr>
				                   <tr class="row1">
				                  <td>(Toe Walk)S-1/2</td>
				                  <td>${physicalexam.toeright}</td>
				                  <td>${physicalexam.toeleft}</td>
				                  </tr>
				                  </table>
				                   <table border="0">
				               <tr class="row1">
				               <td><b>NEURO-EXAM:</b></td>
				               <td><b>DEEP TENDON REFLEXES:</td>
				                  </tr>
				               <tr class="row1">
				                 <td></td>
				                  <td valign="top" align="left" class="input_txt"><b>Right</td>
				                 <td class="input_txt" align="left"><b>Left</td>
				                  </tr> 
				                  <tr class="row1">
				                 <td>L-2,3,4 (Patellar) </td>
				                 <td>${physicalexam.patellarright}</td>
				                   		<td>${physicalexam.patellarleft}</td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>L-5,S-1,2(Achilles)</td>
				                 <td>${physicalexam.achillesright}</td>
				                   		<td>${physicalexam.achillesleft}</td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                  <td>Babinski(UMNL)</td>
				                  
				                  <td>${physicalexam.babinskiright}</td>
				                  <td>${physicalexam.babinskileft}</td>
				                  </tr>
				                  
				                  </table>
				                 <!--  <table align="right">
				                  <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td>&nbsp;&nbsp;</td>
				                    <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewphysicalexam'"></td>
				                    <td>&nbsp;&nbsp;</td>
				                    <td><input type="reset" class="submit_btn" value="Cancel"></td>
				                  </tr>
				                  </table> -->
				                   </td>
				                  </tr>
				                  </table>
				                 
				                  </div>
				                  </td>
				                  </tr>
				                  </table>
				                  
				               
				                  </div>
				                  </div>
				                  </div>
				                  </c:forEach>
				                  </form>
				                  </body>
				                  </html>
				                  
				                   
				                   
				                   
				                   
				                  
				                   		
				                
				                  
<script type="text/javascript">
function toggle3(value){
	/* alert(value); */
	var e = document.getElementById('positive');
if(value=='show3')
 e.style.display="block";
else
 e.style.display="none";
}
</script>				              
 <jsp:include page="footer.jsp"></jsp:include>
