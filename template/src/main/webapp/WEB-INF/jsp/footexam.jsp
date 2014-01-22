<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	     <c:choose>
	     <c:when test="${empty footdetails}">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
           <td width="200"><input type="text" name="pname"><br><span class="err"><form:errors path="footexamdetails.signature"></form:errors></td><td width="635"></td>
           <td width="50"><span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker"><br><span class="err"><form:errors path="footexamdetails.signature"></form:errors></td>
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
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature"><span class="err"><form:errors path="footexamdetails.signature"></form:errors></div>
           
         </c:when>
         <c:otherwise>
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
           <td width="200"><input type="hidden" value="${footdetails.footexamno}" name="footexamno"><input type="text" value="${footdetails.pname}" name="pname"><br><span class="err"><form:errors path="footexamdetails.pname"></form:errors></td><td width="635"></td>
           <td width="50"><span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker" value="${footdetails.date}"><br><span class="err"><form:errors path="footexamdetails.date"></form:errors></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178" name="gait">
           <option <c:if test="${footdetails.gait=='normal'}"></c:if> <c:out value="selected"></c:out>>normal</option>
           <option <c:if test="${footdetails.gait=='antalogic'}"></c:if> <c:out value="selected"></c:out>>antalogic</option>
           <option <c:if test="${footdetails.gait=='shuffling'}"></c:if> <c:out value="selected"></c:out>>shuffling</option>
           <option <c:if test="${footdetails.gait=='limp'}"></c:if> <c:out value="selected"></c:out>>limp</option>
           <option <c:if test="${footdetails.gait=='stagger'}"></c:if> <c:out value="selected"></c:out>>stagger</option>
           <option <c:if test="${footdetails.gait=='cane assisted'}"></c:if> <c:out value="selected"></c:out>>cane assisted</option>
           <option <c:if test="${footdetails.gait=='wheelchair'}"></c:if> <c:out value="selected"></c:out>>wheelchair</option></select></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td >Muscle Symmetry:</td><td></td>
           <td><input type="text" name="muscle" value="${footdetails.muscle}" ></td><td width="10"></td>
             <td width="130">Swelling  / Discoloration</td>
             <td width="40"><input type="text" name="swelling" value="${footdetails.swelling}" ></td>
           
           <td width="59"></td>
           <td width="120">A & O</td><td><select name="ao" ><option <c:if test="${footdetails.ao=='excellent'}"></c:if> <c:out value="selected"></c:out>>excellent</option>
           <option <c:if test="${footdetails.ao=='good'}"></c:if> <c:out value="selected"></c:out>> good</option>
           <option <c:if test="${footdetails.ao=='fair'}"></c:if> <c:out value="selected"></c:out>> fair</option>
           <option <c:if test="${footdetails.ao=='severe'}"></c:if> <c:out value="selected"></c:out>> severe</option></select></td>
           </tr>  
           </table> 
           
           <table>
           <tr>
           <td width="129">Pronation:</td><td><input type="radio" value="left" name="pronation" <c:if test="${footdetails.pronation=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140"><input type="radio" <c:if test="${footdetails.pronation=='right'}"> <c:out value="checked"></c:out></c:if> value="right" name="pronation">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130">Supination:</td><td><input type="radio" value="left" <c:if test="${footdetails.supination=='left'}"> <c:out value="checked"></c:out></c:if> name="supination">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110"> <input type="radio" value="right"  <c:if test="${footdetails.supination=='right'}"> <c:out value="checked"></c:out></c:if> name="supination">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="35"></td>
           <td width="120">Calcaneus Varus:</td><td><input type="radio" value="left" name="calcaneus" <c:if test="${footdetails.calcaneus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="calcaneus" <c:if test="${footdetails.calcaneus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           <td width="73"></td>
           <td width="120">Calcaneus Valgus:</td><td><input type="radio" value="left" name="valgus" <c:if test="${footdetails.valgus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" name="valgus" <c:if test="${footdetails.valgus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           </tr><tr>
           <tr height="10"></tr>
           <td width="129">Forefoot Varus:</td><td><input type="radio" value="left" name="forefoot" <c:if test="${footdetails.forefoot=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefoot" <c:if test="${footdetails.forefoot=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Forefoot Valgus:</td><td><input type="radio" value="left" name="forefootvalgus" <c:if test="${footdetails.forefootvalgus=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right" name="forefootvalgus" <c:if test="${footdetails.forefootvalgus=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="40"></td>
         <td align="left"><input type="checkbox" value="Unremarkable" name="dysfunction" id="functional" <c:if test="${footdetails.dysfunction=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table>	
	<tr><td  width="130">Note  </td>
<td><textarea rows="5" cols="50" name="note" ><c:out value="${footdetails.note}"></c:out></textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional" <c:if test="${footdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="145"></td>
         <td><input type="checkbox" name="orthotpedic" <c:if test="${footdetails.orthotpedic=='unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> value="unremarkable">Unremarkable
        
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
         <tr><td>Plantar Flexion:		</td><td>50</td><td><input type="text" size="5" name="plantarflexionleft" value="${footdetails.plantarflexionleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarflexionright" value="${footdetails.plantarflexionright}"></td><td width="210"></td><td>Tinel's Tap:	</td><td width="150"></td><td><input size="5" type="text" value="${footdetails.tinelstapleft}" name="tinelstapleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${footdetails.tinelstapright}" name="tinelstapright"></td></tr>
         <tr><td>Dorsiflexion:				</td><td>20</td><td><input size="5" type="text" name="dorsiflexionleft" value="${footdetails.dorsiflexionleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.dorsiflexionright}" name="dorsiflexionright"></td><td width="90"></td><td>Achilles Tap:</td><td width="150"></td><td><input type="text"  size="5" name="achillestapleft" value="${footdetails.achillestapleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="achillestapright" value="${footdetails.achillestapright}"></td></tr>
         <tr><td>Inversion:				</td><td>35</td><td><input size="5" type="text"  value="${footdetails.inversionleft}" name="inversionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" value="${footdetails.inversionright}" name="inversionright"></td><td width="90"></td><td>Long / Transv Arch:</td><td width="150"></td><td><input type="text" size="5" value="${footdetails.longleft}"  name="longleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${footdetails.longright}" name="longright"></td></tr>
         <tr><td>Eversion:					</td><td>15</td><td><input size="5" type="text" value="${footdetails.eversionleft}" name="eversionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${footdetails.eversionright}" name="eversionright"></td><td width="90"></td><td>Thompson's:	</td><td width="150"></td><td><input type="text" size="5"  name="thompsonsleft" value="${footdetails.thompsonsleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.thompsonsright}" name="thompsonsright"></td></tr></tr>
         <tr><td>Great Toe Extension:</td><td>70</td><td><input type="text" size="5" value="${footdetails.greattoeextensionleft}" name="greattoeextensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.greattoeextensionright}" name="greattoeextensionright"><td width="90"></td><td>Drawer:		</td><td width="150"></td><td><input type="text" size="5" value="${footdetails.drawerleft}" name="drawerleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${footdetails.drawerright}" name="drawerright"></td></td></tr>
         <tr><td>Great Toe Flexion:	</td><td>45</td><td><input type="text" size="5" value="${footdetails.greattoeflexionleft}" name="greattoeflexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.greattoeflexionright}" name="greattoeflexionright"></td><td width="90"></td><td>Lateral (Varus) Stability:</td><td width="150"></td><td><input type="text" size="5" value="${footdetails.lateralleft}" name="lateralleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.lateralright}"  name="lateralright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Medial (Valgus) Stability:</td><td width="150"></td><td><input type="text" size="5"  name="medialstabilityleft" value="${footdetails.medialstabilityleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="medialstabilityright" value="${footdetails.medialstabilityright}"></td></tr>
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
         <td width="246"><input type="checkbox"   <c:if test="${footdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td><input type="text"  size="5" name="inguinalarealeft" value="${footdetails.inguinalarealeft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="inguinalarearight" value="${footdetails.inguinalarearight}">&nbsp;&nbsp; (Inguinal area)</td><td>L1</td><td><input size="5" type="text" name="iliopsoasfirstleft" value="${footdetails.iliopsoasfirstleft}">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size="5" value="${footdetails.iliopsoasfirstright}" name="iliopsoasfirstright">/5&nbsp;&nbsp; (Iliopsoas)</td><td></td><td></td></tr>
           <tr><td>L2</td><td><input size="5" type="text" name="antleft" value="${footdetails.antleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="antright" value="${footdetails.antright}">&nbsp;&nbsp;(Ant/med thigh)</td><td>L2</td><td><input type="text"  value="${footdetails.iliopsoas1left}" name="iliopsoas1left" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.iliopsoas1right}" name="iliopsoas1right">/5&nbsp;&nbsp;(Iliopsoas)</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" name="kneeleft" size="5" value="${footdetails.kneeleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="kneeright" value="${footdetails.kneeright}">&nbsp;&nbsp;(Medial knee)</td><td>L3</td><td><input type="text" value="${footdetails.kneeextensionleft}" name="kneeextensionleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.kneeextensionright}" name="kneeextensionright">/5&nbsp;&nbsp;(Knee extension)</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" name="medialleft" value="${footdetails.medialleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="medialright" value="${footdetails.medialright}">&nbsp;&nbsp;(Medial leg)</td><td>L4</td><td><input type="text" value="${footdetails.kneeflexionleft}" name="kneeflexionleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${footdetails.kneeflexionright}"name="kneeflexionright">/5&nbsp;&nbsp;(Knee flexion)</td><td>L4</td><td><input type="text" name="patellarleft" size="5" value="${footdetails.patellarleft}">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  value="${footdetails.patellarright}"name="patellarright" size="5">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" name="latleft" value="${footdetails.latleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="latright" value="${footdetails.latright}">&nbsp;&nbsp;(Ant/lat leg)</td><td>L5</td><td><input type="text" name="dorsiflexionleft1" value="${footdetails.dorsiflexionleft1}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text"  value="${footdetails.dorsiflexionright1}" name="dorsiflexionright1">/5&nbsp;&nbsp;(Dorsiflexion)</td><td>L5</td><td><input type="text" name="hsleft" size="5" value="${footdetails.hsleft}">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hsright"  value="${footdetails.hsright}" size="5">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" name="plantarleft" value="${footdetails.plantarleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="plantarright" value="${footdetails.plantarright}">&nbsp;&nbsp;(Big toe/plantar)</td><td>S1</td><td><input type="text" name="pfleft" value="${footdetails.pfleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  value="${footdetails.pfright}"name="pfright">/5&nbsp;&nbsp;(Grt toe ext, PF)</td><td>S1</td><td><input type="text" name="achillesleft"  value="${footdetails.achillesleft}"size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${footdetails.achillesright}" name="achillesright">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox"  <c:if test="${footdetails.walking=='walking'}"> <c:out value="checked=checked"></c:out></c:if> name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing"  <c:if test="${footdetails.standing=='standing'}"> <c:out value="checked=checked"></c:out></c:if> value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs"  <c:if test="${footdetails.stairs=='stairs'}"> <c:out value="checked=checked"></c:out></c:if> value="stairs">Stairs</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')" <c:if test="${footdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if>>Other</td><td><input type="text" name="otherdefict" id="otherdefict" value="${footdetails.otherdefict}" style="display:none "></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments"><c:out value="${footdetails.comments}"></c:out></textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option  <c:if test="${footdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>  >Excellent</option> 
                 <option <c:if test="${footdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>> Good</option>  
                  <option <c:if test="${footdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>> Fair</option> 
                    <option <c:if test="${footdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1" value="${footdetails.diagnosis1}"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" value="${footdetails.diagnosis2}"name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text"  value="${footdetails.diagnosis3}" name="diagnosis3"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" value="${footdetails.diagnosis4}" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" value="${footdetails.diagnosis5}" name="diagnosis5"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="times" value="${footdetails.times}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" value="${footdetails.weeks}"  name="weeks">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox"  <c:if test="${footdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if> name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic"  <c:if test="${footdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if> value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy"   <c:if test="${footdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if> value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox"  <c:if test="${footdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>  name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities"   <c:if test="${footdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if> value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation"  <c:if test="${footdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>  value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep"  <c:if test="${footdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>  value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic"   <c:if test="${footdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if> value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri"   <c:if test="${footdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if> value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan"  <c:if test="${footdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if> value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction"  <c:if test="${footdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>  value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg"  <c:if test="${footdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if> value="EMG"	>EMG	</td> <td width="150"><input type="checkbox"   <c:if test="${footdetails.outsidereferral=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if> name="outsidereferral" value="Outside Referral">Outside Referral 	</td><td><input type="checkbox"  <c:if test="${footdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>  name="dc" value="D/C">D/C</td>
           </tr>   
            <tr height="10"></tr>
           <tr><td width="95"></td><td width="160">
           <input type="checkbox" id="others" name="others" <c:if test="${footdetails.others=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" value="${footdetails.othervalue}" id="othervalue" style="display:none ">
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature" value="${footdetails.signature}"><span class="err"><form:errors path="footexamdetails.signature"></form:errors></div>
         
         
         
         
         
         </c:otherwise>
         </c:choose>
        <table align="right"><tr><td><input type="submit" value="Save" class="submit_btn"></td><td> <a href="viewfootexam" style="color: white" class="submit_btn">Cancel</a></td></tr></table>
         
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            