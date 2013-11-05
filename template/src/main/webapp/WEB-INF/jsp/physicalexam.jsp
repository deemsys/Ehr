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
	                            <div id="tabs">
                                 <ul>
                                   <li><a href="#tabs-1">CERVICAL SPINE</a></li>
                                   <li><a href="#tabs-2">TOSTHORACIC SPINE</a></li>
                                   <li><a href="#tabs-3">LUMBAR SPINE - SI - HIP</a></li>
                                 </ul>
                                 
<form method="POST" action="physicalexam">

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">

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
	                            <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Physician Signature :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sign" />
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="name" />
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>ID :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="id" />
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date :</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="date" />
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Vitals-Age:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="age" />
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Sex:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="sex" />
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Height:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="height" />
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="weight" />
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Temp:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="temp" />
				                  </td>
				                </tr>
				                <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>BP:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="bp" />
				                  </td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Pulse:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="pulse" />
				                  </td>
				                </tr>
				                <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Appearance:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="Appearance" class="input_cmbbx1">
						                    <option selected="selected" value="excellent" >Excellent</option>
											<option value="good">Good</option>
											<option value="fair">Fair</option>
											<option value="Severe">Severe</option>
				                   		</select>
				                   	</td> </tr>  
				                   	 <tr class="row2">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Weight:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name=weight"" class="input_cmbbx1">
						                    <option selected="selected" value="un" >UN</option>
											<option value="n">N</option>
											<option value="wn">WN</option>
				                   		</select>
				                   	</td> </tr>  
				                   	 <tr class="row1">
				                 	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>GAIT:</td>
				                  	<td valign="top" align="left" class="input_txt">
				                  		<select name="gait" class="input_cmbbx1">
						                    <option selected="selected" value="antalgic" >Antalgic</option>
											<option value="limp">Limp</option>
											<option value="sway">Sway</option>
											<option value="stagger">Stagger</option>
											<option value="normal">Normal</option>
				                   		</select>
				                   		
				                   	</td> </tr>
				                   	 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>HEAD,EENT:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="head" value="0" class="input_txt" checked="true">Normal&nbsp;&nbsp;&nbsp;<input type="radio" name="head" value="1" class="input_txt">Abnormal&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                 <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Visceral Pathologies:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="path" value="0" class="input_txt" checked="true">Normal&nbsp;&nbsp;&nbsp;<input type="radio" name="path" value="1" class="input_txt">Female&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Posture:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="posture" value="0" class="input_txt" checked="true">Good&nbsp;&nbsp;<input type="radio" name="posture" value="1" class="input_txt">Poor&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                   	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Romberg's Sign:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="romber" value="0" class="input_txt" checked="true">Present&nbsp;&nbsp;&nbsp;<input type="radio" name="romber" value="1" class="input_txt">NotPresent&nbsp;&nbsp;&nbsp;</td>
				                </tr>
				                 <tr class="row2">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>CN Exam:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="radio" name="exam" value="0" class="input_txt" checked="true">Normal&nbsp;&nbsp;&nbsp;<input type="radio" name="exam" value="1" class="input_txt">DNP&nbsp;&nbsp;&nbsp;</td>
				                </tr>  	
				               <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Abnormal Findings:</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="abnormal" />
				                  </td>
				                </tr>
				                </div>
				              
				                </table>
				               
				                </td>
				                </tr>
				              </div>
         
          <div id="tabs-2">
          
				                <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>Cervical Spine</h2>
	            </div>
	            </div>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				               <td><b>INSPECTION:</b></td>
				               
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>Head Tilt:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="Head Tilt" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rotation:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Rotation" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Rotation" value="HeadTilt">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="Rotation" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>TMJ Syndrome:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="TMJ" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="TMJ" value="HeadTilt">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="TMJ" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>High Shoulder:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="High" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="High" value="HeadTilt">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="High" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Lordosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Lord" value="HeadTilt">Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Lord" value="HeadTilt">Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="Lord" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                </tr>
				                </table>
				                <table border="0">
				               <tr class="row1">
				               <td><b>PALPATION:</b></td>
				               
				                  </tr>
				                <tr class="row1">
				                  <td>Lymph Nodes:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Lymphedema</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Normal</td>
				                  </tr>
				                   <tr class="row1">
				                  <td>Paraspinal:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Pain</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Spasm</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Edema</td>
				                   <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">TriggerPoint</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Trapezius/SCM:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Head Tilt" value="HeadTilt">R-L</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Tonicity</td>
				                  <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Normal</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Vertebrae:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Fixations</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">No Fixations</td>
				                  </tr>
				                  
				              
				                
				                
				                
				                
				                
				                
				                
				                
				                
				                
				                
				                
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
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  </tr>
				                  <tr class="row1">
				                  <td>EXT 75:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RLF 45:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>LLF 45:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>RR 800:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  </tr>
				                <tr class="row1">
				                   <td>LR 80:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                  <td class="input_txt"><input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Left</td>
				                  </tr>
				                <tr class="row1">
				                   <td>C-6:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-7:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>C-8:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>T-1:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Left</td>
				                  </tr>
				                  <tr class="row1">
				                   <td>Other:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="text" class="input_txtbx1" id="inp_id" name="pulse" /></td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Left</td>
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
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                   <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Flex) C-7	</td>
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Flex) C-8</td>
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Finger Add.) T-1</td>
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>(Wrist Ext.) C-6	</td>
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											<option value="2">5</option>
				                   		</select></td>
				                   		
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
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-6/7 (Bracio-Rad.)</td>
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="2">3</option>
											<option value="2">4</option>
											
				                   		</select></td>
				                   		
				                  </tr>
				                  <tr class="row1">
				                 <td>C-7/8 (Tricep)</td>
				                 <td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
				                   		</select></td>
				                   		<td><select name="myotomes">
						                    <option selected="selected" value="0" >0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											
				                   		</select></td>
				                   		
				                  </tr>
				                 
				                 </table> 
				                 
				                 <div id="right_content">
				                
        <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left">
        	<div> 
        	<div class="headings altheading">
        	<h2>THORACIC SPINE</h2>
	            </div>
	            </div>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        
                        <table border="0">
				               <tr class="row1">
				               <td><b>INSPECTION:</b></td>
				               
				                  </tr>
				                 <tr class="row1">
				                  <td>High Shoulder:<td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Head Tilt" value="HeadTilt">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="Head Tilt" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Curvature:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Rotation" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Rotation" value="HeadTilt">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="Rotation" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Winging:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="TMJ" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="TMJ" value="HeadTilt">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="TMJ" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Rib Hump:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="High" value="HeadTilt">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="High" value="HeadTilt">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="High" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td>Chest Measure:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Lord" value="HeadTilt">Inhale</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Lord" value="HeadTilt">Exhale</td>
				                  
				                  </tr>
				                  <tr class="row1">
				                   <td>kyphosis:</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="Lord" value="HeadTilt">Hyper</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="Lord" value="HeadTilt">Hypo</td>
				                  <td class="input_txt"><input type="checkbox" name="Lord" value="HeadTilt">Normal</td>
				                 
				                  </tr>
				                
				                </table>
				                  
				                  
				       
				       
				       
				       
				       
				                </td>
				                </tr>
				                </table>
				                
				                </td>
				                </tr>
				                </table>
				                </div>
				               </div>
				               
				             
				               
				                </table>
				                </div>
				                </td>
				                </tr>
				                
				            
				                
				                </table>
				                </form>
				                </div>
				                </body>
				                </html>
				               
	       
