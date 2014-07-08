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
    	$("#notes").on("keypress", function(e) {
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
    $(function() {
    	$("#break4").on("keypress", function(e) {
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
			
	
	}
	</script> -->
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
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
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
<form action="updatethoracicexam" method="POST" name="thoracicexam">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>THORACIC REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
         <c:set value="${thoracicexamForm.thoracicexam[0]}" var="thoracicexam"/>    
 <tr class="row1">
 <input type="hidden" name="thoracicexamid" id="inp_id" value="${thoracicexam.thoracicexamid}">
<td><h2><span class="err">*</span>&nbsp;&nbsp;Patient Name:</h2></td><td><input type="text"  name="pname" id="pname" value="${thoracicexam.pname}" onInput="return validatename(id)";/><br><span class="err" id="pnameerror"><form:errors path="Thoracicexam.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">*</span>&nbsp;&nbsp;Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${thoracicexam.date}"/><br><span class="err" id="datepickererror"><form:errors path="Thoracicexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Muscle Symmetry: </td><td><input type="text" name="muscle" id="muscle" value="${thoracicexam.muscle}" onInput="return validatename(id)";></td> 
 <td>Swelling / Discoloration: </td> 
 <td><input type="text" name="swelling" id="swelling" value="${thoracicexam.swelling}" onInput="return validatename(id)";></td>
 </tr>
 <tr class="row1">
 <td width="200">Asymmetries (High Side Marked):</td>
  <td>Acromion: </td><td><input type="radio" name="acromion" value="Left" <c:if test="${thoracicexam.acromion=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="acromion" value="Right" <c:if test="${thoracicexam.acromion=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Inferior Pole of Scapula:</td>
 <td><input type="radio" name="inferior" value="Left" <c:if test="${thoracicexam.inferior=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="inferior" value="Right" <c:if test="${thoracicexam.inferior=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"></td>
  <td>Iliac Crest: </td><td><input type="radio" name="iliac" value="Left" <c:if test="${thoracicexam.iliac=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="iliac" value="Right" <c:if test="${thoracicexam.iliac=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Rib Humping:</td>
 <td><input type="radio" name="ribhumping" value="Left" <c:if test="${thoracicexam.ribhumping=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="ribhumping" value="Right" <c:if test="${thoracicexam.ribhumping=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${thoracicexam.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
  <td></td>
 </tr>
  
 <tr class="row1">
 <td>Rectus Abdominis:</td><td width="100"><input type="radio" name="rectus" value="Left" <c:if test="${thoracicexam.rectus=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="rectus" value="Right" <c:if test="${thoracicexam.rectus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Obliques:</td><td width="200"><input type="radio" name="obliques" value="Left" <c:if test="${thoracicexam.obliques=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="obliques" value="Right" <c:if test="${thoracicexam.obliques=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Levator Scapulae:</td><td width="100"><input type="radio" name="levator" value="Left" <c:if test="${thoracicexam.levator=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="levator" value="Right" <c:if test="${thoracicexam.levator=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Serratus Anterior:</td><td><input type="radio" name="serratus" value="Left" <c:if test="${thoracicexam.serratus=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="serratus" value="Right" <c:if test="${thoracicexam.serratus=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Pectoralis Major:</td><td width="200"><input type="radio" name="pectoralis" value="Left" <c:if test="${thoracicexam.pectoralis=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="pectoralis" value="Right" <c:if test="${thoracicexam.pectoralis=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Trapezius:	</td><td><input type="radio" name="trapezius" value="Left" <c:if test="${thoracicexam.trapezius=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="trapezius" value="Right" <c:if test="${thoracicexam.trapezius=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Rhomboids:</td><td><input type="radio" name="rhomboids" value="Left" <c:if test="${thoracicexam.rhomboids=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="rhomboids" value="Right" <c:if test="${thoracicexam.rhomboids=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Pectoralis Minor:	</td><td><input type="radio" name="pectoralisminor" value="Left" <c:if test="${thoracicexam.pectoralisminor=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="pectoralisminor" value="Right" <c:if test="${thoracicexam.pectoralisminor=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Paraspinals:</td><td><input type="radio" name="paraspinals" value="Left" <c:if test="${thoracicexam.paraspinals=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="paraspinals" value="Right" <c:if test="${thoracicexam.paraspinals=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes" id="othernotes" value="${thoracicexam.othernotes}" onInput="return validatename(id)";></td> 
 <td width="150">
 <td></td><td style="width: 203px; "></td>
 <td width="150">
 <td></td>
 </tr>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="200"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${thoracicexam.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable </td> 
 <td width="250"><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td width="150"><input type="radio" name="subluxation" value="Unremarkable" <c:if test="${thoracicexam.subluxation=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td> 
 <td width="250"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${thoracicexam.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td>
 </tr>
  <tr class="row1">
 <td style="width: 173px; ">  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="250"> </td> 
 <td>  </td><td style="width: 180px; ">   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td style="width: 111px; "><b>Flexion:</b> </td><td> (20-40)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7" value="${thoracicexam.flexion}" onkeypress="return validate(event)"></td> 
 <td width="100">T1-2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t12" size="7" value="${thoracicexam.t12}" onkeypress="return validate(event)"></td><td width="250" style="width: 165px; ">T2-3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t23" size="7" onkeypress="return validate(event)" value="${thoracicexam.t23 }"> </td> 
 <td style="width: 166px; "><b>Adam's Sign:	</b> </td><td><input type="text" name="adamsignl" size="5" value="${thoracicexam.adamsignl}" onkeypress="return validate(event)"> <input type="text" name="adamsignr" size="5" value="${thoracicexam.adamsignr}" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (25-45)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7" value="${thoracicexam.extension}" onkeypress="return validate(event)"></td> 
 <td width="100" style="width: 169px; ">T3-4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t34" size="7" value="${thoracicexam.t34}" onkeypress="return validate(event)"></td><td width="50">T4-5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t45" size="7" onkeypress="return validate(event)" value="${thoracicexam.t45}"> </td> 
 <td><b>Schepelman's:	</b> </td><td><input type="text" name="schepelmanl" size="5" value="${thoracicexam.schepelmanl}" onkeypress="return validate(event)"> <input type="text" name="schepelmanr" size="5" value="${thoracicexam.schepelmanr}" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td style="width: 124px; "><b>Lateral Flexion:</b> </td><td> (20-40)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7" value="${thoracicexam.lflexion}" onkeypress="return validate(event)"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7" value="${thoracicexam.rflexion}" onkeypress="return validate(event)"></td> 
 <td width="100" style="width: 174px; ">T5-6:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t56" size="7" value="${thoracicexam.t56}" onkeypress="return validate(event)"></td><td width="50" style="width: 173px; ">	T6-7:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="t67" size="7" onkeypress="return validate(event)" value="${thoracicexam.t67}"> </td> 
 <td><b>Valsalva:</b> </td><td><input type="text" name="valsalval" size="5" value="${thoracicexam.valsalval}" onkeypress="return validate(event)"> <input type="text" name="valsalvar" size="5" value="${thoracicexam.valsalvar}" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (35-50)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7" value="${thoracicexam.lrotation}" onkeypress="return validate(event)"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7" value="${thoracicexam.rrotation}" onkeypress="return validate(event)"></td> 
 <td width="100">T7-8:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="text" name="t78" size="7" value="${thoracicexam.t78}" onkeypress="return validate(event)"></td><td width="50">T8-9:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t89" size="7" onkeypress="return validate(event)" value="${thoracicexam.t89}"> </td> 
 <td><b>Dejerine's Triad:</b> </td><td><input type="text" name="dejerinel" size="5" value="${thoracicexam.dejerinel}" onkeypress="return validate(event)"> <input type="text" name="dejeriner" size="5" value="${thoracicexam.dejeriner}" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td width="100">T9-10:&nbsp;&nbsp;&nbsp;<input type="text" name="t910" size="7" value="${thoracicexam.t910}" onkeypress="return validate(event)"></td><td width="50">T10-11:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t1011" size="7" onkeypress="return validate(event)" value="${thoracicexam.t1011}"> </td> 
 <td><b>Soto Hall:	</b> </td><td><input type="text" name="sotohalll" size="5" value="${thoracicexam.sotohalll}" onkeypress="return validate(event)"> <input type="text" name="sotohallr" size="5" value="${thoracicexam.sotohallr}" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td> </td><td> </td> 
 <td width="100">T11-12: &nbsp;<input type="text" name="t1112" size="7" value="${thoracicexam.t1112}" onkeypress="return validate(event)"></td><td width="50">	T12-L1:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t12l1" size="7" onkeypress="return validate(event)" value="${thoracicexam.t12l1}"> </td> 
 <td><b>Sternal Compression:</b> </td><td><input type="text" name="sternall" size="5" value="${thoracicexam.sternall}" onkeypress="return validate(event)"> <input type="text" name="sternalr" size="5" value="${thoracicexam.sternalr}" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
 <td></td><td> </td> 
 <td><b>Beevor's Sign:	</b> </td><td><input type="text" name="beevorl" size="5" value="${thoracicexam.beevorl}" onkeypress="return validate(event)"> <input type="text" name="beevorr" size="5" value="${thoracicexam.beevorr}" onkeypress="return validate(event)"> </td>
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
	            <center> <h2>THORACIC REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
 <td></td><td></td><td></td>
 </tr>
 <tr class="row1">
 <td> Notes</td>
 <td><textarea name="notes" id="notes" rows='5' cols='40' onInput="return validatename(id)";> ${thoracicexam.notes}</textarea></td>
 <td width="110">Intercostal:</td>
 <td><select name="intercostal" id="intercostal"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="T1" <c:if test="${thoracicexam.intercostal=='T1'}"><c:out value="Selected"/></c:if>  >T1</option>
					<option value="T2" <c:if test="${thoracicexam.intercostal=='T2'}"><c:out value="Selected"/></c:if>>T2</option>
					<option value="T3" <c:if test="${thoracicexam.intercostal=='T3'}"><c:out value="Selected"/></c:if>>T3</option>
					<option value="T4" <c:if test="${thoracicexam.intercostal=='T4'}"><c:out value="Selected"/></c:if>>T4</option>
					<option value="T5" <c:if test="${thoracicexam.intercostal=='T5'}"><c:out value="Selected"/></c:if>>T5</option>
					<option value="T6" <c:if test="${thoracicexam.intercostal=='T6'}"><c:out value="Selected"/></c:if>>T6</option>
					<option value="T7" <c:if test="${thoracicexam.intercostal=='T7'}"><c:out value="Selected"/></c:if>>T7</option>
					<option value="T8" <c:if test="${thoracicexam.intercostal=='T8'}"><c:out value="Selected"/></c:if>>T8</option>
					<option value="T9" <c:if test="${thoracicexam.intercostal=='T9'}"><c:out value="Selected"/></c:if>>T9</option>
					<option value="T10" <c:if test="${thoracicexam.intercostal=='T10'}"><c:out value="Selected"/></c:if>>T10</option>
					<option value="T11" <c:if test="${thoracicexam.intercostal=='T11'}"><c:out value="Selected"/></c:if>>T11</option>
					<option value="T12" <c:if test="${thoracicexam.intercostal=='T12'}"><c:out value="Selected"/></c:if>>T12</option>
					</select> </td>
 <td width="110"> </td>
 <td> </td> 
 </tr>
 </table>
<table>         
 <tr class="row1">
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td><input type="checkbox" name="sitting" value="Sitting" <c:if test="${thoracicexam.sitting=='Sitting'}"><c:out value="Checked"/></c:if>>Sitting 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing" <c:if test="${thoracicexam.standing=='Standing'}"><c:out value="Checked"/></c:if>>Standing</td>
 <td width="150"><input type="checkbox" name="driving" value="Driving" <c:if test="${thoracicexam.driving=='Driving'}"><c:out value="Checked"/></c:if>>Driving</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other" onclick="visible(this.value)" <c:if test="${thoracicexam.otherfunctional=='Other'}"><c:out value="Checked"/></c:if>>Other&nbsp; </td>
 <td width="250"><input type="text" class="input_txtbx1" id="break3" name="break_text3" style="display:none" value="${thoracicexam.break_text3 }" onInput="return validatename(id)";/></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" id="assessment" rows='5' cols='40' onInput="return validatename(id)";>${thoracicexam.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${thoracicexam.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if>  >Excellent</option>
					<option value="Good" <c:if test="${thoracicexam.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${thoracicexam.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${thoracicexam.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" id="diagnosis1" value="${thoracicexam.diagnosis1}" onInput="return validatename(id)";></td>
 <td width="250">2)<input type="text" name="diagnosis2" id="diagnosis2" value="${thoracicexam.diagnosis2 }" onInput="return validatename(id)";></td>
 <td width="250">3)<input type="text" name="diagnosis3" id="diagnosis3" value="${thoracicexam.diagnosis3 }" onInput="return validatename(id)";></td>
 <td width="250">4)<input type="text" name="diagnosis4" id="diagnosis4" value="${thoracicexam.diagnosis4 }" onInput="return validatename(id)";></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" id="diagnosis5" value="${thoracicexam.diagnosis5}" onInput="return validatename(id)";></td>
 <td width="250">6)<input type="text" name="diagnosis6" id="diagnosis6" value="${thoracicexam.diagnosis6 }" onInput="return validatename(id)";></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" id="times" value="${thoracicexam.times}" onInput="return validatename(id)";>Times/week for </td>
 <td><input type="text" name="week" id="week" value="${thoracicexam.week}" onInput="return validatename(id)";>weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression" <c:if test="${thoracicexam.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic" <c:if test="${thoracicexam.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy" <c:if test="${thoracicexam.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing" <c:if test="${thoracicexam.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities" <c:if test="${thoracicexam.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation" <c:if test="${thoracicexam.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP" <c:if test="${thoracicexam.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray" <c:if test="${thoracicexam.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI" <c:if test="${thoracicexam.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan" <c:if test="${thoracicexam.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction" <c:if test="${thoracicexam.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG" <c:if test="${thoracicexam.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral" <c:if test="${thoracicexam.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C" <c:if test="${thoracicexam.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" id="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)" <c:if test="${thoracicexam.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="display:none" value="${thoracicexam.break_text4}" onInput="return validatename(id)";/></td>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>&nbsp;&nbsp;PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" id="sign" value="${thoracicexam.sign}" onInput="return validatename(id)";><br><span class="err" id="signerror"><form:errors path="Thoracicexam.sign"></form:errors></span></B></td></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="update" onclick="return checkSubmit1('this');"></td>
<td><input type="reset" class="submit_btn" value="Cancel" onclick="myclose()"> </td>
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