<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<script>
$(function() {
    //$( "#draggable" ).draggable({ revert: "not valid" });
    
    $(window).load(function(){    
    $('input:checkbox[name=other]').each(function() 
{    
    if($(this).is(':checked'))
    var other=$(this).val();     
       if(other=="other")
    {
    document.getElementById("otherdefict").style.display="block";
    }
    else
    {document.getElementById("otherdefict").style.display="none";
    }  
});
    $('input:checkbox[name=others]').each(function() 
{    
    if($(this).is(':checked'))
    var others=$(this).val();     
       if(others=="other")
    {
    document.getElementById("othervalue").style.display="block";
    }
    else
    {document.getElementById("othervalue").style.display="none";
    }  
});   

  

    
   
    });
    });

</script>
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
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2">2</a></li>    
  </ul>  
	     <div id="tabs-1">
	     
<form action="updateshoulderexam" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>SHOULDER REEXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
         <c:set value="${shoulderexamform.shoulderexamdetails[0]}" var="shoulderexamdetails"/>
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
           <td width="200"><input type="hidden" value="${shoulderexamdetails.shoulderexamno}" name="shoulderexamno"><input type="text" value="${shoulderexamdetails.pname}" name="pname"><br><span class="err"><form:errors path="shoulderexamdetails.pname"></form:errors></td><td width="630"></td>
           <td width="50"><span class="err">*</span>Date:&nbsp;</td> <td width="200"><input type="text"  value="${shoulderexamdetails.date}" name="date" id="datepicker"><br><span class="err"><form:errors path="shoulderexamdetails.date"></form:errors></td>
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
           <td><input type="text" name="muscle" value="${shoulderexamdetails.muscle}"></td><td width="48"></td>
             <td width="130">Swelling  / Discoloration</td>
             <td width="40"><input type="text" name="swelling" value="${shoulderexamdetails.swelling}"></td>
           
           <td width="59"></td>
           <td width="120">A & O</td><td><select name="ao" ><option <c:if test="${shoulderexamdetails.ao=='excellent'}"></c:if> <c:out value="selected"></c:out>>excellent</option>
           <option <c:if test="${shoulderexamdetails.ao=='good'}"></c:if> <c:out value="selected"></c:out>> good</option>
           <option <c:if test="${shoulderexamdetails.ao=='fair'}"></c:if> <c:out value="selected"></c:out>> fair</option>
           <option <c:if test="${shoulderexamdetails.ao=='severe'}"></c:if> <c:out value="selected"></c:out>> severe</option></select></td>
           </tr>  
           </table> 
          <br> 
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="40"></td>
         <td align="left"><input type="checkbox" value="Unremarkable" name="dysfunction" id="functional" <c:if test="${shoulderexamdetails.dysfunction=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>
           <table>
           <tr>
           <td width="129">Pectoralis Minor:</td><td><input type="radio" value="left"  <c:if test="${shoulderexamdetails.pectoralisminor=='left'}"> <c:out value="checked"></c:out></c:if> name="pectoralisminor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td> <td width="140"><input type="radio" value="right"  <c:if test="${shoulderexamdetails.pectoralisminor=='right'}"> <c:out value="checked"></c:out></c:if> name="pectoralisminor">&nbsp;&nbsp;&nbsp;Right</td>
                     
           <td width="130">Supraspinatus:</td><td><input type="radio" value="left"  <c:if test="${shoulderexamdetails.supraspinatus=='left'}"> <c:out value="checked"></c:out></c:if> name="supraspinatus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;<td width="110"> <input type="radio" value="right"  <c:if test="${shoulderexamdetails.supraspinatus=='right'}"> <c:out value="checked"></c:out></c:if> name="supraspinatus">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="35"></td>
           <td width="120">Infraspinatus:</td><td><input type="radio" value="left" <c:if test="${shoulderexamdetails.infraspinatus=='left'}"> <c:out value="checked"></c:out></c:if>  name="infraspinatus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right" <c:if test="${shoulderexamdetails.infraspinatus=='right'}"> <c:out value="checked"></c:out></c:if>  name="infraspinatus">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="73"></td>
           <td width="120">Serratus Ant</td><td><input type="radio" value="left"  <c:if test="${shoulderexamdetails.serratusant=='left'}"> <c:out value="checked"></c:out></c:if> name="serratusant">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right"  <c:if test="${shoulderexamdetails.serratusant=='right'}"> <c:out value="checked"></c:out></c:if> name="serratusant">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
           <tr height="10"></tr>
           <tr>
           <td width="129">Teres Minor:</td><td><input type="radio" value="left" <c:if test="${shoulderexamdetails.teresminor=='left'}"> <c:out value="checked"></c:out></c:if> name="teresminor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right"  <c:if test="${shoulderexamdetails.teresminor=='right'}"> <c:out value="checked"></c:out></c:if> name="teresminor">&nbsp;&nbsp;&nbsp;Right</td>
           <td width="130">Teres Major:</td><td><input type="radio" value="left"  <c:if test="${shoulderexamdetails.teresmajor=='left'}"> <c:out value="checked"></c:out></c:if> name="teresmajor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td><td width="110"> <input type="radio" value="right"  <c:if test="${shoulderexamdetails.teresmajor=='right'}"> <c:out value="checked"></c:out></c:if> name="teresmajor">&nbsp;&nbsp;&nbsp;Right</td>
           <td></td><td>Rhomboids:</td><td><input type="radio" value="left" <c:if test="${shoulderexamdetails.rhomboids=='left'}"> <c:out value="checked"></c:out></c:if> name="rhomboids">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right"  <c:if test="${shoulderexamdetails.rhomboids=='right'}"> <c:out value="checked"></c:out></c:if> name="rhomboids">&nbsp;&nbsp;&nbsp;Right</td>
           <td></td><td>Trapezius:</td><td><input type="radio" value="left" <c:if test="${shoulderexamdetails.trapezius=='left'}"> <c:out value="checked"></c:out></c:if>  name="trapezius">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp; <input type="radio" value="right"  <c:if test="${shoulderexamdetails.trapezius=='right'}"> <c:out value="checked"></c:out></c:if> name="trapezius">&nbsp;&nbsp;&nbsp;Right</td>
           </tr>
               
           </table>
       </br>         
         
                 

<table>	
	<tr><td  width="130">	Other / Note: </td>
<td><textarea rows="5" cols="50" name="note" >${shoulderexamdetails.note}</textarea></td>	
	
	</tr></table>
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="98"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional" <c:if test="${shoulderexamdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable
         
         </td>
         <td width="230"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="145"></td>
         <td><input type="checkbox" name="orthotpedic" <c:if test="${shoulderexamdetails.orthotpedic=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> value="Unremarkable">Unremarkable
        
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
         <tr><td>Flexion:</td><td>180</td><td><input type="text" size="5" value="${shoulderexamdetails.flexionleft}" name="flexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.flexionright}" name="flexionright"></td><td width="210"></td><td>Empty Can:</td><td width="200"></td><td><input size="5" type="text" value="${shoulderexamdetails.emptycanleft}" name="emptycanleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${shoulderexamdetails.emptycanright}" name="emptycanright"></td></tr>
         <tr><td>Extension:</td><td>50</td><td><input size="5" type="text" value="${shoulderexamdetails.extensionright}" name="extensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderexamdetails.extensionleft}" name="extensionright"></td><td width="90"></td><td>Impingement Sign:</td><td width="150"></td><td><input type="text"  size="5" value="${shoulderexamdetails.impingementsignleft}" name="impingementsignleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${shoulderexamdetails.impingementsignright}" name="impingementsignright"></td></tr>
         <tr><td>Abduction:</td><td>180</td><td><input size="5" type="text" value="${shoulderexamdetails.abductionleft}" name="abductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" value="${shoulderexamdetails.abductionright}" name="abductionright"></td><td width="90"></td><td>Apley's Scratch:</td><td width="150"></td><td><input type="text" size="5"  value="${shoulderexamdetails.apleysscratchleft}" name="apleysscratchleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.apleysscratchright}" name="apleysscratchright"></td></tr>
         <tr><td>Adduction:</td><td>50</td><td><input size="5" type="text" value="${shoulderexamdetails.adductionleft}" name="adductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.adductionright}" name="adductionright"></td><td width="90"></td><td>Subacrominal Push:</td><td width="150"></td><td><input type="text" size="5" value="${shoulderexamdetails.subacrominalpushleft}"  name="subacrominalpushleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.subacrominalpushright}"   name="subacrominalpushright"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>90</td><td><input type="text" size="5"  value="${shoulderexamdetails.internalrotationleft}" name="internalrotationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderexamdetails.internalrotationright}" name="internalrotationright"><td width="90"></td><td>Dawbarn's:</td><td width="150"></td><td><input type="text" size="5" value="${shoulderexamdetails.dawbarnsleft}"  name="dawbarnsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  value="${shoulderexamdetails.dawbarnsright}" name="dawbarnsright"></td></td></tr>
         <tr><td>External Rotation:	</td><td>90</td><td><input type="text" size="5"  value="${shoulderexamdetails.externalrotationleft}" name="externalrotationleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="externalrotationright" value="${shoulderexamdetails.externalrotationright}"></td><td width="90"></td><td>Yergason's:</td><td width="150"></td><td><input type="text" size="5" value="${shoulderexamdetails.yergasonsleft}" name="yergasonsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.yergasonsright}" name="yergasonsright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Codman's:</td><td width="150"></td><td><input type="text" size="5" value="${shoulderexamdetails.codmansleft}" name="codmansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${shoulderexamdetails.codmansright}"  name="codmansright"></td></tr>
         <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Apprehension:</td><td width="150"></td><td><input type="text" size="5"  name="apprehensionleft" value="${shoulderexamdetails.apprehensionleft}" >&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" value="${shoulderexamdetails.apprehensionright}" name="apprehensionright"></td></tr>
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
	            SHOULDER REEXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox"   <c:if test="${shoulderexamdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           
           <tr><td>C5</td><td><input size="5" type="text"  value="${shoulderexamdetails.latdeltoidleft}" name="latdeltoidleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.latdeltoidright}" name="latdeltoidright">&nbsp;&nbsp;(Lat deltoid)</td><td>C5</td><td><input type="text" name="shdleft" value="${shoulderexamdetails.shdleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderexamdetails.shdright}"name="shdright">/5&nbsp;&nbsp;(Shd ABD)</td><td>C5</td><td><input type="text" name="bicepsleft"  value="${shoulderexamdetails.bicepsleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderexamdetails.bicepsright}" name="bicepsright" size="5">/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td>C6</td><td><input type="text" name="latarmleft" value="${shoulderexamdetails.latarmleft}" size="5">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.latarmright}" name="latarmright">&nbsp;&nbsp;(Lat arm/hand)</td><td>C6</td><td><input type="text" name="elbflexleft" value="${shoulderexamdetails.elbflexleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderexamdetails.elbflexright}" name="elbflexright">/5&nbsp;&nbsp;(Elb flex/wrist ext)</td><td>C6</td><td><input type="text" name="brachioradleft" value="${shoulderexamdetails.brachioradleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderexamdetails.brachioradright}" name="brachioradright"  size="5">/5&nbsp;&nbsp;(Brachiorad)</td></tr>
           <tr><td>C7</td><td><input type="text" size="5" value="${shoulderexamdetails.thirdleft}" name="thirdleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  value="${shoulderexamdetails.thirdright}" name="thirdright">&nbsp;&nbsp;(3rd digit)</td><td>C7</td><td><input type="text" value="${shoulderexamdetails.elbextleft}"  name="elbextleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.elbextright}" name="elbextright">/5&nbsp;&nbsp;(Elb ext/wrist flex)</td><td>C7</td><td><input type="text" value="${shoulderexamdetails.tricepsleft}" name="tricepsleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.tricepsright}" name="tricepsright">/5&nbsp;&nbsp;(Triceps)</td></tr>
            <tr><td>C8</td><td><input type="text" size="5" value="${shoulderexamdetails.medforearmleft}" name="medforearmleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5"  value="${shoulderexamdetails.medforearmright}" name="medforearmright">&nbsp;&nbsp;(Med forearm/hand)</td><td>C8</td><td><input type="text" name="digitflexionleft"  value="${shoulderexamdetails.digitflexionleft}" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"   value="${shoulderexamdetails.digitflexionright}" type="text" name="digitflexionright">/5&nbsp;&nbsp;(Digit flexion)</td><td></td></tr>
            <tr><td>T1</td><td><input size="5" type="text" value="${shoulderexamdetails.medelbowleft}"  name="medelbowleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderexamdetails.medelbowright}" name="medelbowright">&nbsp;&nbsp;(Med elbow/arm)</td><td>T1</td><td><input type="text" name="digitabdleft" value="${shoulderexamdetails.digitabdleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"value="${shoulderexamdetails.digitabdright}" name="digitabdright">/5&nbsp;&nbsp;(Digit abd/add)	</td><td><td>&nbsp;(2+/5 is Normal)</td></td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="130"><input type="checkbox" name="overhead"  <c:if test="${shoulderexamdetails.overhead=='Overhead Activities'}"> <c:out value="checked=checked"></c:out></c:if> value="Overhead Activities">Overhead Activities</td><td width="68"><input type="checkbox"  <c:if test="${shoulderexamdetails.lifting=='Lifting'}"> <c:out value="checked=checked"></c:out></c:if> name="lifting" value="Lifting"> Lifting</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')" <c:if test="${shoulderexamdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if>>Other</td><td><input type="text" name="otherdefict" id="otherdefict" value="${shoulderexamdetails.otherdefict}" style="display:none "></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments">${shoulderexamdetails.comments}</textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option  <c:if test="${shoulderexamdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>  >Excellent</option> 
                 <option <c:if test="${shoulderexamdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>> Good</option>  
                  <option <c:if test="${shoulderexamdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>> Fair</option> 
                    <option <c:if test="${shoulderexamdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1" value="${shoulderexamdetails.diagnosis1}"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderexamdetails.diagnosis2}" name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderexamdetails.diagnosis3}" name="diagnosis3"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderexamdetails.diagnosis4}" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5" value="${shoulderexamdetails.diagnosis5}"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" value="${shoulderexamdetails.times}" name="times">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" value="${shoulderexamdetails.weeks}" name="weeks">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox"  <c:if test="${shoulderexamdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if> name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic"  <c:if test="${shoulderexamdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if> value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy"   <c:if test="${shoulderexamdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if> value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox"  <c:if test="${shoulderexamdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>  name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities"   <c:if test="${shoulderexamdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if> value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation"  <c:if test="${shoulderexamdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>  value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep"  <c:if test="${shoulderexamdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>  value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic"   <c:if test="${shoulderexamdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if> value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri"   <c:if test="${shoulderexamdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if> value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan"  <c:if test="${shoulderexamdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if> value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction"  <c:if test="${shoulderexamdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>  value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg"  <c:if test="${shoulderexamdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if> value="EMG"	>EMG</td> <td width="150"><input type="checkbox"   <c:if test="${shoulderexamdetails.outsiderefferal=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if> name="outsiderefferal" value="Outside Referral">Outside Referral</td><td><input type="checkbox"  <c:if test="${shoulderexamdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>  name="dc" value="D/C">D/C</td>
           </tr>   
            <tr height="10"></tr>
           <tr><td width="95"></td><td width="160">
           <input type="checkbox" id="others" name="others" <c:if test="${shoulderexamdetails.others=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" value="${shoulderexamdetails.othervalue}" id="othervalue" style="display:none ">
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderexamdetails.signature}" name="signature"><span class="err"><form:errors path="shoulderexamdetails.signature"></form:errors></div>
           
         
         <table align="right"><tr><td><input type="submit" value="Save" class="submit_btn"></td><td> <a href="viewshoulderexamdetails" style="color: white" class="submit_btn">Cancel</a></td></tr></table>
         
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            