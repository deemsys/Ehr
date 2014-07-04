<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
           $("#datepicker").datepicker();
         });
 
</script>

	  <script>

	  
	  $(function() {
			$("#print_pat_name").on("keypress", function(e) {
				if (e.which === 32 && !this.value.length)
			        e.preventDefault();
			});
			});	

		</script>
<script>
  $(function() {
	$("#witness_sign").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
  $(function() {
	$("#pat_sign").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
function validatename(id)
{
	var textInput = document.getElementById(id).value;
	textInput = textInput.replace(/[^A-Za-z ]/g, "");
	document.getElementById(id).value = textInput;
}
</script>
<script>
function validatesign(id)
{
	var textInput = document.getElementById(id).value;
	textInput = textInput.replace(/[^A-Za-z. ]/g, "");
	document.getElementById(id).value = textInput;
}
</script>

<script>

	function checkSubmit()
	{
		var name = document.getElementById("print_pat_name").value;
		var sign = document.getElementById("pat_sign").value;
		var witness = document.getElementById("witness_sign").value;
		var spl =  /^[A-Za-z0-9]*$/;
		
	
		 if(name =="")
		 {
		
			 document.getElementById("print_pat_nameerror").innerHTML="Required Field Should not be Blank";
			 return false;
		 } 
			document.getElementById("print_pat_nameerror").innerHTML="";
		    if(document.getElementById("print_pat_name").value.length<4 || document.getElementById("print_pat_name").value.length>=32)
		    {
		    	
		    	document.getElementById("print_pat_nameerror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    } 
		
		
		 	if(document.getElementById("print_pat_name").value.substring(0,1)==" ")
			{
			document.getElementById("print_pat_nameerror").innerHTML="Initial space not allowed";
			
			return false;
			}
		 	
	     
		 if(sign =="")
		 {
			 document.getElementById("pat_signerror").innerHTML="Required Field Should not be Blank";
			 return false;
		 } 
		 document.getElementById("pat_signerror").innerHTML="";
		    if(document.getElementById("pat_sign").value.length<4 || document.getElementById("pat_sign").value.length>=32)
		    {
		    	
		    	document.getElementById("pat_signerror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    } 
		
		
		 	if(document.getElementById("pat_sign").value.substring(0,1)==" ")
			{
			document.getElementById("pat_signerror").innerHTML="Initial space not allowed";
			
			return false;
			}
		 
		 if(witness =="")
		 {
			 document.getElementById("witness_signerror").innerHTML="Required Field Should not be Blank";
			 return false;
		 } 
		 document.getElementById("witness_signerror").innerHTML="";
		    if(document.getElementById("witness_sign").value.length<4 || document.getElementById("witness_sign").value.length>=32)
		    {
		    	
		    	document.getElementById("witness_signerror").innerHTML="Should be of length 4 to 32";
		    	
		        return false;
		    } 
		
		
		 	if(document.getElementById("witness_sign").value.substring(0,1)==" ")
			{
			document.getElementById("witness_signerror").innerHTML="Initial space not allowed";
			
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
	 document.getElementById("print_pat_nameerror").innerHTML="";
	if(document.getElementById("print_pat_name").value=="")
	{
	document.getElementById("print_pat_nameerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("pat_signerror").innerHTML="";
	if(document.getElementById("pat_sign").value=="")
	{
	document.getElementById("pat_signerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("witness_signerror").innerHTML="";
	if(document.getElementById("witness_sign").value=="")
	{
	document.getElementById("witness_signerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
 
	
	
	
	}

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
</head>
 <body>
<div id="right_content">
<form action="hardshipagreement" method="POST">

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
	             <h2>Hardship Agreement</h2> 
	            </div>
	            <div class="contentbox">
	            <c:choose>
				<c:when test="${empty hard}">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td valign="middle"  class="input_txt" width="22%"><span class="err">&nbsp;*&nbsp;</span>Date:</td>
              <td valign="middle"  class="input_txt"><input type="text" id="datepicker" class="input_txtbx1" name="date"/><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.date"></form:errors></td>
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
       		  <td valign="middle" align="left" class="input_txt" width="22%"><span class="err">&nbsp;*&nbsp;</span>Print Patients Name:
              <td valign="middle"  class="input_txt"><input type="text" class="input_txtbx1" name="print_pat_name" id="print_pat_name" onInput="return validatename(id);" value="${name}"/><span id="print_pat_nameerror" style="color: red;font-style:italic;" ><form:errors path="Hardshipagreement.print_pat_name"></form:errors></span></td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="middle" align="left" class="input_txt" width="22%"><span class="err">&nbsp;*&nbsp;</span>Patients Signature:&nbsp;&nbsp;&nbsp;
              <td valign="middle"  class="input_txt"><input type="text" class="input_txtbx1" name="pat_sign" id="pat_sign" align="right" onInput="return validatesign(id);"/><span id="pat_signerror" style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.pat_sign"></form:errors></td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="middle" align="left" class="input_txt" width="22%"><span class="err">&nbsp;*&nbsp;</span>Witness Signature:&nbsp;&nbsp;&nbsp;  
              <td valign="middle"  class="input_txt"><input type="text" class="input_txtbx1" name="witness_sign" id="witness_sign" onInput="return validatesign(id);"/><span id="witness_signerror" style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.witness_sign"></form:errors></td>
              </tr>
              </table>
              </c:when>
              <c:otherwise>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td><span class="err"> * </span>Date</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" value="${hard.date}"/><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.date"></form:errors></td>
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
       		  <td valign="middle" align="left" class="input_txt"><span class="err"> * </span>Print Patients Name
              <input type="text" class="input_txtbx1" name="print_pat_name" id="print_pat_name" value="${hard.print_pat_name}"/><span id="print_pat_nameerror" style="color: red;font-style:italic;" ><form:errors path="Hardshipagreement.print_pat_name"></form:errors></span></td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="middle" align="left" class="input_txt"><span class="err"> * </span>Patients Signature&nbsp;&nbsp;&nbsp;
              <input type="text" class="input_txtbx1" name="pat_sign" id="pat_sign" value="${hard.pat_sign}"/><span id="pat_signerror" style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.pat_sign"></form:errors></td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="middle" align="left" class="input_txt"><span class="err"> * </span>Witness Signature&nbsp;&nbsp;&nbsp;  
              <input type="text" class="input_txtbx1" name="witness_sign" id="witness_sign"  value="${hard.witness_sign}"/><span id="witness_signerror" style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.witness_sign"></form:errors></td>
              </tr>
              </table>
              </c:otherwise>
              </c:choose>
              <br>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
              <td>
              <a href="viewpatient"style="color:white" id="cancelid" class="submit_btn">Cancel</a></td>
				
				<!-- <td><a href="viewpatient"style="color:white" id="cancelid" class="submit_btn">Cancel</a></td> -->
				<!--  <td > <input type="button"   class="submit_btn" value=" Print" onclick="window.print();return false;" /></td> -->
              
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