<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <script src="js/jquery-1.4.4.js"></script>
    <script src="js/jquery.ui.core.js"></script>
    <script src="js/jquery.ui.widget.js"></script>
    <script src="js/jquery.ui.mouse.js"></script>
    <script src="js/jquery.ui.draggable.js"></script>
    <script src="js/jquery.ui.droppable.js"></script>
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>

<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

<script>
$(function() {
    //$( "#draggable" ).draggable({ revert: "not valid" });
    
    $(window).load(function(){
    var leftvalue=$('#shortlegleft').val();
    var rightvalue=$('#shortlegright').val();
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
   
    $('input:checkbox[name=shortlegleft]').each(function() 
{    
    if($(this).is(':checked'))
    var left=$(this).val();     
       if(left=="left")
    {
    document.getElementById("shortlegleft").style.display="block";
    }
    else
    {document.getElementById("shortlegleft").style.display="none";
    }  
});
  
   $('input:checkbox[name=shortlegright]').each(function() 
{    
    if($(this).is(':checked'))
    var right=$(this).val();     
       if(right=="right")
    {
    document.getElementById("shortlegright").style.display="block";
    }
    else
    {document.getElementById("shortlegright").style.display="none";
    }  
});
  
    
    if(leftvalue=="other")
    {
    document.getElementById("legother").style.display="block";
    }
    else
    {document.getElementById("legother").style.display="none";
    }
    if(rightvalue=="other")
    {
    document.getElementById("legother1").style.display="block";
    }
    else
    {document.getElementById("legother1").style.display="none";
    }
    
    });
    });

</script>
<script type="text/javascript">


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
	     
<form action="updatehipexam" method="POST">  
	      <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>
	            HIP	REEXAM</h2></center><br/>
	            
	            </div>
	           
	    
	     <div class="contentbox">
	     	<c:set value="${hipexamform.hipexamdetails[0]}" var="hipexamdetails"/> 
          <table cellpadding="0" cellspacing="0" border="0" >
           <tr><td width="130"><span class="err">*</span>Patient Name:</td>
          
          
           <td><input type="hidden" value="${hipexamdetails.hipexamno}" name="hipexamno"><input type="text" name="pname" value="${hipexamdetails.pname}"><br><span class="err"><form:errors path="hipexamdetails.pname"></form:errors></td><td width="480"></td>
           <td ><span class="err">*</span>Date:&nbsp;</td> <td><input type="text" name="date" id="datepicker" value="${hipexamdetails.date}"><br><span class="err"><form:errors path="hipexamdetails.date"></form:errors></td>
           </tr>
            </table>
            </br>
           <div ><b style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION </b></div>
           </br>
           <table >
           <tr><td>Gait:&nbsp;</td><td width="30"></td>  <td><select style="width:178"  name="gait"><option <c:if test="${hipexamdetails.gait=='normal'}"></c:if> <c:out value="selected"></c:out>>normal</option>
           <option <c:if test="${hipexamdetails.gait=='antalogic'}"></c:if> <c:out value="selected"></c:out>>antalogic</option>
           <option <c:if test="${hipexamdetails.gait=='shuffling'}"></c:if> <c:out value="selected"></c:out>>shuffling</option>
           <option <c:if test="${hipexamdetails.gait=='limp'}"></c:if> <c:out value="selected"></c:out>>limp</option>
           <option <c:if test="${hipexamdetails.gait=='stagger'}"></c:if> <c:out value="selected"></c:out>>stagger</option>
           <option <c:if test="${hipexamdetails.gait=='cane assisted'}"></c:if> <c:out value="selected"></c:out>>cane assisted</option>
           <option <c:if test="${hipexamdetails.gait=='wheelchair'}"></c:if> <c:out value="selected"></c:out>>wheelchair</option></select></td>
          
           
            
           
           </tr>
<tr height="10"></tr>
           <tr>
           <td>Pelvic Unleveling:</td><td></td>
           <td><select name="pelvic">
           <option <c:if test="${hipexamdetails.pelvic=='none'}"></c:if> <c:out value="selected"></c:out>>none</option>
           <option<c:if test="${hipexamdetails.pelvic=='superior illiac crest right'}"></c:if> <c:out value="selected"></c:out>>superior illiac crest right</option>
           <option <c:if test="${hipexamdetails.pelvic=='superior iliac crest left'}"></c:if> <c:out value="selected"></c:out>>superior iliac crest left</option></select></td>
             <td width="80"></td>
           
           
           <td width="80">A & O</td><td><select name="ao" ><option <c:if test="${hipexamdetails.ao=='excellent'}"></c:if> <c:out value="selected"></c:out>>excellent</option>
           <option <c:if test="${hipexamdetails.ao=='good'}"></c:if> <c:out value="selected"></c:out>> good</option>
           <option <c:if test="${hipexamdetails.ao=='fair'}"></c:if> <c:out value="selected"></c:out>> fair</option>
           <option <c:if test="${hipexamdetails.ao=='severe'}"></c:if> <c:out value="selected"></c:out>> severe</option></select></td>
           </tr>  
           </table> 
           </br>           
         
          <table  style="border:10">      
         <tr><td> <b style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION
 </b></td>
         <td width="100"></td>
         <td align="left"><input type="checkbox" value="All Soft Tissue Unremarkable" <c:if test="${hipexamdetails.dysfunction=='All Soft Tissue Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> onclick="softtissuevalidate()" name="dysfunction" >All Soft Tissue Unremarkable</td>
         <td width="180"></td>
          </tr>  </table>       
<br>
<table id="softtissue" >	
	<tr><td  width="300">Leg Length Discrepancy:  Short Leg-  </td>

	<td ><input type="checkbox" id="leftvalue"  <c:if test="${hipexamdetails.shortlegleft=='left'}"> <c:out value="checked=checked"></c:out></c:if> onclick="shortlegvalidate(this.value)" name="shortlegleft" value="left">&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td><select  id="shortlegleft" style="display: none"name="shortlegleftvalue" onchange='Checksymptom(this.value)'>	
	<option value="1/8"  <c:if test="${hipexamdetails.shortlegleftvalue=='1/8'}"> <c:out value="selected"></c:out></c:if>>1/8</option>
	<option  value="1/4"<c:if test="${hipexamdetails.shortlegleftvalue=='1/4'}"><c:out value="selected"></c:out></c:if>>1/4</option>
	<option  value="3/8"<c:if test="${hipexamdetails.shortlegleftvalue=='3/8'}"> <c:out value="selected"></c:out></c:if>>3/8</option>
	<option  value="1/2"<c:if test="${hipexamdetails.shortlegleftvalue=='1/2'}"> <c:out value="selected"></c:out></c:if>>1/2</option>
	<option  value="5/8"<c:if test="${hipexamdetails.shortlegleftvalue=='5/8'}"> <c:out value="selected"></c:out></c:if>>5/8</option>
	<option  value="3/4"<c:if test="${hipexamdetails.shortlegleftvalue=='3/4'}"> <c:out value="selected"></c:out></c:if>>3/4</option>
	<option  value="7/8"<c:if test="${hipexamdetails.shortlegleftvalue=='7/8'}"> <c:out value="selected"></c:out></c:if>>7/8</option>
	<option  value="1"<c:if test="${hipexamdetails.shortlegleftvalue=='1'}"> <c:out value="selected"></c:out></c:if>>1</option>
	<option  value="other"<c:if test="${hipexamdetails.shortlegleftvalue=='other'}"><c:out value="selected"></c:out></c:if>>other</option>
	</select></td><td align="right"><input type="text" size="9" value="${hipexamdetails.shortlegleftother}" name="shortlegleftother" id="legother" style="display: none"  ></td>
	<td width="112"></td>
	<td>
	<input type="checkbox" id="shortlegcheck" name="shortlegright" onclick= "shortlegvalidate1(this.value)" value="right"  <c:if test="${hipexamdetails.shortlegright=='right'}"></c:if> <c:out value="checked=checked"></c:out>>&nbsp;&nbsp;Right &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<td><select  id="shortlegright" style="display: none"  name="shortlegrightvalue" onchange='Checksymptom1(this.value)'>	
	<option  <c:if test="${hipexamdetails.shortlegrightvalue=='1/8'}"> <c:out value="selected"></c:out></c:if>> 1/8	</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='1/4'}"> <c:out value="selected"></c:out></c:if>> 1/4	</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='3/8'}"> <c:out value="selected"></c:out></c:if>> 3/8	</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='1/2'}"> <c:out value="selected"></c:out></c:if>> 1/2</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='5/8'}"><c:out value="selected"></c:out></c:if>> 5/8	</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='3/4'}"> <c:out value="selected"></c:out></c:if>> 3/4</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='7/8'}"> <c:out value="selected"></c:out></c:if>> 7/8</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='1'}"><c:out value="selected"></c:out></c:if>> 1</option>
	<option <c:if test="${hipexamdetails.shortlegrightvalue=='other'}"> <c:out value="selected"></c:out></c:if>>other</option>
	</select></td>&nbsp;<td><input type="text" id="legother1" value="${hipexamdetails.shortlegrightother}"size="9" name="shortlegrightother" style="display: none" >
	
	</td>
	
	
	
	</tr></table>
	<table id="softtissue1" >
	<tr height="10"></tr>
	<tr ><td width="300"><c:out value="${hipexamdetails.piriformisleft}"></c:out>Piriformis:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  <c:if test="${hipexamdetails.piriformisleft=='left'}"><c:out value="checked"></c:out></c:if> value="left" name="piriformisleft">Left&nbsp;&nbsp;<input type="radio" <c:if test="${hipexamdetails.piriformisleft=='right'}"> <c:out value="checked=checked"></c:out></c:if> value="right" name="piriformisleft">Right</td>
	
	<td width="210">Gluteus Medius:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" <c:if test="${hipexamdetails.gluteusleft=='left'}"> <c:out value="checked"></c:out></c:if> value="left" name="gluteusleft">Left&nbsp;&nbsp;<input <c:if test="${hipexamdetails.gluteusleft=='right'}"> <c:out value="checked"></c:out></c:if> type="radio" name="gluteusleft" value="right">Right</td>
	<td></td>
	<td width="230">Iliopsoas:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="iliopsoasleft"  <c:if test="${hipexamdetails.iliopsoasleft=='left'}"> <c:out value="checked"></c:out></c:if> value="left">Left&nbsp;&nbsp;<input type="radio" <c:if test="${hipexamdetails.iliopsoasleft=='right'}"> <c:out value="checked"></c:out></c:if> name="iliopsoasleft" value="right">Right</td>
	
	<td>Hamstrings:&nbsp;&nbsp;&nbsp;&nbsp;<input <c:if test="${hipexamdetails.hamstringsleft=='left'}"> <c:out value="checked"></c:out></c:if> type="radio" name="hamstringsleft" value="left">Left&nbsp;&nbsp;<input <c:if test="${hipexamdetails.hamstringsleft=='right'}"> <c:out value="checked"></c:out></c:if> type="radio" name="hamstringsleft" value="right">Right</td>
	
	</tr>
	<tr height="10"></tr></table>
	<table id="softtissue2" ><tr><td valign="top">Other / Note:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="5" cols="50" name="note">${hipexamdetails.note}</textarea></td></tr>
	
	</table>	
	</br>
	<table  style="border:10">      
         <tr>
         <td> <b style="font-size:14px">FUNCTIONAL RANGE OF MOTION     </b></td><td width="70"></td>
         <td><input type="checkbox" value="Unremarkable" name="functional" id="functional" <c:if test="${hipexamdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable
         
         </td>
         <td width="120"></td>
         <td> <b style="font-size:14px">ORTHOTPEDIC TESTING    </b></td><td width="70"></td>
         <td><input type="checkbox" name="orthotpedic" <c:if test="${hipexamdetails.orthotpedic=='unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> value="unremarkable">Unremarkable
        
         </td>  </tr></table>
         </br>
         <table >
         <tr>
         <td width="140" valign="top">
         (*  Pain Elicited)	
         </td>   
         <td width="160" valign="top">Normal </td><td align="center">Actual</br></br>
          Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
         </td>
         <td></td> <td></td><td></td> <td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
               
         
         </tr>
         <tr height="10"></tr>
         <tr><td>Flexion:		</td><td>100</td><td><input type="text" size="5" value="${hipexamdetails.flexionleft}"name="flexionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipexamdetails.flexionright}" size="5" type="text" name="flexionright"></td><td width="90"></td><td>Patrick Fabere:	</td><td width="150"></td><td><input size="5" type="text"  name="fabereleft" value="${hipexamdetails.fabereleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.fabereleft}" size="5" name="fabereright"></td></tr>
         <tr><td>Extension:			</td><td>30</td><td><input size="5" type="text"  value="${hipexamdetails.extensionleft}" name="extensionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipexamdetails.extensionright}" size="5" type="text" name="extensionright"></td><td width="90"></td><td>Nachlas:</td><td width="150"></td><td><input type="text"  size="5" name="nachlasleft" value="${hipexamdetails.nachlasleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.nachlasright}" size="5"  name="nachlasright"></td></tr>
         <tr><td>Abduction:				</td><td>45</td><td><input size="5" type="text" name="abductionleft" value="${hipexamdetails.abductionright}">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipexamdetails.abductionleft}"  size="5" type="text" name="abductionright"></td><td width="90"></td><td>Ely's:</td><td width="150"></td><td><input type="text" size="5"  name="elysleft" value="${hipexamdetails.elysleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipexamdetails.elysright}" size="5" type="text"  name="elysright"></td></tr>
         <tr><td>Adduction:				</td><td>30</td><td><input size="5" type="text" value="${hipexamdetails.adductionleft}" name="adductionleft">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipexamdetails.adductionright}" size="5" type="text" name="adductionright"></td><td width="90"></td><td>Yeoman's:</td><td width="150"></td><td><input type="text" size="5" value="${hipexamdetails.yeomansleft}" name="yeomansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.yeomansright}" name="yeomansright"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>40</td><td><input type="text" size="5" name="internalrotationleft" value="${hipexamdetails.internalrotationleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.internalrotationright}" name="internalrotationright"><td width="90"></td><td>Ober's:	</td><td width="150"></td><td><input type="text" size="5" value="${hipexamdetails.obersleft}" name="obersleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  value="${hipexamdetails.obersright}" type="text" size="5" name="obersright"></td></td></tr>
         <tr><td>External Rotation:</td><td>45</td><td><input type="text" size="5" name="externalrotationleft" value="${hipexamdetails.externalrotationleft}">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.externalrotationright}" name="externalrotationright"></td><td width="90"></td><td>	Hibbs:</td><td width="150"></td><td><input type="text" size="5"  value="${hipexamdetails.hibbsleft}" name="hibbsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  value="${hipexamdetails.hibbsright}"size="5" type="text"  name="hibbsright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Thomas:</td><td width="150"></td><td><input type="text" size="5" value="${hipexamdetails.thomasleft}" name="thomasleft">&nbsp;&nbsp;&nbsp;&nbsp;<input value="${hipexamdetails.thomasright}" type="text" size="5" name="thomasright"></td></tr>
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
	            HIP	REEXAM</h2></center><br/>
	             
	            </div>
          <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" >
             
	    
        <tr>
         <td width="130"><b style="font-size:14px">NEUROLOGICAL</b></td>
         <td width="246"><input type="checkbox"   <c:if test="${hipexamdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if> id=neurologicalunremarkable name="neurological" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td>
         
           </tr></table>
           </br><table id="neurological" ><tr><td width="120"><b>Level</b></td>  <td width="250">  <b> Sensory	</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Motor / Strength		</b></td> <td width="100"><b>Level</b></td>  <td   width="250">  <b> Reflexes</b> (Muscle Spindles)	</td>  </tr>
           <tr height="10"></tr>
          <tr> <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>  <td width="30"></td><td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td> </tr>
          <tr height="10"></tr>
           <tr><td>L1</td><td><input type="text" value="${hipexamdetails.inguinalarealeft}"  size="5" name="inguinalarealeft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.inguinalarearight}" name="inguinalarearight">&nbsp;&nbsp; Inguinal area</td><td>L1</td><td><input size="5" type="text" value="${hipexamdetails.iliopsoasfirstleft}" name="iliopsoasfirstleft">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  size="5" value="${hipexamdetails.iliopsoasfirstright}" name="iliopsoasfirstright">/5&nbsp;&nbsp; Iliopsoas</td><td></td><td></td></tr>
           <tr><td>L2</td><td><input size="5" type="text" value="${hipexamdetails.antleft}" name="antleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" value="${hipexamdetails.antright}" type="text" name="antright">&nbsp;&nbsp;Ant/med thigh</td><td>L2</td><td><input type="text" name="iliopsoas1left" value="${hipexamdetails.iliopsoas1left}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" value="${hipexamdetails.iliopsoas1right}"  type="text" name="iliopsoas1right">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp;(2+/5 is Normal)</td></tr>
           <tr><td>L3</td><td><input type="text" value="${hipexamdetails.kneeleft}" name="kneeleft" size="5">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.kneeright}"  name="kneeright">&nbsp;&nbsp;Medial knee</td><td>L3</td><td><input type="text" name="iliopsoas2left" value="${hipexamdetails.iliopsoas2left}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.iliopsoas2right}"  name="iliopsoas2right">/5&nbsp;&nbsp;Iliopsoas</td><td></td><td>&nbsp; </td></tr>
           <tr><td>L4</td><td><input type="text" size="5" value="${hipexamdetails.medialleft}"  name="medialleft">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  value="${hipexamdetails.medialright}"  name="medialright">&nbsp;&nbsp;Medial leg</td><td>L4</td><td><input type="text"  value="${hipexamdetails.femleft}"  name="femleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.femright}"   name="femright">/5&nbsp;&nbsp;Rectus Fem</td><td>L4</td><td><input type="text" value="${hipexamdetails.patellarleft}"  name="patellarleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.patellarright}"  name="patellarright" size="5">/5&nbsp;&nbsp;Patellar</td></tr>
            <tr><td>L5</td><td><input type="text" size="5" value="${hipexamdetails.latleft}"   name="latleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" name="latright" value="${hipexamdetails.latright}" >&nbsp;&nbsp;Ant/lat leg</td><td>L5</td><td><input type="text" name="medleft"  value="${hipexamdetails.medleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"  type="text" name="medright" value="${hipexamdetails.medright}" >/5&nbsp;&nbsp;Glut Med</td><td>L5</td><td><input type="text" name="hsleft" value="${hipexamdetails.hsleft}"  size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.hsright}"  name="hsright"  size="5">/5&nbsp;&nbsp;Med HS</td></tr>
            <tr><td>S1</td><td><input size="5" type="text" value="${hipexamdetails.plantarleft}"  name="plantarleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.plantarright}"  name="plantarright">&nbsp;&nbsp;Big toe/plantar</td><td>S1</td><td><input type="text"value="${hipexamdetails.maxleft}"  name="maxleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text" value="${hipexamdetails.maxright}"  name="maxright">/5&nbsp;&nbsp;Glut Max</td><td>S1</td><td><input type="text" value="${hipexamdetails.achillesleft}"  name="achillesleft" size="5">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${hipexamdetails.achillesright}" name="achillesright">/5&nbsp;&nbsp;Achilles</td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="100"><input type="checkbox"  <c:if test="${hipexamdetails.walking=='walking'}"> <c:out value="checked=checked"></c:out></c:if> name="walking" value="walking">Walking</td><td width="110"><input type="checkbox" name="standing"  <c:if test="${hipexamdetails.standing=='standing'}"> <c:out value="checked=checked"></c:out></c:if> value="standing"> Standing</td><td width="70"><input type="checkbox" name="stairs"  <c:if test="${hipexamdetails.stairs=='stairs'}"> <c:out value="checked=checked" ></c:out></c:if> value="stairs">Stairs</td><td><input type="checkbox" name="other" id="other" <c:if test="${hipexamdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other"   onclick="visible(this.value)">Other</td><td><input type="text" name="otherdefict" value="${hipexamdetails.otherdefict}" id="otherdefict" style="display:none "></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments">${hipexamdetails.comments}</textarea>   </td></tr>
           <tr height="10"></tr>
           <tr><td>Patient's Status for being a candidate for conservative care:</td>
               <td><select name="patientstatus">
               <option  <c:if test="${hipexamdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>  >Excellent</option> 
                 <option <c:if test="${hipexamdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>> Good</option>  
                  <option <c:if test="${hipexamdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>> Fair</option> 
                    <option <c:if test="${hipexamdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>               
               </select></td></tr>      
                </table>
                </br>
                <table width="100%">
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.diagnosis1}" name="diagnosis1"></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.diagnosis2}" name="diagnosis2"></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis3" value="${hipexamdetails.diagnosis3}"></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.diagnosis4}" name="diagnosis4"></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.diagnosis5}" name="diagnosis5"></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" value="${hipexamdetails.times}" name="times">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text"  value="${hipexamdetails.weeks}" name="weeks">&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
           </br>
           <table><tr><td width="95"></td><td width="160"><input type="checkbox"  <c:if test="${hipexamdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if> name="spinaldecompression" value="Spinal Decompression">Spinal Decompression</td><td width="100"><input type="checkbox" name="chiropractic"  <c:if test="${hipexamdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if> value="Chiropractic">Chiropractic</td>
           <td width="150"><input type="checkbox" name="physicaltherapy"   <c:if test="${hipexamdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if> value="Physical Therapy">Physical Therapy</td><td width="150"><input type="checkbox"  <c:if test="${hipexamdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>  name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
           <td width="150"><input type="checkbox" name="modalities"   <c:if test="${hipexamdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if> value="Modalities">Modalities</td> <td width="150"><input type="checkbox" name="supplementation"  <c:if test="${hipexamdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>  value="Supplementation">Supplementation	</td><td><input type="checkbox" name="hep"  <c:if test="${hipexamdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>  value="HEP">HEP</td>
           </tr>
           <tr height="10"></tr>
           <tr><td width="95"></td><td width="160"><input type="checkbox" name="radiographic"   <c:if test="${hipexamdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if> value="Radiographic X-Ray">Radiographic X-Ray</td><td width="100"><input type="checkbox" name="mri"   <c:if test="${hipexamdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if> value="MRI">MRI</td>
           <td width="150"><input type="checkbox" name="scan"  <c:if test="${hipexamdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if> value="CT Scan">CT Scan</td><td width="150"><input type="checkbox" name="conduction"  <c:if test="${hipexamdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>  value="Nerve Conduction">Nerve Conduction</td>
           <td width="150"><input type="checkbox" name="emg"  <c:if test="${hipexamdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if> value="EMG"	>EMG	</td> <td width="150"><input type="checkbox"   <c:if test="${hipexamdetails.outsidereferral=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if> name="outsidereferral" value="Outside Referral">Outside Referral 	</td><td><input type="checkbox"  <c:if test="${hipexamdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>  name="dc" value="D/C">D/C</td>
           </tr>         
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${hipexamdetails.signature }" name="signature"><span class="err"><form:errors path="hipexamdetails.signature"></form:errors></div>
           
         
         <table align="right"><tr><td><input type="submit" value="Save" class="submit_btn"></td><td> <a href="viewhipexam" style="color: white" class="submit_btn">Cancel</a></td></tr></table>
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            