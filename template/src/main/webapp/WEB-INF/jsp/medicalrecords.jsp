<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="/resources/css/style.css" />

<STYLE type="text/css">
   P#mypar {font-style:calibri;
   line-height:18px;}
   
   </STYLE>
   <script>
  $(function() {
	$("#name").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
function validatename(id)
{
	var textInput = document.getElementById(id).value;
	textInput = textInput.replace(/[^A-Za-z ]/g, "");
	document.getElementById(id).value = textInput;
}
</script>
<script>
function validatesign()
{
	var textInput = document.getElementById("patientsignature").value;
	textInput = textInput.replace(/[^A-Za-z. ]/g, "");
	document.getElementById("patientsignature").value = textInput;
}
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
  $(function() {
	$("#name").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
   <script>
  $(function() {
	  alert("medical");
	$("#medicalinformation").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
   <script>

	function checkSubmit()
	{
document.getElementById("patientsignatureerror").innerHTML=" ";
		
		if(document.getElementById("patientsignature").value=="")
		{
		document.getElementById("patientsignatureerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		} 
		
		document.getElementById("patientsignatureerror").innerHTML="";
	    if(document.getElementById("patientsignature").value.length<4 || document.getElementById("patientsignature").value.length>=32)
	    {
	    	
	    	document.getElementById("patientsignatureerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    } 
	
	
	 	if(document.getElementById("patientsignature").value.substring(0,1)==" ")
		{
		document.getElementById("patientsignatureerror").innerHTML="Initial space not allowed";
		
		return false;
		}
	
		 /* 	 document.getElementById("inp_id1error").innerHTML="";
			    if(document.getElementById("inp_id1").value.length<4 || document.getElementById("inp_id1").value.length>=32)
			    {
			    	
			    	document.getElementById("inp_id1error").innerHTML="Name should be min 4 and max 32";
			    	
			        return false;
			    } 
			
			
			 	if(document.getElementById("inp_id1").value.substring(0,1)==" ")
				{
				document.getElementById("inp_id1error").innerHTML="Initial space not allowed";
				
				return false;
				}
			 	 document.getElementById("inp_id2error").innerHTML="";
				    if(document.getElementById("inp_id2").value.length<4 || document.getElementById("inp_id2").value.length>=32)
				    {
				    	
				    	document.getElementById("inp_id2error").innerHTML="Name should be min 4 and max 32";
				    	
				        return false;
				    } 
				
				
				 	if(document.getElementById("inp_id2").value.substring(0,1)==" ")
					{
					document.getElementById("inp_id2error").innerHTML="Initial space not allowed";
					
					return false;
					}
 */		 	
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
<div id="right_content">
<form action="medicalrecords" method="POST">

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
        	<div id="block1">
	            <div class="headings altheading">
	            <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	              <h2>Release Of Medical Records Authorization</h2>
	            </div>
            <div class="contentbox">
            <c:choose>
            <c:when test="${empty medical}">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
				                <p id="mypar">&nbsp;I, <input type="text" class="input_txtbx1" name="name" id="name"  /><span id="name1error" style="color: red;font-style:italic;"><form:errors path="MedicalRecords.name"></form:errors></span>
				                &nbsp;&nbsp;give my permission to release Medical Information, Records, X-ray Reports, or the following &nbsp;&nbsp;&nbsp;<br><input type="text" class="input_txtbx1" id="medicalinformation" name="medicalinformation" onInput="return validatename(id);"/><span id="medicalinformationerror" style="color: red;font-style:italic;"><form:errors path="MedicalRecords.medicalinformation"></form:errors></span> &nbsp;&nbsp;to Lorain Injury Center, <br>Dr. Darrin Pordash D.C.<br>
				                5190 Deroit Rd.<br>
                                Sheffield Village, Ohio 44035<br>
                                Fax 440-934-3107  </p>
                         <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientsignature" onInput="return validatesign();" name="patientsignature" /><span id="patientsignatureerror" style="color: red;font-style:italic;"><form:errors path="MedicalRecords.patientsignature"></form:errors></span>
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	</c:when>
				                  	<c:otherwise>
				                  	 <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
				                <p id="mypar">&nbsp;I, <input type="text" class="input_txtbx1" id="name"  name="name" value="${medical.name}"/><span class="err"><form:errors path="MedicalRecords.name"></form:errors></span>
				                &nbsp;&nbsp;give my permission to release Medical Information, Records, X-ray Reports, or the following <br><input type="text" class="input_txtbx1" id="inp_id2" name="medicalinformation" value="${medical.medicalinformation}"/><span class="err"><form:errors path="MedicalRecords.medicalinformation"></form:errors></span> &nbsp;&nbsp;to Lorain Injury Center, <br>Dr. Darrin Pordash D.C.<br>
				                5190 Deroit Rd.<br>
                                Sheffield Village, Ohio 44035<br>
                                Fax 440-934-3107  </p>
                         <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientsignature" name="patientsignature" value="${medical.patientsignature}"/><span id="patientsignatureerror" style="color: red;font-style:italic;"><form:errors path="MedicalRecords.patientsignature"></form:errors></span>
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	</c:otherwise>
				                  	</c:choose>
				                  	<table>
				                  	<tr>
				  <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
				<td>&nbsp;&nbsp;
				 <td><br><a href="viewpatient"style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
				<!--  <td valign="top" align="right"><br> <input type="button"   class="submit_btn" value=" Print" onclick="window.print();return false;" /></td> -->
				<!-- <a href="medicalrecordslist" class="submit_btn" style="color: white">Cancel</a> --><br><br><br></td>
				
				<!--  <td valign="top" align="center"><br><input type="button" class="submit_btn" value="view" onclick="window.location.href='medicalrecordslist'"></td> -->
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