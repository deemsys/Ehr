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
	             <h2>Viewing Health Insurance Verification</h2> 
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
               <c:set value="${InsuranceverificationForm.insuranceverification[0]}" var="Insuranceverification"> </c:set>
              <tr class="row1">
              <u><h6>Benefits and Limitation (staff completes)</h6></u>
              </tr>
              <br>
              <tr><p>Hi, I'm calling to verify chiropractic benefits for Mr./ Mrs.&nbsp;&nbsp;&nbsp;${Insuranceverification.verify_name}</p></tr>
              <tr class="row1">
              <td>Spoke with</td>
              <td>${Insuranceverification.spoke_with}</td>
              <td>Date</td>
              <td>${Insuranceverification.date}</td>
              <td>Fax#</td>
              <td>${Insuranceverification.fax}</td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <h6>Provider Benefits</h6>
              </tr>
              <br>
              <tr class="row1">
              <td>Amount of deductible</td>
              <td>${Insuranceverification.amount_deduct}</td>
              <td>Amount of deductible met</td>
              <td>${Insuranceverification.amount_deduct_met}</td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1"> 
              <td>Maximum visits/year?</td>
              <td>${Insuranceverification.max_visit}</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is chiropractic manipulation covered? </td>
              <td>${Insuranceverification.is_chiropractic}</td>
              <td>At what%?</td>
              <td>${Insuranceverification.at_what}</td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <td>Are x-rays covered?</td>
              <td>${Insuranceverification.xray_cover}</td>
              <td>At what%?</td>
              <td>${Insuranceverification.atwhat}</td>
              <td>Subject to deductible</td>
              <td>${Insuranceverification.subject_deduct}</td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td>${Insuranceverification.benefits_honored}</td>
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
             <td>${Insuranceverification.network_benefits}</td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>Deuctible</td>
              <td>${Insuranceverification.deductible}</td>
              <td>%covered</td>
              <td>${Insuranceverification.covered}</td>
              </tr>
              <tr class="row1">
              <td>Therapies covered</td>
              <td> ${Insuranceverification.cm}&nbsp;&nbsp;&nbsp;&nbsp;
              ${Insuranceverification.pt}&nbsp;&nbsp;&nbsp;&nbsp;
                ${Insuranceverification.ov}&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td></td>
              <td></td>
              </tr>
               <tr class="row1">
              <td>Are x-rays subject to deductible?</td>
              <td>${Insuranceverification.xray_deduct}</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td>${Insuranceverification.doctors_assign}</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>What address do we mail claims to?</td>
              <td>${Insuranceverification.mail_claims}</td>
              <td></td>
			  <td></td>              
              </tr>
              </table>
              <table>
              <tr>
	          <td valign="top" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>  
              <td valign="top" align="center"><br><input type="button" class="submit_btn" value="Edit" onclick="window.location.href='editinsuranceverification'"></td>
              <td>&nbsp;&nbsp;</td>
               <td valign="top" align="center"><br><input type="button" class="submit_btn" value="Delete"></td>
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
              
              
              
              
              