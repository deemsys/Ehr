<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="/resources/css/style.css" />
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <script src="resources/js/jquery-1.9.1.js"></script>
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
 </head>
<body>
<div id="right_content">
<form action="treatform" method="POST">

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
	              <h2>Authorization and Consent To Treat</h2>
	            </div>
            <div class="contentbox">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
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
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="patientsname"/><br><span class="err"><form:errors path="Treatform.patientsname"></form:errors></span>
				                  	</tr>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patients Signature: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="patientssign"  /><br><span class="err"><form:errors path="Treatform.patientssign"></form:errors></span>
				                  	</tr>
				                  	<tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Todays Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="todaydate" /><br><span class="err"><form:errors path="Treatform.todaydate"></form:errors></span>
                        </td>
                        </tr>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Witness: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="witness" /><br><span class="err"><form:errors path="Treatform.witness"></form:errors></span>
				                  	</tr>
                        <tr>
				  <td valign="top" align="center">&nbsp;</td>
				                <td valign="top" align="center"><br><input type="submit" class="submit_btn2" value="Submit"></td>
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
                        