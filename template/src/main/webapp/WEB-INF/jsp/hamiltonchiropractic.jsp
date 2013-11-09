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
   <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  $(function() {
	    $( "#tabss" ).tabs();
	  });
  </script>
 <body>
<div id="tabs">
       <ul>
          <li><a href="#tabs-1">Pain Assessment</a></li>
          <li><a href="#tabs-2">Diagnosis/TP/Goals</a></li>
          <li><a href="#tabs-3">Orthopaedic Tests</a></li>
       </ul>
         
   <div id="tabs-1"> 
<div id="right_content">
<form action="hamiltonchiropractic" method="POST">
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
               <td>I understand you have pain in your:</td>
                 <td><input type="checkbox" name="hacheck" value="ha" >&nbsp HA</td>
                 <td><input type="radio" name="ha" value="har" >&nbsp Right</td>
                 <td><input type="radio" name="ha" value="hal" >&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="neckcheck" value="neck" >&nbsp Neck</td>
                 <td><input type="radio" name="neck" value="neckr" >&nbsp Right</td>
                 <td><input type="radio" name="neck" value="neckl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="mbcheck" value="mb" >&nbsp MB</td>
                 <td><input type="radio" name="mb" value="mbr" >&nbsp Right</td>
                 <td><input type="radio" name="mb" value="mbl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="ribscheck" value="ribs" >&nbsp Ribs</td>
                 <td><input type="radio" name="ribs" value="ribsr" >&nbsp Right</td>
                 <td><input type="radio" name="ribs" value="ribsl" >&nbsp Left</td>
                <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="shouldercheck" value="shoulder" >&nbsp Shoulder</td>
                 <td><input type="radio" name="shoulder" value="shoulderr" >&nbsp Right</td>
                 <td><input type="radio" name="shoulder" value="shoulderl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="elbowcheck" value="elbow" >&nbsp Elbow</td>
                 <td><input type="radio" name="elbow" value="elbowr" >&nbsp Right</td>
                 <td><input type="radio" name="elbow" value="elbowl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="handcheck" value="hand" >&nbsp Hand</td>
                 <td><input type="radio" name="hand" value="handr" >&nbsp Right</td>
                 <td><input type="radio" name="hand" value="handl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="wristcheck" value="wrist" >&nbsp Wrist</td>
                 <td><input type="radio" name="wrist" value="wristr" >&nbsp Right</td>
                 <td><input type="radio" name="wrist" value="wristl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="lbpcheck" value="lbp" >&nbsp LBP</td>
                 <td><input type="radio" name="lbp" value="lbpr" >&nbsp Right</td>
                 <td><input type="radio" name="lbp" value="lbpl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="hipcheck" value="hip" >&nbsp Hip</td>
                 <td><input type="radio" name="hip" value="hipr" >&nbsp Right</td>
                 <td><input type="radio" name="hip" value="hipl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="legcheck" value="leg" >&nbsp Leg</td>
                 <td><input type="radio" name="leg" value="legr" >&nbsp Right</td>
                 <td><input type="radio" name="leg" value="legl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="kneecheck" value="knee" >&nbsp Knee</td>
                 <td><input type="radio" name="knee" value="kneer" >&nbsp Right</td>
                 <td><input type="radio" name="knee" value="kneel" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="footcheck" value="foot" >&nbsp Foot</td>
                 <td><input type="radio" name="foot" value="footr" >&nbsp Right</td>
                 <td><input type="radio" name="foot" value="footl" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="anklecheck" value="ankle" >&nbsp Ankle</td>
                 <td><input type="radio" name="ankle" value="ankler" >&nbsp Right</td>
                 <td><input type="radio" name="ankle" value="anklel" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Did it begin gradually or suddenly?</td>
                 <td><input type="checkbox" name="begin" value="suddenly">&nbsp Sudden</td>
                 <td><input type="checkbox" name="begin" value="gradually">&nbsp Gradual:</td>
                 <td> <input type="text" name="hours">Hours Later</td>
                 <td><input type="text" name="days">Days Later</td>
                 </tr>
                 <tr class="row2">
                 <td>On what date did your injury occur?  </td>
                 <td><input type="text" name="date" class="input_txtbx1"></td>
                 <td></td>
                 <td></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>How did it happen?  </td>
                 <td><textarea rows="5" cols="25" name="reason"></textarea></td>
                 </tr>
                 <tr class="row2">
                 <td>Was this the first episode or is this a chronic injury? </td>
                 <td><input type="checkbox" name="chronic" value="acute">&nbsp Acute</td>
                 <td><input type="checkbox" name="chronic" value="subacute">&nbsp Subacute</td>
                 <td><input type="checkbox" name="chronic" value="chronic">&nbsp Chronic</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>What makes it feel better?</td>
                 <td><input type="checkbox" name="bestfeel" value="lyingdown">&nbsp Lying down</td>
                 <td><input type="checkbox" name="bestfeel" value="sitting">&nbsp Sitting</td>
                 <td><input type="checkbox" name="bestfeel" value="standing">&nbsp Standing</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="bestfeel" value="bending">&nbsp Bending</td>
                 <td><input type="checkbox" name="bestfeel" value="rest">&nbsp Rest</td>
                 <td><input type="checkbox" name="bestfeel" value="otherb">&nbsp other:
                 <input type="text" name="othere" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What have you done for it?  </td>
                 <td><input type="checkbox" name="solution" value="ice">&nbsp Ice</td>
                 <td><input type="checkbox" name="solution" value="heat">&nbsp Heat</td>
                 <td><input type="checkbox" name="solution" value="massage">&nbsp Massage</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="solution" value="aspirin">&nbsp Aspirin</td>
                <td><input type="checkbox" name="solution" value="otherdone">&nbsp other</td>
                <td><input type="text" name="otherit" class="input_txtbx1"  placeholder="If other, specify"></td>
                 <td></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What makes it feel worse? </td>
                 <td><input type="checkbox" name="worsefeel" value="bendingworse">&nbsp Bending</td>
                 <td><input type="checkbox" name="worsefeel" value="twisting">&nbsp Twisting</td>
                 <td><input type="checkbox" name="worsefeel" value="lifting">&nbsp Lifting</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="worsefeel" value="walking">&nbsp Walking</td>
                <td><input type="checkbox" name="worsefeel" value="activity">&nbsp Activity</td>
                <td><input type="checkbox" name="worsefeel" value="otherworse">&nbsp other
                 <input type="text" name="otherfeel" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>How would you describe the pain?   </td>
                 <td><input type="checkbox" name="paindes" value="sharp">&nbsp Sharp/Shooting</td>
                 <td><input type="checkbox" name="paindes" value="severe">Severe/intolerable</td>
                 <td><input type="checkbox" name="paindes" value="dull">&nbsp Dull/achy</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="paindes" value="burning">&nbsp Burning/Stinging</td>
                <td><input type="checkbox" name="paindes" value="nagging">&nbsp Deep/Nagging</td>
                <td><input type="checkbox" name="paindes" value="throbbing">&nbsp Throbbing/Diffuse  </td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="paindes" value="numb">&nbsp Numb  </td>
                <td><input type="checkbox" name="paindes" value="tingling">&nbsp Tingling</td>
                <td><input type="checkbox" name="paindes" value="stiff">&nbsp Stiff </td>
                 </tr>
                  <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="paindes" value="stabbing">&nbsp Stabbing  </td>
                <td><input type="checkbox" name="paindes" value="cramping">&nbsp Cramping</td>
                <td><input type="checkbox" name="paindes" value="otherdescribe">&nbsp other 
                 <input type="text" name="otherpain" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Is it constant or does it come and go?</td>
                 <td><input type="checkbox" name="consinter" value="constant">&nbsp Constant</td>
                 <td><input type="checkbox" name="consinter" value="intermittent">&nbsp Intermittent</td>
                 </tr>
                 <tr class="row2">
                 <td>Does the pain shoot down your arms and/or legs, or is it contained in one area?</td>
                 <td><input type="checkbox" name="pain" value="local">&nbsp Local</td>
                 <td><input type="checkbox" name="pain" value="diffuse">&nbsp Diffuse</td>
                 <td><input type="checkbox" name="pain" value="radiates">&nbsp Radiates to: </td>
                 <td> <input type="text" name="otherradiates" class="input_txtbx1" placeholder="Specify Radiates"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Would you describe it as:</td>
                 <td><input type="checkbox" name="description" value="mild">&nbsp Mild</td>
                 <td><input type="checkbox" name="description" value="moderate">&nbsp Moderate</td>
                 <td><input type="checkbox" name="description" value="severepain">&nbsp Severe</td>
                 <td><input type="checkbox" name="description" value="crippling">&nbsp Crippling</td>
                 </tr>
                 <tr class="row2">
                 <td>Is it worse in the morning or at night?  </td>
                 <td><input type="checkbox" name="worse" value="am">&nbsp AM</td>
                 <td><input type="checkbox" name="worse" value="pm">&nbsp PM</td>
                 <td><input type="checkbox" name="worse" value="othertime">&nbsp Other<input type="text" name="otherdn" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Is your condition getting worse or better?</td>
                 <td><input type="checkbox" name="conditionw" value="better">&nbsp Better</td>
                 <td><input type="checkbox" name="conditionw" value="same">&nbsp Same</td>
                 <td><input type="checkbox" name="conditionw" value="worse">&nbsp Progressively Worse</td>
                 </tr>
                 <tr class="row2">
                 <td>Are you working? </td>
                  <td><input type="checkbox" name="work" value="yes">&nbsp Yes</td>
                 <td><input type="checkbox" name="work" value="no">&nbsp No</td>
                 <td>When was your last day?</td><td><input type="text" name="day" class="input_txtbx1" placeholder=" Specify the date"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Has your condition affected your daily living in any way? </td>
                <td><input type="checkbox" name="condition" value="work">&nbsp Work</td>
                 <td><input type="checkbox" name="condition" value="sleep">&nbsp Sleep</td>
                 <td><input type="checkbox" name="condition" value="otherdaily">&nbsp Other
                 <input type="text" name="othercondition" class="input_txtbx1" placeholder="If other, specify"></td>
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
             <td><input type="checkbox" name="assessment" value="sameass">&nbsp Same</td>
                 <td><input type="checkbox" name="assessment" value="improved">&nbsp Improved</td>
                 <td><input type="checkbox" name="assessment" value="worseass">&nbsp Worse</td>
                 <td><input type="checkbox" name="assessment" value="plateau">&nbsp Plateau</td>
             </tr>
             <tr class="row2">
                  <td></td>
             
                 <td><input type="checkbox" name="assessment" value="preinjury">&nbsp At pre-injury Status</td>
                  <td>( <input type="checkbox" name="assessment" value="slight">&nbsp Slightly
                   <input type="checkbox" name="assessment" value="moderatly">&nbsp Moderatly
                   <input type="checkbox" name="assessment" value="great">&nbsp Greatly )</td>
                   
                   <td></td>
                   <td></td>
             </tr>
             <tr class="row1">
                 <td>Treatment plan:</td>
                 <td><input type="checkbox" name="treatmentplan" value="chiropractic">&nbsp Skilled Chiropractic Spinal Manipulation  </td>
                 <td><input type="checkbox" name="treatmentplan" value="ems">&nbsp EMS</td>
                 <td><input type="checkbox" name="treatmentplan" value="iceplan">&nbsp Ice  </td>
                 <td><input type="checkbox" name="treatmentplan" value="heatplan">&nbsp Heat</td>
            </tr>
            <tr class="row2">
            <td></td>            
            <td><input type="checkbox" name="treatmentplan" value="nimmo">&nbsp Nimmo</td>
            <td><input type="checkbox" name="treatmentplan" value="ultrasound">&nbsp Ultrasound</td>
             <td><input type="checkbox" name="treatmentplan" value="manualtraction">&nbsp Manual Traction</td>
            <td><input type="checkbox" name="treatmentplan" value="massageplan">&nbsp Massage</td>
            </tr>
            <tr class="row1">
            <td></td>           
            <td><input type="checkbox" name="treatmentplan" value="neuromuscular">&nbsp Neuromuscular Re-education  </td>
            <td><input type="checkbox" name="treatmentplan" value="stretching">&nbsp Stretching</td>
            <td><input type="checkbox" name="treatmentplan" value="strengthening">&nbsp Strengthening</td>
            <td><input type="checkbox" name="treatmentplan" value="remobilization">&nbsp Remobilization  </td>
            </tr>
             <tr class="row2">
            <td></td>
            <td><input type="checkbox" name="treatmentplan" value="rehab">&nbsp Rehab  </td>
            <td><input type="checkbox" name="treatmentplan" value="modificat">&nbsp Modificat  </td>
            <td><input type="checkbox" name="treatmentplan" value="release">&nbsp Release from care   </td>
            <td><input type="checkbox" name="treatmentplan" value="refer">&nbsp Refer  </td>
            </tr>      
            
            <tr class="row1">
                <td>Goals:</td>
                <td> <h4>Short Term:</h4></td>
                <td><input type="checkbox" name="shortterm" value="decreasepain">&nbsp Decrease Pain </td>
                <td><input type="checkbox" name="shortterm" value="decreasespam">&nbsp Decrease Spasm  </td>
                <td><input type="checkbox" name="shortterm" value="increaserom">&nbsp Increase ROM</td>
             </tr>
             <tr class="row2">
                <td></td>
                <td></td>                   
                <td><input type="checkbox" name="shortterm" value="improveadl">&nbsp Improve ADL    </td>
                <td><input type="checkbox" name="shortterm" value="improvesubluxations">&nbsp Improve Subluxations</td>
                <td></td>
             </tr>
              <tr class="row1">
                <td></td>
                <td> <h4>Long Term:</h4></td>
                <td><input type="checkbox" name="longterm" value="fullactivity">&nbsp Full Activity    </td>
                <td><input type="checkbox" name="longterm" value="returntowork">&nbsp Return to Work     </td>
                <td><input type="checkbox" name="longterm" value="renewsports">&nbsp Renew sports    </td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="jacksons" value="jacksonsr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="jacksons" value="jacksonsl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="jacksons" value="jacksonslo">Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>	 Foramin Comp</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="foramin_comp" value="foramin_compr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="foramin_comp" value="foramin_compl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="foramin_comp" value="foramin_complo">Localized</td>
				                 
				                  </tr>
				                  
				                  <tr class="row2">
				                  <td>Shoulder Depr</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="shoulder_depr" value="shoulder_deprr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="shoulder_depr" value="shoulder_deprl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="shoulder_depr" value="shoulder_deprlo">Localized</td>
				                 
				                  </tr>
              <tr class="row1">
				                  <td>Georges	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="georges" value="georgesr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="georges" value="georgesl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="georges" value="georgeslo">Localized</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>O'Donoghues</td>	
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="odono" value="odonor">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="odono" value="odonol">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="odono" value="odonolo">Localized</td>			                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Bakody Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="bakody_sign" value="bakody_signr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="bakody_sign" value="bakody_signl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="bakody_sign" value="bakody_signlo">Localized</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Distraction Test*</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="distraction_test" value="distraction_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="distraction_test" value="distraction_testl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="distraction_test" value="distraction_testlo">Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Valsalva 	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalva" value="valsalvar">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalva" value="valsalval">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="valsalva" value="valsalvalo">Localized</td>				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Spinal Percuss</td>
				                  <td>Painlevel</td>
				                  <td><input type="text" name="spinal_percuss"></td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Grip Dynamom 	</td>
				                  <td>Right</td>
				                  <td><input type="text" name="gripdynamomright"></td>	
				                  <td>Left</td>
				                  <td><input type="text" name="gripdynamomleft"></td>			                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Adsons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adsons" value="adsonsr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adsons" value="adsonsl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="adsons" value="adsonslo">Localized</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rust Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="rustsign" value="rustsignr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="rustsign" value="rustsignl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="rustsign" value="rustsignlo">Localized</td>				                 
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
				                  <td><input type="text" name="spinalpercusst"></td>				                 
				                  </tr>
			                     <tr class="row1">
				                  <td>Adam's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adams_test" value="adams_testr">Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adams_test" value="adams_testl">Hump Dissap</td>				                  			                 
				                  </tr>
         <tr class="row2">
				                  <td>Sheppal Sign</td>
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="sheppal_sign" value="sheppal_signr">Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="sheppal_sign" value="sheppal_signl">Hump Dissap</td>				                  			                    			                 
				                  </tr>
   <tr class="row1">
				                  <td>Soto Hall</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="soto_hall" value="soto_hallr">C/S Pain   </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="soto_hall" value="soto_halll">T/S Pain</td>				                  			                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Compression Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="compression_test" value="compression_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="compression_test" value="compression_testl">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="compression_test" value="compression_testlo">Localized</td>				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="antalgia" value="antalgiar">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="antalgia" value="antalgial">Left</td>
				                 
				                  </tr>				            
				                  <tr class="row1">
				                  <td>Spinal Percuss</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="spinal_percussl" value="spinal_percusslr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="spinal_percussl" value="spinal_percussll">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Valsalva	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalval" value="valsalvalr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalval" value="valsalvall">Left</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>Minors Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="minors_sign" value="minors_signr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="minors_sign" value="minors_signl">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Braggard's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braggards_test" value="braggards_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braggards_test" value="braggards_testl">Left</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>SLR</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="slr" value="slrr">30-45-70     </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="slr" value="slrl">30-45-70</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>WLR</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="wlr" value="wlrr">30-45-70</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="wlr" value="wlrl">30-45-70</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Hoovers	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hoovers" value="hooversr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="hoovers" value="hooversl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Dbl Leg Raise</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dbl_leg_raise" value="dbl_leg_raiser">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dbl_leg_raise" value="dbl_leg_raisel">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Long Leg Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="long_leg_test" value="long_leg_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="long_leg_test" value="long_leg_testl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Anvil Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="anvil_test" value="anvil_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="anvil_test" value="anvil_testl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Thomas	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thomas" value="thomasr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thomas" value="thomasl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Milgram's Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="milgrams_test" value="milgrams_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="milgrams_test" value="milgrams_testl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Obers		</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="obers" value="obersr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="obers" value="obersl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Illiac Comp	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="illiaccomp" value="illiaccompr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="illiaccomp" value="illiaccompl">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Yeomans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yeomans" value="yeomansr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yeomans" value="yeomansl">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Allis Sign        	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="allis_sign" value="allis_signr">Long tibiafemur  </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="allis_sign" value="allis_signl">Long tibia/femur</td>
				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dugas" value="dugasr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dugas" value="dugasl">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Supraspinatus</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="supraspinatus" value="supraspinatusr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="supraspinatus" value="supraspinatusl">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Codmans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="codmans" value="codmansr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="codmans" value="codmansl">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Speed's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="speeds_test" value="speeds_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="speeds_test" value="speeds_testl">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Yergasons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yergasons" value="yergasonsr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yergasons" value="yergasonsl">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ELBOWS</b></td>				               
				                  </tr> 
				                  <tr class="row1">
				                  <td>tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelse" value="tinelser">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelse" value="tinelsel">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Ligam Instab   </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lingaminstab" value="lingaminstabr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lingaminstab" value="lingaminstabl">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Golfers Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="golfers_elbow" value="golfers_elbowr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="golfers_elbow" value="golfers_elbowl">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Tennis Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tennis_elbow" value="tennis_elbowr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tennis_elbow" value="tennis_elbowl">Left</td>
				                 <tr class="row1">
				               <td><b>WRISTS</b></td>				               
				                  </tr>
				                  </tr>
				                   <tr class="row1">
				                  <td>Tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinels" value="tinelsr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinels" value="tinelsl">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Phalens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="phalens" value="phalensr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="phalens" value="phalensl">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Finkelstein's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="finkelsteins_test" value="finkelsteins_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="finkelsteins_test" value="finkelsteins_testl">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Bracelet	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="bracelet" value="braceletr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="bracelet" value="braceletl">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Allens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="allens" value="allensr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="allens" value="allensl">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Valgus/Varus </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valgus_varus" value="valgus_varusr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valgus_varus" value="valgus_varusl">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				               <td><b>KNEES</b></td>				               
				                  </tr>
				                   <tr class="row2">
				                  <td>Pat Ball</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="pat_ball" value="pat_ballr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="pat_ball" value="pat_balll">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Drawer</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawer" value="drawerr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="drawer" value="drawerl">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Val/Varus  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="val_varus" value="val_varusr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="val_varus" value="val_varusl">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td> Apleys   </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="apleys" value="apleysr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="apleys" value="apleysl">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ANKLES</b></td>				               
				                  </tr>
				                   <tr class="row1">
				                  <td> Drawer  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawera" value="drawerar">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="drawera" value="draweral">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Thompsons </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thompsons" value="thompsonsr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thompsons" value="thompsonsl">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Tinels </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelsa" value="tinelsar">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsa" value="tinelsal">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td> Strunskys</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="strunskys" value="strunskysr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="strunskys" value="strunskysl">Left</td>
				                 
				                  </tr>
				                 
                        <tr class="row1">
				                  <td> Homans </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="homans" value="homansr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="homans" value="homansl">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Claudication Test </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="claudication_test" value="claudication_testr">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="claudication_test" value="claudication_testl">Left</td>
				                 
				                  </tr>
				                   <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td></td>
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
				                 </form>
				                 </div>				                 
				                 </body>
				                 </html>
				                 
				                 
				                 
				  