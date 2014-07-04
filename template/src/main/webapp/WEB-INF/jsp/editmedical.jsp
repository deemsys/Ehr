<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
<script src="resources/js/jquey-1.9.1.js"></script>
<STYLE type="text/css">
   P#mypar {font-style:calibri;
   line-height:18px;}
   
   </STYLE>
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
	$("#iname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#medicalinformation").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#patientsignature").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
  <script>

	function checkSubmit()
	{
		
		document.getElementById("inameerror").innerHTML="";
		if(document.getElementById("iname").value!="")
		{
	    if(document.getElementById("iname").value.length<4 || document.getElementById("iname").value.length>=32)
	    {
	    	
	    	document.getElementById("inameerror").innerHTML="Should be of length 4 to 32";
	    	
	        return false;
	    }
	    }
		document.getElementById("inameerror").innerHTML="";
		if(document.getElementById("iname").value!="")
		{
			if(document.getElementById("iname").value.substring(0,1)==" ")
			{
		document.getElementById("inameerror").innerHTML="Initial space not allowed";
		
		return false;
		}
		}
		
		document.getElementById("medicalinformationerror").innerHTML="";
		if(document.getElementById("medicalinformation").value!="")
		{
	    if(document.getElementById("medicalinformation").value.length<4 || document.getElementById("medicalinformation").value.length>=32)
	    {
	    	
	    	document.getElementById("medicalinformationerror").innerHTML="Should be of length 4 to 32";
	    	
	        return false;
	    }
	    }
		document.getElementById("medicalinformationerror").innerHTML="";
		if(document.getElementById("medicalinformation").value!="")
		{
			if(document.getElementById("medicalinformation").value.substring(0,1)==" ")
			{
		document.getElementById("medicalinformationerror").innerHTML="Initial space not allowed";
		
		return false;
		}
		}
		
		
document.getElementById("patientsignatureerror").innerHTML=" ";
		
		if(document.getElementById("patientsignature").value=="")
		{
		document.getElementById("patientsignatureerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		} 
		document.getElementById("patientsignatureerror").innerHTML=" ";
		
		if(document.getElementById("patientsignature").value.substring(0,1)==" ")
		{
		document.getElementById("patientsignatureerror").innerHTML="Initial space not allowed";
		
		return false;
		}
	}

	</script>
	
	<script>
  $(function() {
	$("#iname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#medicalinformation").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#patientsignature").on("keypress", function(e) {
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
function validatename1(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z. ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
</head>
<body>
<div id="right_content">
<form action="updatemedicalrecords" method="POST">

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
	              <h2>Release Of Medical Records Authorization</h2>
	            </div>
            <div class="contentbox">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="70%">
                        <c:set value="${MedicalRecordsForm.medicalDetails[0]}" var="Medicaldetails"> </c:set>
                        <tr>
                        <div align="justify">
                        <input type="hidden" class="input_txtbx1" id="inp_id" value="${Medicaldetails.medical_no}" name="medical_no" />
				                <p id="mypar">&nbsp;I, <input type="text" class="input_txtbx1" id="iname" name="name" value="${Medicaldetails.name}" onInput="return validatename(id);"/><span id="inameerror" style="color: red;font-style:italic;"><form:errors path="MedicalRecords.name"></form:errors></span>
				                &nbsp;&nbsp;give my permission to release Medical Information, Records, X-ray Reports, or the following &nbsp;&nbsp;<input type="text" class="input_txtbx1" id="medicalinformation" name="medicalinformation" value="${Medicaldetails.medicalinformation}" onInput="return validatename(id);"/><span id="medicalinformationerror" style="color: red;font-style:italic;"><form:errors path="MedicalRecords.medicalinformation"></form:errors></span> &nbsp;&nbsp;to Lorain Injury Center, <br>Dr. Darrin Pordash D.C.<br>
				                5190 Deroit Rd.<br>
                                Sheffield Village, Ohio 44035<br>
                                Fax 440-934-3107  </p>
                         <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt" width="30%"><span class="err"> * </span>Patient Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientsignature" name="patientsignature" onInput="return validatename1(id)"; " value="${Medicaldetails.patientsignature}"/><br/>
				                  	<span id="patientsignatureerror" style="color: red;font-style:italic;"><form:errors path="MedicalRecords.patientsignature"></form:errors></span>
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	
				                  	<table>
				                  	<tr>
				  <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				
				<td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>			
				<td> <a href="deletemedicalrecordsdetails?medical_no=${Medicaldetails.medical_no}" class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a></td>
				  </tr>
				                  	</div>
				                  	
				                  
                                
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