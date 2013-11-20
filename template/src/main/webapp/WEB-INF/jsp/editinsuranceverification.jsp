<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
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
</head>
 <body>
<div id="right_content">
<form action="insuranceverification" method="POST">

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
	             <h2>Health Insurance Verification</h2> 
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
               <c:set value="${InsuranceverificationForm.insuranceverification[0]}" var="Insuranceverification"> </c:set>
              <tr class="row1">
              <u><h6>Benefits and Limitation (staff completes)</h6></u>
              </tr>
              <br>
              <tr><p>Hi, I'm calling to verify chiropractic benefits for Mr./ Mrs.<input type="text" class="input_txtbx1" name="verify_name" id="verify_name" value="${Insuranceverification.verify_name}"/><span class="err"><form:errors path="Insuranceverification.verify_name"></form:errors></p></tr>
              <tr class="row1">
              <td>Spoke with</td>
              <td><input type="text" class="input_txtbx1" name="spoke_with" id="spoke_with" value="${Insuranceverification.spoke_with}" /><br><span class="err"><form:errors path="Insuranceverification.spoke_with"></form:errors></td>
              <td>Date</td>
              <td><input type="text" class="input_txtbx1" name="date" id="datepicker" value="${Insuranceverification.date}"/><br><span class="err"><form:errors path="Insuranceverification.date"></form:errors></td>
              <td>Fax#</td>
              <td><input type="text" class="input_txtbx1" name="fax" id="fax" value="${Insuranceverification.fax}"/><br><span class="err"><form:errors path="Insuranceverification.fax"></form:errors></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <h6>Provider Benefits</h6>
              </tr>
              <br>
              <tr class="row1">
              <td>Amount of deductible</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct" id="amount_deduct" value="${Insuranceverification.amount_deduct}" /><br><span class="err"><form:errors path="Insuranceverification.amount_deduct"></form:errors></td>
              <td>Amount of deductible met</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct_met" id="amount_deduct_met" value="${Insuranceverification.amount_deduct_met}"/><br><span class="err"><form:errors path="Insuranceverification.amount_deduct_met"></form:errors></td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1"> 
              <td>Maximum visits/year?</td>
              <td><input type="text" class="input_txtbx1" name="max_visit" id="max_visit" value="${Insuranceverification.max_visit}"/><span class="err"><form:errors path="Insuranceverification.max_visit"></form:errors></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is chiropractic manipulation covered? </td>
              <td><input type="radio" name="is_chiropractic" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="is_chiropractic" value="No" class="input_txt">No</td>
              <td>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="at_what" id="at_what" value="${Insuranceverification.at_what}" /><span class="err"><form:errors path="Insuranceverification.at_what"></form:errors></td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <td>Are x-rays covered?</td>
              <td><input type="radio" name="xray_cover" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="xray_cover" value="No" class="input_txt">No</td>
              <td>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="atwhat" id="atwhat" value="${Insuranceverification.atwhat}"/><br><span class="err"><form:errors path="Insuranceverification.atwhat"></form:errors></td>
              <td>Subject to deductible</td>
              <td><input type="text" class="input_txtbx1" name="subject_deduct" id="subject_deduct" value="${Insuranceverification.subject_deduct}"/><br><span class="err"><form:errors path="Insuranceverification.subject_deduct"></form:errors></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td><input type="radio" name="benefits_honored" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="benefits_honored" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <h6>Non-Provider Benefits</h6>
              </tr>
              <br>
              <tr class="row1">
              <td>Are there out of network benefits?</td>
             <td><input type="radio" name="network_benefits" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="network_benefits" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>Deuctible</td>
              <td><input type="text" class="input_txtbx1" name="deductible" id="deductible" value="${Insuranceverification.deductible}"/><br><span class="err"><form:errors path="Insuranceverification.deductible"></form:errors></td>
              <td>%covered</td>
              <td><input type="text" class="input_txtbx1" name="covered" id="covered" value="${Insuranceverification.covered}"/><br><span class="err"><form:errors path="Insuranceverification.covered"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Therapies covered</td>
              <td> <input type="checkbox" name="cm" value="cm">CM&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="checkbox" name="pt" value="pt">PT&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="ov" value="ov">OV&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td></td>
              <td></td>
              </tr>
               <tr class="row1">
              <td>Are x-rays subject to deductible?</td>
              <td><input type="radio" name="xray_deduct" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="xray_deduct" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td><input type="radio" name="doctors_assign" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="doctors_assign" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>What address do we mail claims to?</td>
              <td><textarea rows="3" cols="35" name="mail_claims" id="mail_claims" value="${Insuranceverification.mail_claims}"></textarea><br><span class="err"><form:errors path="Insuranceverification.mail_claims"></form:errors></td>
              <td></td>
			  <td></td>              
              </tr>
              </table>
              <table>
               <tr>
	        <td valign="top" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
              <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td valign="top" align="center"><br><input type="reset" class="submit_btn" value="Cancel"></td>
	     	 
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
              
              
              
              
              