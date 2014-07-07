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
  <script type="text/javascript">
 function percentage()
 {
	 //alert("hi");
	 var score=document.getElementById("score").value;
	 var section=document.getElementById("section").value;
	 var div=(score*2)/(section*10);
	 var adl=div/100;
	 //alert("div"+div);
	 document.getElementById("adl").value=adl;
 }
 
 
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
 <script type="text/javascript">
 function doAjaxPost() {
	 
	 document.getElementById("page").style.display="block";
	 var section1=0;
	 var tolerate=0;
	 if($("input[type='radio'].tolerate").is(':checked')) {
		 tolerate = $("input[type='radio'].tolerate:checked").val();
		 section1=1;
		}
	// var painintensity=$('input[name=painintensity]:radio').click(function() {var value = $(this).val();});
	 //var painintensity = $('#painintensity').val();
	 //alert(painintensity);
	 var section2=0;
	 var withoutpain = 0;
	 if($("input[type='radio'].withoutpain").is(':checked')) {
		 withoutpain = $("input[type='radio'].withoutpain:checked").val();	
		 section2=1;
	}
	 var section3=0;
	 var withoutcausingpain =0;
	 if($("input[type='radio'].withoutcausingpain").is(':checked')) {
		 withoutcausingpain = $("input[type='radio'].withoutcausingpain:checked").val();		    
	     section3=1;
	 }
	 var section4=0;
	 var sleepingwell =0;
	 if($("input[type='radio'].sleepingwell").is(':checked')) {
		 sleepingwell = $("input[type='radio'].sleepingwell:checked").val();		    
	     section4=1;
	 }
	 var section5=0;
	 var canlift = 0;
	 if($("input[type='radio'].canlift").is(':checked')) {
		 canlift = $("input[type='radio'].canlift:checked").val();		    
	     section5=1;
	 }
	 var section6=0;
	 var normal = 0;
	 if($("input[type='radio'].normal").is(':checked')) {
		 normal  = $("input[type='radio'].normal:checked").val();		    
	     section6=1;
	 }
	 var section7=0;
	 var walkingdistance = 0;
	 if($("input[type='radio'].walkingdistance").is(':checked')) {
		 sleeping = $("input[type='radio'].sleeping:checked").val();		    
	     section7=1;
	 }
	 var section8=0;
	 var withoutextrapain = 0;
	 if($("input[type='radio'].withoutextrapain").is(':checked')) {
		 withoutextrapain = $("input[type='radio'].withoutextrapain:checked").val();		    
	     section8=1;
	 }
	 var section9=0;
	 var cansit = 0;
	 if($("input[type='radio'].cansit").is(':checked')) {
		 cansit = $("input[type='radio'].cansit:checked").val();
		 section9=1;
	}
	 var section10=0;
	 var rapidlybetter = 0;
	 if($("input[type='radio'].rapidlybetter").is(':checked')) {
		 rapidlybetter = $("input[type='radio'].rapidlybetter:checked").val();		    
	     section10=1;
	 }
	 var total=parseInt(tolerate)+parseInt(withoutpain)+parseInt(withoutcausingpain)+parseInt(sleepingwell)+parseInt(canlift)+parseInt(normal)+parseInt(walkingdistance)+parseInt(withoutextrapain)+parseInt(cansit)+parseInt(rapidlybetter);
	 document.getElementById("score").value=total;
	 var sectiontotal=parseInt(section1)+parseInt(section2)+parseInt(section3)+parseInt(section4)+parseInt(section5)+parseInt(section6)+parseInt(section7)+parseInt(section8)+parseInt(section9)+parseInt(section10);
	 document.getElementById("section").value=sectiontotal;		   
	 var score=document.getElementById("score").value;
	 var section=document.getElementById("section").value;
	 var div=(score*2)/(section*10);
	 var adl=div/100;
	 //alert("div"+div);
	 document.getElementById("adl").value=adl;
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
  $(function() {
	$("#pname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#comment").on("keypress", function(e) {
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
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
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
		
		document.getElementById("commenterror").innerHTML="";
		if(document.getElementById("comment").value!="")
		{
	    if(document.getElementById("comment").value.length<4 || document.getElementById("comment").value.length>=32)
	    {
	    	
	    	document.getElementById("commenterror").innerHTML="Should be of length 4 to 32";
	    	
	        return false;
	    }
	    }
	}
	</script>
</head>
 <body>
 <br><br>
<form action="updatelowback" method="POST" name="lowback">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>LOW BACK DISABILITY QUESTIONNARIE(REVISED OSWESTRY)</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
          <c:set value="${lowbackForm.lowback[0]}" var="lowback"/> 
 <tr class="row1">
 <input type="hidden" name="lowbackno" id="lowbackno" value="${lowback.lowbackno}">
<td><h2><span class="err">* </span>Patient Name:</h2></td><td><input type="text" id="pname" name="pname"onInput="return validatename(id)"; value="${lowback.pname}"/><span style="color: red;font-style:italic;" id="pnameerror"><form:errors path="Lowback.pname"></form:errors></span></td>
<td width="600">
<td><h2><span class="err">* </span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${lowback.date}" /><span style="color: red;font-style:italic;" id="datepickererror"><form:errors path="Lowback.date"></form:errors></span></td>
</tr>
</table>
<br/>

<table cellpadding="0" cellspacing="0" border="0" width="98%">
<tr>
<td>The Questionnarie has been designed to give the doctor information as to how your back pain has affected your ability to manage in everyday life.Please answer every section and mark in each section only ONE box,which applies to you.We Realize you may consider that two of the statements in any one section relates to you but please just mark the box which MOST CLOSELY describes your problem.</td>
</tr></table>
<br/>
<br/>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section1-Pain Intensity</B></td>
 <td width="50%"><B style="font-size:14px">Section6-Standing</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="tolerate" id="tolerate" name="tolerate" value="0"  <c:if test= "${lowback.tolerate== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I Can tolerate the pain without having to use painkillers </td>
 <td width="50%"><input type="radio"  class="withoutpain" id="withoutpain" name="withoutpain" value="0"  <c:if test= "${lowback.withoutpain== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I Can stand as long as I want without extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="tolerate" id="tolerate" name="tolerate" value="1"  <c:if test= "${lowback.tolerate== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;The pain is bad but I manage without using painkillers </td>
 <td width="50%"><input type="radio" class="withoutpain" id="withoutpain" name="withoutpain" value="1"  <c:if test= "${lowback.withoutpain== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I Can stand as long as I want but it gives extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="tolerate" id="tolerate" name="tolerate" value="2"  <c:if test= "${lowback.tolerate== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Painkillers give complete relief from pain </td>
 <td width="50%"><input type="radio" class="withoutpain" id="withoutpain" name="withoutpain" value="2"  <c:if test= "${lowback.withoutpain== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from standing more than 1 hour</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="tolerate" id="tolerate" name="tolerate" value="3"  <c:if test= "${lowback.tolerate== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Painkillers give moderate relief from pain </td>
 <td width="50%"><input type="radio" class="withoutpain" id="withoutpain" name="withoutpain" value="3"  <c:if test= "${lowback.withoutpain== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from standing more than 30 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="tolerate" id="tolerate" name="tolerate" value="4"  <c:if test= "${lowback.tolerate== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Painkillers give very little relief from pain </td>
 <td width="50%"><input type="radio"  class="withoutpain" id="withoutpain" name="withoutpain" value="4"  <c:if test= "${lowback.withoutpain== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from standing more than 10 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="tolerate" id="tolerate" name="tolerate" value="5"  <c:if test= "${lowback.tolerate== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Painkillers have no effect on the pain and I do not use them </td>
 <td width="50%"><input type="radio" class="withoutpain" id="withoutpain" name="withoutpain" value="5"  <c:if test= "${lowback.withoutpain== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from standing at all</td> 
 </tr>
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section2-Personal Care(Washing,Dressing,etc)</B></td>
 <td width="50%"><B style="font-size:14px">Section7-Sleeping</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="withoutcausingpain" id="withoutcausingpain" name="withoutcausingpain" value="0"  <c:if test= "${lowback.withoutcausingpain== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can look after myself normally without causing extra pain </td>
 <td width="50%"><input type="radio" class="sleepingwell" id="sleepingwell" name="sleepingwell" value="0"  <c:if test= "${lowback.sleepingwell== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I Can stand as long as I want without extrapain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="withoutcausingpain" id="withoutcausingpain" name="withoutcausingpain" value="1"  <c:if test= "${lowback.withoutcausingpain== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can look after myself normally but it causes extra pain </td>
 <td width="50%"><input type="radio" class="sleepingwell" id="sleepingwell" name="sleepingwell" value="1"  <c:if test= "${lowback.sleepingwell== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I Can sleep well only by using tablets</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio"  class="withoutcausingpain" id="withoutcausingpain" name="withoutcausingpain" value="2"  <c:if test= "${lowback.withoutcausingpain== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;It is painful to look after myself and I am slow and careful </td>
 <td width="50%"><input type="radio" class="sleepingwell" id="sleepingwell" name="sleepingwell" value="2"  <c:if test= "${lowback.sleepingwell== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Even when I take tablets I have less than 6 hours sleep</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="withoutcausingpain" id="withoutcausingpain" name="withoutcausingpain" value="3"  <c:if test= "${lowback.withoutcausingpain== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I need some help but manage  most of my personal care </td>
 <td width="50%"><input type="radio" class="sleepingwell" id="sleepingwell" name="sleepingwell" value="3"  <c:if test= "${lowback.sleepingwell== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Even when I take tablets I have less than 4 hours sleep</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="withoutcausingpain" id="withoutcausingpain" name="withoutcausingpain" value="4"  <c:if test= "${lowback.withoutcausingpain== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I need help every day in most aspects of self care </td>
 <td width="50%"><input type="radio" class="sleepingwell" id="sleepingwell" name="sleepingwell" value="4"  <c:if test= "${lowback.sleepingwell== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Even when I take tablets I have less than 2 hours sleep</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="withoutcausingpain" id="withoutcausingpain" name="withoutcausingpain" value="5"  <c:if test= "${lowback.withoutcausingpain== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I do not get dressed;I wash without difficulty and stay in bed </td>
 <td width="50%"><input type="radio" class="sleepingwell" id="sleepingwell" name="sleepingwell" value="5"  <c:if test= "${lowback.sleepingwell== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from sleeping at all</td> 
 </tr>
  
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section3-Lifting</B></td>
 <td width="50%"><B style="font-size:14px">Section8-Social Life</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="canlift" id="canlift" name="canlift" value="0"  <c:if test= "${lowback.canlift== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can lift heavy weights without extra pain </td>
 <td width="50%"><input type="radio"  class="normal" id="normal" name="normal" value="0"  <c:if test= "${lowback.normal== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;My social life is normal and gives me no extra pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="canlift" id="canlift" name="canlift" value="1"  <c:if test= "${lowback.canlift== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can lift heavy weights  but it gives extra pain </td>
 <td width="50%"><input type="radio" class="normal" id="normal" name="normal" value="1"  <c:if test= "${lowback.normal== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I Can sleep well only by using tablets</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="canlift" id="canlift" name="canlift" value="2"  <c:if test= "${lowback.canlift== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from lifting heavy weights off the floor,but I can manage if they are conveniently positions for example: On a table </td>
 <td width="50%"><input type="radio" class="normal" id="normal" name="normal" value="2"  <c:if test= "${lowback.normal== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain has no significant effect on my social life apart from limiting my more energetic interest,e.g. dancing</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="canlift" id="canlift" name="canlift" value="3"  <c:if test= "${lowback.canlift== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from lifting heavy weights,but I can manage light to medium weights if they are conveniently positioned </td>
 <td width="50%"><input type="radio" class="normal" id="normal" name="normal" value="3"  <c:if test= "${lowback.normal== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain has restricted my social life and i do not go out as often </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio"  class="canlift" id="canlift" name="canlift" value="4"  <c:if test= "${lowback.canlift== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can lift very light weights </td>
 <td width="50%"><input type="radio" class="normal" id="normal" name="normal" value="4"  <c:if test= "${lowback.normal== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain has restricted my social life to my home</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="canlift" id="canlift" name="canlift" value="5"  <c:if test= "${lowback.canlift== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I cannot lift or carry anything at all </td>
 <td width="50%"><input type="radio" class="normal" id="normal" name="normal" value="5"  <c:if test= "${lowback.normal== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I have no social life because of pain</td> 
 </tr>
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section4-Walking</B></td>
 <td width="50%"><B style="font-size:14px">Section9-Traveling</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="walkingdistance" id="walkingdistance" name="walkingdistance" value="0"  <c:if test= "${lowback.walkingdistance== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain does not prevent me from walking any distance </td>
 <td width="50%"><input type="radio" class="withoutextrapain" id="withoutextrapain" name="withoutextrapain" value="0"  <c:if test= "${lowback.withoutextrapain== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can travel anywhere without extra pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="walkingdistance" id="walkingdistance" name="walkingdistance" value="1"  <c:if test= "${lowback.walkingdistance== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from walking more than one mile </td>
 <td width="50%"><input type="radio" class="withoutextrapain" id="withoutextrapain" name="withoutextrapain" value="1"  <c:if test= "${lowback.withoutextrapain== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can travel anywhere but it gives me extra pain</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="walkingdistance" id="walkingdistance" name="walkingdistance" value="2"  <c:if test= "${lowback.walkingdistance== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from walking more than one-half mile </td>
 <td width="50%"><input type="radio" class="withoutextrapain" id="withoutextrapain" name="withoutextrapain" value="2" <c:if test= "${lowback.withoutextrapain== '2 '}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain is bad but I manage journeys over 2 hours</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="walkingdistance" id="walkingdistance" name="walkingdistance" value="3"  <c:if test= "${lowback.walkingdistance== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from walking more than one-quarter mile </td>
 <td width="50%"><input type="radio" class="withoutextrapain" id="withoutextrapain" name="withoutextrapain" value="3"  <c:if test= "${lowback.withoutextrapain== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain is bad but I manage journeys less than one hours </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="walkingdistance" id="walkingdistance" name="walkingdistance" value="4"  <c:if test= "${lowback.walkingdistance== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can only using stick or crutches </td>
 <td width="50%"><input type="radio" class="withoutextrapain" id="withoutextrapain" name="withoutextrapain" value="4"  <c:if test= "${lowback.withoutextrapain== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain restrict me to short necessary journeys undo 30 minutes</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="walkingdistance" id="walkingdistance" name="walkingdistance" value="5"  <c:if test= "${lowback.walkingdistance== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I am in bed most of the time and have to crawl to the toilet </td>
 <td width="50%"><input type="radio" class="withoutextrapain" id="withoutextrapain" name="withoutextrapain" value="5" <c:if test= "${lowback.withoutextrapain== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()" >&nbsp;&nbsp;Pain prevents me from traveling except to the doctor or hospital</td> 
 </tr>
 <tr class="row2">  
 <td></td>
 <td width="50%"><B style="font-size:14px">Section5-Sitting</B></td>
 <td width="50%"><B style="font-size:14px">Section10-Changing degree of pain</B></td> 
 <td width="50%"></td>
 <td width="50%"></td>
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="cansit" id="cansit" name="cansit" value="0"  <c:if test= "${lowback.cansit== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;I can sit in a chair as long as I like </td>
 <td width="50%"><input type="radio" class="rapidlybetter" id="rapidlybetter" name="rapidlybetter" value="0"  <c:if test= "${lowback.rapidlybetter== '0'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;My pain is rapidly getting better</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="cansit" id="cansit" name="cansit" value="1"  <c:if test= "${lowback.cansit== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from walking more than one mile </td>
 <td width="50%"><input type="radio" class="rapidlybetter" id="rapidlybetter" name="rapidlybetter" value="1"  <c:if test= "${lowback.rapidlybetter== '1'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;My pain flucutates but overall is definitely getting better</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="cansit" id="cansit" name="cansit" value="2"  <c:if test= "${lowback.cansit== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from sitting more than one hour </td>
 <td width="50%"><input type="radio" class="rapidlybetter" id="rapidlybetter" name="rapidlybetter" value="2"  <c:if test= "${lowback.rapidlybetter== '2'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;My pain seems to be getting better but improvement is slow at the present</td> 
 </tr>
  <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="cansit" id="cansit" name="cansit" value="3"  <c:if test= "${lowback.cansit== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from sitting more than 30 minutes </td>
 <td width="50%"><input type="radio" class="rapidlybetter" id="rapidlybetter" name="rapidlybetter" value="3"  <c:if test= "${lowback.rapidlybetter== '3'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain is neither getting better nor worse </td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="cansit" id="cansit" name="cansit" value="4"  <c:if test= "${lowback.cansit== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from sitting more than 30 minutes </td>
 <td width="50%"><input type="radio" class="rapidlybetter" id="rapidlybetter" name="rapidlybetter" value="4"  <c:if test= "${lowback.rapidlybetter== '4'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;My pain is gradually worsening</td> 
 </tr>
 <tr class="row1"> 
 <td></td> 
 <td width="50%"><input type="radio" class="cansit" id="cansit" name="cansit" value="5" <c:if test= "${lowback.cansit== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;Pain prevents me from sitting all most all the time </td>
 <td width="50%"><input type="radio" class="rapidlybetter" id="rapidlybetter" name="rapidlybetter" value="5"  <c:if test= "${lowback.rapidlybetter== '5'}"> <c:out value="checked"></c:out></c:if> onclick="return doAjaxPost()">&nbsp;&nbsp;My pain is rapidly worsening</td> 
 </tr>
 </table>
 <table>
 <tr>
  <td> <a  onclick="return doAjaxPost()" style="text-decoration: underline; cursor:pointer;color: brown" ><b>Show disability of patient score</b></td>
</tr>
</table>
<table style="display:none" id="page">
 <tr>
  <td></td>
 <td width="50%">Scoring:Questions are scored on a vertical scale of 0-5.Total scores and multiply by 2 .Divide by number of sections answered multiplied by 10.A score of 22% or more is considered significant activities of daily living disability.<br/><br/>(Score &nbsp;<input type="text" class="score" id="score" name="score" size="7" value="${lowback.score}">*2)&nbsp;/&nbsp;( <input type="text" class="section" id="section" name="section" size="7" value="${lowback.section}">Section *10)&nbsp;&nbsp;=&nbsp;&nbsp;<input type="text" class="adl" id="adl" name="adl" size="9" value="${lowback.adl}">&nbsp;%ADL&nbsp;<%-- <input type="text" name="adl2" size="9" value="${lowback.adl2}"> --%><br/><br/><!-- <input type="button" value="Calculate" onclick="return percentage()" class="submit_btn"> --></td>
 <td width="50%">Comments:&nbsp;&nbsp;<textarea rows="6" cols="50" id="comment" onInput="return validatename(id)"; name="comment">${lowback.comment}</textarea> <span style="color: red;font-style:italic;" id="commenterror"></span></td>
 </tr>
 </table>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
<td><a href=" deletelowbackdetails?lowbackno=${lowback.lowbackno}"  class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a></td>

<td><a href="viewlowback" style="color: white" id="cancelid" class="submit_btn" onclick="window.close()">Cancel</a></td>
</tr>
</table>
 </table>
</form>
</body>