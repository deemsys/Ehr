<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	             <h2>Viewing Auto/Personal Injury Patient Checklist<h2> 
	            </div>
	            <div class="contentbox">
	            <table cellpadding="0" cellspacing="0" border="0" width="100%">
	             <c:set value="${StaffchecklistForm.staffchecklist[0]}" var="Staffchecklist"> </c:set>
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
              <c:set value="${StaffchecklistForm.staffchecklist[0]}" var="Staffchecklist"> </c:set>
              <tr class="row1">
              <td>Patient Name:</td>
			  <td>${Staffchecklist.pat_name}</td>
			  </tr>
			  <!-- </table>
			  <br>
			  <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
			  <tr class="row1">
              <td>Insurance/Attorney:</td>
			  <td>${Staffchecklist.insure}</td>
			  </tr>
			  <tr class="row1">
              <td>Damage Amount:</td>
			  <td>${Staffchecklist.damage_amount}
		      </td>
			  </tr>
			  <tr class="row1">
              <td>Notice of Assignment to Fault Insurance:</td>
			  <td>${Staffchecklist.fault_insure}
		      </td>
			  </tr>
			  <tr class="row1">
              <td>Notice of Assignment to Med Pay:</td>
			  <td>${Staffchecklist.med_pay}
		      </td>
			  </tr>
			  <tr class="row1">
              <td>Notice of Assignment to other Attorney:</td>
			  <td>${Staffchecklist.other_attorney}
		      </td>
			  </tr>
			  <tr class="row1">
              <td>Attorney Letter of Protection Received:</td>
			  <td>${Staffchecklist.protect_received}
		      </td>
			  </tr>
			  <tr class="row1">
              <td>Amount & Dated Billed:</td>
			  <td>${Staffchecklist.bill}
		      </td>
			  </tr>
			  <tr class="row1">
              <td>Reimbursement Date:</td>
			  <td>${Staffchecklist.re_date}
			  </td>
			  </tr>
			  </table>
			  <br>
              <table>
              <tr >
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td valign="top" align="center"><input type="button" class="submit_btn" value="Edit" onclick="window.location.href='editstaffchecklist'"></td>
              <td>&nbsp;&nbsp;</td>
               <td valign="top" align="center"><input type="button" class="submit_btn" value="Delete"></td>
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
			  
			  
			
			  
				  
              