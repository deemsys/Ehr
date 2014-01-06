<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<script type="text/javascript">
function softtissuevalidate()
{
if(document.getElementById('softtissuess').checked)
{
document.getElementById('softtissue').style.display="none";
document.getElementById('softtissue1').style.display="none";
document.getElementById('softtissue2').style.display="none";
 }
 else if(document.getElementById('softtissues').checked)
{
document.getElementById('softtissue').style.display="block";
document.getElementById('softtissue1').style.display="block";
document.getElementById('softtissue2').style.display="block";
 } 
}

function neurologicalvalidate()
{
if(document.getElementById('neurologicalunremarkable').checked)
{
document.getElementById('neurological').style.display="none";

 }
 else if(document.getElementById('neurologicalexcept').checked)
{
document.getElementById('neurological').style.display="block";
 } 
}
function Checksymptom(val){
 var element=document.getElementById('legother');
 
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
function Checksymptom1(val){
 var element=document.getElementById('legother1');

 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
} 
function visible(val)
{
if(document.getElementById('other').checked)
{
 var element=document.getElementById('otherdefict');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('otherdefict');
 element.style.display='none';
 }
 
}

function shortlegvalidate(val)
{
if(document.getElementById('leftvalue').checked)
{
var element=document.getElementById('shortlegleft');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('shortlegleft');
 element.style.display='none';
 }
}
function shortlegvalidate1(val)
{
if(document.getElementById('shortlegcheck').checked)
{
var element=document.getElementById('shortlegright');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('shortlegright');
 element.style.display='none';
 }
}
function othervisible(val)
{
if(document.getElementById('others').checked)
{
 var element=document.getElementById('othervalue');
 element.style.display='block';
 }
 else
 {
 var element=document.getElementById('othervalue');
 element.style.display='none';
 }
 
}
</script >

<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<script type="text/javascript">
$(function() {
    $( "#tabs" ).tabs();
 
    // fix the classes
    $( ".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *" )
      .removeClass( "ui-corner-all ui-corner-top" )
      .addClass( "ui-corner-bottom" );
 
    // move the nav to the bottom
    $( ".tabs-bottom .ui-tabs-nav" ).appendTo( ".tabs-bottom" );
  });
</script>
<script type="text/javascript">
    var currentTab = 0;
    $(function () {
        $("#tabs").tabs({
            select: function (e, i) {
                currentTab = i.index;
            }
        });
    });
    $("#btnNext").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == (c - 1) ? currentTab : (currentTab + 1);
        tabs.tabs('select', currentTab);
        $("#btnPrevious").show();
        if (currentTab == (c - 1)) {
            $("#btnNext").hide();
        } else {
            $("#btnNext").show();
        }
    });
    $("#btnPrevious").live("click", function () {
        var tabs = $('#tabs').tabs();
        var c = $('#tabs').tabs("length");
        currentTab = currentTab == 0 ? currentTab : (currentTab - 1);
        tabs.tabs('select', currentTab);
        if (currentTab == 0) {
            $("#btnNext").show();
            $("#btnPrevious").hide();
        }
        if (currentTab < (c - 1)) {
            $("#btnNext").show();
        }
    });
</script>

 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
    <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
   
  

</head>
<body>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="insertfootexam" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>ANKLE / FOOT INITIAL EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130">Patient Name:</td>
           <td><input type="text" name="pname"></td><td width="690"></td>
           <td width="120">Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker"></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178" name="gait"><option>normal</option><option>antalogic</option><option>shuffling</option><option>limp</option><option>stagger</option><option>cane assisted</option><option>wheelchair</option></select></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td >Muscle Symmetry:</td><td></td>
           <td><input type="text" name="muscle"></td><td width="10"></td>
             <td width="130">Swelling  / Discoloration</td>
             <td width="40"><input type="text" name="swelling"></td>
           
           <td width="59"></td>
           <td width="120">A & O</td><td><select name="ao"><option>excellent</option><option> good</option><option> fair</option><option> severe</option></select></td>
           </tr>  
           </table> 
           
           <table>
           <tr>
           <td width="129">Pronation:</td><td><input type="radio" value="left" name="pronation">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140"><input type="radio" value="right" name="pronation">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130">Supination:</td><td><input type="radio" value="left" name="supination">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110"> <input type="radio" value="right" name="supination">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="35"></td>
           <td width="120">Calcaneus Varus:</td><td><input type="radio" value="left" name="calcaneus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="calcaneus">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="73"></td>
           <td width="120">Calcaneus Valgus:</td><td><input type="radio" value="left" name="valgus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="valgus">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129">Forefoot Varus:</td><td><input type="radio" value="left" name="forefoot">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefoot">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Forefoot Valgus:</td><td><input type="radio" value="left" name="forefootvalgus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefootvalgus">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="40"></td>
         <td align="left"><input type="checkbox" id="softtissuess" onclick="softtissuevalidate()" name="dysfunction" value="All Soft Tissue Unremarkable">All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table>	
	<tr><td  width="130">Note  </td>
<td><textarea rows="5" cols="50" name="note" ></textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional">Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="120"></td>
         <td><input type="checkbox" name="orthotpedic" value="unremarkable">Unremarkable
        
         </td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="180" valign="top">Normal </td><td align="center">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td></td> <td></td><td></td> <td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td>Plantar Flexion:		</td><td>50</td><td><input type="text" size="5" name="plantarflexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarflexionright"></td><td width="210"></td><td>Tinel's Tap:	</td><td width="150"></td><td><input size="5" type="text"  name="tinelstapleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="tinelstapright"></td></tr>
         <tr><td>Dorsiflexion:				</td><td>20</td><td><input size="5" type="text" name="dorsiflexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="dorsiflexionright"></td><td width="90"></td><td>Achilles Tap:</td><td width="150"></td><td><input type="text"  size="5" name="achillestapleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="achillestapright"></td></tr>
         <tr><td>Inversion:				</td><td>35</td><td><input size="5" type="text" name="inversionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" name="inversionright"></td><td width="90"></td><td>Long / Transv Arch:</td><td width="150"></td><td><input type="text" size="5"  name="longleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="longright"></td></tr>
         <tr><td>Eversion:					</td><td>15</td><td><input size="5" type="text" name="eversionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="eversionright"></td><td width="90"></td><td>Thompson's:	</td><td width="150"></td><td><input type="text" size="5"  name="thompsonsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="thompsonsright"></td></tr></tr>
         <tr><td>Great Toe Extension:</td><td>70</td><td><input type="text" size="5" name="greattoeextensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="greattoeextensionright"><td width="90"></td><td>Drawer:		</td><td width="150"></td><td><input type="text" size="5"  name="drawerleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="drawerright"></td></td></tr>
         <tr><td>Great Toe Flexion:	</td><td>45</td><td><input type="text" size="5" name="greattoeflexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="greattoeflexionright"></td><td width="90"></td><td>Lateral (Varus) Stability:</td><td width="150"></td><td><input type="text" size="5" name="lateralleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="lateralright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Medial (Valgus) Stability:</td><td width="150"></td><td><input type="text" size="5"  name="medialstabilityleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="medialstabilityright"></td></tr>
         </table>
         </td></tr></table></div></div>
        <div id="tabs-2">     

	    <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            ANKLE / FOOT INITIAL EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox" id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td><input type="text"  size="5" name="inguinalarealeft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="inguinalarearight">&nbsp;&nbsp; (Inguinal area)</td><td>L1</td><td><input size="5" type="text" name="iliopsoasfirstleft">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size="5" name="iliopsoasfirstright">/5&nbsp;&nbsp; (Iliopsoas)</td><td></td><td></td></tr>
           <tr><td>L2</td><td><input size="5" type="text" name="antleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="antright">&nbsp;&nbsp;(Ant/med thigh)</td><td>L2</td><td><input type="text" name="iliopsoas1left" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="iliopsoas1right">/5&nbsp;&nbsp;(Iliopsoas)</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" name="kneeleft" size="5">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeright">&nbsp;&nbsp;(Medial knee)</td><td>L3</td><td><input type="text" name="kneeextensionleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeextensionright">/5&nbsp;&nbsp;(Knee extension)</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" name="medialleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="medialright">&nbsp;&nbsp;(Medial leg)</td><td>L4</td><td><input type="text" name="kneeflexionleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeflexionright">/5&nbsp;&nbsp;(Knee flexion)</td><td>L4</td><td><input type="text" name="patellarleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="patellarright" size="5">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" name="latleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="latright">&nbsp;&nbsp;(Ant/lat leg)</td><td>L5</td><td><input type="text" name="dorsiflexionleft1" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text" name="dorsiflexionright1">/5&nbsp;&nbsp;(Dorsiflexion)</td><td>L5</td><td><input type="text" name="hsleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hsright"  size="5">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" name="plantarleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarright">&nbsp;&nbsp;(Big toe/plantar)</td><td>S1</td><td><input type="text" name="pfleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="pfright">/5&nbsp;&nbsp;(Grt toe ext, PF)</td><td>S1</td><td><input type="text" name="achillesleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="achillesright">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox" name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing" value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs" value="stairs">Stairs</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')">Other</td><td><input type="text" name="otherdefict" id="otherdefict" style="display:none "></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments"></textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option>Excellent</option>   <option> Good</option>   <option> Fair</option>   <option>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis3"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="times">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" name="weeks">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox" name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic" value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy" value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox" name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities" value="Modalities	">Modalities</td> <td width="150"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep" value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic" value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri" value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan" value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction" value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg" value="EMG">EMG	</td> <td width="150"><input type="checkbox" name="outsidereferral" value="Outside Referral ">Outside Referral 	</td><td><input type="checkbox" name="dc" value="D/C">D/C</td>
           </tr>   
            <tr height="10"></tr>
           <tr><td width="95"></td><td width="160">
           <input type="checkbox" id="others" name="others" value="other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" id="othervalue" style="display:none ">
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px">PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature"></div>
           
         
         <div align="right"><input class="submit_btn" type="submit" value="save" ></div>
         
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            