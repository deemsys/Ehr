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
	            <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="patinfo" value="patinfo"/></td>
	            <td valign="top" align="left" class="input_txt">Confidential Patient Information</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="screening" value="screening"/></td>
	            <td valign="top" align="left" class="input_txt">Screening Disclosure/referral</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="aob" value="aob"/></td>
	            <td valign="top" align="left" class="input_txt">Assignment of Benefits/Lien</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="history" value="history"/></td>
	            <td valign="top" align="left" class="input_txt">History/Exam Sheet</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="xray_sheet" value="xray_sheet"/></td>
	            <td valign="top" align="left" class="input_txt">SOAP Note/X-ray Sheet</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="consent" value="consent"/></td>
	            <td valign="top" align="left" class="input_txt">Consent to Treat Form/Minor</td>
	            </tr>
	            <tr class="row1">
	            <td valign="middle" align="left" class="input_txt"><input type="checkbox" name="report" value="report"/></td>
	            <td valign="top" align="left" class="input_txt">Accident Report </td>
	            </tr>
	            </table>
	            <br>
	            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Patient Name</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="pat_name" /><span class="err"><form:errors path="Staffchecklist.pat_name"></form:errors>
		      </td>
			  </tr>
			  <!-- </table>
			  <br>
			  <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Insurance/Attorney</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="insure" /><span class="err"><form:errors path="Staffchecklist.insure"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Damage Amount</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="damage_amount" /><span class="err"><form:errors path="Staffchecklist.damage_amount"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Notice of Assignment to Fault Insurance</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="fault_insure" /><span class="err"><form:errors path="Staffchecklist.fault_insure"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Notice of Assignment to Med Pay</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="med_pay" /><span class="err"><form:errors path="Staffchecklist.med_pay"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Notice of Assignment to other Attorney</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="other_attorney" /><span class="err"><form:errors path="Staffchecklist.other_attorney"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Attorney Letter of Protection Received</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" id="inp_id" name="protect_received" /><span class="err"><form:errors path="Staffchecklist.protect_received"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Amount & Dated Billed</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" name="bill" id="datepicker"/><span class="err"><form:errors path="Staffchecklist.bill"></form:errors>
		      </td>
			  </tr>
			  <tr class="row1">
              <td valign="middle" align="left" class="input_txt">Reimbursement Date</td>
			  <td valign="top" align="left" class="input_txt">
		      <input type="text" class="input_txtbx1" name="re_date" id="datepicker1" /><span class="err"><form:errors path="Staffchecklist.re_date"></form:errors>
		      </td>
			  </tr>
			  </table>
			  <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td valign="top" align="center"><input type="submit" class="submit_btn" value="Save"></td>
               <td valign="top" align="center"><input type="reset" class="submit_btn" value="Cancel"></td>
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
			  
			  
			
			  
				  
              