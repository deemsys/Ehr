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
<form action="updatehardship" method="POST">

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
	             <h2>Editing Hardship Agreement</h2> 
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <c:set value="${hardshipagreementform.hardshipagreement[0]}" var="Hardshipagreement"> </c:set>
              <tr>
              <td>Date</td>
              <input type="hidden" class="input_txtbx1" id="inp_id" value="${Hardshipagreement.agreement_no}" name="agreement_no" />
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" value="${Hardshipagreement.date}"/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><br><p id="mypar">To Whom It May Concern:</p></tr>
       		  </table>
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr>
        	  <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;By my signature below I am requesting that my doctor reduce normal and customary fees charges so as to allow me to receive chiropractic care.  My financial circumstances are such that if I were to pay the customary fees charged I would be forced (due to economic reasons) to not receive care.</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I recognize that any agreement made to assist me is purely confidential and that my fee arrangement would be different than that which is standard in the office.</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If my insurance company policy demands full payment of the deductible or co-payments, I agree that it is my responsibility to notify my insurance carrier that due to economic hardship I am only making partial payment.</p>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr >
       		  <td valign="middle" align="left" class="input_txt">Print Patients Name
              <input type="text" class="input_txtbx1" name="print_pat_name" id="print_pat_name" value="${Hardshipagreement.print_pat_name}" /><span class="err"><form:errors path="Hardshipagreement.print_pat_name"></form:errors></span></td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="middle" align="left" class="input_txt">Patients Signature&nbsp;&nbsp;&nbsp;
              <input type="text" class="input_txtbx1" name="pat_sign" id="pat_sign" value="${Hardshipagreement.pat_sign}"/><span class="err"><form:errors path="Hardshipagreement.pat_sign"></form:errors></td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="middle" align="left" class="input_txt">Witness Signature&nbsp;&nbsp;&nbsp;  
              <input type="text" class="input_txtbx1" name="witness_sign" id="witness_sign" value="${Hardshipagreement.witness_sign}" /><span class="err"><form:errors path="Hardshipagreement.witness_sign"></form:errors></td>
              </tr>
              </table>
              <br>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Update"></td>
              <td>&nbsp;&nbsp;</td>
              <td><input type="reset" class="submit_btn" value="Cancel"></td>
              <td>&nbsp;&nbsp;</td>
              <td><input type="button" class="submit_btn" value="Back" onclick="window.location.href='hardshiplist'"></td>
              
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