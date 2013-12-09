<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<form  method="POST" action="updatesoapnotes" name="update" id="update">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>Editing Soap Notes</h2> </center><br/>
	             <!-- <td><a href="doctorsearch">doctersearch</a></td> -->
	            
	            </div></div>
	            
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           <tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
    					<c:set value="${soapnotesForm.soapnotes[0]}" var="soapnotes"/>
<table align="right">
    <tr class="row1">
       <td><h2>patient:</h2></td>
              <input type="hidden" class="input_txtbx1" id="inp_id" value="${soapnotes.soapid}" name="soapid" />
              <td><input type="text" class="input_txtbx1" name="pname" value="${soapnotes.pname}" /></td>
             </tr>
        </table>
        
 <table cellpadding="0" cellspacing="0" border="0" width="98%">
<tr class="row1">
<td>Chief Complaint:</td>
<td><input type="checkbox" name="headache" value="Headache" <c:if test="${soapnotes.headache=='Headache'}"><c:out value="Checked"/></c:if>   />Headache</td>
<td><input type="checkbox" name="neckpain" value="Neck pain" <c:if test="${soapnotes.neckpain=='Neck pain'}"><c:out value="checked=checked"/></c:if>>Neck Pain</td>
<td><input type="checkbox" name="rightshoulderpain" value="Right Shoulder pain" <c:if test="${soapnotes.rightshoulderpain=='Right Shoulder pain'}"><c:out value="checked=checked"/></c:if>>Right Shoulder pain</td>
<td><input type="checkbox" name="leftshoulderpain" value="Left Shoulder Pain" <c:if test="${soapnotes.leftshoulderpain=='Left Shoulder Pain'}"><c:out value="checked=checked"/></c:if>>Left Shoulder Pain</td>
<td><input type="checkbox" name="chestpain" value="Chest Pain" <c:if test="${soapnotes.chestpain=='Chest Pain'}"><c:out value="checked=checked"/></c:if>>Chest Pain</td>
<td><input type="checkbox" name="rightarmpain" value="Right Arm Pain" <c:if test="${soapnotes.rightarmpain=='Right Arm Pain'}"><c:out value="checked=checked"/></c:if>>Right Arm Pain</td>
<td><input type="checkbox" name="leftarmpain" value="Left Arm Pain" <c:if test="${soapnotes.leftarmpain=='Left Arm Pain'}"><c:out value="checked=checked"/></c:if>>Left Arm Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightelbowpain" value="Right Elbow Pain" <c:if test="${soapnotes.rightelbowpain=='Right Elbow Pain'}"><c:out value="checked=checked"/></c:if>>Right Elbow Pain</td>
<td><input type="checkbox" name="leftelbowpain" value="Left Elbow Pain" <c:if test="${soapnotes.leftelbowpain=='Left Elbow Pain'}"><c:out value="checked=checked"/></c:if>>Left Elbow Pain</td>
<td><input type="checkbox" name="rightwristpain" value="Right Wrist Pain" <c:if test="${soapnotes.rightwristpain=='Right Wrist Pain'}"><c:out value="checked=checked"/></c:if>>Right Wrist pain</td>
<td><input type="checkbox" name="leftwristpain" value="Left Wrist Pain" <c:if test="${soapnotes.leftwristpain=='Left Wrist Pain'}"><c:out value="checked=checked"/></c:if>>Left Wrist Pain</td>
<td><input type="checkbox" name="righthandpain" value="Right Hand Pain" <c:if test="${soapnotes.righthandpain=='Right Hand Pain'}"><c:out value="checked=checked"/></c:if>>Right Hand Pain</td>
<td><input type="checkbox" name="lefthandpain" value="Left Hand Pain" <c:if test="${soapnotes.lefthandpain=='Left Hand Pain'}"><c:out value="checked=checked"/></c:if>>Left Hand Pain</td>
<td><input type="checkbox" name="mbp" value="MBP" <c:if test="${soapnotes.mbp=='MBP'}"><c:out value="checked=checked"/></c:if>>MBP</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightribpain" value="Right Rib Pain" <c:if test="${soapnotes.rightribpain=='Right Rib Pain'}"><c:out value="checked=checked"/></c:if>>Right Rib Pain</td>
<td><input type="checkbox" name="leftribpain" value="Left Rib Pain" <c:if test="${soapnotes.leftribpain=='Left Rib Pain'}"><c:out value="checked=checked"/></c:if>>Left Rib Pain</td>
<td><input type="checkbox" name="lbp" value="LBP" <c:if test="${soapnotes.lbp=='LBP'}"><c:out value="checked=checked"/></c:if>>LBP</td>
<td><input type="checkbox" name="rightsipain" value="Right SI Pain" <c:if test="${soapnotes.rightsipain=='Right SI Pain'}"><c:out value="checked=checked"/></c:if>>Right SI Pain</td>
<td><input type="checkbox" name="leftsipain" value="Left SI Pain" <c:if test="${soapnotes.leftsipain=='Left SI Pain'}"><c:out value="checked=checked"/></c:if>>Left SI Pain</td>
<td><input type="checkbox" name="righthippain" value="Right Hip Pain" <c:if test="${soapnotes.righthippain=='Right Hip Pain'}"><c:out value="checked=checked"/></c:if>>Right Hip Pain</td>
<td><input type="checkbox" name="lefthippain" value="Left Hip Pain" <c:if test="${soapnotes.lefthippain=='Left Hip Pain'}"><c:out value="checked=checked"/></c:if>>Left Hip Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightgluteulpain" value="Right Gluteul Pain" <c:if test="${soapnotes.rightgluteulpain=='Right Gluteul Pain'}"><c:out value="checked=checked"/></c:if>>Right Gluteul Pain</td>
<td><input type="checkbox" name="leftgluteulpain" value="Left Gluteul Pain" <c:if test="${soapnotes.leftgluteulpain=='Left Gluteul Pain'}"><c:out value="checked=checked"/></c:if>>Left Gluteul Pain</td>
<td><input type="checkbox" name="rightlegpain" value="Right Leg Pain" <c:if test="${soapnotes.rightlegpain=='Right Leg Pain'}"><c:out value="checked=checked"/></c:if>>Right Leg Pain</td>
<td><input type="checkbox" name="leftlegpain" value="Left Leg Pain" <c:if test="${soapnotes.leftlegpain=='Left Leg Pain'}"><c:out value="checked=checked"/></c:if>>Left Leg Pain</td>
<td><input type="checkbox" name="rightkneepain" value="Right Knee Pain" <c:if test="${soapnotes.rightkneepain=='Right Knee Pain'}"><c:out value="checked=checked"/></c:if>>Right Knee Pain</td>
<td><input type="checkbox" name="leftkneepain" value="Left Knee Pain" <c:if test="${soapnotes.leftkneepain=='Left Knee Pain'}"><c:out value="checked=checked"/></c:if>>Left Knee Pain</td>
<td><input type="checkbox" name="rightanklepain" value="Right Ankle Pain" <c:if test="${soapnotes.rightanklepain=='Right Ankle Pain'}"><c:out value="checked=checked"/></c:if>>Right Ankle Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="leftanklepain" value="Left Ankle Pain" <c:if test="${soapnotes.leftanklepain=='Left Ankle Pain'}"><c:out value="checked=checked"/></c:if>>Right Rib Pain</td>
<td><input type="checkbox" name="rightfootpain" value="Right Foot Pain" <c:if test="${soapnotes.rightfootpain=='Right Foot Pain'}"><c:out value="checked=checked"/></c:if>>Right Foot Pain</td>
<td><input type="checkbox" name="leftfootpain" value="Left Foot Pain" <c:if test="${soapnotes.leftfootpain=='Left Foot Pain'}"><c:out value="checked=checked"/></c:if>>Left Foot Pain</td>
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
 <td>&nbsp;&nbsp;<input type="text" id="datepicker1" class="input_txtbx1"  name="date1" value="${soapnotes.date1}"></td>
 <td></td>
 <td></td>
 <td>
 
 &nbsp &nbsp Diagonosis:<br/>
&nbsp &nbsp 1&nbsp &nbsp &nbsp<input class="input_txtbx1" id="inp_id" type="text" name="diagnosis1" value="${soapnotes.diagnosis1}"><br/><br/>
&nbsp &nbsp 2&nbsp &nbsp &nbsp<input class="input_txtbx1" id="inp_id" type="text" name="diagnosis2" value="${soapnotes.diagnosis2}"><br/><br/>
&nbsp &nbsp 3&nbsp &nbsp &nbsp<input class="input_txtbx1" id="inp_id" type="text" name="diagnosis3" value="${soapnotes.diagnosis3}"><br/><br/>
&nbsp &nbsp 4&nbsp &nbsp &nbsp<input class="input_txtbx1" id="inp_id" type="text" name="diagnosis4" value="${soapnotes.diagnosis4}"><br/><br/>
 </td>
 <td>
 &nbsp &nbsp E1/E2 X-Rays: <select name="e1e2" id="e1e2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="2" <c:if test="${soapnotes.e1e2=='2'}"><c:out value="selected"/></c:if>>2</option>
					<option value="3" <c:if test="${soapnotes.e1e2=='3'}"><c:out value="selected"/></c:if>>3</option>
					<option value="4" <c:if test="${soapnotes.e1e2=='4'}"><c:out value="selected"/></c:if>>4</option>
					<option value="5" <c:if test="${soapnotes.e1e2=='5'}"><c:out value="selected"/></c:if>>5</option>
					<option value="6" <c:if test="${soapnotes.e1e2=='6'}"><c:out value="selected"/></c:if>>6</option>
					<option value="7" <c:if test="${soapnotes.e1e2=='7'}"><c:out value="selected"/></c:if>>7</option>
					<option value="8" <c:if test="${soapnotes.e1e2=='8'}"><c:out value="selected"/></c:if>>8</option>
					<option value="9" <c:if test="${soapnotes.e1e2=='9'}"><c:out value="selected"/></c:if>>9</option>
					<option value="10" <c:if test="${soapnotes.e1e2=='10'}"><c:out value="selected"/></c:if>>10</option>
					<option value="11" <c:if test="${soapnotes.e1e2=='11'}"><c:out value="selected"/></c:if>>11</option>
					<option value="scsm" <c:if test="${soapnotes.e1e2=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.e1e2=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.e1e2=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.e1e2=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.e1e2=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.e1e2=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.e1e2=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.e1e2=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.e1e2=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.e1e2=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="mri" <c:if test="${soapnotes.e1e2=='mri'}"><c:out value="selected"/></c:if>>MRI</option>
					<option value="lab" <c:if test="${soapnotes.e1e2=='lab'}"><c:out value="selected"/></c:if>>LAB</option>
					<option value="opinion" <c:if test="${soapnotes.e1e2=='opinion'}"><c:out value="selected"/></c:if>>2nd Opinion</option>
					<option value="rehab" <c:if test="${soapnotes.e1e2=='rehab'}"><c:out value="selected"/></c:if>>Rehab</option>
					<option value="stretchexer" <c:if test="${soapnotes.e1e2=='stretchexer'}"><c:out value="selected"/></c:if>>Stretch exer</option>
					<option value="offwork" <c:if test="${soapnotes.e1e2=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="backtowork" <c:if test="${soapnotes.e1e2=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.e1e2=='strengthexcer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="lifestyle" <c:if test="${soapnotes.e1e2=='lifestyle'}"><c:out value="selected"/></c:if>>Lifestyle modifications</option>
					<option value="reeval" <c:if test="${soapnotes.e1e2=='reeval'}"><c:out value="selected"/></c:if>>Re Eval.in </option>
				  </select>
				  
				  <input type="text" name="offwork1" class="input_txtbx1" id="inp_id"  value="${soapnotes.offwork1}" style='display:none' >
				  <input type="text" name="reeval1" class="input_txtbx1" id="inp_id"  value="${soapnotes.reeval1}" style='display:none'>
				  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker"  name="date2" value="${soapnotes.date2}"></td>
 <td>
 <br/>
&nbsp &nbsp Improved: <select name="improved1" id="improved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved1=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved1=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.improved1=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved1=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved1=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved1=='95%'}"><c:out value="selected"/></c:if>>95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened1" id="worsened1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened1=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened1=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened1=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened1=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened1=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened1=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/></td>

 <td>
 &nbsp &nbsp <select name="fixation1" id="fixation1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation1=='fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tendernesstopalpation" <c:if test="${soapnotes.fixation1=='tendernesstopalpation'}"><c:out value="selected"/></c:if>>Tendernesstopalpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation1=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation1=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonocity" <c:if test="${soapnotes.fixation1=='hypertonocity'}"><c:out value="selected"/></c:if>>Hypertonocity</option>
					<option value="edema" <c:if test="${soapnotes.fixation1=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation1=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soapnotes.fixation1=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation1=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation1=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>

 &nbsp &nbsp<select name="notimproved1" id="notimproved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved1=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="progressslow" <c:if test="${soapnotes.notimproved1=='progressslow'}"><c:out value="selected"/></c:if>>Progress Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved1=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved1=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved1=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved1=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
					</select></td>
 <td>

  &nbsp &nbsp <select name="scsm1" id="scsm1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm1=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm1=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm1=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm1=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm1=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm1=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm1=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm1=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm1=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm1=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm1=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm1=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm1=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm1=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm1=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm1=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm1=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm1=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm1=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm1=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="date3" id="datepicker2" value="${soapnotes.date3}"></td>
 <td>
<br/>&nbsp &nbspImproved: <select name="improved2" id="improved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved2=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved2=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.improved2=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved2=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved2=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved2=='95%'}"><c:out value="selected"/></c:if>>95%</option>
<br/><br/><br/>


&nbsp &nbsp Worsened: <select name="worsened2" id="worsened2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened2=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened2=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened2=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened2=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened2=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened2=='95%'}"><c:out value="selected"/></c:if>>95%</option>


					</select></td>
 <td>

  &nbsp &nbsp <select name="fixation2" id="fixation2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation2=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tendernesstopalpation" <c:if test="${soapnotes.fixation2=='Tendernesstopalpation'}"><c:out value="selected"/></c:if>>Tendernesstopalpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation2=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation2=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonocity" <c:if test="${soapnotes.fixation2=='hypertonocity'}"><c:out value="selected"/></c:if>>Hypertonocity</option>
					<option value="edema" <c:if test="${soapnotes.fixation2=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation2=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soapnotes.fixation2=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation2=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation2=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>


					</select></td>
 <td>&nbsp &nbsp<select name="notimproved2" id="notimproved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved2=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="progressslow" <c:if test="${soapnotes.notimproved2=='progressslow'}"><c:out value="selected"/></c:if>>Progress Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved2=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved2=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved2=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved2=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm2" id="scsm2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm2=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm2=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm2=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm2=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm2=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm2=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm2=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm2=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm2=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm2=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm2=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm2=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm2=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm2=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm2=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm2=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm2=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm2=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm2=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm2=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			
				  </select>
 
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" class="input_txtbx1" id="datepicker3" name="date4" value="${soapnotes.date4}"></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved3" id="improved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved1=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved1=='25%'}"><c:out value="selected"/></c:if> >25%</option>
					<option value="50%" <c:if test="${soapnotes.improved1=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved1=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved1=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved1=='95%'}"><c:out value="selected"/></c:if>>95%</option>
</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened3" id="worsened3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened3=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened3=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened3=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened3=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened3=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened3=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td>
  &nbsp &nbsp<select name="fixation3" id="fixation3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation3=='Fixation'}"><c:out value="selected"/></c:if>
					>Fixations</option>
					<option value="Tendernesstopalpation" <c:if test="${soapnotes.fixation3=='Tendernesstopalpation'}"><c:out value="selected"/></c:if>>Tendernesstopalpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation3=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation3=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonocity" <c:if test="${soapnotes.fixation3=='hypertonocity'}"><c:out value="selected"/></c:if>>Hypertonocity</option>
					<option value="edema" <c:if test="${soapnotes.fixation3=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation3=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soapnotes.fixation3=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation3=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation3=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved3" id="notimproved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved3=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="progressslow" <c:if test="${soapnotes.notimproved3=='progressslow'}"><c:out value="selected"/></c:if>>Progress Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved3=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved3=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved3=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved3=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
			
					</select></td>
  <td>&nbsp &nbsp <select name="scsm3" id="scsm3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm3=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm3=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm3=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm3=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm3=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm3=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm3=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm3=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm3=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm3=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm3=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm3=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm3=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm3=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm3=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm3=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm3=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm3=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm3=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm3=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
  
  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker4" class="input_txtbx1" name="date5"  value="${soapnotes.date5}"></td>
 <td>
 <br/>&nbsp &nbsp Improved: <select name="improved4" id="improved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved4=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved4=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.improved4=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved4=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved4=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved4=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened4" id="worsened4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened4=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened4=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened4=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened4=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened4=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened4=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td>&nbsp &nbsp <select name="fixation4" id="fixation4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation4=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tendernesstopalpation" <c:if test="${soapnotes.fixation4=='Tendernesstopalpation'}"><c:out value="selected"/></c:if>>Tendernesstopalpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation4=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation4=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonocity" <c:if test="${soapnotes.fixation4=='hypertonocity'}"><c:out value="selected"/></c:if>>Hypertonocity</option>
					<option value="edema" <c:if test="${soapnotes.fixation4=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation4=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soapnotes.fixation4=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation4=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation4=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved4" id="notimproved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved4=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="progressslow" <c:if test="${soapnotes.notimproved4=='progressslow'}"><c:out value="selected"/></c:if>>Progress Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved4=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved4=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved4=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved4=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 
 <td>&nbsp &nbsp <select name="scsm4" id="scsm4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm4=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm4=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm4=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm4=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm4=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm4=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm4=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm4=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm4=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm4=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm4=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm4=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm4=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm4=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm4=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm4=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm4=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm4=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm4=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm4=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text"  class="input_txtbx1" id="datepicker5" name="date6"  value="${soapnotes.date6}"></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved5" id="improved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved5=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved5=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.improved5=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved5=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved5=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved5=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened5" id="worsened5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened5=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened5=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened5=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened5=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened5=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened5=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td>
  &nbsp &nbsp<select name="fixation5" id="fixation5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation5=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tendernesstopalpation" <c:if test="${soapnotes.fixation5=='Tendernesstopalpation'}"><c:out value="selected"/></c:if>>Tendernesstopalpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation5=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation5=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonocity" <c:if test="${soapnotes.fixation5=='hypertonocity'}"><c:out value="selected"/></c:if>>Hypertonocity</option>
					<option value="edema" <c:if test="${soapnotes.fixation5=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation5=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soapnotes.fixation5=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation5=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation5=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
		</select></td>
<td>&nbsp &nbsp <select name="notimproved5" id="notimproved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved5=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="progressslow" <c:if test="${soapnotes.notimproved5=='progressslow'}"><c:out value="selected"/></c:if>>Progress Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved5=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved5=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved5=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved5=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm5" id="scsm5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm5=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm5=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm5=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm5=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm5=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm5=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm5=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm5=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm5=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm5=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm5=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm5=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm5=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm5=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm5=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm5=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm5=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm5=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm5=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm5=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker6" name="date7" class="input_txtbx1" value="${soapnotes.date7}"></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved6" id="improved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved6=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved6=='25%'}"><c:out value="selected"/></c:if> >25%</option>
					<option value="50%" <c:if test="${soapnotes.improved6=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved6=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved6=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved6=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp  Worsened: <select name="worsened6" id="worsened6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened6=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened6=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened6=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened6=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened6=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened6=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td>&nbsp &nbsp <select name="fixation6" id="fixation6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation6=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tendernesstopalpation" <c:if test="${soapnotes.fixation6=='Tendernesstopalpation'}"><c:out value="selected"/></c:if>>Tendernesstopalpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation6=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation6=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonocity" <c:if test="${soapnotes.fixation6=='hypertonocity'}"><c:out value="selected"/></c:if>>Hypertonocity</option>
					<option value="edema" <c:if test="${soapnotes.fixation6=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation6=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soapnotes.fixation6=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation6=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation6=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
	</select></td>
<td> &nbsp &nbsp<select name="notimproved6" id="notimproved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved6=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="progressslow" <c:if test="${soapnotes.notimproved6=='progressslow'}"><c:out value="selected"/></c:if>>Progress Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved6=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved6=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved6=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved6=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
			
					</select></td>
 <td>&nbsp &nbsp <select name="scsm6" id="scsm6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm6=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm6=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm6=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm6=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm6=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm6=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm6=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm6=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm6=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm6=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm6=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm6=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm6=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm6=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm6=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm6=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm6=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm6=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm6=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm6=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker7" class="input_txtbx1"  name="date8" value="${soapnotes.date8}"></td>
 <td>
 <br/>&nbsp &nbspImproved: <select name="improved7" id="improved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved7=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved7=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.improved7=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved7=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved7=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved7=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened7" id="worsened7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened7=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened7=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened7=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened7=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened7=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened7=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select></td>
 <td> &nbsp &nbsp<select name="fixation7" id="fixation7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation7=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tendernesstopalpation" <c:if test="${soapnotes.fixation7=='Tendernesstopalpation'}"><c:out value="selected"/></c:if>>Tendernesstopalpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation7=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation7=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonocity" <c:if test="${soapnotes.fixation7=='hypertonocity'}"><c:out value="selected"/></c:if>>Hypertonocity</option>
					<option value="edema" <c:if test="${soapnotes.fixation7=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation7=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soapnotes.fixation7=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation7=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation7=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved7" id="notimproved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved7=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="progressslow" <c:if test="${soapnotes.notimproved7=='progressslow'}"><c:out value="selected"/></c:if>>Progress Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved7=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved7=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved7=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved7=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
								</select></td>
 <td>&nbsp &nbsp <select name="scsm7" id="scsm7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm7=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm7=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm7=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm7=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm7=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm7=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm7=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm7=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm7=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm7=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm7=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm7=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm7=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm7=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm7=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm7=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm7=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm7=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm7=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm7=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker8" class="input_txtbx1" name="date9" value="${soapnotes.date9}"></td>
 <td>
 <br/>&nbsp &nbsp Improved: <select name="improved8" id="improved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved8=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved8=='25%'}"><c:out value="selected"/></c:if> >25%</option>
					<option value="50%" <c:if test="${soapnotes.improved8=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved8=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved8=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved8=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened8" id="worsened8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened8=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened8=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened8=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened8=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened8=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened8=='95%'}"><c:out value="selected"/></c:if>>95%</option>
					</select></td>
 <td> &nbsp &nbsp<select name="fixation8" id="fixation8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation8=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tendernesstopalpation" <c:if test="${soapnotes.fixation8=='Tendernesstopalpation'}"><c:out value="selected"/></c:if>>Tendernesstopalpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation8=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation8=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="hypertonocity" <c:if test="${soapnotes.fixation8=='hypertonocity'}"><c:out value="selected"/></c:if>>Hypertonocity</option>
					<option value="edema" <c:if test="${soapnotes.fixation8=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation8=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="shortleg" <c:if test="${soapnotes.fixation8=='shortleg'}"><c:out value="selected"/></c:if>>Short leg R/L Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation8=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation8=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
	</select></td>
 <td>&nbsp &nbsp<select name="notimproved8" id="notimproved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved8=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="progressslow" <c:if test="${soapnotes.notimproved8=='progressslow'}"><c:out value="selected"/></c:if>>Progress Slow Due to exacerbation of CC</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved8=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved8=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved8=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved8=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm8" id="scsm8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm8=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm8=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm8=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm8=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm8=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm8=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm8=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm8=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm8=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm8=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm8=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm8=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm8=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm8=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm8=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work 5 4 3 2x/wk</option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm8=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm8=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm8=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm8=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm8=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
  </table>
  <table align="right"><tr><td> Physicians Signature:<input type="text" name="sign" class="input_txtbx1" id="inp_id"  value="${soapnotes.sign}"></td></tr></table>
				                   </table>
 <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Update"></td>
				                   <td><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewsoapnotes'"></td>
				                   </tr>
				                   </table>

</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</form>
</body>
</html>


