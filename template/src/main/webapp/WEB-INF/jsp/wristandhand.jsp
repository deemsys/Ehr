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
	     
<form action="insertwristexam" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>WRIST AND HAND INITIAL EXAM </h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130">Patient Name:</td>
           <td><input type="text" name="pname"></td><td width="712"></td>
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
             <td width="135">Swelling  / Discoloration:</td>
             <td width="40"><input type="text" name="swelling"></td>
           
           <td width="49"></td>
           <td width="139">Dominant Hand</td><td><input type="radio" value="left" name="dominanthand">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;<input type="radio" value="right" name="dominanthand">&nbsp;&nbsp;&nbsp;Right</td>
          <td width="75"></td> <td width="130">A & O:</td><td><select name="ao"><option>excellent</option><option> good</option><option> fair</option><option> severe</option></select></td>
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
           <td width="129">Thenar Eminence:</td><td><input type="radio" value="left" name="thenareminence">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140"><input type="radio" value="right" name="thenareminence">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130">Flexor Carpi Radialis:</td><td><input type="radio" value="left" name="flexorcarpiradialis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110"> <input type="radio" value="right" name="flexorcarpiradialis">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="35"></td>
           <td width="120">Common Flexors:</td><td><input type="radio" value="left" name="commonflexors">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="commonflexors">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="73"></td>
           <td width="120">Hypothenar Eminence:</td><td><input type="radio" value="left" name="hypothenareminence">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="hypothenareminence">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129">Extensor Carpi Radialis:</td><td><input type="radio" value="left" name="extensorcarpiradialis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="extensorcarpiradialis">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Common Extensor:	</td><td><input type="radio" value="left" name="commonextensor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="commonextensor">&nbsp;&nbsp;&nbsp;Right</td>
           <td></td><td>Abductor Pollius Longus:</td><td><input type="radio" value="left" name="abductorpolliuslongus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="abductorpolliuslongus">&nbsp;&nbsp;&nbsp;Right</td>
           <td></td><td>Abductor Pollicis Brevis:</td><td><input type="radio" value="left" name="abductorpollicisbrevis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="abductorpollicisbrevis">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
           </br>           
         
                 

<table>	
	<tr><td width="129">Extensor Pollicis Brevis:</td><td><input type="radio" value="left" name="extensorpollicisbrevis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="140"> <input type="radio" value="right" name="extensorpollicisbrevis">&nbsp;&nbsp;&nbsp;Right</td><td  width="130">	Other / Note: </td>
<td><textarea rows="5" cols="50" name="note" ></textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional">Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="160"></td>
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
         <tr><td>Wrist Flexion:</td><td>80</td><td><input type="text" size="5" name="flexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="flexionright"></td><td width="210"></td><td>Allen's (Vasculature):	</td><td width="160"></td><td><input size="5" type="text"  name="allenleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="allenright"></td></tr>
         <tr><td>Wrist Extension:</td><td>80</td><td><input size="5" type="text" name="extensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="extensionright"></td><td width="90"></td><td>Phalen's (Median N):</td><td width="150"></td><td><input type="text"  size="5" name="phalenleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="phalenright"></td></tr>
         <tr><td>Wrist Ulnar Deviation:</td><td>90</td><td><input size="5" type="text" name="ulnarleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" name="ulnarright"></td><td width="90"></td><td>Reverse Phalens (Median N):</td><td width="150"></td><td><input type="text" size="5"  name="reverseleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="reverseright"></td></tr>
         <tr><td>Wrist Radial Deviation:</td><td>90</td><td><input size="5" type="text" name="radialleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="radialright"></td><td width="90"></td><td>Finkelstein's (Tenosynovitis):</td><td width="150"></td><td><input type="text" size="5"  name="tenosynovitisleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="tenosynovitisright"></td></tr></tr>
         <tr><td>Pronation / Supination	:</td><td>180</td><td><input type="text" size="5" name="pronationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="pronationright"><td width="90"></td><td>Tinnel's:</td><td width="150"></td><td><input type="text" size="5"  name="tinnelsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="tinnelsright"></td></td></tr>
         <tr><td></td><td></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td width="90"></td><td>ULTT:</td><td width="150"></td><td><input type="text" size="5" name="ulttleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="ulttright"></td></tr>
          
         
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
	            WRIST AND HAND INITIAL EXAM</h2></center><br/>
	             
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
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox" name="typing" value="Typing / Writing">Typing / Writing</td><td width="110"><input type="checkbox" name="driving" value="Driving"> Driving</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')">Other</td><td><input type="text" name="otherdefict" id="otherdefict" style="display:none "></td><td width="300"></td></tr>
           
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
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5"></td><td width="250">6)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis6"></td></tr>
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
				                   
	      
	            
	            