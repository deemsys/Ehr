<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />
 <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
   </head>
   <script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('offwork1');
 if(val=='offwork'|| val=='reeval')
   element.style.display='block';
 else  
   element.style.display='none';
} 
</script>

 <body>
 <div id="right_content">
<form action="soapnotes" method="POST" name="soapnotes">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>SOAP NOTES</h2> </center><br/>
	            
	            </div>
	            
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
          
          <tr class="row1">
<td></td><td></td>
<td></td><td></td><td></td><td></td>
<td><h2>patient</h2></td><td><input type="text" name="pname"></td>
</tr>
<tr class="row2">
<td>Chief Complaint:</td>
<td><input type="checkbox" name="headache" value="headache" >Headache</td>
<td><input type="checkbox" name="neckpain" value="Neck pain" >Neck Pain</td>
<td><input type="checkbox" name="rightshoulderpain" value="rightshoulderpain" >Right Shoulder pain</td>
<td><input type="checkbox" name="leftshoulderpain" value="leftshoulderpain" >Left Shoulder Pain</td>
<td><input type="checkbox" name="chestpain" value="chestpain" >Chest Pain</td>
<td><input type="checkbox" name="rightarmpain" value="rightarmpain" >Right Arm Pain</td>
<td><input type="checkbox" name="leftarmpain" value="leftarmpain" >Left Arm Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightelbowpain" value="rightelbowpain" >Right Elbow Pain</td>
<td><input type="checkbox" name="leftelbowpain" value="leftelbowpain" >Left Elbow Pain</td>
<td><input type="checkbox" name="rightwristpain" value="rightwristpain" >Right Wrist pain</td>
<td><input type="checkbox" name="leftwristpain" value="leftwristpain" >Left Wrist Pain</td>
<td><input type="checkbox" name="righthandpain" value="righthandpain" >Right Hand Pain</td>
<td><input type="checkbox" name="lefthandpain" value="lefthandpain" >Left Hand Pain</td>
<td><input type="checkbox" name="mbp" value="mbp" >MBP</td>
</tr>
<tr class="row2">
<td></td>
<td><input type="checkbox" name="rightribpain" value="rightribpain" >Right Rib Pain</td>
<td><input type="checkbox" name="leftribpain" value="leftribpain" >Left Rib Pain</td>
<td><input type="checkbox" name="lbp" value="lbp" >LBP</td>
<td><input type="checkbox" name="rightsipain" value="rightsipain" >Right SI Pain</td>
<td><input type="checkbox" name="leftsipain" value="leftsipain" >Left SI Pain</td>
<td><input type="checkbox" name="righthippain" value="righthippain" >Right Hip Pain</td>
<td><input type="checkbox" name="lefthippain" value="lefthippain" >Left Hip Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightgluteulpain" value="rightgluteulpain" >Right Gluteul Pain</td>
<td><input type="checkbox" name="leftgluteulpain" value="leftgluteulpain" >Left Gluteul Pain</td>
<td><input type="checkbox" name="rightlegpain" value="rightlegpain" >Right Leg Pain</td>
<td><input type="checkbox" name="leftlegpain" value="leftlegpain" >Left Leg Pain</td>
<td><input type="checkbox" name="rightkneepain" value="rightkneepain" >Right Knee Pain</td>
<td><input type="checkbox" name="leftkneepain" value="leftkneepain" >Left Knee Pain</td>
<td><input type="checkbox" name="rightanklepain" value="rightanklepain" >Right Ankle Pain</td>
</tr>
<tr class="row2">
<td></td>
<td><input type="checkbox" name="leftanklepain" value="leftanklepain" >Right Rib Pain</td>
<td><input type="checkbox" name="rightfootpain" value="rightfootpain" >right Foot Pain</td>
<td><input type="checkbox" name="leftfootpain" value="leftfootpain" >Left Foot Pain</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
 <table cellpadding="0" cellspacing="0" border="1" width="98%">
 <tr>
  <td>
<bold><center> Date </center> </bold>
  </td>
 <td>
<bold><center> S</center></bold>
 </td>
 <td>
 <bold><center>O</center></bold>
 </td>
 <td>
 <bold><center>A</center></bold>
 </td>
 <td>
 <bold><center>P</center></bold>
 </td>
 </tr>
 <tr>
 <td></td>
 <td></td>
 <td></td>
 <td>
 
 &nbsp &nbspDiagonosis:<br/>
&nbsp &nbsp 1&nbsp &nbsp &nbsp<input type="text" name="diagnosis1"><br/><br/>
&nbsp &nbsp 2&nbsp &nbsp &nbsp<input type="text" name="diagnosis2"><br/><br/>
&nbsp &nbsp 3&nbsp &nbsp &nbsp<input type="text" name="diagnosis3"><br/><br/>
&nbsp &nbsp 4&nbsp &nbsp &nbsp<input type="text" name="diagnosis4"><br/><br/>
 </td>
 <td>
 &nbsp &nbsp E1/E2 X-Rays: <select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="2" >2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="mri">MRI</option>
					<option value="lab">LAB</option>
					<option value="opinion">2nd Opinion</option>
					<option value="rehab">Rehab</option>
					<option value="stretchexer">Stretch exer</option>
					<option value="offwork">Off Work</option>
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="lifestyle">Lifestyle modifications</option>
					<option value="reeval">Re Eval.in </option>
				  </select>
				  
				  <input type="text" name="offwork1" id="offwork1" style='display:none'>
				  <input type="text" name="reeval1" id="reeval1" style='display:none'>
				  </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>
&nbsp &nbsp Improved: <select name="improved1" id="improved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved" >10%</option>
					<option value="improved1">25%</option>
					<option value="improved2">50%</option>
					<option value="improved3">75%</option>
					<option value="improved4">85%</option>
					<option value="improved5">95%</option>
&nbsp &nbsp Worsened: <select name="worsened1" id="worsened1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95">95%</option>

					</select><br/><br/><br/>

 
 &nbsp &nbsp <select name="fixation1" id="fixation1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" >Fixations</option>
					<option value="Tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger">Trigger pts.</option>
					<option value="hypertonocity">Hypertonocity</option>
					<option value="edema">Edema</option>
					<option value="Decreased ROM">Decreased ROM</option>
					<option value="shortleg">Short leg R/L Temp.Change</option>
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>

					</select></td>
 <td>

 &nbsp &nbsp<select name="notimproved1" id="notimproved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="progressslow">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly">Mildly imp.</option>
					<option value="moderatly">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury">Pre Injury Status</option>
					</select></td>
 <td>

  &nbsp &nbsp <select name="scsm1" id="scsm1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>

 
 <br/>&nbsp &nbspImproved: <select name="improved2" id="improved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>

					</select><br/><br/><br/>


&nbsp &nbsp Worsened: <select name="worsened2" id="worsened2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>

					</select></td>
 <td>

  &nbsp &nbsp <select name="fixation2" id="fixation2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger pts">Trigger pts.</option>
					<option value="hypertonocity">Hypertonocity</option>
					<option value="edema">Edema</option>
					<option value="decreased ROM">Decreased ROM</option>
					<option value="shortleg">Short leg R/L Temp.Change</option>
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved2" id="notimproved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="progressslow">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury status">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm2" id="scsm2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved3" id="improved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened3" id="worsened3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select></td>
 <td>
  &nbsp &nbsp<select name="fixation3" id="fixation3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger">Trigger pts.</option>
					<option value="hypertonocity">Hypertonocity</option>
					<option value="edema">Edema</option>
					<option value="decreased ROM">Decreased ROM</option>
					<option value="shortleg">Short leg R/L Temp.Change</option>
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved3" id="notimproved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="progressslow">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury">Pre Injury Status</option>
					</select></td>
  <td>&nbsp &nbsp<select name="scsm3" id="scsm3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
  
  </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved4" id="improved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select><br/><br/><br/>
&nbsp &nbspWorsened: <select name="worsened4" id="worsened4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select></td>
 <td>&nbsp &nbsp <select name="fixation4" id="fixation4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger pts">Trigger pts.</option>
					<option value="hypertonocity">Hypertonocity</option>
					<option value="edema">Edema</option>
					<option value="decreased">Decreased ROM</option>
					<option value="shortleg">Short leg R/L Temp.Change</option>
					<option value="atrophy">Atrophy</option>
					<option value="decr">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved4" id="notimproved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="not improved" >Not Improved</option>
					<option value="progressslow">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury">Pre Injury Status</option>
					</select></td>
 
 <td>&nbsp &nbsp<select name="scsm4" id="scsm4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved5" id="improved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value=95%">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened5" id="worsened5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select></td>
 <td>
  &nbsp &nbsp<select name="fixation5" id="fixation5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger pts">Trigger pts.</option>
					<option value="hypertonocity">Hypertonocity</option>
					<option value="edema">Edema</option>
					<option value="decreased ROM">Decreased ROM</option>
					<option value="shortleg">Short leg R/L Temp.Change</option>
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>
					</select></td>
<td>&nbsp &nbsp <select name="notimproved5" id="notimproved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="progressslow">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm5" id="scsm5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved6" id="improved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened6" id="worsened6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select></td>
 <td>&nbsp &nbsp <select name="fixation6" id="fixation6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger">Trigger pts.</option>
					<option value="hypertonocity">Hypertonocity</option>
					<option value="edema">Edema</option>
					<option value="decreased ROM">Decreased ROM</option>
					<option value="shortleg">Short leg R/L Temp.Change</option>
					<option value="atrophy">Atrophy</option>
					<option value="decr">Decr Strength</option>
					</select></td>
<td> &nbsp &nbsp<select name="notimproved6" id="notimproved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="progressslow">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm6" id="scsm6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved7" id="improved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened7" id="worsened7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select></td>
 <td> &nbsp &nbsp<select name="fixation7" id="fixation7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixations" >Fixations</option>
					<option value="tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger pts">Trigger pts.</option>
					<option value="hypertonocity">Hypertonocity</option>
					<option value="edema">Edema</option>
					<option value="decreased ROM">Decreased ROM</option>
					<option value="shortleg">Short leg R/L Temp.Change</option>
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved7" id="notimproved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="progressslow">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury ">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm7" id="scsm7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved8" id="improved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select><br/><br/><br/>
&nbsp &nbspWorsened: <select name="worsened8" id="worsened8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select></td>
 <td> &nbsp &nbsp<select name="fixation8" id="fixation8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation" >Fixations</option>
					<option value="tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="trigger">Trigger pts.</option>
					<option value="hypertonocity">Hypertonocity</option>
					<option value="edema">Edema</option>
					<option value="decreased">Decreased ROM</option>
					<option value="shortleg">Short leg R/L Temp.Change</option>
					<option value="atrophy">Atrophy</option>
					<option value="decr strength">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved8" id="notimproved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="progressslow">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly imp">Mildly imp.</option>
					<option value="moderatly imp">Moderatly imp.</option>
					<option value="plateu">Plateu</option>
					<option value="preinjury ">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm8" id="scsm8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected8" value="scsm">SCSM</option>
					<option value="ems">EMS</option>
					<option value="mass">MASS</option>
					<option value="ice">Ice</option>
					<option value="heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="tp">TP</option>
					<option value="us">US</option>
					<option value="lontophoresis">Lontophoresis</option>
					<option value="traction">Traction</option>
					<option value="nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="lightduty">Light Duty</option>
					<option value="rom">ROM</option>					
					<option value="backtowork">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer">Strength excer</option>
					<option value="rof">ROF</option>
					<option value="reexam">Re Exam </option>
					<option value="referto">Refer to </option>
					<option value="release">Release from care </option>
				  </select>
 </td>
 </tr>
 <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   </tr>
				                   </table>
				                   </table>
				                   </div>
				                   </div>
				                   </td>
				                   </tr>
				                   </table>
				                   </form>
				                   </div>
				                   </body>
				                   </html>
	      
	            
	            