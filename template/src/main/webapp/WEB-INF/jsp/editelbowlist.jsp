<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
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
		$("#othernotes").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
  $(function() {
		$("#othernotes").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
  $(function() {
		$("#assessment").on("keypress", function(e) {
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
		$("#diagnosis6").on("keypress", function(e) {
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
		$("#week").on("keypress", function(e) {
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
  $(function() {
		$("#break3").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
  $(function() {
		$("#break4").on("keypress", function(e) {
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
  <script>
  function validatename(id){
	    var textInput = document.getElementById(id).value;
	    textInput = textInput.replace(/[^A-Za-z ]/g, "");
	    document.getElementById(id).value = textInput;
	}
  
  </script>
   <script>
$(function() {
   //$( "#draggable" ).draggable({ revert: "not valid" });
   
   $(window).load(function(){	   
    });
    $('input:checkbox[name=otherfunctional]').each(function() 
		{    
		   if($(this).is(':checked'))
		   var other=$(this).val();
		      if(other=="Other")
		   {
		   document.getElementById("break3").style.display="block";
		   }
		   else
		   {
			   document.getElementById("break3").style.display="none";
		   }  
		});
    
    $('input:checkbox[name=otheraddress]').each(function() 
    		{    
    		   if($(this).is(':checked'))
    		   var other=$(this).val();  
    		      if(other=="Other")
    		   {
    		   document.getElementById("break4").style.display="block";
    		   }
    		   else
    		   {
    			   document.getElementById("break4").style.display="none";
    		   }  
    		});
});
</script>
<script>
function visible(val)
{

if(document.getElementById('otherfunctional').checked)
{
var element=document.getElementById('break3');
element.style.display='block';
}
else
{
var element=document.getElementById('break3');
element.style.display='none';
}

if(document.getElementById('otheraddress').checked)
{
var element=document.getElementById('break4');
element.style.display='block';
}
else
{
var element=document.getElementById('break4');
element.style.display='none';
}
}
</script>
  
   
   <script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('other1');
 if(val=='other')
   element.style.display='block';
 else  
   element.style.display='none';
}
function Checksymptom(val){
 var element=document.getElementById('other2');
 if(val=='other')
  element.style.display='block';
 else  
  element.style.display='none';
	}
</script >
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });

</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
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
		
		else if(document.getElementById("pname").value.length<4 && document.getElementById("pname").value.length<=32)
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
			
	
	}
	</script> -->
	<!-- <script>
	function checkSubmit1()
	{
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
	</script> -->
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
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2" onclick="return checkSubmit('this');">2</a></li>          
       </ul>
         
   <div id="tabs-1"> 
 <div id="right_content">
<form action="updateelbowexam" method="POST" name="elbowexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>ELBOW REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           <c:set value="${elbowexamForm.elbowexam[0]}" var="elbowexam"/>
 <tr class="row1">
 <input type="hidden" name="elbowexamid" id="inp_id" value="${elbowexam.elbowexamid}">
<td><h2><span class="err">*</span>&nbsp;&nbsp;Patient Name:</h2></td><td><input type="text" id="pname" name="pname" value="${elbowexam.pname}" onInput="return validatename(id)";/><br><span class="err" id="pnameerror"><form:errors path="Elbowexam.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>&nbsp;&nbsp;Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${elbowexam.date}"/><br><span class="err" id="datepickererror"><form:errors path="Elbowexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td width="500"><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Muscle Symmetry:</td><td><input type="text" name="muscle" id="muscle" value="${elbowexam.muscle}" onInput="return validatename(id)";></td> 
 <td width="150">Swelling / Discoloration:</td> 
 <td><input type="text" name="swelling" id="swelling" value="${elbowexam.swelling}" onInput="return validatename(id)";></td>
 </tr>
 <tr class="row1">
 <td>Dominant Hand: </td> <td><input type="radio" name="dominanthand" value="Left" <c:if test="${elbowexam.dominanthand=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="dominanthand" value="Right" <c:if test="${elbowexam.dominanthand=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
  <td></td>
 <td></td>
 <td><input type="text" style="visibility:hidden"> </td> 
 <td> <input type="text" style="visibility:hidden"></td>
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${elbowexam.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Biceps Brachii:</td><td width="100"><input type="radio" name="biceps" value="Left" <c:if test="${elbowexam.biceps=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="biceps" value="Right" <c:if test="${elbowexam.biceps=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Triceps Brachii:</td><td><input type="radio" name="triceps" value="Left" <c:if test="${elbowexam.triceps=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="triceps" value="Right" <c:if test="${elbowexam.triceps=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 <td>Common Flexors:</td><td width="200"><input type="radio" name="common" value="Left" <c:if test="${elbowexam.common=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="common" value="Right" <c:if test="${elbowexam.common=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Pronator Teres:</td><td width="200"><input type="radio" name="pronator" value="Left" <c:if test="${elbowexam.pronator=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="pronator" value="Right" <c:if test="${elbowexam.pronator=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
  <td>Anconeus:</td><td width="200"><input type="radio" name="anconeus" value="Left" <c:if test="${elbowexam.anconeus=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="anconeus" value="Right" <c:if test="${elbowexam.anconeus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
  <td>Common Extensors:</td><td width="200"><input type="radio" name="commonextensors" value="Left" <c:if test="${elbowexam.commonextensors=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="commonextensors" value="Right" <c:if test="${elbowexam.commonextensors=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes" id="othernotes" value="${elbowexam.othernotes }" onInput="return validatename(id)";></td> 
 <td></td><td></td>
 <td></td><td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${elbowexam.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable </td> 
 <td width="250"></td>
 <td width="300"><B style="font-size:14px">ORTHOPEDIC TESTING </B></td><td width="300"><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${elbowexam.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td>
 </tr>
  <tr class="row1">
 <td></td><td width="50"> <b>Normal</b> </td><td><b> Actual</b></td>  
 <td></td><td><b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (150)</td><td>&nbsp;L <input type="text" name="flexionl" size="7" value="${elbowexam.flexionl }" onkeypress="return validate(event)"><br/><br/>R <input type="text" name="flexionr" size="7" value="${elbowexam.flexionr }" onkeypress="return validate(event)"></td>  
 <td><b>Golfer's Elbow (MCL):</b> </td><td><input type="text" name="mcll" size="5" value="${elbowexam.mcll }" onkeypress="return validate(event)"> <input type="text" name="mclr" size="5" value="${elbowexam.mclr }" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (o) </td><td> &nbsp;L<input type="text" name="extensionl" size="7" value="${elbowexam.extensionl }" onkeypress="return validate(event)"> <br/><br/>R <input type="text" name="extensionr" size="7" value="${elbowexam.extensionr }" onkeypress="return validate(event)"></td>  
 <td><b>Tennis Elbow (LCL):	</b> </td><td><input type="text" name="lcll" size="5" value="${elbowexam.lcll }" onkeypress="return validate(event)"> <input type="text" name="lclr" size="5" value="${elbowexam.lclr }" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td><b>Pronation:	</b> </td><td> (90)</td><td>L &nbsp;<input type="text" name="pronationl" size="7" value="${elbowexam.pronationl }" onkeypress="return validate(event)"><br/><br/>R <input type="text" name="pronationr" size="7" value="${elbowexam.pronationr}" onkeypress="return validate(event)"></td>  
 <td><b>Varus Stress (LCL):</b> </td><td><input type="text" name="varusl" size="5" value="${elbowexam.varusl }" onkeypress="return validate(event)"> <input type="text" name="varusr" size="5" value="${elbowexam.varusr }" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
  <td><b> Supination:</b> </td><td> (90)</td><td>L &nbsp;<input type="text" name="suppinationl" size="7" value="${elbowexam.suppinationl}" onkeypress="return validate(event)"><br/><br/>R <input type="text" name="suppinationr" size="7" 
          
	            
   
value="${elbowexam.suppinationr}" onkeypress="return validate(event)"></td>  
 <td><b>Valgus Stress (MCL):</b> </td><td><input type="text" name="mcl1l" size="5" value="${elbowexam.mcl1l }" onkeypress="return validate(event)"> <input type="text" name="mcl1r" size="5" value="${elbowexam.mcl1r }" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td> 	</td><td> </td>  
 <td></td>
 <td><b>Tinnel's:	</b> </td><td><input type="text" name="tinnelsl" size="5" value="${elbowexam.tinnelsl }" onkeypress="return validate(event)"> <input type="text" name="tinnelsr" size="5" value="${elbowexam.tinnelsr }" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td></td><td></td>  
 <td></td>
 <td><b>ULTT:	</b> </td><td><input type="text" name="ulttl" size="5" value="${elbowexam.ulttl }" onkeypress="return validate(event)"> <input type="text" name="ulttr" size="5" value="${elbowexam.ulttr }" onkeypress="return validate(event)"></td>
 </tr>
 <tr><td id="tblbtn"><input type="button" id="btnNext" class="submit_btn" value="Next" onmouseover="checkValid(event);"/></td></tr>
 </table>
 
</div>
</td>
</tr>
</table>
</div>
</div>
<div id="tabs-2"> 
 <div id="right_content">
<form action="soapnotes" method="POST" name="soapnotes">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>ELBOW REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable" <c:if test="${elbowexam.neurologicaltest=='Neurological Testing Unremarkable'}"><c:out value="Checked"/></c:if>>Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td><b>Level</b> </td>
 <td><b> Sensory</b></td>
 <td width="110"><b>Level</b></td>
 <td> <b>Motor / Strength</b></td>
 <td width="110"><b>Level</b> </td>
 <td> <b>Reflexes(Muscle Spindles)</td> 
 </tr>
 <tr class="row1">
 <td></td>
 <td>Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Right</td>
 <td> </td>
 <td> Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Right</td>
 <td> </td>
 <td> Left &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Right</td>
 </tr>
 <tr class="row1">
 <td>C5</td>
 <td><input type="text" name="c5l" size="5" value="${elbowexam.c5l}" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="c5r" size="5"  value="${elbowexam.c5r}" onkeypress="return validate(event)">&nbsp;(Lat deltoid)</td>
 <td>C5 </td>
 <td> <input type="text" name="c51l" id="c51l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1"  value="${elbowexam.c51l}" style="width: 49px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c51r" id="c51r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1"  value="${elbowexam.c51r}" style="width: 49px; ">&nbsp;/5&nbsp;(Shd ABD)</td>
 <td> C5</td>
 <td> <input type="text" name="c53l" id="c53l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c53l}" style="width: 53px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c53r" id="c53r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c53r}" style="width: 47px; ">&nbsp;/5&nbsp;(Biceps)</td>
 
 </tr>
 <tr class="row1">
 <td>C6</td>
 <td><input type="text" name="c6l" size="5" value="${elbowexam.c6l}" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="c6r" size="5" value="${elbowexam.c6r}" onkeypress="return validate(event)">&nbsp;(Lat arm/hand)	</td>
 <td>C6 </td>
 <td> <input type="text" name="c61l" id="c61l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c61l}" style="width: 48px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c61r" id="c61r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c61r}" style="width: 49px; ">&nbsp;/5&nbsp;(Elb flex/wrist ext)	</td>
  <td>C6 </td>
 <td><input type="text" name="c63l" id="c63l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c63l}" style="width: 52px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c63r" id="c63r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c63r}" style="width: 48px; ">&nbsp;/5&nbsp;(Brachiorad.) </td>

 </tr>
 <tr class="row1">
 <td>C7</td>
 <td><input type="text" name="c7l" size="5" value="${elbowexam.c7l}" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="c7r" size="5" onkeypress="return validate(event)" value="${elbowexam.c7r}">&nbsp;(3rd digit)</td>
 <td>C7 </td>
 <td> <input type="text" name="c71l" id="c71l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c71l}" style="width: 49px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c71r" id="c71r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c71r}" style="width: 49px; ">&nbsp;/5&nbsp;(Elb ext/wrist flex)</td>
 <td> C7</td>
 <td> <input type="text" name="c73l" maxlength="1" id="c73l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" value="${elbowexam.c73l}" style="width: 52px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c73r" id="c73r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c73r}" style="width: 46px; ">&nbsp;/5&nbsp;(Triceps)</td>
 </tr>
 <tr class="row1">
 <td>C8</td>
 <td><input type="text" name="c8l" size="5" onkeypress="return validate(event)" value="${elbowexam.c8l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c8r"  onkeypress="return validate(event)" size="5" value="${elbowexam.c8r}">&nbsp;(Med forearm/hand)	</td>
 <td>C8 </td>
 <td> <input type="text" name="c81l" id="c81l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c81l}" style="width: 50px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c81r" id="c81r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.c53l}" style="width: 48px; ">&nbsp;/5&nbsp;(Digit flexion)</td>
 <td></td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>T1</td>
 <td><input type="text" name="t1l" size="5" onkeypress="return validate(event)" value="${elbowexam.t1l}">&nbsp; &nbsp; &nbsp;<input type="text" name="t1r" onkeypress="return validate(event)" size="5" value="${elbowexam.t1r}">&nbsp;(Med elbow/arm)	</td>
 <td>T1 </td>
 <td><input type="text" name="t11l"  id="t11l" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.t11l}" style="width: 48px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="t11r" id="t11r" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" maxlength="1" value="${elbowexam.t11r}" style="width: 49px; ">&nbsp;/5&nbsp; (Digit abd/add)</td>
 <td> </td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td></td>
 <td>("-" is Normal)</td>
 <td> </td>
 <td> (5/5 is Normal)</td>
 <td> </td>
 <td> (2+/5 is Normal)</td>
 </tr>
 </table>
<table>         
 <tr class="row1">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td>
 <td width="150"><input type="checkbox" name="overheadactivities" value="Overhead Activities" <c:if test="${elbowexam.overheadactivities=='Overhead Activities'}"><c:out value="Checked"/></c:if>>Overhead Activities &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="lifting" value="Lifting" <c:if test="${elbowexam.lifting=='Lifting'}"><c:out value="Checked"/></c:if>>Lifting</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other" onclick="visible(this.value)" <c:if test="${elbowexam.otherfunctional=='Other'}"><c:out value="Checked"/></c:if> >Other&nbsp;</td>
 <td> <input type="text" id="break3" name="break_text3" style="display:none" value="${elbowexam.break_text3}" /></td>
 <td width="150"></td>
 <td width="150"></td>
 </tr>          
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" id="assessment" rows='5' cols='40' onInput="return validatename(id)";>${elbowexam.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${elbowexam.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if>  >Excellent</option>
					<option value="Good" <c:if test="${elbowexam.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${elbowexam.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${elbowexam.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" id="diagnosis1" value="${elbowexam.diagnosis1}" onInput="return validatename(id)";></td>
 <td width="250">2)<input type="text" name="diagnosis2" id="diagnosis2" value="${elbowexam.diagnosis2 }" onInput="return validatename(id)";></td>
 <td width="250">3)<input type="text" name="diagnosis3" id="diagnosis3" value="${elbowexam.diagnosis3 }" onInput="return validatename(id)";></td>
 <td width="250">4)<input type="text" name="diagnosis4" id="diagnosis4" value="${elbowexam.diagnosis4 }" onInput="return validatename(id)";></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" id="diagnosis5" value="${elbowexam.diagnosis5}" onInput="return validatename(id)";></td>
 <td width="250">6)<input type="text" name="diagnosis6" id="diagnosis6" value="${elbowexam.diagnosis6 }" onInput="return validatename(id)";></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" id="times" value="${elbowexam.times}" onInput="return validatename(id)";>Times/week for </td>
 <td><input type="text" name="week" id="week" value="${elbowexam.week}" onInput="return validatename(id)";>weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression" <c:if test="${elbowexam.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic" <c:if test="${elbowexam.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy" <c:if test="${elbowexam.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing" <c:if test="${elbowexam.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities" <c:if test="${elbowexam.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation" <c:if test="${elbowexam.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP" <c:if test="${elbowexam.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray" <c:if test="${elbowexam.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI" <c:if test="${elbowexam.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan" <c:if test="${elbowexam.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction" <c:if test="${elbowexam.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG" <c:if test="${elbowexam.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral" <c:if test="${elbowexam.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C" <c:if test="${elbowexam.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" name="otheraddress" id="otheraddress" value="Other" onclick="visible(this.value)"<c:if test="${elbowexam.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="display:none" value="${elbowexam.break_text4}" onInput="return validatename(id)";/></td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>&nbsp;&nbsp;PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" id="sign" value="${elbowexam.sign}" onInput="return validatename(id)";></B><br><span class="err" id="signerror"><form:errors path="Elbowexam.sign"></form:errors></span></td></tr></table>
<table align="right">
<tr>
<td><input type="button" id="btnPrevious" class="submit_btn" name="Previous1" value="Previous" /></td>
<td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit1('this');"></td>
<td><input type="reset" class="submit_btn" value="Cancel" onclick="myclose()"></td>
<script>
 function myclose()
 {
	 window.close();
 }
 </script>
</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>