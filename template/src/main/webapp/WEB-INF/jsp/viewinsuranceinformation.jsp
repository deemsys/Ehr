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
	             <h2>Viewing Health Insurance Information</h2> 
	            </div>
	            <div class="contentbox">
	            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
               <c:set value="${InsuranceinformationForm.insuranceinformation[0]}" var="Insuranceinformation"> </c:set>
              <tr class="row1">
              <u><h6>Patient Information</h6></u>
              </tr>
              <br>
              <tr class="row1">
              <td >Patient's Name:</td>
              <td >${Insuranceinformation.patient_name}</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Date of Accident/injury:</td>
              <td>${Insuranceinformation.date_of_accident}</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Do you have health insurance?:</td>
              <td>${Insuranceinformation.have_insurance}</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Employer's Name:</td>
              <td>${Insuranceinformation.employers_name}</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Insurance Company</td>
              <td>${Insuranceinformation.insurance_company}</td>
              <td>Phone#</td>
              <td>${Insuranceinformation.phone}</td>
              </tr>
              <tr class="row1">
              <td>Policy #</td>
              <td> ${Insuranceinformation.policy}</td>
              <td>Group#</td>
              <td>${Insuranceinformation.group}</td>
              </tr>
              <tr class="row1">
              <td>Supplemental Insurance Company</td>
              <td>${Insuranceinformation.supplemental_company} </td>
              <td>Phone#</td>
              <td>${Insuranceinformation.sup_phone}</td>
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
        <td> ${Insuranceinformation.patient_sign}</td>
        <td>Date</td>
        <td> ${Insuranceinformation.date}</td>
        </tr>
        <tr class="row1">
 		<td>Spouse or Guardian Signature</td>
        <td> ${Insuranceinformation.spouse_sign}</td>
        <td>Date</td>
        <td>${Insuranceinformation.date1}</td>
        </tr>
        </table>
        <table>
       <tr>
	    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td><br><input type="submit" class="submit_btn" value="Edit"></td>
        <td>&nbsp;&nbsp;</td>
        <td><br><input type="reset" class="submit_btn" value="Delete"></td>
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
              