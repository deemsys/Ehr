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
   <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  $(function() {
	    $( "#tabss" ).tabs();
	  });
  </script>
  <script>
$(function() {
    $( "#slider" ).slider({
      value:1,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount" ).val(+ ui.value );
      }
    });
    $( "#amount" ).val(+ $( "#slider" ).slider( "value" ) );
  });

</script>
  
  
  
 <body>
 <br><br>
<div id="tabs">
       <ul>
          <li><a href="#tabs-1">History</a></li>
          <li><a href="#tabs-2">Diagnosis/TP/Goals</a></li>
          <li><a href="#tabs-3">Orthopaedic Tests</a></li>
       </ul>
         
   <div id="tabs-1"> 
<div id="right_content">
<form action="hamiltonchiropractic" method="POST">
<br>
<br>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	             <h2>Hamilton Chiropractic</h2> 
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row2">
             <td> <h2>Pain Assessment</h2></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <c:set value="${hamiltonchiropracticForm.hamiltonchiropractic[0]}" var="hamiltonchiropractic"/>
               <td>I understand you have pain in your:</td></tr>
               <tr class="row1">
                   <td></td>
                 <td><input type="hidden" name="patient_id" value="${patientid}"><input type="checkbox" name="lumbopelvic" value="Lumbopelvic" id="lumbo" onclick="lumboPopup()">&nbsp Lumbopelvic</td>
                 <td><input type="radio" name="ha" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="ha" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                  <tr class="row1">
               <td></td>
                 <td><input type="checkbox" name="cervical" value="Cervical" id="cervical" onclick="cervicalPopup()">&nbsp Cervical</td>
                 <td><input type="radio" name="ha" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="ha" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                     <tr class="row1">
               <td></td>
                 <td><input type="checkbox" name="thoracic" value="Thoracic" id="thoracic" onclick="thoracicPopup()">&nbsp Thoracic</td>
                 <td><input type="radio" name="ha" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="ha" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row1">
               <td></td>
                 <td><input type="hidden" class="input_txtbx1" id="inp_id" value="${hamiltonchiropractic.initialexamid}" name="initialexamid" /><input type="checkbox" name="hacheck" value="hacheck" id="hacheck">&nbsp HA</td>
                 <td><input type="radio" name="ha" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="ha" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 
                 <td></td>
                 <td></td>
                 </tr>
                <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="neckcheck" value="Neck"  <c:if test="${hamiltonchiropractic.neckcheck=='Neck'}"><c:out value="Checked"/></c:if>>&nbsp Neck</td>
                 <td><input type="checkbox" name="neck" value="Right" <c:if test="${hamiltonchiropractic.neck=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="necka" value="Left" <c:if test="${hamiltonchiropractic.necka=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="mbcheck" value="MB" <c:if test="${hamiltonchiropractic.mbcheck=='MB'}"><c:out value="Checked"/></c:if>>&nbsp MB</td>
                 <td><input type="checkbox" name="mb" value="Right" <c:if test="${hamiltonchiropractic.mb=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="mba" value="Left" <c:if test="${hamiltonchiropractic.mba=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="ribscheck" value="ribscheck" <c:if test="${hamiltonchiropractic.ribscheck=='Ribs'}"><c:out value="Checked"/></c:if>>&nbsp Ribs</td>
                 <td><input type="checkbox" name="ribs" value="ribsr" <c:if test="${hamiltonchiropractic.ribs=='ribsr'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="ribsa" value="ribsl" <c:if test="${hamiltonchiropractic.ribsa=='ribsl'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="shouldercheck" value="Shoulder" id="shoulder" onclick="shoulderPopup()" <c:if test="${hamiltonchiropractic.shouldercheck=='Shoulder'}"><c:out value="Checked"/></c:if>>&nbsp Shoulder</td>
                 <td><input type="checkbox" name="shoulder" value="Right" <c:if test="${hamiltonchiropractic.shoulder=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="shouldera" value="Left" <c:if test="${hamiltonchiropractic.shouldera=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="elbowcheck" value="Elbow" id="elbow" onclick="elbowPopup()" <c:if test="${hamiltonchiropractic.elbowcheck=='Elbow'}"><c:out value="Checked"/></c:if>>&nbsp Elbow</td>
                 <td><input type="checkbox" name="elbow" value="Right" <c:if test="${hamiltonchiropractic.elbow=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="elbowa" value="Left" <c:if test="${hamiltonchiropractic.elbowa=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="handcheck" value="Hand" id="hand" onclick="handPopup()" <c:if test="${hamiltonchiropractic.handcheck=='Hand'}"><c:out value="Checked"/></c:if>>&nbsp Hand</td>
                 <td><input type="checkbox" name="hand" value="Right" <c:if test="${hamiltonchiropractic.hand=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="handa" value="Left" <c:if test="${hamiltonchiropractic.handa=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="wristcheck" value="Wrist" id="wrist" onclick="wristPopup()" <c:if test="${hamiltonchiropractic.wristcheck=='Wrist'}"><c:out value="Checked"/></c:if>>&nbsp Wrist</td>
                 <td><input type="checkbox" name="wrist" value="Right" <c:if test="${hamiltonchiropractic.wrist=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="wrista" value="Left" <c:if test="${hamiltonchiropractic.wrista=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="lbpcheck" value="Lbp" <c:if test="${hamiltonchiropractic.lbpcheck=='Lbp'}"><c:out value="Checked"/></c:if>>&nbsp LBP</td>
                 <td><input type="checkbox" name="lbp" value="Right" <c:if test="${hamiltonchiropractic.lbp=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="lbpa" value="Left" <c:if test="${hamiltonchiropractic.lbpa=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <script type="text/javascript">
// Popup window code



function newPopup() {

if(document.getElementById("hipexam").checked)
{
popupWindow = window.open("perry" ,"popUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
}
function anklePopup() {
if(document.getElementById("ankle").checked)
{
popupWindow = window.open("ankle",'popUpWindow','width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
}
function footPopup() {
	if(document.getElementById("foot").checked)
	{
	popupWindow = window.open("ankle",'popUpWindow','width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
			}
	}
function shoulderPopup() {
if(document.getElementById("shoulder").checked)
{

popupWindow = window.open("shoulderexam",'popUpWindow','width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
}

function kneePopup() {
	if(document.getElementById("knee").checked)
	{

	popupWindow = window.open("kneeexam",'popUpWindow','width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
			}
	}
	
function wristPopup() {
	if(document.getElementById("wrist").checked)
	{

	popupWindow = window.open("wristexam",'popUpWindow','width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
			}
	}
	
function handPopup() {
	if(document.getElementById("hand").checked)
	{

	popupWindow = window.open("wristexam",'popUpWindow','width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
			}
	}


function elbowPopup() {
	if(document.getElementById("elbow").checked)
	{

	popupWindow = window.open("elbowexam",'popUpWindow','width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
			}
	}

/* function wristPopup() {
	if(document.getElementById("hand").checked)
	{

	popupWindow = window.open("wristexam",'popUpWindow','height=700,width=800,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
			}
	} */


</script>
<!-- <a href="JavaScript:newPopup('http://www.quackit.com/html/html_help.cfm');">Open a popup window</a> -->
                <td><input type="checkbox" name="hipcheck" value="Hip" id="hipexam" onclick="newPopup()" <c:if test="${hamiltonchiropractic.hipcheck=='Hip'}"><c:out value="Checked"/></c:if>>&nbsp Hip</td>
                 <td><input type="checkbox" name="hip" value="Right" <c:if test="${hamiltonchiropractic.hip=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="hipa" value="Left" <c:if test="${hamiltonchiropractic.hipa=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="legcheck" value="Leg" <c:if test="${hamiltonchiropractic.legcheck=='Leg'}"><c:out value="Checked"/></c:if>>&nbsp Leg</td>
                 <td><input type="checkbox" name="leg" value="Right" <c:if test="${hamiltonchiropractic.leg=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="lega" value="Left" <c:if test="${hamiltonchiropractic.lega=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="kneecheck" value="Knee" id="knee" onclick="kneePopup()" <c:if test="${hamiltonchiropractic.kneecheck=='Knee'}"><c:out value="Checked"/></c:if>>&nbsp Knee</td>
                 <td><input type="checkbox" name="knee" value="Right" <c:if test="${hamiltonchiropractic.knee=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="kneea" value="Left" <c:if test="${hamiltonchiropractic.kneea=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="footcheck" value="Foot" id="foot" onclick="footPopup()" <c:if test="${hamiltonchiropractic.footcheck=='Foot'}"><c:out value="Checked"/></c:if>>&nbsp Foot</td>
                 <td><input type="checkbox" name="foot" value="Right" <c:if test="${hamiltonchiropractic.foot=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="foota" value="Left" <c:if test="${hamiltonchiropractic.foota=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="anklecheck" value="Ankle" id="ankle" onclick="anklePopup()" <c:if test="${hamiltonchiropractic.anklecheck=='Ankle'}"><c:out value="Checked"/></c:if>>&nbsp Ankle</td>
                 <td><input type="checkbox" name="ankle" value="Right" <c:if test="${hamiltonchiropractic.ankle=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="checkbox" name="anklea" value="Left" <c:if test="${hamiltonchiropractic.anklea=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Did it begin gradually or suddenly?</td>
                 <td><input type="checkbox" name="suddenly" value="Sudden" <c:if test="${hamiltonchiropractic.suddenly=='Sudden'}"><c:out value="Checked"/></c:if>>&nbsp Sudden</td>
                 <td><input type="checkbox" name="gradually" value="Gradual" <c:if test="${hamiltonchiropractic.gradually=='Gradual'}"><c:out value="Checked"/></c:if>>&nbsp Gradual:</td>
                 <td> <input type="text" name="hours" value="${hamiltonchiropractic.hours }">Hours Later</td>
                 <td><input type="text" name="days" value="${hamiltonchiropractic.days }">Days Later</td>
                 </tr>
                 <tr class="row1">
                 <td>On what date did your injury occur?  </td>
                 <td><input type="text" name="date" class="input_txtbx1" value="${hamiltonchiropractic.date }"></td>
                 <td></td>
                 <td></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>How did it happen?  </td>
                 <td><textarea rows="5" cols="25" name="reason">"${hamiltonchiropractic.reason }"</textarea></td>
                 </tr>
                 <tr class="row1">
                 <td>Was this the first episode or is this a chronic injury? </td>
                 <td><input type="checkbox" name="acute" value="Acute" <c:if test="${hamiltonchiropractic.acute=='Acute'}"><c:out value="Checked"/></c:if>>&nbsp Acute</td>
                 <td><input type="checkbox" name="subacute" value="Subacute" <c:if test="${hamiltonchiropractic.subacute=='Subacute'}"><c:out value="Checked"/></c:if>>&nbsp Subacute</td>
                 <td><input type="checkbox" name="chronic" value="Chronic" <c:if test="${hamiltonchiropractic.chronic=='Chronic'}"><c:out value="Checked"/></c:if>>&nbsp Chronic</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>What makes it feel better?</td>
                 <td><input type="checkbox" name="lyingdown" value="Lying down" <c:if test="${hamiltonchiropractic.lyingdown=='Lying down'}"><c:out value="Checked"/></c:if>>&nbsp Lying down</td>
                 <td><input type="checkbox" name="sitting" value="Sitting" <c:if test="${hamiltonchiropractic.sitting=='Sitting'}"><c:out value="Checked"/></c:if>>&nbsp Sitting</td>
                 <td><input type="checkbox" name="standing" value="Standing" <c:if test="${hamiltonchiropractic.standing=='Standing'}"><c:out value="Checked"/></c:if>>&nbsp Standing</td>
                 </tr>
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="bending" value="Bending" <c:if test="${hamiltonchiropractic.bending=='Bending'}"><c:out value="Checked"/></c:if>>&nbsp Bending</td>
                 <td><input type="checkbox" name="rest" value="Rest" <c:if test="${hamiltonchiropractic.rest=='Rest'}"><c:out value="Checked"/></c:if>>&nbsp Rest</td>
                 <td><input type="checkbox" name="otherb" value="Other" <c:if test="${hamiltonchiropractic.otherb=='Other'}"><c:out value="Checked"/></c:if>>&nbsp other:
                 </td>
                 <td><input type="text" name="othere" class="input_txtbx1" placeholder="If other, specify" value="${hamiltonchiropractic.othere }"></td>
                 </tr>
                  <tr class="row1">
                 <td>What have you done for it?  </td>
                 <td><input type="checkbox" name="ice" value="Ice" <c:if test="${hamiltonchiropractic.ice=='Ice'}"><c:out value="Checked"/></c:if>>&nbsp Ice</td>
                 <td><input type="checkbox" name="heat" value="Heat" <c:if test="${hamiltonchiropractic.heat=='Heat'}"><c:out value="Checked"/></c:if>>&nbsp Heat</td>
                 <td><input type="checkbox" name="massage" value="Massage" <c:if test="${hamiltonchiropractic.massage=='Massage'}"><c:out value="Checked"/></c:if>>&nbsp Massage</td>
                 </tr>
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="aspirin" value="Aspirin" <c:if test="${hamiltonchiropractic.aspirin=='Aspirin'}"><c:out value="Checked"/></c:if>>&nbsp Aspirin</td>
                <td><input type="checkbox" name="otherdone" value="Other" <c:if test="${hamiltonchiropractic.otherdone=='Other'}"><c:out value="Checked"/></c:if>>&nbsp other</td>
                <td><input type="text" name="otherit" class="input_txtbx1" value="${hamiltonchiropractic.otherit }"  placeholder="If other, specify"></td>
                 <td></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What makes it feel worse? </td>
                 <td><input type="checkbox" name="bendingworse" value="Bending" <c:if test="${hamiltonchiropractic.bendingworse=='Bending'}"><c:out value="Checked"/></c:if>>&nbsp Bending</td>
                 <td><input type="checkbox" name="twisting" value="Twisting" <c:if test="${hamiltonchiropractic.twisting=='Twisting'}"><c:out value="Checked"/></c:if>>&nbsp Twisting</td>
                 <td><input type="checkbox" name="lifting" value="Lifting" <c:if test="${hamiltonchiropractic.lifting=='Lifting'}"><c:out value="Checked"/></c:if>>&nbsp Lifting</td>
                 </tr>
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="walking" value="Walking" <c:if test="${hamiltonchiropractic.walking=='Walking'}"><c:out value="Checked"/></c:if>>&nbsp Walking</td>
                <td><input type="checkbox" name="activity" value="Activity" <c:if test="${hamiltonchiropractic.activity=='Activity'}"><c:out value="Checked"/></c:if>>&nbsp Activity</td>
                <td><input type="checkbox" name="otherworse" value="Other" <c:if test="${hamiltonchiropractic.otherworse=='Other'}"><c:out value="Checked"/></c:if>>&nbsp Other
                 </td>
                 <td><input type="text" name="otherfeel" value="${hamiltonchiropractic.otherfeel }" class="input_txtbx1" placeholder="If other, specify"></td>
                 </tr>
                  <tr class="row1">
                 <td>How would you describe the pain?   </td>
                 <td><input type="checkbox" name="sharp" value="Sharp/Shooting" <c:if test="${hamiltonchiropractic.sharp=='Sharp/Shooting'}"><c:out value="Checked"/></c:if>>&nbsp Sharp/Shooting</td>
                 <td><input type="checkbox" name="severe" value="Severe/intolerable" <c:if test="${hamiltonchiropractic.severe=='Severe/Intolerable'}"><c:out value="Checked"/></c:if>>Severe</td>
                 <td><input type="checkbox" name="dull" value="Dull/achy" <c:if test="${hamiltonchiropractic.dull=='Dull/achy'}"><c:out value="Checked"/></c:if>>&nbsp Dull/achy</td>
                 </tr>
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="burning" value="Burning/Stinging" <c:if test="${hamiltonchiropractic.burning=='Burning/Stagging'}"><c:out value="Checked"/></c:if>>&nbsp Burning/Stinging</td>
                <td><input type="checkbox" name="nagging" value="Deep/Nagging" <c:if test="${hamiltonchiropractic.nagging=='Deep/Nagging'}"><c:out value="Checked"/></c:if>>&nbsp Deep/Nagging</td>
                <td><input type="checkbox" name="throbbing" value="Throbbing/Diffuse" <c:if test="${hamiltonchiropractic.throbbing=='Throbbing/Diffuse'}"><c:out value="Checked"/></c:if>>&nbsp Throbbing/Diffuse  </td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="numb" value="Numb" <c:if test="${hamiltonchiropractic.numb=='Numb'}"><c:out value="Checked"/></c:if>>&nbsp Numb  </td>
                <td><input type="checkbox" name="tingling" value="Tingling" <c:if test="${hamiltonchiropractic.tingling=='Tingling'}"><c:out value="Checked"/></c:if>>&nbsp Tingling</td>
                <td><input type="checkbox" name="stiff" value="Stiff" <c:if test="${hamiltonchiropractic.stiff=='Stiff'}"><c:out value="Checked"/></c:if>>&nbsp Stiff </td>
                 </tr>
                  <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="stabbing" value="Stabbing" <c:if test="${hamiltonchiropractic.stabbing=='Stabbing'}"><c:out value="Checked"/></c:if>>&nbsp Stabbing  </td>
                <td><input type="checkbox" name="cramping" value="Cramping" <c:if test="${hamiltonchiropractic.cramping=='Cramping'}"><c:out value="Checked"/></c:if>>&nbsp Cramping</td>
                <td><input type="checkbox" name="otherdescribe" value="Other" <c:if test="${hamiltonchiropractic.otherdescribe=='Other'}"><c:out value="Checked"/></c:if>>&nbsp other 
                 </td>
                 <td><input type="text" name="otherpain" value="${hamiltonchiropractic.otherpain }" class="input_txtbx1" placeholder="If other, specify"></td>
                 </tr>
                 <tr class="row1">
                 <td>Is it constant or does it come and go?</td>
                 <td><input type="checkbox" name="constant" value="Constant" <c:if test="${hamiltonchiropractic.constant=='Constant'}"><c:out value="Checked"/></c:if>>&nbsp Constant</td>
                 <td><input type="checkbox" name="intermittent" value="Intermittent" <c:if test="${hamiltonchiropractic.intermittent=='Intermittent'}"><c:out value="Checked"/></c:if>>&nbsp Intermittent</td>
                 </tr>
                 <tr class="row1">
                 <td>Does the pain shoot down your arms and/or legs, or is it contained in one area?</td>
                 <td><input type="checkbox" name="local" value="Local" <c:if test="${hamiltonchiropractic.local=='Local'}"><c:out value="Checked"/></c:if>>&nbsp Local</td>
                 <td><input type="checkbox" name="diffuse" value="Diffuse" <c:if test="${hamiltonchiropractic.diffuse=='Diffuse'}"><c:out value="Checked"/></c:if>>&nbsp Diffuse</td>
                 <td><input type="checkbox" name="radiates" value="Radiates" <c:if test="${hamiltonchiropractic.radiates=='Radiates'}"><c:out value="Checked"/></c:if>>&nbsp Radiates to: </td>
                 <td> <input type="text" name="otherradiates" class="input_txtbx1" value="${hamiltonchiropractic.otherradiates }" placeholder="Specify Radiates"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Would you describe it as:</td>
                 <td><input type="checkbox" name="mild" value="Mild" <c:if test="${hamiltonchiropractic.mild=='Mild'}"><c:out value="Checked"/></c:if>>&nbsp Mild</td>
                 <td><input type="checkbox" name="moderate" value="Moderate" <c:if test="${hamiltonchiropractic.moderate=='Moderate'}"><c:out value="Checked"/></c:if>>&nbsp Moderate</td>
                 <td><input type="checkbox" name="severepain" value="Severe" <c:if test="${hamiltonchiropractic.severepain=='Severe'}"><c:out value="Checked"/></c:if>>&nbsp Severe</td>
                 <td><input type="checkbox" name="crippling" value="Crippling" <c:if test="${hamiltonchiropractic.crippling=='Crippling'}"><c:out value="Checked"/></c:if>>&nbsp Crippling</td>
                 </tr>
                 <tr class="row1">
                 <td>Is it worse in the morning or at night?  </td>
                 <td><input type="checkbox" name="am" value="AM" <c:if test="${hamiltonchiropractic.am=='AM'}"><c:out value="Checked"/></c:if>>&nbsp AM</td>
                 <td><input type="checkbox" name="pm" value="PM" <c:if test="${hamiltonchiropractic.pm=='PM'}"><c:out value="Checked"/></c:if>>&nbsp PM</td>
                 <td><input type="checkbox" name="othertime" value="Other" <c:if test="${hamiltonchiropractic.othertime=='Other'}"><c:out value="Checked"/></c:if>>&nbsp Other</td>
                 <td><input type="text" name="otherdn" class="input_txtbx1" value="${hamiltonchiropractic.otherdn }" placeholder="If other, specify"></td>
                 </tr>
                 <tr class="row1">
                 <td>Is your condition getting worse or better?</td>
                 <td><input type="checkbox" name="better" value="Better" <c:if test="${hamiltonchiropractic.better=='Better'}"><c:out value="Checked"/></c:if>>&nbsp Better</td>
                 <td><input type="checkbox" name="same" value="Same" <c:if test="${hamiltonchiropractic.same=='Same'}"><c:out value="Checked"/></c:if>>&nbsp Same</td>
                 <td><input type="checkbox" name="worse" value="Progressively Worse" <c:if test="${hamiltonchiropractic.worse=='Progressively Worse'}"><c:out value="Checked"/></c:if>>&nbsp Progressively Worse</td>
                 </tr>
                 <tr class="row1">
                 <td>Are you working? </td>
                  <td><input type="checkbox" name="yes" value="Yes" <c:if test="${hamiltonchiropractic.yes=='Yes'}"><c:out value="Checked"/></c:if>>&nbsp Yes</td>
                 <td><input type="checkbox" name="no" value="No" <c:if test="${hamiltonchiropractic.no=='No'}"><c:out value="Checked"/></c:if>>&nbsp No</td>
                 <td>When was your last day?</td><td><input type="text" name="day" class="input_txtbx1" value="${hamiltonchiropractic.day }" placeholder=" Specify the date"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Has your condition affected your daily living in any way? </td>
                <td><input type="checkbox" name="work" value="Work" <c:if test="${hamiltonchiropractic.work=='Work'}"><c:out value="Checked"/></c:if>>&nbsp Work</td>
                 <td><input type="checkbox" name="sleep" value="Sleep" <c:if test="${hamiltonchiropractic.sleep=='Sleep'}"><c:out value="Checked"/></c:if>>&nbsp Sleep</td>
                 <td><input type="checkbox" name="otherdaily" value="Other" <c:if test="${hamiltonchiropractic.otherdaily=='Other'}"><c:out value="Checked"/></c:if>>&nbsp Other
                 </td>
                 <td><input type="text" name="othercondition" value="${hamiltonchiropractic.othercondition }" class="input_txtbx1" placeholder="If other, specify"></td>
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
              <tr class="row2">
              
              <td><h4>Diagnosis/TP/Goals</h4></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
            <td><b>Assessment/Diagnosis:</b></td>
             <td><input type="checkbox" name="sameass" value="Same" <c:if test="${hamiltonchiropractic.sameass=='Same'}"><c:out value="Checked"/></c:if>>&nbsp Same</td>
                 <td width="150"><input type="checkbox" name="improved" value="Improved" <c:if test="${hamiltonchiropractic.improved=='Improved'}"><c:out value="Checked"/></c:if>>&nbsp Improved</td>
                 <td><input type="checkbox" name="worseass" value="Worse" <c:if test="${hamiltonchiropractic.worse=='Worse'}"><c:out value="Checked"/></c:if> > &nbsp Worse</td>
                 <td><input type="checkbox" name="plateau" value="Plateau" <c:if test="${hamiltonchiropractic.plateau=='Plateau'}"><c:out value="Checked"/></c:if>>&nbsp Plateau</td>
             </tr>
             <tr class="row1">
                  <td></td>
             
                 <td><input type="checkbox" name="preinjury" value=" At Pre-injury Status" <c:if test="${hamiltonchiropractic.preinjury=='At pre-injury Status'}"><c:out value="Checked"/></c:if>>&nbsp At pre-injury Status
                   
                   
                   
                   
                   <td><input type="checkbox" name="slight" value="Slightly" <c:if test="${hamiltonchiropractic.slight=='Slightly'}"><c:out value="Checked"/></c:if>>&nbsp Slightly</td>
                   <td><input type="checkbox" name="moderatly" value="Moderatly" <c:if test="${hamiltonchiropractic.moderatly=='Moderatly'}"><c:out value="Checked"/></c:if>>&nbsp Moderately</td>
                   <td><input type="checkbox" name="great" value="Greatly" <c:if test="${hamiltonchiropractic.great=='Greatly'}"><c:out value="Checked"/></c:if>>&nbsp Greatly </td></td>
             </tr>
             <tr class="row1">
                 <td><b>Treatment plan:</b></td>
                 <td><input type="checkbox" name="chiropractic" value="Skilled Chiropractic Spinal Manipulation" <c:if test="${hamiltonchiropractic.chiropractic=='Skilled Chiropractic Spinal Manipulation'}"><c:out value="Checked"/></c:if>>&nbsp Skilled Chiropractic Spinal Manipulation  </td>
                 <td><input type="checkbox" name="ems" value="EMS" <c:if test="${hamiltonchiropractic.ems=='EMS'}"><c:out value="Checked"/></c:if>>&nbsp EMS</td>
                 <td><input type="checkbox" name="iceplan" value="Ice" <c:if test="${hamiltonchiropractic.iceplan=='Ice'}"><c:out value="Checked"/></c:if>>&nbsp Ice  </td>
                 <td><input type="checkbox" name="heatplan" value="Heat" <c:if test="${hamiltonchiropractic.heatplan=='Heat'}"><c:out value="Checked"/></c:if>>&nbsp Heat</td>
            </tr>
            <tr class="row1">
            <td></td>            
            <td><input type="checkbox" name="nimmo" value="Nimmo" <c:if test="${hamiltonchiropractic.nimmo=='Nimmo'}"><c:out value="Checked"/></c:if>>&nbsp Nimmo</td>
            <td><input type="checkbox" name="ultrasound" value="Ultrasound" <c:if test="${hamiltonchiropractic.ultrasound=='Ultrasound'}"><c:out value="Checked"/></c:if>>&nbsp Ultrasound</td>
             <td><input type="checkbox" name="manualtraction" value="Manual Traction" <c:if test="${hamiltonchiropractic.manualtraction=='Manual Traction'}"><c:out value="Checked"/></c:if>>&nbsp Manual Traction</td>
            <td><input type="checkbox" name="massageplan" value="Massage" <c:if test="${hamiltonchiropractic.massageplan=='Massage'}"><c:out value="Checked"/></c:if>>&nbsp Massage</td>
            </tr>
            <tr class="row1">
            <td></td>           
            <td><input type="checkbox" name="neuromuscular" value="Neuromuscular Re-education" <c:if test="${hamiltonchiropractic.neuromuscular=='Neuromuscular Re-education'}"><c:out value="Checked"/></c:if>>&nbsp Neuromuscular Re-education  </td>
            <td><input type="checkbox" name="stretching" value="Stretching" <c:if test="${hamiltonchiropractic.stretching=='Stretching'}"><c:out value="Checked"/></c:if>>&nbsp Stretching</td>
            <td><input type="checkbox" name="strengthening" value="Strengthening" <c:if test="${hamiltonchiropractic.strengthening=='Strengthening'}"><c:out value="Checked"/></c:if>>&nbsp Strengthening</td>
            <td><table cellspacing="0" cellpadding="0"><tr><td width="40%"><input type="checkbox" name="remobilization" value="Remobilization" <c:if test="${hamiltonchiropractic.remobilization=='Remobilization'}"><c:out value="Checked"/></c:if>> Remobilization</td><td width="50%"><input type="checkbox" name="improvesubluxations" value="Improve Subluxations">Improve &nbsp;Subluxations</td>  </tr></table></td>
            </tr>
             <tr class="row1">
            <td></td>
            <td><input type="checkbox" name="rehab" value="Rehab" <c:if test="${hamiltonchiropractic.rehab=='Rehab'}"><c:out value="Checked"/></c:if>>&nbsp Rehab  </td>
            <td><input type="checkbox" name="modificat" value="Modificat" <c:if test="${hamiltonchiropractic.modificat=='Modificat'}"><c:out value="Checked"/></c:if>>&nbsp Modification  </td>
            <td><input type="checkbox" name="care" value="Release from care" <c:if test="${hamiltonchiropractic.care=='Release from care'}"><c:out value="Checked"/></c:if>>&nbsp Release from care   </td>
            <td><input type="checkbox" name="refer" value="Refer">&nbsp Refer  </td>
            </tr>      
            
            <tr class="row1">
                <td><b>Goals:</b></td>
                <td> <h4>Short Term:</h4></td>
                <td><input type="checkbox" name="decreasepain" value="Decrease Pain" <c:if test="${hamiltonchiropractic.decreasepain=='Decrease Pain'}"><c:out value="Checked"/></c:if>>&nbsp Decrease Pain </td>
                <td><input type="checkbox" name="decreasespam" value="Decrease Spam" <c:if test="${hamiltonchiropractic.decreasespam=='Decrease Spam'}"><c:out value="Checked"/></c:if>>&nbsp Decrease Spasm  </td>
                <td><input type="checkbox" name="increaserom" value="Increase ROM" <c:if test="${hamiltonchiropractic.increaserom=='Increase ROM'}"><c:out value="Checked"/></c:if>>&nbsp Increase ROM</td>
             </tr>
             <tr class="row1">
                <td></td>
                <td></td>                   
                <td><input type="checkbox" name="improveadl" value="Improve ADL" <c:if test="${hamiltonchiropractic.improveadl=='Improve ADL'}"><c:out value="Checked"/></c:if>>&nbsp Improve ADL    </td>
                <td></td>
                <td></td>
             </tr>
              <tr class="row1">
                <td></td>
                <td> <h4>Long Term:</h4></td>
                <td><input type="checkbox" name="fullactivity" value="Full Activity" <c:if test="${hamiltonchiropractic.fullactivity=='Full Activity'}"><c:out value="Checked"/></c:if>>&nbsp Full Activity    </td>
                <td><input type="checkbox" name="returntowork" value="Return to work" <c:if test="${hamiltonchiropractic.returntowork=='Return To Work'}"><c:out value="Checked"/></c:if>>&nbsp Return to Work     </td>
                <td><input type="checkbox" name="renewsports" value="Renew Sports" <c:if test="${hamiltonchiropractic.renewsports=='Renew Sports'}"><c:out value="Checked"/></c:if>>&nbsp Renew sports    </td>
             </tr>
             <tr height="200" class="row1"></tr>
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
          <li><a href="#tab-cervical">CERVICAL</a></li>
          <li><a href="#tab-thoricic">THORACIC</a></li>
          <li><a href="#tab-lumbar">LUMBAR</a></li>
           <li><a href="#tab-extremities">EXTREMITIES</a></li>
       </ul>
       
           <div id="tab-cervical">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0" cellpadding="0" cellspacing="0">
                         <tr class="row2">
				               <td width="150"><b>CERVICAL:</b></td>
				               <td width="150"></td>
				               <td width="150"></td>	
				               <td width="150"></td>	
				               <td width="500"></td>				               
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>Jacksons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="jacksonsr" value="Right" <c:if test="${hamiltonchiropractic.jacksonsr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="jacksonsl" value="Left" <c:if test="${hamiltonchiropractic.jacksonsl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="jacksonslo" value="Localized" <c:if test="${hamiltonchiropractic.jacksonslo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>	 Foramin Comp</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="foramin_compr" value="Right" <c:if test="${hamiltonchiropractic.foramin_compr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="foramin_compl" value="Left" <c:if test="${hamiltonchiropractic.foramin_compl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="foramin_complo" value="Localized" <c:if test="${hamiltonchiropractic.foramin_complo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>
				                 
				                  </tr>
				                  
				                  <tr class="row1">
				                  <td>Shoulder Depr</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="shoulder_deprr" value="Right" <c:if test="${hamiltonchiropractic.shoulder_deprr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="shoulder_deprl" value="Left" <c:if test="${hamiltonchiropractic.shoulder_deprl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="shoulder_deprlo" value="Localized" <c:if test="${hamiltonchiropractic.shoulder_deprlo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>
				                 
				                  </tr>
              <tr class="row1">
				                  <td>Georges	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="georgesr" value="Right" <c:if test="${hamiltonchiropractic.georgesr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="georgesl" value="Left" <c:if test="${hamiltonchiropractic.georgesl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="georgeslo" value="Localized" <c:if test="${hamiltonchiropractic.georgeslo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>O'Donoghues</td>	
				                  <td valign="top" align="left" class="input_txt">Right<select width="50%" name="odonor"><option value="activerom" <c:if test="${hamiltonchiropractic.odonor=='activerom'}"><c:out value="selected"/></c:if>>pain on active ROM</option><option value="passiverom" <c:if test="${hamiltonchiropractic.odonor=='passiverom'}"><c:out value="selected"/></c:if>>pain on passive ROM</option></select></td>
				                 <td class="input_txt" align="left">Left <select width="50%" name="odonol"><option value="activerom" <c:if test="${hamiltonchiropractic.odonol=='activerom'}"><c:out value="selected"/></c:if>>pain on active ROM</option><option value="passiverom" <c:if test="${hamiltonchiropractic.odonol=='passiverom'}"><c:out value="selected"/></c:if>>pain on passive ROM</option></select></td>
				                  			                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Bakody Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="bakody_signr" value="Right" <c:if test="${hamiltonchiropractic.bakody_signr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="bakody_signl" value="Left" <c:if test="${hamiltonchiropractic.bakody_signl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="bakody_signlo" value="Localized" <c:if test="${hamiltonchiropractic.bakody_signlo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Distraction Test*</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="distraction_testr" value="Right" <c:if test="${hamiltonchiropractic.distraction_testr=='Right'}"><c:out value="Checked"/></c:if>>Relief</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="distraction_testl" value="Left" <c:if test="${hamiltonchiropractic.distraction_testl=='Left'}"><c:out value="Checked"/></c:if>>No relief</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Valsalva 	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalvar" value="Right" <c:if test="${hamiltonchiropractic.valsalvar=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalval" value="Left" <c:if test="${hamiltonchiropractic.valsalval=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="valsalvalo" value="Localized" <c:if test="${hamiltonchiropractic.valsalvalo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Spinal Percuss</td>
				                  <td>Painlevel</td>
				                  <td><input type="text" name="spinal_percuss" value="${hamiltonchiropractic.spinal_percuss }"></td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Grip Dynamom 	</td>
				                  <td>Right</td>
				                  <td><input type="text" name="gripdynamomright" value="${hamiltonchiropractic.gripdynamomright }"></td>	
				                  <td>Left</td>
				                  <td><input type="text" name="gripdynamomleft" value="${hamiltonchiropractic.gripdynamomleft }"></td>			                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Adsons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adsonsr" value="Right" <c:if test="${hamiltonchiropractic.adsonsr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adsonsl" value="Left" <c:if test="${hamiltonchiropractic.adsonsl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="adsonslo" value="Localized" <c:if test="${hamiltonchiropractic.adsonslo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rust Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="rustsignr" value="Right" <c:if test="${hamiltonchiropractic.rustsignr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="rustsignl" value="Left" <c:if test="${hamiltonchiropractic.rustsignl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="rustsignlo" value="Localized" <c:if test="${hamiltonchiropractic.rustsignlo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>				                 
				                  </tr>
				                  </table>
				                   <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td><input type="reset" class="submit_btn" value="Cancel"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td></td>
				                  <!--  <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td> -->
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
				                <div id="tab-thoricic">
             
             
             
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  
                  
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                         <tr class="row2">
				               <td width="150"><b>THORACIC:</b></td>	
				               	<td width="300"></td>
				               <td width="300"></td>	
				               <td width="200"></td>	
				               <td width="100"></td>
				               	               
				                  </tr>
				                 
				                  <tr class="row1">
				                  <td>Spinal Percuss</td>
				                  <td>Painlevel</td>
				                  <td></td>				                 
				                  </tr>
			                     <tr class="row1">
				                  <td>Adam's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adams_testr" value="Hump Remains" <c:if test="${hamiltonchiropractic.adams_testr=='Hump Remains'}"><c:out value="Checked"/></c:if>>Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adams_testl" value="Hump Dissap"<c:if test="${hamiltonchiropractic.adams_testl=='Hump Dissap'}"><c:out value="Checked"/></c:if>>Hump Dissapears</td>				                  			                 
				                  </tr>
         <tr class="row1">
				                  <td>Sheppal Sign</td>
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="sheppal_signr" value="Pain When Bending towards Thoracic Lesison" <c:if test="${hamiltonchiropractic.sheppal_signr=='Pain When Bending towards Thoracic Lesison'}"><c:out value="Checked"/></c:if>>Pain When Bending towards Thoracic Lesison</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="sheppal_signl" value="Pain When Bending away from Thoracic Leison" <c:if test="${hamiltonchiropractic.sheppal_signl=='Pain When Bending away from Thoracic Leison'}"><c:out value="Checked"/></c:if>>Pain When Bending away from Thoracic Lesion</td>				                  			                    			                 
				                  </tr>
   <tr class="row1">
				                  <td>Soto Hall</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="soto_hallr" value="C/S Pain" <c:if test="${hamiltonchiropractic.soto_hallr=='C/s Pain'}"><c:out value="Checked"/></c:if>>C/S Pain   </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="soto_halll" value="T/S Pain" <c:if test="${hamiltonchiropractic.soto_halll=='T/S Pain'}"><c:out value="Checked"/></c:if>>T/S Pain</td>				                  			                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Compression Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="compression_testr" value="Right" <c:if test="${hamiltonchiropractic.compression_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="compression_testl" value="Left" <c:if test="${hamiltonchiropractic.compression_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="compression_testlo" value="Localized" <c:if test="${hamiltonchiropractic.compression_testlo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>				                 
				                  </tr>
				                  <tr height="300" class="row1">
				                  
				                  
				                  
				                  <td>
				                  
				                  <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td><input type="reset" class="submit_btn" value="Cancel"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td></td>
				                  <!--  <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td> -->
				                 </table>
				                 
				                 
				                 
				                 </td>
				                 
				                 
				                 
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
				   <div id="tab-lumbar">
             <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
                        		                
                  <table border="0" cellpadding="0" cellspacing="0">
                         <tr class="row2">
				               <td width="150"><b>LUMBAR:</b></td>
				               <td width="180"></td>
				               <td width="300"></td>	
				               <td width="300"></td>
				               <td width="300"></td>			               
				                  </tr>              
<tr class="row1">
				                  <td>Antalgia</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="antalgiar" value="Right" <c:if test="${hamiltonchiropractic.antalgiar=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="antalgial" value="Left" <c:if test="${hamiltonchiropractic.antalgial=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>				            
				                  <tr class="row1">
				                  <td>Spinal Percussion</td>
				                  <td>
<label for="amount"><b>Pain Scale:</b></label>
	 <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;" name="painscale" />&nbsp;&nbsp;&nbsp;
 <div id="slider"></div></td>
				                 <td class="input_txt" align="left"></td>
				                 <td></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>Valsalva	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalvalr" value="Right" <c:if test="${hamiltonchiropractic.valsalvalr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalvall" value="Left" <c:if test="${hamiltonchiropractic.valsalvall=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>Minors Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="minors_signr" value="Right" <c:if test="${hamiltonchiropractic.minors_signr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="minors_signl" value="Left" <c:if test="${hamiltonchiropractic.minors_signl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>Braggard's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braggards_testr" value="Right" <c:if test="${hamiltonchiropractic.braggards_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braggards_testl" value="Left" <c:if test="${hamiltonchiropractic.braggards_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>SLR</td>
				                 <td width="350">Right<select width="50%" name="slrr" <c:if test="${hamiltonchiropractic.slrr=='30'}"><c:out value="selected"/></c:if>><option value="30">30</option><option value="45" <c:if test="${hamiltonchiropractic.slrr=='45'}"><c:out value="selected"/></c:if>>45</option><option value="70" <c:if test="${hamiltonchiropractic.slrr=='70'}"><c:out value="selected"/></c:if>>70</option></select>&nbsp;&nbsp;</td>
				                 <td class="input_txt" align="left">Left<select width="50%" name="slrl"><option value="30" <c:if test="${hamiltonchiropractic.slrl=='30'}"><c:out value="selected"/></c:if>>30</option><option value="45" <c:if test="${hamiltonchiropractic.slrl=='45'}"><c:out value="selected"/></c:if>>45</option><option value="70" <c:if test="${hamiltonchiropractic.slrl=='70'}"><c:out value="selected"/></c:if>>70</option></select>&nbsp;&nbsp;</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>WLR</td>
				                  <td width="350">Right<select width="50%" name="wlrr" ><option value="30" <c:if test="${hamiltonchiropractic.slrr=='30'}"><c:out value="selected"/></c:if>>30</option><option value="45" <c:if test="${hamiltonchiropractic.slrr=='45'}"><c:out value="selected"/></c:if>>45</option><option value="70" <c:if test="${hamiltonchiropractic.slrr=='70'}"><c:out value="selected"/></c:if>>70</option></select>&nbsp;&nbsp;</td>
				                 <td class="input_txt" align="left">Left<select width="50%" name="wlrl"><option value="30" <c:if test="${hamiltonchiropractic.slrl=='30'}"><c:out value="selected"/></c:if>>30</option><option value="45" <c:if test="${hamiltonchiropractic.slrl=='45'}"><c:out value="selected"/></c:if>>45</option><option value="70" <c:if test="${hamiltonchiropractic.slrl=='70'}"><c:out value="selected"/></c:if>>70</option></select>&nbsp;&nbsp;</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Hoovers	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hooversr" value="Right" <c:if test="${hamiltonchiropractic.hooversr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="hooversl" value="Left" <c:if test="${hamiltonchiropractic.hooversl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Dbl Leg Raise</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dbl_leg_raiser" value="Right" <c:if test="${hamiltonchiropractic.dbl_leg_raiser=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dbl_leg_raisel" value="Left" <c:if test="${hamiltonchiropractic.dbl_leg_raisel=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Long Leg Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="long_leg_testr" value="Right" <c:if test="${hamiltonchiropractic.long_leg_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="long_leg_testl" value="Left" <c:if test="${hamiltonchiropractic.long_leg_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Anvil Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="anvil_testr" value="Right" <c:if test="${hamiltonchiropractic.anvil_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="anvil_testl" value="Left" <c:if test="${hamiltonchiropractic.anvil_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Thomas	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thomasr" value="Right" <c:if test="${hamiltonchiropractic.thomasr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thomasl" value="Left" <c:if test="${hamiltonchiropractic.thomasl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Milgram's Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="milgrams_testr" value="Right" <c:if test="${hamiltonchiropractic.milgrams_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="milgrams_testl" value="Left" <c:if test="${hamiltonchiropractic.milgrams_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Obers		</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="obersr" value="Right" <c:if test="${hamiltonchiropractic.obersr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="obersl" value="Left" <c:if test="${hamiltonchiropractic.obersl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Illiac Comp	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="illiaccompr" value="Right" <c:if test="${hamiltonchiropractic.illiaccompr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="illiaccompl" value="Left" <c:if test="${hamiltonchiropractic.illiaccompl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Yeomans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yeomansr" value="Right" <c:if test="${hamiltonchiropractic.yeomansr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yeomansl" value="Left" <c:if test="${hamiltonchiropractic.yeomansl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>Allis Sign        	</td>
				                 
				                 <td width="350">Right<select width="50%" name="allis_signr"><option value="ltibia" <c:if test="${hamiltonchiropractic.allis_signr=='ltibia'}"><c:out value="selected"/></c:if>>Long Tibia</option><option value="femur" <c:if test="${hamiltonchiropractic.allis_signr=='femur'}"><c:out value="selected"/></c:if>>Femur</option></select>&nbsp;&nbsp;</td>	
				               <td width="350">Left<select width="50%" name="allis_signl"><option value="ltibia" <c:if test="${hamiltonchiropractic.allis_signl=='ltibia'}"><c:out value="selected"/></c:if>>Long Tibia</option><option value="femur" <c:if test="${hamiltonchiropractic.allis_signl=='femur'}"><c:out value="selected"/></c:if>>Femur</option></select>&nbsp;&nbsp;</td>
				                  </tr>	
				                  </table>
				                  </td>
				                  </tr>
				                  <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td><input type="reset" class="submit_btn" value="Cancel"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td>
				                  <!--  <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td> --></tr>
				                 </table>
				                <!--   
				                  </table>
				                  </div>
				                  </div>
				                  </td>
				                  </tr>
				                  </table>
				                  
				                  </div>
				                  </div> -->
				                  
				                  </table>
				                  </div>
				                  </div>
				                  
				              <div id="tab-extremities">
             <div id="right_content">              
				 <table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">           
<div>
	    <div class="headings altheading">
	             <h2>EXTREMITIES</h2> 
	            </div>         
          <div class="contentbox">	
           <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
    				<td align="left" valign="top" width="80%" style="padding-right:25px;">
          <table border="0" cellpadding="0" cellspacing="0" >
                         <tr class="row1">
                               <td width="150"></td>
				               
				               <td width="250"></td>
				               <td width="150"></td>
				               <td width="150"></td>				               
				                  </tr> 
				                  <tr class="row2">
				                  <td width="150"></td>
				               <td><b>SHOULDERS</b></td>				               
				               <td></td>
				               <td width="350"></td>
				               <td width="350"></td>				               
				                  </tr>      
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Dugas</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dugasr" value="Right" <c:if test="${hamiltonchiropractic.dugasr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dugasl" value="Left" <c:if test="${hamiltonchiropractic.dugasl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Supraspinatus</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="supraspinatusr" value="Right" <c:if test="${hamiltonchiropractic.supraspinatusr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="supraspinatusl" value="Left" <c:if test="${hamiltonchiropractic.supraspinatusl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Codmans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="codmansr" value="Right" <c:if test="${hamiltonchiropractic.codmansr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="codmansl" value="Left" <c:if test="${hamiltonchiropractic.codmansl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Speed's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="speeds_testr" value="Right" <c:if test="${hamiltonchiropractic.speeds_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="speeds_testl" value="Left" <c:if test="${hamiltonchiropractic.speeds_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Yergasons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yergasonsr" value="Right" <c:if test="${hamiltonchiropractic.yergasonsr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yergasonsl" value="Left" <c:if test="${hamiltonchiropractic.yergasonsl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="150"></td>
				               <td><b>ELBOWS</b></td>
				               <td></td>
				               <td width="350"></td>
				               <td width="350"></td>				               
				                  </tr> 
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelser" value="Right" <c:if test="${hamiltonchiropractic.tinelser=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsel" value="Left" <c:if test="${hamiltonchiropractic.tinelsel=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Ligam Instab   </td>
				                  <td class="input_txt" align="left">Right<select width="50%" name="lingaminstabr"><option value="MCL" <c:if test="${hamiltonchiropractic.lingaminstabr=='MCL'}"><c:out value="selected"/></c:if>>MCL</option><option value="lcl" <c:if test="${hamiltonchiropractic.lingaminstabr=='lcl'}"><c:out value="selected"/></c:if>>LCL</option></select></td>
				                 <td class="input_txt" align="left"> Left<select width="50%" name="lingaminstabl"><option value="mcl" <c:if test="${hamiltonchiropractic.lingaminstabl=='mcl'}"><c:out value="selected"/></c:if>>MCL</option><option value="lcl" <c:if test="${hamiltonchiropractic.lingaminstabl=='lcl'}"><c:out value="selected"/></c:if>>LCL</option></select></td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Golfers Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="golfers_elbowr" value="Right" <c:if test="${hamiltonchiropractic.golfers_elbowr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="golfers_elbowl" value="Left" <c:if test="${hamiltonchiropractic.golfers_elbowl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Tennis Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tennis_elbowr" value="Right" <c:if test="${hamiltonchiropractic.tennis_elbowr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tennis_elbowl" value="Left" <c:if test="${hamiltonchiropractic.tennis_elbowl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 <tr class="row2">
				                 <td width="150"></td>
				               <td><b>WRISTS</b></td>	
				               <td></td>
				               <td width="350"></td>
				               <td width="350"></td>			               
				                  </tr>
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelsr" value="Right" <c:if test="${hamiltonchiropractic.tinelsr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsl" value="Left" <c:if test="${hamiltonchiropractic.tinelsl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Phalens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="phalensr" value="Right" <c:if test="${hamiltonchiropractic.phalensr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="phalensl" value="Left" <c:if test="${hamiltonchiropractic.phalensl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Finkelstein's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="finkelsteins_testr" value="Right" <c:if test="${hamiltonchiropractic.finkelsteins_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="finkelsteins_testl" value="Left" <c:if test="${hamiltonchiropractic.finkelsteins_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Bracelet	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braceletr" value="Right" <c:if test="${hamiltonchiropractic.braceletr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braceletl" value="Left" <c:if test="${hamiltonchiropractic.braceletl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Allens</td>
				                  <td valign="top" align="left" class="input_txt">Right  <select width="50%" name="allensr"><option value="slowradial" <c:if test="${hamiltonchiropractic.allensr=='slowradial'}"><c:out value="selected"/></c:if>>slow radial refill</option><option value="slowulnar" <c:if test="${hamiltonchiropractic.allensr=='slowulnar'}"><c:out value="selected"/></c:if>>slow ulnar refill</option></select></td>
				                 <td class="input_txt" align="left">Left <select width="50%" name="allensl"><option value="slowradial" <c:if test="${hamiltonchiropractic.allensl=='slowradial'}"><c:out value="selected"/></c:if>>slow radial refill</option><option value="slowulnar" <c:if test="${hamiltonchiropractic.allensl=='slowulnar'}"><c:out value="selected"/></c:if>>slow ulnar refill</option></select></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Valgus/Varus </td>
				                  <td valign="top" align="left" class="input_txt">Right<select width="50%" name="valgus_varusr"><option value="MCL" <c:if test="${hamiltonchiropractic.valgus_varusr=='MCL'}"><c:out value="selected"/></c:if>>MCL</option><option value="lcl" <c:if test="${hamiltonchiropractic.valgus_varusr=='lcl'}"><c:out value="selected"/></c:if>>LCL</option></select></td>
				                 <td class="input_txt" align="left">Left<select width="50%" name="valgus_varusl"><option value="mcl" <c:if test="${hamiltonchiropractic.valgus_varusl=='mcl'}"><c:out value="selected"/></c:if>>MCL</option><option value="lcl" <c:if test="${hamiltonchiropractic.valgus_varusl=='lcl'}"><c:out value="selected"/></c:if>>LCL</option></select></td>
				                 <td></td>
				                  </tr>
				                  <tr class="row2">
				                  <td width="150"></td>
				               <td><b>Patellar Ballotment</b></td>	
				               <td></td>
				               <td width="350"></td>
				               <td width="350"></td>			               
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Pat Ball</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="pat_ballr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="pat_balll" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Drawer</td>
				                  <td valign="top" align="left" class="input_txt">Right <select width="50%" name="drawerr"><option value="acl">ACL</option><option value="pcl">PCL</option></select></td>
				                 <td class="input_txt" align="left"> Left<select width="50%" name="drawerl"><option value="acl">ACL</option><option value="pcl">PCL</option></select></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Val/Varus  </td>
				                  <td valign="top" align="left" class="input_txt"> Right<select width="50%" name="lingaminstabr"><option value="MCL">MCL</option><option value="lcl">LCL</option></select></td>
				                 <td class="input_txt" align="left"> Left<select width="50%" name="val_varusl"><option value="mcl">MCL</option><option value="lcl">LCL</option></select></td>
				                 <td></td>
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td> Apleys   </td>
				                  <td valign="top" align="left" class="input_txt"> Right<select width="50%" name="apleysr"><option value="mm">MM</option><option value="lm">LM</option><option value="mcl">MCL</option><option value="lcl">LCL</option></select></td>
				                 <td class="input_txt" align="left">Left <select width="50%" name="apleysl"><option value="mm">MM</option><option value="lm">LM</option><option value="mcl">MCL</option><option value="lcl">LCL</option></select></td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td width="150"></td>
				               <td><b>ANKLES</b></td>	
				               <td></td>
				               <td width="350"></td>
				               <td width="350"></td>			               
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td> Drawer  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawerar" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="draweral" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Thompsons </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thompsonsr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thompsonsl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Tinels </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelsar" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsal" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td> Strunskys</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="strunskysr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="strunskysl" value="Left">Left</td>
				                 
				                  </tr>
				                 
                        <tr class="row1">
                        <td width="150"></td>
				                  <td> Homans </td>				                  
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="homansr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="homansl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Claudication Test </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="claudication_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="claudication_testl" value="Left">Left</td>
				                 
				                  </tr>
				                   
				                 </td>
				                 </tr>
				                 </table>
          
          
          </td>
          </tr>
          </table>
          </div>
          </div>
          </td>
          </tr>
          
				                   <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td><input type="reset" class="submit_btn" value="Cancel"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td></td>
				                  <!--  <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td> -->
				                 </table>
          </table>			             
			</div>
			</div>            
				             
			         
			     
				              <!--     <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td><input type="reset" class="submit_btn" value="Cancel"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td></td>
				                  <!--  <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td> -->
				                 </table>-->
				                
				                 </td>
				                 </tr>
				                 </table>
				                 
				                 
				                 </div>
				                 </div>
				                 
				                 </div>
				                 		                 
				                 </body>
				                 </html>
				                 
				                 
				                 
			  