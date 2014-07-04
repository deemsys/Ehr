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
	$("#name").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#datepicker").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#datepicker1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#datepicker2").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
	$(function() {
	$("#sign").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
</script>
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
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
<script type="text/javascript">
	function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Patient ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
	</script>
	<!-- <script>
function validatename(){
    var textInput = document.getElementById("name").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("name").value = textInput;
}
</script> -->
	<script>
function checkSubmit()
	{
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
		document.getElementById("datepickererror").innerHTML="";
		if(document.getElementById("datepicker2").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("datepickererror").innerHTML=" ";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker2").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
        return false;
    }	
		document.getElementById("signerror").innerHTML="";
		if(document.getElementById("sign").value=="")
		{
		document.getElementById("signerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("signerror").innerHTML="";
	    if(document.getElementById("sign").value.length<4 || document.getElementById("sign").value.length>=32)
	    {
	    	
	    	document.getElementById("signerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }

		
		document.getElementById("dateerror").innerHTML=" ";
		var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker").value !="") {
		  if (re.test(document.getElementById("datepicker").value) == false) {
			  document.getElementById("dateerror").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		document.getElementById("date1error").innerHTML=" ";
    var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("date1error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
    	
		}

</script>
</head>
 <body>
<div id="right_content">
<form action="updatexray" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="center">
        	<div>
        	<c:set value="${xrayform.xraydetails[0]}" var="xraydetails"> </c:set>
	            <div class="headings altheading">
	             <h2>CHIROPRACTIC THERAPY CENTER</h2> 
	            </div>
	            <div class="contentbox">
	                
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road </b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>The Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village, OH 44035</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>Tax Identification Number 34-1931730  </b></td></tr>
               <tr ><td width="260"></td>
              <td ><b>Phone (440) 934-3099 Fax (440) 934-3107</b></td></tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="center"><u>  <h2>X-Ray Release Form</h2></u> </td>
              </tr>
 </table><br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr><td><span class="err">*</span>  I  <input type="hidden" name="xrayid" value="${xraydetails.xrayid }"> <input type="text" class="input_txtbx1" name="name" id="name" value="${xraydetails.name}" onInput="return validatename(id)";> <span class="err" id="nameerror"></span>do hereby agree to return X-rays that I have borrowed from the Chiropractic Therapy Center, I understand that I have fourteen (14) days to do so.I fully agree that in the event that I do not return X-rays, I will be billed $50.00.  	  
       </td></tr></table><br><br>
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err">&nbsp;</span> Date Borrowed</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker"  value="${xraydetails.date}"/><span class="err" id="dateerror"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err">&nbsp;</span> Date Due</td>
              <td ><input type="text" class="input_txtbx1" name="date1" id="datepicker1"  value="${xraydetails.date1}"/><span class="err" id="date1error"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err">*</span> Date </td>
              <td width="70"><input type="text" class="input_txtbx1" name="date2" id="datepicker2"  value="${xraydetails.date2}"/><span class="err" id="datepickererror"><form:errors path="Hardshipagreement.date"></form:errors></td>
              <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span> Signature:</td>
             <td width="50"> <input type="text" class="input_txtbx1" name="sign" id="sign"  value="${xraydetails.sign}" onInput="return validatename(id)";/><span class="err" id="signerror"><form:errors path="Hardshipagreement.date"></form:errors></td>
              
              </tr>
              </table><br><br>
              
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="update" onclick="return checkSubmit('this');"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="deletexray?xrayid=${xraydetails.xrayid}"style="color:white" class="submit_btn" onclick="return confirmation()" >Delete</a></td>
              <td><a href="viewallpatientdetails" style="color:white" class="submit_btn">Cancel</a></td>
              <td>&nbsp;&nbsp;</td>
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