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
<script>
$(function() {
	$("#pname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

$(function() {
	$("#datepicker").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#muscle").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#swelling").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#note").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#comments").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#diagnosis1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#diagnosis2").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#diagnosis3").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#diagnosis4").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#diagnosis5").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#times").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#weeks").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#othervalue").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#sign").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
</script>
<script>
  var currentTab=0;
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
  
  
  </script>
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}


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
  function checkValid(e)
  {
	  document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
		
		else if(document.getElementById("pname").value.length<=4 && document.getElementById("pname").value.length<=32)
		{
		document.getElementById("pnameerror").innerHTML="Name should be length of 4 to 32";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
		 else if(document.getElementById("pname").value!="")
		 {
		  document.getElementById("pnameerror").innerHTML="";
		  document.getElementById("btnvisible1").style.visibility="hidden";
		 //document.getElementById("btnNext").style.display="block";
		  document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
		 //document.getElementById("btnNext").style.visibility="visible";
		 }
		
		document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
		}
  	else if(document.getElementById("datepicker").value!="")
		 {
		  document.getElementById("datepickererror").innerHTML="";
		  document.getElementById("btnvisible1").style.visibility="hidden";
		 //document.getElementById("btnNext").style.display="block";
		  document.getElementById("tblbtn").innerHTML="<input type='button' style='visibility: visible;' id='btnNext' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";		 
		 //document.getElementById("btnNext").style.visibility="visible";
		 }
	
  	
  }

  
  
  </script>         
   <!-- <script>

	function checkSubmit()
	{
document.getElementById("pnameerror").innerHTML=" ";
		
		if(document.getElementById("pname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("pnameerror").innerHTML="";
	    if(document.getElementById("pname").value.length<4 || document.getElementById("pname").value.length>=32)
	    {
	    	
	    	document.getElementById("pnameerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	document.getElementById("datepickererror").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker").value.match(datechk)==null)
	    {
	    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
	    	
	        return false;
	    }	
		document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("signerror").innerHTML="";
    if(document.getElementById("sign").value.length<4 || document.getElementById("sign").value.length>=32)
    {
    	
    	document.getElementById("signerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }	
	
	}
	</script>
	 -->
	 <script>
	function checkSubmit1(){
		
		document.getElementById("datepickererror").innerHTML="";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			if(document.getElementById("datepicker").value.match(datechk)==null)
		    {
		    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
		    	
		        return false;
		    }	
	document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("signerror").innerHTML="";
	    if(document.getElementById("sign").value.length<4 || document.getElementById("sign").value.length>=32)
	    {
	    	
	    	document.getElementById("signerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	
	
	
	}
	
	</script>        
<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
    
    <script>
	function check(id,e,value){
   
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(id){
   
    var fieldVal = document.getElementById(id).value;
    
    if(fieldVal >=0 && fieldVal <=5){
        return true;
    }
    else
    {
        var str = document.getElementById(id).value;
       
        str = str.substring(0, str.length - 1);
    document.getElementById(id).value = str;
    }
     
    }
	</script>
</head>
<body>
<br><br>
<div id="tabs" >
  <ul>
    <li><a href="#tabs-1">1</a></li>
    <li><a href="#tabs-2" onclick="return checkSubmit('this');">2</a></li>    
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
           <tr><td width="130"><span class="err">*</span>&nbsp;&nbsp;Patient Name:</td>
           <td width="200"><input type="hidden" value="${shoulderexamdetails.shoulderexamno}" name="shoulderexamno"><input type="text" value="${shoulderexamdetails.pname}" name="pname" id="pname" onInput="return validatename(id)";><br><span class="err" id="pnameerror"><form:errors path="shoulderexamdetails.pname"></form:errors></td><td width="630"></td>
           <td width="50"><span class="err">*</span>&nbsp;&nbsp;Date:&nbsp;</td> <td width="200"><input type="text"  value="${shoulderexamdetails.date}" name="date" id="datepicker"><br><span class="err" id="datepickererror"><form:errors path="shoulderexamdetails.date"></form:errors></td>
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
           <td><input type="text" name="muscle" id="muscle" value="${shoulderexamdetails.muscle}" onInput="return validatename(id)";></td><td width="48"></td>
             <td width="130">Swelling  / Discoloration</td>
             <td width="40"><input type="text" name="swelling" id="swelling" value="${shoulderexamdetails.swelling}" onInput="return validatename(id)";></td>
           
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
<td><textarea rows="5" cols="50" name="note" id="note" onInput="return validatename(id)";>${shoulderexamdetails.note}</textarea></td>	
	
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
         <tr><td>Flexion:</td><td>180</td><td><input type="text" size="5" value="${shoulderexamdetails.flexionleft}" name="flexionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.flexionright}" name="flexionright" onkeypress="return validate(event)"></td><td width="210"></td><td>Empty Can:</td><td width="200"></td><td><input size="5" type="text" onkeypress="return validate(event)" value="${shoulderexamdetails.emptycanleft}" name="emptycanleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.emptycanright}" name="emptycanright"></td></tr>
         <tr><td>Extension:</td><td>50</td><td><input size="5" type="text" value="${shoulderexamdetails.extensionright}" name="extensionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderexamdetails.extensionleft}" name="extensionright" onkeypress="return validate(event)"></td><td width="90"></td><td>Impingement Sign:</td><td width="150"></td><td><input type="text"  size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.impingementsignleft}" name="impingementsignleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.impingementsignright}" name="impingementsignright"></td></tr>
         <tr><td>Abduction:</td><td>180</td><td><input size="5" type="text" value="${shoulderexamdetails.abductionleft}" name="abductionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5" type="text" value="${shoulderexamdetails.abductionright}" name="abductionright" onkeypress="return validate(event)"></td><td width="90"></td><td>Apley's Scratch:</td><td width="150"></td><td><input type="text" size="5"  onkeypress="return validate(event)" value="${shoulderexamdetails.apleysscratchleft}" name="apleysscratchleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" onkeypress="return validate(event)" value="${shoulderexamdetails.apleysscratchright}" name="apleysscratchright"></td></tr>
         <tr><td>Adduction:</td><td>50</td><td><input size="5" type="text" value="${shoulderexamdetails.adductionleft}" name="adductionleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.adductionright}" name="adductionright" onkeypress="return validate(event)"></td><td width="90"></td><td>Subacrominal Push:</td><td width="150"></td><td><input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.subacrominalpushleft}"  name="subacrominalpushleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" onkeypress="return validate(event)"value="${shoulderexamdetails.subacrominalpushright}"   name="subacrominalpushright"></td></tr></tr>
         <tr><td>Internal Rotation:</td><td>90</td><td><input type="text" size="5"  value="${shoulderexamdetails.internalrotationleft}" name="internalrotationleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderexamdetails.internalrotationright}" name="internalrotationright" onkeypress="return validate(event)"><td width="90"></td><td>Dawbarn's:</td><td width="150"></td><td><input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.dawbarnsleft}"  name="dawbarnsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.dawbarnsright}" name="dawbarnsright"></td></td></tr>
         <tr><td>External Rotation:	</td><td>90</td><td><input type="text" size="5"  value="${shoulderexamdetails.externalrotationleft}" name="externalrotationleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" name="externalrotationright" value="${shoulderexamdetails.externalrotationright}" onkeypress="return validate(event)"></td><td width="90"></td><td>Yergason's:</td><td width="150"></td><td><input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.yergasonsleft}" name="yergasonsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" onkeypress="return validate(event)" value="${shoulderexamdetails.yergasonsright}" name="yergasonsright"></td></tr>
          <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Codman's:</td><td width="150"></td><td><input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.codmansleft}" name="codmansleft">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.codmansright}"  name="codmansright"></td></tr>
         <tr><td></td><td></td><td>&nbsp;&nbsp;</td><td width="90"></td><td>Apprehension:</td><td width="150"></td><td><input type="text" size="5"  name="apprehensionleft" onkeypress="return validate(event)" value="${shoulderexamdetails.apprehensionleft}" >&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="5" onkeypress="return validate(event)" value="${shoulderexamdetails.apprehensionright}" name="apprehensionright"></td></tr>
         <tr><td id="tblbtn"><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></td></tr>
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
           
           <tr><td>C5</td><td><input size="5" type="text"  value="${shoulderexamdetails.latdeltoidleft}" name="latdeltoidleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.latdeltoidright}" name="latdeltoidright" onkeypress="return validate(event)">&nbsp;&nbsp;(Lat deltoid)</td><td>C5</td><td><input type="text" name="shdleft" id="shdleft" value="${shoulderexamdetails.shdleft}" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 50px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1" type="text"  value="${shoulderexamdetails.shdright}"name="shdright" id="shdright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 54px; ">/5&nbsp;&nbsp;(Shd ABD)</td><td>C5</td><td><input type="text" name="bicepsleft" id="bicepsleft" value="${shoulderexamdetails.bicepsleft}" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 53px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderexamdetails.bicepsright}" name="bicepsright" id="bicepsright" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 55px; ">/5&nbsp;&nbsp;(Biceps)</td></tr>
           <tr><td>C6</td><td><input type="text" name="latarmleft" value="${shoulderexamdetails.latarmleft}" size="5" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text" value="${shoulderexamdetails.latarmright}" name="latarmright" onkeypress="return validate(event)">&nbsp;&nbsp;(Lat arm/hand)</td><td>C6</td><td><input type="text" name="elbflexleft" id="elbflexleft" value="${shoulderexamdetails.elbflexleft}" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 49px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1" type="text"  value="${shoulderexamdetails.elbflexright}" name="elbflexright" id="elbflexright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 52px; ">/5&nbsp;&nbsp;(Elb flex/wrist ext)</td><td>C6</td><td><input type="text" name="brachioradleft" id="brachioradleft" value="${shoulderexamdetails.brachioradleft}"  maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 51px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderexamdetails.brachioradright}" name="brachioradright" id="brachioradright" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 58px; ">/5&nbsp;&nbsp;(Brachiorad)</td></tr>
           <tr><td>C7</td><td><input type="text" size="5" value="${shoulderexamdetails.thirdleft}" name="thirdleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input  size="5"type="text"  value="${shoulderexamdetails.thirdright}" name="thirdright" onkeypress="return validate(event)">&nbsp;&nbsp;(3rd digit)</td><td>C7</td><td><input type="text" value="${shoulderexamdetails.elbextleft}"  name="elbextleft" id="elbextleft" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 49px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1" type="text" value="${shoulderexamdetails.elbextright}" name="elbextright" id="elbextright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 51px; ">/5&nbsp;&nbsp;(Elb ext/wrist flex)</td><td>C7</td><td><input type="text" value="${shoulderexamdetails.tricepsleft}" name="tricepsleft" id="tricepsleft" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 49px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1" type="text" value="${shoulderexamdetails.tricepsright}" name="tricepsright" id="tricepsright"  onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 55px; ">/5&nbsp;&nbsp;(Triceps)</td></tr>
            <tr><td>C8</td><td><input type="text" size="5" value="${shoulderexamdetails.medforearmleft}" name="medforearmleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Med fo<input type="text" size="5" value="${shoulderexamdetails.medforearmright}" name="medforearmright" onkeypress="return validate(event)">rearm/hand)</td><td>C8</td><td><input type="text" name="digitflexionleft"  id="digitflexionleft" value="${shoulderexamdetails.digitflexionleft}" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 48px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input maxlength="1"   value="${shoulderexamdetails.digitflexionright}" type="text" name="digitflexionright" id="digitflexionright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 49px; ">/5&nbsp;&nbsp;(Digit flexion)</td><td></td></tr>
            <tr><td>T1</td><td><input size="5" type="text" value="${shoulderexamdetails.medelbowleft}"  name="medelbowleft" onkeypress="return validate(event)">&nbsp;&nbsp;&nbsp;&nbsp;<input size="5" type="text"  value="${shoulderexamdetails.medelbowright}" name="medelbowright" onkeypress="return validate(event)">&nbsp;&nbsp;(Med elbow/arm)</td><td>T1</td><td><input type="text" name="digitabdleft" id="digitabdleft" value="${shoulderexamdetails.digitabdleft}"  maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 54px; ">/5&nbsp;&nbsp;&nbsp;&nbsp;<input  maxlength="1" type="text"value="${shoulderexamdetails.digitabdright}" name="digitabdright" id="digitabdright" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 46px; ">/5&nbsp;&nbsp;(Digit abd/add)	</td><td><td>&nbsp;(2+/5 is Normal)</td></td></tr>
           <tr><td></td><td>(""-"" is Normal)			</td><td></td><td>	(5/5 is Normal)</td><td></td><td></td></tr>
           
           
           </table>
           </br>
           <table width="100%">
           <tr><td width="350"><b style="font-size:14px">FUNCTIONAL DEFICIT:	</b></td><td width="130"><input type="checkbox" name="overhead"  <c:if test="${shoulderexamdetails.overhead=='Overhead Activities'}"> <c:out value="checked=checked"></c:out></c:if> value="Overhead Activities">Overhead Activities</td><td width="68"><input type="checkbox"  <c:if test="${shoulderexamdetails.lifting=='Lifting'}"> <c:out value="checked=checked"></c:out></c:if> name="lifting" value="Lifting"> Lifting</td><td><input type="checkbox" id="other" name="other" value="other"  onclick="visible('this.value')" <c:if test="${shoulderexamdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if>>Other</td><td><input type="text" name="otherdefict" id="otherdefict" value="${shoulderexamdetails.otherdefict}" style="display:none " onInput="return validatename(id)";></td><td width="300"></td></tr>
           
           </table>
           <table>
           <tr><td width="350"><b style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:  </b></td>
           <td><textarea rows="5" cols="50" name="comments" id="comments" onInput="return validatename(id)";>${shoulderexamdetails.comments}</textarea>   </td></tr>
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
           <tr><td width="400"><b style="font-size:14px">DIAGNOSIS:	</b></td><td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis1" id="diagnosis1" value="${shoulderexamdetails.diagnosis1}" onInput="return validatename(id)";></td><td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderexamdetails.diagnosis2}" name="diagnosis2" id="diagnosis2" onInput="return validatename(id)";></td><td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderexamdetails.diagnosis3}" name="diagnosis3" id="diagnosis3" onInput="return validatename(id)";></td><td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text"  value="${shoulderexamdetails.diagnosis4}" name="diagnosis4" id="diagnosis4" onInput="return validatename(id)";></td></tr>
           <tr height="10"></tr>
           <tr><td></td><td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text" name="diagnosis5" id="diagnosis5" value="${shoulderexamdetails.diagnosis5}" onInput="return validatename(id)";></td></tr>
           </table>
           </br>
           <div><b style="font-size:14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" value="${shoulderexamdetails.times}" name="times" id="times" onInput="return validatename(id)";>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text" value="${shoulderexamdetails.weeks}" name="weeks" id="weeks" onInput="return validatename(id)";>&nbsp;&nbsp;&nbsp;&nbsp; weeks to address the above functional & structural deficits.  Treatment will consist of the following:</div>
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
           <input type="checkbox" id="others" name="others" <c:if test="${shoulderexamdetails.others=='other'}"> <c:out value="checked=checked"></c:out></c:if> value="other" onclick="othervisible('this.value')">Other</td><td><input type="text" name="othervalue" value="${shoulderexamdetails.othervalue}" id="othervalue" style="display:none " onInput="return validatename(id)";>
           </td></tr>   
                      
           </table>
           </br>
           <div><B style="font-size:14px"><span class="err">*</span>&nbsp;&nbsp;PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${shoulderexamdetails.signature}" name="signature" id="sign" onInput="return validatename(id)";><span class="err" id="signerror"><form:errors path="shoulderexamdetails.signature"></form:errors></div>
           
         
         <table align="right"><tr><td><input type="submit" value="update" class="submit_btn" onclick="return checkSubmit1('this');"></td><td> <a href="viewshoulderexamdetails" style="color: white" class="submit_btn" onclick="myclose()">Cancel</a></td></tr></table>
         <script>
 function myclose()
 {
	 window.close();
 }
 </script>
         </div></td></tr></table></div></div></div>
         
         
         
       
	
			                 
	
	
	
	
	
	  </form>
	  
	  </div>
				                
				                
				                
				                
				                  
				                   </body>
				                   </html>
				                   
	      
	            
	            