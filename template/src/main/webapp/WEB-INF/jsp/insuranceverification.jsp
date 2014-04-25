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
  <style type="text/css">
#overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.cnt223 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.cnt223{
min-width: 400px;
width: 400px;
min-height: 150px;
margin: 100px auto;
background: #f3f3f3;
position: relative;
z-index: 103;
padding: 10px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
}
.cnt223 p{
clear: both;
color: #555555;
text-align: justify;
}
.cnt223 p a{
color: #d91900;
font-weight: bold;
}
.cnt223 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.cnt223 .x:hover{
cursor: pointer;
}
</style>
<script type='text/javascript'>
$(function(){
var overlay = $('<div id="overlay"></div>');
overlay.show();
overlay.appendTo(document.body);

$('.popup').show();
$('.close').click(function(){
$('.popup').hide();
overlay.appendTo(document.body).remove();
return false;
});

$('.x').click(function(){
$('.popup').hide();

overlay.appendTo(document.body).remove();
return false;
});
});
</script>
<script type="text/javascript">
function doAjaxPost() {  
	
	var username = $('#username').val();
	if(username=="")
		{
		alert("Please Enter Patient Username");
		return false;
		}
	
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/insuranceverification_ajax",  
		    data: "pusername=" + username,
		    success: function(response){  
		    	
		      // we have the response
		      //alert("response"+response);
		     //alert(response.substring(0,4));
		     //alert(response.substring(4,response.length));
		     
		     if(response=='error')
		    	 {
		    	 alert("The Patient UserId does not exist Please check the UserId");
		    	 }
		     else if(response.substring(0,4)=='edit')
		    	  {
		    	 var sub1=response.indexOf("|")+1;		    	 
		    	 var url="editinsuranceverificationdetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    // alert(response.indexOf("|"));
			   //alert(response.substring(0,cal));
			 document.getElementById("verify_name").value=response.substring(0,cal);
			   
		    document.getElementById("user").value=response.substring(calculate,response.length);
		    	
		    	 $('.popup').hide();
		    	 $('#overlay').remove();
		    	
		      // $('#info').html(response);
		       
		     /*   
		       $('div#overlay').RemoveAttr('id','none');
		       alert("hi");
		       var overlay = $('<div id="overlay"></div>');
		   	   overlay.show();		      	
		     
		        
		       overlay.appendTo(document.body).remove();
		       
		      return false; */
		    	  }	   
		      
		    
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });  
		}  
	

</script>
<div class='popup'>
<div class='cnt223'>
<br><br>
<c:if test="${success==true}">
<table width="400"><tr><td align="center"><b>Success!!!</b></td></tr></table>

</c:if>
<br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr >
	             <td valign="middle" align="left" class="input_txt" width="250"><span class="err">*</span>Please enter a Patient User Name</td>
				 <td width="20"></td> <td valign="top" align="left" class="input_txt" width="200">
				   <input type="text" class="input_txtbx1" id="username" name="pusername" /><br/>
				  </td>
				  </tr>
				  <tr height="50"></tr>
				<tr><td align="right"><input type="submit" value="Submit" class="submit_btn" onclick="doAjaxPost()" ></td>
				<td></td><td align="left"><a href="viewallpatientdetails" class="submit_btn" >Cancel</a></td>
				</tr>
				  </table>
				  <br><br>



</div>
</div>
  
 <script>
 $(window).load(function(){
	 	  $("#fax").keyup(function() {
			
			 $("#faxerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			/*var intRegex = /^\d+$/;*/
			var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
			if(a.test($(this).val())||$(this).val()=='') 
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

<script>
i=0;
$(document).ready(function(){
  $("#fax").keypress(function(){
var phone=document.getElementById("fax").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("fax").value=phone;
 });  

});
</script>


</head>
 <body>
<div id="right_content">
<form action="insuranceverification" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="70%" class="margin_table">
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
	            <input type="hidden" name="user" id="user"/>
	            <c:choose>
<c:when test="${empty veri}">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <u><h6>Benefits and Limitation's (staff completes)</h6></u>
              </tr>
              <br>
              <tr><p>Hi, I'm calling to verify chiropractic benefits for<span class="err">*</span> Mr./ Mrs.<input type="text" class="input_txtbx1" name="verify_name" id="verify_name" /><span class="err"><form:errors path="Insuranceverification.verify_name"></form:errors></p></tr>
              <tr class="row1">
              <td><span class="err">*</span>Spoke with</td>
              <td><input type="text" class="input_txtbx1" name="spoke_with" id="spoke_with" /><br><span class="err"><form:errors path="Insuranceverification.spoke_with"></form:errors></td>
              <td><span class="err">*</span>Date</td>
              <td><input type="text" class="input_txtbx1" name="date" id="datepicker" /><br><span class="err"><form:errors path="Insuranceverification.date"></form:errors></td>
              <td><span class="err">*</span>Fax#</td>
              <td><input type="text" class="input_txtbx1" name="fax" id="fax" maxlength=13 /><br><span class="err"><form:errors path="Insuranceverification.fax"></form:errors></span>
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
              <td width="300"><span class="err">*</span>Amount of deductible</td>
              <td ><input type="text" class="input_txtbx1" name="amount_deduct" id="amountdeduct" /><br><span class="err"><form:errors path="Insuranceverification.amount_deduct"></form:errors></span>
              <span class="err" id="amountdeducterror"></span>
              </td>
              <td width="300"><span class="err">*</span>Amount of deductible met</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct_met" id="amountdeductmet" /><br><span class="err"><form:errors path="Insuranceverification.amount_deduct_met"></form:errors></span>
              <span class="err" id="amountdeductmeterror"></span>
              </td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1"> 
              <td><span class="err">*</span>Maximum visits/year?</td>
              <td><input type="text" class="input_txtbx1" name="max_visit" id="max_visit" /><span class="err"><form:errors path="Insuranceverification.max_visit"></form:errors></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is chiropractic manipulation covered? </td>
              <td><input type="radio" name="is_chiropractic" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="is_chiropractic" value="No" class="input_txt">No</td>
              <td><span class="err">*</span>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="at_what" id="atwhat" /><span class="err"><form:errors path="Insuranceverification.at_what"></form:errors></span>
              <span class="err" id="atwhaterror"></span>
              </td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <td>Are x-rays covered?</td>
              <td><input type="radio" name="xray_cover" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="xray_cover" value="No" class="input_txt">No</td>
              <td><span class="err">*</span>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="atwhat" id="atwhat1" /><br><span class="err"><form:errors path="Insuranceverification.atwhat"></form:errors></span>
              <span class="err" id="atwhat1error"></span>
              </td>
              <td width="300"><span class="err">*</span>Subject to deductible</td>
              <td><input type="radio" name="subject_deduct" id="subjectdeduct" value="Yes" />Yes&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="subject_deduct" id="subjectdeduct" value="No" />No<br><span class="err"><form:errors path="Insuranceverification.subject_deduct"></form:errors></span>
              <span class="err" id="subjectdeducterror"></span>
              </td>
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
              <td><span class="err">*</span>Deductible</td>
              <td><input type="text" class="input_txtbx1" name="deductible" id="deductible" /><br><span class="err"><form:errors path="Insuranceverification.deductible"></form:errors></span>
              <span class="err" id="deductibleerror"></span>
              </td>
              <td><span class="err">*</span>%covered</td>
              <td><input type="text" class="input_txtbx1" name="covered" id="covered" /><br><span class="err"><form:errors path="Insuranceverification.covered"></form:errors></span>
              <span class="err" id="coverederror"></span>
              </td>
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
              <td><span class="err">*</span>What address do we mail claims to?</td>
              <td><textarea rows="3" cols="35" name="mail_claims" id="mail_claims" ></textarea><br><span class="err"><form:errors path="Insuranceverification.mail_claims"></form:errors></td>
              <td></td>
			  <td></td>              
              </tr>
              </table>
              </c:when>
              <c:otherwise>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <u><h6>Benefits and Limitation's (staff completes)</h6></u>
              </tr>
              <br>
              <tr><p>Hi, I'm calling to verify chiropractic benefits for <span class="err">*</span> Mr./ Mrs.<input type="text" class="input_txtbx1" name="verify_name" id="verify_name" value="${veri.verify_name}"/><span class="err"><form:errors path="Insuranceverification.verify_name"></form:errors></p></tr>
              <tr class="row1">
              <td><span class="err">*</span>Spoke with</td>
              <td><input type="text" class="input_txtbx1" name="spoke_with" id="spoke_with" value="${veri.spoke_with}"/><br><span class="err"><form:errors path="Insuranceverification.spoke_with"></form:errors></td>
              <td><span class="err">*</span>Date</td>
              <td><input type="text" class="input_txtbx1" name="date" id="datepicker" value="${veri.date}"/><br><span class="err"><form:errors path="Insuranceverification.date"></form:errors></td>
              <td><span class="err">*</span>Fax#</td>
              <td><input type="text" class="input_txtbx1" name="fax" id="fax" value="${veri.fax}"/><br><span class="err"><form:errors path="Insuranceverification.fax"></form:errors></span>
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
              <td><span class="err">*</span>Amount of deductible</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct" id="amountdeduct" value="${veri.amount_deduct}"/><br><span class="err"><form:errors path="Insuranceverification.amount_deduct"></form:errors></span>
              <br><span class="err" id="amountdeducterror"></span>
              </td>
              <td><span class="err">*</span>Amount of deductible met</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct_met" id="amountdeductmet" value="${veri.amount_deduct_met}"/><br><span class="err"><form:errors path="Insuranceverification.amount_deduct_met"></form:errors></span>
              <span class="err" id="amountdeductmeterror"></span>
              </td>
             
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1"> 
              <td><span class="err">*</span>Maximum visits/year?</td>
              <td><input type="text" class="input_txtbx1" name="max_visit" id="max_visit" value="${veri.max_visit}"/><span class="err"><form:errors path="Insuranceverification.max_visit"></form:errors></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is chiropractic manipulation covered? </td>
              <td><input type="radio" name="is_chiropractic" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="is_chiropractic" value="No" class="input_txt">No</td>
              <td><span class="err">*</span>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="at_what" id="atwhat" value="${veri.at_what}"/><span class="err"><form:errors path="Insuranceverification.at_what"></form:errors></span>
              <span class="err" id="atwhaterror"></span>
              </td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <td>Are x-rays covered?</td>
              <td><input type="radio" name="xray_cover" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="xray_cover" value="No" class="input_txt">No</td>
              <td><span class="err">*</span>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="atwhat" id="atwhat1" value="${veri.atwhat}"/><br><span class="err"><form:errors path="Insuranceverification.atwhat"></form:errors></span>
              <span class="err" id="atwhat1error"></span>
              </td>
              <td><span class="err">*</span>Subject to deductible</td>
              <td>
              <input type="radio" name="subject_deduct" id="subjectdeduct" value="Yes" <c:if test="${veri.subject_deduct=='Yes'}"><c:out value="checked=checked"/></c:if> />Yes&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="subject_deduct" value="No" id="subjectdeduct" <c:if test="${veri.subject_deduct=='No'}"><c:out value="checked=checked"/></c:if> />No
              
              
              
             <%-- <input type="text" class="input_txtbx1" name="subject_deduct" id="subjectdeduct" value="${veri.subject_deduct}"/> --%><br><span class="err"><form:errors path="Insuranceverification.subject_deduct"></form:errors></span>
               <span class="err" id="subjectdeduct"></span>
              </td>
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
              <td><span class="err">*</span>Deuctible</td>
              <td><input type="text" class="input_txtbx1" name="deductible" id="deductible" value="${veri.deductible}"/><br><span class="err"><form:errors path="Insuranceverification.deductible"></form:errors></span>
              <span class="err" id="deductibleerror"></span>
              </td>
              <td><span class="err">*</span>%covered</td>
              <td><input type="text" class="input_txtbx1" name="covered" id="covered" value="${veri.covered}"/><br><span class="err"><form:errors path="Insuranceverification.covered"></form:errors></td>
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
              <td><span class="err">*</span>What address do we mail claims to?</td>
              <td><textarea rows="3" cols="35" name="mail_claims" id="mail_claims" >${Insuranceverification.mail_claims}</textarea><br><span class="err"><form:errors path="Insuranceverification.mail_claims"></form:errors></td>
              <td></td>
			  <td></td>              
              </tr>
              </table>
              </c:otherwise>
              </c:choose>
              <table>
               <tr>
	        <td valign="top" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
              <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td valign="top" align="center"><br><a href="insuranceverifylist" class="submit_btn" style="color:white">Cancel</a></td>
	     	  <td>&nbsp;&nbsp;</td>
	     	  <!-- <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='insuranceverifylist'"></td> -->
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
              
              
              
              
              