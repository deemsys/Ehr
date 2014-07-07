<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="resources/css/tabs.css" type="text/css" />
 <script src="resources/js/tabs-1.9.1.js"></script>
  <script src="resources/js/tabs-ui.js"></script>
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
   </head>
   
   <script>
$(function() {
    $( "#slider" ).slider({
      value:1,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount" ).val(+ ui.value );
        document.getElementById("amounterr").innerHTML="";
        if(document.getElementById("amount").value==0)
        {
        document.getElementById("amounterr").innerHTML="No Pain";
        return false;
        }
        if(document.getElementById("amount").value==10)
        {
        document.getElementById("amounterr").innerHTML="Severe Pain";
        return false;
        }
        //var a=document.getElementById("amount").value;
       // a.show();
      }
    });
    $( "#soapnotes.painscale" ).val(+ $( "#slider" ).slider( "value" ) );
    
  });

$(function() {
    $( "#slider1" ).slider({
      value:0,
      min: 0,
       max: 10,
        step: 1,
      slide: function( event, ui ) {
        $( "#amount1" ).val(+ ui.value );
       
       
    document.getElementById("amount1err").innerHTML="";
     if(document.getElementById("amount1").value==0)
    {
 
   document.getElementById("amount1err").innerHTML="No pain";
   return false;
    }
   
     if(document.getElementById("amount1").value==10)
    {
    
    document.getElementById("amount1err").innerHTML="Severe pain";
    return false;
    }
        
      }
    });
    $( "#soapnotes.painscale1" ).val(+ $( "#slider1" ).slider( "value" ) );

    
    
  });


$(function() {
    $( "#slider2" ).slider({
      value:1,
      min: 0,
      max: 10,
      step: 1,
      slide: function( event, ui ) {
        $( "#amount2" ).val(+ ui.value );
         document.getElementById("amount2err").innerHTML="";
         if(document.getElementById("amount2").value==10)
    {
   // alert("Severe pain");
   document.getElementById("amount2err").innerHTML="Severe pain";
    }
    
     if(document.getElementById("amount2").value==0)
    {
    //alert("No pain");
     document.getElementById("amount2err").innerHTML="No pain";
    }
      }
    });
    $( "soapnotes.painscale2" ).val(+ $( "#slider2" ).slider( "value" ) );
  });

</script>
 <script type="text/javascript">
function Checksymptom(val){
 var element=document.getElementById('offwork1');
 if(val=='offwork'|| val=='reeval')
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
$(function() {
    $( "#datepicker2" ).datepicker();
  });
$(function() {
    $( "#datepicker3" ).datepicker();
  });
$(function() {
    $( "#datepicker4" ).datepicker();
  });
$(function() {
    $( "#datepicker5" ).datepicker();
  });
$(function() {
    $( "#datepicker6" ).datepicker();
  });
$(function() {
    $( "#datepicker7" ).datepicker();
  });
$(function() {
    $( "#datepicker8" ).datepicker();
  });
</script>
<script type="text/javascript">
       function Validate(event) {
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
	function checkSubmit()
	{	
		 var regex = /^[A-Za-z0-9 ]*$/;
   	 var error="";
   	document.getElementById("pnameerr").innerHTML="";
   	document.getElementById("signerror").innerHTML="";
    
 	 if((document.getElementById("diagonosis").value.length < 4) || (document.getElementById("diagonosis").value.length > 32))
		{
		alert("DFGDF");
		document.getElementById("diagnosiserr1").innerHtml="Required Field Should between 4 to 32";	
		error="true";
		}
 	 else
 		 {
 		document.getElementById("diagnosiserr1").innerHtml="";
 		 }
  	   if(document.getElementById("e1e2").value == "ExtremitiesX-Rays")
  		   {
  		 
  	   if(document.getElementById("xray").value == "")
    	   {
    	  
    	   document.getElementById("xrayerror").innerHTML="Required Field should not be blank";
    	    error="true";
    	   }
  	   else if(document.getElementById("xray").value.charAt(0) == " ")
    	   {
    	  
    	   document.getElementById("xrayerror").innerHTML="Initial space not allowed";
    	    error="true";
    	   }
  	   else if(document.getElementById("xray").value.match(regex))
  		   {
  		   document.getElementById("xrayerror").innerHTML="";
  		   }
  	   else
  		   {
  		   document.getElementById("xrayerror").innerHTML="Required Field should be Alpha-Numeric";
        	    error="true";
  		   }
  	   
  		   }
  	   else{
  		   document.getElementById("xrayerror").innerHTML="";
  	   }
  	
  	 
	
	if(document.getElementById("pname").value=="")
		{	
		document.getElementById("pnameerr").innerHTML="Required Field Should Not Empty";	
		 error="true";
		}
	else if((document.getElementById("pname").value.length < 4) || (document.getElementById("pname").value.length > 45))
	{
	document.getElementById("pnameerr").innerHTML="Required Field Should between 4 to 45";	
	 error="true";
	}
		
		if(document.getElementById("sign").value=="")
		{	
		document.getElementById("signerror").innerHTML="Required Field Should Not Empty";	
		 error="true";
		}
		else if((document.getElementById("sign").value.length < 4) || (document.getElementById("sign").value.length > 45))
		{
		document.getElementById("signerror").innerHTML="Required Field Should between 4 to 45";	
		 error="true";
		}
		document.getElementById("datepicker1error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		document.getElementById("datepicker2error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker2").value !="") {
		  if (re.test(document.getElementById("datepicker2").value) == false) {
			  document.getElementById("datepicker2error").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		document.getElementById("datepickererror").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker").value !="") {
		  if (re.test(document.getElementById("datepicker").value) == false) {
			  document.getElementById("datepickererror").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		document.getElementById("datepicker3error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker3").value !="") {
		  if (re.test(document.getElementById("datepicker3").value) == false) {
			  document.getElementById("datepicker3error").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		document.getElementById("datepicker4error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker4").value !="") {
		  if (re.test(document.getElementById("datepicker4").value) == false) {
			  document.getElementById("datepicker4error").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		document.getElementById("datepicker5error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker5").value !="") {
		  if (re.test(document.getElementById("datepicker5").value) == false) {
			  document.getElementById("datepicker5error").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		document.getElementById("datepicker6error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker6").value !="") {
		  if (re.test(document.getElementById("datepicker6").value) == false) {
			  document.getElementById("datepicker6error").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		document.getElementById("datepicker7error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker7").value !="") {
		  if (re.test(document.getElementById("datepicker7").value) == false) {
			  document.getElementById("datepicker7error").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		document.getElementById("datepicker8error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker8").value !="") {
		  if (re.test(document.getElementById("datepicker8").value) == false) {
			  document.getElementById("datepicker8error").innerHTML="Invalid Date Format";
			   error="true";
		  }
		}
		
		 if(error == "true")
			{
			 alert("false");
			return false;
			}
		}
		
		</script>
		
		<script>
		 window.onload = function()
/* function enableTextbox() */ {
			 rightcheck();
if (document.getElementById("e1e2").value == "ExtremitiesX-Rays") {
document.getElementById("xray").style.visibility = 'visible';

//document.getElementById("xray").disabled = false;
}
else  {
document.getElementById("xray").style.visibility = 'hidden';
//document.getElementById("xray").disabled = true;


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
    
    if(fieldVal <=100){
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
<body>
<br><br>
<form  method="POST" action="updatesoapnotes" name="update" id="update">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>Editing Soap Notes</h2> </center><br/>
	             <!-- <td><a href="doctorsearch">doctersearch</a></td> -->
	            
	            </div></div>
	            
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           <tr>
    				<td align="left" valign="top" width="50%" style="padding-right:25px;">
    					<!-- <h2 class="quck-txt">Patient Details</h2> -->
    					<c:set value="${soapnotesForm.soapnotes[0]}" var="soapnotes"/>
    					<br>
<table align="right">
    <tr class="row1">
       <td><h2><span class="err">*</span> Patient:</h2></td>
             <input type="hidden" value="${username}" name="username" />
              <input type="hidden" class="input_txtbx1" id="inp_id" value="${soapnotes.soapid}" name="soapid" />
              <td><input type="text" class="input_txtbx1" name="pname" id="pname" onInput="return validatename(id)"; value="${soapnotes.pname}" /><span class="err" id="pnameerr"><form:errors path="SoapNotes.pname"></form:errors></span></td>
             </tr>
        </table>
        
 <table cellpadding="0" cellspacing="0" border="0" width="98%">
<tr class="row1">
<td>Chief Complaint:</td>
<td><input type="checkbox" name="headache" value="Headache" <c:if test="${soapnotes.headache=='Headache'}"><c:out value="Checked"/></c:if>   />Headache</td>
<td><input type="checkbox" name="neckpain" value="Neck pain" <c:if test="${soapnotes.neckpain=='Neck pain'}"><c:out value="checked=checked"/></c:if>>Neck Pain</td>
<td><input type="checkbox" name="rightshoulderpain" value="Right Shoulder pain" <c:if test="${soapnotes.rightshoulderpain=='Right Shoulder pain'}"><c:out value="checked=checked"/></c:if>>Right Shoulder pain</td>
<td><input type="checkbox" name="leftshoulderpain" value="Left Shoulder Pain" <c:if test="${soapnotes.leftshoulderpain=='Left Shoulder Pain'}"><c:out value="checked=checked"/></c:if>>Left Shoulder Pain</td>
<td><input type="checkbox" name="chestpain" value="Chest Pain" <c:if test="${soapnotes.chestpain=='Chest Pain'}"><c:out value="checked=checked"/></c:if>>Chest Pain</td>
<td><input type="checkbox" name="rightarmpain" id="rightarmpain" onclick="rightcheck()" value="Right Arm Pain" <c:if test="${soapnotes.rightarmpain=='Right Arm Pain'}"><c:out value="checked=checked"/></c:if>>Right Arm Pain

<br>
<select name="rightproxi" id="rightproxi" style="display:none">
<option <c:if test="${soapnotes.rightproxi=='proximal'}"><c:out value="selected"/></c:if> value="proximal">proximal</option>
<option <c:if test="${soapnotes.rightproxi=='distal'}"><c:out value="selected"/></c:if> value="distal">distal portion</option></select>


</td>
<td><input type="checkbox" id="leftarmpain" name="leftarmpain" value="Left Arm Pain"  onclick="rightcheck()" <c:if test="${soapnotes.leftarmpain=='Left Arm Pain'}"><c:out value="checked=checked"/></c:if>>Left Arm Pain
<br>
<select name="leftproxi" id="leftproxi" style="display:none">
<option <c:if test="${soapnotes.leftproxi=='proximal'}"><c:out value="selected"/></c:if> value="proximal">proximal</option>
<option <c:if test="${soapnotes.leftproxi=='distal'}"><c:out value="selected"/></c:if> value="distal">distal portion</option></select>

</td>
<script>
$(function() {
	$("#pname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
	

$(function() {
	$("#diagonosis").on("keypress", function(e) {
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
	$("#xray").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
	
	</script>
<script type="text/javascript">
function validatename(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}  

function validatename1(id){
	
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z0-9 ]/g, "");
    document.getElementById(id).value = textInput;
}  
       /* function validate1(event,id) {
        
        
        
           var regex = new RegExp("^[A-Za-z ]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
         
           if(document.getElementById(id).value.substring(0,1)==" ")
        	{
        	
        	   if(id == "pname"){
        		document.getElementById("pnameerr").innerHTML="Initial space not allowed";
        	   }
        	   if(id=="diagonosis")
        		   {
        		   document.getElementById("diagnosiserr").innerHTML="Initial space not allowed";
        		   
        		   }
        	   if(id=="sign")
        		   {
        		   document.getElementById("signerror").innerHTML="Initial space not allowed";
        		   }
        	
        	   
        		document.getElementById(id).value == "";
        		return false;
        	}
           else{
        	   if(id == "pname"){
        		   document.getElementById("pnameerr").innerHTML="";
           	   }
           	   if(id="diagonosis")
           		   {
           		document.getElementById("diagnosiserr").innerHTML="";
           		   
           		   }
           	 if(id="sign")
  		   {
  		   document.getElementById("signerror").innerHTML="";
  		   }
           	
        	   
           }
           
       }  */
       function onloading()
       {
    	   if(document.getElementById("e1e2").value == "ExtremitiesX-Rays")
		   {
		
		   document.getElementById("xray").style.display='block';
		   }
       }
       function validate2()
       {
    	   var regex = /^[A-Za-z0-9 ]*$/;
    	 
    	   if(document.getElementById("e1e2").value == "ExtremitiesX-Rays")
    		   {
    		 
    	   if(document.getElementById("xray").value == "")
      	   {
      	  
      	   document.getElementById("xrayerror").innerHTML="Required Field should not be blank";
      	   return false;
      	   }
    	   else if(document.getElementById("xray").value.charAt(0) == " ")
      	   {
      	  
      	   document.getElementById("xrayerror").innerHTML="Initial space not allowed";
      	   return false;
      	   }
    	   else if(document.getElementById("xray").value.match(regex))
    		   {
    		   document.getElementById("xrayerror").innerHTML="";
    		   }
    	   else
    		   {
    		   document.getElementById("xrayerror").innerHTML="Required Field should be Alpha-Numeric";
          	   return false;
    		   }
    	   
    		   }
    	   else{
    		   document.getElementById("xrayerror").innerHTML="";
    	   }
       }
       
    </script>

<script>
function rightcheck()
{

if(document.getElementById("rightarmpain").checked)
	{
	document.getElementById("rightproxi").style.display="table-row";
	}
else
	{
	document.getElementById("rightproxi").style.display="none";
	}
	if(document.getElementById("leftarmpain").checked)
{
document.getElementById("leftproxi").style.display="table-row";
}
else
{
document.getElementById("leftproxi").style.display="none";
}
if(document.getElementById("rightrib").checked)
{
document.getElementById("amount1").style.display="table-row";
document.getElementById("slider1").style.display="block";
document.getElementById("label").style.display="table-row";

}
else
{
	document.getElementById("amount1").style.display="none";
	document.getElementById("slider1").style.display="none";
	document.getElementById("label").style.display="none";
}
if(document.getElementById("leftrib").checked)
{
document.getElementById("amount2").style.display="table-row";
document.getElementById("slider2").style.display="block";
document.getElementById("label1").style.display="table-row";

}
else
{
	document.getElementById("amount2").style.display="none";
	document.getElementById("slider2").style.display="none";
	document.getElementById("label1").style.display="none";
}

}
</script>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightelbowpain" value="Right Elbow Pain" <c:if test="${soapnotes.rightelbowpain=='Right Elbow Pain'}"><c:out value="checked=checked"/></c:if>>Right Elbow Pain</td>
<td><input type="checkbox" name="leftelbowpain" value="Left Elbow Pain" <c:if test="${soapnotes.leftelbowpain=='Left Elbow Pain'}"><c:out value="checked=checked"/></c:if>>Left Elbow Pain</td>
<td><input type="checkbox" name="rightwristpain" value="Right Wrist Pain" <c:if test="${soapnotes.rightwristpain=='Right Wrist Pain'}"><c:out value="checked=checked"/></c:if>>Right Wrist pain</td>
<td><input type="checkbox" name="leftwristpain" value="Left Wrist Pain" <c:if test="${soapnotes.leftwristpain=='Left Wrist Pain'}"><c:out value="checked=checked"/></c:if>>Left Wrist Pain</td>
<td><input type="checkbox" name="righthandpain" value="Right Hand Pain" <c:if test="${soapnotes.righthandpain=='Right Hand Pain'}"><c:out value="checked=checked"/></c:if>>Right Hand Pain</td>
<td><input type="checkbox" name="lefthandpain" value="Left Hand Pain" <c:if test="${soapnotes.lefthandpain=='Left Hand Pain'}"><c:out value="checked=checked"/></c:if>>Left Hand Pain</td>
<td><input type="checkbox" name="mbp" value="MBP" <c:if test="${soapnotes.mbp=='MBP'}"><c:out value="checked=checked"/></c:if>>MBP</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightribpain" value="Right Rib Pain"  id="rightrib" onclick="rightcheck()" <c:if test="${soapnotes.rightribpain=='Right Rib Pain'}"><c:out value="checked=checked"/></c:if>>Right Rib Pain
<label for="amount1" style="width: 50;display:none;" id="label"><b>Pain Scale:</b></label>
	 <input type="text" id="amount1" style="border:0;display:none; width: 50;color:#f6931f; font-weight:bold;" name="painscale1" value="${soapnotes.painscale1}"/><span id="amount1err"></span>&nbsp;&nbsp;&nbsp;
 <div id="slider1" style="width: 130; display:none"></div>


</td>
<td><input type="checkbox" name="leftribpain" value="Left Rib Pain" id="leftrib" onclick="rightcheck()" <c:if test="${soapnotes.leftribpain=='Left Rib Pain'}"><c:out value="checked=checked"/></c:if>>Left Rib Pain
 <label for="amount2" style="width: 50;display:none;" id="label1"><b>Pain Scale:</b></label>
	 <input type="text" id="amount2" style="border:0;display:none; width: 50;color:#f6931f; font-weight:bold;" name="painscale2" value="${soapnotes.painscale2}"/><span id="amount2err"></span>&nbsp;&nbsp;&nbsp;
 <div id="slider2" style="width: 130; display:none;"> 

</td>
<td><input type="checkbox" name="lbp" value="LBP" <c:if test="${soapnotes.lbp=='LBP'}"><c:out value="checked=checked"/></c:if>>LBP</td>
<td><input type="checkbox" name="rightsipain" value="Right SI Pain" <c:if test="${soapnotes.rightsipain=='Right SI Pain'}"><c:out value="checked=checked"/></c:if>>Right SI Pain</td>
<td><input type="checkbox" name="leftsipain" value="Left SI Pain" <c:if test="${soapnotes.leftsipain=='Left SI Pain'}"><c:out value="checked=checked"/></c:if>>Left SI Pain</td>
<td><input type="checkbox" name="righthippain" value="Right Hip Pain" <c:if test="${soapnotes.righthippain=='Right Hip Pain'}"><c:out value="checked=checked"/></c:if>>Right Hip Pain</td>
<td><input type="checkbox" name="lefthippain" value="Left Hip Pain" <c:if test="${soapnotes.lefthippain=='Left Hip Pain'}"><c:out value="checked=checked"/></c:if>>Left Hip Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="rightgluteulpain" value="Right Gluteul Pain" <c:if test="${soapnotes.rightgluteulpain=='Right Gluteul Pain'}"><c:out value="checked=checked"/></c:if>>Right Gluteal Pain</td>
<td><input type="checkbox" name="leftgluteulpain" value="Left Gluteul Pain" <c:if test="${soapnotes.leftgluteulpain=='Left Gluteul Pain'}"><c:out value="checked=checked"/></c:if>>Left Gluteal Pain</td>
<td><input type="checkbox" name="rightlegpain" value="Right Leg Pain" <c:if test="${soapnotes.rightlegpain=='Right Leg Pain'}"><c:out value="checked=checked"/></c:if>>Right Leg Pain</td>
<td><input type="checkbox" name="leftlegpain" value="Left Leg Pain" <c:if test="${soapnotes.leftlegpain=='Left Leg Pain'}"><c:out value="checked=checked"/></c:if>>Left Leg Pain</td>
<td><input type="checkbox" name="rightkneepain" value="Right Knee Pain" <c:if test="${soapnotes.rightkneepain=='Right Knee Pain'}"><c:out value="checked=checked"/></c:if>>Right Knee Pain</td>
<td><input type="checkbox" name="leftkneepain" value="Left Knee Pain" <c:if test="${soapnotes.leftkneepain=='Left Knee Pain'}"><c:out value="checked=checked"/></c:if>>Left Knee Pain</td>
<td><input type="checkbox" name="rightanklepain" value="Right Ankle Pain" <c:if test="${soapnotes.rightanklepain=='Right Ankle Pain'}"><c:out value="checked=checked"/></c:if>>Right Ankle Pain</td>
</tr>
<tr class="row1">
<td></td>
<td><input type="checkbox" name="leftanklepain" value="Left Ankle Pain" <c:if test="${soapnotes.leftanklepain=='Left Ankle Pain'}"><c:out value="checked=checked"/></c:if>>Right Rib Pain</td>
<td><input type="checkbox" name="rightfootpain" value="Right Foot Pain" <c:if test="${soapnotes.rightfootpain=='Right Foot Pain'}"><c:out value="checked=checked"/></c:if>>Right Foot Pain</td>
<td><input type="checkbox" name="leftfootpain" value="Left Foot Pain" <c:if test="${soapnotes.leftfootpain=='Left Foot Pain'}"><c:out value="checked=checked"/></c:if>>Left Foot Pain</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
 <table cellpadding="0" cellspacing="0" border="1" width="98%">
 <tr>
  <td width="200">
<bold><center> Date </center> </bold>
  </td>
 <td width="250">
<bold><center> S</center></bold>
 </td>
 <td width="250">
 <bold><center>O</center></bold>
 </td>
 <td width="250">
 <bold><center>A</center></bold>
 </td>
 <td width="250">
 <bold><center>P</center></bold>
 </td>
 </tr>
 <tr>
 <td><br><br>&nbsp;&nbsp;<input type="text" id="datepicker1" class="input_txtbx1"  name="date1" value="${soapnotes.date1}"><span id="datepicker1error" style="color: red;font-style:italic;" ></span></td>
 <td> <br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" class="input_txtbx1"  name="improved" id="improved" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved}">  &nbsp;%<%-- <select name="improved" id="improved" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.improved=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved=='95%'}"><c:out value="selected"/></c:if>>95%</option>
					</select> --%>
<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="worsened" id="worsened" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened}">&nbsp;%
					<%-- <option selected="selected" value="10%" <c:if test="${soapnotes.worsened=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select> --%><br/><br/><br/></td>
 <td>
 <label for="amount"><b>Pain Scale:</b></label>
	 <input type="text" id="amount" value="${soapnotes.painscale}" style="border:0; color:#f6931f; font-weight:bold;" name="painscale" /><span id="amounterr"></span>&nbsp;&nbsp;&nbsp;
 <div id="slider" value="${soapnotes.painscale}" style="width: 306px; "></div>
 
 
 </td>
<script type="text/javascript">
				var $im = 1;
				var flagm = 1;
				function addMultichoice(divName) {
					var xx = document.getElementsByName('diagnosis[]').length;
					var $in = xx + 1;
					var $m=$in-1;

					var newdiv = document.createElement('div'); 

					newdiv.innerHTML = '<table width="100%" border="0" cellspacing="0" cellpadding="0" id="newtbl'
							+ $im
							+ '"><tr>'
							+ '<td valign="top" align="left" class="input_txt" width="70%">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="diagnosis[]"/></td></tr><tr class="row1"><td align="left" valign="top"><a javascript:void(0);" onclick="removechoice('
							+ $im
							+ ')" style="text-decoration:none;"><input type="submit" class="submit_btn" value="CANCEL"  /></a></td></tr></table>';
							
							
					document.getElementById(divName).appendChild(newdiv);
					$im++;
					flagm++;

				}
				function removechoice(id) {
					id = 'newtbl' + id;
					var child = document.getElementById(id)
					var parentDiv = child.parentNode;
					parentDiv.removeChild(child);

				}
			</script>
			
 <td>
 
 &nbsp &nbsp Diagonosis:<br/><br>&nbsp;<c:forEach items="${diagnosis}" var="diagnosis">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input name="diagnosis[]" id="diagonosis"onInput="return validatename1(id)";type="text" value="${diagnosis}"><br><br></c:forEach>
 <div id="multichoice"></div><a href="javascript:void(0);" onclick="addMultichoice('multichoice');" style="text-decoration:none;" ><input type="button" value="Add one more diagnosis" class="submit_btn2" name=""/></a>
<span id="diagnosiserr1" style="color:red"></span>
 </td>
 <td>&nbsp;&nbsp;
 <select name="e1e2" width="2%" id="e1e2" class="input_cmbbx1" onchange="if (this.value=='ExtremitiesX-Rays'){this.form['xray'].style.visibility='visible'}else {this.form['xray'].style.visibility='hidden'};validate2();">
					<option selected="selected" value="2" <c:if test="${soapnotes.e1e2=='2'}"><c:out value="selected"/></c:if>>2</option>
					<option value="3" <c:if test="${soapnotes.e1e2=='3'}"><c:out value="selected"/></c:if>>3</option>
					<option value="4" <c:if test="${soapnotes.e1e2=='4'}"><c:out value="selected"/></c:if>>4</option>
					<option value="5" <c:if test="${soapnotes.e1e2=='5'}"><c:out value="selected"/></c:if>>5</option>
					<option value="6" <c:if test="${soapnotes.e1e2=='6'}"><c:out value="selected"/></c:if>>6</option>
					<option value="7" <c:if test="${soapnotes.e1e2=='7'}"><c:out value="selected"/></c:if>>7</option>
					<option value="8" <c:if test="${soapnotes.e1e2=='8'}"><c:out value="selected"/></c:if>>8</option>
					<option value="9" <c:if test="${soapnotes.e1e2=='9'}"><c:out value="selected"/></c:if>>9</option>
					<option value="10" <c:if test="${soapnotes.e1e2=='10'}"><c:out value="selected"/></c:if>>10</option>
					<option value="11" <c:if test="${soapnotes.e1e2=='11'}"><c:out value="selected"/></c:if>>11</option>
					<option value="Re-exam" <c:if test="${soapnotes.e1e2=='Re-exam'}"><c:out value="selected"/></c:if>>Re-exam</option>
					<option value="one spot x-ray"><c:if test="${soapnotes.e1e2=='one spot x-ray'}"><c:out value="selected"/></c:if>one spot x-ray</option>
					<option value="2 to 7 C/S X-Rays"><c:if test="${soapnotes.e1e2=='2 to 7 C/S X-Rays'}"><c:out value="selected"/></c:if>2 to 7 C/S X-Rays</option>
					<option value="2 to 6 T/S X-Rays"><c:if test="${soapnotes.e1e2=='2 to 6 T/S X-Rays'}"><c:out value="selected"/></c:if>2 to 6 T/S X-Rays</option>
					<option value="2-6 L/S X-Rays"><c:if test="${soapnotes.e1e2=='2-6 L/S X-Rays'}"><c:out value="selected"/></c:if>2-6 L/S X-Rays</option>
					<option value="2 Chest X-Rays"><c:if test="${soapnotes.e1e2=='2 Chest X-Rays'}"><c:out value="selected"/></c:if>2 Chest X-Rays</option>
					<option value="ExtremitiesX-Rays"<c:if test="${soapnotes.e1e2=='ExtremitiesX-Rays'}"><c:out value="selected"/></c:if>>ExtremitiesX-Rays</option>
					<option value="SCSM 1-2 region" <c:if test="${soapnotes.e1e2=='SCSM 1-2 region'}"></c:if>>SCSM 1-2 region</option>
					<option value="SCSM 3-4 regions" <c:if test="${soapnotes.e1e2=='SCSM 3-4 regions'}"><c:out value="selected"/></c:if>>SCSM 3-4 regions</option>
					<option value="5 regions" <c:if test="${soapnotes.e1e2=='5 regions'}"><c:out value="selected"/></c:if>>5 regions</option>
					<option value="extraspinal 1 or more regions" <c:if test="${soapnotes.e1e2=='extraspinal 1 or more regions'}"><c:out value="selected"/></c:if>>extraspinal 1 or more regions</option>
					<option value="MR" <c:if test="${soapnotes.e1e2=='MR'}"><c:out value="selected"/></c:if>>MR</option>
					<option value="Home Exercises" <c:if test="${soapnotes.e1e2=='Home Exercises'}"><c:out value="selected"/></c:if>>Home Exercises</option>
					<option value="scsm" <c:if test="${soapnotes.e1e2=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.e1e2=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.e1e2=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.e1e2=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.e1e2=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.e1e2=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.e1e2=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.e1e2=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.e1e2=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.e1e2=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="mri" <c:if test="${soapnotes.e1e2=='mri'}"><c:out value="selected"/></c:if>>MRI</option>
					<option value="lab" <c:if test="${soapnotes.e1e2=='lab'}"><c:out value="selected"/></c:if>>LAB</option>
					<option value="opinion" <c:if test="${soapnotes.e1e2=='opinion'}"><c:out value="selected"/></c:if>>2nd Opinion</option>
					<option value="rehab" <c:if test="${soapnotes.e1e2=='rehab'}"><c:out value="selected"/></c:if>>Rehab</option>
					<option value="stretchexer" <c:if test="${soapnotes.e1e2=='stretchexer'}"><c:out value="selected"/></c:if>>Stretch exer</option>
					<option value="offwork" <c:if test="${soapnotes.e1e2=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="backtowork" <c:if test="${soapnotes.e1e2=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.e1e2=='strengthexcer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="lifestyle" <c:if test="${soapnotes.e1e2=='lifestyle'}"><c:out value="selected"/></c:if>>Lifestyle modifications</option>
					<option value="reeval" <c:if test="${soapnotes.e1e2=='reeval'}"><c:out value="selected"/></c:if>>Re Eval.in </option>
				  </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" width="5%"name="xray" class="input_txtbx1" id="xray"  onblur="return validate2();" value="${soapnotes.xray}" style="visibility:hidden;" >
				    <span id="xrayerror"style="color:red"></span>
				  <input type="text" name="offwork1" class="input_txtbx1" id="inp_id"  value="${soapnotes.offwork1}" style='display:none' >
				  <input type="text" name="reeval1" class="input_txtbx1" id="inp_id"  value="${soapnotes.reeval1}" style='display:none'>
				  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker" class="input_txtbx1"  name="date2" value="${soapnotes.date2}"><span id="datepickererror" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="improved1" id="improved1" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved1}">&nbsp;%

<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text" class="input_txtbx1"  name="worsened1" id="worsened1" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened1}">&nbsp;%
<br/><br/><br/>
<%-- &nbsp &nbsp Improved: <select name="improved1" id="improved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.improved1=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.improved1=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.improved1=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.improved1=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.improved1=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95%" <c:if test="${soapnotes.improved1=='95%'}"><c:out value="selected"/></c:if>>95%</option>
					</select><br/><br/><br/>
&nbsp &nbsp Worsened: <select name="worsened1" id="worsened1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="10%" <c:if test="${soapnotes.worsened1=='10%'}"><c:out value="selected"/></c:if>>10%</option>
					<option value="25%" <c:if test="${soapnotes.worsened1=='25%'}"><c:out value="selected"/></c:if>>25%</option>
					<option value="50%" <c:if test="${soapnotes.worsened1=='50%'}"><c:out value="selected"/></c:if>>50%</option>
					<option value="75%" <c:if test="${soapnotes.worsened1=='75%'}"><c:out value="selected"/></c:if>>75%</option>
					<option value="85%" <c:if test="${soapnotes.worsened1=='85%'}"><c:out value="selected"/></c:if>>85%</option>
					<option value="95" <c:if test="${soapnotes.worsened1=='95%'}"><c:out value="selected"/></c:if>>95%</option>

					</select><br/><br/><br/> --%></td>

 <td>
 &nbsp &nbsp <select name="fixation1" id="fixation1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation1=='fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soapnotes.fixation1=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation1=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation1=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="Hypertonicity" <c:if test="${soapnotes.fixation1=='Hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soapnotes.fixation1=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation1=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="Short Leg Right Temp.Change" <c:if test="${soapnotes.fixation1=='Short Leg Right Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change" <c:if test="${soapnotes.fixation1=='Short Leg Left Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Left Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation1=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation1=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>

 &nbsp &nbsp<select name="notimproved1" id="notimproved1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved1=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressing Slow" <c:if test="${soapnotes.notimproved1=='Progressing Slow'}"><c:out value="selected"/></c:if>>Progressing Slow</option>
					<option value="Exacerbation of C.C." <c:if test="${soapnotes.notimproved1=='Exacerbation of C.C.'}"><c:out value="selected"/></c:if>>Exacerbation of CC</option>
					<option value="Flare-ups" <c:if test="${soapnotes.notimproved1=='Flare-ups '}"><c:out value="selected"/></c:if>>Flare-ups</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved1=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved1=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved1=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved1=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
					</select></td>
					
 <td>

  &nbsp &nbsp <select name="scsm1" id="scsm1" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm1=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm1=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm1=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm1=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm1=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm1=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm1=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm1=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm1=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm1=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm1=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm1=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm1=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm1=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm1=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm1=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm1=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm1=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm1=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm1=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
				  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="date3" id="datepicker2" value="${soapnotes.date3}"><span id="datepicker2error" style="color: red;font-style:italic;" ></span></td>
 <td>
<br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="improved2" id="improved2" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved2}">&nbsp;%

<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="worsened2" id="worsened2" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened2}">&nbsp;%
<br/><br/><br/></td>
 <td>

  &nbsp &nbsp <select name="fixation2" id="fixation2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation2=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soapnotes.fixation2=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation2=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation2=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="Hypertonicity" <c:if test="${soapnotes.fixation2=='Hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soapnotes.fixation2=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation2=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="Short Leg Right Temp.Change" <c:if test="${soapnotes.fixation2=='Short Leg Right Temp.Change'}"><c:out value="selected"/></c:if>>Short Leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change" <c:if test="${soapnotes.fixation2=='Short Leg Left Temp.Change'}"><c:out value="selected"/></c:if>>Short Leg Left Temp.Change</option>
					<option value="atrophy" <c:if test="${soapnotes.fixation2=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation2=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>


					</select></td>
 <td>&nbsp &nbsp<select name="notimproved2" id="notimproved2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved2=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressing Slow" <c:if test="${soapnotes.notimproved1=='Progressing Slow'}"><c:out value="selected"/></c:if>>Progressing Slow</option>
					<option value="Exacerbation of C.C." <c:if test="${soapnotes.notimproved1=='Exacerbation of C.C.'}"><c:out value="selected"/></c:if>>Exacerbation of C.C.</option>
					<option value="Flare-ups" <c:if test="${soapnotes.notimproved1=='Flare-ups '}"><c:out value="selected"/></c:if>>Flare-ups</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved2=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved2=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved2=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved2=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm2" id="scsm2" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm2=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm2=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm2=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm2=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm2=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm2=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm2=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm2=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm2=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm2=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm2=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm2=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm2=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm2=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm2=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm2=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm2=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm2=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm2=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm2=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			
				  </select>
 
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" class="input_txtbx1" id="datepicker3" name="date4" value="${soapnotes.date4}"><span id="datepicker3error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="improved3" id="improved3" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved3}">&nbsp;%

<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="worsened3" id="worsened3" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened3}">&nbsp;%
<br/><br/><br/></td>
 <td>
  &nbsp &nbsp<select name="fixation3" id="fixation3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation3=='Fixation'}"><c:out value="selected"/></c:if>
					>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soapnotes.fixation3==' to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation3=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation3=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="Hypertonicity" <c:if test="${soapnotes.fixation3=='Hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soapnotes.fixation3=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation3=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="Short Leg Right Temp.Change" <c:if test="${soapnotes.fixation3=='Short Leg Right Temp.Change'}"><c:out value="selected"/></c:if>>Short Leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change" <c:if test="${soapnotes.fixation3=='Short Leg Left Temp.Change'}"><c:out value="selected"/></c:if>>Short Leg Left Temp.Change</option>
						<option value="atrophy" <c:if test="${soapnotes.fixation3=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation3=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved3" id="notimproved3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved3=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
				<option value="Progressing Slow" <c:if test="${soapnotes.notimproved1=='Progressing Slow'}"><c:out value="selected"/></c:if>>Progressing Slow</option>
					<option value="Exacerbation of C.C." <c:if test="${soapnotes.notimproved1=='Exacerbation of C.C.'}"><c:out value="selected"/></c:if>>Exacerbation of CC</option>
					<option value="Flare-ups" <c:if test="${soapnotes.notimproved1=='Flare-ups '}"><c:out value="selected"/></c:if>>Flare-ups</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved3=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved3=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved3=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved3=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
			
					</select></td>
  <td>&nbsp &nbsp <select name="scsm3" id="scsm3" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm3=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm3=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm3=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm3=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm3=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm3=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm3=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm3=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm3=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm3=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm3=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm3=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm3=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm3=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm3=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm3=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm3=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm3=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm3=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm3=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
  
  </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker4" class="input_txtbx1" name="date5"  value="${soapnotes.date5}"><span id="datepicker4error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="improved4" id="improved4" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved4}">&nbsp;%

<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="worsened4" id="worsened4" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened4}">&nbsp;%
<br/><br/><br/></td>
 <td>&nbsp &nbsp <select name="fixation4" id="fixation4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation4=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soapnotes.fixation4=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation4=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation4=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="Hypertonicity" <c:if test="${soapnotes.fixation4=='Hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soapnotes.fixation4=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation4=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="Short Leg Right Temp.Change" <c:if test="${soapnotes.fixation4=='Short Leg Right Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change" <c:if test="${soapnotes.fixation4=='Short Leg Left Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Left Temp.Change</option>
				
					<option value="atrophy" <c:if test="${soapnotes.fixation4=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation4=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved4" id="notimproved4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved4=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressing Slow" <c:if test="${soapnotes.notimproved1=='Progressing Slow'}"><c:out value="selected"/></c:if>>Progressing Slow</option>
					<option value="Exacerbation of C.C." <c:if test="${soapnotes.notimproved1=='Exacerbation of C.C.'}"><c:out value="selected"/></c:if>>Exacerbation of C.C.</option>
					<option value="Flare-ups" <c:if test="${soapnotes.notimproved1=='Flare-ups '}"><c:out value="selected"/></c:if>>Flare-ups</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved4=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved4=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved4=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved4=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 
 <td>&nbsp &nbsp <select name="scsm4" id="scsm4" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm4=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm4=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm4=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm4=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm4=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm4=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm4=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm4=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm4=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm4=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm4=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm4=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm4=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm4=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm4=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm4=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm4=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm4=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm4=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm4=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text"  class="input_txtbx1" id="datepicker5" name="date6"  value="${soapnotes.date6}"><span id="datepicker5error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="improved5" id="improved5" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved5}">&nbsp;%

<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="worsened5" id="worsened5" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened5}">&nbsp;%
<br/><br/><br/></td>
 <td>
  &nbsp &nbsp<select name="fixation5" id="fixation5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation5=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soapnotes.fixation5=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation5=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation5=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="Hypertonicity" <c:if test="${soapnotes.fixation5=='Hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soapnotes.fixation5=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation5=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
						<option value="Short Leg Right Temp.Change" <c:if test="${soapnotes.fixation5=='Short Leg Right Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change" <c:if test="${soapnotes.fixation5=='Short Leg Left Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Left Temp.Change</option>
				
					<option value="atrophy" <c:if test="${soapnotes.fixation5=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation5=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
		</select></td>
<td>&nbsp &nbsp <select name="notimproved5" id="notimproved5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved5=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressing Slow" <c:if test="${soapnotes.notimproved1=='Progressing Slow'}"><c:out value="selected"/></c:if>>Progressing Slow</option>
					<option value="Exacerbation of C.C." <c:if test="${soapnotes.notimproved1=='Exacerbation of C.C.'}"><c:out value="selected"/></c:if>>Exacerbation of C.C.</option>
					<option value="Flare-ups" <c:if test="${soapnotes.notimproved1=='Flare-ups '}"><c:out value="selected"/></c:if>>Flare-ups</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved5=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved5=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved5=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved5=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm5" id="scsm5" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm5=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm5=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm5=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm5=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm5=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm5=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm5=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm5=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm5=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm5=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm5=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm5=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm5=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm5=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm5=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm5=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm5=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm5=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm5=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm5=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker6" name="date7" class="input_txtbx1" value="${soapnotes.date7}"><span id="datepicker6error" style="color: red;font-style:italic;" ></span></td>
 <td>
<br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="improved6" id="improved6" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved6}">&nbsp;%

<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text" class="input_txtbx1"  name="worsened6" id="worsened6" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened6}">&nbsp;%
<br/><br/><br/></td>
 <td>&nbsp &nbsp <select name="fixation6" id="fixation6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation6=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soapnotes.fixation6=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation6=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation6=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="Hypertonicity" <c:if test="${soapnotes.fixation6=='Hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soapnotes.fixation6=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation6=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="Short Leg Right Temp.Change" <c:if test="${soapnotes.fixation6=='Short Leg Right Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change" <c:if test="${soapnotes.fixation6=='Short Leg Left Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Left Temp.Change</option>
				
					<option value="atrophy" <c:if test="${soapnotes.fixation6=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation6=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
	</select></td>
<td> &nbsp &nbsp<select name="notimproved6" id="notimproved6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved6=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressing Slow" <c:if test="${soapnotes.notimproved1=='Progressing Slow'}"><c:out value="selected"/></c:if>>Progressing Slow</option>
					<option value="Exacerbation of C.C." <c:if test="${soapnotes.notimproved1=='Exacerbation of C.C.'}"><c:out value="selected"/></c:if>>Exacerbation of C.C.</option>
					<option value="Flare-ups" <c:if test="${soapnotes.notimproved1=='Flare-ups '}"><c:out value="selected"/></c:if>>Flare-ups</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved6=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved6=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved6=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved6=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
			
					</select></td>
 <td>&nbsp &nbsp <select name="scsm6" id="scsm6" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm6=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm6=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm6=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm6=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm6=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm6=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm6=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm6=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm6=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm6=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm6=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm6=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm6=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm6=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm6=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm6=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm6=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm6=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm6=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm6=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker7" class="input_txtbx1"  name="date8" value="${soapnotes.date8}"><span id="datepicker7error" style="color: red;font-style:italic;" ></span></td>
 <td>
 <br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="improved7" id="improved7" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved7}">&nbsp;%

<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text"  class="input_txtbx1" name="worsened7" id="worsened7" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened7}">&nbsp;%
<br/><br/><br/></td>
 <td> &nbsp &nbsp<select name="fixation7" id="fixation7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation7=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soapnotes.fixation7=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation7=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation7=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="Hypertonicity" <c:if test="${soapnotes.fixation7=='Hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soapnotes.fixation7=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation7=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="Short Leg Right Temp.Change" <c:if test="${soapnotes.fixation7=='Short Leg Right Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change" <c:if test="${soapnotes.fixation7=='Short Leg Left Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Left Temp.Change</option>
				
					<option value="atrophy" <c:if test="${soapnotes.fixation7=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation7=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>

					</select></td>
 <td>&nbsp &nbsp<select name="notimproved7" id="notimproved7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved7=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressing Slow" <c:if test="${soapnotes.notimproved1=='Progressing Slow'}"><c:out value="selected"/></c:if>>Progressing Slow</option>
					<option value="Exacerbation of C.C." <c:if test="${soapnotes.notimproved1=='Exacerbation of C.C.'}"><c:out value="selected"/></c:if>>Exacerbation of C.C.</option>
					<option value="Flare-ups" <c:if test="${soapnotes.notimproved1=='Flare-ups '}"><c:out value="selected"/></c:if>>Flare-ups</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved7=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved7=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved7=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved7=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
								</select></td>
 <td>&nbsp &nbsp <select name="scsm7" id="scsm7" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm7=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm7=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm7=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm7=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm7=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm7=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm7=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm7=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm7=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm7=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm7=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm7=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm7=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm7=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm7=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm7=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm7=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm7=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm7=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm7=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
			  </select>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;<input type="text" id="datepicker8" class="input_txtbx1" name="date9" value="${soapnotes.date9}"><span id="datepicker8error" style="color: red;font-style:italic;" ></span></td>
 <td>
<br/>
&nbsp;&nbsp;Improved:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="improved8" id="improved8" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.improved8}">&nbsp;%

<br><br>
&nbsp; Worsened:&nbsp;&nbsp;<input type="text" class="input_txtbx1"  name="worsened8" id="worsened8" onInput="checkLength(id)" onkeypress="return Validate(event)"; value="${soapnotes.worsened8}">&nbsp;%
<br/><br/><br/></td>
 <td> &nbsp &nbsp<select name="fixation8" id="fixation8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="Fixation" <c:if test="${soapnotes.fixation8=='Fixation'}"><c:out value="selected"/></c:if>>Fixations</option>
					<option value="Tenderness to palpation" <c:if test="${soapnotes.fixation8=='Tenderness to palpation'}"><c:out value="selected"/></c:if>>Tenderness to palpation</option>
					<option value="spasm" <c:if test="${soapnotes.fixation8=='spasm'}"><c:out value="selected"/></c:if>>Spasm</option>
					<option value="trigger" <c:if test="${soapnotes.fixation8=='trigger'}"><c:out value="selected"/></c:if>>Trigger pts.</option>
					<option value="Hypertonicity" <c:if test="${soapnotes.fixation8=='Hypertonicity'}"><c:out value="selected"/></c:if>>Hypertonicity</option>
					<option value="edema" <c:if test="${soapnotes.fixation8=='edema'}"><c:out value="selected"/></c:if>>Edema</option>
					<option value="Decreased ROM" <c:if test="${soapnotes.fixation8=='decreased ROM'}"><c:out value="selected"/></c:if>>Decreased ROM</option>
					<option value="Short Leg Right Temp.Change" <c:if test="${soapnotes.fixation8=='Short Leg Right Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Right Temp.Change</option>
					<option value="Short Leg Left Temp.Change" <c:if test="${soapnotes.fixation8=='Short Leg Left Temp.Change'}"><c:out value="selected"/></c:if>>Short leg Left Temp.Change</option>
				
					<option value="atrophy" <c:if test="${soapnotes.fixation8=='atrophy'}"><c:out value="selected"/></c:if>>Atrophy</option>
					<option value="decr strength" <c:if test="${soapnotes.fixation8=='decr strength'}"><c:out value="selected"/></c:if>>Decr Strength</option>
	</select></td>
 <td>&nbsp &nbsp<select name="notimproved8" id="notimproved8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					<option selected="selected" value="notimproved" <c:if test="${soapnotes.notimproved8=='notimproved'}"><c:out value="selected"/></c:if>>Not Improved</option>
					<option value="Progressing Slow" <c:if test="${soapnotes.notimproved1=='Progressing Slow'}"><c:out value="selected"/></c:if>>Progressing Slow</option>
					<option value="Exacerbation of C.C." <c:if test="${soapnotes.notimproved1=='Exacerbation of C.C.'}"><c:out value="selected"/></c:if>>Exacerbation of CC</option>
					<option value="Flare-ups" <c:if test="${soapnotes.notimproved1=='Flare-ups '}"><c:out value="selected"/></c:if>>Flare-ups</option>
					<option value="mildly" <c:if test="${soapnotes.notimproved8=='mildly'}"><c:out value="selected"/></c:if>>Mildly imp.</option>
					<option value="moderatly" <c:if test="${soapnotes.notimproved8=='moderatly'}"><c:out value="selected"/></c:if>>Moderatly imp.</option>
					<option value="plateu" <c:if test="${soapnotes.notimproved8=='plateu'}"><c:out value="selected"/></c:if>>Plateu</option>
					<option value="preinjury" <c:if test="${soapnotes.notimproved8=='preinjury'}"><c:out value="selected"/></c:if>>Pre Injury Status</option>
				</select></td>
 <td>&nbsp &nbsp <select name="scsm8" id="scsm8" class="input_cmbbx1" onchange='Checksymptom(this.value);'>
					
					<option selected="selected" value="scsm" <c:if test="${soapnotes.scsm8=='scsm'}"><c:out value="selected"/></c:if>>SCSM</option>
					<option value="ems" <c:if test="${soapnotes.scsm8=='ems'}"><c:out value="selected"/></c:if>>EMS</option>
					<option value="mass" <c:if test="${soapnotes.scsm8=='mass'}"><c:out value="selected"/></c:if>>MASS</option>
					<option value="ice" <c:if test="${soapnotes.scsm8=='ice'}"><c:out value="selected"/></c:if>>Ice</option>
					<option value="heat" <c:if test="${soapnotes.scsm8=='heat'}"><c:out value="selected"/></c:if>>Heat</option>
					<option value="nmr" <c:if test="${soapnotes.scsm8=='nmr'}"><c:out value="selected"/></c:if>>NMR</option>
					<option value="tp" <c:if test="${soapnotes.scsm8=='tp'}"><c:out value="selected"/></c:if>>TP</option>
					<option value="us" <c:if test="${soapnotes.scsm8=='us'}"><c:out value="selected"/></c:if>>US</option>
					<option value="lontophoresis" <c:if test="${soapnotes.scsm8=='lontophoresis'}"><c:out value="selected"/></c:if>>Lontophoresis</option>
					<option value="traction" <c:if test="${soapnotes.scsm8=='traction'}"><c:out value="selected"/></c:if>>Traction</option>
					<option value="nutrition" <c:if test="${soapnotes.scsm8=='nutrition'}"><c:out value="selected"/></c:if>>Nutrition</option>
					<option value="offwork" <c:if test="${soapnotes.scsm8=='offwork'}"><c:out value="selected"/></c:if>>Off Work</option>
					<option value="lightduty" <c:if test="${soapnotes.scsm8=='lightduty'}"><c:out value="selected"/></c:if>>Light Duty</option>
					<option value="rom" <c:if test="${soapnotes.scsm8=='rom'}"><c:out value="selected"/></c:if>>ROM</option>					
					<option value="backtowork" <c:if test="${soapnotes.scsm8=='backtowork'}"><c:out value="selected"/></c:if>>Back To Work </option>
					<option value="strengthexcer" <c:if test="${soapnotes.scsm8=='strengthexer'}"><c:out value="selected"/></c:if>>Strength excer</option>
					<option value="rof" <c:if test="${soapnotes.scsm8=='rof'}"><c:out value="selected"/></c:if>>ROF</option>
					<option value="reexam" <c:if test="${soapnotes.scsm8=='reexam'}"><c:out value="selected"/></c:if>>Re Exam </option>
					<option value="referto" <c:if test="${soapnotes.scsm8=='referto'}"><c:out value="selected"/></c:if>>Refer to </option>
					<option value="release" <c:if test="${soapnotes.scsm8=='release'}"><c:out value="selected"/></c:if>>Release from care </option>
					  </select>
 </td>
 </tr>
  </table>
  <table align="right"><tr><td><span class="err">*</span> Physicians Signature:<input type="text" name="sign" class="input_txtbx1" id="sign" onInput="return validatename(id)"; value="${soapnotes.sign}"><span class="err" id="signerror"><form:errors path="SoapNotes.sign"></form:errors></span></td></tr></table>
				                   </table>
 <table align="right"> <tr>
				                   <td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
				                    <td><a href="deletesoapnotes?soapid=${soapnotes.soapid}" style="color:white;text-decoration: none" class="submit_btn">Delete</a></td>
				                   <td><a href="doctorsearch" style="color:white;text-decoration: none" class="submit_btn">Cancel</a></td>
				                   </tr>
				                   </table>

</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</form>

</body>
</html>


