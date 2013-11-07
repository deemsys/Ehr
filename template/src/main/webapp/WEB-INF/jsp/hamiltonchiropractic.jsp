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
                 <td><input type="checkbox" name="ha" value="ha" >&nbsp HA</td>
                 <td><input type="radio" name="ha" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="ha" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="neck" value="neck" >&nbsp Neck</td>
                 <td><input type="radio" name="neck" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="neck" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="mb" value="mb" >&nbsp MB</td>
                 <td><input type="radio" name="mb" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="mb" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="ribs" value="ribs" >&nbsp Ribs</td>
                 <td><input type="radio" name="ribs" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="ribs" value="left" >&nbsp Left</td>
                <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="shoulder" value="shoulder" >&nbsp Shoulder</td>
                 <td><input type="radio" name="shoulder" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="shoulder" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="elbow" value="elbow" >&nbsp Elbow</td>
                 <td><input type="radio" name="elbow" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="elbow" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="hand" value="hand" >&nbsp Hand</td>
                 <td><input type="radio" name="hand" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="hand" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="wrist" value="wrist" >&nbsp Wrist</td>
                 <td><input type="radio" name="wrist" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="wrist" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="lbp" value="lbp" >&nbsp LBP</td>
                 <td><input type="radio" name="lbp" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="lbp" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="hip" value="hip" >&nbsp Hip</td>
                 <td><input type="radio" name="hip" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="hip" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="leg" value="leg" >&nbsp Leg</td>
                 <td><input type="radio" name="leg" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="leg" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="knee" value="knee" >&nbsp Knee</td>
                 <td><input type="radio" name="knee" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="knee" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="foot" value="foot" >&nbsp Foot</td>
                 <td><input type="radio" name="foot" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="foot" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row2">
                <td></td>
                <td><input type="checkbox" name="ankle" value="ankle" >&nbsp Ankle</td>
                 <td><input type="radio" name="ankle" value="right" >&nbsp Right</td>
                 <td><input type="radio" name="ankle" value="left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Did it begin gradually or suddenly?</td>
                 <td><input type="checkbox" name="suddenly" value="suddenly">&nbsp Sudden</td>
                 <td><input type="checkbox" name="gradually" value="gradually">&nbsp Gradual:</td>
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
                 <td><input type="checkbox" name="acute" value="acute">&nbsp Acute</td>
                 <td><input type="checkbox" name="subacute" value="subacute">&nbsp Subacute</td>
                 <td><input type="checkbox" name="chronic" value="chronic">&nbsp Chronic</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>What makes it feel better?</td>
                 <td><input type="checkbox" name="lyingdown" value="lyingdown">&nbsp Lying down</td>
                 <td><input type="checkbox" name="sitting" value="sitting">&nbsp Sitting</td>
                 <td><input type="checkbox" name="standing" value="standing">&nbsp Standing</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="bending" value="bending">&nbsp Bending</td>
                 <td><input type="checkbox" name="rest" value="rest">&nbsp Rest</td>
                 <td><input type="checkbox" name="other" value="other">&nbsp other:
                 <input type="text" name="other" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What have you done for it?  </td>
                 <td><input type="checkbox" name="ice" value="ice">&nbsp Ice</td>
                 <td><input type="checkbox" name="heat" value="heat">&nbsp Heat</td>
                 <td><input type="checkbox" name="massage" value="massage">&nbsp Massage</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="aspirin" value="aspirin">&nbsp Aspirin</td>
                <td><input type="checkbox" name="other" value="other">&nbsp other</td>
                <td><input type="text" name="other" class="input_txtbx1"  placeholder="If other, specify"></td>
                 <td></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>What makes it feel worse? </td>
                 <td><input type="checkbox" name="bending" value="bending">&nbsp Bending</td>
                 <td><input type="checkbox" name="twisting" value="twisting">&nbsp Twisting</td>
                 <td><input type="checkbox" name="lifting" value="lifting">&nbsp Lifting</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="walking" value="walking">&nbsp Walking</td>
                <td><input type="checkbox" name="activity" value="activity">&nbsp Activity</td>
                <td><input type="checkbox" name="other" value="other">&nbsp other
                 <input type="text" name="other" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                  <tr class="row1">
                 <td>How would you describe the pain?   </td>
                 <td><input type="checkbox" name="sharp" value="sharp">&nbsp Sharp/Shooting</td>
                 <td><input type="checkbox" name="severe" value="severe">Severe/intolerable</td>
                 <td><input type="checkbox" name="dull" value="dull">&nbsp Dull/achy</td>
                 </tr>
                 <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="burning" value="burning">&nbsp Burning/Stinging</td>
                <td><input type="checkbox" name="nagging" value="nagging">&nbsp Deep/Nagging</td>
                <td><input type="checkbox" name="throbbing" value="throbbing">&nbsp Throbbing/Diffuse  </td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="numb" value="numb">&nbsp Numb  </td>
                <td><input type="checkbox" name="tingling" value="tingling">&nbsp Tingling</td>
                <td><input type="checkbox" name="stiff" value="stiff">&nbsp Stiff </td>
                 </tr>
                  <tr class="row2">
                 <td></td>
                 <td><input type="checkbox" name="stabbing" value="stabbing">&nbsp Stabbing  </td>
                <td><input type="checkbox" name="cramping" value="cramping">&nbsp Cramping</td>
                <td><input type="checkbox" name="other" value="other">&nbsp other 
                 <input type="text" name="other" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Is it constant or does it come and go?</td>
                 <td><input type="checkbox" name="constant" value="constant">&nbsp Constant</td>
                 <td><input type="checkbox" name="intermittent" value="intermittent">&nbsp Intermittent</td>
                 </tr>
                 <tr class="row2">
                 <td>Does the pain shoot down your arms and/or legs, or is it contained in one area?</td>
                 <td><input type="checkbox" name="local" value="local">&nbsp Local</td>
                 <td><input type="checkbox" name="diffuse" value="diffuse">&nbsp Diffuse</td>
                 <td><input type="checkbox" name="radiates" value="radiates">&nbsp Radiates to: </td>
                 <td> <input type="text" name="other" class="input_txtbx1" placeholder="Specify Radiates"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Would you describe it as:</td>
                 <td><input type="checkbox" name="mild" value="mild">&nbsp Mild</td>
                 <td><input type="checkbox" name="moderate" value="moderate">&nbsp Moderate</td>
                 <td><input type="checkbox" name="severe" value="severe">&nbsp Severe</td>
                 <td><input type="checkbox" name="crippling" value="crippling">&nbsp Crippling</td>
                 </tr>
                 <tr class="row2">
                 <td>Is it worse in the morning or at night?  </td>
                 <td><input type="checkbox" name="am" value="am">&nbsp AM</td>
                 <td><input type="checkbox" name="pm" value="pm">&nbsp PM</td>
                 <td><input type="checkbox" name="other" value="other">&nbsp Other<input type="text" name="other" class="input_txtbx1" placeholder="If other, specify"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Is your condition getting worse or better?</td>
                 <td><input type="checkbox" name="better" value="better">&nbsp Better</td>
                 <td><input type="checkbox" name="same" value="same">&nbsp Same</td>
                 <td><input type="checkbox" name="worse" value="worse">&nbsp Progressively Worse</td>
                 </tr>
                 <tr class="row2">
                 <td>Are you working? </td>
                  <td><input type="checkbox" name="yes" value="yes">&nbsp Yes</td>
                 <td><input type="checkbox" name="no" value="no">&nbsp No</td>
                 <td>When was your last day?</td><td><input type="text" name="day" class="input_txtbx1" placeholder=" Specify the date"></td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Has your condition affected your daily living in any way? </td>
                <td><input type="checkbox" name="work" value="work">&nbsp Work</td>
                 <td><input type="checkbox" name="sleep" value="sleep">&nbsp Sleep</td>
                 <td><input type="checkbox" name="other" value="other">&nbsp Other
                 <input type="text" name="other" class="input_txtbx1" placeholder="If other, specify"></td>
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
             <td><input type="checkbox" name="same" value="same">&nbsp Same</td>
                 <td><input type="checkbox" name="improved" value="improved">&nbsp Improved</td>
                 <td><input type="checkbox" name="worse" value="worse">&nbsp Worse</td>
                 <td><input type="checkbox" name="plateau" value="plateau">&nbsp Plateau</td>
             </tr>
             <tr class="row2">
                  <td></td>
             
                 <td><input type="checkbox" name="preinjury" value="preinjury">&nbsp At pre-injury Status</td>
                  <td>( <input type="checkbox" name="slight" value="slight">&nbsp Slightly
                   <input type="checkbox" name="moderate" value="moderate">&nbsp Moderatly
                   <input type="checkbox" name="great" value="great">&nbsp Greatly )</td>
                   
                   <td></td>
                   <td></td>
             </tr>
             <tr class="row1">
                 <td>Treatment plan:</td>
                 <td><input type="checkbox" name="chiropractic" value="chiropractic">&nbsp Skilled Chiropractic Spinal Manipulation  </td>
                 <td><input type="checkbox" name="ems" value="ems">&nbsp EMS</td>
                 <td><input type="checkbox" name="ice" value="ice">&nbsp Ice  </td>
                 <td><input type="checkbox" name="heat" value="heat">&nbsp Heat</td>
            </tr>
            <tr class="row2">
            <td></td>            
            <td><input type="checkbox" name="nimmo" value="nimmo">&nbsp Nimmo</td>
            <td><input type="checkbox" name="ultrasound" value="ultrasound">&nbsp Ultrasound</td>
             <td><input type="checkbox" name="manualtraction" value="manualtraction">&nbsp Manual Traction</td>
            <td><input type="checkbox" name="massage" value="massage">&nbsp Massage</td>
            </tr>
            <tr class="row1">
            <td></td>           
            <td><input type="checkbox" name="neuromuscular" value="neuromuscular">&nbsp Neuromuscular Re-education  </td>
            <td><input type="checkbox" name="stretching" value="stretching">&nbsp Stretching</td>
            <td><input type="checkbox" name="strengthening" value="strengthening">&nbsp Strengthening</td>
            <td><input type="checkbox" name="remobilization" value="remobilization">&nbsp Remobilization  </td>
            </tr>
             <tr class="row2">
            <td></td>
            <td><input type="checkbox" name="rehab" value="rehab">&nbsp Rehab  </td>
            <td><input type="checkbox" name="modificat" value="modificat">&nbsp Modificat  </td>
            <td><input type="checkbox" name="release" value="release">&nbsp Release from care   </td>
            <td><input type="checkbox" name="refer" value="refer">&nbsp Refer  </td>
            </tr>      
            
            <tr class="row1">
                <td>Goals:</td>
                <td> <h4>Short Term:</h4></td>
                <td><input type="checkbox" name="decreasepain" value="decreasepain">&nbsp Decrease Pain </td>
                <td><input type="checkbox" name="decreasespam" value="decreasespam">&nbsp Decrease Spasm  </td>
                <td><input type="checkbox" name="increaserom" value="increaserom">&nbsp Increase ROM</td>
             </tr>
             <tr class="row2">
                <td></td>
                <td></td>                   
                <td><input type="checkbox" name="improveadl" value="improveadl">&nbsp Improve ADL    </td>
                <td><input type="checkbox" name="improvesubluxations" value="improvesubluxations">&nbsp Improve Subluxations</td>
                <td></td>
             </tr>
              <tr class="row1">
                <td></td>
                <td> <h4>Long Term:</h4></td>
                <td><input type="checkbox" name="fullactivity" value="fullactivity">&nbsp Full Activity    </td>
                <td><input type="checkbox" name="returntowork" value="returntowork">&nbsp Return to Work     </td>
                <td><input type="checkbox" name="renewsports" value="renewsports">&nbsp Renew sports    </td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="jacksons" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="jacksons" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="jacksons" value="localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>	 Foramin Comp</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="foramin_comp" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="foramin_comp" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="foramin_comp" value="localized">Localized</td>
				                 
				                  </tr>
				                  
				                  <tr class="row2">
				                  <td>Shoulder Depr</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="shoulder_depr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="shoulder_depr" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="shoulder_depr" value="localized">Localized</td>
				                 
				                  </tr>
              <tr class="row1">
				                  <td>Georges	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="georges" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="georges" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="georges" value="localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>O'Donoghues</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Bakody Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="bakody_sign" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="bakody_sign" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="bakody_sign" value="localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Distraction Test*</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="distraction_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="distraction_test" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="distraction_test" value="localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Valsalva 	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalva" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalva" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="valsalva" value="localized">Localized</td>				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adsons" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adsons" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="adsons" value="localized">Localized</td>				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Rust Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="rustsign" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="rustsign" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="rustsign" value="localized">Localized</td>				                 
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
				                  <td><input type="text" name="spinalpercuss"></td>				                 
				                  </tr>
			                     <tr class="row1">
				                  <td>Adam's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adams_test" value="Right">Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adams_test" value="Left">Hump Dissap</td>				                  			                 
				                  </tr>
         <tr class="row2">
				                  <td>Sheppal Sign</td>
				                          			                 
				                  </tr>
   <tr class="row1">
				                  <td>Soto Hall</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="soto_hall" value="Right">C/S Pain   </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="soto_hall" value="Left">T/S Pain</td>				                  			                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Compression Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="compression_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="compression_test" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="headtilt" value="localized">Localized</td>				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="antalgia" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="antalgia" value="Left">Left</td>
				                 
				                  </tr>				            
				                  <tr class="row1">
				                  <td>Spinal Percuss</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="spinal_percuss" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="spinal_percuss" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Valsalva	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalva" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalva" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>Minors Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="minors_sign" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="minors_sign" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Braggard's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braggards_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braggards_test" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row1">
				                  <td>SLR</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="slr" value="Right">30-45-70     </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="slr" value="Left">30-45-70</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>WLR</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="wlr" value="Right">30-45-70</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="wlr" value="Left">30-45-70</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Hoovers	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hoovers" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="hoovers" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Dbl Leg Raise</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dbl_leg_raise" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dbl_leg_raise" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Long Leg Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="long_leg_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="long_leg_test" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Anvil Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="anvil_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="anvil_test" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Thomas	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thomas" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thomas" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Milgram's Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="milgrams_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="milgrams_test" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Obers		</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="obers" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="obers" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row2">
				                  <td>Illiac Comp	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="illiaccomp" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="illiaccomp" value="Left">Left</td>
				                 
				                  </tr>	
				                   <tr class="row1">
				                  <td>Yeomans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yeomans" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yeomans" value="Left">Left</td>
				                 
				                  </tr>	
				                  <tr class="row2">
				                  <td>Allis Sign        	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="allis_sign" value="Right">Long tibiafemur  </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="allis_sign" value="Left">Long tibia/femur</td>
				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dugas" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dugas" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Supraspinatus</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="supraspinatus" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="supraspinatus" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Codmans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="codmans" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="codmans" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Speed's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="speeds_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="speeds_test" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Yergasons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yergasons" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yergasons" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ELBOWS</b></td>				               
				                  </tr> 
				                  <tr class="row1">
				                  <td>Tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinels" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinels" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td>Ligam Instab   </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="lingaminstab" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="lingaminstab" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Golfers Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="golfers_elbow" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="golfers_elbow" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Tennis Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tennis_elbow" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tennis_elbow" value="Left">Left</td>
				                 <tr class="row1">
				               <td><b>WRISTS</b></td>				               
				                  </tr>
				                  </tr>
				                   <tr class="row1">
				                  <td>Tinels</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinels" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinels" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Phalens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="phalens" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="phalens" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Finkelstein's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="finkelsteins_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="finkelsteins_test" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Bracelet	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="bracelet" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="bracelet" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Allens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="allens" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="allens" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Valgus/Varus </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valgus_varus" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valgus_varus" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				               <td><b>KNEES</b></td>				               
				                  </tr>
				                   <tr class="row2">
				                  <td>Pat Ball</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="pat_ball" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="pat_ball" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td>Drawer</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawer" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="drawer" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Val/Varus  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="val_varus" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="val_varus" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                  <td> Apleys   </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="apleys" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="apleys" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				               <td><b>ANKLES</b></td>				               
				                  </tr>
				                   <tr class="row1">
				                  <td> Drawer  </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="drawer" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="drawer" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Thompsons </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thompsons" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thompsons" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Tinels </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinels" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinels" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row2">
				                  <td> Strunskys</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="strunskys" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="strunskys" value="Left">Left</td>
				                 
				                  </tr>
				                 
                        <tr class="row1">
				                  <td> Homans </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="homans" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="homans" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row2">
				                  <td>Claudication Test </td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="claudication_test" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="claudication_test" value="Left">Left</td>
				                 
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
				                 </div>
				                 </div>
				                 </form>
				                 </div>				                 
				                 </body>
				                 </html>
				                 
				                 
				                 
				  