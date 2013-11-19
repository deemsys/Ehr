<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>


<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <link rel="stylesheet" href="/resources/css/style.css" />
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
</script >
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
<tr class="row1">
<td>Chief Complaint:</td>
<td><input type="checkbox" name="headache" value="Headache" >Headache</td>
<td><input type="checkbox" name="neckpain" value="Neck pain" >Neck Pain</td>
<td><input type="checkbox" name="rightshoulderpain" value="Right Shoulder pain" >Right Shoulder pain</td>
<td><input type="checkbox" name="leftshoulderpain" value="Left Shoulder Pain" >Left Shoulder Pain</td>
<td><input type="checkbox" name="chestpain" value="Chest Pain" >Chest Pain</td>
<td><input type="checkbox" name="rightarmpain" value="Right Arm Pain" >Right Arm Pain</td>
<td><input type="checkbox" name="leftarmpain" value="Left Arm Pain" >Left Arm Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightelbowpain" value="Right Elbow Pain" >Right Elbow Pain</td>
<td><input type="checkbox" name="leftelbowpain" value="Left Elbow Pain" >Left Elbow Pain</td>
<td><input type="checkbox" name="rightwristpain" value="Right Wrist pain" >Right Wrist pain</td>
<td><input type="checkbox" name="leftwristpain" value="Left Wrist Pain" >Left Wrist Pain</td>
<td><input type="checkbox" name="righthandpain" value="Right Hand Pain" >Right Hand Pain</td>
<td><input type="checkbox" name="lefthandpain" value="Left Hand Pain" >Left Hand Pain</td>
<td><input type="checkbox" name="mbp" value="MBP" >MBP</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightribpain" value="Right Rib Pain" >Right Rib Pain</td>
<td><input type="checkbox" name="leftribpain" value="Left Rib Pain" >Left Rib Pain</td>
<td><input type="checkbox" name="lbp" value="LBP" >LBP</td>
<td><input type="checkbox" name="rightsipain" value="Right SI Pain" >Right SI Pain</td>
<td><input type="checkbox" name="leftsipain" value="Left SI Pain" >Left SI Pain</td>
<td><input type="checkbox" name="righthippain" value="Right Hip Pain" >Right Hip Pain</td>
<td><input type="checkbox" name="lefthippain" value="Left Hip Pain" >Left Hip Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightgluteulpain" value="Right Gluteul Pain" >Right Gluteul Pain</td>
<td><input type="checkbox" name="leftgluteulpain" value="Left Gluteul Pain" >Left Gluteul Pain</td>
<td><input type="checkbox" name="rightlegpain" value="Right Leg Pain" >Right Leg Pain</td>
<td><input type="checkbox" name="leftlegpain" value="Left Leg Pain" >Left Leg Pain</td>
<td><input type="checkbox" name="rightkneepain" value="Right Knee Pain" >Right Knee Pain</td>
<td><input type="checkbox" name="leftkneepain" value="Left Knee Pain" >Left Knee Pain</td>
<td><input type="checkbox" name="rightanklepain" value="Right Ankle Pain" >Right Ankle Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="leftanklepain" value="Right Rib Pain" >Right Rib Pain</td>
<td><input type="checkbox" name="rightfootpain" value="right Foot Pain" >right Foot Pain</td>
<td><input type="checkbox" name="leftfootpain" value="Left Foot Pain" >Left Foot Pain</td>
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
 <td>&nbsp;&nbsp;
 <input type="text" name="date1" id="datepicker1"></td>
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
 <td>&nbsp;&nbsp;
 <input type="text" name="date2" id="datepicker"></td>
 <td>
 <br/>
&nbsp &nbsp Improved: <select name="improved1" id="improved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95%">95%</option>
					</select>
					<br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened1" id="worsened1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" >10%</option>
					<option value="25%">25%</option>
					<option value="50%">50%</option>
					<option value="75%">75%</option>
					<option value="85%">85%</option>
					<option value="95">95%</option>

					</select><br/><br/><br/>
					</td>

 <td>
 &nbsp &nbsp <select name="fixation1" id="fixation1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixations" >Fixations</option>
					<option value="Tendernesstopalpation">Tendernesstopalpation</option>
					<option value="spasm">Spasm</option>
					<option value="Trigger pts">Trigger pts.</option>
					<option value="Hypertonocity">Hypertonocity</option>
					<option value="Edema">Edema</option>
					<option value="Decreased ROM">Decreased ROM</option>
					<option value="Short Leg R/L Temp.Change">Short leg R/L Temp.Change</option>
					<option value="Atrophy">Atrophy</option>
					<option value="Decr strength">Decr Strength</option>

					</select></td>
 <td>

 &nbsp &nbsp<select name="notimproved1" id="notimproved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" >Not Improved</option>
					<option value="Progress Slow Due to exacerbation">Progress Slow Due to exacerbation of CC</option>
					<option value="Mildly imp">Mildly imp.</option>
					<option value="Moderatly imp">Moderatly imp.</option>
					<option value="Plateu">Plateu</option>
					<option value="Pre Injury Status">Pre Injury Status</option>
					</select></td>
 <td>

  &nbsp &nbsp <select name="scsm1" id="scsm1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="EMS">EMS</option>
					<option value="MASS">MASS</option>
					<option value="Ice">Ice</option>
					<option value="Heat">Heat</option>
					<option value="nmr">NMR</option>
					<option value="TP">TP</option>
					<option value="US">US</option>
					<option value="Lontophoresis">Lontophoresis</option>
					<option value="Traction">Traction</option>
					<option value="Nutrition">Nutrition</option>
					<option value="Off Work">Off Work</option>
					<option value="Light Duty">Light Duty</option>
					<option value="ROM">ROM</option>					
					<option value="Back To Work 5 4 3 2x/wk">Back To Work 5 4 3 2x/wk</option>
					<option value="Strength excer">Strength excer</option>
					<option value="ROF">ROF</option>
					<option value="Re Exam">Re Exam</option>
					<option value="Refer to">Refer to </option>
					<option value="Release from care">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date3" id="datepicker2"></td>
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

					</select><br/><br/><br/></td>
 <td>

  &nbsp &nbsp <select name="fixation2" id="fixation2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixations" >Fixations</option>
					<option value="Tendernesstopalpation">Tendernesstopalpation</option>
					<option value="Spasm">Spasm</option>
					<option value="Trigger pts">Trigger pts.</option>
					<option value="Hypertonocity">Hypertonocity</option>
					<option value="Edema">Edema</option>
					<option value="Decreased ROM">Decreased ROM</option>
					<option value="Shortleg">Short leg R/L Temp.Change</option>
					<option value="Atrophy">Atrophy</option>
					<option value="Decr Strength">Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved2" id="notimproved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Not Improved" >Not Improved</option>
					<option value="Progress Slow Due to exacerbation">Progress Slow Due to exacerbation of CC</option>
					<option value="Mildly imp">Mildly imp</option>
					<option value="Moderatly imp">Moderatly imp</option>
					<option value="Plateu">Plateu</option>
					<option value="Preinjury status">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="scsm2" id="scsm2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="EMS">EMS</option>
					<option value="MASS">MASS</option>
					<option value="Ice">Ice</option>
					<option value="Heat">Heat</option>
					<option value="NMR">NMR</option>
					<option value="TP">TP</option>
					<option value="US">US</option>
					<option value="Lontophoresis">Lontophoresis</option>
					<option value="Traction">Traction</option>
					<option value="Nutrition">Nutrition</option>
					<option value="Off Work">Off Work</option>
					<option value="Light Duty">Light Duty</option>
					<option value="ROM">ROM</option>					
					<option value="Back To Work 5 4 3 2x/wk">Back To Work 5 4 3 2x/wk</option>
					<option value="Strength excer">Strength excer</option>
					<option value="ROF">ROF</option>
					<option value="Re Exam">Re Exam </option>
					<option value="Refer to">Refer to </option>
					<option value="Release from care">Release from care </option>
				  </select>
 
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date4" id="datepicker3"></td>
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
					</select><br/><br/><br/></td>
 <td>
  &nbsp &nbsp<select name="fixation3" id="fixation3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixations" >Fixations</option>
					<option value="Tendernesstopalpation">Tendernesstopalpation</option>
					<option value="Spasm">Spasm</option>
					<option value="Trigger">Trigger pts.</option>
					<option value="Hypertonocity">Hypertonocity</option>
					<option value="Edema">Edema</option>
					<option value="Decreased ROM">Decreased ROM</option>
					<option value="Shortleg">Short leg R/L Temp.Change</option>
					<option value="Atrophy">Atrophy</option>
					<option value="Decr Strength">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="notimproved3" id="notimproved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Not Improved" >Not Improved</option>
					<option value="Progress Slow Due to exacerbation">Progress Slow Due to exacerbation of CC</option>
					<option value="Mildly imp">Mildly imp</option>
					<option value="Moderatly imp">Moderatly imp</option>
					<option value="Plateu">Plateu</option>
					<option value="Pre Injury Status">Pre Injury Status</option>
					</select></td>
  <td>&nbsp &nbsp<select name="scsm3" id="scsm3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm">SCSM</option>
					<option value="EMS">EMS</option>
					<option value="MASS">MASS</option>
					<option value="Ice">Ice</option>
					<option value="Heat">Heat</option>
					<option value="NMR">NMR</option>
					<option value="TP">TP</option>
					<option value="US">US</option>
					<option value="Lontophoresis">Lontophoresis</option>
					<option value="Traction">Traction</option>
					<option value="Nutrition">Nutrition</option>
					<option value="offwork">Off Work</option>
					<option value="Lightduty">Light Duty</option>
					<option value="Rom">ROM</option>					
					<option value="Back To Work 5 4 3 2x/wk">Back To Work 5 4 3 2x/wk</option>
					<option value="strength excer">Strength excer</option>
					<option value="ROF">ROF</option>
					<option value="Re Exam">Re Exam </option>
					<option value="Refer to">Refer to </option>
					<option value="Release from care">Release from care </option>
				  </select>
  
  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;
 <input type="text" name="date5" id="datepicker4"></td>
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
					</select><br/><br/><br/></td>
 <td>&nbsp &nbsp <select name="fixation4" id="fixation4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" >Fixations</option>
					<option value="Tendernesstopalpation">Tendernesstopalpation</option>
					<option value="Spasm">Spasm</option>
					<option value="Trigger pts">Trigger pts.</option>
					<option value="Hypertonocity">Hypertonocity</option>
					<option value="Edema">Edema</option>
					<option value="Decreased">Decreased ROM</option>
					<option value="Short leg R/L Temp.Change">Short leg R/L Temp.Change</option>
					<option value="Atrophy">Atrophy</option>
					<option value="Decr Strength">Decr Strength</option>
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
 <td>&nbsp;&nbsp;
 <input type="text" name="date6" id="datepicker5"></td>
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
					</select><br/><br/><br/></td>
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
 <td>&nbsp;&nbsp;
 <input type="text" name="date7" id="datepicker6"></td>
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
					</select><br/><br/><br/></td>
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
 <td>&nbsp;&nbsp;
 <input type="text" name="date8" id="datepicker7"></td>
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
					</select><br/><br/><br/></td>
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
 <td>&nbsp;&nbsp;
 <input type="text" name="date9" id="datepicker8"></td>
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
					</select><br/><br/><br/></td>
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
 </table>
 
				                   
<br/><br/>
<table align="right"><tr><td> Physicians Signature:<input type="text" name="sign"></td></tr></table>
				                   </table>
				                   
				                   <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewsoapnotes'"></td>
				                   <td><input type="reset" class="submit_btn" value="Cancel"></td>
				                   </tr>
				                   </table>
				                   </form>
				                   </div>
				                   </body>
				                   </html>
				                   
	      
	            
	            