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
		    $( "#slider" ).slider({
		    	value:document.getElementById("describes").value,
		      min: 0,
		      max: 100,
		      step: 1,
		      slide: function( event, ui ) {
		        $( "#describes" ).val(+ ui.value );
		        document.getElementById("describeserr").innerHTML="";
		        if(document.getElementById("describes").value==0)
		        {
		        document.getElementById("describeserr").innerHTML="No Pain";
		        return false;
		        }
		        if(document.getElementById("describes").value==100)
		        {
		        document.getElementById("describeserr").innerHTML="Severe Pain";
		        return false;
		        }
		         
		        
		      }
		    });
		    $( "shoulderpainscore.painscale" ).val(+ $( "#slider" ).slider( "value" ) );
		  });
	 
	  $(function() {
		    $( "#datepicker" ).datepicker();
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
$(function() {
    $( "#datepicker1" ).datepicker();
  });
</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
   <script type="text/javascript">
  function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Participant ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
  </script>
  <script>
  function checkLength(id){
   
    var fieldVal = document.getElementById(id).value;
    
    if(fieldVal >=0 && fieldVal <=100){
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
  <script>

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
	    	
	    	document.getElementById("pnameerror").innerHTML="Name should be of length 4 to 32";
	    	
	        return false;
	    }
document.getElementById("number1error").innerHTML=" ";
		
		if(document.getElementById("number1").value=="")
		{
		document.getElementById("number1error").innerHTML="Required Field Should not be Empty";
		
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
		document.getElementById("datepicker1error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		
		document.getElementById("name123error").innerHTML="";
		if(document.getElementById("name123").value!="")
		{
	    if(document.getElementById("name123").value.length<4 || document.getElementById("name123").value.length>=32)
	    {
	    	
	    	document.getElementById("name123error").innerHTML="Name should be of length 4 to 32";
	    	
	        return false;
	    }
	    }
	}
	</script>
	<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
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
	$("#pname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#name123").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
</head>
 <body>
 <br>
 <br>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
         
   <div id="tabs-1"> 
 <div id="right_content">
<form action="updateshoulderpainscore" method="POST" name="shoulderpainscore">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>SHOULDER PAIN SCORE</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
     <c:set value="${shoulderpainscoreForm.shoulderpainscore[0]}" var="shoulderpainscore"/>      
 <tr class="row1">
 <input type="hidden" name="shoulderpainno" value="${shoulderpainscore.shoulderpainno }"  />
<td><h2><span class="err">* </span>Patient Name:</h2></td><td width="400"><input type="text"  name="pname" id="pname"  onInput="return validatename(id)";value="${shoulderpainscore.pname }"/><span style="color: red;font-style:italic;" id="pnameerror"><form:errors path="Shoulderpainscore.pname"></form:errors></span></td>
<td><h2><span class="err">* </span>Number:</h2></td><td width="400"><input type="text"  name="number" id="number1" onkeypress="return validate(event)"; value="${shoulderpainscore.number}"/><span style="color: red;font-style:italic;" id="number1error"><form:errors path="Shoulderpainscore.number"></form:errors></span></td>
<td><h2><span class="err">* </span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${shoulderpainscore.date}"/><span style="color: red;font-style:italic;" id="datepickererror"><form:errors path="Shoulderpainscore.date"></form:errors></span></td>
</tr>
</table>
<table width="70%" align="center">
<tr class="row1">

<td></td><td width="250">Pain at rest:</td><td width="120"><input type="radio" name="painatrest" value="None" <c:if test="${shoulderpainscore.painatrest=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="painatrest" value="Light" <c:if test="${shoulderpainscore.painatrest=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="painatrest" value="Average" <c:if test="${shoulderpainscore.painatrest=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="painatrest" value="Severe" <c:if test="${shoulderpainscore.painatrest=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Pain in motion:</td><td width="120"><input type="radio" name="paininmotion" value="None" <c:if test="${shoulderpainscore.paininmotion=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="paininmotion" value="Light" <c:if test="${shoulderpainscore.paininmotion=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="paininmotion" value="Average" <c:if test="${shoulderpainscore.paininmotion=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="paininmotion" value="Severe" <c:if test="${shoulderpainscore.paininmotion=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Nightly pain:</td><td width="120"><input type="radio" name="nightlypain" value="None" <c:if test="${shoulderpainscore.nightlypain=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="nightlypain" value="Light" <c:if test="${shoulderpainscore.nightlypain=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="nightlypain" value="Average" <c:if test="${shoulderpainscore.nightlypain=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="nightlypain" value="Severe" <c:if test="${shoulderpainscore.nightlypain=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Sleeping problem caused by pain:</td><td width="120"><input type="radio" name="sleepingproblem" value="None" <c:if test="${shoulderpainscore.sleepingproblem=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="sleepingproblem" value="Light" <c:if test="${shoulderpainscore.sleepingproblem=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="sleepingproblem" value="Average" <c:if test="${shoulderpainscore.sleepingproblem=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="sleepingproblem" value="Severe" <c:if test="${shoulderpainscore.sleepingproblem=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Incapablity of lying on the painful side</td><td width="120"><input type="radio" name="incapability" value="None" <c:if test="${shoulderpainscore.incapability=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="incapability" value="Light" <c:if test="${shoulderpainscore.incapability=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="incapability" value="Average" <c:if test="${shoulderpainscore.incapability=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="incapability" value="Severe" <c:if test="${shoulderpainscore.incapability=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>

<tr >
<td width="250">Degree of Radiation</td><td width="180"><input type="radio" name="degreeofradiation" value="None" <c:if test="${shoulderpainscore.degreeofradiation=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="180" style="width: 208px; "><input type="radio" name="degreeofradiation" value="Till halfway the upper Arm" <c:if test="${shoulderpainscore.degreeofradiation=='Till half way the upper Arm'}"> <c:out value="checked"></c:out></c:if>>Till halfway the upper Arm</td><td width="180"><input type="radio" name="degreeofradiation" value="Till the elbow" <c:if test="${shoulderpainscore.degreeofradiation=='Till the elbow'}"> <c:out value="checked"></c:out></c:if>>Till the elbow</td><td width="180"><input type="radio" name="degreeofradiation" value="Past the elbow" <c:if test="${shoulderpainscore.degreeofradiation=='Past the elbow'}"> <c:out value="checked"></c:out></c:if>>Past the elbow</td><td></td>
</tr>
</table>
<table align="center">
<tr height="30">
<td><b>Pain Scale:</b></td>
</tr>
<tr height="30"><td>Indicate on the line below the number between 0 and 100 that best describes your pain.Mark your pain as <b>No pain is 0</b> and <b>Unbearable pain is 100</b>.</td> </tr>
<tr height="30">
<td>
<label for="describes"><b>Pain Scale:</b></label>
<input type="text" id="describes" name="painscale" onInput="checkLength(id)" value="${shoulderpainscore.painscale}"/><span id="describeserr"></span>&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr height="30">
<td style="width: 874px; ">
<div id="slider" style="width: 791px; "></div>
</td>
</tr>
</table>
<br/>
<br/>
 
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
	            <center> <h2>SHOULDER PAIN SCORE</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
 <table cellpadding="0" cellspacing="0" border="0" width="98%"> 
 <tr class="row1">
<td>Date:</td><td><input type="text"  id="datepicker1" name="date1" value="${shoulderpainscore.date1 }"/><span id="datepicker1error" class="err"></span></td>

<td>Scores total:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  id="total" name="total" onkeypress="return validate(event)"; value="${shoulderpainscore.total }"/>&nbsp;;&nbsp;[100]&nbsp;&nbsp;</td><td>[48]F:&nbsp;&nbsp;&nbsp;<input type="text"  id="f" name="f" onkeypress="return validate(event)"; value="${shoulderpainscore.f }"/>&nbsp;&nbsp;</td>
</tr>
</table>
 <table cellpadding="0" cellspacing="0" border="0" width="98%">
<tr class="row1">
<td>Name:</td><td><input type="text" id="name123" name="name123" value="${shoulderpainscore.name123 }" onInput="return validatename(id)";/><span id="name123error" style="color: red;font-style:italic;"></span></td>

<td>Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  id="age" name="age" onkeypress="return validate(event)"; value="${shoulderpainscore.age}"/></td>
</tr>
</table>
<br/>
<table>
<tr><td><h2>Instructions:Please circle the correct response</h2></td></tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="78%">
<tr class="row1">
<td>1)&nbsp;&nbsp;I have headaches:</td><td><input type="radio" name="headache" value="per month" <c:if test="${shoulderpainscore.headache=='per month'}"> <c:out value="checked"></c:out></c:if>>per month</td>
<td><input type="radio" name="headache" value="more than but less than 4 per month" <c:if test="${shoulderpainscore.headache=='more than but less than 4 per month'}"> <c:out value="checked"></c:out></c:if>>more than but less than 4 per month</td>
<td><input type="radio" name="headache" value="more than one per week" <c:if test="${shoulderpainscore.headache=='more than one per week'}"> <c:out value="checked"></c:out></c:if>>more than one per week</td>
</tr>
<tr class="row1">
<td>2)&nbsp;&nbsp; My headaches is:</td><td><input type="radio" name="myheadache" value="mild" <c:if test="${shoulderpainscore.myheadache=='mild'}"> <c:out value="checked"></c:out></c:if>>mild</td>
<td><input type="radio" name="myheadache" value="moderate" <c:if test="${shoulderpainscore.headache=='moderate'}"> <c:out value="checked"></c:out></c:if>>moderate</td>
<td><input type="radio" name="myheadache" value="severe" <c:if test="${shoulderpainscore.headache=='severe'}"> <c:out value="checked"></c:out></c:if>>severe</td>
</tr>
<table>
<tr><td><h2>Instructions:PLEASE READ CAREFULLY:</h2>The purpose of scale is to identify difficulties that you may be experiencing because of your headache.Please check off "YES" ,"SOMETIMES",or "NO" to each item.Answer each item as it pertains to your headache only.</td>
</tr>
</table>
<br/>
<table cellpadding="0" cellspacing="0" border="1" width="90%">
<tr class="row1">
<td width="180"></td><td width="100"><b>YES</b></td>
<td width="100"><b>SOMETIMES</b></td>
<td width="100"><b>NO</b></td>
</tr>
<tr class="row1">
<td>E1.Because of my headaches I feel handihapped.</td><td><input type="radio" name="handihapped" value="Yes" <c:if test="${shoulderpainscore.handihapped=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="handihapped" value="Sometimes" <c:if test="${shoulderpainscore.handihapped=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="handihapped" value="No" <c:if test="${shoulderpainscore.handihapped=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F2.Because of my headaches I feel restricted in performing my routine daily activities.</td><td><input type="radio" name="restricted" value="Yes" <c:if test="${shoulderpainscore.restricted=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="restricted" value="Sometimes" <c:if test="${shoulderpainscore.restricted=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="restricted" value="No" <c:if test="${shoulderpainscore.restricted=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E3.No one understands the effect my headache have on my life </td><td><input type="radio" name="understand" value="Yes" <c:if test="${shoulderpainscore.understand=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="understand" value="Sometimes" <c:if test="${shoulderpainscore.understand=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="understand" value="No" <c:if test="${shoulderpainscore.understand=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F4.I restrict my recreational activities(e.g sports,hobbies) because of my headaches </td><td><input type="radio" name="recreational" value="Yes" <c:if test="${shoulderpainscore.recreational=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="recreational" value="Sometimes" <c:if test="${shoulderpainscore.recreational=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="recreational" value="No" <c:if test="${shoulderpainscore.recreational=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E5.My headache makes me angry </td><td><input type="radio" name="angry" value="Yes" <c:if test="${shoulderpainscore.angry=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="angry" value="Sometimes" <c:if test="${shoulderpainscore.angry=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="angry" value="No" <c:if test="${shoulderpainscore.angry=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E6.Sometimes I feel that I am going to lose my control because of my headaches </td><td><input type="radio" name="control" value="Yes" <c:if test="${shoulderpainscore.control=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="control" value="Sometimes" <c:if test="${shoulderpainscore.control=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="control" value="No" <c:if test="${shoulderpainscore.control=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F7.Because of my headaches I am less likely to socialize.  </td><td><input type="radio" name="socialize" value="Yes" <c:if test="${shoulderpainscore.socialize=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="socialize" value="Sometimes" <c:if test="${shoulderpainscore.socialize=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="socialize" value="No" <c:if test="${shoulderpainscore.socialize=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E8.My spouse/significant other,or family and friends have no idea what I am going through because of my headaches.  </td><td><input type="radio" name="family" value="Yes" <c:if test="${shoulderpainscore.family=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="family" value="Sometimes" <c:if test="${shoulderpainscore.family=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="family" value="No" <c:if test="${shoulderpainscore.family=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E9.My headaches are so bad that I feel I am going to go insane.</td><td><input type="radio" name="insane" value="Yes" <c:if test="${shoulderpainscore.insane=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="insane" value="Sometimes" <c:if test="${shoulderpainscore.insane=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="insane" value="No" <c:if test="${shoulderpainscore.insane=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E10.My outlook on the world is affected by my headaches.</td><td><input type="radio" name="outlook" value="Yes" <c:if test="${shoulderpainscore.outlook=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="outlook" value="Sometimes" <c:if test="${shoulderpainscore.outlook=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="outlook" value="No" <c:if test="${shoulderpainscore.outlook=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E11.I am afraid to go outside when I feel a headache is starting.</td><td><input type="radio" name="afraid" value="Yes" <c:if test="${shoulderpainscore.afraid=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="afraid" value="Sometimes" <c:if test="${shoulderpainscore.afraid=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="afraid" value="No" <c:if test="${shoulderpainscore.afraid=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E12.I feel desperate because of my headaches</td><td><input type="radio" name="desperate" value="Yes" <c:if test="${shoulderpainscore.desperate=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="desperate" value="Sometimes" <c:if test="${shoulderpainscore.desperate=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="desperate" value="No" <c:if test="${shoulderpainscore.desperate=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F13.I am concerned that I am paying penalties at work or at home because of my headaches.</td><td><input type="radio" name="penalties" value="Yes" <c:if test="${shoulderpainscore.penalties=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="penalties" value="Sometimes" <c:if test="${shoulderpainscore.penalties=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="penalties" value="No" <c:if test="${shoulderpainscore.penalties=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E14.My headaches place stress on my relationships with my family or friends.</td><td><input type="radio" name="relationship" value="Yes" <c:if test="${shoulderpainscore.relationship=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="relationship" value="Sometimes" <c:if test="${shoulderpainscore.relationship=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="relationship" value="No" <c:if test="${shoulderpainscore.relationship=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F15.I avoid being around people when I have a headache.</td><td><input type="radio" name="avoid" value="Yes" <c:if test="${shoulderpainscore.avoid=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="avoid" value="Sometimes" <c:if test="${shoulderpainscore.avoid=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="avoid" value="No" <c:if test="${shoulderpainscore.avoid=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F16.I believe my headaches are making it difficult for me to achieve my goals in life. </td><td><input type="radio" name="goals" value="Yes" <c:if test="${shoulderpainscore.goals=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="goals" value="Sometimes" <c:if test="${shoulderpainscore.goals=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="goals" value="No" <c:if test="${shoulderpainscore.goals=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F17.I am unable to think clearly because of my headaches </td><td><input type="radio" name="clear" value="Yes" <c:if test="${shoulderpainscore.clear=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="clear" value="Sometimes" <c:if test="${shoulderpainscore.clear=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="clear" value="No" <c:if test="${shoulderpainscore.clear=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F18.I get tense (e.g.muscle tension)because of my headache. </td><td><input type="radio" name="tension" value="Yes" <c:if test="${shoulderpainscore.tension=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="tension" value="Sometimes" <c:if test="${shoulderpainscore.tension=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="tension" value="No" <c:if test="${shoulderpainscore.tension=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F19.I do not enjoy social gatherings because of my headaches </td><td><input type="radio" name="gatherings" value="Yes" <c:if test="${shoulderpainscore.gatherings=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="gatherings" value="Sometimes" <c:if test="${shoulderpainscore.gatherings=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="gatherings" value="No" <c:if test="${shoulderpainscore.gatherings=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E20.I feel irritable because of my headaches. </td><td><input type="radio" name="irritable" value="Yes" <c:if test="${shoulderpainscore.irritable=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="irritable" value="Sometimes" <c:if test="${shoulderpainscore.irritable=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="irritable" value="No" <c:if test="${shoulderpainscore.irritable=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F21.I avoid travelling because of my headaches. </td><td><input type="radio" name="travelling" value="Yes" <c:if test="${shoulderpainscore.travelling=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="travelling" value="Sometimes" <c:if test="${shoulderpainscore.travelling=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="travelling" value="No" <c:if test="${shoulderpainscore.restricted=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E22.My headaches makes me feel confused. </td><td><input type="radio" name="confused" value="Yes" <c:if test="${shoulderpainscore.confused=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="confused" value="Sometimes" <c:if test="${shoulderpainscore.confused=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="confused" value="No" <c:if test="${shoulderpainscore.confused=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E23.My headaches makes me feel frustrated. </td><td><input type="radio" name="frustrated" value="Yes" <c:if test="${shoulderpainscore.frustrated=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="frustrated" value="Sometimes" <c:if test="${shoulderpainscore.frustrated=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="frustrated" value="No" <c:if test="${shoulderpainscore.frustrated=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F24.I find it difficult to read because of my headaches </td><td><input type="radio" name="difficult" value="Yes" <c:if test="${shoulderpainscore.difficult=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="difficult" value="Sometimes" <c:if test="${shoulderpainscore.difficult=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="difficult" value="No" <c:if test="${shoulderpainscore.difficult=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F25.I find it difficult to focus my attention away from my headaches and on other things. </td><td><input type="radio" name="attention" value="Yes" <c:if test="${shoulderpainscore.attention=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="attention" value="Sometimes" <c:if test="${shoulderpainscore.attention=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="attention" value="No" <c:if test="${shoulderpainscore.attention=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<table>
<br/>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
 <td><a href="deleteshoulderpainscore?shoulderpainno= ${shoulderpainscore.shoulderpainno }" class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a></td>
<td><a href="viewshoulderpainscore"  style="color: white" id="cancelid" class="submit_btn" onclick="window.close()">Cancel</a></td>

</tr>
</table>
 </table>
  </div>
</div>
</form>
</body>