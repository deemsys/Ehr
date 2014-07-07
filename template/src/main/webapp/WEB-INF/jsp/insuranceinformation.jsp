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
 <!-- <script>
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
 -->
<!-- <script>
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
</script> -->
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
<script type="text/javascript">
       function validate1(event) {
          
           var regex = new RegExp("^[0-9]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
<script>
function validatename(){
    var textInput = document.getElementById("person").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("person").value = textInput;
}
</script>

<script>
function validatename1(){
    var textInput = document.getElementById("emp").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("emp").value = textInput;
}
</script>
<script>
function validatename55(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
<script>
function validatename56(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z. ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
<script>
function validateusername(){
    var textInput = document.getElementById("policy").value;
    textInput = textInput.replace(/[^A-Z0-9]/g, "");
    document.getElementById("policy").value = textInput;
}

</script>

<script>
function validateusername1(){
    var textInput = document.getElementById("groupno1").value;
    textInput = textInput.replace(/[^A-Z0-9]/g, "");
    document.getElementById("groupno1").value = textInput;
}

</script>


<script>
  $(function() {
	$("#person").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>


<script>
  $(function() {
	$("#emp").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>


<script>
  $(function() {
	$("#company").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#supplemental_company").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#patient_sign").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#spouse_sign").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
function checkSubmit()
{                        

	document.getElementById("personerr").innerHTML="";
	if(document.getElementById("person").value=="")
	{
	document.getElementById("personerr").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("personerr").innerHTML="";
    if(document.getElementById("person").value.length<4 || document.getElementById("person").value.length>=32)
    {
    	
    	document.getElementById("personerr").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }

	document.getElementById("datepickererr").innerHTML="";
	if(document.getElementById("datepicker").value=="")
	{
	document.getElementById("datepickererr").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepickererr").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererr").innerHTML="Invalid Date Format";
    	
        return false;
    }
	document.getElementById("emperr").innerHTML="";
	if(document.getElementById("emp").value=="")
	{
	document.getElementById("emperr").innerHTML="Required Field Should not be Empty";
	
	return false;
    }
	document.getElementById("emperr").innerHTML="";
    if(document.getElementById("emp").value.length<4 || document.getElementById("emp").value.length>=32)
    {
    	
    	document.getElementById("emperr").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }

	/* var name=/^[a-zA-Z]*$/;
    
    if(document.getElementById("emp").value.match(name)==null)
    {
       document.getElementById("emperr").innerHTML="Enter your name only in letters";    
        return false;
    } */
	
    document.getElementById("companyerr").innerHTML="";
	if(document.getElementById("company").value=="")
	{
	document.getElementById("companyerr").innerHTML="Required Field Should not be Empty";
	
	return false;
    }
	
	document.getElementById("companyerr").innerHTML="";
    if(document.getElementById("company").value.length<4 || document.getElementById("company").value.length>=32)
    {
    	
    	document.getElementById("companyerr").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
      document.getElementById("phoneerr").innerHTML="";
	if(document.getElementById("phone").value=="")
	{
	document.getElementById("phoneerr").innerHTML="Required Field Should not be Empty";
	
	return false;
    }
	document.getElementById("phoneerr").innerHTML="";
	if(document.getElementById("phone").value.length<13)
	{
	document.getElementById("phoneerr").innerHTML="Invalid phone number format";
	return false;
	
	}
	
	
    document.getElementById("phoneerr").innerHTML="";
    var txt1=document.getElementById("phone").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("phoneerr").innerHTML="Invalid phone number format";
	 return false;
   }
    document.getElementById("policyerr").innerHTML="";
	if(document.getElementById("policy").value=="")
	{
	document.getElementById("policyerr").innerHTML="Required Field Should not be Empty";
	
	return false;
    }
	
	document.getElementById("policyerr").innerHTML="";
    if(document.getElementById("policy").value.length<4 || document.getElementById("policy").value.length>=32)
    {
    	
    	document.getElementById("policyerr").innerHTML=" should be min 4 and max 32";
    	
        return false;
    }
     document.getElementById("groupno1err").innerHTML="";
	if(document.getElementById("groupno1").value=="")
	{
	document.getElementById("groupno1err").innerHTML="Required Field Should not be Empty";
	
	return false;
   
    }
	
	document.getElementById("groupno1err").innerHTML="";
    if(document.getElementById("groupno1").value.length<4 || document.getElementById("groupno1").value.length>=32)
    {
    	
    	document.getElementById("groupno1err").innerHTML=" should be min 4 and max 32";
    	
        return false;
    }
    document.getElementById("supplemental_companyerr").innerHTML="";
	if(document.getElementById("supplemental_company").value=="")
	{
	document.getElementById("supplemental_companyerr").innerHTML="Required Field Should not be Empty";
	
	return false;
    }
	document.getElementById("supplemental_companyerr").innerHTML="";
    if(document.getElementById("supplemental_company").value.length<4 || document.getElementById("supplemental_company").value.length>=32)
    {
    	
    	document.getElementById("supplemental_companyerr").innerHTML=" should be min 4 and max 32";
    	
        return false;
    }
    document.getElementById("supphoneerr").innerHTML="";
	if(document.getElementById("supphone").value=="")
	{
	document.getElementById("supphoneerr").innerHTML="Required Field Should not be Empty";
	
	return false;
    }
	document.getElementById("supphoneerr").innerHTML="";
	if(document.getElementById("supphone").value.length<13)
	{
	document.getElementById("supphoneerr").innerHTML="Invalid phone number format";
	return false;
	
	}
	
    document.getElementById("supphoneerr").innerHTML="";
    var txt1=document.getElementById("supphone").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("supphoneerr").innerHTML="Invalid phone number format";
	 return false;
  }
     document.getElementById("patient_signerr").innerHTML="";
	if(document.getElementById("patient_sign").value=="")
	{
	document.getElementById("patient_signerr").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	/* document.getElementById("patient_signerr").innerHTML="";
    if(document.getElementById("patient_sign").value.length<4 || document.getElementById("patient_sign").value.length>=32)
    {
    	
    	document.getElementById("patient_signerr").innerHTML=" should be min 4 and max 32";
    	
        return false;
    } */
	document.getElementById("datepicker1err").innerHTML="";
	if(document.getElementById("datepicker1").value=="")
	{
	document.getElementById("datepicker1err").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepicker1err").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker1").value.match(datechk)==null)
    {
    	document.getElementById("datepicker1err").innerHTML="Invalid Date Format";
    	
        return false;
    }
	document.getElementById("spouse_signerr").innerHTML="";
	if(document.getElementById("spouse_sign").value=="")
	{
	document.getElementById("spouse_signerr").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	/* document.getElementById("spouse_signerr").innerHTML="";
    if(document.getElementById("spouse_sign").value.length<4 || document.getElementById("spouse_sign").value.length>=32)
    {
    	
    	document.getElementById("spouse_signerr").innerHTML=" should be min 4 and max 32";
    	
        return false;
    } */
	document.getElementById("datepicker2err").innerHTML="";
	if(document.getElementById("datepicker2").value=="")
	{
	document.getElementById("datepicker2err").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepicker2err").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker2").value.match(datechk)==null)
    {
    	document.getElementById("datepicker2err").innerHTML="Invalid Date Format";
    	
        return false;
    }
}
</script>
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
  <script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
	        document.getElementById('saveid').style.visibility = 'hidden';
	        document.getElementById('cancelid').style.visibility = 'hidden';
		 
		  
     var html="<html>";
     html+= document.getElementById(id).innerHTML;

     html+="</html>";

     var printWin = window.open('','','left=0,top=0,width=1400,height=1000,toolbar=0,scrollbars=0,status  =0');
     printWin.document.write(html);
     printWin.document.close();
     printWin.focus();
     printWin.print();
     printWin.close();
     document.getElementById('print').style.visibility = 'visible';
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
  }
  </script>
  <script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
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
        	<div id="block1">
	            <div class="headings altheading">
	           <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
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
              <td><span class="err">* </span>Patient's Name</td>
              <td style="width: 195px; "> <input type="text" class="input_txtbx1" value="${name}" onInput="return validatename()"; name="patient_name" id="person" /><br><span id="personerr" style="color: red;font-style:italic;"></span><form:errors path="Insuranceinformation.patient_name"></form:errors></td>
              <%-- <td> <input type="text" class="input_txtbx1" name="patient_name" id="person" value="${name}" /><br><span id="personerr"><form:errors path="Insuranceinformation.patient_name"></form:errors></td> --%>

              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Date of Accident/injury</td>
              <td> <input type="text" class="input_txtbx1" name="date_of_accident" id="datepicker" /><span id="datepickererr" style="color: red;font-style:italic;"></span><form:errors path="Insuranceinformation.date_of_accident"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Do you have health insurance?</td>
              <td><input type="radio" name="have_insurance" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="have_insurance" value="No" class="input_txt">No</td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Employer's Name</td>
              <td> <input type="text" class="input_txtbx1" name="employers_name" id="emp"  onInput="return validatename1()";/><span id="emperr" style="color: red;font-style:italic;"></span><form:errors path="Insuranceinformation.employers_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="insurance_company" id="company" onInput="return validatename55(id)";/><br><span id="companyerr" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.insurance_company"></form:errors></td>
              <td><span class="err">* </span>Phone#</td>
              <td><input type="text" class="input_txtbx1" name="phone" id="phone" maxlength="13" onkeypress="return validate1(event)"; /><br><span id="phoneerr" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.phone"></form:errors>
              <br><span class="err" id="phoneerror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Policy #</td>
              <td> <input type="text" class="input_txtbx1" name="policy" id="policy" onInput="return validateusername()";/><br><span  id="policyerr" style="color: red;font-style:italic;"></span><form:errors path="Insuranceinformation.policy"></form:errors>
              <br><span class="err" id="policyerror"></span>
              </td>
              <td><span class="err">* </span>Group#</td>
              <td><input type="text" class="input_txtbx1" name="infono" id="groupno1" onInput="return validateusername1()";/><br><span id="groupno1err" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.infono"></form:errors>
              <br><span class="err" id="groupno1error"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Supplemental Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="supplemental_company" onInput="return validatename55(id)"; id="supplemental_company" /><br><span id="supplemental_companyerr" style="color: red;font-style:italic";><form:errors path="Insuranceinformation.supplemental_company"></form:errors></td>
              <td><span class="err">* </span>Phone#</td>
              <td> <input type="text" class="input_txtbx1" name="sup_phone" id="supphone" maxlength="13" onkeypress="return validate1(event)";/><br><span id="supphoneerr" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.sup_phone"></form:errors>
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
 		<td><span class="err">* </span>Patient Signature</td>
        <td> <input type="text" class="input_txtbx1" name="patient_sign" onInput="return validatename56(id)"; id="patient_sign" /><br><span id="patient_signerr" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.patient_sign"></form:errors></td>
        <td><span class="err">* </span>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date" id="datepicker1" /><br><span id="datepicker1err" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.date"></form:errors></td>
        </tr>
        <tr class="row1">
 		<td><span class="err">* </span>Spouse or Guardian Signature</td>
        <td> <input type="text" class="input_txtbx1" name="spouse_sign" onInput="return validatename56(id)"; id="spouse_sign" /><br><span id="spouse_signerr" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.spouse_sign"></form:errors></td>
        <td><span class="err">* </span>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date1" id="datepicker2" /><br><span id="datepicker2err" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.date1"></form:errors></td>
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
              <td><span class="err">* </span>Patient's Name</td>
              <td> <input type="text" class="input_txtbx1" name="patient_name" id="patient_name" value="${info.patient_name}"/><br><span class="err"><form:errors path="Insuranceinformation.patient_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Date of Accident/injury</td>
              <td> <input type="text" class="input_txtbx1" name="date_of_accident" id="datepicker" value="${info.date_of_accident }"/><span id="datepicker"><form:errors path="Insuranceinformation.date_of_accident"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Do you have health insurance?</td>
              <td><input type="radio" name="have_insurance" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="have_insurance" value="No" class="input_txt">No</td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Employer's Name</td>
              <td> <input type="text" class="input_txtbx1" name="employers_name" id="emp" value="${info.employers_name}"/><span id=" emperr"></span><form:errors path="Insuranceinformation.employers_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="insurance_company" id="company" value="${info.insurance_company}"/><br><span class="companyerr"><form:errors path="Insuranceinformation.insurance_company"></form:errors></td>
              <td><span class="err">* </span>Phone#</td>
              <td><input type="text" class="input_txtbx1" name="phone" id="phone" value="${info.phone }"/><br><span id="phoneerr"><form:errors path="Insuranceinformation.phone"></form:errors>
              <br><span class="err" id="phoneerror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Policy #</td>
              <td> <input type="text" class="input_txtbx1" name="policy" id="policy" value="${info.policy}"/><br><span  id="policyerr"> </span><form:errors path="Insuranceinformation.policy"></form:errors>
              <br><span class="err" id="policyerror"></span> 
              </td>
              <td><span class="err">* </span>Group#</td>
              <td><input type="text" class="input_txtbx1" name="infono" id="groupno1" value="${info.infono}"/><br><span id="groupno1err"><form:errors path="Insuranceinformation.infono"></form:errors>
              <br><span class="err" id="groupno1error"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Supplemental Insurance Company</td>
              <td> <input type="text" class="input_txtbx1" name="supplemental_company" id="supplemental_company" value="${info.supplemental_company}"/><br><span class="supplemental_companyerr"><form:errors path="Insuranceinformation.supplemental_company"></form:errors></td>
              <td><span class="err">* </span>Phone#</td>
              <td> <input type="text" class="input_txtbx1" name="sup_phone" id="supphone" value="${info.sup_phone}"/><br><span id="supphonerr"><form:errors path="Insuranceinformation.sup_phone"></form:errors></span>
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
 		<td><span class="err">* </span>Patient Signature</td>
        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="patient_sign" id="patient_sign" value="${info.patient_sign}"/><br><span id="patient_signerr"><form:errors path="Insuranceinformation.patient_sign"></form:errors></td>
        <td><span class="err">* </span>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date" id="datepicker1" value="${info.date }"/><br><span id="datepicker1err"><form:errors path="Insuranceinformation.date"></form:errors></td>
        </tr>
        <tr class="row1">
 		<td><span class="err">* </span>Spouse or Guardian Signature</td>
        <td> <input type="text" class="input_txtbx1" name="spouse_sign" id="spouse_sign" value="${info.spouse_sign}"/><br><span id="spouse_signerr"><form:errors path="Insuranceinformation.spouse_sign"></form:errors></td>
        <td><span class="err">* </span>Date</td>
        <td> <input type="text" class="input_txtbx1" name="date1" id="datepicker2" value="${info.date1 }"/><br><span id="datepicker2err"><form:errors path="Insuranceinformation.date1"></form:errors></td>
        </tr>
        </table>
        </c:otherwise>
        </c:choose>
        <table width="100%">
       <tr>
	    <td valign="top" align="right" width="500"><br><input type="submit" class="submit_btn" id="saveid" value="Save" onclick ="return checkSubmit('this');"></td>
      
         <td><br><a href="viewpatient"style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
     <!--   <td valign="top" align="right"><br> <input type="button"   class="submit_btn" value=" Print" onclick="window.print();return false;" /></td> -->
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
              