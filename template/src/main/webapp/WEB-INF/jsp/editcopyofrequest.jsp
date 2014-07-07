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
	else
	{
    	
    	document.getElementById("regardingerror").innerHTML="Required Field Should not be Empty";    	
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
          
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
    
    <script type="text/javascript">
       function validate1(event) {
          
           var regex = new RegExp("^[0-9]+$");
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
 <form action="updatecopyofrequest" method="POST"> 


<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
<c:set value="${copyofrequestform.copyofrequest[0]}" var="copyofrequest"/>
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
          <input type="hidden" class="input_txtbx1" id="inp_id" value="${copyofrequest.copyofrequestno}" name="copyofrequestno" />
          <td><span class="err">*</span> Patients Attorney or Insurance Adjuster: </td>
          <td><input type="text"  class="input_txtbx1" name="patient" size="40" value="${copyofrequest.patient}" id="patient" onInput="return validatename(id)";><br/><span class="err" id="patienterror"  style="color: red;font-style:italic;"><form:errors path="Copyofrequest.patient"></form:errors></span></td>
          </tr>   
          <tr height="30">
          <td><span class="err">&nbsp;</span>Address: </td>
          <td><textarea rows="4" cols="43"  class="input_txtarea" name="address" id="address">${copyofrequest.address}</textarea><br/><span class="err"><form:errors path="Copyofrequest.address"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td>&nbsp;Regarding: </td>
          <td><input type="text" class="input_txtbx1" name="regarding" id="regarding" size="40" value="${copyofrequest.regarding }" onInput="return validatename(id)";><br/><span class="err" id="regardingerror"></span></td>
          </tr>
          <tr height="30">
          <td><span class="err">*</span> Date of Accident: </td>
          <td><input type="text"  class="input_txtbx1" name="dateofaccident" id="datepicker" size="40" value="${copyofrequest.dateofaccident}"><br/><span class="err" id="datepickererror"></span></td>
          </tr>
          <br>
          <tr height="30">
          <td><span class="err">*</span> Claim Number: </td>
          <td><input type="text" class="input_txtbx1" name="claimnumber" onInput="return validateusername()";size="40" value="${copyofrequest.claimnumber }" id="claimnumber"><br/><span class="err" id="claimnumbererror"  style="color: red;font-style:italic;"><form:errors path="Copyofrequest.claimnumber"></form:errors></span></td>
          </tr>
          <tr height="30">
          <td>&nbsp;Today's Date:  </td>
          <td><input type="text" class="input_txtbx1" name="todaydate" id="datepicker1" size="40" value="${copyofrequest.todaydate }"><br/><span class="err" id="datepicker1error"></span></td>
          </tr>
          </table>
          <table width="100%">
          <tr height="30">
          <td width="40"><span class="err" id="dearerror"  style="color: red;font-style:italic;">*</span>&nbsp;&nbsp;Dear  </td>
          <td><input type="text"  class="input_txtbx1" name="dear"  size="40" value="${copyofrequest.dear}" id="dear" onInput="return validatename(id)";></td>
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
          <p><span class="err">*</span><input type="text"  class="input_txtbx1" name="sign" size="30" value="${copyofrequest.sign}" id="sign" onInput="return validatename(id)";><span class="err" id="signerror"  style="color: red;font-style:italic;"><form:errors path="Copyofrequest.sign"></form:errors></span></p>
          <p>Perry Chiropractic and Therapy Center of Canton, Inc.</p>
          <p>Dr. Charles T. Yang DC, DABFP</p>
          </div>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
<td><a href="deletecopyofrequest?copyofrequestno=${copyofrequest.copyofrequestno}" style="color:white" class="submit_btn" onclick="return confirmation()">Delete</a></td>
<td><a href="viewallpatientdetails"style="color:white" class="submit_btn">Cancel</a></td>
</tr>
</table>
<script language="javascript">

function confirmation() {
	var answer = confirm("Are you Sure You Want to Delete  Patient Copy of Request ?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}

</script>
</div>
</div>
</td>
</tr>
</table>
</div>
</form>
</body>
</html>

