<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="/resources/css/style.css" />
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
  <STYLE type="text/css">
   P#mypar {font-style:calibri;
   line-height:18px;}
   
   </STYLE>
  <script>
  $(function() {
	    $( "#datepicker" ).datepicker();
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
  $(function() {
	$("#patientsname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#patientssign").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#witness").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
function validatename(){
    var textInput = document.getElementById("patientsname").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("patientsname").value = textInput;
}
</script>

<script>
function validatename1(){
    var textInput = document.getElementById("patientssign").value;
    textInput = textInput.replace(/[^A-Za-z. ]/g, "");
    document.getElementById("patientssign").value = textInput;
}
</script>

<script>
function validatename2(){
    var textInput = document.getElementById("witness").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("witness").value = textInput;
}
</script>
   <script>

	function checkSubmit()
	{
document.getElementById("patientsnameerror").innerHTML=" ";
		
		if(document.getElementById("patientsname").value=="")
		{
		document.getElementById("patientsnameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
		document.getElementById("patientsnameerror").innerHTML="";
	    if(document.getElementById("patientsname").value.length<4 || document.getElementById("patientsname").value.length>=32)
	    {
	    	
	    	document.getElementById("patientsnameerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("patientssignerror").innerHTML=" ";
		
		if(document.getElementById("patientssign").value=="")
		{
		document.getElementById("patientssignerror").innerHTML="Required Field Should not be Empty";
		
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
			
	document.getElementById("witnesserror").innerHTML="";
	if(document.getElementById("witness").value=="")
	{
	document.getElementById("witnesserror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("witnesserror").innerHTML="";
    if(document.getElementById("witness").value.length<4 || document.getElementById("witness").value.length>=32)
    {
    	
    	document.getElementById("witnesserror").innerHTML="witnesss should be min 4 and max 32";
    	
        return false;
    }
	}

	</script>
 </head>
<body>
<div id="right_content">
<form action="updatetreatform" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>  

      <tr>
      <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	              <h2>Editing Authorization and Consent To Treat</h2>
	            </div>
            <div class="contentbox">
          
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <c:set value="${treatform.treatform[0]}" var="Treatdetails"> </c:set>
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                                                <div align="justify">
                        
                       <p id="mypar"> The undersigned hereby authorizes Dr. Charles T. Yang and whomever may be designated as assistants at Perry Chiropractic & Therapy Center to administer such examinations, treatment, testing, and/or x-rays as they deem necessary. </p>
 
<p id="mypar">I am aware that all such services are not complimentary and will be charged at regular chiropractic rates.  However, I understand I may not personally be responsible for all or part of said charges for chiropractic services if a third party payor reimburses for said charges.  If my automobile insurance has medical payments coverage, I authorize this Clinic to bill this insurer and I will submit a claim with my insurer for the Clinic’s Assignment and related documents, and will provide any information required by the Clinic.  I realize that any money which I receive from my automobile insurer for this Clinic’s treatment fees (including under or uninsured motorist coverage proceeds) must be immediately paid over to this Clinic.</p>

<p id="mypar">I agree to hold them free and harmless for any claims, suits for damages of complications which may result from such treatments.  A photocopy of this assignment shall be valid and have the same effect as the original.</p>

<p id="mypar">I authorize this office to release any information regarding my treatment, examination, or diagnostic testing pertinent to my case to third party payors, upon request, at sole discretion of Dr. Charles T. Yang.</p>
                        </tr>
                        
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>PatientsName: </td>
				                  <input type="hidden" class="input_txtbx1" id="inp_id" value="${Treatdetails.treat_no}" name="treat_no" />
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientsname" onInput="return validatename()"; value="${Treatdetails.patientsname}" name="patientsname"  /><span id="patientsnameerror" style="color: red;font-style:italic;"><form:errors path="Treatform.patientsname"></form:errors></span></td>
				                  	</tr>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patients Signature: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientssign" name="patientssign" onInput="return validatename1()"; value="${Treatdetails.patientssign}"/><span id="patientssignerror" style="color: red;font-style:italic;"><form:errors path="Treatform.patientssign"></form:errors></span></td>
				                  	</tr>
				                  	<tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Todays Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="todaydate" value="${Treatdetails.todaydate}"/><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Treatform.todaydate"></form:errors></span></td>
                        </tr>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Witness: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="witness" onInput="return validatename2()"; name="witness" value="${Treatdetails.witness}"/><span id="witnesserror" style="color: red;font-style:italic;"><form:errors path="Treatform.witness"></form:errors></span></td>
				                  	</tr>
                        <tr>
                        </table>
                       
                          <table>
        <tr>
     	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
        <td><br><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
        <td>&nbsp;&nbsp;</td>
        <td><br><a href="deletetreatform" class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a></td>
        </tr>
        </table>
                        
                        
                        
                        
                        </td>
                        </tr>
                        </table>
                        </div>
                        </div>
                        </td>
                        </tr>
                        </table>
                        </form>
                        </div>
                        </body>
                        </html>
                        
                        <jsp:include page="footer.jsp"></jsp:include>
                        