<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	  $("#fax").keyup(function() {
		
		 $("#faxerror").html(''); 
		/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
		var intRegex = /^\d+$/;
		if(intRegex.test($(this).val())||$(this).val()=='') 
		{
			var $in = $(this).val();		 
		}
		else if($(this).val()!='')
			{
			
			$("#faxerror").html('Kindly enter a number!!!!');
			}
	}).keydown(function() {
	    oldValue = $(this).val();
	})
	 $("#amountdeduct").keyup(function() {
		
		 $("#amountdeducterror").html(''); 
		/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
		var intRegex = /^\d+$/;
		if(intRegex.test($(this).val())||$(this).val()=='') 
		{
			var $in = $(this).val();		 
		}
		else if($(this).val()!='')
			{
			
			$("#amountdeducterror").html('Kindly enter a number!!!!');
			}
	}).keydown(function() {
	    oldValue = $(this).val();
	})
	 $("#amountdeductmet").keyup(function() {
		
		 $("#amountdeductmeterror").html(''); 
		/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
		var intRegex = /^\d+$/;
		if(intRegex.test($(this).val())||$(this).val()=='') 
		{
			var $in = $(this).val();		 
		}
		else if($(this).val()!='')
			{
			
			$("#amountdeductmeterror").html('Kindly enter a number!!!!');
			}
	}).keydown(function() {
	    oldValue = $(this).val();
	})
	 $("#atwhat").keyup(function() {
		
		 $("#atwhaterror").html(''); 
		/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
		var intRegex = /^\d+$/;
		if(intRegex.test($(this).val())||$(this).val()=='') 
		{
			var $in = $(this).val();		 
		}
		else if($(this).val()!='')
			{
			
			$("#atwhaterror").html('Kindly enter a number!!!!');
			}
	}).keydown(function() {
	    oldValue = $(this).val();
	})
	 $("#atwhat1").keyup(function() {
		
		 $("#atwhat1error").html(''); 
		/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
		var intRegex = /^\d+$/;
		if(intRegex.test($(this).val())||$(this).val()=='') 
		{
			var $in = $(this).val();		 
		}
		else if($(this).val()!='')
			{
			
			$("#atwhat1error").html('Kindly enter a number!!!!');
			}
	}).keydown(function() {
	    oldValue = $(this).val();
	})
	 $("#subjectdeduct").keyup(function() {
		
		 $("#subjecterror").html(''); 
		/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
		var intRegex = /^\d+$/;
		if(intRegex.test($(this).val())||$(this).val()=='') 
		{
			var $in = $(this).val();		 
		}
		else if($(this).val()!='')
			{
			
			$("#subjectdeducterror").html('Kindly enter a number!!!!');
			}
	}).keydown(function() {
	    oldValue = $(this).val();
	})
	 $("#deductible").keyup(function() {
		
		 $("#deductibleerror").html(''); 
		/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
		var intRegex = /^\d+$/;
		if(intRegex.test($(this).val())||$(this).val()=='') 
		{
			var $in = $(this).val();		 
		}
		else if($(this).val()!='')
			{
			
			$("#deductibleerror").html('Kindly enter a number!!!!');
			}
	}).keydown(function() {
	    oldValue = $(this).val();
	})
	$("#covered").keyup(function() {
		
		 $("#coverederror").html(''); 
		/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
		var intRegex = /^\d+$/;
		if(intRegex.test($(this).val())||$(this).val()=='') 
		{
			var $in = $(this).val();		 
		}
		else if($(this).val()!='')
			{
			
			$("#coverederror").html('Kindly enter a number!!!!');
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
 
</script>
</head>
 <body>
<div id="right_content">
<form action="updateinsuranceverification" method="POST">

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
              <input type="hidden" class="input_txtbx1" id="inp_id" value="${Insuranceverification.form_no}" name="form_no" />
              <tr><p>Hi, I'm calling to verify chiropractic benefits for Mr./ Mrs.<input type="text" class="input_txtbx1" name="verify_name" id="verify_name" value="${Insuranceverification.verify_name}"/></p></tr>
              <tr class="row1">
              <td>Spoke with</td>
              <td><input type="text" class="input_txtbx1" name="spoke_with" id="spoke_with" value="${Insuranceverification.spoke_with}" /></td>
              <td>Date</td>
              <td><input type="text" class="input_txtbx1" name="date" id="datepicker" value="${Insuranceverification.date}"/></td>
              <td>Fax#</td>
              <td><input type="text" class="input_txtbx1" name="fax" id="fax" value="${Insuranceverification.fax}"/>
              <span class="err" id="faxerror"></span>
              </td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <h6>Provider Benefits</h6>
              </tr>
              <br>
              <tr class="row1">
              <td>Amount of deductible</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct" id="amountdeduct" value="${Insuranceverification.amount_deduct}" />
              <span class="err" id="amountdeducterror"></span>
              </td>
              <td>Amount of deductible met</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct_met" id="amountdeductmet" value="${Insuranceverification.amount_deduct_met}"/>
              <span class="err" id="amountdeductmeterror"></span>
              </td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1"> 
              <td>Maximum visits/year?</td>
              <td><input type="text" class="input_txtbx1" name="max_visit" id="max_visit" value="${Insuranceverification.max_visit}"/></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is chiropractic manipulation covered? </td>
              <td>	<input type="radio" name="is_chiropractic" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.is_chiropractic=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="is_chiropractic" value="No" class="input_txt"  <c:if test="${Insuranceverification.is_chiropractic=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="at_what" id="atwhat" value="${Insuranceverification.at_what}" />
              <span class="err" id="atwhaterror"></span>
              </td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <td>Are x-rays covered?</td>
              <td>	<input type="radio" name="xray_cover" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.xray_cover=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="xray_cover" value="No" class="input_txt"  <c:if test="${Insuranceverification.xray_cover=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="atwhat" id="atwhat1" value="${Insuranceverification.atwhat}"/>
              <span class="err" id="atwhat1error"></span>
              </td>
              <td>Subject to deductible</td>
              <td><input type="text" class="input_txtbx1" name="subject_deduct" id="subjectdeduct" value="${Insuranceverification.subject_deduct}"/>
              <span class="err" id="subjectdeducterror"></span>
              </td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td>	<input type="radio" name="benefits_honored" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.benefits_honored=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="benefits_honored" value="No" class="input_txt"  <c:if test="${Insuranceverification.benefits_honored=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
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
             <td>	<input type="radio" name="network_benefits" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.network_benefits=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="network_benefits" value="No" class="input_txt"  <c:if test="${Insuranceverification.network_benefits=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>Deductible</td>
              <td><input type="text" class="input_txtbx1" name="deductible" id="deductible" value="${Insuranceverification.deductible}"/>
              <br><span class="err" id="deductibleerror"></span>
              </td>
              <td>%covered</td>
              <td><input type="text" class="input_txtbx1" name="covered" id="covered" value="${Insuranceverification.covered}"/>
              <br><span class="err" id="coverederror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td>Therapies covered</td>
              <td> <input type="checkbox" name="cm" value="cm" <c:if test="${Insuranceverification.cm=='cm'}"><c:out value="checked=checked"/></c:if>>CM&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="checkbox" name="pt" value="pt" <c:if test="${Insuranceverification.pt=='pt'}"><c:out value="checked=checked"/></c:if>>PT&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="ov" value="ov" <c:if test="${Insuranceverification.ov=='ov'}"><c:out value="checked=checked"/></c:if>>OV&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td></td>
              <td></td>
              </tr>
               <tr class="row1">
              <td>Are x-rays subject to deductible?</td>
              <td>	<input type="radio" name="xray_deduct" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.xray_deduct=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="xray_deduct" value="No" class="input_txt"  <c:if test="${Insuranceverification.xray_deduct=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td>	<input type="radio" name="doctors_assign" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.doctors_assign=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="doctors_assign" value="No" class="input_txt"  <c:if test="${Insuranceverification.doctors_assign=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>What address do we mail claims to?</td>
              <td><textarea rows="3" cols="35" name="mail_claims" id="mail_claims">${Insuranceverification.mail_claims}</textarea></td>
              <td></td>
			  <td></td>              
              </tr>
              </table>
             <table>
        <tr>
     	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
        <td><br><input type="submit" class="submit_btn" value="Update"></td>
        <td>&nbsp;&nbsp;</td>
        <td><br><a href="insuranceverifylist" class="submit_btn" style="color:white">Cancel</a></td>
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
              
              
              
              
              