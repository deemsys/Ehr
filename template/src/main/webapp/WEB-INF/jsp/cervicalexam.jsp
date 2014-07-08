<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    	$("#headposture").on("keypress", function(e) {
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
    	$("#sign").on("keypress", function(e) {
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
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
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
/* document.getElementById("pnameerror").innerHTML=" ";
		
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
		} */
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
	function checkSubmit1()
	{
	
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
    //Check Charater
    	
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(id){
   
    var fieldVal = document.getElementById(id).value;
    //Suppose u want 3 number of character
    if(fieldVal <=5){
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
 
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
        <form action="cervicalexam" method="POST" name="cervical">
        <input type="hidden" name="username" value="${username}">
         <c:choose>
            <c:when test="${empty cervical}">
   <div id="tabs-1"> 
 <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            <div class="headings altheading">
	           <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>CERVICAL INITIAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td style="width: 354px; "><h4><span class="err">*</span>&nbsp;&nbsp;Patient Name:</h4></td><td style="width: 199px; "><input type="text"  name="pname" id="pname" onInput="return validatename(id)";/><span class="err" id="pnameerror"><form:errors path="Cervicalexam.pname"></form:errors></span></td>
<td width="600" style="width: 303px; ">
<td><h4><span class="err">*</span>&nbsp;&nbsp;Date:</h4></td><td><input type="text"  id="datepicker" name="date" /><span class="err" id="datepickererror"><form:errors path="Cervicalexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td style="width: 180px; "></td>
 <td></td>
 <td style="width: 152px; "></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Muscle Symmetry:</td><td><input type="text" name="muscle" id="muscle" onInput="return validatename(id)";></td> 
 <td width="150">Swelling / Discoloration:</td> 
 <td><input type="text" name="swelling" id="swelling" onInput="return validatename(id)";></td>
 </tr>
 <tr class="row1">
 <td width="200">Forward Head Posture:</td><td><input type="text" name="headposture" id="headposture" onInput="return validatename(id)";></td> 
 <td>Rounded Shoulders: </td> <td><input type="radio" name="roundshoulder" value="Left">Left <input type="radio" name="roundshoulder" value="Right">Right</td>
  <td>A & O: </td>
 <td><select name="ao" id="ao"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="excellent" >Excellent</option>
					<option value="good">Good</option>
					<option value="fair">Fair</option>
					<option value="severe">Severe</option>
					</select></td> 
 
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable"> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 </tr>
  <tr class="row1">
 <td>Sub-Occipital:</td><td width="100" style="width: 176px; "><input type="radio" name="suboccipital" value="Left">Left <input type="radio" name="suboccipital" value="Right">Right</td> 
 
 <td>Scalenes:</td><td width="200"><input type="radio" name="scalenes" value="Left">Left  <input type="radio" name="scalenes" value="Right">Right</td> 
 
 <td style="width: 169px; ">Levator Scapulae:</td><td width="100" style="width: 130px; "><input type="radio" name="levator" value="Left">Left <input type="radio" name="levator" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Teres Minor:</td><td><input type="radio" name="teresminor" value="Left">Left  <input type="radio" name="teresminor" value="Right">Right</td> 
 <td>Teres Major:</td><td width="200"><input type="radio" name="teresmajor" value="Left">Left  <input type="radio" name="teresmajor" value="Right">Right</td> 
 <td>Rhomboids:</td><td><input type="radio" name="rhomboids" value="Left">Left <input type="radio" name="rhomboids" value="Right">Right</td>
 </tr>
 <tr class="row1">
 <td>Trapezius:</td><td><input type="radio" name="trapezius" value="Left">Left  <input type="radio" name="trapezius" value="Right">Right</td> 
 <td>Pectoralis Minor:	</td><td><input type="radio" name="pectoralis" value="Left">Left <input type="radio" name="pectoralis" value="Right">Right</td> 
 <td>Paraspinals:</td><td><input type="radio" name="paraspinals" value="Left">Left <input type="radio" name="paraspinals" value="Right">Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes" id="othernotes" onInput="return validatename(id)";></td> 
 <td></td><td></td>
 <td></td><td></td>
 </tr>
 <tr class="row1">
 <td width="250" style="width: 126px; "><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150" style="width: 121px; "><input type="radio" name="functionalrangeofmotion" value="Unremarkable">Unremarkable</td> 
 <td width="280" style="width: 395px; "><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td style="width: 82px; "><input type="radio" name="subluxation" value="Unremarkable">Unremarkable</td> 
 <td width="180" style="width: 106px; "><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td width="150" style="width: 464px; "><input type="radio" name="orthopedic" value="Unremarkable">Unremarkable</td>
 </tr>
  <tr class="row1">
 <td style="width: 145px; ">  </td><td style="width: 116px; "> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td style="width: 349px; "></td><td width="150" style="width: 67px; "> </td> 
 <td style="width: 130px; ">  </td><td style="width: 270px; ">   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td style="width: 98px; "><b>Flexion:</b> </td><td style="width: 129px; "> (50)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7" onkeypress="return validate(event)"></td> 
 <td width="100" style="width: 467px; ">C0-1: <input type="text" name="c01" size="7" onkeypress="return validate(event)" style="width: 64px; "> C1-2:<input type="text" name="c12" size="7" onkeypress="return validate(event)" style="width: 64px; "></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C2-3: &nbsp;&nbsp;<input type="text" name="c23" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>Hautant's:	</b> </td><td><input type="text" name="hautantl" size="5" onkeypress="return validate(event)"> <input type="text" name="hautantr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (60)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7" onkeypress="return validate(event)"></td> 
 <td width="100">C3-4:<input type="text" name="c34" size="7" onkeypress="return validate(event)"  style="width: 64px; "> C4-5:<input type="text" name="c45" size="7" onkeypress="return validate(event)" style="width: 64px; "></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C5-6: &nbsp;&nbsp;<input type="text" name="c56" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>Foraminal Comp:	</b> </td><td><input type="text" name="foraminall" size="5" onkeypress="return validate(event)"> <input type="text" name="foraminalr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (45)&nbsp;&nbsp;L&nbsp; <input type="text" name="lflexion" size="7" onkeypress="return validate(event)"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R&nbsp; <input type="text" name="rflexion" size="7" onkeypress="return validate(event)"></td> 
 <td width="100">C6-7:<input type="text" name="c67" size="7" onkeypress="return validate(event)"  style="width: 64px; ">C7-T1:<input type="text" name="c7t1" size="7" onkeypress="return validate(event)" style="width: 64px; "></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T1-2: &nbsp;&nbsp;<input type="text" name="t12" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>Soto Hall:	</b> </td><td><input type="text" name="sotohalll" size="5" onkeypress="return validate(event)"> <input type="text" name="sotohallr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (80)&nbsp;&nbsp;L&nbsp; <input type="text" name="lrotation" size="7" onkeypress="return validate(event)"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R&nbsp; <input type="text" name="rrotation" size="7" onkeypress="return validate(event)"></td> 
 <td width="100">T2-3:<input type="text" name="t23" size="7" onkeypress="return validate(event)" style="width: 64px; ">&nbsp;T3-4:<input type="text" name="t34" size="7" onkeypress="return validate(event)" style="width: 64px; "></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T4-5: &nbsp;&nbsp;<input type="text" name="t45" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>Adson's:</b> </td><td><input type="text" name="adsonsl" size="5" onkeypress="return validate(event)"> <input type="text" name="adsonsr" size="5" onkeypress="return validate(event)"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
<td width="100">T5-6: <input type="text" name="t56" size="7" onkeypress="return validate(event)" style="width: 64px; ">&nbsp;T6-7:<input type="text" name="t67" size="7" onkeypress="return validate(event)" style="width: 64px; "></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T7-8: &nbsp;&nbsp;<input type="text" name="t78" size="7" onkeypress="return validate(event)"> </td> 
 <td><b>ULTT:	</b> </td><td><input type="text" name="ulttl" size="5" onkeypress="return validate(event)"> <input type="text" name="ulttr" size="5" onkeypress="return validate(event)"></td>
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
 <div id="block2">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print1" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block2');" >
	            <center> <h2>CERVICAL INITIAL EXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td style="width: 366px; "><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable">Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
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
 <td><input type="text" name="c5l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="c5r" size="5" onkeypress="return validate(event)">&nbsp;(Lat deltoid)</td>
 <td>C5 </td>
 <td> <input type="text" name="c51l" ID="C51L" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 51px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c51r" ID="c51r" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 49px; ">&nbsp;/5&nbsp;(Shd ABD)</td>
 <td> C5</td>
 <td> <input type="text" name="c53l" id="c53l" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 52px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c53r" id="c53r" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 48px; ">&nbsp;/5&nbsp;(Biceps)</td>
 
 </tr>
 <tr class="row1">
 <td>C6</td>
 <td><input type="text" name="c6l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="c6r" size="5" onkeypress="return validate(event)">&nbsp;(Lat arm/hand)	</td>
 <td>C6 </td>
 <td> <input type="text" name="c61l" id="c61l" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 53px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c61r" id="c61r"  maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 48px; ">&nbsp;/5&nbsp;(Elb flex/wrist ext)	</td>
  <td>C6 </td>
 <td><input type="text" name="c63l" id="c63l" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 50px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c63r" id="c63r" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 51px; ">&nbsp;/5&nbsp;(Brachiorad.) </td>

 </tr>
 <tr class="row1">
 <td>C7</td>
 <td><input type="text" name="c7l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="c7r" size="5" onkeypress="return validate(event)">&nbsp;(3rd digit)</td>
 <td>C7 </td>
 <td> <input type="text" name="c71l" id="c71l" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 56px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c71r" id="c71r" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 47px; ">&nbsp;/5&nbsp;(Elb ext/wrist flex)</td>
 <td> C7</td>
 <td> <input type="text" name="c73l" id="c73l" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 51px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c73r" id="c73r" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 51px; ">&nbsp;/5&nbsp;(Triceps)</td>
 </tr>
 <tr class="row1">
 <td>C8</td>
 <td><input type="text" name="c8l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="c8r" size="5" onkeypress="return validate(event)">&nbsp;(Med forearm/hand)	</td>
 <td>C8 </td>
 <td> <input type="text" name="c81l" id="c81l" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 55px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c81r" id="c81r" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 51px; ">&nbsp;/5&nbsp;(Digit flexion)</td>
 <td></td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>T1</td>
 <td><input type="text" name="t1l" size="5" onkeypress="return validate(event)">&nbsp; &nbsp; &nbsp;<input type="text" name="t1r" size="5" onkeypress="return validate(event)">&nbsp;(Med elbow/arm)	</td>
 <td>T1 </td> 
 <td><input type="text" name="t11l" id="t11l" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 56px; ">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="t11r" id="t11r" maxlength="1" onKeyPress="return check(id,event,value)" onInput="checkLength(id)" style="width: 49px; ">&nbsp;/5&nbsp; (Digit abd/add)</td>
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
 <td style="height: 64px; "><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td style="height: 39px; "><input type="checkbox" name="sitting" value="Sitting">Sitting &nbsp;<input type="checkbox" name="standing" value="Standing">Standing&nbsp;
<input type="checkbox" name="driving" value="Driving">Driving&nbsp;<input type="checkbox" name="computeruse" value="Computer Use">Computer Use&nbsp;
 <input type="checkbox" name="otherfunctional" value="Other" onclick="this.form.break3.style.visibility = this.checked? 'visible' : 'hidden'">Other&nbsp; </td><td><input type="text"  id="break3" name="break_text3" style="visibility:hidden" onInput="return validatename(id)";/></td>
 </tr>         
 <tr class="row1">
 <td style="width: 400px; "><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" id="assessment" rows='5' cols='40' onInput="return validatename(id)";></textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" >Excellent</option>
					<option value="Good">Good</option>
					<option value="Fair">Fair</option>
					<option value="Poor">Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" id="diagnosis1" onInput="return validatename(id)";></td>
 <td width="250">2)<input type="text" name="diagnosis2" id="diagnosis2" onInput="return validatename(id)";></td>
 <td width="250">3)<input type="text" name="diagnosis3" id="diagnosis3" onInput="return validatename(id)";></td>
 <td width="250">4)<input type="text" name="diagnosis4" id="diagnosis4" onInput="return validatename(id)";></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" id="diagnosis5" onInput="return validatename(id)";></td>
 <td width="250">6)<input type="text" name="diagnosis6" id="diagnosis6" onInput="return validatename(id)";></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" id="times" onInput="return validatename(id)";>Times/week for </td>
 <td><input type="text" name="week" id="week" onInput="return validatename(id)";>weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression">Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic">Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy">Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing">Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities">Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation">Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP">HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray"> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI">MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan">CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction">Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG">EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral">Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C">D/C</td>
 <td width="250"><input type="checkbox" name="otheraddress" value="Other" onclick="this.form.break4.style.visibility = this.checked? 'visible' : 'hidden'">Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="visibility:hidden" onInput="return validatename(id)";/></td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" id="sign" onInput="return validatename(id)";><span class="err" id="signerror"><form:errors path="Cervicalexam.sign"></form:errors></span></B></td></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit1('this');"></td>
<td><input type="reset" class="submit_btn" value="Cancel" id="cancelid" onclick="myclose()"></td>
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
  </td>
  </tr>
  </table>
  </div>
  </div>
  </c:when>
<c:otherwise>
 <div id="tabs-1"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">  
 <tr class="row1">
<td width="150"><h2><span class="err">*</span>Patient Name:</h2></td><td width="380"><input type="text"  name="pname" value="${cervical.pname}" /><span class="err"><form:errors path="Cervicalexam.pname"></form:errors></span></td>
<td width="300">
<td><h2><span class="err">*</span>Date:</h2></td><td width="380"><input type="text"  id="datepicker" name="date" value="${cervical.date}"/><span class="err"><form:errors path="Cervicalexam.date"></form:errors></span></td>
</tr>
</table>
<br/>
<br/>
 <table>
 <tr class="row1">
 <td width="400"><B style="font-size:14px">OBSERVATION / APPEARANCE / MOOD / ORIENTATION</B></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 </tr>
 <tr class="row1">
 <td width="200">Muscle Symmetry:</td><td><input type="text" name="muscle" value="${cervical.muscle}"></td> 
 <td width="150">Swelling / Discoloration:</td> 
 <td><input type="text" name="swelling" value="${cervical.swelling}"></td>
 </tr>
 <tr class="row1">
 <td width="200">Forward Head Posture:</td><td><input type="text" name="headposture" value="${cervical.headposture}"></td> 
 <td>Rounded Shoulders: </td> <td><input type="radio" name="roundshoulder" value="Left" <c:if test="${cervical.roundshoulder=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="roundshoulder" value="Right" <c:if test="${cervical.roundshoulder=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
  <td>A & O: </td>
 <td><select name="ao" id="ao"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="excellent" <c:if test="${cervical.ao=='excellent'}"><c:out value="selected"/></c:if> >Excellent</option>
					<option value="good" <c:if test="${cervical.ao=='good'}"><c:out value="selected"/></c:if>>Good</option>
					<option value="fair" <c:if test="${cervical.ao=='fair'}"><c:out value="selected"/></c:if>>Fair</option>
					<option value="severe" <c:if test="${cervical.ao=='severe'}"><c:out value="selected"/></c:if>>Severe</option>
					</select></td> 
 
 </tr>
 <tr class="row1">
 <td width="200"><B style="font-size:14px">PALPATION / SOFT TISSUE DYSFUNCTION</B></td> 
 <td width="200"><input type="checkbox" name="allsoft" value="All Soft Tissue Unremarkable" <c:if test="${cervical.allsoft=='All Soft Tissue Unremarkable'}"><c:out value="Checked"/></c:if>> All Soft Tissue Unremarkable</td> 
 <!-- <td> <input type="checkbox" name="except" value="Except"> Except </td> -->
 <td></td>
 <td></td> 
 <td></td>
 <td></td>
 </tr>
  <tr class="row1">
 <td>Sub-Occipital:</td><td width="100"><input type="radio" name="suboccipital" value="Left" <c:if test="${cervical.suboccipital=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="suboccipital" value="Right" <c:if test="${cervical.suboccipital=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Scalenes:</td><td width="200"><input type="radio" name="scalenes" value="Left" <c:if test="${cervical.scalenes=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="scalenes" value="Right" <c:if test="${cervical.scalenes=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 
 <td>Levator Scapulae:</td><td width="100"><input type="radio" name="levator" value="Left" <c:if test="${cervical.levator=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="levator" value="Right" <c:if test="${cervical.levator=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Teres Minor:</td><td><input type="radio" name="teresminor" value="Left" <c:if test="${cervical.teresminor=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="teresminor" value="Right" <c:if test="${cervical.teresminor=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Teres Major:</td><td width="200"><input type="radio" name="teresmajor" value="Left" <c:if test="${cervical.teresmajor=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="teresmajor" value="Right" <c:if test="${cervical.teresmajor=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Rhomboids:</td><td><input type="radio" name="rhomboids" value="Left" <c:if test="${cervical.rhomboids=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="rhomboids" value="Right" <c:if test="${cervical.rhomboids=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 <tr class="row1">
 <td>Trapezius:</td><td><input type="radio" name="trapezius" value="Left" <c:if test="${cervical.trapezius=='Left'}"><c:out value="checked=checked"/></c:if>>Left  <input type="radio" name="trapezius" value="Right" <c:if test="${cervical.trapezius=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Pectoralis Minor:	</td><td><input type="radio" name="pectoralis" value="Left" <c:if test="${cervical.pectoralis=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="pectoralis" value="Right" <c:if test="${cervical.pectoralis=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td> 
 <td>Paraspinals:</td><td><input type="radio" name="paraspinals" value="Left" <c:if test="${cervical.paraspinals=='Left'}"><c:out value="checked=checked"/></c:if>>Left <input type="radio" name="paraspinals" value="Right" <c:if test="${cervical.paraspinals=='Right'}"><c:out value="checked=checked"/></c:if>>Right</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td>Other/Notes:<input type="text" name="othernotes" value="${cervical.othernotes}"></td> 
 <td></td><td></td>
 <td></td><td></td>
 </tr>
 <tr class="row1">
 <td width="250"><B style="font-size:14px">FUNCTIONAL RANGE OF MOTION</B> </td><td width="150"><input type="radio" name="functionalrangeofmotion" value="Unremarkable" <c:if test="${cervical.functionalrangeofmotion=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td> 
 <td width="280"><B style="font-size:14px">SUBLUXATION /DYSFUNCTION  </B></td><td><input type="radio" name="subluxation" value="Unremarkable" <c:if test="${cervical.subluxation=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable</td> 
 <td width="150"><B style="font-size:14px">ORTHOTPEDIC TESTING </B></td><td><input type="radio" name="orthopedic" value="Unremarkable" <c:if test="${cervical.orthopedic=='Unremarkable'}"><c:out value="checked=checked"/></c:if>>Unremarkable></B></td>
 </tr>
  <tr class="row1">
 <td>  </td><td> <b>Normal</b> &nbsp;&nbsp;&nbsp;<b> Actual</b></td> 
 <td></td><td width="150"> </td> 
 <td>  </td><td>   <b>Left</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Right</b></td>
 </tr>
  <tr class="row1">
 <td><b>Flexion:</b> </td><td> (50)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="flexion" size="7" value="${cervical.flexion}"></td> 
 <td width="100">C0-1:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c01" size="7" value="${cervical.c01}"> &nbsp;&nbsp;C1-2:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c12" size="7" value="${cervical.c12}"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C2-3: &nbsp;&nbsp;<input type="text" name="c23" size="7" value="${cervical.c23}"> </td> 
 <td><b>Hautant's:	</b> </td><td><input type="text" name="hautantl" size="5" value="${cervical.hautantl}"> <input type="text" name="hautantr" size="5" value="${cervical.hautantr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Extension:	</b> </td><td> (60)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="extension" size="7" value="${cervical.extension}"></td> 
 <td width="100">C3-4:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c34" size="7" value="${cervical.c34}"> &nbsp;&nbsp;C4-5:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c45" size="7" value="${cervical.c45}"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C5-6: &nbsp;&nbsp;<input type="text" name="c56" size="7" value="${cervical.c56}"> </td> 
 <td><b>Foraminal Comp:	</b> </td><td><input type="text" name="foraminall" size="5" value="${cervical.foraminall}"> <input type="text" name="foraminalr" size="5" value="${cervical.foraminalr}"></td>
 </tr>
  <tr class="row1">
 <td><b>Lateral Flexion:</b> </td><td> (45)&nbsp;&nbsp;&nbsp;L <input type="text" name="lflexion" size="7" value="${cervical.lflexion}"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rflexion" size="7" value="${cervical.rflexion}"></td> 
 <td width="100">C6-7:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c67" size="7" value="${cervical.c67}"> &nbsp;&nbsp;C7-T1:  &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="c7t1" size="7" value="${cervical.c7t1}"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T1-2: &nbsp;&nbsp;<input type="text" name="t12" size="7" value="${cervical.t12}"> </td> 
 <td><b>Soto Hall:	</b> </td><td><input type="text" name="sotohalll" size="5" value="${cervical.sotohalll}"> <input type="text" name="sotohallr" size="5" value="${cervical.sotohallr}"></td>
 </tr>
  <tr class="row1">
  <td><b>Rotation:</b> </td><td> (80)&nbsp;&nbsp;&nbsp;L <input type="text" name="lrotation" size="7" value="${cervical.lrotation}"><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R <input type="text" name="rrotation" size="7" value="${cervical.rrotation}"></td> 
 <td width="100">T2-3:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t23" size="7" value="${cervical.t23}"> &nbsp;&nbsp;T3-4:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t34" size="7" value="${cervical.t34}"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T4-5: &nbsp;&nbsp;<input type="text" name="t45" size="7" value="${cervical.t45}"> </td> 
 <td><b>Adson's:</b> </td><td><input type="text" name="adsonsl" size="5" value="${cervical.adsonsl}"> <input type="text" name="adsonsr" size="5" value="${cervical.adsonsr}"></td>
 </tr>
  <tr class="row1">
 <td></td><td> </td> 
<td width="100">T5-6:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t56" size="7" value="${cervical.t56}"> &nbsp;&nbsp;T6-7:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t67" size="7" value="${cervical.t67}"></td><td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T7-8: &nbsp;&nbsp;<input type="text" name="t78" size="7" value="${cervical.t78}"> </td> 
 <td><b>ULTT:	</b> </td><td><input type="text" name="ulttl" size="5" value="${cervical.ulttl}"> <input type="text" name="ulttr" size="5" value="${cervical.ulttr}"></td>
 </tr>
  </table>
 </div>
 </div>
 </td>
 </tr>
 </table>
 </div>
 </div>
<div id="tabs-2"> 
 <div id="right_content">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>CERVICAL REEXAM</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
         <table cellpadding="0" cellspacing="0" border="0" width="98%">  
         <tr height="20">         
 <tr class="row1">
 <td><B style="font-size:14px">NEUROLOGICAL</B></td><td><input type="checkbox" name="neurologicaltest" value="Neurological Testing Unremarkable" <c:if test="${cervical.neurologicaltest=='Neurological Testing Unremarkable'}"><c:out value="Checked"/></c:if>>Neurological Testing Unremarkable</td><td><!-- <input type="checkbox" name="exceptn" value="Except">Except --></td>
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
 <td><input type="text" name="c5l" size="5" value="${cervical.c5l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c5r" size="5"  value="${cervical.c5r}">&nbsp;(Lat deltoid)</td>
 <td>C5 </td>
 <td> <input type="text" name="c51l" size="5"  value="${cervical.c51l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c51r" size="5"  value="${cervical.c51r}">&nbsp;/5&nbsp;(Shd ABD)</td>
 <td> C5</td>
 <td> <input type="text" name="c53l" size="5" value="${cervical.c53l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c53r" size="5" value="${cervical.c53r}">&nbsp;/5&nbsp;(Biceps)</td>
 
 </tr>
 <tr class="row1">
 <td>C6</td>
 <td><input type="text" name="c6l" size="5" value="${cervical.c6l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c6r" size="5" value="${cervical.c6r}">&nbsp;(Lat arm/hand)	</td>
 <td>C6 </td>
 <td> <input type="text" name="c61l" size="5" value="${cervical.c61l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c61r" size="5" value="${cervical.c61r}">&nbsp;/5&nbsp;(Elb flex/wrist ext)	</td>
  <td>C6 </td>
 <td><input type="text" name="c63l" size="5" value="${cervical.c63l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c63r" size="5" value="${cervical.c63r}">&nbsp;/5&nbsp;(Brachiorad.) </td>

 </tr>
 <tr class="row1">
 <td>C7</td>
 <td><input type="text" name="c7l" size="5" value="${cervical.c7l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c7r" size="5" value="${cervical.c7r}">&nbsp;(3rd digit)</td>
 <td>C7 </td>
 <td> <input type="text" name="c71l" size="5" value="${cervical.c71l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c71r" size="5" value="${cervical.c71r}">&nbsp;/5&nbsp;(Elb ext/wrist flex)</td>
 <td> C7</td>
 <td> <input type="text" name="c73l" size="5" value="${cervical.c73l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c73r" size="5" value="${cervical.c73r}">&nbsp;/5&nbsp;(Triceps)</td>
 </tr>
 <tr class="row1">
 <td>C8</td>
 <td><input type="text" name="c8l" size="5" value="${cervical.c8l}">&nbsp; &nbsp; &nbsp;<input type="text" name="c8r" size="5" value="${cervical.c8r}">&nbsp;(Med forearm/hand)	</td>
 <td>C8 </td>
 <td> <input type="text" name="c81l" size="5" value="${cervical.c81l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="c81r" size="5" value="${cervical.c53l}">&nbsp;/5&nbsp;(Digit flexion)</td>
 <td></td>
 <td> </td>
 </tr>
 <tr class="row1">
 <td>T1</td>
 <td><input type="text" name="t1l" size="5" value="${cervical.t1l}">&nbsp; &nbsp; &nbsp;<input type="text" name="t1r" size="5" value="${cervical.t1r}">&nbsp;(Med elbow/arm)	</td>
 <td>T1 </td>
 <td><input type="text" name="t11l" size="5" value="${cervical.t11l}">&nbsp;/5&nbsp; &nbsp; &nbsp;<input type="text" name="t11r" size="5" value="${cervical.t11r}">&nbsp;/5&nbsp; (Digit abd/add)</td>
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
 <td><B style="font-size:14px">FUNCTIONAL DEFICIT:</B></td><td><input type="checkbox" name="sitting" value="Sitting" <c:if test="${cervical.sitting=='Sitting'}"><c:out value="Checked"/></c:if>>Sitting &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input type="checkbox" name="standing" value="Standing" <c:if test="${cervical.standing=='Standing'}"><c:out value="Checked"/></c:if>>Standing</td>
 <td width="150"><input type="checkbox" name="driving" value="Driving" <c:if test="${cervical.driving=='Driving'}"><c:out value="Checked"/></c:if>> Driving</td><td width="150"><input type="checkbox" name="computeruse" value="Computer Use" <c:if test="${cervical.computeruse=='Computer Use'}"><c:out value="Checked"/></c:if>>Computer Use</td>
 <td width="150"><input type="checkbox" id="otherfunctional" name="otherfunctional" value="Other" onclick="visible(this.value)" <c:if test="${cervical.otherfunctional=='Other'}"><c:out value="Checked"/></c:if>>Other&nbsp; </td><td><input type="text"  id="break3" name="break_text3" style="display:none" value="${cervical.break_text3}"/></td>
 </tr>         
 <tr class="row1">
 <td><B style="font-size:14px">ASSESSMENT / ADDITIONAL COMMENTS:</B></td><td><textarea name="assessment" rows='5' cols='40'>${cervical.assessment }</textarea></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>         
 <tr class="row1">
 <td>Patient's Status for being a candidate for conservative care:	</td><td><select name="patientstatus" id="patientstatus"  onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Excellent" <c:if test="${cervical.patientstatus=='Excellent'}"><c:out value="Selected"/></c:if>  >Excellent</option>
					<option value="Good" <c:if test="${cervical.patientstatus=='Good'}"><c:out value="Selected"/></c:if>>Good</option>
					<option value="Fair" <c:if test="${cervical.patientstatus=='Fair'}"><c:out value="Selected"/></c:if>>Fair</option>
					<option value="Poor" <c:if test="${cervical.patientstatus=='Poor'}"><c:out value="Selected"/></c:if>>Poor</option>
					</select></td><td></td>
 <td></td><td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="360"><B style="font-size:14px">DIAGNOSIS:</B></td>
 <td width="250">1)<input type="text" name="diagnosis1" value="${cervical.diagnosis1}"></td>
 <td width="250">2)<input type="text" name="diagnosis2" value="${cervical.diagnosis2 }"></td>
 <td width="250">3)<input type="text" name="diagnosis3" value="${cervical.diagnosis3 }"></td>
 <td width="250">4)<input type="text" name="diagnosis4" value="${cervical.diagnosis4 }"></td>
 </tr>
 <tr class="row1">
 <td></td>
 <td width="250">5)<input type="text" name="diagnosis5" value="${cervical.diagnosis5}"></td>
 <td width="250">6)<input type="text" name="diagnosis6" value="${cervical.diagnosis6 }"></td>
 <td></td>
 <td></td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120"><B style="font-size:14px">PLAN:</B></td>
 <td><input type="text" name="times" value="${cervical.times}">Times/week for </td>
 <td><input type="text" name="week" value="${cervical.week}">weeks to address the </td>
 <td>above functional & structural deficits.  </td>
 <td>Treatment will consist of the following:</td>
 </tr>
 </table>
 <table>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="spinal" value="Spinal Decompression" <c:if test="${cervical.spinal=='Spinal Decompression'}"><c:out value="Checked"/></c:if>>Spinal Decompression	</td>
 <td width="250"><input type="checkbox" name="chiropractic" value="Chiropractic" <c:if test="${cervical.chiropractic=='Chiropractic'}"><c:out value="Checked"/></c:if>>Chiropractic</td>
 <td width="250"><input type="checkbox" name="physical" value="Physical Therapy" <c:if test="${cervical.physical=='Physical Therapy'}"><c:out value="Checked"/></c:if>>Physical Therapy</td>
 <td width="250"><input type="checkbox" name="orthotics" value="Orthotics/Bracing" <c:if test="${cervical.orthotics=='Orthotics/Bracing'}"><c:out value="Checked"/></c:if>>Orthotics/Bracing</td>
 <td width="250"><input type="checkbox" name="modalities" value="Modalities" <c:if test="${cervical.modalities=='Modalities'}"><c:out value="Checked"/></c:if>>Modalities	</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="supplementation" value="Supplementation" <c:if test="${cervical.supplementation=='Supplementation'}"><c:out value="Checked"/></c:if>>Supplementation</td>
 <td width="250"><input type="checkbox" name="hep" value="HEP" <c:if test="${cervical.hep=='HEP'}"><c:out value="Checked"/></c:if>>HEP</td>
 <td width="250"><input type="checkbox" name="radiographic" value="Radiographic X-Ray" <c:if test="${cervical.radiographic=='Radiographic X-Ray'}"><c:out value="Checked"/></c:if>> Radiographic X-Ray</td>
 <td width="250"><input type="checkbox" name="mri" value="MRI" <c:if test="${cervical.mri=='MRI'}"><c:out value="Checked"/></c:if>>MRI</td>
 <td width="250"><input type="checkbox" name="ctscan" value="CT Scan" <c:if test="${cervical.ctscan=='CT Scan'}"><c:out value="Checked"/></c:if>>CT Scan</td>
 </tr>
 <tr class="row1">
 <td width="120">
 <td width="250"><input type="checkbox" name="nerve" value="Nerve Conduction" <c:if test="${cervical.nerve=='Nerve Conduction'}"><c:out value="Checked"/></c:if>>Nerve Conduction</td>
 <td width="250"><input type="checkbox" name="emg" value="EMG" <c:if test="${cervical.emg=='EMG'}"><c:out value="Checked"/></c:if>>EMG</td>
 <td width="250"><input type="checkbox" name="outside" value="Outside Referral" <c:if test="${cervical.outside=='Outside Referral'}"><c:out value="Checked"/></c:if>>Outside Referral </td>
 <td width="250"><input type="checkbox" name="dc" value="D/C" <c:if test="${cervical.dc=='D/C'}"><c:out value="Checked"/></c:if>>D/C</td>
 <td width="250"><input type="checkbox" id="otheraddress" name="otheraddress" value="Other" onclick="visible(this.value)" <c:if test="${cervical.otheraddress=='Other'}"><c:out value="Checked"/></c:if>>Other<input type="text" class="input_txtbx1" id="break4" name="break_text4" style="display:none" value="${cervical.break_text4}"/></td>
 </tr>
 </tr>
 <br/>
 <table><tr><td><B style="font-size:14px"><span class="err">*</span>PHYSICIAN SIGNATURE: &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sign" value="${cervical.sign}"></B></td><span class="err"><form:errors path="Cervicalexam.sign"></form:errors></span></tr></table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid"></td>
<td><input type="reset" class="submit_btn" value="Cancel" id="cancelid" onclick="myclose()"></td>
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
 </td>
 </tr>
 </table>
 </div>
 </div>
 </c:otherwise>
 </c:choose>
 </form>
 </div>
 </body>
 </html>
