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
	 
	  $("#policy").keyup(function() {
			
			 $("#policyerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#policyerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
 $("#phone").keyup(function() {
			
			 $("#phoneerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			//var intRegex = /^\d+$/;
			var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
			if(a.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#phoneerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
$("#groupno").keyup(function() {
			
			 $("#groupnoerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#groupnoerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		$("#supphone").keyup(function() {
			
			 $("#supphoneerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			//var intRegex = /^\d+$/;
			var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
			if(a.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#supphoneerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
});
 
 
</script>

<script>
 $(function() {

		$("#datepicker2").datepicker({changeMonth: true, changeYear: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'dd-mm-yy' });
		
		
		$("#datepicker1").datepicker({ changeMonth: true,changeYear: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'dd-mm-yy' });
		
		
	    $("#datepicker").datepicker({ changeYear: true,changeMonth: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'dd-mm-yy' }).bind("change",function(){
	        var minValue = $(this).val();
	        minValue = $.datepicker.parseDate("dd-mm-yy", minValue);
	        minValue.setDate(minValue.getDate()+1);
	        $("#datepicker").datepicker( "option", "minDate", minValue );
	    })
   });
</script>
 <script>
i=0;
$(document).ready(function(){
  $("#supphone").keypress(function(){
var phone=document.getElementById("supphone").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("supphone").value=phone;
 });  

});
</script>
 <script>
i=0;
$(document).ready(function(){
  $("#phone").keypress(function(){
var phone=document.getElementById("phone").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("phone").value=phone;
 });  

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
	            <c:choose>
	            <c:when test="${empty info}">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <u><h6>Patient Information</h6></u>
              </tr>
              <br>
              <tr class="row1">
              <td><span class="err">*</span>Patient's Name</td>
              <td> <input type="text" class="input_txtbx1" name="patient_name" id="patient_name" /><br><span class="err"><form:errors path="Insuranceinformation.patient_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Date of Accident/injury</td>
              <td> <input type="text" class="input_txtbx1" name="date_of_accident" id="datepicker" /><span class="err"><form:errors path="Insuranceinformation.date_of_accident"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Do you have health insurance?</td>
              <td><input type="radio" name="have_insurance" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="have_insurance" value="No" class="input_txt">No</td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Employer's Name</td>
              <td> <input type="text" class="input_txtbx1" name="employers_name" id="employers_name" /><span class="err"><form:errors path="Insuranceinformation.employers_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="insurance_company" id="insurance_company" /><br><span class="err"><form:errors path="Insuranceinformation.insurance_company"></form:errors></td>
              <td><span class="err">*</span>Phone#</td>
              <td><input type="text" class="input_txtbx1" name="phone" id="phone" maxlength="13" /><br><span class="err"><form:errors path="Insuranceinformation.phone"></form:errors>
              <br><span class="err" id="phoneerror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Policy #</td>
              <td> <input type="text" class="input_txtbx1" name="policy" id="policy" /><br><span class="err"><form:errors path="Insuranceinformation.policy"></form:errors>
              <br><span class="err" id="policyerror"></span>
              </td>
              <td><span class="err">*</span>Group#</td>
              <td><input type="text" class="input_txtbx1" name="infono" id="groupno" /><br><span class="err"><form:errors path="Insuranceinformation.infono"></form:errors>
              <br><span class="err" id="groupnoerror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Supplemental Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="supplemental_company" id="supplemental_company" /><br><span class="err"><form:errors path="Insuranceinformation.supplemental_company"></form:errors></td>
              <td><span class="err">*</span>Phone#</td>
              <td> <input type="text" class="input_txtbx1" name="sup_phone" id="supphone" maxlength="13" /><br><span class="err"><form:errors path="Insuranceinformation.sup_phone"></form:errors>
              <br>
              <span class="err" id="supphoneerror"></span>
              </td>
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
 		<td><span class="err">*</span>Patient Signature</td>
        <td> <input type="text" class="input_txtbx1" name="patient_sign" id="patient_sign" /><br><span class="err"><form:errors path="Insuranceinformation.patient_sign"></form:errors></td>
        <td><span class="err">*</span>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date" id="datepicker1" /><br><span class="err"><form:errors path="Insuranceinformation.date"></form:errors></td>
        </tr>
        <tr class="row1">
 		<td><span class="err">*</span>Spouse or Guardian Signature</td>
        <td> <input type="text" class="input_txtbx1" name="spouse_sign" id="spouse_sign" /><br><span class="err"><form:errors path="Insuranceinformation.spouse_sign"></form:errors></td>
        <td><span class="err">*</span>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date1" id="datepicker2" /><br><span class="err"><form:errors path="Insuranceinformation.date1"></form:errors></td>
        </tr>
        </table>
        </c:when>
        <c:otherwise>
         <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <u><h6>Patient Information</h6></u>
              </tr>
              <br>
              <tr class="row1">
              <td><span class="err">*</span>Patient's Name</td>
              <td> <input type="text" class="input_txtbx1" name="patient_name" id="patient_name" value="${info.patient_name}"/><br><span class="err"><form:errors path="Insuranceinformation.patient_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Date of Accident/injury</td>
              <td> <input type="text" class="input_txtbx1" name="date_of_accident" id="datepicker" value="${info.date_of_accident }"/><span class="err"><form:errors path="Insuranceinformation.date_of_accident"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Do you have health insurance?</td>
              <td><input type="radio" name="have_insurance" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="have_insurance" value="No" class="input_txt">No</td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Employer's Name</td>
              <td> <input type="text" class="input_txtbx1" name="employers_name" id="employers_name" value="${info.employers_name}"/><span class="err"><form:errors path="Insuranceinformation.employers_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="insurance_company" id="insurance_company" value="${info.insurance_company}"/><br><span class="err"><form:errors path="Insuranceinformation.insurance_company"></form:errors></td>
              <td><span class="err">*</span>Phone#</td>
              <td><input type="text" class="input_txtbx1" name="phone" id="phone" value="${info.phone }"/><br><span class="err"><form:errors path="Insuranceinformation.phone"></form:errors>
              <br><span class="err" id="phoneerror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Policy #</td>
              <td> <input type="text" class="input_txtbx1" name="policy" id="policy" value="${info.policy}"/><br><span class="err"><form:errors path="Insuranceinformation.policy"></form:errors>
              <br><span class="err" id="policyerror"></span> 
              </td>
              <td><span class="err">*</span>Group#</td>
              <td><input type="text" class="input_txtbx1" name="infono" id="groupno" value="${info.infono}"/><br><span class="err"><form:errors path="Insuranceinformation.infono"></form:errors>
              <br><span class="err" id="groupnoerror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>Supplemental Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="supplemental_company" id="supplemental_company" value="${info.supplemental_company}"/><br><span class="err"><form:errors path="Insuranceinformation.supplemental_company"></form:errors></td>
              <td><span class="err">*</span>Phone#</td>
              <td> <input type="text" class="input_txtbx1" name="sup_phone" id="supphone" value="${info.sup_phone}"/><br><span class="err"><form:errors path="Insuranceinformation.sup_phone"></form:errors></span>
              <br>
              <span class="err" id="supphoneerror"></span>
            
              </td>
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
 		<td><span class="err">*</span>Patient Signature</td>
        <td> <input type="text" class="input_txtbx1" name="patient_sign" id="patient_sign" value="${info.patient_sign}"/><br><span class="err"><form:errors path="Insuranceinformation.patient_sign"></form:errors></td>
        <td><span class="err">*</span>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date" id="datepicker1" value="${info.date }"/><br><span class="err"><form:errors path="Insuranceinformation.date"></form:errors></td>
        </tr>
        <tr class="row1">
 		<td><span class="err">*</span>Spouse or Guardian Signature</td>
        <td> <input type="text" class="input_txtbx1" name="spouse_sign" id="spouse_sign" value="${info.spouse_sign}"/><br><span class="err"><form:errors path="Insuranceinformation.spouse_sign"></form:errors></td>
        <td><span class="err">*</span>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date1" id="datepicker2" value="${info.date1 }"/><br><span class="err"><form:errors path="Insuranceinformation.date1"></form:errors></td>
        </tr>
        </table>
        </c:otherwise>
        </c:choose>
        <table width="100%">
       <tr>
	    <td valign="top" align="right" width="500"><br><input type="submit" class="submit_btn" value="Save"></td>
       <td width="500"></td>
       <!--  <td>&nbsp;&nbsp;</td>
        <td valign="top" align="center"><br><a href="insuranceinfolist" class="submit_btn" style="color: white">Cancel</a> </td>
	    <td>&nbsp;&nbsp;</td>
	    --> <!-- <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='insuranceinfolist'"></td> -->
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
              