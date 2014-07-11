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
<script type="text/javascript">
  function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Patient ?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
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

<script type="text/javascript">
       function validate99(event) {
          
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
    	
    	document.getElementById("personerr").innerHTML="Name should be of length 4 to 32";
    	
        return false;
    }

	document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
	{
	document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepickererror").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
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
    	
    	document.getElementById("emperr").innerHTML="Name should be of length 4 to 32";
    	
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
    	
    	document.getElementById("companyerr").innerHTML="Name should be of length 4 to 32";
    	
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
	
var phoneno = /^\(?[(]??([0-9]{3})\)?[)]?([0-9]{3})[-]?([0-9]{4})$/;  

    
    if(document.getElementById("phone").value.match(phoneno)==null)
    {
    	document.getElementById("phoneerr").innerHTML="Invalid phone Format";
    	 
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
    	
    	document.getElementById("policyerr").innerHTML=" should be of length 4 to 32";
    	
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
    	
    	document.getElementById("groupno1err").innerHTML=" should be of length 4 to 32";
    	
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
    	
    	document.getElementById("supplemental_companyerr").innerHTML=" should be of length 4 to 32";
    	
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
var phoneno = /^\(?[(]??([0-9]{3})\)?[)]?([0-9]{3})[-]?([0-9]{4})$/;  

    
    if(document.getElementById("supphone").value.match(phoneno)==null)
    {
    	document.getElementById("supphoneerr").innerHTML="Invalid phone Format";
    	 
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
    	
    	document.getElementById("patient_signerr").innerHTML=" should be of length 4 to 32";
    	
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
    	
    	document.getElementById("spouse_signerr").innerHTML=" should be of length 4 to 32";
    	
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
<form action="updateinsuranceinformation" method="POST">

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
	             <h2>Editing Health Insurance Information</h2> 
	            </div>
	            <div class="contentbox">
	            
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><br>
              <p id="mypar" align="center"><b>Patient Information</b></p></tr></table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <c:set value="${InsuranceinformationForm.insuranceinformation[0]}" var="Insuranceinformation"> </c:set>
            
              <br>
              <tr class="row1">
              <td><span class="err">* </span>Patient's Name:</td>
              <input type="hidden" class="input_txtbx1" id="inp_id" value="${Insuranceinformation.number}" name="number" />
              <td> <input type="text" class="input_txtbx1" name="patient_name" id="person" onInput="return validatename55(id)"; value="${Insuranceinformation.patient_name}"/><br><span id="personerr" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.patient_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Date of Accident/ injury:</td>
              <td> <input type="text" class="input_txtbx1" name="date_of_accident" id="datepicker" value="${Insuranceinformation.date_of_accident}"/><br><span id="datepickererror"  style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.date_of_accident"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>&nbsp;&nbsp;Do you have health insurance?</td>
              <td><input type="radio" name="have_insurance" value="Yes" class="input_txt" <c:if test="${Insuranceinformation.have_insurance=='Yes'}"><c:out value="checked=checked"/></c:if> checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="have_insurance" value="No" class="input_txt" <c:if test="${Insuranceinformation.have_insurance=='No'}"><c:out value="checked=checked"/></c:if>>No</td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Employer's Name:</td>
              <td> <input type="text" class="input_txtbx1" name="employers_name" id="emp" onInput="return validatename55(id)"; value="${Insuranceinformation.employers_name}"/><span id="emperr"  style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.employers_name"></form:errors></td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Insurance Company:</td>
              <td> <input type="text" class="input_txtbx1" name="insurance_company" id="company" value="${Insuranceinformation.insurance_company}"  onInput="return validatename55(id)";/><br><span id="companyerr" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.insurance_company"></form:errors></td>
              <td><span class="err">* </span>Phone#:</td>
              <td><input type="text" class="input_txtbx1" name="phone" id="phone" placeholder="(541)754-3010" maxlength="13" value="${Insuranceinformation.phone}" onkeypress="return validate99(event)"; /><br><span class="err" id="phoneerr"><form:errors path="Insuranceinformation.phone"></form:errors></span>
              <br><span class="err" id="phoneerror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Policy#:</td>
              <td> <input type="text" class="input_txtbx1" name="policy" id="policy" onInput="return validateusername()"; value="${Insuranceinformation.policy}"/><br><span id="policyerr"  style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.policy"></form:errors></span>
              <br><span class="err" id="policyerror"></span>
              
              </td>
              <td><span class="err">* </span>Group#:</td>
              <td><input type="text" class="input_txtbx1" name="infono" id="groupno1" value="${Insuranceinformation.infono}" onInput="return validateusername1()";/><br><span id="groupno1err"  style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.infono"></form:errors></span>
              <br><span class="err" id="groupnoerror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td><span class="err">* </span>Supplemental Insurance Company:</td>
              <td> <input type="text" class="input_txtbx1" onInput="return validatename55(id)"; name="supplemental_company" id="supplemental_company" value="${Insuranceinformation.supplemental_company}"/><br><span id="supplemental_companyerr"  style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.supplemental_company"></form:errors></td>
               <td><span class="err">* </span>Phone#:</td>
              <td> <input type="text" class="input_txtbx1" name="sup_phone" id="supphone"  placeholder="(541)754-3010" maxlength="13"value="${Insuranceinformation.sup_phone}" onkeypress="return validate99(event)";/><br><span id="supphoneerr"  style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.sup_phone"></form:errors></span>
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
 		<td><span class="err">* </span>Patient Signature:</td>
        <td> <input type="text" class="input_txtbx1" name="patient_sign" id="patient_sign" value=" ${Insuranceinformation.patient_sign}" onInput="return validatename56(id)"; /><br><span id="patient_signerr"  style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.patient_sign"></form:errors></td>
        <td><span class="err">* </span>Date:</td>
        <td> <input type="text" class="input_txtbx1" name="date" id="datepicker1" value="${Insuranceinformation.date}" /><br><span id="datepicker1err" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.date"></form:errors></td>
        </tr>
        <tr class="row1">
 		<td><span class="err">* </span>Spouse or Guardian Signature:</td>
        <td> <input type="text" class="input_txtbx1" name="spouse_sign" id="spouse_sign" value="${Insuranceinformation.spouse_sign}" onInput="return validatename56(id)";/><br><span id="spouse_signerr" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.spouse_sign"></form:errors></td>
        <td><span class="err">* </span>Date:</td>
        <td> <input type="text" class="input_txtbx1" name="date1" id="datepicker2" value="${Insuranceinformation.date1}" /><br><span id="datepicker2err" style="color: red;font-style:italic;"><form:errors path="Insuranceinformation.date1"></form:errors></td>
        </tr>
        </table>
       <table>
        <tr>
     	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
        <td><br><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
        <td>&nbsp;&nbsp;</td>
          <td><br><a href="deleteinsuranceinformation" class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a></td>
        
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
              