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
  <script>
  function lumboPopup() {

if(document.getElementById("lumbo").checked)
{
popupWindow = window.open("lumbopelvicexam" ,"lumboWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
		}
}

function cervicalPopup() {

	if(document.getElementById("cervical").checked)
	{
	popupWindow = window.open("cervicalexam" ,"cervicalpopUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
			}
	}

function thoracicPopup() {

	if(document.getElementById("thoracic").checked)
	{
	popupWindow = window.open("thoracicexam" ,"thoracicpopUpWindow" ,'width=1500,height=700,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
			}
	}
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
 <br>
<br>
<div id="tabs">
       <ul>
          <li><a href="#tabs-1">History</a></li>
          <li><a href="#tabs-2">Diagnosis/TP/Goals</a></li>
          <li><a href="#tabs-3">Orthopedic Tests</a></li>
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
                 <td><input type="checkbox" name="hacheck" value="hacheck" id="hacheck">&nbsp HA</td>
                 <td><input type="radio" name="ha" value="Right" >&nbsp Right</td>
                 <td><input type="radio" name="ha" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 
                 <td></td>
                 <td></td>
                 </tr>
                <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="neckcheck" value="Neck" >&nbsp Neck</td>
                 <td><input type="checkbox" name="neck" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="necka" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="mbcheck" value="MB" >&nbsp MB</td>
                 <td><input type="checkbox" name="mb" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="mba" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="ribscheck" value="ribscheck" >&nbsp Ribs</td>
                 <td><input type="checkbox" name="ribs" value="ribsr" >&nbsp Right</td>
                 <td><input type="checkbox" name="ribsa" value="ribsl" >&nbsp Left</td>
                <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="shouldercheck" value="Shoulder" id="shoulder" onclick="shoulderPopup()">&nbsp Shoulder</td>
                 <td><input type="checkbox" name="shoulder" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="shouldera" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="elbowcheck" value="Elbow" id="elbow" onclick="elbowPopup()">&nbsp Elbow</td>
                 <td><input type="checkbox" name="elbow" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="elbowa" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="handcheck" value="Hand" id="hand" onclick="handPopup()" >&nbsp Hand</td>
                 <td><input type="checkbox" name="hand" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="handa" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="wristcheck" value="Wrist" id="wrist" onclick="wristPopup()">&nbsp Wrist</td>
                 <td><input type="checkbox" name="wrist" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="wrista" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="lbpcheck" value="Lbp" >&nbsp LBP</td>
                 <td><input type="checkbox" name="lbp" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="lbpa" value="Left" >&nbsp Left</td>
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
                <td><input type="checkbox" name="hipcheck" value="Hip" id="hipexam" onclick="newPopup()">&nbsp Hip</td>
                 <td><input type="checkbox" name="hip" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="hipa" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="legcheck" value="Leg" >&nbsp Leg</td>
                 <td><input type="checkbox" name="leg" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="lega" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="kneecheck" value="Knee" id="knee" onclick="kneePopup()">&nbsp Knee</td>
                 <td><input type="checkbox" name="knee" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="kneea" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="footcheck" value="Foot" id="foot" onclick="footPopup()">&nbsp Foot</td>
                 <td><input type="checkbox" name="foot" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="foota" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                <td></td>
                <td><input type="checkbox" name="anklecheck" value="Ankle" id="ankle" onclick="anklePopup()">&nbsp Ankle</td>
                 <td><input type="checkbox" name="ankle" value="Right" >&nbsp Right</td>
                 <td><input type="checkbox" name="anklea" value="Left" >&nbsp Left</td>
                 <td></td>
                 </tr>
                 <tr class="row1">
                 <td>Did it begin gradually or suddenly?</td>
                 <td><input type="checkbox" name="suddenly" value="Sudden">&nbsp Sudden</td>
                 <td><input type="checkbox" name="gradually" value="Gradual">&nbsp Gradual:</td>
                 <td> <input type="text" name="hours">Hours Later</td>
                 <td><input type="text" name="days">Days Later</td>
                 </tr>
                 <tr class="row1">
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
                 <tr class="row1">
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
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="bending" value="Bending">&nbsp Bending</td>
                 <td><input type="checkbox" name="rest" value="Rest">&nbsp Rest</td>
                 <td><input type="checkbox" name="otherb" value="Other">&nbsp other:
                 </td>
                 <td><input type="text" name="othere" class="input_txtbx1" placeholder="If other, specify"></td>
                 </tr>
                  <tr class="row1">
                 <td>What have you done for it?  </td>
                 <td><input type="checkbox" name="ice" value="Ice">&nbsp Ice</td>
                 <td><input type="checkbox" name="heat" value="Heat">&nbsp Heat</td>
                 <td><input type="checkbox" name="massage" value="Massage">&nbsp Massage</td>
                 </tr>
                 <tr class="row1">
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
                 <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="walking" value="Walking">&nbsp Walking</td>
                <td><input type="checkbox" name="activity" value="Activity">&nbsp Activity</td>
                <td><input type="checkbox" name="otherworse" value="Other">&nbsp Other
                 </td>
                 <td><input type="text" name="otherfeel" class="input_txtbx1" placeholder="If other, specify"></td>
                 </tr>
                  <tr class="row1">
                 <td>How would you describe the pain?   </td>
                 <td><input type="checkbox" name="sharp" value="Sharp/Shooting">&nbsp Sharp/Shooting</td>
                 <td><input type="checkbox" name="severe" value="Severe/intolerable">Severe</td>
                 <td><input type="checkbox" name="dull" value="Dull/achy">&nbsp Dull/achy</td>
                 </tr>
                 <tr class="row1">
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
                  <tr class="row1">
                 <td></td>
                 <td><input type="checkbox" name="stabbing" value="Stabbing">&nbsp Stabbing  </td>
                <td><input type="checkbox" name="cramping" value="Cramping">&nbsp Cramping</td>
                <td><input type="checkbox" name="otherdescribe" value="Other">&nbsp other 
                 </td>
                 <td><input type="text" name="otherpain" class="input_txtbx1" placeholder="If other, specify"></td>
                 </tr>
                 <tr class="row1">
                 <td>Is it constant or does it come and go?</td>
                 <td><input type="checkbox" name="constant" value="Constant">&nbsp Constant</td>
                 <td><input type="checkbox" name="intermittent" value="Intermittent">&nbsp Intermittent</td>
                 </tr>
                 <tr class="row1">
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
                 <tr class="row1">
                 <td>Is it worse in the morning or at night?  </td>
                 <td><input type="checkbox" name="am" value="AM">&nbsp AM</td>
                 <td><input type="checkbox" name="pm" value="PM">&nbsp PM</td>
                 <td><input type="checkbox" name="othertime" value="Other">&nbsp Other</td>
                 <td><input type="text" name="otherdn" class="input_txtbx1" placeholder="If other, specify"></td>
                 </tr>
                 <tr class="row1">
                 <td>Is your condition getting worse or better?</td>
                 <td><input type="checkbox" name="better" value="Better">&nbsp Better</td>
                 <td><input type="checkbox" name="same" value="Same">&nbsp Same</td>
                 <td><input type="checkbox" name="worse" value="Progressively Worse">&nbsp Progressively Worse</td>
                 </tr>
                 <tr class="row1">
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
                 </td>
                 <td><input type="text" name="othercondition" class="input_txtbx1" placeholder="If other, specify"></td>
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
             <td><input type="checkbox" name="sameass" value="Same">&nbsp Same</td>
                 <td width="150"><input type="checkbox" name="improved" value="Improved">&nbsp Improved</td>
                 <td><input type="checkbox" name="worseass" value="Worse">&nbsp Worse</td>
                 <td><input type="checkbox" name="plateau" value="Plateau">&nbsp Plateau</td>
             </tr>
             <tr class="row1">
                  <td></td>
             
                 <td><input type="checkbox" name="preinjury" value=" At Pre-injury Status">&nbsp At pre-injury Status
                   
                   
                   
                   
                   <td><input type="checkbox" name="slight" value="Slightly">&nbsp Slightly</td>
                   <td><input type="checkbox" name="moderatly" value="Moderatly">&nbsp Moderately</td>
                   <td><input type="checkbox" name="great" value="Greatly">&nbsp Greatly </td></td>
             </tr>
             <tr class="row1">
                 <td><b>Treatment plan:</b></td>
                 <td><input type="checkbox" name="chiropractic" value="Skilled Chiropractic Spinal Manipulation">&nbsp Skilled Chiropractic Spinal Manipulation  </td>
                 <td><input type="checkbox" name="ems" value="EMS">&nbsp EMS</td>
                 <td><input type="checkbox" name="iceplan" value="Ice">&nbsp Ice  </td>
                 <td><input type="checkbox" name="heatplan" value="Heat">&nbsp Heat</td>
            </tr>
            <tr class="row1">
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
            <td><table cellspacing="0" cellpadding="0"><tr><td width="40%"><input type="checkbox" name="remobilization" value="Remobilization"> Remobilization</td><td width="50%"><input type="checkbox" name="improvesubluxations" value="Improve Subluxations">Improve &nbsp;Subluxations</td>  </tr></table></td>
            </tr>
             <tr class="row1">
            <td></td>
            <td><input type="checkbox" name="rehab" value="Rehab">&nbsp Rehab  </td>
            <td><input type="checkbox" name="modificat" value="Modificat">&nbsp Modification  </td>
            <td><input type="checkbox" name="care" value="Release from care">&nbsp Release from care   </td>
            <td><input type="checkbox" name="refer" value="Refer">&nbsp Refer  </td>
            </tr>      
            
            <tr class="row1">
                <td><b>Goals:</b></td>
                <td> <h4>Short Term:</h4></td>
                <td><input type="checkbox" name="decreasepain" value="Decrease Pain">&nbsp Decrease Pain </td>
                <td><input type="checkbox" name="decreasespam" value="Decrease Spam">&nbsp Decrease Spasm  </td>
                <td><input type="checkbox" name="increaserom" value="Increase ROM">&nbsp Increase ROM</td>
             </tr>
             <tr class="row1">
                <td></td>
                <td></td>                   
                <td><input type="checkbox" name="improveadl" value="Improve ADL">&nbsp Improve ADL    </td>
                <td></td>
                <td></td>
             </tr>
              <tr class="row1">
                <td></td>
                <td> <h4>Long Term:</h4></td>
                <td><input type="checkbox" name="fullactivity" value="Full Activity">&nbsp Full Activity    </td>
                <td><input type="checkbox" name="returntowork" value="Return to work">&nbsp Return to Work     </td>
                <td><input type="checkbox" name="renewsports" value="Renew Sports">&nbsp Renew sports    </td>
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
				                  
				                  <tr class="row1">
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
				                  <tr class="row1">
				                  <td>O'Donoghues</td>	
				                  <td valign="top" align="left" class="input_txt">Right<select width="50%" name="odonor"><option value="activerom">pain on active ROM</option><option value="passiverom">pain on passive ROM</option></select></td>
				                 <td class="input_txt" align="left">Left <select width="50%" name="odonol"><option value="activerom">pain on active ROM</option><option value="passiverom">pain on passive ROM</option></select></td>
				                  			                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Bakody Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="bakody_signr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="bakody_signl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="bakody_signlo" value="Localized">Localized</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Distraction Test*</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="distraction_testr" value="Right">Relief</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="distraction_testl" value="Left">No relief</td>
				                  </tr>
				                  <tr class="row1">
				                  <td>Valsalva 	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalvar" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalval" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="valsalvalo" value="Localized">Localized</td>				                 
				                  </tr>
				                  <tr class="row1">
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
				                  <tr class="row1">
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="adams_testr" value="Hump Remains">Hump Remains</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="adams_testl" value="Hump Dissap">Hump Dissapears</td>				                  			                 
				                  </tr>
         <tr class="row1">
				                  <td>Sheppal Sign</td>
				                    <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="sheppal_signr" value="Pain When Bending towards Thoracic Lesison">Pain When Bending towards Thoracic Lesison</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="sheppal_signl" value="Pain When Bending away from Thoracic Leison">Pain When Bending away from Thoracic Lesion</td>				                  			                    			                 
				                  </tr>
   <tr class="row1">
				                  <td>Soto Hall</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="soto_hallr" value="C/S Pain">C/S Pain   </td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="soto_halll" value="T/S Pain">T/S Pain</td>				                  			                 
				                  </tr>
				                  <tr class="row1">
				                  <td>Compression Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="compression_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="compression_testl" value="Left">Left</td>
				                  <td class="input_txt"><input type="checkbox" name="compression_testlo" value="Localized">Localized</td>				                 
				                  </tr>
				                  <tr height="300" class="row1">
				                  
				                  
				                  
				                  <td>
				                  
				                  <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td><input type="reset" class="submit_btn" value="Cancel"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td>
				                   <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="antalgiar" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="antalgial" value="Left">Left</td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="valsalvalr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="valsalvall" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>Minors Sign</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="minors_signr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="minors_signl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>Braggard's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braggards_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braggards_testl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>SLR</td>
				                 <td width="350">Right<select width="50%" name="slrr"><option value="30">30</option><option value="45">45</option><option value="70">70</option></select>&nbsp;&nbsp;</td>
				                 <td class="input_txt" align="left">Left<select width="50%" name="slrl"><option value="30">30</option><option value="45">45</option><option value="70">70</option></select>&nbsp;&nbsp;</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>WLR</td>
				                  <td width="350">Right<select width="50%" name="wlrr"><option value="30">30</option><option value="45">45</option><option value="70">70</option></select>&nbsp;&nbsp;</td>
				                 <td class="input_txt" align="left">Left<select width="50%" name="wlrl"><option value="30">30</option><option value="45">45</option><option value="70">70</option></select>&nbsp;&nbsp;</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Hoovers	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="hooversr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="hooversl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Dbl Leg Raise</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dbl_leg_raiser" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dbl_leg_raisel" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Long Leg Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="long_leg_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="long_leg_testl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Anvil Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="anvil_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="anvil_testl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Thomas	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="thomasr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="thomasl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Milgram's Test	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="milgrams_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="milgrams_testl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Obers		</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="obersr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="obersl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Illiac Comp	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="illiaccompr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="illiaccompl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                   <tr class="row1">
				                  <td>Yeomans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yeomansr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yeomansl" value="Left">Left</td>
				                 <td width="350"></td>	
				               <td width="350"></td>
				                  </tr>	
				                  <tr class="row1">
				                  <td>Allis Sign        	</td>
				                 
				                 <td width="350">Right<select width="50%" name="allis_signr"><option value="ltibia">Long Tibia</option><option value="femur">Femur</option></select>&nbsp;&nbsp;</td>	
				               <td width="350">Left<select width="50%" name="allis_signl"><option value="ltibia">Long Tibia</option><option value="femur">Femur</option></select>&nbsp;&nbsp;</td>
				                  </tr>	
				                  </table>
				                  </td>
				                  </tr>
				                  <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Save"></td>
				                   <td><input type="reset" class="submit_btn" value="Cancel"></td>
                                  <td valign="top" align="center"><input type="button" class="submit_btn" value="More Tests" onclick="window.location.href='moretest'"></td></td>
				                  <!--  <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewfirsthamiltonchiropractic'"></td> -->
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="dugasr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="dugasl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Supraspinatus</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="supraspinatusr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="supraspinatusl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Codmans	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="codmansr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="codmansl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Speed's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="speeds_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="speeds_testl" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Yergasons</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="yergasonsr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="yergasonsl" value="Left">Left</td>
				                 
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelser" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsel" value="Left">Left</td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Ligam Instab   </td>
				                  <td valign="top" align="left" class="input_txt">Right<select width="50%" name="lingaminstabr"><option value="MCL">MCL</option><option value="lcl">LCL</option></select></td>
				                 <td class="input_txt" align="left"> Left<select width="50%" name="lingaminstabl"><option value="mcl">MCL</option><option value="lcl">LCL</option></select></td>
				                 
				                  </tr>
				                  <tr class="row1">
				                  <td width="150"></td>
				                  <td>Golfers Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="golfers_elbowr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="golfers_elbowl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Tennis Elbow</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tennis_elbowr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tennis_elbowl" value="Left">Left</td>
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
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="tinelsr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="tinelsl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Phalens</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="phalensr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="phalensl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Finkelstein's Test</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="finkelsteins_testr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="finkelsteins_testl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Bracelet	</td>
				                  <td valign="top" align="left" class="input_txt"> <input type="checkbox" name="braceletr" value="Right">Right</td>
				                 <td class="input_txt" align="left"> <input type="checkbox" name="braceletl" value="Left">Left</td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Allens</td>
				                  <td valign="top" align="left" class="input_txt">Right  <select width="50%" name="allensr"><option value="slowradial">slow radial refill</option><option value="slowulnar">slow ulnar refill</option></select></td>
				                 <td class="input_txt" align="left">Left <select width="50%" name="allensl"><option value="slowradial">slow radial refill</option><option value="slowulnar">slow ulnar refill</option></select></td>
				                 
				                  </tr>
				                   <tr class="row1">
				                   <td width="150"></td>
				                  <td>Valgus/Varus </td>
				                  <td valign="top" align="left" class="input_txt">Right<select width="50%" name="valgus_varusr"><option value="MCL">MCL</option><option value="lcl">LCL</option></select></td>
				                 <td class="input_txt" align="left">Left<select width="50%" name="valgus_varusl"><option value="mcl">MCL</option><option value="lcl">LCL</option></select></td>
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
				                 
				                 
				                 
				  