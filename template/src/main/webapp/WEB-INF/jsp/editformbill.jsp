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
 $(function() {
	$("#datepicker").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
 $(function() {
	$("#insurance").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
 $(function() {
	$("#address1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
 $(function() {
	$("#name").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
	$(function() {
	$("#address3").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
	$(function() {
	$("#patientsname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
	$(function() {
	$("#address5").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
	$(function() {
	$("#medicalfee").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#amount").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
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
	var answer = confirm("Are you Sure You Want to Delete?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
	</script>
	<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
	<script>

	function checkSubmit()
	{
		document.getElementById("datepickererror").innerHTML="";
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("datepickererror").innerHTML=" ";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
        return false;
    }	
		document.getElementById("insuranceerror").innerHTML="";
		if(document.getElementById("insurance").value=="")
		{
		document.getElementById("insuranceerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("insuranceerror").innerHTML="";
	    if(document.getElementById("insurance").value.length<4 || document.getElementById("insurance").value.length>=32)
	    {
	    	
	    	document.getElementById("insuranceerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("nameerror").innerHTML="";
		if(document.getElementById("name").value=="")
		{
		document.getElementById("nameerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("nameerror").innerHTML="";
	    if(document.getElementById("name").value.length<4 || document.getElementById("name").value.length>=32)
	    {
	    	
	    	document.getElementById("nameerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("pnameerror").innerHTML="";
		if(document.getElementById("patientsname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("pnameerror").innerHTML="";
	    if(document.getElementById("patientsname").value.length<4 || document.getElementById("patientsname").value.length>=32)
	    {
	    	
	    	document.getElementById("pnameerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("amountdeducterror").innerHTML="";
		if(document.getElementById("medicalfee").value!="")
			{
		if(isNaN(document.getElementById("medicalfee").value))
		{
		document.getElementById("amountdeducterror").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
			}
		else
			{
			document.getElementById("amountdeducterror").innerHTML="Required Field Should not be Empty.";
			return false;
			}
		document.getElementById("amountdeducterror").innerHTML="";
		document.getElementById("number").innerHTML="";
		if(document.getElementById("amount").value!="")
		{
		if(isNaN(document.getElementById("amount").value))
		{
		document.getElementById("number").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
		}
		else
		{
		document.getElementById("number").innerHTML="Required Field Should not be Empty.";
		return false;
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
	<!-- function checkSubmit()
	{
		
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required field should not be empty";
		
		return false;
		}
		if(document.getElementById("insurance").value=="")
		{
		document.getElementById("insuranceerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		if(document.getElementById("name").value=="")
		{
		document.getElementById("nameerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		if(document.getElementById("patientsname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required field should not be empty";
		return false;
		}
		document.getElementById("amountdeducterror").innerHTML="";
		if(isNaN(document.getElementById("medicalfee").value))
		{
		document.getElementById("amountdeducterror").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
		document.getElementById("number").innerHTML="";
		if(isNaN(document.getElementById("amount").value))
		{
		document.getElementById("number").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
		
		}
		</script> -->
</head>
 <body>
<div id="right_content">
<form action="updateformbill" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr><td width="150"></td>
        <td valign="top" align="center">
        	<div>
        	          <c:set value="${formbillform.formbilldetails[0]}" var="formbilldetails"> </c:set>
	            <div class="headings altheading">
	             <h2>FORM BILL</h2> 
	            </div>
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="30" >
              <td ><b>CERTIFIED MAIL</b></td>
              </tr>
              <tr height="30">
              <td ><b>Return Receipt Requested</b></td>
              </tr>
               
              </table><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="400"></td>
              <td height="25" width="50"><span class="err">*</span>Date:</td>
              <td ><input type="hidden" name="formid" value="${formbilldetails.formid }"><input type="text" class="input_txtbx1" name="date" id="datepicker"  value="${formbilldetails.date }" /><span class="err" id="datepickererror"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table><br>
            
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span> Insurance Company:</td>
              <td ><input type="text" class="input_txtbx1" name="insurance" id="insurance" value="${formbilldetails.insurance }" onInput="return validatename(id)";/><span class="err" id="insuranceerror"><form:errors path="Formbill.insurance"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">&nbsp;</span>Address:</td>
              <td ><textarea rows="" cols=""  class="input_txtarea" name="address1" id="address1" style="width: 169px; height: 62px">${formbilldetails.address1}</textarea><span class="err"><form:errors path="Formbill.address1"></form:errors></span></td>
             </tr>
              </table>
              
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr ><br>
             <td height="25" width="120"><span class="err">*</span> Name Of Attorney:</td>
              <td ><input type="text" class="input_txtbx1" name="name" id="name" value="${formbilldetails.name}" onInput="return validatename(id)";/><span class="err" id="nameerror"><form:errors path="Formbill.name"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">&nbsp;</span>Address:</td>
              <td ><textarea rows="" cols="" class="input_txtarea" name="address3" id="address3" style="width: 169px; height: 62px">${formbilldetails.address3}</textarea><span class="err"><form:errors path="Formbill.address3"></form:errors></span></td>
             </tr>
              </table>
            
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span> Patient Name</td>
              <td ><input type="text" class="input_txtbx1" name="patientsname" id="patientsname" value="${formbilldetails.patientsname}" onInput="return validatename(id)";/><span class="err" id="pnameerror"><form:errors path="Formbill.patientsname"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">&nbsp;</span>Address:</td>
              <td ><textarea rows="" cols=""  class="input_txtarea" name="address5" id="address5" style="width: 169px; height: 62px">${formbilldetails.address5}</textarea><span class="err"><form:errors path="Formbill.address5"></form:errors></span></td>
             </tr>
              </table>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"><b><h4>RE:</b>&nbsp;&nbsp;&nbsp;&nbsp; Notice of Final Outstanding Amount Owed;Medical Fees of $ <input type="text" class="input_txtbx1" onkeypress="return validate(event)"; name="medicalfee" id="medicalfee" value="${formbilldetails.medicalfee}">
	<span class="err"><form:errors path="Formbill.medicalfee"></form:errors></span>
				  <span class="err" id="amountdeducterror"></span></h4></p></td>
        	  <td>
        	  </td>
        	  </tr>
       		  </table>
       		 <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"> <b>Notice is made of final outstanding amounts owed for medical fees rendered by the above of $ <input type="text" class="input_txtbx1" name="amount" id="amount" onkeypress="return validate(event)"; value="${formbilldetails.amount}">
	<span class="err"><form:errors path="Formbill.amount"></form:errors></span>
				  <span class="err" id="number"></span></b></p></td>
        	  <td>
        	  </td>
        	  </tr>        	 
       		  </table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td>
       		<b>Notice has been previously provided to you of a Treatment Fee Agreement and Instructions to Attorney and an assignment of coverage proceeds.</b>
       		</td>
       		</tr>
       		</table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td><br>	
	<p align="right"><b>Very truly yours,</b>
	</p>
	
<p align="right">Perry Chiropractic & Therapy Center of Canton, Inc
	</p>

<p align="right">&Dr. Charles T. Yang D.C.
	</p>
	
<br>				</td></tr></table>
       		   <table><tr> <td><input type="submit" class="submit_btn" value="update" onclick="return checkSubmit('this');"></td>
       		   <td><a href="deleteformbill?formid=${formbilldetails.formid }"style="color:white" class="submit_btn" onclick="return confirmation()" >Delete</a></td>
               <td><a href="viewallpatientdetails"style="color:white" class="submit_btn">Cancel</a></td>
              </tr></table>
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