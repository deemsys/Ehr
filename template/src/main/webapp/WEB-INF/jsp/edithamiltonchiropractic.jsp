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
 <body>
 <br><br>
<div id="tabs">
       <ul>
          <li><a href="#tabs-1">Pain Assessment</a></li>
          <li><a href="#tabs-2">Diagnosis/TP/Goals</a></li>
          <li><a href="#tabs-3">Orthopaedic Tests</a></li>
       </ul>
         
   <div id="tabs-1"> 
<div id="right_content">
<form action="updatehamiltonchiropractic" method="POST">
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
              <c:set value="${hamiltonchiropracticForm.hamiltonchiropractic[0]}" var="hamiltonchiropractic"/>
               <td>I understand you have pain in your:</td>
               <input type="hidden" class="input_txtbx1" id="inp_id" value="${hamiltonchiropractic.initialexamid}" name="initialexamid" />
                 <td><input type="checkbox" name="hacheck" value="HA" <c:if test="${hamiltonchiropractic.hacheck=='HA'}"><c:out value="checked=checked"/></c:if>>&nbsp HA</td>
                 <td><input type="radio" name="ha" value="Right" <c:if test="${hamiltonchiropractic.ha=='Right'}"><c:out value="checked=checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="ha" value="Left" <c:if test="${hamiltonchiropractic.ha=='Left'}"><c:out value="checked=checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="neckcheck" value="Neck" <c:if test="${hamiltonchiropractic.neckcheck=='Neck'}"><c:out value="Checked"/></c:if>>&nbsp Neck</td>
                 <td><input type="radio" name="neck" value="Right" <c:if test="${hamiltonchiropractic.neck=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="neck" value="Left" <c:if test="${hamiltonchiropractic.neck=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="mbcheck" value="MB" <c:if test="${hamiltonchiropractic.mbcheck=='MB'}"><c:out value="Checked"/></c:if>>&nbsp MB</td>
                 <td><input type="radio" name="mb" value="Right" <c:if test="${hamiltonchiropractic.mb=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="mb" value="Left" <c:if test="${hamiltonchiropractic.mb=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="ribscheck" value="Ribs" <c:if test="${hamiltonchiropractic.ribscheck=='Ribs'}"><c:out value="Checked"/></c:if>>&nbsp Ribs</td>
                 <td><input type="radio" name="ribs" value="Right" <c:if test="${hamiltonchiropractic.ribs=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="ribs" value="Left" <c:if test="${hamiltonchiropractic.ribs=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="shouldercheck" value="Shoulder" <c:if test="${hamiltonchiropractic.shouldercheck=='Shoulder'}"><c:out value="Checked"/></c:if> >&nbsp Shoulder</td>
                 <td><input type="radio" name="shoulder" value="Right" <c:if test="${hamiltonchiropractic.shoulder=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="shoulder" value="Left" <c:if test="${hamiltonchiropractic.shoulder=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="elbowcheck" value="Elbow" <c:if test="${hamiltonchiropractic.elbowcheck=='Elbow'}"><c:out value="Checked"/></c:if>>&nbsp Elbow</td>
                 <td><input type="radio" name="elbow" value="Right" <c:if test="${hamiltonchiropractic.elbow=='Right'}"><c:out value="Checked"/></c:if> >&nbsp Right</td>
                 <td><input type="radio" name="elbow" value="Left" <c:if test="${hamiltonchiropractic.elbow=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="handcheck" value="Hand" <c:if test="${hamiltonchiropractic.handcheck=='Hand'}"><c:out value="Checked"/></c:if>>&nbsp Hand</td>
                 <td><input type="radio" name="hand" value="Right" <c:if test="${hamiltonchiropractic.hand=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="hand" value="Left" <c:if test="${hamiltonchiropractic.hand=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="wristcheck" value="Wrist" <c:if test="${hamiltonchiropractic.wristcheck=='Wrist'}"><c:out value="Checked"/></c:if>>&nbsp Wrist</td>
                 <td><input type="radio" name="wrist" value="Right" <c:if test="${hamiltonchiropractic.wrist=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="wrist" value="Left" <c:if test="${hamiltonchiropractic.wrist=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="lbpcheck" value="Lbp" <c:if test="${hamiltonchiropractic.lbpcheck=='Lbp'}"><c:out value="Checked"/></c:if>>&nbsp LBP</td>
                 <td><input type="radio" name="lbp" value="Right" <c:if test="${hamiltonchiropractic.lbp=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="lbp" value="Left" <c:if test="${hamiltonchiropractic.lbp=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="hipcheck" value="Hip" <c:if test="${hamiltonchiropractic.hipcheck=='Hip'}"><c:out value="Checked"/></c:if>>&nbsp Hip</td>
                 <td><input type="radio" name="hip" value="Right" <c:if test="${hamiltonchiropractic.hip=='Right'}"><c:out value="Checked"/></c:if> >&nbsp Right</td>
                 <td><input type="radio" name="hip" value="Left" <c:if test="${hamiltonchiropractic.hip=='Left'}"><c:out value="Checked"/></c:if> >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="legcheck" value="Leg" <c:if test="${hamiltonchiropractic.legcheck=='Leg'}"><c:out value="Checked"/></c:if>>&nbsp Leg</td>
                 <td><input type="radio" name="leg" value="Right" <c:if test="${hamiltonchiropractic.leg=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="leg" value="Left" <c:if test="${hamiltonchiropractic.leg=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="kneecheck" value="Knee" <c:if test="${hamiltonchiropractic.kneecheck=='Knee'}"><c:out value="Checked"/></c:if>>&nbsp Knee</td>
                 <td><input type="radio" name="knee" value="Right" <c:if test="${hamiltonchiropractic.knee=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="knee" value="Left" <c:if test="${hamiltonchiropractic.knee=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="footcheck" value="Foot" <c:if test="${hamiltonchiropractic.footcheck=='Foot'}"><c:out value="Checked"/></c:if>>&nbsp Foot</td>
                 <td><input type="radio" name="foot" value="Right" <c:if test="${hamiltonchiropractic.foot=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="foot" value="Left" <c:if test="${hamiltonchiropractic.foot=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="anklecheck" value="Ankle" <c:if test="${hamiltonchiropractic.anklecheck=='Ankle'}"><c:out value="Checked"/></c:if>>&nbsp Ankle</td>
                 <td><input type="radio" name="ankle" value="Right" <c:if test="${hamiltonchiropractic.ankle=='Right'}"><c:out value="Checked"/></c:if>>&nbsp Right</td>
                 <td><input type="radio" name="ankle" value="Left" <c:if test="${hamiltonchiropractic.ankle=='Left'}"><c:out value="Checked"/></c:if>>&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Did it begin gradually or suddenly?</td>
                 <td><input type="checkbox" name="suddenly" value="Sudden" <c:if test="${hamiltonchiropractic.suddenly=='Sudden'}"><c:out value="Checked"/></c:if>>&nbsp Sudden</td>
                 <td><input type="checkbox" name="gradually" value="Gradual" <c:if test="${hamiltonchiropractic.gradually=='Gradual'}"><c:out value="Checked"/></c:if>>&nbsp Gradual:</td>
                 <td> <input type="text" name="hours" value="${hamiltonchiropractic.hours }">Hours Later</td>
                 <td><input type="text" name="days" value="${hamiltonchiropractic.days }"> Days Later</td>
                 </tr>
                 <tr class="row2">
                 <td>On what date did your injury occur?  </td>
                 <td><input type="text" name="date" class="input_txtbx1" value="${hamiltonchiropractic.date }"></td>
                 <td></td>
                 <td></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>How did it happen?  </td>
                 <td><textarea rows="5" cols="25" name="reason" >"${hamiltonchiropractic.reason }"</textarea></td>
                 </tr>
                 <tr class="row2">
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
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="bending" value="Bending" <c:if test="${hamiltonchiropractic.bending=='Bending'}"><c:out value="Checked"/></c:if>>&nbsp Bending</td>
                 <td><input type="checkbox" name="rest" value="Rest" <c:if test="${hamiltonchiropractic.rest=='Rest'}"><c:out value="Checked"/></c:if>>&nbsp Rest</td>
                 <td><input type="checkbox" name="otherb" value="Other" <c:if test="${hamiltonchiropractic.otherb=='Other'}"><c:out value="Checked"/></c:if>>&nbsp other:
                 <input type="text" name="othere" class="input_txtbx1" value="${hamiltonchiropractic.othere }"></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What have you done for it?  </td>
                 <td><input type="checkbox" name="ice" value="Ice" <c:if test="${hamiltonchiropractic.ice=='Ice'}"><c:out value="Checked"/></c:if>>&nbsp Ice</td>
                 <td><input type="checkbox" name="heat" value="Heat" <c:if test="${hamiltonchiropractic.heat=='Heat'}"><c:out value="Checked"/></c:if>>&nbsp Heat</td>
                 <td><input type="checkbox" name="massage" value="massage" <c:if test="${hamiltonchiropractic.massage=='Massage'}"><c:out value="Checked"/></c:if>>&nbsp Massage</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="aspirin" value="Aspirin" <c:if test="${hamiltonchiropractic.aspirin=='Aspirin'}"><c:out value="Checked"/></c:if>>&nbsp Aspirin</td>
                <td><input type="checkbox" name="otherdone" value="Other" <c:if test="${hamiltonchiropractic.otherdone=='Other'}"><c:out value="Checked"/></c:if>>&nbsp other</td>
                <td><input type="text" name="otherit" class="input_txtbx1"  value="${hamiltonchiropractic.otherit }"></td>
                 <td></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What makes it feel worse? </td>
                 <td><input type="checkbox" name="bendingworse" value="Bending" <c:if test="${hamiltonchiropractic.bendingworse=='Bending'}"><c:out value="Checked"/></c:if>>&nbsp Bending</td>
                 <td><input type="checkbox" name="twisting" value="Twisting" <c:if test="${hamiltonchiropractic.twisting=='Twisting'}"><c:out value="Checked"/></c:if>>&nbsp Twisting</td>
                 <td><input type="checkbox" name="lifting" value="Lifting" <c:if test="${hamiltonchiropractic.lifting=='Lifting'}"><c:out value="Checked"/></c:if>>&nbsp Lifting</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="walking" value="Walking" <c:if test="${hamiltonchiropractic.walking=='Walking'}"><c:out value="Checked"/></c:if>>&nbsp Walking</td>
                <td><input type="checkbox" name="activity" value="Activity" <c:if test="${hamiltonchiropractic.activity=='Activity'}"><c:out value="Checked"/></c:if>>&nbsp Activity</td>
                <td><input type="checkbox" name="otherworse" value="Other" <c:if test="${hamiltonchiropractic.otherworse=='Other'}"><c:out value="Checked"/></c:if>>&nbsp other
                 <input type="text" name="otherfeel" class="input_txtbx1" value="${hamiltonchiropractic.otherworse }"></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>How would you describe the pain?   </td>
                 <td><input type="checkbox" name="sharp" value="Sharp/Shooting" <c:if test="${hamiltonchiropractic.sharp=='Sharp/Shooting'}"><c:out value="Checked"/></c:if>>&nbsp Sharp/Shooting</td>
                 <td><input type="checkbox" name="severe" value="Severe/Intolerable" <c:if test="${hamiltonchiropractic.severe=='Severe/Intolerable'}"><c:out value="Checked"/></c:if>>Severe/intolerable</td>
                 <td><input type="checkbox" name="dull" value="Dull/achy" <c:if test="${hamiltonchiropractic.dull=='Dull/achy'}"><c:out value="Checked"/></c:if>>&nbsp Dull/achy</td>
                 </tr>
                 <tr class="row2">
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
                  <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="stabbing" value="Stabbing" <c:if test="${hamiltonchiropractic.stabbing=='Stabbing'}"><c:out value="Checked"/></c:if>>&nbsp Stabbing  </td>
                <td><input type="checkbox" name="cramping" value="Cramping" <c:if test="${hamiltonchiropractic.cramping=='Cramping'}"><c:out value="Checked"/></c:if>>&nbsp Cramping</td>
                <td><input type="checkbox" name="otherdescribe" value="Other" <c:if test="${hamiltonchiropractic.otherdescribe=='Other'}"><c:out value="Checked"/></c:if>>&nbsp Other 
                 <input type="text" name="otherpain" class="input_txtbx1" value="${hamiltonchiropractic.otherpain }"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Is it constant or does it come and go?</td>
                 <td><input type="checkbox" name="constant" value="Constant" <c:if test="${hamiltonchiropractic.constant=='Constant'}"><c:out value="Checked"/></c:if>>&nbsp Constant</td>
                 <td><input type="checkbox" name="intermittent" value="Intermittent" <c:if test="${hamiltonchiropractic.intermittent=='Intermittent'}"><c:out value="Checked"/></c:if>>&nbsp Intermittent</td>
                 </tr>
                 <tr class="row2">
                 <td>Does the pain shoot down your arms and/or legs, or is it contained in one area?</td>
                 <td><input type="checkbox" name="local" value="Local" <c:if test="${hamiltonchiropractic.local=='Local'}"><c:out value="Checked"/></c:if>>&nbsp Local</td>
                 <td><input type="checkbox" name="diffuse" value="Diffuse" <c:if test="${hamiltonchiropractic.diffuse=='Diffuse'}"><c:out value="Checked"/></c:if>>&nbsp Diffuse</td>
                 <td><input type="checkbox" name="radiates" value="Radiates" <c:if test="${hamiltonchiropractic.radiates=='Radiates'}"><c:out value="Checked"/></c:if>>&nbsp Radiates to: </td>
                 <td> <input type="text" name="otherradiates" class="input_txtbx1" value="${hamiltonchiropractic.otherradiates }"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Would you describe it as:</td>
                 <td><input type="checkbox" name="mild" value="Mild" <c:if test="${hamiltonchiropractic.mild=='Mild'}"><c:out value="Checked"/></c:if>>&nbsp Mild</td>
                 <td><input type="checkbox" name="moderate" value="Moderate" <c:if test="${hamiltonchiropractic.moderate=='Moderate'}"><c:out value="Checked"/></c:if>>&nbsp Moderate</td>
                 <td><input type="checkbox" name="severepain" value="Severe" <c:if test="${hamiltonchiropractic.severepain=='Severe'}"><c:out value="Checked"/></c:if>>&nbsp Severe</td>
                 <td><input type="checkbox" name="crippling" value="Crippling" <c:if test="${hamiltonchiropractic.crippling=='Crippling'}"><c:out value="Checked"/></c:if>>&nbsp Crippling</td>
                 </tr>
                 <tr class="row2">
                 <td>Is it worse in the morning or at night?  </td>
                 <td><input type="checkbox" name="am" value="AM" <c:if test="${hamiltonchiropractic.am=='AM'}"><c:out value="Checked"/></c:if>>&nbsp AM</td>
                 <td><input type="checkbox" name="pm" value="PM" <c:if test="${hamiltonchiropractic.pm=='PM'}"><c:out value="Checked"/></c:if>>&nbsp PM</td>
                 <td><input type="checkbox" name="othertime" value="Other" <c:if test="${hamiltonchiropractic.othertime=='Other'}"><c:out value="Checked"/></c:if>>&nbsp Other<input type="text" name="otherdn" class="input_txtbx1" value="${hamiltonchiropractic.otherdn }"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Is your condition getting worse or better?</td>
                 <td><input type="checkbox" name="better" value="Better" <c:if test="${hamiltonchiropractic.better=='Better'}"><c:out value="Checked"/></c:if>>&nbsp Better</td>
                 <td><input type="checkbox" name="same" value="Same" <c:if test="${hamiltonchiropractic.same=='Same'}"><c:out value="Checked"/></c:if>>&nbsp Same</td>
                 <td><input type="checkbox" name="worse" value="Progressively Worse" <c:if test="${hamiltonchiropractic.worse=='Progressively Worse'}"><c:out value="Checked"/></c:if>>&nbsp Progressively Worse</td>
                 </tr>
                 <tr class="row2">
                 <td>Are you working? </td>
                  <td><input type="checkbox" name="yes" value="Yes" <c:if test="${hamiltonchiropractic.yes=='Yes'}"><c:out value="Checked"/></c:if>>&nbsp Yes</td>
                 <td><input type="checkbox" name="no" value="no" <c:if test="${hamiltonchiropractic.no=='No'}"><c:out value="Checked"/></c:if>>&nbsp No</td>
                 <td>When was your last day?</td><td><input type="text" name="day" class="input_txtbx1" value="${hamiltonchiropractic.day }"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Has your condition affected your daily living in any way? </td>
                <td><input type="checkbox" name="work" value="Work" <c:if test="${hamiltonchiropractic.work=='Work'}"><c:out value="Checked"/></c:if>>&nbsp Work</td>
                 <td><input type="checkbox" name="sleep" value="Sleep" <c:if test="${hamiltonchiropractic.sleep=='Sleep'}"><c:out value="Checked"/></c:if>>&nbsp Sleep</td>
                 <td><input type="checkbox" name="otherdaily" value="Other" <c:if test="${hamiltonchiropractic.otherdaily=='Other'}"><c:out value="Checked"/></c:if>>&nbsp Other
                 <input type="text" name="othercondition" class="input_txtbx1" value="${hamiltonchiropractic.othercondition }"></td>
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
            <td>Assessment/Diagnosis:</td>
             <td><input type="checkbox" name="sameass" value="Same" <c:if test="${hamiltonchiropractic.sameass=='Same'}"><c:out value="Checked"/></c:if>>&nbsp Same</td>
                 <td><input type="checkbox" name="improved" value="Improved" <c:if test="${hamiltonchiropractic.improved=='Improved'}"><c:out value="Checked"/></c:if>>&nbsp Improved</td>
                 <td><input type="checkbox" name="worseass" value="Worse" <c:if test="${hamiltonchiropractic.worse=='Worse'}"><c:out value="Checked"/></c:if>>&nbsp Worse</td>
                 <td><input type="checkbox" name="plateau" value="Plateau" <c:if test="${hamiltonchiropractic.plateau=='Plateau'}"><c:out value="Checked"/></c:if>>&nbsp Plateau</td>
             </tr>
             <tr class="row2">
                  <td></td>
             
                 <td><input type="checkbox" name="preinjury" value="At pre-injury Status" <c:if test="${hamiltonchiropractic.preinjury=='At pre-injury Status'}"><c:out value="Checked"/></c:if>>&nbsp At pre-injury Status</td>
                  <td>( <input type="checkbox" name="slight" value="Slightly" <c:if test="${hamiltonchiropractic.slight=='Slightly'}"><c:out value="Checked"/></c:if>>&nbsp Slightly
                   <input type="checkbox" name="moderatly" value="Moderatly" <c:if test="${hamiltonchiropractic.moderatly=='Moderatly'}"><c:out value="Checked"/></c:if>>&nbsp Moderatly
                   <input type="checkbox" name="great" value="Greatly" <c:if test="${hamiltonchiropractic.great=='Greatly'}"><c:out value="Checked"/></c:if>>&nbsp Greatly )</td>
                   
                   <td></td>
                   <td></td>
             </tr>
             <tr class="row1">
                 <td>Treatment plan:</td>
                 <td><input type="checkbox" name="chiropractic" value="Skilled Chiropractic Spinal Manipulation" <c:if test="${hamiltonchiropractic.chiropractic=='Skilled Chiropractic Spinal Manipulation'}"><c:out value="Checked"/></c:if>>&nbsp Skilled Chiropractic Spinal Manipulation  </td>
                 <td><input type="checkbox" name="ems" value="EMS" <c:if test="${hamiltonchiropractic.ems=='EMS'}"><c:out value="Checked"/></c:if>>&nbsp EMS</td>
                 <td><input type="checkbox" name="iceplan" value="Ice" <c:if test="${hamiltonchiropractic.iceplan=='Ice'}"><c:out value="Checked"/></c:if>>&nbsp Ice  </td>
                 <td><input type="checkbox" name="heatplan" value="Heat" <c:if test="${hamiltonchiropractic.heatplan=='Heat'}"><c:out value="Checked"/></c:if>>&nbsp Heat</td>
            </tr>
            <tr class="row2">
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
            <td><input type="checkbox" name="remobilization" value="Remobilization" <c:if test="${hamiltonchiropractic.remobilization=='Remobilization'}"><c:out value="Checked"/></c:if>>&nbsp Remobilization  </td>
            </tr>
             <tr class="row2">
            <td></td>
            <td><input type="checkbox" name="rehab" value="Rehab" <c:if test="${hamiltonchiropractic.rehab=='Rehab'}"><c:out value="Checked"/></c:if>>&nbsp Rehab  </td>
            <td><input type="checkbox" name="modificat" value="Modificat" <c:if test="${hamiltonchiropractic.modificat=='Modificat'}"><c:out value="Checked"/></c:if>>&nbsp Modificat  </td>
            <td><input type="checkbox" name="care" value="Release from care" <c:if test="${hamiltonchiropractic.care=='Release from care'}"><c:out value="Checked"/></c:if>>&nbsp Release from care   </td>
            <td><input type="checkbox" name="refer" value="Refer">&nbsp Refer  </td>
            </tr>      
            
            <tr class="row1">
                <td>Goals:</td>
                <td> <h4>Short Term:</h4></td>
                <td><input type="checkbox" name="decreasepain" value="Decrease Pain" <c:if test="${hamiltonchiropractic.decreasepain=='Decrease Pain'}"><c:out value="Checked"/></c:if>>&nbsp Decrease Pain </td>
                <td><input type="checkbox" name="decreasespam" value="Decrease Spam" <c:if test="${hamiltonchiropractic.decreasespam=='Decrease Spam'}"><c:out value="Checked"/></c:if>>&nbsp Decrease Spasm  </td>
                <td><input type="checkbox" name="increaserom" value="Increase ROM" <c:if test="${hamiltonchiropractic.increaserom=='Increase ROM'}"><c:out value="Checked"/></c:if>>&nbsp Increase ROM</td>
             </tr>
             <tr class="row2">
                <td></td>
                <td></td>                   
                <td><input type="checkbox" name="improveadl" value="Improve ADL" <c:if test="${hamiltonchiropractic.improveadl=='Improve ADL'}"><c:out value="Checked"/></c:if>>&nbsp Improve ADL    </td>
                <td><input type="checkbox" name="improvesubluxations" value="Improve Subluxations" <c:if test="${hamiltonchiropractic.improvesubluxations=='Improve Subluxations'}"><c:out value="Checked"/></c:if>>&nbsp Improve Subluxations</td>
                <td></td>
             </tr>
              <tr class="row1">
                <td></td> 
                <td> <h4>Long Term:</h4></td>
                <td><input type="checkbox" name="fullactivity" value="Full Activity" <c:if test="${hamiltonchiropractic.fullactivity=='Full Activity'}"><c:out value="Checked"/></c:if>>&nbsp Full Activity    </td>
                <td><input type="checkbox" name="returntowork" value="Return To Work" <c:if test="${hamiltonchiropractic.returntowork=='Return To Work'}"><c:out value="Checked"/></c:if>>&nbsp Return to Work     </td>
                <td><input type="checkbox" name="renewsports" value="Renew Sports" <c:if test="${hamiltonchiropractic.renewsports=='Renew Sports'}"><c:out value="Checked"/></c:if>>&nbsp Renew sports    </td>
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
				                  
				                  <tr class="row2">
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
				                  <tr class="row2">
				                  <td>O'Donoghues</td>	
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="odonor" value="Right" <c:if test="${hamiltonchiropractic.odonor=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="odonol" value="Left" <c:if test="${hamiltonchiropractic.odonol=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="odonolo" value="Localized" <c:if test="${hamiltonchiropractic.odonolo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>			                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Bakody Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="bakody_signr" value="Right" <c:if test="${hamiltonchiropractic.bakody_signr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="bakody_signl" value="Left" <c:if test="${hamiltonchiropractic.bakody_signl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="bakody_signlo" value="localized" <c:if test="${hamiltonchiropractic.bakody_signlo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Distraction Test*</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="distraction_testr" value="Right" <c:if test="${hamiltonchiropractic.distraction_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="distraction_testl" value="Left" <c:if test="${hamiltonchiropractic.distraction_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="distraction_testlo" value="Localized" <c:if test="${hamiltonchiropractic.distraction_testlo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Valsalva 	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalvar" value="Right" <c:if test="${hamiltonchiropractic.valsalvar=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalval" value="Left" <c:if test="${hamiltonchiropractic.valsalval=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="valsalvalo" value="Localized" <c:if test="${hamiltonchiropractic.valsalvalo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>				                 
				                  </tr>
				                  <tr class="row2">
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
				                  <tr class="row2">
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
				                  <td>Spinal Percuss</td>
				                  <td>Painlevel</td>
				                  <td><input type="text" name="spinalpercusst" value="spinalpercusst"></td>				                 
				                  </tr>
			                     <tr class="row1">
				                  <td>Adam's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adams_testr" value="Hump Remains" <c:if test="${hamiltonchiropractic.adams_testr=='Hump Remains'}"><c:out value="Checked"/></c:if>>Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adams_testl" value="Hump Dissap">Hump Dissap</td>				                  			                 
				                  </tr>
         <tr class="row2">
				                  <td>Sheppal Sign</td>
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="sheppal_signr" value="Pain When Bending towards Thoracic Lesison" <c:if test="${hamiltonchiropractic.sheppal_signr=='Pain When Bending towards Thoracic Lesison'}"><c:out value="Checked"/></c:if>>Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="sheppal_signl" value="Pain When Bending away from Thoracic Leison" <c:if test="${hamiltonchiropractic.sheppal_signl=='Pain When Bending away from Thoracic Leison'}"><c:out value="Checked"/></c:if>>Hump Dissap</td>				                  			                    			                 
				                  </tr>
   <tr class="row1">
				                  <td>Soto Hall</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="soto_hallr" value="C/S Pain" <c:if test="${hamiltonchiropractic.soto_hallr=='C/s Pain'}"><c:out value="Checked"/></c:if>>C/S Pain   </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="soto_halll" value="T/S Pain" <c:if test="${hamiltonchiropractic.soto_halll=='T/S Pain'}"><c:out value="Checked"/></c:if>>T/S Pain</td>				                  			                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Compression Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="compression_testr" value="Right" <c:if test="${hamiltonchiropractic.compression_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="compression_testl" value="Left" <c:if test="${hamiltonchiropractic.compression_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                  <td class="input_txt"><input type="checkbox" name="compression_testlo" value="Localized" <c:if test="${hamiltonchiropractic.compression_testlo=='Localized'}"><c:out value="Checked"/></c:if>>Localized</td>				                 
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
				                  <td>Antalgia</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="antalgiar" value="Right" <c:if test="${hamiltonchiropractic.antalgiar=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="antalgial" value="Left" <c:if test="${hamiltonchiropractic.antalgial=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>				            
				                  <tr class="row1">
				                  <td>Spinal Percuss</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="spinal_percusslr" value="Right" <c:if test="${hamiltonchiropractic.spinal_percusslr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="spinal_percussll" value="Left" <c:if test="${hamiltonchiropractic.spinal_percussll=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Valsalva	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalvalr" value="Right" <c:if test="${hamiltonchiropractic.valsalvalr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalvall" value="Left" <c:if test="${hamiltonchiropractic.valsalvall=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>Minors Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="minors_signr" value="Right" <c:if test="${hamiltonchiropractic.minors_signr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="minors_signl" value="Left" <c:if test="${hamiltonchiropractic.minors_signl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Braggard's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braggards_testr" value="Right" <c:if test="${hamiltonchiropractic.braggards_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braggards_testl" value="Left" <c:if test="${hamiltonchiropractic.braggards_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>SLR</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="slrr" value="30-45-70" <c:if test="${hamiltonchiropractic.slrr=='30-45-70'}"><c:out value="Checked"/></c:if>>30-45-70     </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="slrl" value="30-45-70" <c:if test="${hamiltonchiropractic.slrl=='30-45-70'}"><c:out value="Checked"/></c:if>>30-45-70</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>WLR</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="wlrr" value="30-45-70" <c:if test="${hamiltonchiropractic.wlrr=='30-45-70'}"><c:out value="Checked"/></c:if>>30-45-70</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="wlrl" value="30-45-70" <c:if test="${hamiltonchiropractic.wlrl=='30-45-70'}"><c:out value="Checked"/></c:if>>30-45-70</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Hoovers	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hooversr" value="Right" <c:if test="${hamiltonchiropractic.hooversr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="hooversl" value="Left" <c:if test="${hamiltonchiropractic.hooversl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Dbl Leg Raise</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dbl_leg_raiser" value="Right" <c:if test="${hamiltonchiropractic.dbl_leg_raiser=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dbl_leg_raisel" value="Left" <c:if test="${hamiltonchiropractic.dbl_leg_raisel=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Long Leg Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="long_leg_testr" value="Right" <c:if test="${hamiltonchiropractic.long_leg_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="long_leg_testl" value="Left" <c:if test="${hamiltonchiropractic.long_leg_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Anvil Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="anvil_testr" value="Right" <c:if test="${hamiltonchiropractic.anvil_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="anvil_testl" value="Left" <c:if test="${hamiltonchiropractic.anvil_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Thomas	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thomasr" value="Right" <c:if test="${hamiltonchiropractic.thomasr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thomasl" value="Left" <c:if test="${hamiltonchiropractic.thomasl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Milgram's Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="milgrams_testr" value="Right" <c:if test="${hamiltonchiropractic.milgrams_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="milgrams_testl" value="Left" <c:if test="${hamiltonchiropractic.milgrams_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Obers		</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="obersr" value="Right" <c:if test="${hamiltonchiropractic.obersr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="obersl" value="Left" <c:if test="${hamiltonchiropractic.obersl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Illiac Comp	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="illiaccompr" value="Right" <c:if test="${hamiltonchiropractic.illiaccompr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="illiaccompl" value="Left" <c:if test="${hamiltonchiropractic.illiaccompl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Yeomans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yeomansr" value="Right" <c:if test="${hamiltonchiropractic.yeomansr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yeomansl" value="Left" <c:if test="${hamiltonchiropractic.yeomansl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Allis Sign        	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="allis_signr" value="Long tibiafemur" <c:if test="${hamiltonchiropractic.allis_signr=='Long tibiafemur'}"><c:out value="Checked"/></c:if>>Long tibiafemur  </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="allis_signl" value="Long tibia/femur" <c:if test="${hamiltonchiropractic.allis_signl=='Long tibia/femur'}"><c:out value="Checked"/></c:if>>Long tibia/femur</td>
				                 
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
				                  <td>Dugas</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dugasr" value="Right" <c:if test="${hamiltonchiropractic.dugasr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dugasl" value="Left" <c:if test="${hamiltonchiropractic.dugasl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Supraspinatus</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="supraspinatusr" value="Right" <c:if test="${hamiltonchiropractic.supraspinatusr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="supraspinatusl" value="Left" <c:if test="${hamiltonchiropractic.supraspinatusl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Codmans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="codmansr" value="Right" <c:if test="${hamiltonchiropractic.codmansr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="codmansl" value="Left" <c:if test="${hamiltonchiropractic.codmansl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Speed's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="speeds_testr" value="Right" <c:if test="${hamiltonchiropractic.speeds_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="speeds_testl" value="Left" <c:if test="${hamiltonchiropractic.speeds_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Yergasons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yergasonsr" value="Right" <c:if test="${hamiltonchiropractic.yergasonsr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yergasonsl" value="Left" <c:if test="${hamiltonchiropractic.yergasonsl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ELBOWS</b></td>				               
				                  </tr> 
				                  <tr class="row1">
				                  <td>tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelser" value="Right" <c:if test="${hamiltonchiropractic.tinelser=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsel" value="Left" <c:if test="${hamiltonchiropractic.tinelsel=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Ligam Instab   </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lingaminstabr" value="Right" <c:if test="${hamiltonchiropractic.lingaminstabr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lingaminstabl" value="Left" <c:if test="${hamiltonchiropractic.lingaminstabl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Golfers Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="golfers_elbowr" value="Right" <c:if test="${hamiltonchiropractic.golfers_elbowr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="golfers_elbowl" value="Left" <c:if test="${hamiltonchiropractic.golfers_elbowl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Tennis Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tennis_elbowr" value="Right" <c:if test="${hamiltonchiropractic.tennis_elbowr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tennis_elbowl" value="Left" <c:if test="${hamiltonchiropractic.tennis_elbowl=='Left'}"><c:out value="Checked"/></c:if> >Left</td>
				                 <tr class="row1">
				               <td><b>WRISTS</b></td>				               
				                  </tr>
				                  </tr>
				                   <tr class="row1">
				                  <td>Tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelsr" value="Right" <c:if test="${hamiltonchiropractic.tinelsr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsl" value="Left" <c:if test="${hamiltonchiropractic.tinelsl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Phalens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="phalensr" value="Right" <c:if test="${hamiltonchiropractic.phalensr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="phalensl" value="Left" <c:if test="${hamiltonchiropractic.phalensl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Finkelstein's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="finkelsteins_testr" value="Right" <c:if test="${hamiltonchiropractic.finkelsteins_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="finkelsteins_testl" value="Left" <c:if test="${hamiltonchiropractic.finkelsteins_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Bracelet	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braceletr" value="Right" <c:if test="${hamiltonchiropractic.braceletr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braceletl" value="Left" <c:if test="${hamiltonchiropractic.braceletl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Allens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="allensr" value="Blood refilling capacity in radial" <c:if test="${hamiltonchiropractic.allensr=='Blood refilling capacity in radial'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="allensl" value="Ulnar artery bilaterally" <c:if test="${hamiltonchiropractic.allensl=='Ulnar artery bilaterally'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Valgus/Varus </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valgus_varusr" value="Right" <c:if test="${hamiltonchiropractic.valgus_varusr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valgus_varusl" value="Left" <c:if test="${hamiltonchiropractic.valgus_varusl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				               <td><b>KNEES</b></td>				               
				                  </tr>
				                   <tr class="row2">
				                  <td>Pat Ball</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="pat_ballr" value="Right" <c:if test="${hamiltonchiropractic.pat_ballr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="pat_balll" value="Left" <c:if test="${hamiltonchiropractic.pat_balll=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Drawer</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawerr" value="Right" <c:if test="${hamiltonchiropractic.drawerr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="drawerl" value="Left" <c:if test="${hamiltonchiropractic.drawerl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Val/Varus  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="val_varusr" value="Right" <c:if test="${hamiltonchiropractic.val_varusr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="val_varusl" value="Left" <c:if test="${hamiltonchiropractic.val_varusl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td> Apleys   </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="apleysr" value="Right" <c:if test="${hamiltonchiropractic.apleysr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="apleysl" value="Left" <c:if test="${hamiltonchiropractic.apleysl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ANKLES</b></td>				               
				                  </tr>
				                   <tr class="row1">
				                  <td> Drawer  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawerar" value="Right" <c:if test="${hamiltonchiropractic.drawerar=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="draweral" value="Left" <c:if test="${hamiltonchiropractic.draweral=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Thompsons </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thompsonsr" value="Right" <c:if test="${hamiltonchiropractic.thompsonsr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thompsonsl" value="Left" <c:if test="${hamiltonchiropractic.thompsonsl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Tinels </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelsar" value="Right" <c:if test="${hamiltonchiropractic.tinelsar=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsal" value="Left" <c:if test="${hamiltonchiropractic.tinelsal=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td> Strunskys</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="strunskysr" value="Right" <c:if test="${hamiltonchiropractic.strunskysr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="strunskysl" value="Left" <c:if test="${hamiltonchiropractic.strunskysl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                 
                        <tr class="row1">
				                  <td> Homans </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="homansr" value="Right" <c:if test="${hamiltonchiropractic.homansr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="homansl" value="Left" <c:if test="${hamiltonchiropractic.homansl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Claudication Test </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="claudication_testr" value="Right" <c:if test="${hamiltonchiropractic.claudication_testr=='Right'}"><c:out value="Checked"/></c:if>>Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="claudication_testl" value="Left" <c:if test="${hamiltonchiropractic.claudication_testl=='Left'}"><c:out value="Checked"/></c:if>>Left</td>
				                 
				                  </tr>
				                   <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Update"></td>
                                  
				                   <td><input type="Button" class="submit_btn" value="Cancel" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td>
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
				                 		                 
				                 </body>
				                 </html>
				                 
				                 
				                 
				  