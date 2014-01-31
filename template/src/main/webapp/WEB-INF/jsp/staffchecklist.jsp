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
 $(window).load(function(){
	
	  $("#damageamt").keyup(function() {
			
			 $("#damageamterror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#damageamterror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
 });
 </script>
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 $(function() {
     $( "#datepicker1" ).datepicker();
   });
 
</script>
</head>
 <body>
<div id="right_content">
<form action="staffchecklist" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="55%" class="margin_table">
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
	             <h2>Auto/Personal Injury Patient Checklist<h2> 
	            </div>
	            <div class="contentbox">
	            <c:choose>
				<c:when test="${empty staff}">
	            <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="patinfo" value="confidential Patient Information"/></td>
	            <td valign="top" align="left" class="input_txt">Confidential Patient Information</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="screening" value="Screening Disclosure/referral"/></td>
	            <td valign="top" align="left" class="input_txt">Screening Disclosure/referral</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="aob" value="Assignment of Benefits/Lien"/></td>
	            <td valign="top" align="left" class="input_txt">Assignment of Benefits/Lien</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="history" value="History/Exam Sheet"/></td>
	            <td valign="top" align="left" class="input_txt">History/Exam Sheet</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="xray_sheet" value="SOAP Note/X-ray Sheet"/></td>
	            <td valign="top" align="left" class="input_txt">SOAP Note/X-ray Sheet</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="consent" value="Consent to treat Form/Minor"/></td>
	            <td valign="top" align="left" class="input_txt">Consent to Treat Form/Minor</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="report" value="Accident Report"/></td>
	            <td valign="top" align="left" class="input_txt">Accident Report </td>
	            </tr>
	            </table>
	            <br>
	            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="pat_name" /><span class="err"><form:errors path="Staffchecklist.pat_name"></form:errors>
		      </td>
			  </tr>
			  <!-- </table>
			  <br>
			  <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance/Attorney</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="insure" /><span class="err"><form:errors path="Staffchecklist.insure"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Damage Amount</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="damageamt" name="damage_amount" /><span class="err"><form:errors path="Staffchecklist.damage_amount"></form:errors></span>
		     <br>
		      <span class="err" id="damageamterror"> </span>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Notice of Assignment to Fault Insurance</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="fault_insure" /><span class="err"><form:errors path="Staffchecklist.fault_insure"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Notice of Assignment to Med Pay</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="med_pay" /><span class="err"><form:errors path="Staffchecklist.med_pay"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Notice of Assignment to other Attorney</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="other_attorney" /><span class="err"><form:errors path="Staffchecklist.other_attorney"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Attorney Letter of Protection Received</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="protect_received" /><span class="err"><form:errors path="Staffchecklist.protect_received"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Amount & Dated Billed</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" name="bill" id="datepicker"/><span class="err"><form:errors path="Staffchecklist.bill"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Reimbursement Date</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" name="re_date" id="datepicker1" /><span class="err"><form:errors path="Staffchecklist.re_date"></form:errors>
		      </td>
			  </tr>
			  </table>
			  </c:when>
			  <c:otherwise>
			   <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="patinfo" value="Confidential Patient Information"/></td>
	            <td valign="top" align="left" class="input_txt">Confidential Patient Information</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="screening" value="Screening Disclosure/referral"/></td>
	            <td valign="top" align="left" class="input_txt">Screening Disclosure/referral</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="aob" value="Assignment of Benefits/Lien"/></td>
	            <td valign="top" align="left" class="input_txt">Assignment of Benefits/Lien</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="history" value="History/Exam Sheet"/></td>
	            <td valign="top" align="left" class="input_txt">History/Exam Sheet</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="xray_sheet" value="SOAP Note/X-ray_sheet"/></td>
	            <td valign="top" align="left" class="input_txt">SOAP Note/X-ray Sheet</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="consent" value="Consent to treat Form/Minor"/></td>
	            <td valign="top" align="left" class="input_txt">Consent to Treat Form/Minor</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="report" value="Accident Report"/></td>
	            <td valign="top" align="left" class="input_txt">Accident Report </td>
	            </tr>
	            </table>
	            <br>
	            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="pat_name" value="${staff.pat_name}"/><span class="err"><form:errors path="Staffchecklist.pat_name"></form:errors>
		      </td>
			  </tr>
			  <!-- </table>
			  <br>
			  <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Insurance/Attorney</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="insure" value="${staff.insure}"/><span class="err"><form:errors path="Staffchecklist.insure"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Damage Amount</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="damageamt" name="damage_amount" value="${staff.damage_amount}"/><span class="err"><form:errors path="Staffchecklist.damage_amount"></form:errors></span>
		      <br><span class="err" id="damageamterror"></span>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Notice of Assignment to Fault Insurance</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="fault_insure" value="${staff.fault_insure}"/><span class="err"><form:errors path="Staffchecklist.fault_insure"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Notice of Assignment to Med Pay</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="med_pay" value="${staff.med_pay}"/><span class="err"><form:errors path="Staffchecklist.med_pay"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Notice of Assignment to other Attorney</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="other_attorney" value="${staff.other_attorney}"/><span class="err"><form:errors path="Staffchecklist.other_attorney"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Attorney Letter of Protection Received</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="protect_received" value="${staff.protect_received}"/><span class="err"><form:errors path="Staffchecklist.protect_received"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Amount & Dated Billed</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" name="bill" id="datepicker" value="${staff.bill}"/><span class="err"><form:errors path="Staffchecklist.bill"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Reimbursement Date</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" name="re_date" id="datepicker1" value="${staff.re_date}"/><span class="err"><form:errors path="Staffchecklist.re_date"></form:errors>
		      </td>
			  </tr>
			  </table>
			  </c:otherwise>
			  </c:choose>
			  <br>
              <table>
              <tr >
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="staffdetails" style="color:white" class="submit_btn">Cancel</a></td>
              <td>&nbsp;&nbsp;</td>
              <!-- <td><input type="button" class="submit_btn" value="View" onclick="window.location.href='staffdetails'"></td> -->
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
			  
			  
			
			  
				  
              