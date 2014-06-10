<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<c:if test="${shoulder=='1'}">
<script>
window.close();
</script>
</c:if>
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
 <script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script>  
  <script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
	        document.getElementById('print1').style.visibility = 'hidden';
	        document.getElementById('saveid').style.visibility = 'hidden';
	        document.getElementById('cancelid').style.visibility = 'hidden';
		  
     var html="<html>";
     html+= document.getElementById(id).innerHTML;

     html+="</html>";

     var printWin = window.open('','','left=0,top=0,width=1400,height=1000,toolbar=0,scrollbars=0,status  =0');
     printWin.document.write(html);
     printWin.document.close();
     printWin.focus();
     printWin.print();
     printWin.close();
     document.getElementById('print').style.visibility = 'visible';
     document.getElementById('print1').style.visibility = 'visible';
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
	  
  }
  </script>

</head>
<body>
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="insertshoulderexam" method="POST">  
<input type="hidden" name="username" value="${username}">
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            <div class="headings altheading">
	              <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>SHOULDER INITIAL EXAM</h2></center><br/>
	            
	            </div>
	   
	     <div class="contentbox">
	      <c:choose>     
	    <c:when test="${empty shoulderdetails}">
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
           <td width="200"><input type="text" name="pname"><br><span class="err"><form:errors path="shoulderexamdetails.pname"></form:errors></td><td width="630"></td>
           <td width="50"><span class="err">*</span>Date:&nbsp;</td> <td width="200"><input type="text" name="date" id="datepicker"><br><span class="err"><form:errors path="shoulderexamdetails.date"></form:errors></td>
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
         <td width="180" valign="top" style="width: 91px; ">Normal </td><td align="" style="width: 310px; ">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td style="width: 83px; "></td> <td></td><td style="width: 127px; "></td> <td style="width: 287px; ">Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td style="width: 76px; ">Flexion:</td><td style="width: 46px; ">180</td><td><input type="text" size="5" name="flexionleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="flexionright" onkeypress="return isNumberKey(event);"></td><td width="210" style="width: 102px; "></td><td>Empty Can:</td><td width="200"></td><td><input size="5" type="text"  name="emptycanleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="emptycanright"></td></tr>
         <tr><td>Extension:</td><td>50</td><td><input size="5" type="text" name="extensionleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="extensionright" onkeypress="return isNumberKey(event);"></td><td width="90"></td><td>Impingement Sign:</td><td width="150"></td><td><input type="text"  size="5" name="impingementsignleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  name="impingementsignright"></td></tr>
         <tr><td>Abduction:</td><td>180</td><td><input size="5" type="text" name="abductionleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" name="abductionright" onkeypress="return isNumberKey(event);"></td><td width="90"></td><td>Apley's Scratch:</td><td width="150"></td><td><input type="text" size="5"  name="apleysscratchleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="apleysscratchright"></td></tr>
         <tr><td>Adduction:</td><td>50</td><td><input size="5" type="text" name="adductionleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="adductionright" onkeypress="return isNumberKey(event);"></td><td width="90"></td><td>Subacrominal Push:</td><td width="150"></td><td><input type="text" size="5"  name="subacrominalpushleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="subacrominalpushright"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>90</td><td><input type="text" size="5" name="internalrotationleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="internalrotationright" onkeypress="return isNumberKey(event);"><td width="90"></td><td>Dawbarn's:</td><td width="150"></td><td><input type="text" size="5"  name="dawbarnsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="dawbarnsright"></td></td></tr>
         <tr><td>External Rotation:	</td><td>90</td><td><input type="text" size="5" name="externalrotationleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="externalrotationright" onkeypress="return isNumberKey(event);"></td><td width="90"></td><td>Yergason's:</td><td width="150"></td><td><input type="text" size="5" name="yergasonsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  name="yergasonsright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Codman's:</td><td width="150"></td><td><input type="text" size="5"  name="codmansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="codmansright"></td></tr>
         <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Apprehension:</td><td width="150"></td><td><input type="text" size="5"  name="apprehensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="apprehensionright"></td></tr>
         </table>
         </td></tr></table></div></div>
        <div id="tabs-2">     

	    <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block2">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print1" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block2');" >
	            <center> <h2>
	            SHOULDER INITIAL EXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox" id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr style="width: 1240px; "><td width="120" style="width: 42px; "><b>Level</b></td>  <td width="250" style="width: 344px; ">  <b> Sensory	</b></td> <td width="100" style="width: 46px; "><b>Level</b></td>  <td   width="250" style="width: 300px; ">  <b> Motor / Strength		</b></td> <td width="100" style="width: 49px; "><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td style="width: 282px; ">Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           
           <tr><td>C5</td><td><input size="5" type="text" name="latdeltoidleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="latdeltoidright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(Lat deltoid)</td><td>C5</td><td><input type="text" name="shdleft" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="shdright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Shd ABD)</td><td>C5</td><td><input type="text" name="bicepsleft" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bicepsright" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td>C6</td><td><input type="text" name="latarmleft" size="5" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="latarmright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(Lat arm/hand)</td><td>C6</td><td><input type="text" name="elbflexleft" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="elbflexright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Elb flex/wrist ext)</td><td>C6</td><td><input type="text" name="brachioradleft" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="brachioradright"  size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Brachiorad)</td></tr>
           <tr><td>C7</td><td><input type="text" size="5" name="thirdleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="thirdright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(3rd digit)</td><td>C7</td><td><input type="text" name="elbextleft" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="elbextright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Elb ext/wrist flex)</td><td>C7</td><td><input type="text" name="tricepsleft" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="tricepsright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Triceps)</td></tr>
            <tr><td>C8</td><td><input type="text" size="5" name="medforearmleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="medforearmright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(Med forearm/hand)</td><td>C8</td><td><input type="text" name="digitflexionleft" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text" name="digitflexionright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Digit flexion)</td><td></td></tr>
            <tr><td>T1</td><td><input size="5" type="text" name="medelbowleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="medelbowright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(Med elbow/arm)</td><td>T1</td><td><input type="text" name="digitabdleft" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" name="digitabdright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Digit abd/add)	</td><td><td>&nbsp;(2+/5 is Normal)</td></td></tr>
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
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="signature"><span class="err"><form:errors path="shoulderexamdetails.signature"></form:errors></div>
         </c:when>
          <c:otherwise>
         
         <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
           <td width="200"><input type="hidden" value="${shoulderdetails.shoulderexamno}" name="shoulderexamno"><input type="text" value="${shoulderdetails.pname}" name="pname"><br><span class="err"><form:errors path="shoulderexamdetails.pname"></form:errors></td><td width="630"></td>
           <td width="50"><span class="err">*</span>Date:&nbsp;</td> <td width="200"><input type="text"  value="${shoulderdetails.date}" name="date" id="datepicker"><br><span class="err"><form:errors path="shoulderexamdetails.date"></form:errors></td>
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
           <td><input type="text" name="muscle" value="${shoulderdetails.muscle}"></td><td width="48"></td>
             <td width="130">Swelling  / Discoloration</td>
             <td width="40"><input type="text" name="swelling" value="${shoulderdetails.swelling}"></td>
           
           <td width="59"></td>
           <td width="120">A & O</td><td><select name="ao" ><option <c:if test="${shoulderdetails.ao=='excellent'}"></c:if> <c:out value="selected"></c:out>>excellent</option>
           <option <c:if test="${shoulderdetails.ao=='good'}"></c:if> <c:out value="selected"></c:out>> good</option>
           <option <c:if test="${shoulderdetails.ao=='fair'}"></c:if> <c:out value="selected"></c:out>> fair</option>
           <option <c:if test="${shoulderdetails.ao=='severe'}"></c:if> <c:out value="selected"></c:out>> severe</option></select></td>
           </tr>  
           </table> 
          <br> 
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="40"></td>
         <td align="left"><input type="checkbox" value="Unremarkable" name="dysfunction" id="functional" <c:if test="${shoulderdetails.dysfunction=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>
           <table>
           <tr>
           <td width="129">Pectoralis Minor:</td><td><input type="radio" value="left"  <c:if test="${shoulderdetails.pectoralisminor=='left'}"> <c:out value="checked"></c:out></c:if> name="pectoralisminor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140"><input type="radio" value="right"  <c:if test="${shoulderdetails.pectoralisminor=='right'}"> <c:out value="checked"></c:out></c:if> name="pectoralisminor">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130">Supraspinatus:</td><td><input type="radio" value="left"  <c:if test="${shoulderdetails.supraspinatus=='left'}"> <c:out value="checked"></c:out></c:if> name="supraspinatus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110"> <input type="radio" value="right"  <c:if test="${shoulderdetails.supraspinatus=='right'}"> <c:out value="checked"></c:out></c:if> name="supraspinatus">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="35"></td>
           <td width="120">Infraspinatus:</td><td><input type="radio" value="left" <c:if test="${shoulderdetails.infraspinatus=='left'}"> <c:out value="checked"></c:out></c:if>  name="infraspinatus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" <c:if test="${shoulderdetails.infraspinatus=='right'}"> <c:out value="checked"></c:out></c:if>  name="infraspinatus">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="73"></td>
           <td width="120">Serratus Ant</td><td><input type="radio" value="left"  <c:if test="${shoulderdetails.serratusant=='left'}"> <c:out value="checked"></c:out></c:if> name="serratusant">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right"  <c:if test="${shoulderdetails.serratusant=='right'}"> <c:out value="checked"></c:out></c:if> name="serratusant">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129">Teres Minor:</td><td><input type="radio" value="left" <c:if test="${shoulderdetails.teresminor=='left'}"> <c:out value="checked"></c:out></c:if> name="teresminor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right"  <c:if test="${shoulderdetails.teresminor=='right'}"> <c:out value="checked"></c:out></c:if> name="teresminor">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Teres Major:</td><td><input type="radio" value="left"  <c:if test="${shoulderdetails.teresmajor=='left'}"> <c:out value="checked"></c:out></c:if> name="teresmajor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right"  <c:if test="${shoulderdetails.teresmajor=='right'}"> <c:out value="checked"></c:out></c:if> name="teresmajor">&nbsp;&nbsp;&nbsp;Right</td>
           <td></td><td>Rhomboids:</td><td><input type="radio" value="left" <c:if test="${shoulderdetails.rhomboids=='left'}"> <c:out value="checked"></c:out></c:if> name="rhomboids">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right"  <c:if test="${shoulderdetails.rhomboids=='right'}"> <c:out value="checked"></c:out></c:if> name="rhomboids">&nbsp;&nbsp;&nbsp;Right</td>
           <td></td><td>Trapezius:</td><td><input type="radio" value="left" <c:if test="${shoulderdetails.trapezius=='left'}"> <c:out value="checked"></c:out></c:if>  name="trapezius">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right"  <c:if test="${shoulderdetails.trapezius=='right'}"> <c:out value="checked"></c:out></c:if> name="trapezius">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
       </br>         
         
                 

<table>	
	<tr><td  width="130">	Other / Note: </td>
<td><textarea rows="5" cols="50" name="note" >${shoulderdetails.note}</textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional" <c:if test="${shoulderdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="145"></td>
         <td><input type="checkbox" name="orthotpedic" <c:if test="${shoulderdetails.orthotpedic=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> value="Unremarkable">Unremarkable
        
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
         <tr><td>Flexion:</td><td>180</td><td><input type="text" size="5" value="${shoulderdetails.flexionleft}" name="flexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.flexionright}" name="flexionright"></td><td width="210"></td><td>Empty Can:</td><td width="200"></td><td><input size="5" type="text" value="${shoulderdetails.emptycanleft}" name="emptycanleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${shoulderdetails.emptycanright}" name="emptycanright"></td></tr>
         <tr><td>Extension:</td><td>50</td><td><input size="5" type="text" value="${shoulderdetails.extensionright}" name="extensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderdetails.extensionleft}" name="extensionright"></td><td width="90"></td><td>Impingement Sign:</td><td width="150"></td><td><input type="text"  size="5" value="${shoulderdetails.impingementsignleft}" name="impingementsignleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${shoulderdetails.impingementsignright}" name="impingementsignright"></td></tr>
         <tr><td>Abduction:</td><td>180</td><td><input size="5" type="text" value="${shoulderdetails.abductionleft}" name="abductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" value="${shoulderdetails.abductionright}" name="abductionright"></td><td width="90"></td><td>Apley's Scratch:</td><td width="150"></td><td><input type="text" size="5"  value="${shoulderdetails.apleysscratchleft}" name="apleysscratchleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.apleysscratchright}" name="apleysscratchright"></td></tr>
         <tr><td>Adduction:</td><td>50</td><td><input size="5" type="text" value="${shoulderdetails.adductionleft}" name="adductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.adductionright}" name="adductionright"></td><td width="90"></td><td>Subacrominal Push:</td><td width="150"></td><td><input type="text" size="5" value="${shoulderdetails.subacrominalpushleft}"  name="subacrominalpushleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.subacrominalpushright}"   name="subacrominalpushright"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>90</td><td><input type="text" size="5"  value="${shoulderdetails.internalrotationleft}" name="internalrotationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderdetails.internalrotationright}" name="internalrotationright"><td width="90"></td><td>Dawbarn's:</td><td width="150"></td><td><input type="text" size="5" value="${shoulderdetails.dawbarnsleft}"  name="dawbarnsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  value="${shoulderdetails.dawbarnsright}" name="dawbarnsright"></td></td></tr>
         <tr><td>External Rotation:	</td><td>90</td><td><input type="text" size="5"  value="${shoulderdetails.externalrotationleft}" name="externalrotationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="externalrotationright" value="${shoulderdetails.externalrotationright}"></td><td width="90"></td><td>Yergason's:</td><td width="150"></td><td><input type="text" size="5" value="${shoulderdetails.yergasonsleft}" name="yergasonsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.yergasonsright}" name="yergasonsright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Codman's:</td><td width="150"></td><td><input type="text" size="5" value="${shoulderdetails.codmansleft}" name="codmansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${shoulderdetails.codmansright}"  name="codmansright"></td></tr>
         <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Apprehension:</td><td width="150"></td><td><input type="text" size="5"  name="apprehensionleft" value="${shoulderdetails.apprehensionleft}" >&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${shoulderdetails.apprehensionright}" name="apprehensionright"></td></tr>
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
         <td width="246"><input type="checkbox"   <c:if test="${shoulderdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           
           <tr><td>C5</td><td><input size="5" type="text"  value="${shoulderdetails.latdeltoidleft}" name="latdeltoidleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.latdeltoidright}" name="latdeltoidright">&nbsp;&nbsp;(Lat deltoid)</td><td>C5</td><td><input type="text" name="shdleft" value="${shoulderdetails.shdleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderdetails.shdright}"name="shdright">/5&nbsp;&nbsp;(Shd ABD)</td><td>C5</td><td><input type="text" name="bicepsleft"  value="${shoulderdetails.bicepsleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderdetails.bicepsright}" name="bicepsright" size="5">/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td>C6</td><td><input type="text" name="latarmleft" value="${shoulderdetails.latarmleft}" size="5">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.latarmright}" name="latarmright">&nbsp;&nbsp;(Lat arm/hand)</td><td>C6</td><td><input type="text" name="elbflexleft" value="${shoulderdetails.elbflexleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderdetails.elbflexright}" name="elbflexright">/5&nbsp;&nbsp;(Elb flex/wrist ext)</td><td>C6</td><td><input type="text" name="brachioradleft" value="${shoulderdetails.brachioradleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderdetails.brachioradright}" name="brachioradright"  size="5">/5&nbsp;&nbsp;(Brachiorad)</td></tr>
           <tr><td>C7</td><td><input type="text" size="5" value="${shoulderdetails.thirdleft}" name="thirdleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  value="${shoulderdetails.thirdright}" name="thirdright">&nbsp;&nbsp;(3rd digit)</td><td>C7</td><td><input type="text" value="${shoulderdetails.elbextleft}"  name="elbextleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.elbextright}" name="elbextright">/5&nbsp;&nbsp;(Elb ext/wrist flex)</td><td>C7</td><td><input type="text" value="${shoulderdetails.tricepsleft}" name="tricepsleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderdetails.tricepsright}" name="tricepsright">/5&nbsp;&nbsp;(Triceps)</td></tr>
            <tr><td>C8</td><td><input type="text" size="5" value="${shoulderdetails.medforearmleft}" name="medforearmleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  value="${shoulderdetails.medforearmright}" name="medforearmright">&nbsp;&nbsp;(Med forearm/hand)</td><td>C8</td><td><input type="text" name="digitflexionleft"  value="${shoulderdetails.digitflexionleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"   value="${shoulderdetails.digitflexionright}" type="text" name="digitflexionright">/5&nbsp;&nbsp;(Digit flexion)</td><td></td></tr>
            <tr><td>T1</td><td><input size="5" type="text" value="${shoulderdetails.medelbowleft}"  name="medelbowleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderdetails.medelbowright}" name="medelbowright">&nbsp;&nbsp;(Med elbow/arm)</td><td>T1</td><td><input type="text" name="digitabdleft" value="${shoulderdetails.digitabdleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"value="${shoulderdetails.digitabdright}" name="digitabdright">/5&nbsp;&nbsp;(Digit abd/add)	</td><td><td>&nbsp;(2+/5 is Normal)</td></td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="130"><input type="checkbox" name="overhead"  <c:if test="${shoulderdetails.overhead=='Overhead Activities'}"> <c:out value="checked=checked"></c:out></c:if> value="Overhead Activities">Overhead Activities</td><td width="68"><input type="checkbox"  <c:if test="${shoulderdetails.lifting=='Lifting'}"> <c:out value="checked=checked"></c:out></c:if> name="lifting" value="Lifting"> Lifting</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')" <c:if test="${shoulderdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if>>Other</td><td><input type="text" name="otherdefict" id="otherdefict" value="${shoulderdetails.otherdefict}" style="display:none "></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments">${shoulderdetails.comments}</textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option  <c:if test="${shoulderdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>  >Excellent</option> 
                 <option <c:if test="${shoulderdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>> Good</option>  
                  <option <c:if test="${shoulderdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>> Fair</option> 
                    <option <c:if test="${shoulderdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1" value="${shoulderdetails.diagnosis1}"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderdetails.diagnosis2}" name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderdetails.diagnosis3}" name="diagnosis3"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderdetails.diagnosis4}" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5" value="${shoulderdetails.diagnosis5}"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" value="${shoulderdetails.times}" name="times">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" value="${shoulderdetails.weeks}" name="weeks">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox"  <c:if test="${shoulderdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if> name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic"  <c:if test="${shoulderdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if> value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy"   <c:if test="${shoulderdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if> value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox"  <c:if test="${shoulderdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>  name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities"   <c:if test="${shoulderdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if> value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation"  <c:if test="${shoulderdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>  value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep"  <c:if test="${shoulderdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>  value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic"   <c:if test="${shoulderdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if> value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri"   <c:if test="${shoulderdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if> value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan"  <c:if test="${shoulderdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if> value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction"  <c:if test="${shoulderdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>  value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg"  <c:if test="${shoulderdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if> value="EMG"	>EMG</td> <td width="150"><input type="checkbox"   <c:if test="${shoulderdetails.outsiderefferal=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if> name="outsiderefferal" value="Outside Referral">Outside Referral</td><td><input type="checkbox"  <c:if test="${shoulderdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>  name="dc" value="D/C">D/C</td>
           </tr>   
            <tr height="10"></tr>
           <tr><td width="95"></td><td width="160">
           <input type="checkbox" id="others" name="others" <c:if test="${shoulderdetails.others=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" value="${shoulderdetails.othervalue}" id="othervalue" style="display:none ">
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderdetails.signature}" name="signature"><span class="err"><form:errors path="shoulderexamdetails.signature"></form:errors></div>
         
          
          
          
          
          
          </c:otherwise>
          </c:choose> 
         
      <table align="right"><tr><td><input type="submit" value="Save" id="saveid" class="submit_btn"></td><td> <a href="viewshoulderexamdetails" style="color: white" class="submit_btn" onclick="myclose()" id="cancelid">Cancel</a></td></tr></table>
         
         </div></td></tr></table></div></div></div>
         
         <script>
 function myclose()
 {
	 window.close();
 }
 </script>
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            