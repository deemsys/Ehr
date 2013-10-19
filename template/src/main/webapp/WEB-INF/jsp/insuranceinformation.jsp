<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
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
 $(function() {
     $( "#datepicker1" ).datepicker();
   });
 $(function() {
     $( "#datepicker2" ).datepicker();
   });
</script>
</head>
 <body>
<div id="right_content">
<form action="insuranceinformation" method="POST">

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
	             <h2>Health Insurance Information</h2> 
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <u><h6>Patient Information</h6></u>
              </tr>
              <br>
              <tr class="row1">
              <td>Patient's Name</td>
              <td> <input type="text" class="input_txtbx1" name="patient_name" id="patient_name" /><br><span class="err"><form:errors path="Insuranceinformation.patient_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Date of Accident/injury</td>
              <td> <input type="text" class="input_txtbx1" name="date_of_accident" id="datepicker" /><span class="err"><form:errors path="Insuranceinformation.date_of_accident"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Do you have health insurance?</td>
              <td><input type="radio" name="have_insurance" value="0" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="have_insurance" value="1" class="input_txt">No</td>
              </tr>
              <tr class="row1">
              <td>Employer's Name</td>
              <td> <input type="text" class="input_txtbx1" name="employers_name" id="employers_name" /><span class="err"><form:errors path="Insuranceinformation.employers_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="insurance_company" id="insurance_company" /><br><span class="err"><form:errors path="Insuranceinformation.insurance_company"></form:errors></td>
              <td>Phone#</td>
              <td><input type="text" class="input_txtbx1" name="phone" id="phone" /><br><span class="err"><form:errors path="Insuranceinformation.phone"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Policy #</td>
              <td> <input type="text" class="input_txtbx1" name="policy" id="policy" /><br><span class="err"><form:errors path="Insuranceinformation.policy"></form:errors></td>
              <td>Group#</td>
              <td><input type="text" class="input_txtbx1" name="group" id="group" /><br><span class="err"><form:errors path="Insuranceinformation.policy"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Supplemental Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="supplemental_company" id="supplemental_company" /><br><span class="err"><form:errors path="Insuranceinformation.supplemental_company"></form:errors></td>
              <td>Phone#</td>
              <td> <input type="text" class="input_txtbx1" name="sup_phone" id="sup_phone" /><br><span class="err"><form:errors path="Insuranceinformation.sup_phone"></form:errors></td>
              </tr>
              </table>
              
           <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><div align="justify">
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I understand and agree that health and accident insurance policies are an arrangement between an
	insurance carrier and myself. Furthermore, I understand that this office will prepare any necessary 
	reports and forms to assist me in making collection from the insurance company and that any amount 
	authorized to be paid directly to this office will be credited to my account upon receipt. I permit this
	office to endorse co-isssued remittances for the conveyance of credit to my account. However, I
	clearly understand and agree that I am personally responsible for payment. I also understand that if
	I suspend or terminate my care and treatment, any fees for professional services rendered me will be
	immediately due and payable.</p></div></tr>
	</table>
 		<table cellpadding="0" cellspacing="0" border="0" width="100%">
 		<tr class="row1">
 		<td>Patient Signature</td>
        <td> <input type="text" class="input_txtbx1" name="patient_sign" id="patient_sign" /><br><span class="err"><form:errors path="Insuranceinformation.patient_sign"></form:errors></td>
        <td>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date" id="datepicker1" /><br><span class="err"><form:errors path="Insuranceinformation.date"></form:errors></td>
        </tr>
        <tr class="row1">
 		<td>Spouse or Guardian Signature</td>
        <td> <input type="text" class="input_txtbx1" name="spouse_sign" id="spouse_sign" /><br><span class="err"><form:errors path="Insuranceinformation.spouse_sign"></form:errors></td>
        <td>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date1" id="datepicker2" /><br><span class="err"><form:errors path="Insuranceinformation.date1"></form:errors></td>
        </tr>
       <tr>
	    <td valign="top" align="center">&nbsp;</td>
        <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save"></td>
        <td valign="top" align="center"><br><input type="reset" class="submit_btn" value="Cancel"></td>
	    <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewinsuranceinformation'"></td>
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
              