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
	     
<form action="insertshoulderexam" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>SHOULDER INITIAL EXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130">Patient Name:</td>
           <td><input type="text" name="pname"></td><td width="690"></td>
           <td width="125">Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker"></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           <table >
           <tr>      
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td >Muscle Symmetry:</td><td width="28"></td>
           <td><input type="text" name="muscle"></td><td width="48"></td>
             <td width="130">Swelling/Discoloration:</td>
             <td width="40"><input type="text" name="swelling"></td>
           
           <td width="59"></td>
           <td width="120">A & O</td><td><select name="ao"><option>excellent</option><option> good</option><option> fair</option><option> severe</option></select></td>
           </tr>  
           </table> 
          <br> 
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="40"></td>
         <td align="left"><input type="checkbox" id="softtissuess" onclick="softtissuevalidate()" name="dysfunction" value="All Soft Tissue Unremarkable">All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>
           <table>
           <tr>
           <td width="129">Pectoralis Minor:</td><td><input type="radio" value="left" name="pectoralisminor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140"><input type="radio" value="right" name="pectoralisminor">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130">Supraspinatus:</td><td><input type="radio" value="left" name="supraspinatus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110"> <input type="radio" value="right" name="supraspinatus">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="35"></td>
           <td width="120">Infraspinatus:</td><td><input type="radio" value="left" name="infraspinatus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="infraspinatus">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="73"></td>
           <td width="120">Serratus Ant</td><td><input type="radio" value="left" name="serratusant">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="serratusant">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129">Teres Minor:</td><td><input type="radio" value="left" name="teresminor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="teresminor">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Teres Major:</td><td><input type="radio" value="left" name="teresmajor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="teresmajor">&nbsp;&nbsp;&nbsp;Right</td>
           <td></td><td>Rhomboids:</td><td><input type="radio" value="left" name="rhomboids">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="rhomboids">&nbsp;&nbsp;&nbsp;Right</td>
           <td></td><td>Trapezius:</td><td><input type="radio" value="left" name="trapezius">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="trapezius">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
           </br>           
         
                 

<table>	
	<tr><td  width="130">	Other / Note: </td>
<td><textarea rows="5" cols="50" name="note" ></textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional">Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="145"></td>
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
         <tr><td>Flexion:</td><td>180</td><td><input type="text" size="5" name="flexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="flexionright"></td><td width="210"></td><td>Empty Can:</td><td width="200"></td><td><input size="5" type="text"  name="emptycanleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="emptycanright"></td></tr>
         <tr><td>Extension:</td><td>50</td><td><input size="5" type="text" name="extensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="extensionright"></td><td width="90"></td><td>Impingement Sign:</td><td width="150"></td><td><input type="text"  size="5" name="impingementsignleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="impingementsignright"></td></tr>
         <tr><td>Abduction:</td><td>180</td><td><input size="5" type="text" name="abductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" name="abductionright"></td><td width="90"></td><td>Apley's Scratch:</td><td width="150"></td><td><input type="text" size="5"  name="apleysscratchleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="apleysscratchright"></td></tr>
         <tr><td>Adduction:</td><td>50</td><td><input size="5" type="text" name="adductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="adductionright"></td><td width="90"></td><td>Subacrominal Push:</td><td width="150"></td><td><input type="text" size="5"  name="subacrominalpushleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="subacrominalpushright"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>90</td><td><input type="text" size="5" name="internalrotationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="internalrotationright"><td width="90"></td><td>Dawbarn's:</td><td width="150"></td><td><input type="text" size="5"  name="dawbarnsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="dawbarnsright"></td></td></tr>
         <tr><td>External Rotation:	</td><td>90</td><td><input type="text" size="5" name="externalrotationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="externalrotationright"></td><td width="90"></td><td>Yergason's:</td><td width="150"></td><td><input type="text" size="5" name="yergasonsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="yergasonsright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Codman's:</td><td width="150"></td><td><input type="text" size="5"  name="codmansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="codmansright"></td></tr>
         <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Apprehension:</td><td width="150"></td><td><input type="text" size="5"  name="apprehensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="apprehensionright"></td></tr>
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
	            SHOULDER INITIAL EXAM</h2></center><br/>
	             
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
           
           <tr><td>C5</td><td><input size="5" type="text" name="latdeltoidleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="latdeltoidright">&nbsp;&nbsp;(Lat deltoid)</td><td>C5</td><td><input type="text" name="shdleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="shdright">/5&nbsp;&nbsp;(Shd ABD)</td><td>C5</td><td><input type="text" name="bicepsleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bicepsright" size="5">/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td>C6</td><td><input type="text" name="latarmleft" size="5">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="latarmright">&nbsp;&nbsp;(Lat arm/hand)</td><td>C6</td><td><input type="text" name="elbflexleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="elbflexright">/5&nbsp;&nbsp;(Elb flex/wrist ext)</td><td>C6</td><td><input type="text" name="brachioradleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="brachioradright"  size="5">/5&nbsp;&nbsp;(Brachiorad)</td></tr>
           <tr><td>C7</td><td><input type="text" size="5" name="thirdleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="thirdright">&nbsp;&nbsp;(3rd digit)</td><td>C7</td><td><input type="text" name="elbextleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="elbextright">/5&nbsp;&nbsp;(Elb ext/wrist flex)</td><td>C7</td><td><input type="text" name="tricepsleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="tricepsright">/5&nbsp;&nbsp;(Triceps)</td></tr>
            <tr><td>C8</td><td><input type="text" size="5" name="medforearmleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="medforearmright">&nbsp;&nbsp;(Med forearm/hand)</td><td>C8</td><td><input type="text" name="digitflexionleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text" name="digitflexionright">/5&nbsp;&nbsp;(Digit flexion)</td><td></td></tr>
            <tr><td>T1</td><td><input size="5" type="text" name="medelbowleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="medelbowright">&nbsp;&nbsp;(Med elbow/arm)</td><td>T1</td><td><input type="text" name="digitabdleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="digitabdright">/5&nbsp;&nbsp;(Digit abd/add)	</td><td><td>&nbsp;(2+/5 is Normal)</td></td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="120"><input type="checkbox" name="overhead" value="Overhead Activities">Overhead Activities</td><td width="110"><input type="checkbox" name="lifting" value="Lifting"> Lifting</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')">Other</td><td><input type="text" name="otherdefict" id="otherdefict" style="display:none "></td><td width="300"></td></tr>
           
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
           <td width="150"><input type="checkbox" name="modalities" value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep" value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic" value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri" value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan" value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction" value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg" value="EMG">EMG</td> <td width="150"><input type="checkbox" name="outsiderefferal" value="Outside Referral">Outside Referral</td><td><input type="checkbox" name="dc" value="D/C">D/C</td>
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
				                   
	      
	            
	            