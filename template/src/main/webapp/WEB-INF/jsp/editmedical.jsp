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
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <c:set value="${MedicalRecordsForm.medicalDetails[0]}" var="Medicaldetails"> </c:set>
                        <tr>
                        <div align="justify">
                        <input type="hidden" class="input_txtbx1" id="inp_id" value="${Medicaldetails.medical_no}" name="medical_no" />
				                <p id="mypar">&nbsp;I, <input type="text" class="input_txtbx1" id="inp_id" name="name" value="${Medicaldetails.name}"/>
				                &nbsp;&nbsp;give my permission to release Medical Information, Records, X-ray Reports, or the following &nbsp;&nbsp;<input type="text" class="input_txtbx1" id="inp_id" name="medicalinformation" value="${Medicaldetails.medicalinformation}"/><span class="err"><form:errors path="MedicalRecords.medicalinformation"></form:errors></span> &nbsp;&nbsp;to Lorain Injury Center, <br>Dr. Darrin Pordash D.C.<br>
				                5190 Deroit Rd.<br>
                                Sheffield Village, Ohio 44035<br>
                                Fax 440-934-3107  </p>
                         <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="patientsignature" value="${Medicaldetails.patientsignature}"/><span class="err"><form:errors path="MedicalRecords.patientsignature"></form:errors></span>
				                  	</td>
				                  	</tr>
				                  	</table>
				                  	
				                  	<table>
				                  	<tr>
				  <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				
				<td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Update"></td>
				<td>&nbsp;&nbsp;</td>
				 <td><a href="deletemedicalrecordsdetails" class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a></td>
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