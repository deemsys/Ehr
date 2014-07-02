<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="/resources/css/style.css" />
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
  </script>
  
  
<script>
  $(function() {
	$("#guardian").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#age").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#drname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#signed").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>

<script>
  $(function() {
	$("#pwitness").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

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
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>

<script>
function validatename1(){
    var textInput = document.getElementById("signed").value;
    textInput = textInput.replace(/[^A-Za-z. ]/g, "");
    document.getElementById("signed").value = textInput;
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
 
  <script>

	function checkSubmit()


	

	{
		
		document.getElementById("guardianerror").innerHTML="";
		if(document.getElementById("guardian").value!="")
		{
		  if(document.getElementById("guardian").value.length<4 || document.getElementById("guardian").value.length>=32)
		  {
		  	
		  	document.getElementById("guardianerror").innerHTML="should be min 4 and max 32";
		  	
		      return false;
		  }
		}
		  document.getElementById("drnameerror").innerHTML="";
		  if(document.getElementById("drname").value!="")
			{
		  if(document.getElementById("drname").value.length<4 || document.getElementById("drname").value.length>=32)
		  {
		  	
		  	document.getElementById("drnameerror").innerHTML="should be min 4 and max 32";
		  	
		      return false;
		  }
			}
		 /*  document.getElementById("signederror").innerHTML="";
		  if(document.getElementById("signed").value!="")
			{
		  if(document.getElementById("signed").value.length<4 || document.getElementById("signed").value.length>=32)
		  {
		  	
		  	document.getElementById("signederror").innerHTML="should be min 4 and max 32";
		  	
		      return false;
		  }
			}
		   */
			
		document.getElementById("datepickererror").innerHTML=" ";
		
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
		document.getElementById("pwitnesserror").innerHTML="";
	if(document.getElementById("pwitness").value=="")
		{
		document.getElementById("pwitnesserror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	document.getElementById("pwitnesserror").innerHTML="";
	
	  if(document.getElementById("pwitness").value.length<4 || document.getElementById("pwitness").value.length>=32)
	  {
	  	
	  	document.getElementById("pwitnesserror").innerHTML="should be min 4 and max 32";
	  	
	      return false;
	  }
	
	}
			</script>
			
 </head>
<body>
<div id="right_content">
<form action="treatminor" method="POST">

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
	              <h2>Consent To Treat A minor </h2>
	            </div>
            <div class="contentbox">
            <c:choose>
            <c:when test="${empty minor}">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
                        <p id="mypar">I (We) being the parent or guardian of <input type="text" class="input_txtbx1" id="guardian" name="guardian" onInput="return validatename(id)"; /><span class="err" id="guardianerror" ><form:errors path="TreatMinor.guardian"></form:errors></span>, a minor, being the age of <input type="text" class="input_txtbx1" id="age" name="age" onkeypress="return validate(event)";/><span class="err"><form:errors path="TreatMinor.age"></form:errors></span> do hereby consent, authorize and request</p>
                        <p id="mypar">Dr.<input type="text" class="input_txtbx1" id="drname" name="drname"  onInput="return validatename(id)"; /><span class="err" id="drnameerror"> <form:errors path="TreatMinor.drname"></form:errors></span>to administer such treatment deemed advisable, necessary or requested on the above minor.</p>
                        <p id="mypar">I (We) agree to hold him free and harmless from any claims, suits for damages or complications which may result from such treatment.
                        
                        </p>
                        </div>
                        </tr>
                 
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err"></span>Signed:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="signed" onInput="return validatename1()"; name="signed"></td><span class="err" id="signederror"><form:errors path="TreatMinor.signed"></form:errors></span>
				                  <tr> <td></td></tr>
                        
                        </tr>
                        <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="pdate" /><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="TreatMinor.pdate"></form:errors></span>
                        </td>
                        </tr>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Witness: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="pwitness" name="pwitness"  onInput="return validatename(id)"; /><span id="pwitnesserror" style="color: red;font-style:italic;" ><form:errors path="TreatMinor.pwitness"></form:errors></span>
				                  	</tr>
                        <tr>
                        </table>
                       </c:when>
                       <c:otherwise>
                       <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
                        <p id="mypar">I (We) being the parent or guardian of <input type="text" class="input_txtbx1" id="inp_id" name="guardian" value="${minor.guardian}"/><span class="err"><form:errors path="TreatMinor.guardian"></form:errors></span>, a minor, being the age of <input type="text" class="input_txtbx1" id="inp_id" name="age" value="${minor.age}"/><span class="err"><form:errors path="TreatMinor.age"></form:errors></span> do hereby consent, authorize and request</p>
                        <p id="mypar">Dr.<input type="text" class="input_txtbx1" id="inp_id" name="drname" value="${minor.drname}"/><span class="err"><form:errors path="TreatMinor.drname"></form:errors></span>to administer such treatment deemed advisable, necessary or requested on the above minor.</p>
                        <p id="mypar">I (We) agree to hold him free and harmless from any claims, suits for damages or complications which may result from such treatment.</p>
                        </div>
                        </tr>
                 
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err"></span>Signed:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="signed" value="${minor.signed}"><span class="err"><form:errors path="TreatMinor.signed"></form:errors></span></td>
				                  <tr> <td></td></tr>
                        
                        </tr>
                        <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="pdate" value="${minor.pdate}"/><span id="datepickererror" style="color: red;font-style:italic;" ><form:errors path="TreatMinor.pdate"></form:errors></span></td>
                        </td>
                        </tr>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Witness: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="pwitness" name="pwitness" value="${minor.pwitness}"/><span id="pwitnesserror" style="color: red;font-style:italic;"><form:errors path="TreatMinor.pwitness"></form:errors></span></td>
				                  	</tr>
                        <tr>
                        </table>
                       </c:otherwise>
                       </c:choose>
                      
                        <table>
                        
				  <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="center"><br><input type="submit" class="submit_btn" id="saveid" value="Save" onclick="return checkSubmit('this');"></td>
				  <td>&nbsp;&nbsp;</td>
				   <td><br><a href="viewpatient"style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
				  </div>
				   <!--  <td valign="top" align="center"><br><input type="reset" class="submit_btn" value="Reset"></td> -->
				    <td>&nbsp;&nbsp;</td>
				     <!-- <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='treatminorlist'"></td> -->
				  </tr>
                        </table>
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
                       