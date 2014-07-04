
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
		    $( "#slider" ).slider({
		      value:1,
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
		    $( "#describes" ).val(+ $( "#slider" ).slider( "value" ) );
		  });
	 
	  $(function() {
		    $( "#datepicker" ).datepicker();
		  });
	  $(function() {
		    $( "#datepicker1" ).datepicker();
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
	    	
	    	document.getElementById("pnameerror").innerHTML="Name should be min 4 and max 32";
	    	
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
	    	
	    	document.getElementById("name123error").innerHTML="Name should be min 4 and max 32";
	    	
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
 <br><br>
 <div id="tabs">
       <ul>
          <li><a href="#tabs-1">1</a></li>
          <li><a href="#tabs-2">2</a></li>          
       </ul>
       <input type="hidden" name="symptom" id="symptom" value="${symptom}"> 
       <c:choose>
            <c:when test="${empty shoulderpain}">  
   <div id="tabs-1"> 
 <div id="right_content">
<form action="shoulderpainscore" method="POST" name="shoulderpain">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div id="block1">
	            <div class="headings altheading">
	              <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>SHOULDER PAIN SCORE</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
 <tr class="row1">
<td style="width: 127px; "><h4><span class="err">* </span>Patient Name:</h4></td><td width="400" style="width: 170px; "><input type="text"  name="pname" id="pname" onInput="return validatename(id)";/><span class="err" id="pnameerror"><form:errors path="Shoulderpainscore.pname"></form:errors></span></td>
<td style="width: 117px; "><h4><span class="err">* </span>Number:</h4></td><td width="400" style="width: 167px; "><input type="text"  name="number" maxlength="32" id="number1" onkeypress="return validate(event)";/><span class="err" id="number1error"><form:errors path="Shoulderpainscore.number"></form:errors></span><span class="err"> <div id="number"></span></div></td>
<td style="width: 115px; "><h4><span class="err">* </span>Date:</h4></td><td><input type="text"  id="datepicker" name="date" /><span class="err" id="datepickererror"><form:errors path="Shoulderpainscore.date"></form:errors></span></td>
</tr>
</table>
<table width="70%" align="center">
<tr class="row1">

<td></td><td width="250">Pain at rest:</td><td width="120"><input type="radio" name="painatrest" value="None">None</td><td width="120"><input type="radio" name="painatrest" value="Light">Light</td><td width="120"><input type="radio" name="painatrest" value="Average">Average</td><td width="120"><input type="radio" name="painatrest" value="Severe">Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Pain in motion:</td><td width="120"><input type="radio" name="paininmotion" value="None">None</td><td width="120"><input type="radio" name="paininmotion" value="Light">Light</td><td width="120"><input type="radio" name="paininmotion" value="Average">Average</td><td width="120"><input type="radio" name="paininmotion" value="Severe">Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Nightly pain:</td><td width="120"><input type="radio" name="nightlypain" value="None">None</td><td width="120"><input type="radio" name="nightlypain" value="Light">Light</td><td width="120"><input type="radio" name="nightlypain" value="Average">Average</td><td width="120"><input type="radio" name="nightlypain" value="Severe">Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Sleeping problem caused by pain:</td><td width="120"><input type="radio" name="sleepingproblem" value="None">None</td><td width="120"><input type="radio" name="sleepingproblem" value="Light">Light</td><td width="120"><input type="radio" name="sleepingproblem" value="Average">Average</td><td width="120"><input type="radio" name="sleepingproblem" value="Severe">Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Incapablity of lying on the painful side</td><td width="120"><input type="radio" name="incapability" value="None">None</td><td width="120"><input type="radio" name="incapability" value="Light">Light</td><td width="120"><input type="radio" name="incapability" value="Average">Average</td><td width="120"><input type="radio" name="incapability" value="Severe">Severe</td><td></td>
</tr>

<tr >
<td style="width: 148px; ">Degree of Radiation</td><td width="120"><input type="radio" name="degreeofradiation" value="None">None</td><td width="180" style="width: 256px; ">&nbsp;&nbsp;&nbsp;<input type="radio" name="degreeofradiation" value="Till halfway the upper Arm">Till halfway the upper Arm</td><td width="180">&nbsp;&nbsp;&nbsp;<input type="radio" name="degreeofradiation" value="Till the elbow">Till the elbow</td><td width="180">&nbsp;&nbsp;&nbsp;<input type="radio" name="degreeofradiation" value="Past the elbow">Past the elbow</td><td></td>
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
<input type="text" id="describes" name="painscale" onkeypress="return validate(event)"; onInput="checkLength(id)"/><span id="describeserr"></span>&nbsp;&nbsp;&nbsp;
</td>

</tr>
<tr height="30">
<td><div id="slider" style="width: 827px; "></div> </td>
</tr>
</table>
<!-- <td>
<div id="slider"></div>
</td><br/> -->
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
 <div id="block2">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print1" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block2');" >
	            <center> <h2>SHOULDER PAIN SCORE</h2> </center><br/>
	            
	            </div>
	    <div class="contentbox">
 <table cellpadding="0" cellspacing="0" border="0" width="98%"> 
 <tr class="row1">
<td>Date:</td><td><input type="text"  id="datepicker1" name="date1" /><span class="err" id="datepicker1error"></span></td>

<td>Scores total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  id="total" name="total" maxlength="32" onkeypress="return validate(event)";/>&nbsp;;&nbsp;[100]&nbsp;&nbsp;</td><td>[48]F:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  id="f" name="f" maxlength="32" onkeypress="return validate(event)";/>&nbsp;&nbsp;</td>

<tr class="row1">
<td>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" id="name123" name="name123" onInput="return validatename(id)"; /><span id="name123error" style="color: red;font-style:italic;"></span></td>
<td>Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  id="age" maxlength="32" name="age" onkeypress="return validate(event)";/></td>
</tr>
</table>
<br/>
<table>
<tr><td><h4>Instructions:Please circle the correct response</h4></td></tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="78%">
<tr class="row1">
<td>1)&nbsp;&nbsp;I have headaches:</td><td><input type="radio" name="headache" value="per month">per month</td>
<td><input type="radio" name="headache" value="more than but less than 4 per month">more than but less than 4 per month</td>
<td><input type="radio" name="headache" value="more than one per week">more than one per week</td>
</tr>
<tr class="row1">
<td>2)&nbsp;&nbsp; My headaches is:</td><td><input type="radio" name="myheadache" value="mild">mild</td>
<td><input type="radio" name="myheadache" value="moderate">moderate</td>
<td><input type="radio" name="myheadache" value="severe">severe</td>
</tr>
<table>
<tr><td><h4>Instructions:PLEASE READ CAREFULLY:</h4>The purpose of scale is to identify difficulties that you may be experiencing because of your headache.Please check off "YES" ,"SOMETIMES",or "NO" to each item.Answer each item as it pertains to your headache only.</td>
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
<td>E1.Because of my headaches I feel handihapped.</td><td><input type="radio" name="handihapped" value="Yes">Yes</td>
<td><input type="radio" name="handihapped" value="Sometimes">Sometimes</td>
<td><input type="radio" name="handihapped" value="No">No</td>
</tr>
<tr class="row1">
<td>F2.Because of my headaches I feel restricted in performing my routine daily activities.</td><td><input type="radio" name="restricted" value="Yes">Yes</td>
<td><input type="radio" name="restricted" value="Sometimes">Sometimes</td>
<td><input type="radio" name="restricted" value="No">No</td>
</tr>
<tr class="row1">
<td>E3.No one understands the effect my headache have on my life </td><td><input type="radio" name="understand" value="Yes">Yes</td>
<td><input type="radio" name="understand" value="Sometimes">Sometimes</td>
<td><input type="radio" name="understand" value="No">No</td>
</tr>
<tr class="row1">
<td>F4.I restrict my recreational activities(e.g sports,hobbies) because of my headaches </td><td><input type="radio" name="recreational" value="Yes">Yes</td>
<td><input type="radio" name="recreational" value="Sometimes">Sometimes</td>
<td><input type="radio" name="recreational" value="No">No</td>
</tr>
<tr class="row1">
<td>E5.My headache makes me angry </td><td><input type="radio" name="angry" value="Yes">Yes</td>
<td><input type="radio" name="angry" value="Sometimes">Sometimes</td>
<td><input type="radio" name="angry" value="No">No</td>
</tr>
<tr class="row1">
<td>E6.Sometimes I feel that I am going to lose my control because of my headaches </td><td><input type="radio" name="control" value="Yes">Yes</td>
<td><input type="radio" name="control" value="Sometimes">Sometimes</td>
<td><input type="radio" name="control" value="No">No</td>
</tr>
<tr class="row1">
<td>F7.Because of my headaches I am less likely to socialize.  </td><td><input type="radio" name="socialize" value="Yes">Yes</td>
<td><input type="radio" name="socialize" value="Sometimes">Sometimes</td>
<td><input type="radio" name="socialize" value="No">No</td>
</tr>
<tr class="row1">
<td>E8.My spouse/significant other,or family and friends have no idea what I am going through because of my headaches.  </td><td><input type="radio" name="family" value="Yes">Yes</td>
<td><input type="radio" name="family" value="Sometimes">Sometimes</td>
<td><input type="radio" name="family" value="No">No</td>
</tr>
<tr class="row1">
<td>E9.My headaches are so bad that I feel I am going to go insane.</td><td><input type="radio" name="insane" value="Yes">Yes</td>
<td><input type="radio" name="insane" value="Sometimes">Sometimes</td>
<td><input type="radio" name="insane" value="No">No</td>
</tr>
<tr class="row1">
<td>E10.My outlook on the world is affected by my headaches.</td><td><input type="radio" name="outlook" value="Yes">Yes</td>
<td><input type="radio" name="outlook" value="Sometimes">Sometimes</td>
<td><input type="radio" name="outlook" value="No">No</td>
</tr>
<tr class="row1">
<td>E11.I am afraid to go outside when I feel a headache is starting.</td><td><input type="radio" name="afraid" value="Yes">Yes</td>
<td><input type="radio" name="afraid" value="Sometimes">Sometimes</td>
<td><input type="radio" name="afraid" value="No">No</td>
</tr>
<tr class="row1">
<td>E12.I feel desperate because of my headaches</td><td><input type="radio" name="desperate" value="Yes">Yes</td>
<td><input type="radio" name="desperate" value="Sometimes">Sometimes</td>
<td><input type="radio" name="desperate" value="No">No</td>
</tr>
<tr class="row1">
<td>F13.I am concerned that I am paying penalties at work or at home because of my headaches.</td><td><input type="radio" name="penalties" value="Yes">Yes</td>
<td><input type="radio" name="penalties" value="Sometimes">Sometimes</td>
<td><input type="radio" name="penalties" value="No">No</td>
</tr>
<tr class="row1">
<td>E14.My headaches place stress on my relationships with my family or friends.</td><td><input type="radio" name="relationship" value="Yes">Yes</td>
<td><input type="radio" name="relationship" value="Sometimes">Sometimes</td>
<td><input type="radio" name="relationship" value="No">No</td>
</tr>
<tr class="row1">
<td>F15.I avoid being around people when I have a headache.</td><td><input type="radio" name="avoid" value="Yes">Yes</td>
<td><input type="radio" name="avoid" value="Sometimes">Sometimes</td>
<td><input type="radio" name="avoid" value="No">No</td>
</tr>
<tr class="row1">
<td>F16.I believe my headaches are making it difficult for me to achieve my goals in life. </td><td><input type="radio" name="goals" value="Yes">Yes</td>
<td><input type="radio" name="goals" value="Sometimes">Sometimes</td>
<td><input type="radio" name="goals" value="No">No</td>
</tr>
<tr class="row1">
<td>F17.I am unable to think clearly because of my headaches </td><td><input type="radio" name="clear" value="Yes">Yes</td>
<td><input type="radio" name="clear" value="Sometimes">Sometimes</td>
<td><input type="radio" name="clear" value="No">No</td>
</tr>
<tr class="row1">
<td>F18.I get tense (e.g.muscle tension)because of my headache. </td><td><input type="radio" name="tension" value="Yes">Yes</td>
<td><input type="radio" name="tension" value="Sometimes">Sometimes</td>
<td><input type="radio" name="tension" value="No">No</td>
</tr>
<tr class="row1">
<td>F19.I do not enjoy social gatherings because of my headaches </td><td><input type="radio" name="gatherings" value="Yes">Yes</td>
<td><input type="radio" name="gatherings" value="Sometimes">Sometimes</td>
<td><input type="radio" name="gatherings" value="No">No</td>
</tr>
<tr class="row1">
<td>E20.I feel irritable because of my headaches. </td><td><input type="radio" name="irritable" value="Yes">Yes</td>
<td><input type="radio" name="irritable" value="Sometimes">Sometimes</td>
<td><input type="radio" name="irritable" value="No">No</td>
</tr>
<tr class="row1">
<td>F21.I avoid travelling because of my headaches. </td><td><input type="radio" name="travelling" value="Yes">Yes</td>
<td><input type="radio" name="travelling" value="Sometimes">Sometimes</td>
<td><input type="radio" name="travelling" value="No">No</td>
</tr>
<tr class="row1">
<td>E22.My headaches makes me feel confused. </td><td><input type="radio" name="confused" value="Yes">Yes</td>
<td><input type="radio" name="confused" value="Sometimes">Sometimes</td>
<td><input type="radio" name="confused" value="No">No</td>
</tr>
<tr class="row1">
<td>E23.My headaches makes me feel frustrated. </td><td><input type="radio" name="frustrated" value="Yes">Yes</td>
<td><input type="radio" name="frustrated" value="Sometimes">Sometimes</td>
<td><input type="radio" name="frustrated" value="No">No</td>
</tr>
<tr class="row1">
<td>F24.I find it difficult to read because of my headaches </td><td><input type="radio" name="difficult" value="Yes">Yes</td>
<td><input type="radio" name="difficult" value="Sometimes">Sometimes</td>
<td><input type="radio" name="difficult" value="No">No</td>
</tr>
<tr class="row1">
<td>F25.I find it difficult to focus my attention away from my headaches and on other things. </td><td><input type="radio" name="attention" value="Yes">Yes</td>
<td><input type="radio" name="attention" value="Sometimes">Sometimes</td>
<td><input type="radio" name="attention" value="No">No</td>
</tr>
<table>
<br/>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
<td><a href="viewshoulderpainscore"  style="color: white" id="cancelid" class="submit_btn" onclick="window.close()">Cancel</a></td>
</tr>
</table>
</table>
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
<td><h2><span class="err">*</span>Patient Name:</h2></td><td width="400"><input type="text"  name="pname" value="${shoulderpain.pname }"/><span class="err"><form:errors path="Shoulderpainscore.pname"></form:errors></span></td>
<td><h2><span class="err">*</span>Number:</h2></td><td width="400"><input type="text"  name="number" id="number1" value="${shoulderpain.number}"/><span class="err"><form:errors path="Shoulderpainscore.number"></form:errors></span><span class="err"> <div id="number"></span></div></td>
<td><h2><span class="err">*</span>Date:</h2></td><td><input type="text"  id="datepicker" name="date" value="${shoulderpain.date}"/><span class="err"><form:errors path="Shoulderpainscore.date"></form:errors></span></td>
</tr>
</table>
<table width="70%" align="center">
<tr class="row1">

<td></td><td width="250">Pain at rest:</td><td width="120"><input type="radio" name="painatrest" value="None" <c:if test="${shoulderpain.painatrest=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="painatrest" value="Light" <c:if test="${shoulderpain.painatrest=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="painatrest" value="Average" <c:if test="${shoulderpain.painatrest=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="painatrest" value="Severe" <c:if test="${shoulderpain.painatrest=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Pain in motion:</td><td width="120"><input type="radio" name="paininmotion" value="None" <c:if test="${shoulderpain.paininmotion=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="paininmotion" value="Light" <c:if test="${shoulderpain.paininmotion=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="paininmotion" value="Average" <c:if test="${shoulderpain.paininmotion=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="paininmotion" value="Severe" <c:if test="${shoulderpain.paininmotion=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Nightly pain:</td><td width="120"><input type="radio" name="nightlypain" value="None" <c:if test="${shoulderpain.nightlypain=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="nightlypain" value="Light" <c:if test="${shoulderpain.nightlypain=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="nightlypain" value="Average" <c:if test="${shoulderpain.nightlypain=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="nightlypain" value="Severe" <c:if test="${shoulderpain.nightlypain=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Sleeping problem caused by pain:</td><td width="120"><input type="radio" name="sleepingproblem" value="None" <c:if test="${shoulderpain.sleepingproblem=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="sleepingproblem" value="Light" <c:if test="${shoulderpain.sleepingproblem=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="sleepingproblem" value="Average" <c:if test="${shoulderpain.sleepingproblem=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="sleepingproblem" value="Severe" <c:if test="${shoulderpain.sleepingproblem=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
<tr class="row1">
<td></td><td width="250">Incapablity of lying on the painful side</td><td width="120"><input type="radio" name="incapability" value="None" <c:if test="${shoulderpain.incapability=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="120"><input type="radio" name="incapability" value="Light" <c:if test="${shoulderpain.incapability=='Light'}"> <c:out value="checked"></c:out></c:if>>Light</td><td width="120"><input type="radio" name="incapability" value="Average" <c:if test="${shoulderpain.incapability=='Average'}"> <c:out value="checked"></c:out></c:if>>Average</td><td width="120"><input type="radio" name="incapability" value="Severe" <c:if test="${shoulderpain.incapability=='Severe'}"> <c:out value="checked"></c:out></c:if>>Severe</td><td></td>
</tr>
</table>
<table width="100%" align="center">
<tr class="row1">
<td width="250">Degree of Radiation</td><td width="180"><input type="radio" name="degreeofradiation" value="None" <c:if test="${shoulderpain.degreeofradiation=='None'}"> <c:out value="checked"></c:out></c:if>>None</td><td width="180"><input type="radio" name="degreeofradiation" value="Till halfway the upper Arm" <c:if test="${shoulderpain.degreeofradiation=='Till half way the upper Arm'}"> <c:out value="checked"></c:out></c:if>>Till halfway the upper Arm</td><td width="180"><input type="radio" name="degreeofradiation" value="Till the elbow" <c:if test="${shoulderpain.degreeofradiation=='Till the elbow'}"> <c:out value="checked"></c:out></c:if>>Till the elbow</td><td width="180"><input type="radio" name="degreeofradiation" value="Past the elbow" <c:if test="${shoulderpain.degreeofradiation=='Past the elbow'}"> <c:out value="checked"></c:out></c:if>>Past the elbow</td><td></td>
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
<input type="text" id="describes" name="painscale" value="${shoulderpain.painscale}"/>&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr height="30">
<td>
<div id="slider"></div>
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
<td>Date:</td><td><input type="text"  id="datepicker" name="date1" value="${shoulderpain.date1 }"/></td>
<td width="200">
<td>Scores total:</td><td><input type="text"  id="total" name="total" value="${shoulderpain.total }"/>&nbsp;;&nbsp;[100]&nbsp;&nbsp;</td><td>[48]F:</td><td><input type="text"  id="f" name="f" value="${shoulderpain.f }"/>&nbsp;&nbsp;</td>
</tr>
</table>
 <table cellpadding="0" cellspacing="0" border="0" width="98%">
<tr class="row1">
<td>Name:</td><td><input type="text" id="name123" name="name123" value="${shoulderpain.name123 }"/></td>
<td width="600">
<td>Age:</td><td><input type="text"  id="age" name="age" value="${shoulderpain.age}"/></td>
</tr>
</table>
<br/>
<table>
<tr><td><h2>Instructions:Please circle the correct response</h2></td></tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="78%">
<tr class="row1">
<td>1)&nbsp;&nbsp;I have headaches:</td><td><input type="radio" name="headache" value="per month" <c:if test="${shoulderpain.headache=='per month'}"> <c:out value="checked"></c:out></c:if>>per month</td>
<td><input type="radio" name="headache" value="more than but less than 4 per month" <c:if test="${shoulderpain.headache=='more than but less than 4 per month'}"> <c:out value="checked"></c:out></c:if>>more than but less than 4 per month</td>
<td><input type="radio" name="headache" value="more than one per week" <c:if test="${shoulderpain.headache=='more than one per week'}"> <c:out value="checked"></c:out></c:if>>more than one per week</td>
</tr>
<tr class="row1">
<td>2)&nbsp;&nbsp; My headaches is:</td><td><input type="radio" name="myheadache" value="mild" <c:if test="${shoulderpain.myheadache=='mild'}"> <c:out value="checked"></c:out></c:if>>mild</td>
<td><input type="radio" name="myheadache" value="moderate" <c:if test="${shoulderpain.headache=='moderate'}"> <c:out value="checked"></c:out></c:if>>moderate</td>
<td><input type="radio" name="myheadache" value="severe" <c:if test="${shoulderpain.headache=='severe'}"> <c:out value="checked"></c:out></c:if>>severe</td>
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
<td>E1.Because of my headaches I feel handihapped.</td><td><input type="radio" name="handihapped" value="Yes" <c:if test="${shoulderpain.handihapped=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="handihapped" value="Sometimes" <c:if test="${shoulderpain.handihapped=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="handihapped" value="No" <c:if test="${shoulderpain.handihapped=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F2.Because of my headaches I feel restricted in performing my routine daily activities.</td><td><input type="radio" name="restricted" value="Yes" <c:if test="${shoulderpain.restricted=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="restricted" value="Sometimes" <c:if test="${shoulderpain.restricted=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="restricted" value="No" <c:if test="${shoulderpain.restricted=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E3.No one understands the effect my headache have on my life </td><td><input type="radio" name="understand" value="Yes" <c:if test="${shoulderpain.understand=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="understand" value="Sometimes" <c:if test="${shoulderpain.understand=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="understand" value="No" <c:if test="${shoulderpain.understand=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F4.I restrict my recreational activities(e.g sports,hobbies) because of my headaches </td><td><input type="radio" name="recreational" value="Yes" <c:if test="${shoulderpain.recreational=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="recreational" value="Sometimes" <c:if test="${shoulderpain.recreational=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="recreational" value="No" <c:if test="${shoulderpain.recreational=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E5.My headache makes me angry </td><td><input type="radio" name="angry" value="Yes" <c:if test="${shoulderpain.angry=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="angry" value="Sometimes" <c:if test="${shoulderpain.angry=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="angry" value="No" <c:if test="${shoulderpain.angry=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E6.Sometimes I feel that I am going to lose my control because of my headaches </td><td><input type="radio" name="control" value="Yes" <c:if test="${shoulderpain.control=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="control" value="Sometimes" <c:if test="${shoulderpain.control=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="control" value="No" <c:if test="${shoulderpain.control=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F7.Because of my headaches I am less likely to socialize.  </td><td><input type="radio" name="socialize" value="Yes" <c:if test="${shoulderpain.socialize=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="socialize" value="Sometimes" <c:if test="${shoulderpain.socialize=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="socialize" value="No" <c:if test="${shoulderpain.socialize=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E8.My spouse/significant other,or family and friends have no idea what I am going through because of my headaches.  </td><td><input type="radio" name="family" value="Yes" <c:if test="${shoulderpain.family=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="family" value="Sometimes" <c:if test="${shoulderpain.family=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="family" value="No" <c:if test="${shoulderpain.family=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E9.My headaches are so bad that I feel I am going to go insane.</td><td><input type="radio" name="insane" value="Yes" <c:if test="${shoulderpain.insane=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="insane" value="Sometimes" <c:if test="${shoulderpain.insane=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="insane" value="No" <c:if test="${shoulderpain.insane=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E10.My outlook on the world is affected by my headaches.</td><td><input type="radio" name="outlook" value="Yes" <c:if test="${shoulderpain.outlook=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="outlook" value="Sometimes" <c:if test="${shoulderpain.outlook=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="outlook" value="No" <c:if test="${shoulderpain.outlook=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E11.I am afraid to go outside when I feel a headache is starting.</td><td><input type="radio" name="afraid" value="Yes" <c:if test="${shoulderpain.afraid=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="afraid" value="Sometimes" <c:if test="${shoulderpain.afraid=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="afraid" value="No" <c:if test="${shoulderpain.afraid=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E12.I feel desperate because of my headaches</td><td><input type="radio" name="desperate" value="Yes" <c:if test="${shoulderpain.desperate=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="desperate" value="Sometimes" <c:if test="${shoulderpain.desperate=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="desperate" value="No" <c:if test="${shoulderpain.desperate=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F13.I am concerned that I am paying penalties at work or at home because of my headaches.</td><td><input type="radio" name="penalties" value="Yes" <c:if test="${shoulderpain.penalties=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="penalties" value="Sometimes" <c:if test="${shoulderpain.penalties=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="penalties" value="No" <c:if test="${shoulderpain.penalties=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E14.My headaches place stress on my relationships with my family or friends.</td><td><input type="radio" name="relationship" value="Yes" <c:if test="${shoulderpain.relationship=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="relationship" value="Sometimes" <c:if test="${shoulderpain.relationship=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="relationship" value="No" <c:if test="${shoulderpain.relationship=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F15.I avoid being around people when I have a headache.</td><td><input type="radio" name="avoid" value="Yes" <c:if test="${shoulderpain.avoid=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="avoid" value="Sometimes" <c:if test="${shoulderpain.avoid=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="avoid" value="No" <c:if test="${shoulderpain.avoid=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F16.I believe my headaches are making it difficult for me to achieve my goals in life. </td><td><input type="radio" name="goals" value="Yes" <c:if test="${shoulderpain.goals=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="goals" value="Sometimes" <c:if test="${shoulderpain.goals=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="goals" value="No" <c:if test="${shoulderpain.goals=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F17.I am unable to think clearly because of my headaches </td><td><input type="radio" name="clear" value="Yes" <c:if test="${shoulderpain.clear=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="clear" value="Sometimes" <c:if test="${shoulderpain.clear=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="clear" value="No" <c:if test="${shoulderpain.clear=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F18.I get tense (e.g.muscle tension)because of my headache. </td><td><input type="radio" name="tension" value="Yes" <c:if test="${shoulderpain.tension=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="tension" value="Sometimes" <c:if test="${shoulderpain.tension=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="tension" value="No" <c:if test="${shoulderpain.tension=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F19.I do not enjoy social gatherings because of my headaches </td><td><input type="radio" name="gatherings" value="Yes" <c:if test="${shoulderpain.gatherings=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="gatherings" value="Sometimes" <c:if test="${shoulderpain.gatherings=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="gatherings" value="No" <c:if test="${shoulderpain.gatherings=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E20.I feel irritable because of my headaches. </td><td><input type="radio" name="irritable" value="Yes" <c:if test="${shoulderpain.irritable=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="irritable" value="Sometimes" <c:if test="${shoulderpain.irritable=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="irritable" value="No" <c:if test="${shoulderpain.irritable=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F21.I avoid travelling because of my headaches. </td><td><input type="radio" name="travelling" value="Yes" <c:if test="${shoulderpain.travelling=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="travelling" value="Sometimes" <c:if test="${shoulderpain.travelling=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="travelling" value="No" <c:if test="${shoulderpain.restricted=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E22.My headaches makes me feel confused. </td><td><input type="radio" name="confused" value="Yes" <c:if test="${shoulderpain.confused=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="confused" value="Sometimes" <c:if test="${shoulderpain.confused=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="confused" value="No" <c:if test="${shoulderpain.confused=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>E23.My headaches makes me feel frustrated. </td><td><input type="radio" name="frustrated" value="Yes" <c:if test="${shoulderpain.frustrated=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="frustrated" value="Sometimes" <c:if test="${shoulderpain.frustrated=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="frustrated" value="No" <c:if test="${shoulderpain.frustrated=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F24.I find it difficult to read because of my headaches </td><td><input type="radio" name="difficult" value="Yes" <c:if test="${shoulderpain.difficult=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="difficult" value="Sometimes" <c:if test="${shoulderpain.difficult=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="difficult" value="No" <c:if test="${shoulderpain.difficult=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<tr class="row1">
<td>F25.I find it difficult to focus my attention away from my headaches and on other things. </td><td><input type="radio" name="attention" value="Yes" <c:if test="${shoulderpain.attention=='Yes'}"> <c:out value="checked"></c:out></c:if>>Yes</td>
<td><input type="radio" name="attention" value="Sometimes" <c:if test="${shoulderpain.attention=='Sometimes'}"> <c:out value="checked"></c:out></c:if>>Sometimes</td>
<td><input type="radio" name="attention" value="No" <c:if test="${shoulderpain.attention=='No'}"> <c:out value="checked"></c:out></c:if>>No</td>
</tr>
<table>
<br/>
<table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update"></td>
<td><a href="viewshoulderpainscore"  style="color: white" id="cancelid" class="submit_btn" onclick="window.close()">Cancel</a></td>
</tr>
</table>
 </table>
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
</div>
</body>
</html>
