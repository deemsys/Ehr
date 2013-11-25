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
                 <td><input type="checkbox" name="hacheck" value="HA" >&nbsp HA</td>
                 <td><input type="radio" name="ha" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="ha" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="neckcheck" value="Neck" >&nbsp Neck</td>
                 <td><input type="radio" name="neck" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="neck" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="mbcheck" value="MB" >&nbsp MB</td>
                 <td><input type="radio" name="mb" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="mb" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="ribscheck" value="ribscheck" >&nbsp Ribs</td>
                 <td><input type="radio" name="ribs" value="ribsr" >&nbsp Right</td>
                 <td><input type="radio" name="ribs" value="ribsl" >&nbsp Left</td>
                <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="shouldercheck" value="Shoulder" >&nbsp Shoulder</td>
                 <td><input type="radio" name="shoulder" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="shoulder" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="elbowcheck" value="Elbow" >&nbsp Elbow</td>
                 <td><input type="radio" name="elbow" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="elbow" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="handcheck" value="Hand" >&nbsp Hand</td>
                 <td><input type="radio" name="hand" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="hand" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="wristcheck" value="Wrist" >&nbsp Wrist</td>
                 <td><input type="radio" name="wrist" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="wrist" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="lbpcheck" value="Lbp" >&nbsp LBP</td>
                 <td><input type="radio" name="lbp" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="lbp" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="hipcheck" value="Hip" >&nbsp Hip</td>
                 <td><input type="radio" name="hip" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="hip" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="legcheck" value="Leg" >&nbsp Leg</td>
                 <td><input type="radio" name="leg" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="leg" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="kneecheck" value="Knee" >&nbsp Knee</td>
                 <td><input type="radio" name="knee" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="knee" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="footcheck" value="Foot" >&nbsp Foot</td>
                 <td><input type="radio" name="foot" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="foot" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="anklecheck" value="Ankle" >&nbsp Ankle</td>
                 <td><input type="radio" name="ankle" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="ankle" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Did it begin gradually or suddenly?</td>
                 <td><input type="checkbox" name="suddenly" value="Sudden">&nbsp Sudden</td>
                 <td><input type="checkbox" name="gradually" value="Gradual">&nbsp Gradual:</td>
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
                 <td><input type="checkbox" name="acute" value="Acute">&nbsp Acute</td>
                 <td><input type="checkbox" name="subacute" value="Subacute">&nbsp Subacute</td>
                 <td><input type="checkbox" name="chronic" value="Chronic">&nbsp Chronic</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>What makes it feel better?</td>
                 <td><input type="checkbox" name="lyingdown" value="Lying down">&nbsp Lying down</td>
                 <td><input type="checkbox" name="sitting" value="Sitting">&nbsp Sitting</td>
                 <td><input type="checkbox" name="standing" value="Standing">&nbsp Standing</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="bending" value="Bending">&nbsp Bending</td>
                 <td><input type="checkbox" name="rest" value="Rest">&nbsp Rest</td>
                 <td><input type="checkbox" name="otherb" value="Other">&nbsp other:
                 <input type="text" name="othere" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What have you done for it?  </td>
                 <td><input type="checkbox" name="ice" value="Ice">&nbsp Ice</td>
                 <td><input type="checkbox" name="heat" value="Heat">&nbsp Heat</td>
                 <td><input type="checkbox" name="massage" value="Massage">&nbsp Massage</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="aspirin" value="Aspirin">&nbsp Aspirin</td>
                <td><input type="checkbox" name="otherdone" value="Other">&nbsp other</td>
                <td><input type="text" name="otherit" class="input_txtbx1"  placeholder="If other, specify"></td>
                 <td></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What makes it feel worse? </td>
                 <td><input type="checkbox" name="bendingworse" value="Bending">&nbsp Bending</td>
                 <td><input type="checkbox" name="twisting" value="Twisting">&nbsp Twisting</td>
                 <td><input type="checkbox" name="lifting" value="Lifting">&nbsp Lifting</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="walking" value="Walking">&nbsp Walking</td>
                <td><input type="checkbox" name="activity" value="Activity">&nbsp Activity</td>
                <td><input type="checkbox" name="otherworse" value="Other">&nbsp Other
                 <input type="text" name="otherfeel" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>How would you describe the pain?   </td>
                 <td><input type="checkbox" name="sharp" value="Sharp/Shooting">&nbsp Sharp/Shooting</td>
                 <td><input type="checkbox" name="severe" value="Severe/intolerable">Severe/intolerable</td>
                 <td><input type="checkbox" name="dull" value="Dull/achy">&nbsp Dull/achy</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="burning" value="Burning/Stinging">&nbsp Burning/Stinging</td>
                <td><input type="checkbox" name="nagging" value="Deep/Nagging">&nbsp Deep/Nagging</td>
                <td><input type="checkbox" name="throbbing" value="Throbbing/Diffuse">&nbsp Throbbing/Diffuse  </td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="numb" value="Numb">&nbsp Numb  </td>
                <td><input type="checkbox" name="tingling" value="Tingling">&nbsp Tingling</td>
                <td><input type="checkbox" name="stiff" value="Stiff">&nbsp Stiff </td>
                 </tr>
                  <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="stabbing" value="Stabbing">&nbsp Stabbing  </td>
                <td><input type="checkbox" name="cramping" value="Cramping">&nbsp Cramping</td>
                <td><input type="checkbox" name="otherdescribe" value="Other">&nbsp other 
                 <input type="text" name="otherpain" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Is it constant or does it come and go?</td>
                 <td><input type="checkbox" name="constant" value="Constant">&nbsp Constant</td>
                 <td><input type="checkbox" name="intermittent" value="Intermittent">&nbsp Intermittent</td>
                 </tr>
                 <tr class="row2">
                 <td>Does the pain shoot down your arms and/or legs, or is it contained in one area?</td>
                 <td><input type="checkbox" name="local" value="Local">&nbsp Local</td>
                 <td><input type="checkbox" name="diffuse" value="Diffuse">&nbsp Diffuse</td>
                 <td><input type="checkbox" name="radiates" value="Radiates">&nbsp Radiates to: </td>
                 <td> <input type="text" name="otherradiates" class="input_txtbx1" placeholder="Specify Radiates"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Would you describe it as:</td>
                 <td><input type="checkbox" name="mild" value="Mild">&nbsp Mild</td>
                 <td><input type="checkbox" name="moderate" value="Moderate">&nbsp Moderate</td>
                 <td><input type="checkbox" name="severepain" value="Severe">&nbsp Severe</td>
                 <td><input type="checkbox" name="crippling" value="Crippling">&nbsp Crippling</td>
                 </tr>
                 <tr class="row2">
                 <td>Is it worse in the morning or at night?  </td>
                 <td><input type="checkbox" name="am" value="AM">&nbsp AM</td>
                 <td><input type="checkbox" name="pm" value="PM">&nbsp PM</td>
                 <td><input type="checkbox" name="othertime" value="Other">&nbsp Other<input type="text" name="otherdn" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Is your condition getting worse or better?</td>
                 <td><input type="checkbox" name="better" value="Better">&nbsp Better</td>
                 <td><input type="checkbox" name="same" value="Same">&nbsp Same</td>
                 <td><input type="checkbox" name="worse" value="Progressively Worse">&nbsp Progressively Worse</td>
                 </tr>
                 <tr class="row2">
                 <td>Are you working? </td>
                  <td><input type="checkbox" name="yes" value="Yes">&nbsp Yes</td>
                 <td><input type="checkbox" name="no" value="No">&nbsp No</td>
                 <td>When was your last day?</td><td><input type="text" name="day" class="input_txtbx1" placeholder=" Specify the date"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Has your condition affected your daily living in any way? </td>
                <td><input type="checkbox" name="work" value="Work">&nbsp Work</td>
                 <td><input type="checkbox" name="sleep" value="Sleep">&nbsp Sleep</td>
                 <td><input type="checkbox" name="otherdaily" value="Other">&nbsp Other
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
             <td><input type="checkbox" name="sameass" value="Same">&nbsp Same</td>
                 <td><input type="checkbox" name="improved" value="Improved">&nbsp Improved</td>
                 <td><input type="checkbox" name="worseass" value="Worse">&nbsp Worse</td>
                 <td><input type="checkbox" name="plateau" value="Plateau">&nbsp Plateau</td>
             </tr>
             <tr class="row2">
                  <td></td>
             
                 <td><input type="checkbox" name="preinjury" value=" At Pre-injury Status">&nbsp At pre-injury Status</td>
                  <td>( <input type="checkbox" name="slight" value="Slightly">&nbsp Slightly
                   <input type="checkbox" name="moderatly" value="Moderatly">&nbsp Moderatly
                   <input type="checkbox" name="great" value="Greatly">&nbsp Greatly )</td>
                   
                   <td></td>
                   <td></td>
             </tr>
             <tr class="row1">
                 <td>Treatment plan:</td>
                 <td><input type="checkbox" name="chiropractic" value="Skilled Chiropractic Spinal Manipulation">&nbsp Skilled Chiropractic Spinal Manipulation  </td>
                 <td><input type="checkbox" name="ems" value="EMS">&nbsp EMS</td>
                 <td><input type="checkbox" name="iceplan" value="Ice">&nbsp Ice  </td>
                 <td><input type="checkbox" name="heatplan" value="Heat">&nbsp Heat</td>
            </tr>
            <tr class="row2">
            <td></td>            
            <td><input type="checkbox" name="nimmo" value="Nimmo">&nbsp Nimmo</td>
            <td><input type="checkbox" name="ultrasound" value="Ultrasound">&nbsp Ultrasound</td>
             <td><input type="checkbox" name="manualtraction" value="Manual Traction">&nbsp Manual Traction</td>
            <td><input type="checkbox" name="massageplan" value="Massage">&nbsp Massage</td>
            </tr>
            <tr class="row1">
            <td></td>           
            <td><input type="checkbox" name="neuromuscular" value="Neuromuscular Re-education">&nbsp Neuromuscular Re-education  </td>
            <td><input type="checkbox" name="stretching" value="Stretching">&nbsp Stretching</td>
            <td><input type="checkbox" name="strengthening" value="Strengthening">&nbsp Strengthening</td>
            <td><input type="checkbox" name="remobilization" value="Remobilization">&nbsp Remobilization  </td>
            </tr>
             <tr class="row2">
            <td></td>
            <td><input type="checkbox" name="rehab" value="Rehab">&nbsp Rehab  </td>
            <td><input type="checkbox" name="modificat" value="Modificat">&nbsp Modificat  </td>
            <td><input type="checkbox" name="care" value="Release from care">&nbsp Release from care   </td>
            <td><input type="checkbox" name="refer" value="Refer">&nbsp Refer  </td>
            </tr>      
            
            <tr class="row1">
                <td>Goals:</td>
                <td> <h4>Short Term:</h4></td>
                <td><input type="checkbox" name="decreasepain" value="Decrease Pain">&nbsp Decrease Pain </td>
                <td><input type="checkbox" name="decreasespam" value="Decrease Spam">&nbsp Decrease Spasm  </td>
                <td><input type="checkbox" name="increaserom" value="Increase ROM">&nbsp Increase ROM</td>
             </tr>
             <tr class="row2">
                <td></td>
                <td></td>                   
                <td><input type="checkbox" name="improveadl" value="Improve ADL">&nbsp Improve ADL    </td>
                <td><input type="checkbox" name="improvesubluxations" value="Improve Subluxations">&nbsp Improve Subluxations</td>
                <td></td>
             </tr>
              <tr class="row1">
                <td></td>
                <td> <h4>Long Term:</h4></td>
                <td><input type="checkbox" name="fullactivity" value="Full Activity">&nbsp Full Activity    </td>
                <td><input type="checkbox" name="returntowork" value="Return to work">&nbsp Return to Work     </td>
                <td><input type="checkbox" name="renewsports" value="Renew Sports">&nbsp Renew sports    </td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="jacksonsr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="jacksonsl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="jacksonslo" value="Localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>	 Foramin Comp</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="foramin_compr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="foramin_compl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="foramin_complo" value="Localized">Localized</td>
				                 
				                  </tr>
				                  
				                  <tr class="row2">
				                  <td>Shoulder Depr</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="shoulder_deprr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="shoulder_deprl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="shoulder_deprlo" value="Localized">Localized</td>
				                 
				                  </tr>
              <tr class="row1">
				                  <td>Georges	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="georgesr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="georgesl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="georgeslo" value="Localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>O'Donoghues</td>	
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="odonor" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="odonol" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="odonolo" value="Localized">Localized</td>			                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Bakody Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="bakody_signr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="bakody_signl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="bakody_signlo" value="Localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Distraction Test*</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="distraction_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="distraction_testl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="distraction_testlo" value="Localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Valsalva 	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalvar" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalval" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="valsalvalo" value="Localized">Localized</td>				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adsonsr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adsonsl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="adsonslo" value="Localized">Localized</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rust Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="rustsignr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="rustsignl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="rustsignlo" value="Localized">Localized</td>				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adams_testr" value="Hump Remains">Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adams_testl" value="Hump Dissap">Hump Dissap</td>				                  			                 
				                  </tr>
         <tr class="row2">
				                  <td>Sheppal Sign</td>
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="sheppal_signr" value="Hump Remains">Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="sheppal_signl" value="Hump Dissap">Hump Dissap</td>				                  			                    			                 
				                  </tr>
   <tr class="row1">
				                  <td>Soto Hall</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="soto_hallr" value="C/S Pain">C/S Pain   </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="soto_halll" value="T/S Pain">T/S Pain</td>				                  			                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Compression Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="compression_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="compression_testl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="compression_testlo" value="Localized">Localized</td>				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="antalgiar" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="antalgial" value="Left">Left</td>
				                 
				                  </tr>				            
				                  <tr class="row1">
				                  <td>Spinal Percuss</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="spinal_percusslr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="spinal_percussll" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Valsalva	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalvalr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalvall" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>Minors Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="minors_signr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="minors_signl" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Braggard's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braggards_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braggards_testl" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>SLR</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="slrr" value="30-45-70">30-45-70     </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="slrl" value="30-45-70">30-45-70</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>WLR</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="wlrr" value="30-45-70">30-45-70</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="wlrl" value="30-45-70">30-45-70</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Hoovers	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hooversr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="hooversl" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Dbl Leg Raise</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dbl_leg_raiser" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dbl_leg_raisel" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Long Leg Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="long_leg_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="long_leg_testl" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Anvil Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="anvil_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="anvil_testl" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Thomas	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thomasr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thomasl" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Milgram's Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="milgrams_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="milgrams_testl" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Obers		</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="obersr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="obersl" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Illiac Comp	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="illiaccompr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="illiaccompl" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Yeomans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yeomansr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yeomansl" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Allis Sign        	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="allis_signr" value="Long tibiafemur">Long tibiafemur  </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="allis_signl" value="Long tibia/femur">Long tibia/femur</td>
				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dugasr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dugasl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Supraspinatus</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="supraspinatusr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="supraspinatusl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Codmans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="codmansr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="codmansl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Speed's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="speeds_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="speeds_testl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Yergasons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yergasonsr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yergasonsl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ELBOWS</b></td>				               
				                  </tr> 
				                  <tr class="row1">
				                  <td>tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelser" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsel" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Ligam Instab   </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lingaminstabr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lingaminstabl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Golfers Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="golfers_elbowr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="golfers_elbowl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Tennis Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tennis_elbowr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tennis_elbowl" value="Left">Left</td>
				                 <tr class="row1">
				               <td><b>WRISTS</b></td>				               
				                  </tr>
				                  </tr>
				                   <tr class="row1">
				                  <td>Tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelsr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Phalens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="phalensr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="phalensl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Finkelstein's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="finkelsteins_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="finkelsteins_testl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Bracelet	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braceletr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braceletl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Allens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="allensr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="allensl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Valgus/Varus </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valgus_varusr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valgus_varusl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				               <td><b>KNEES</b></td>				               
				                  </tr>
				                   <tr class="row2">
				                  <td>Pat Ball</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="pat_ballr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="pat_balll" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Drawer</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawerr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="drawerl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Val/Varus  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="val_varusr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="val_varusl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td> Apleys   </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="apleysr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="apleysl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ANKLES</b></td>				               
				                  </tr>
				                   <tr class="row1">
				                  <td> Drawer  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawerar" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="draweral" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Thompsons </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thompsonsr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thompsonsl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Tinels </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelsar" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsal" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td> Strunskys</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="strunskysr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="strunskysl" value="Left">Left</td>
				                 
				                  </tr>
				                 
                        <tr class="row1">
				                  <td> Homans </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="homansr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="homansl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Claudication Test </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="claudication_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="claudication_testl" value="Left">Left</td>
				                 
				                  </tr>
				                   <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td></td>
				                   <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td>
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
				                 
				                 
				                 
				  