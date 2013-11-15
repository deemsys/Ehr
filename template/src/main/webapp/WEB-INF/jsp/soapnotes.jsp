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
<td><input type="checkbox" name="headache" value="headache" >Head Ache</td>
<td><input type="checkbox" name="neckpain" value="neckpain" >Neck Pain</td>
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
 
 Diagonosis:<br/>
&nbsp &nbsp 1&nbsp &nbsp &nbsp<input type="text" name="diagnosis1"><br/><br/>
&nbsp &nbsp 2&nbsp &nbsp &nbsp<input type="text" name="diagnosis2"><br/><br/>
&nbsp &nbsp 3&nbsp &nbsp &nbsp<input type="text" name="diagnosis3"><br/><br/>
&nbsp &nbsp 4&nbsp &nbsp &nbsp<input type="text" name="diagnosis4">
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
&nbsp &nbsp Improved: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved" >10%</option>
					<option value="improved1">25%</option>
					<option value="improved2">50%</option>
					<option value="improved3">75%</option>
					<option value="improved4">85%</option>
					<option value="improved5">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="worsened" >10%</option>
					<option value="worsened1">25%</option>
					<option value="worsened2">50%</option>
					<option value="worsened3">75%</option>
					<option value="worsened4">85%</option>
					<option value="worsened5">95%</option>
					</select></td>
 <td>
 &nbsp &nbsp <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation1" >Fixations</option>
					<option value="tender1">Tendernesstopalpation</option>
					<option value="spasm1">Spasm</option>
					<option value="trigger1">Trigger pts.</option>
					<option value="hypertonocity1">Hypertonocity</option>
					<option value="edema1">Edema</option>
					<option value="decreased1">Decreased ROM</option>
					<option value="shortleg1">Short leg R/L Temp.Change</option>
					<option value="atrophy1">Atrophy</option>
					<option value="decr1">Decr Strength</option>
					</select></td>
 <td>
 &nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved1" >Not Improved</option>
					<option value="progressslow1">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly1">Mildly imp.</option>
					<option value="moderatly1">Moderatly imp.</option>
					<option value="plateu1">Plateu</option>
					<option value="preinjury1">Pre Injury Status</option>
					</select></td>
 <td>
 &nbsp &nbsp <select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm1">SCSM</option>
					<option value="ems1">EMS</option>
					<option value="mass1">MASS</option>
					<option value="ice1">Ice</option>
					<option value="heat1">Heat</option>
					<option value="nmr1">NMR</option>
					<option value="tp1">TP</option>
					<option value="us1">US</option>
					<option value="lontophoresis1">Lontophoresis</option>
					<option value="traction1">Traction</option>
					<option value="nutrition1">Nutrition</option>
					<option value="offwork1">Off Work</option>
					<option value="lightduty1">Light Duty</option>
					<option value="rom1">ROM</option>					
					<option value="backtowork1">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer1">Strength excer</option>
					<option value="rof1">ROF</option>
					<option value="reexam1">Re Exam </option>
					<option value="referto1">Refer to </option>
					<option value="release1">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved6" >10%</option>
					<option value="improved7">25%</option>
					<option value="improved8">50%</option>
					<option value="improved9">75%</option>
					<option value="improved10">85%</option>
					<option value="improved11">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="worsened6" >10%</option>
					<option value="worsened7">25%</option>
					<option value="worsened8">50%</option>
					<option value="worsened9">75%</option>
					<option value="worsened10">85%</option>
					<option value="worsened11">95%</option>
					</select></td>
 <td>
 &nbsp &nbsp <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation2" >Fixations</option>
					<option value="tender2">Tendernesstopalpation</option>
					<option value="spasm2">Spasm</option>
					<option value="trigger2">Trigger pts.</option>
					<option value="hypertonocity2">Hypertonocity</option>
					<option value="edema2">Edema</option>
					<option value="decreased2">Decreased ROM</option>
					<option value="shortleg2">Short leg R/L Temp.Change</option>
					<option value="atrophy2">Atrophy</option>
					<option value="decr2">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved2" >Not Improved</option>
					<option value="progressslow2">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly2">Mildly imp.</option>
					<option value="moderatly2">Moderatly imp.</option>
					<option value="plateu2">Plateu</option>
					<option value="preinjury2">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm2">SCSM</option>
					<option value="ems2">EMS</option>
					<option value="mass2">MASS</option>
					<option value="ice2">Ice</option>
					<option value="heat2">Heat</option>
					<option value="nmr2">NMR</option>
					<option value="tp2">TP</option>
					<option value="us2">US</option>
					<option value="lontophoresis2">Lontophoresis</option>
					<option value="traction2">Traction</option>
					<option value="nutrition2">Nutrition</option>
					<option value="offwork2">Off Work</option>
					<option value="lightduty2">Light Duty</option>
					<option value="rom2">ROM</option>					
					<option value="backtowork2">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer2">Strength excer</option>
					<option value="rof2">ROF</option>
					<option value="reexam2">Re Exam </option>
					<option value="referto2">Refer to </option>
					<option value="release2">Release from care </option>
				  </select>
 
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved12" >10%</option>
					<option value="improved13">25%</option>
					<option value="improved14">50%</option>
					<option value="improved15">75%</option>
					<option value="improved16">85%</option>
					<option value="improved17">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="worsened12" >10%</option>
					<option value="worsened13">25%</option>
					<option value="worsened14">50%</option>
					<option value="worsened15">75%</option>
					<option value="worsened16">85%</option>
					<option value="worsened17">95%</option>
					</select></td>
 <td>
  &nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation3" >Fixations</option>
					<option value="tender3">Tendernesstopalpation</option>
					<option value="spasm3">Spasm</option>
					<option value="trigger3">Trigger pts.</option>
					<option value="hypertonocity3">Hypertonocity</option>
					<option value="edema3">Edema</option>
					<option value="decreased3">Decreased ROM</option>
					<option value="shortleg3">Short leg R/L Temp.Change</option>
					<option value="atrophy3">Atrophy</option>
					<option value="decr3">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved3" >Not Improved</option>
					<option value="progressslow3">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly3">Mildly imp.</option>
					<option value="moderatly3">Moderatly imp.</option>
					<option value="plateu3">Plateu</option>
					<option value="preinjury3">Pre Injury Status</option>
					</select></td>
  <td>&nbsp &nbsp<select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm3">SCSM</option>
					<option value="ems3">EMS</option>
					<option value="mass3">MASS</option>
					<option value="ice3">Ice</option>
					<option value="heat3">Heat</option>
					<option value="nmr3">NMR</option>
					<option value="tp3">TP</option>
					<option value="us3">US</option>
					<option value="lontophoresis3">Lontophoresis</option>
					<option value="traction3">Traction</option>
					<option value="nutrition3">Nutrition</option>
					<option value="offwork3">Off Work</option>
					<option value="lightduty3">Light Duty</option>
					<option value="rom3">ROM</option>					
					<option value="backtowork3">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer3">Strength excer</option>
					<option value="rof3">ROF</option>
					<option value="reexam3">Re Exam </option>
					<option value="referto3">Refer to </option>
					<option value="release3">Release from care </option>
				  </select>
  
  </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved18" >10%</option>
					<option value="improved19">25%</option>
					<option value="improved20">50%</option>
					<option value="improved21">75%</option>
					<option value="improved22">85%</option>
					<option value="improved23">95%</option>
					</select><br/><br/><br/>
&nbsp &nbspWorsened: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="worsened18" >10%</option>
					<option value="worsened19">25%</option>
					<option value="worsened20">50%</option>
					<option value="worsened21">75%</option>
					<option value="worsened22">85%</option>
					<option value="worsened23">95%</option>
					</select></td>
 <td>&nbsp &nbsp <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation4" >Fixations</option>
					<option value="tender4">Tendernesstopalpation</option>
					<option value="spasm4">Spasm</option>
					<option value="trigger4">Trigger pts.</option>
					<option value="hypertonocity4">Hypertonocity</option>
					<option value="edema4">Edema</option>
					<option value="decreased4">Decreased ROM</option>
					<option value="shortleg4">Short leg R/L Temp.Change</option>
					<option value="atrophy4">Atrophy</option>
					<option value="decr4">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved4" >Not Improved</option>
					<option value="progressslow4">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly4">Mildly imp.</option>
					<option value="moderatly4">Moderatly imp.</option>
					<option value="plateu4">Plateu</option>
					<option value="preinjury4">Pre Injury Status</option>
					</select></td>
 
 <td>&nbsp &nbsp<select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm4">SCSM</option>
					<option value="ems4">EMS</option>
					<option value="mass4">MASS</option>
					<option value="ice4">Ice</option>
					<option value="heat4">Heat</option>
					<option value="nmr4">NMR</option>
					<option value="tp4">TP</option>
					<option value="us4">US</option>
					<option value="lontophoresis4">Lontophoresis</option>
					<option value="traction4">Traction</option>
					<option value="nutrition4">Nutrition</option>
					<option value="offwork4">Off Work</option>
					<option value="lightduty4">Light Duty</option>
					<option value="rom4">ROM</option>					
					<option value="backtowork4">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer4">Strength excer</option>
					<option value="rof4">ROF</option>
					<option value="reexam4">Re Exam </option>
					<option value="referto4">Refer to </option>
					<option value="release4">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved24" >10%</option>
					<option value="improved25">25%</option>
					<option value="improved26">50%</option>
					<option value="improved27">75%</option>
					<option value="improved28">85%</option>
					<option value="improved29">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="worsened24" >10%</option>
					<option value="worsened25">25%</option>
					<option value="worsened26">50%</option>
					<option value="worsened27">75%</option>
					<option value="worsened28">85%</option>
					<option value="worsened29">95%</option>
					</select></td>
 <td>
  &nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation5" >Fixations</option>
					<option value="tender5">Tendernesstopalpation</option>
					<option value="spasm5">Spasm</option>
					<option value="trigger5">Trigger pts.</option>
					<option value="hypertonocity5">Hypertonocity</option>
					<option value="edema5">Edema</option>
					<option value="decreased5">Decreased ROM</option>
					<option value="shortleg5">Short leg R/L Temp.Change</option>
					<option value="atrophy5">Atrophy</option>
					<option value="decr5">Decr Strength</option>
					</select></td>
<td>&nbsp &nbsp <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved5" >Not Improved</option>
					<option value="progressslow5">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly5">Mildly imp.</option>
					<option value="moderatly5">Moderatly imp.</option>
					<option value="plateu5">Plateu</option>
					<option value="preinjury5">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm5">SCSM</option>
					<option value="ems5">EMS</option>
					<option value="mass5">MASS</option>
					<option value="ice5">Ice</option>
					<option value="heat5">Heat</option>
					<option value="nmr5">NMR</option>
					<option value="tp5">TP</option>
					<option value="us5">US</option>
					<option value="lontophoresis5">Lontophoresis</option>
					<option value="traction5">Traction</option>
					<option value="nutrition5">Nutrition</option>
					<option value="offwork5">Off Work</option>
					<option value="lightduty5">Light Duty</option>
					<option value="rom5">ROM</option>					
					<option value="backtowork5">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer5">Strength excer</option>
					<option value="rof5">ROF</option>
					<option value="reexam5">Re Exam </option>
					<option value="referto5">Refer to </option>
					<option value="release5">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved30" >10%</option>
					<option value="improved31">25%</option>
					<option value="improved32">50%</option>
					<option value="improved33">75%</option>
					<option value="improved34">85%</option>
					<option value="improved35">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="worsened30" >10%</option>
					<option value="worsened31">25%</option>
					<option value="worsened32">50%</option>
					<option value="worsened33">75%</option>
					<option value="worsened34">85%</option>
					<option value="worsened35">95%</option>
					</select></td>
 <td>&nbsp &nbsp <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation6" >Fixations</option>
					<option value="tender6">Tendernesstopalpation</option>
					<option value="spasm6">Spasm</option>
					<option value="trigger6">Trigger pts.</option>
					<option value="hypertonocity6">Hypertonocity</option>
					<option value="edema6">Edema</option>
					<option value="decreased6">Decreased ROM</option>
					<option value="shortleg6">Short leg R/L Temp.Change</option>
					<option value="atrophy6">Atrophy</option>
					<option value="decr6">Decr Strength</option>
					</select></td>
<td> &nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved6" >Not Improved</option>
					<option value="progressslow6">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly6">Mildly imp.</option>
					<option value="moderatly6">Moderatly imp.</option>
					<option value="plateu6">Plateu</option>
					<option value="preinjury6">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm6">SCSM</option>
					<option value="ems6">EMS</option>
					<option value="mass6">MASS</option>
					<option value="ice6">Ice</option>
					<option value="heat6">Heat</option>
					<option value="nmr6">NMR</option>
					<option value="tp6">TP</option>
					<option value="us6">US</option>
					<option value="lontophoresis6">Lontophoresis</option>
					<option value="traction6">Traction</option>
					<option value="nutrition6">Nutrition</option>
					<option value="offwork6">Off Work</option>
					<option value="lightduty6">Light Duty</option>
					<option value="rom6">ROM</option>					
					<option value="backtowork6">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer6">Strength excer</option>
					<option value="rof6">ROF</option>
					<option value="reexam6">Re Exam </option>
					<option value="referto6">Refer to </option>
					<option value="release6">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved36" >10%</option>
					<option value="improved37">25%</option>
					<option value="improved38">50%</option>
					<option value="improved39">75%</option>
					<option value="improved40">85%</option>
					<option value="improved41">95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="worsened36" >10%</option>
					<option value="worsened37">25%</option>
					<option value="worsened38">50%</option>
					<option value="worsened39">75%</option>
					<option value="worsened40">85%</option>
					<option value="worsened41">95%</option>
					</select></td>
 <td> &nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation7" >Fixations</option>
					<option value="tender7">Tendernesstopalpation</option>
					<option value="spasm7">Spasm</option>
					<option value="trigger7">Trigger pts.</option>
					<option value="hypertonocity7">Hypertonocity</option>
					<option value="edema7">Edema</option>
					<option value="decreased7">Decreased ROM</option>
					<option value="shortleg7">Short leg R/L Temp.Change</option>
					<option value="atrophy7">Atrophy</option>
					<option value="decr7">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved7" >Not Improved</option>
					<option value="progressslow7">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly7">Mildly imp.</option>
					<option value="moderatly7">Moderatly imp.</option>
					<option value="plateu7">Plateu</option>
					<option value="preinjury7">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm7">SCSM</option>
					<option value="ems7">EMS</option>
					<option value="mass7">MASS</option>
					<option value="ice7">Ice</option>
					<option value="heat7">Heat</option>
					<option value="nmr7">NMR</option>
					<option value="tp7">TP</option>
					<option value="us7">US</option>
					<option value="lontophoresis7">Lontophoresis</option>
					<option value="traction7">Traction</option>
					<option value="nutrition7">Nutrition</option>
					<option value="offwork7">Off Work</option>
					<option value="lightduty7">Light Duty</option>
					<option value="rom7">ROM</option>					
					<option value="backtowork7">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer7">Strength excer</option>
					<option value="rof7">ROF</option>
					<option value="reexam7">Re Exam </option>
					<option value="referto7">Refer to </option>
					<option value="release7">Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="improved42" >10%</option>
					<option value="improved43">25%</option>
					<option value="improved44">50%</option>
					<option value="improved45">75%</option>
					<option value="improved46">85%</option>
					<option value="improved47">95%</option>
					</select><br/><br/><br/>
&nbsp &nbspWorsened: <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="worsened42" >10%</option>
					<option value="worsened43">25%</option>
					<option value="worsened44">50%</option>
					<option value="worsened45">75%</option>
					<option value="worsened46">85%</option>
					<option value="worsened47">95%</option>
					</select></td>
 <td> &nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="fixation8" >Fixations</option>
					<option value="tender8">Tendernesstopalpation</option>
					<option value="spasm8">Spasm</option>
					<option value="trigger8">Trigger pts.</option>
					<option value="hypertonocity8">Hypertonocity</option>
					<option value="edema8">Edema</option>
					<option value="decreased8">Decreased ROM</option>
					<option value="shortleg8">Short leg R/L Temp.Change</option>
					<option value="atrophy8">Atrophy</option>
					<option value="decr8">Decr Strength</option>
					</select></td>
 <td>&nbsp &nbsp<select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved8" >Not Improved</option>
					<option value="progressslow8">Progress Slow Due to exacerbation of CC</option>
					<option value="mildly8">Mildly imp.</option>
					<option value="moderatly8">Moderatly imp.</option>
					<option value="plateu8">Plateu</option>
					<option value="preinjury8">Pre Injury Status</option>
					</select></td>
 <td>&nbsp &nbsp<select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected8" value="scsm">SCSM</option>
					<option value="ems8">EMS</option>
					<option value="mass8">MASS</option>
					<option value="ice8">Ice</option>
					<option value="heat8">Heat</option>
					<option value="nmr8">NMR</option>
					<option value="tp8">TP</option>
					<option value="us8">US</option>
					<option value="lontophoresis8">Lontophoresis</option>
					<option value="traction8">Traction</option>
					<option value="nutrition8">Nutrition</option>
					<option value="offwork8">Off Work</option>
					<option value="lightduty8">Light Duty</option>
					<option value="rom8">ROM</option>					
					<option value="backtowork8">Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer8">Strength excer</option>
					<option value="rof8">ROF</option>
					<option value="reexam8">Re Exam </option>
					<option value="referto8">Refer to </option>
					<option value="release8">Release from care </option>
				  </select>
 </td>
 </tr>
 
	      
	            
	            