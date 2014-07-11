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
 <!-- <script>
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

</script> -->

<script>
$(function() {
	if (document.getElementById('is_chiropractic_no').checked)
			{
		
		if(document.getElementById("is_chiropractic_no").value=='No')
			{
		document.getElementById("chiroper").style.display="none";
		document.getElementById("atwhat").style.display="none";
		}
		}
	if(document.getElementById("is_chiropractic").checked)
	{
		if(document.getElementById("is_chiropractic").value=='Yes')
		{
	document.getElementById("chiroper").style.display="block";
	document.getElementById("atwhat").style.display="block";
	}}


	if (document.getElementById('xray_cover_no').checked)
			{
	
		if(document.getElementById("xray_cover_no").value=='No')
			{
		document.getElementById("xrayatwhat").style.display="none";
		document.getElementById("atwhat1").style.display="none";
		}
		}
	if(document.getElementById("xray_cover_yes").checked)
	{
		if(document.getElementById("xray_cover_yes").value=='Yes')
		{
	document.getElementById("xrayatwhat").style.display="block";
	document.getElementById("atwhat1").style.display="block";
	}}
});
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
<script>	
 function validatealpha(){
    var textInput = document.getElementById("spoke_with").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("spoke_with").value = textInput;
}
function validatename(){
    var textInput = document.getElementById("verify_name").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("verify_name").value = textInput;
}
		function checkSubmit()
		{
			var error="";
			document.getElementById("verify_nameerror").innerHTML=" ";
			
			if(document.getElementById("verify_name").value=="")
			{
			document.getElementById("verify_nameerror").innerHTML="Required Field Should not be Empty";
			error="true";
			}
			if(document.getElementById("verify_name").value.substring(0,1)==" ")
			{
			document.getElementById("verify_nameerror").innerHTML="Invalid Name";
			
		error="true";
			}
			
			
			 if(document.getElementById("verify_name").value!='')
			 {
	    if(document.getElementById("verify_name").value.length<4)
	    {
	    	
	    	document.getElementById("verify_nameerror").innerHTML="Name should be min 4 and max 32";
	    	
	       error="true";
	    }}
			document.getElementById("spoke_witherror").innerHTML="";
		if(document.getElementById("spoke_with").value=="")
			{
			document.getElementById("spoke_witherror").innerHTML="Required Field Should not be Empty";
			
		error="true";
			}
			if(document.getElementById("spoke_with").value.substring(0,1)==" ")
			{
			document.getElementById("spoke_witherror").innerHTML="Invalid Name";
			
			error="true";
			}
				if(document.getElementById("spoke_with").value.length<4)
			{
			document.getElementById("spoke_witherror").innerHTML="Name should be min 4 and max 32";
			
		error="true";
			}
				document.getElementById("datepickererror").innerHTML="";
		if((document.getElementById("datepicker").value==""))
	{
	  document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
	error="true";
	}
		document.getElementById("datepickererror").innerHTML="";
		 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
       error="true";
    }		
		
		document.getElementById("faxerror").innerHTML="";
		if(document.getElementById("fax").value=="")
		{
		document.getElementById("faxerror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		} 
var phoneno = /^\(?([0-9]{3})\)?[-]?([0-9]{3})[-]?([0-9]{4})$/;  

	    
	    if(document.getElementById("fax").value.match(phoneno)==null)
	    {
	    	document.getElementById("faxerror").innerHTML="Invalid Fax Format";
	    	
	        return false;
	    }
    
    document.getElementById("faxerror").innerHTML="";
	var txt1=document.getElementById("fax").value;
	var txt2=txt1.substring(0,3);
	if(txt2==000)
	{
	document.getElementById("faxerror").innerHTML="Invalid Fax Format";
	return false;
	}
	
	
    var txt1=document.getElementById("fax").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt2==000 && txt3==000){
   document.getElementById("faxerror").innerHTML="Invalid phone number format";
  error="true";
   }
		document.getElementById("amountdeducterror").innerHTML="";
		if(document.getElementById("amountdeduct").value=="")
		{
		document.getElementById("amountdeducterror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}

       
				
		document.getElementById("amountdeductmeterror").innerHTML="";
		if(document.getElementById("amountdeductmet").value=="")
		{
		document.getElementById("amountdeductmeterror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		
		
		
		
		document.getElementById("max_visiterror").innerHTML="";
		if(document.getElementById("max_visit").value=="")
		{
		document.getElementById("max_visiterror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		
		
		document.getElementById("atwhaterror").innerHTML="";
		 if(document.getElementById("is_chiropractic").checked)
			{
		if(document.getElementById("atwhat").value=="")
		{
		document.getElementById("atwhaterror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}}
		
		
		document.getElementById("atwhat1error").innerHTML="";
		if(document.getElementById("xray_cover_yes").checked)
		{
		if(document.getElementById("atwhat1").value=="")
		{
		document.getElementById("atwhat1error").innerHTML="Required Field Should not be Empty";
		error="true";
		}}
		
		
		document.getElementById("yeserror").innerHTML="";
      if( ( document.getElementById("yes").checked == false ) && ( document.getElementById("no").checked == false ) )

{
document.getElementById("yeserror").innerHTML="Required Field Should not be Empty";
		error="true";
		
		}
			         document.getElementById("deductibleerr").innerHTML="";
		if(document.getElementById("deductible").value=="")
		{
		document.getElementById("deductibleerr").innerHTML="Required Field Should not be Empty";
		error="true";
		
		}
		
		document.getElementById("coverederr").innerHTML="";
		if(document.getElementById("covered").value=="")
		{
		document.getElementById("coverederr").innerHTML="Required Field Should not be Empty";
		error="true";
		
		}
		
		
		
		
		
		
		document.getElementById("mail_claimserror").innerHTML="";
		if(document.getElementById("mail_claims").value=="")
		{
		document.getElementById("mail_claimserror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
	 if(document.getElementById("mail_claims").value.substring(0,1)==' ')
	 {
	 document.getElementById("mail_claimserror").innerHTML="Invalid Address";
	 error="true";
	 }
		var mail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    
    if(document.getElementById("mail_claims").value.match(mail)==null)
    {
    	document.getElementById("mail_claimserror").innerHTML="Invalid E-Mail Format";
    	
       error="true";
    }
    if(error=="true")
    {
     return false;
    }

		
		}

	</script>
<script>
function hidepercentage()
{
	
	if (document.getElementById('is_chiropractic_no').checked)
			{
	
		if(document.getElementById("is_chiropractic_no").value=='No')
			{
		document.getElementById("chiroper").style.display="none";
		document.getElementById("atwhat").style.display="none";
		}
		}
	if(document.getElementById("is_chiropractic").checked)
	{
		if(document.getElementById("is_chiropractic").value=='Yes')
		{
	document.getElementById("chiroper").style.display="block";
	document.getElementById("atwhat").style.display="block";
	}}
	}
function hidexraypercentage()
{
	
	if (document.getElementById('xray_cover_no').checked)
			{
		
		if(document.getElementById("xray_cover_no").value=='No')
			{
		document.getElementById("xrayatwhat").style.display="none";
		document.getElementById("atwhat1").style.display="none";
		}
		}
	if(document.getElementById("xray_cover_yes").checked)
	{
		if(document.getElementById("xray_cover_yes").value=='Yes')
		{
	document.getElementById("xrayatwhat").style.display="block";
	document.getElementById("atwhat1").style.display="block";
	}}
	}
	function check(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(){
    var fieldVal = document.getElementById('atwhat').value;
    //Suppose u want 3 number of character
    if(fieldVal <=100){
        return true;
    }
    else
    {
        var str = document.getElementById('atwhat').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('atwhat').value = str;
    }
     
    }
	</script>
	<script>
	function checklen()
	{
	
	var field = document.getElementById('atwhat1').value;
    //Suppose u want 3 number of character
    if(field <=100){
        return true;
    }
    else
    {
        var str = document.getElementById('atwhat1').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('atwhat1').value = str;
    }
	
	}
	
	</script>
	<script>
	
    function checkLength1(){
    var fieldVal = document.getElementById('covered').value;
    //Suppose u want 3 number of character
    if(fieldVal <=100){
        return true;
    }
    else
    {
        var str = document.getElementById('covered').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('covered').value = str;
    }
     
    }
	</script>
	<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
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
function validateusername(){
    var textInput = document.getElementById("fax").value;
    textInput = textInput.replace(/[^0-9()-]/g, "");
    document.getElementById("fax").value = textInput;
}

</script>
 <script>
function validatename(){
    var textInput = document.getElementById("verify_name").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("verify_name").value = textInput;
}
</script>
</head>
 <body>
<div id="right_content">
<form action="updateinsuranceverification" method="POST">

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
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
               <c:set value="${InsuranceverificationForm.insuranceverification[0]}" var="Insuranceverification"> </c:set>
              <tr class="row1">
              <u><h6>Benefits and Limitation's (staff completes)</h6></u>
              </tr>
              <br>
              <input type="hidden" class="input_txtbx1" id="inp_id" value="${Insuranceverification.form_no}" name="form_no" />
              <tr><p>Hi, I'm calling to verify chiropractic benefits for <span class="err">*</span>  Mr./ Mrs.<input type="text" class="input_txtbx1" onInput="validatename();" maxlength="32" name="verify_name" id="verify_name" value="${Insuranceverification.verify_name}" onInput="return validatename()";/><span id="verify_nameerror"  style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.verify_name"></form:errors></p></tr>
              <tr class="row1">
              <td><span class="err">*</span> Spoke with</td>
              <td><input type="text" class="input_txtbx1" name="spoke_with" id="spoke_with" value="${Insuranceverification.spoke_with}" onInput="validatealpha();" maxlength="32" /><span id="spoke_witherror"   style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.spoke_with"></form:errors></td>
              <td><span class="err">*</span> Date</td>
              <td><input type="text" class="input_txtbx1" name="date" id="datepicker" value="${Insuranceverification.date}"/><span id="datepickererror"  style="color: red;font-style:italic;" > </span><form:errors path="Insuranceverification.date"></form:errors></td>
              <td><span class="err">*</span> Fax#</td>
               <script>
               $(function() {
		$("#spoke_with").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
		$(function() {
		$("#mail_claims").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
		$(function() {
		$("#verify_name").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
              $(document).ready(function(){
  $("#fax").keypress(function(){
var phone=document.getElementById("fax").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("fax").value=phone;
 });  

});
</script>              
              <td><input type="text" class="input_txtbx1" name="fax" id="fax"  placeholder="(000)000-0000" onInput="return validateusername()"; maxlength=13 value="${Insuranceverification.fax}" onkeypress="return validate(event)";/><span id="faxerror"  style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.fax"></form:errors>
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
              <td><span class="err">*</span> Amount of deductible</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct" maxlength="10" id="amountdeduct" onkeypress="return validate(event)"; value="${Insuranceverification.amount_deduct}" /><span id="amountdeducterror"  style="color: red;font-style:italic;"><form:errors path="Insuranceverification.amount_deduct"></form:errors>
              <span class="err" id="amountdeducterror"></span>
              </td>
              <td><span class="err">*</span> Amount of deductible met</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct_met" maxlength="10" id="amountdeductmet" onkeypress="return validate(event)"; value="${Insuranceverification.amount_deduct_met}"/><span id="amountdeductmeterror"  style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.amount_deduct_met"></form:errors>
              <span class="err" id="amountdeductmeterror"></span>
              </td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1"> 
              <td><span class="err">*</span> Maximum visits/year?</td>
              <td><input type="text" class="input_txtbx1" name="max_visit"  maxlength="3" id="max_visit" onkeypress="return validate1(event)"; value="${Insuranceverification.max_visit}"/><span id="max_visiterror"  style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.max_visit"></form:errors></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>&nbsp;&nbsp;Is chiropractic manipulation covered? </td>
              <td>	<input type="radio" name="is_chiropractic" value="Yes" onclick="hidepercentage()" id="is_chiropractic" class="input_txt"  <c:if test="${Insuranceverification.is_chiropractic=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="is_chiropractic"  onclick="hidepercentage()" id="is_chiropractic_no" value="No" class="input_txt"  <c:if test="${Insuranceverification.is_chiropractic=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td><span id="chiroper"><span class="err">*</span> At what%?</span></td>
              <td><input type="text" class="input_txtbx1" name="at_what" id="atwhat" value="${Insuranceverification.at_what}" onKeyPress="return check(event,value)" onInput="checkLength()" maxlength="5"/><span id="atwhaterror"  style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.at_what"></form:errors>
             
              </td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <td> Are x-rays covered?</td>
              <td>	<input type="radio" name="xray_cover" onclick="hidexraypercentage()" id="xray_cover_yes" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.xray_cover=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" onclick="hidexraypercentage()" name="xray_cover" id="xray_cover_no" value="No" class="input_txt"  <c:if test="${Insuranceverification.xray_cover=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td><span id="xrayatwhat"><span class="err">*</span> At what%?</span></td>
              <td><input type="text" class="input_txtbx1" name="atwhat" id="atwhat1" value="${Insuranceverification.atwhat}" onKeyPress="return check(event,value)" onInput="checklen()" maxlength="5"/><span id="atwhat1error"  style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.atwhat"></form:errors>
              <span class="err" id="atwhat1error"></span>
              </td>
              <td><span class="err">*</span> Subject to deductible</td>
              <td><input type="radio" name="subject_deduct" id="yes" value="Yes" <c:if test="${Insuranceverification.subject_deduct=='Yes'}"><c:out value="checked=checked"/></c:if> />Yes&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="subject_deduct" value="No" id="no" <c:if test="${Insuranceverification.subject_deduct=='No'}"><c:out value="checked=checked"/></c:if> />No
<%-- <input type="text" class="input_txtbx1" name="subject_deduct" id="subjectdeduct" value="${Insuranceverification.subject_deduct}"/> --%><span id="yeserror"  style="color: red;font-style:italic;"  > </span><form:errors path="Insuranceverification.subject_deduct"></form:errors>
              <span class="err" id="subjectdeducterror"></span>
              </td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>&nbsp;Is the Doctor's assignment of benefits honored?</td>
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
              <td>&nbsp;&nbsp;Are there out of network benefits?</td>
             <td>	<input type="radio" name="network_benefits" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.network_benefits=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="network_benefits" value="No" class="input_txt"  <c:if test="${Insuranceverification.network_benefits=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td><span class="err">*</span> Deductible</td>
              <td><input type="text" class="input_txtbx1" name="deductible" maxlength="10" id="deductible" value="${Insuranceverification.deductible}"/><span id="deductibleerr"  style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.deductible"></form:errors>
              <br><span class="err" id="deductibleerror"></span>
              </td>
              <td><span class="err">*</span> %covered</td>
              <td><input type="text" class="input_txtbx1" name="covered" id="covered" value="${Insuranceverification.covered}" maxlength="5" onKeyPress="return check(event,value)" onInput="checkLength1()" /><span id="coverederr"  style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.covered"></form:errors>
              <br><span class="err" id="coverederror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td>&nbsp;&nbsp;Therapies covered</td>
              <td> <input type="checkbox" name="cm" value="cm" <c:if test="${Insuranceverification.cm=='cm'}"><c:out value="checked=checked"/></c:if>>CM&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="checkbox" name="pt" value="pt" <c:if test="${Insuranceverification.pt=='pt'}"><c:out value="checked=checked"/></c:if>>PT&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="ov" value="ov" <c:if test="${Insuranceverification.ov=='ov'}"><c:out value="checked=checked"/></c:if>>OV&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td></td>
              <td></td>
              </tr>
               <tr class="row1">
              <td>&nbsp;&nbsp;Are x-rays subject to deductible?</td>
              <td>	<input type="radio" name="xray_deduct" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.xray_deduct=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="xray_deduct" value="No" class="input_txt"  <c:if test="${Insuranceverification.xray_deduct=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>&nbsp;&nbsp;Is the Doctor's assignment of benefits honored?</td>
             <td>	<input type="radio" name="doctors_assign" value="Yes" class="input_txt"  <c:if test="${Insuranceverification.doctors_assign=='Yes'}"><c:out value="checked=checked"/></c:if>>Yes&nbsp;&nbsp;&nbsp;
				                  	<input type="radio" name="doctors_assign" value="No" class="input_txt"  <c:if test="${Insuranceverification.doctors_assign=='No'}"><c:out value="checked=checked"/></c:if>>No&nbsp;&nbsp;&nbsp;</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span> What address do we mail claims to?</td>
              <td><input type="text"  name="mail_claims" class="input_txtbx1" maxlength="32" value="${Insuranceverification.mail_claims}" id="mail_claims"><span id="mail_claimserror"  style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.mail_claims"></form:errors></td>
              <td></td>
			  <td></td>              
              </tr>
              </table>
             <table>
        <tr>
     	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
        <td><br><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
        <td>&nbsp;</td><td><br><a href="deleteinsuranceverification?form_no=${Insuranceverification.form_no}" class="submit_btn" style="color:white" onclick="return confirmation()">Delete</a></td><td>&nbsp;</td>
        <td><br><a href="viewallpatientdetails" class="submit_btn" style="color:white">Cancel</a></td>
        </tr>
        </table>
          <script language="javascript">
        function confirmation() {
	var answer = confirm("Are you Sure You Want to Delete  Patient insuranceplan ?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
        </script>
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
              
              
              
              
              