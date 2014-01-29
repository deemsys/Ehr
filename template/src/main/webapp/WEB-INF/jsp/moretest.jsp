<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
   </head>
   <body>
   <form action="moretest" method="POST">
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	             <h2>More orthopaedic Tests</h2> 
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
              <tr class="row2">
              <td><b>SHOULDER</b></td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
               
                 <td><input type="checkbox" name="emptycan" value="emptycan" >&nbsp Empty Can (Supraspinatus) Test</td>
                 <td><input type="checkbox" name="yergason" value="yergason" >&nbsp Yergason Test </td>
                 <td><input type="checkbox" name="speed" value="speed" >&nbsp Speed's Test </td>
                 <td><input type="checkbox" name="ludington" value="ludington" >&nbsp Ludington's Sign </td>
                 <td><input type="checkbox" name="droparm" value="droparm" >&nbsp Drop Arm Test</td>
                 
                 </tr>
                 <tr class="row1">
                 <td><input type="checkbox" name="apley" value="apley" >&nbsp Apley's Scratch Test </td>
                 
               <td><input type="checkbox" name="crossover" value="crossover" >&nbsp Cross-Over Impingement Test </td>
                 <td><input type="checkbox" name="neerimpingement" value="neerimpingement" >&nbsp Neer Impingement Test </td>
                 <td><input type="checkbox" name="hawkinskennedy" value="hawkinskennedy" >&nbsp Hawkins-Kennedy Impingement Test </td>
                 <td><input type="checkbox" name="sternoclavicular" value="sternoclavicular" >&nbsp Sternoclavicular (SC) Joint Stress Test </td>
                 
                 </tr>
                 <tr class="row1">
                 <td><input type="checkbox" name="acjdtest" value="acjdtest" >&nbsp Acromioclavicular (AC) Joint Distraction Test </td>
                 <td><input type="checkbox" name="acjctest" value="acjctest" >&nbsp Acromioclavicular (AC) Joint Compression Test (Shear)</td>
                 
               <td><input type="checkbox" name="piano" value="piano" >&nbsp Piano Key Sign  </td>
                 <td><input type="checkbox" name="apprehensiona" value="apprehensiona" >&nbsp Apprehension Test (Anterior)  </td>
                 <td><input type="checkbox" name="apprehensionp" value="apprehensionp" >&nbsp Apprehension Test (Posterior) </td>
                               
                 </tr>
                 <tr class="row1">
                  <td><input type="checkbox" name="sulcus" value="sulcus" >&nbsp Sulcus Sign  </td>
                 <td><input type="checkbox" name="anterior" value="anterior" >&nbsp Anterior Drawer Test  </td>
                 <td><input type="checkbox" name="posterior" value="posterior" >&nbsp Posterior Drawer Test  </td>
               <td><input type="checkbox" name="jobe" value="jobe" >&nbsp Jobe Relocation Test  </td>
                 <td><input type="checkbox" name="feagin" value="feagin" >&nbsp Feagin Test </td>
                 
                 </tr>
                 <tr class="row1">
                 <td><input type="checkbox" name="loadshift" value="loadshift" >&nbsp Load and Shift Test  </td>
                 <td><input type="checkbox" name="grind" value="grind" >&nbsp Grind Test </td>
                 <td><input type="checkbox" name="clunk" value="clunk" >&nbsp Clunk Test  </td>
                 <td><input type="checkbox" name="obrien" value="obrien" >&nbsp O'Brien Test  </td>
               <td><input type="checkbox" name="brachial" value="brachial" >&nbsp Brachial Plexus Stretch Test   </td>
                                 
                 </tr>
                 <tr class="row1">
                 <td><input type="checkbox" name="shoulder" value="shoulder" >&nbsp Shoulder Abduction Test </td>
                 <td><input type="checkbox" name="adson" value="adson" >&nbsp Adson's Maneuver  </td>
                 <td><input type="checkbox" name="allen" value="allen" >&nbsp Allen's Test  </td>
                 <td><input type="checkbox" name="roos" value="roos" >&nbsp Roos Test  </td>
                 <td><input type="checkbox" name="military" value="military" >&nbsp Military Brace Position  </td>
                 </tr>
                 <tr class="row1">
                 <td><input type="checkbox" name="pectoralis" value="pectoralis" >&nbsp Pectoralis Major Contracture Test</td>
                 <td></td>
                 <td></td>
                 <td></td>
                 <td></td>
                  </tr>
                  </table>
                  
               
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>TEMPOROMANDIBULAR</b></td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
                 <td width="260"><input type="checkbox" name="chvostek" value="chvostek" >&nbsp Chvostek's Sign   </td>
                 <td width="310"><input type="checkbox" name="loadingtest" value="loadingtest" >&nbsp Loading Test </td>
                 <td><input type="checkbox" name="palpation" value="palpation" >&nbsp Palpation Test   </td>
                 <td> </td>
                 <td> </td>
                 </tr>
                 </table>
                 
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>CERVICAL SPINE</b></td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
              <td width="260"><input type="checkbox" name="vertebral" value="vertebral" >&nbsp Vertebral Artery Test </td>
                 <td width="310"><input type="checkbox" name="foraminalct" value="foraminalct" >&nbsp Foraminal Compression Test (Spurling)</td>
                 <td width="150"><input type="checkbox" name="foraminaldt" value="foraminaldt" >&nbsp Foraminal Distraction Test  </td>
                 <td width="220"><input type="checkbox" name="valsalva" value="valsalva" >&nbsp Valsalva's Maneuver </td>
                 <td><input type="checkbox" name="swallowing" value="swallowing" >&nbsp Swallowing Test  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="tinelsign" value="tinelsign" >&nbsp Tinel's Sign  </td>
                 <td></td>
                 <td> </td>
                 <td> </td>
                 <td> </td>
              </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>ELBOW </b></td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
              <td width="260"><input type="checkbox" name="cozen" value="cozen" >&nbsp Resistive Tennis Elbow Test (Cozen's Test)  </td>
                 <td width="310"><input type="checkbox" name="resistive" value="resistive" >&nbsp Resistive Tennis Elbow Test </td>
                 <td width="150"><input type="checkbox" name="passive" value="passive" >&nbsp Passive Tennis Elbow Test </td>
                 <td><input type="checkbox" name="golfer" value="golfer" >&nbsp Golfer's Elbow Test </td>
                 <td><input type="checkbox" name="hyperextension" value="hyperextension" >&nbsp Hyperextension Test  </td>
              </tr>
               <tr class="row1">
              
                 <td><input type="checkbox" name="elbowflexion" value="elbowflexion" >&nbsp Elbow Flexion Test </td>
                 <td><input type="checkbox" name="varus" value="varus" >&nbsp Varus Stress Test </td>
                 <td><input type="checkbox" name="valgus" value="valgus" >&nbsp Valgus Stress Test </td>
                 <td><input type="checkbox" name="tinel" value="tinel" >&nbsp Tinel's Sign  </td>
                  <td><input type="checkbox" name="pinchgrip" value="pinchgrip" >&nbsp Pinch Grip Test </td>
              </tr>
               
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>WRIST AND HAND</b></td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
              <td width="260"><input type="checkbox" name="tap" value="tap" >&nbsp Tap or Percussion Test 
                </td>
                 <td width="310"><input type="checkbox" name="compression" value="compression" >&nbsp Compression Test </td>
                 <td width="120"><input type="checkbox" name="longfinger" value="longfinger" >&nbsp Long Finger Flexion Test </td>
                 <td><input type="checkbox" name="finkelstein" value="finkelstein" >&nbsp Finkelstein Test  </td>
                 <td><input type="checkbox" name="phalen" value="phalen" >&nbsp Phalen Test </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="tinel" value="tinel" >&nbsp Tinel's Sign  </td>
                 <td><input type="checkbox" name="froment" value="froment" >&nbsp Froment's Sign </td>
                 <td><input type="checkbox" name="wrinkle" value="wrinkle" >&nbsp Wrinkle Test (Shrivel Test)  </td>
                 <td><input type="checkbox" name="digital" value="digital" >&nbsp Digital Allen's Test  </td>
                 <td><input type="checkbox" name="bunnel" value="bunnel" >&nbsp Bunnel Littler Test </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="murphy" value="murphy" >&nbsp Murphy's Sign  </td>
                 <td><input type="checkbox" name="watson" value="watson" >&nbsp Watson Test </td>
                 <td><input type="checkbox" name="valgusst" value="valgusst" >&nbsp Valgus Stress Test </td>
                 <td><input type="checkbox" name="varusst" value="varusst" >&nbsp Varus Stress Test </td>
                 <td><input type="checkbox" name="selectionvi" value="selectionvi" >&nbsp Section VI: Thoracic Spine </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="kernig" value="kernig" >&nbsp Kernig/Brudzinski Signs </td>
                 <td><input type="checkbox" name="lateral" value="lateral" >&nbsp Lateral Rib Compression Test </td>
                 <td><input type="checkbox" name="anteriorl" value="anteriorl" >&nbsp Anterior/Posterior Rib Compression Test </td>
                 <td><input type="checkbox" name="inspiration" value="inspiration" >&nbsp Inspiration/Expiration Breathing Test  </td>
                 <td> </td>
              </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>THORACIC SPINE</b> </td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
              <td width="260"><input type="checkbox" name="kernigt" value="kernigt" >&nbsp Kernig/Brudzinski Signs </td>
                 <td width="310"><input type="checkbox" name="lateralt" value="lateralt" >&nbsp Lateral Rib Compression Test </td>
                 <td width="230"><input type="checkbox" name="anteriort" value="anteriort" >&nbsp Anterior/Posterior Rib Compression Test </td>
                 <td><input type="checkbox" name="inspirationt" value="inspirationt" >&nbsp Inspiration/Expiration Breathing Test </td>
                 <td></td>
              </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>LUMBAR SPINE </b></td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
               <tr class="row1">
              <td width="260"><input type="checkbox" name="valsalvat" value="valsalvat" >&nbsp Valsalva's Maneuver  </td>
                 <td width="310"><input type="checkbox" name="stoop" value="stoop" >&nbsp Stoop Test </td>
                 <td width="150"><input type="checkbox" name="hoover" value="hoover" >&nbsp Hoover Test </td>
                 <td width="160"><input type="checkbox" name="kernigl" value="kernigl" >&nbsp Kernig/Brudzinski Signs </td>
                 <td><input type="checkbox" name="straight" value="straight" >&nbsp 90-90 Straight Leg Raise Test </td>
              </tr>
               <tr class="row1">
              <td><input type="checkbox" name="bowstring" value="bowstring" >&nbsp Bowstring Test (Cram Test)  </td>
                 <td><input type="checkbox" name="sitting" value="sitting" >&nbsp Sitting Root Test  </td>
                 <td><input type="checkbox" name="unilateral" value="unilateral" >&nbsp Unilateral Straight Leg Raise Test (Lasegue Test) </td>
                 <td><input type="checkbox" name="bilateral" value="bilateral" >&nbsp Bilateral Straight Leg Raise Test </td>
                 <td><input type="checkbox" name="wellstraight" value="wellstraight" >&nbsp Well Straight Leg Raise Test  </td>
              </tr>
               <tr class="row1">
              <td><input type="checkbox" name="slump" value="slump" >&nbsp Slump Test  </td>
                 <td><input type="checkbox" name="thomas" value="thomas" >&nbsp Thomas Test  </td>
                 <td><input type="checkbox" name="spring" value="spring" >&nbsp Spring Test </td>
                 <td><input type="checkbox" name="trendelenburg" value="trendelenburg" >&nbsp Trendelenburg's Test </td>
                 <td><input type="checkbox" name="stork" value="stork" >&nbsp Stork Standing Test </td>
              </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>SACRAL SPINE</b> </td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
               <tr class="row1">
              <td width="260"><input type="checkbox" name="sijft" value="sijft" >&nbsp Sacroiliac (SI) Joint Fixation Test 
               </td>
                 <td width="310"><input type="checkbox" name="gillet" value="gillet" >&nbsp Gillet Test </td>
                 <td width="260"><input type="checkbox" name="sijst" value="sijst" >&nbsp Sacroiliac (SI) Joint Stress Test 
                 </td>
                 <td width="180"><input type="checkbox" name="squish" value="squish" >&nbsp Squish Test 
                  </td>
                 <td><input type="checkbox" name="yeoman" value="yeoman" >&nbsp Yeoman's Test 
                  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="gaenslen" value="gaenslen" >&nbsp Gaenslen's Test 
              
               </td>
                 <td><input type="checkbox" name="patrick" value="patrick" >&nbsp Patrick or FABER Test 
                  </td>
                 <td><input type="checkbox" name="longsitting" value="longsitting" >&nbsp Long-Sitting Test 
                  
                 </td> <td> </td>
                 <td>   </td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>HIP</b> </td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
              <td width="260"><input type="checkbox" name="hipscouring" value="hipscouring" >&nbsp  Hip Scouring or Quadrant Test
               </td>
                 <td width="310"><input type="checkbox" name="nelaton" value="nelaton" >&nbsp Nélaton's Line 
                  </td>
                 <td width="260"><input type="checkbox" name="craig" value="craig" >&nbsp Craig's Test 
                  
                 </td>
                 <td width="180"><input type="checkbox" name="straighte" value="straighte" >&nbsp 90-90 Straight Leg Raise Test 
                 
                  </td>
                 <td><input type="checkbox" name="fabertest" value="fabertest" >&nbsp Patrick or FABER Test 
                  
                  </td>
              </tr>
               <tr class="row1">
              <td><input type="checkbox" name="trendelenburgf" value="trendelenburgf" >&nbsp Trendelenburg's Test  </td>
                 <td><input type="checkbox" name="ober" value="ober" >&nbsp Ober's Test 
                   </td>
                 <td><input type="checkbox" name="piriformis" value="piriformis" >&nbsp Piriformis Test 
                  </td>
                 <td><input type="checkbox" name="thomasp" value="thomasp" >&nbsp Thomas Test 
                  </td>
                 <td><input type="checkbox" name="trueleg" value="trueleg" >&nbsp True Leg-Length Discrepancy Test 
                  </td>
              </tr>
               <tr class="row1">
              <td><input type="checkbox" name="apparentleg" value="apparentleg" >&nbsp Apparent Leg-Length Discrepancy Test  </td>
                 <td><input type="checkbox" name="ely" value="ely" >&nbsp Ely's Test 
                  </td>
                 <td><input type="checkbox" name="tripod" value="tripod" >&nbsp Tripod Test 
                  </td>
                 <td><input type="checkbox" name="femoral" value="femoral" >&nbsp  Femoral Nerve Traction Test 
                  </td>
                 <td> </td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>KNEE </b></td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
              <td width="260"><input type="checkbox" name="patella" value="patella" >&nbsp Patella Tendon/Patella Ligament Length Test  </td>
                 <td width="310"><input type="checkbox" name="patellarp" value="patellarp" >&nbsp Patellar Apprehension Test 
                   </td>
                 <td width="260"><input type="checkbox" name="ballotable" value="ballotable" >&nbsp Ballotable Patella or Patella Tap Test </td>
                 <td width="200"><input type="checkbox" name="sweep" value="sweep" >&nbsp  Sweep Test 
                  </td>
                 <td><input type="checkbox" name="quadriceps" value="quadriceps" >&nbsp Quadriceps or Q-Angle Test </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="medial" value="medial" >&nbsp Medial-Lateral Grind Test 
                </td>
                 <td><input type="checkbox" name="bounce" value="bounce" >&nbsp Bounce Home Test 
                   </td>
                 <td><input type="checkbox" name="patellar" value="patellar" >&nbsp Patellar Grind Test (Clarke's Sign)  </td>
                 <td><input type="checkbox" name="renne" value="renne" >&nbsp Renne Test 
                  </td>
                 <td><input type="checkbox" name="noble" value="noble" >&nbsp Noble Test 
                  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="hughston" value="hughston" >&nbsp Hughston's Plica Test 
                </td>
                 <td><input type="checkbox" name="godfrey" value="godfrey" >&nbsp Godfrey 90/90 Test 
                   </td>
                 <td><input type="checkbox" name="posteriorg" value="posteriorg" >&nbsp Posterior Sag Test (Gravity Drawer Test) 
                  </td>
                 <td><input type="checkbox" name="reverse" value="reverse" >&nbsp Reverse Pivot Shift (Jakob Test) </td>
                 <td><input type="checkbox" name="anteriorlt" value="anteriorlt" >&nbsp Anterior Lachman's Test 
                  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="anteriordt" value="anteriordt" >&nbsp Anterior Drawer Test 
                </td>
                 <td><input type="checkbox" name="slocuminternal" value="slocuminternal" >&nbsp Slocum Test With Internal Tibial Rotation  </td>
                 <td><input type="checkbox" name="slocumexternal" value="slocumexternal" >&nbsp Slocum Test With External Tibial Rotation </td>
                 <td><input type="checkbox" name="pivot" value="pivot" >&nbsp Pivot Shift Test </td>
                 <td><input type="checkbox" name="jerk" value="jerk" >&nbsp Jerk Test 
                  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="posteriordt" value="posteriordt" >&nbsp Posterior Drawer Test 
                </td>
                 <td><input type="checkbox" name="hughstonposteromedial" value="hughstonposteromedial" >&nbsp Hughston Posteromedial Drawer Test 
                  </td>
                 <td><input type="checkbox" name="hughstonposterolateral" value="hughstonposterolateral" >&nbsp Hughston Posterolateral Drawer Test </td>
                 <td><input type="checkbox" name="posteriorlt" value="posteriorlt" >&nbsp Posterior Lachman's Test 27 
                  </td>
                 <td><input type="checkbox" name="externalrotation" value="externalrotation" >&nbsp External Rotation Recurvatum Test 
                  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="valgusstt" value="valgusstt" >&nbsp Valgus Stress Test 
               </td>
                 <td><input type="checkbox" name="varusstt" value="varusstt" >&nbsp Varus Stress Test 
                   </td>
                 <td><input type="checkbox" name="mcmurray" value="mcmurray" >&nbsp McMurray Test </td>
                 <td><input type="checkbox" name="apleyct" value="apleyct" >&nbsp Apley Compression Test 
                  </td>
                 <td><input type="checkbox" name="steinmann" value="steinmann" >&nbsp Steinmann's Tenderness Displacement Test 
                  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="rectus" value="rectus" >&nbsp Rectus Femoris Contracture Test 
                </td>
                 <td> </td>
                 <td></td>
                 <td></td>
                 <td> </td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="96%">
                  <tr class="row2">
              <td><b>ANKLE AND FOOT</b> </td>
              <td></td>
              <td></td>
              <td></td> 
              <td></td>
              </tr>
              <tr class="row1">
              <td width="260"><input type="checkbox" name="homans" value="homans" >&nbsp Homans' Sign   </td>
                 <td width="310"><input type="checkbox" name="anteriorh" value="anteriorh" >&nbsp Anterior Drawer Test 
                   </td>
                 <td width="260"><input type="checkbox" name="talarinversion" value="talarinversion" >&nbsp Talar Tilt Test (Inversion) </td>
                 <td width="200"><input type="checkbox" name="talareversion" value="talareversion" >&nbsp Talar Tilt Test (Eversion) 
                  </td>
                 <td><input type="checkbox" name="thompson" value="thompson" >&nbsp Thompson Test 
                  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="tap" value="tap" >&nbsp Tap or Percussion Test 
                </td>
                 <td><input type="checkbox" name="feiss" value="feiss" >&nbsp Feiss Line 30 
                   </td>
                 <td><input type="checkbox" name="interdigital" value="interdigital" >&nbsp Interdigital Neuroma Test 
                  </td>
                 <td><input type="checkbox" name="compressiontest" value="compressiontest" >&nbsp Compression Test 
                  </td>
                 <td><input type="checkbox" name="longbone" value="longbone" >&nbsp Long Bone Compression Test 
                  </td>
              </tr>
              <tr class="row1">
              <td><input type="checkbox" name="swingtest" value="swingtest" >&nbsp Swing Test 
                </td>
                 <td><input type="checkbox" name="kleiger" value="kleiger" >&nbsp Kleiger's Test 
                   </td>
                 <td><input type="checkbox" name="tinelsignk" value="tinelsignk" >&nbsp Tinel's Sign  </td>
                 <td></td>
                 <td> </td>
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
              </body>
              </html>