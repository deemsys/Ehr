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
 <script src="all-numbers.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
   </STYLE>
   <style type="text/css">
#overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.cnt223 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.cnt223{
min-width: 400px;
width: 400px;
min-height: 150px;
margin: 100px auto;
background: #f3f3f3;
position: relative;
z-index: 103;
padding: 10px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
}
.cnt223 p{
clear: both;
color: #555555;
text-align: justify;
}
.cnt223 p a{
color: #d91900;
font-weight: bold;
}
.cnt223 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.cnt223 .x:hover{
cursor: pointer;
}
</style>

<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
<script>
$(function() {
	$("#patient").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#regarding").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#address").on("keypress", function(e) {
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
	$("#claimnumber").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#datepicker1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#dear").on("keypress", function(e) {
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
<script type='text/javascript'>
$(function(){
var overlay = $('<div id="overlay"></div>');
overlay.show();
overlay.appendTo(document.body);

$('.popup').show();
$('.close').click(function(){
$('.popup').hide();
overlay.appendTo(document.body).remove();
return false;
});

$('.x').click(function(){
$('.popup').hide();

overlay.appendTo(document.body).remove();
return false;
});
});
</script>
<script type="text/javascript">
function doAjaxPost() {  
	
	var username = $('#username').val();
	if(username=="")
		{
		alert("Please Enter Patient Username");
		return false;
		}
	
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/copyofrequest_ajax",  
		    data: "username=" + username,
		    success: function(response){  
		    	
		      // we have the response
		      //alert("response"+response);
		     //alert(response.substring(0,4));
		     //alert(response.substring(4,response.length));
		     
		     if(response=='error')
		    	 {
		    	 alert("The Patient UserId does not exist Please check the UserId");
		    	 }
		     else if(response.substring(0,4)=='edit')
		    	  {
		    	 var sub1=response.indexOf("|")+1;		    	 
		    	 var url="editcopyofrequestdetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    // alert(response.indexOf("|"));
			   //alert(response.substring(0,cal));
			 //  document.getElementById("patientname").value=response.substring(0,cal);
			   
		    document.getElementById("user").value=response.substring(calculate,response.length);
		    	
		    	 $('.popup').hide();
		    	 $('#overlay').remove();
		    	
		      // $('#info').html(response);
		       
		     /*   
		       $('div#overlay').RemoveAttr('id','none');
		       alert("hi");
		       var overlay = $('<div id="overlay"></div>');
		   	   overlay.show();		      	
		     
		        
		       overlay.appendTo(document.body).remove();
		       
		      return false; */
		    	  }	   
		      
		    
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });  
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
<div class='popup'>
<div class='cnt223'>
<br><br>
<c:if test="${success==true}">
<table width="400"><tr><td align="center"><b>Success!!!</b></td></tr></table>

</c:if>
<br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr >
	             <td valign="middle" align="left" class="input_txt" width="250"><span class="err">*</span>Please enter a Patient User Name</td>
				 <td width="20"></td> <td valign="top" align="left" class="input_txt" width="200">
				   <input type="text" class="input_txtbx1" id="username" name="username" /><br/>
				  </td>
				  </tr>
				  <tr height="50"></tr>
				<tr><td align="right"><input type="submit" value="Submit" class="submit_btn" onclick="doAjaxPost()" ></td>
				<td></td><td align="left"><a href="viewallpatientdetails" class="submit_btn" >Cancel</a></td>
				</tr>
				  </table>
				  <br><br>



</div>
</div>
   
   
   
   
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });
$(function() {
    $( "#datepicker1" ).datepicker();
  });
</script>
<!-- <script>
$(window).load(function(){
 $(function() {

$("#claimnumber").keyup(function() {
			
			 $("#claimnumbererror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#claimnumbererror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})		
});
</script> -->
  <script>
  
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
  <script>
function validateusername(){
    var textInput = document.getElementById("claimnumber").value;
    textInput = textInput.replace(/[^A-Z0-9]/g, "");
    document.getElementById("claimnumber").value = textInput;
}

</script>
  
   <script>

	function checkSubmit()
	{
		document.getElementById("patienterror").innerHTML=" ";
		
		if(document.getElementById("patient").value=="")
		{
		document.getElementById("patienterror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("patienterror").innerHTML="";
	    if(document.getElementById("patient").value.length<4 || document.getElementById("patient").value.length>=32)
	    {
	    	
	    	document.getElementById("patienterror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	 document.getElementById("regardingerror").innerHTML="";
	if(document.getElementById("regarding").value!="")
	{
	if(document.getElementById("regarding").value.length<4 || document.getElementById("regarding").value.length>=32)
	    {
	    	
	    	document.getElementById("regardingerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
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
	
	document.getElementById("claimnumbererror").innerHTML="";
	if(document.getElementById("claimnumber").value=="")
	{
	document.getElementById("claimnumbererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("claimnumbererror").innerHTML="";
	    if(document.getElementById("claimnumber").value.length<4 || document.getElementById("claimnumber").value.length>=32)
	    {
	    	
	    	document.getElementById("claimnumbererror").innerHTML="claim number should be min 4 and max 32";
	    	
	        return false;
	    }
	/* document.getElementById("claimnumbererror").innerHTML="";
	if(isNaN(document.getElementById("claimnumber").value))
{
document.getElementById("claimnumbererror").innerHTML="Invalid character.please enter numbers only.";
return false;
} */
	
	document.getElementById("dearerror").innerHTML="";
	if(document.getElementById("dear").value=="")
	{
	document.getElementById("dearerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("dearerror").innerHTML="";
	    if(document.getElementById("dear").value.length<4 || document.getElementById("dear").value.length>=32)
	    {
	    	
	    	document.getElementById("dearerror").innerHTML="Name should be min 4 and max 32";
	    	
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
	document.getElementById("datepicker1error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
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
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
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
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
  }
  </script>
</head>
 
 <body>
 <form  action="copyofrequest" method="POST"> 
 <input type="hidden" class="input_txtbx1" id="user" name="user" />
 <c:choose>
    					<c:when test="${empty copy}">
                       


<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
<tr>
<td valign="top" align="left">
<div id="block1">
	            <div class="headings altheading">
	           <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	            <center> <h2>PERRY CHIROPRACTIC & THERAPY CENTER OF CANTON, INC.</h2> </center><br/>
	            </div>
	            <div class="contentbox"><center> Dr. Charles T. Yang, DC, DABFP </center><br/>
	            <center> 4933 West Tuscarawas Street </center><br/>
	            <center> Canton, Ohio 44708 </center><br/>
	            <center> Phone (330) 477-3036    Fax  (330) 477-3037 </center><br/>
	            <center> Tax ID#:  26-0101968 </center><br/>
	            <center> <B style="font-size:18px">Requesting Fee Reduction from Attorney/Adjuster</B> </center><br/>
          <table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
          <tr height="30">
          <td><span class="err">*</span>Patients Attorney or Insurance Adjuster: </td>
          <td><input type="text"  class="input_txtbx1" name="patient" size="40" id="patient" onInput="return validatename(id)";><span class="err" id="patienterror"  style="color: red;font-style:italic;" ><form:errors path="Copyofrequest.patient"></form:errors></span></td>
          </tr>   
          <tr height="30">
          <td><span class="err"></span>Address: </td>
          <td><textarea rows="4" cols="43"  class="input_txtarea" name="address" id="address"></textarea><span class="err"><form:errors path="Copyofrequest.address"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td>Regarding: </td>
          <td><input type="text"  class="input_txtbx1" name="regarding" id="regarding" size="40" onInput="return validatename(id)";><span class="err" id="regardingerror"></span></td>
          </tr>
          <tr height="30">
          <td><span class="err">*</span>Date of Accident: </td>
          <td><input type="text" class="input_txtbx1" name="dateofaccident" id="datepicker" size="40"><span class="err" id="datepickererror"  style="color: red;font-style:italic;"><form:errors path="Copyofrequest.dateofaccident"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td><span class="err">*</span>Claim Number: </td>
          <td><input type="text" class="input_txtbx1" name="claimnumber" id="claimnumber" onInput="return validateusername()";  size="40" id="claimnumber"><span class="err" id="claimnumbererror"  style="color: red;font-style:italic;"><form:errors path="Copyofrequest.claimnumber"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td>Today's Date:  </td>
          <td><input type="text"  class="input_txtbx1" name="todaydate" id="datepicker1" size="40"><span class="err" id="datepicker1error"></span></td>
          </tr>
          </table>
          <table width="85">
          <tr height="30">
          <td width="40">Dear  </td>
          <td><span class="err">*</span><input type="text"  class="input_txtbx1" name="dear"  size="40" id="dear" onInput="return validatename(id)";><span class="err" id="dearerror"><form:errors path="Copyofrequest.dear"></form:errors></span></td>
          </tr>
          </table>
          <br/>
          <div><p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have requested that this Clinic accept less than our total outstanding treatment fees for our above patient, as payment in full.  You have been provided notice of a written proceeds assignment ("Assignment") made by our above patient to us, regarding any proceeds you receive whatsoever for the above patient's claim.  <b>This Assignment will not be modified except by our specific subsequent written consent.  No Conversations with staff will modify this Assignment.</b>
          </p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We will consider accepting a reduction in our outstanding treatment fees. Our acceptance will only be valid if we provide it to you in writing.  We cannot consider any offer unless and until:</p>
          </div>
          <div>
          <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. It is presented to us in writing.</p>
          <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. You attach a itemization with:</p>
              
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a. The total offer.</p>
               <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b. A breakdown of all the costs and expense, including all other outstanding obligations to other medical providers.</p>
               <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. Please indicate the reduced amount (if any) that others have agreed to accept in compromise.</p>
          <p>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Our patient can provide a written consent to you for release of the above information, in order to enable you to remain in compliance with any privacy obligation or legal requirements limiting distribution of this information.
          </p>
          </div>
          <div align="right">
          <p><B style="font-size:13px">Very truly yours,</B></p>
          <p><span class="err">*</span><input type="text" class="input_txtbx1" name="sign" size="30" id="sign" onInput="return validatename(id)";><span class="err" id="signerror"><form:errors path="Copyofrequest.sign"></form:errors></span></p>
          <p>Perry Chiropractic and Therapy Center of Canton, Inc.</p>
          <p>Dr. Charles T. Yang DC, DABFP</p>
          </div>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
<td><a href="viewallpatientdetails"style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
</tr>
</table>
</div>
</div>
</td>
</tr>
</table>
</div>
</c:when>
<c:otherwise>
<div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>PERRY CHIROPRACTIC & THERAPY CENTER OF CANTON, INC.</h2> </center><br/>
	            </div>
	            <div class="contentbox"><center> Dr. Charles T. Yang, DC, DABFP </center><br/>
	            <center> 4933 West Tuscarawas Street </center><br/>
	            <center> Canton, Ohio 44708 </center><br/>
	            <center> Phone (330) 477-3036    Fax  (330) 477-3037 </center><br/>
	            <center> Tax ID#:  26-0101968 </center><br/>
	            <center> <B style="font-size:18px">Requesting Fee Reduction from Attorney/Adjuster</B> </center><br/>
          <table cellpadding="0" cellspacing="0" border="0" width="70%" align="center">
          <tr height="30">
          <td><span class="err">*</span>Patients Attorney or Insurance Adjuster: </td>
          <td><input type="text" name="patient" size="40" value="${copy.patient}" id="patient"><span class="err" id="patienterror"  style="color: red;font-style:italic;"><form:errors path="Copyofrequest.patient"></form:errors></span></td>
          </tr>   
          <tr height="30">
          <td><span class="err"></span>Address: </td>
          <td><textarea rows="4" cols="43" name="address">${copy.address}</textarea><span class="err"><form:errors path="Copyofrequest.address"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td>Regarding: </td>
          <td><input type="text" name="regarding" size="40" value="${copy.regarding }"></td>
          </tr>
          <tr height="30">
          <td><span class="err">*</span>Date of Accident: </td>
          <td><input type="text" name="dateofaccident" id="datepicker" size="40" value="${copy.dateofaccident}"><span class="err" id="datepickererror"  style="color: red;font-style:italic;"><form:errors path="Copyofrequest.dateofaccident"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td><span class="err">*</span>Claim Number: </td>
          <td><input type="text" name="claimnumber"  size="40" value="${copy.claimnumber }" id="claimnumber"><span class="err" id="claimnumbererror"  style="color: red;font-style:italic;"><form:errors path="Copyofrequest.claimnumber"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td>Today's Date:  </td>
          <td><input type="text" name="todaydate" id="datepicker1" size="40" value="${copy.todaydate }"></td>
          </tr>
          </table>
          <table width="85">
          <tr height="30">
          <td width="40">Dear  </td>
          <td><span class="err">*</span><input type="text" name="dear"  id="dear"size="40" value="${copy.dear}"><span class="err" id="dearerror"><form:errors path="Copyofrequest.dear"></form:errors></span></td>
          </tr>
          </table>
          <br/>
          <div><p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have requested that this Clinic accept less than our total outstanding treatment fees for our above patient, as payment in full.  You have been provided notice of a written proceeds assignment ("Assignment") made by our above patient to us, regarding any proceeds you receive whatsoever for the above patient's claim.  <b>This Assignment will not be modified except by our specific subsequent written consent.  No Conversations with staff will modify this Assignment.</b>
          </p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We will consider accepting a reduction in our outstanding treatment fees. Our acceptance will only be valid if we provide it to you in writing.  We cannot consider any offer unless and until:</p>
          </div>
          <div>
          <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. It is presented to us in writing.</p>
          <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. You attach a itemization with:</p>
              
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a. The total offer.</p>
               <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b. A breakdown of all the costs and expense, including all other outstanding obligations to other medical providers.</p>
               <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. Please indicate the reduced amount (if any) that others have agreed to accept in compromise.</p>
          <p>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Our patient can provide a written consent to you for release of the above information, in order to enable you to remain in compliance with any privacy obligation or legal requirements limiting distribution of this information.
          </p>
          </div>
          <div align="right">
          <p><B style="font-size:13px">Very truly yours,</B></p>
          <p><span class="err">*</span><input type="text" name="sign" size="30" value="${copy.sign}" id="sign"><span class="err" id="signerror"><form:errors path="Copyofrequest.sign"></form:errors></span></p>
          <p>Perry Chiropractic and Therapy Center of Canton, Inc.</p>
          <p>Dr. Charles T. Yang DC, DABFP</p>
          </div>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
<td><a href="viewcopyofrequest"style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
</tr>
</table>
</div>
</div>
</td>
</tr>
</table>
</div>
</c:otherwise>
</c:choose>
</form>
</body>
</html>


