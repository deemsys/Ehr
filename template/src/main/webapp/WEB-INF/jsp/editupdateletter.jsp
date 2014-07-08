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
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
<script>
   $(function() {
	$("#toattorney1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
	 $(function() {
	$("#toattorney2").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
	$(function() {
	$("#toattorney3").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
	$(function() {
	$("#reg").on("keypress", function(e) {
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
  </script>
 <script type="text/javascript">
$(function() {
    $( "#datepicker1" ).datepicker();
  });
$(function() {
    $( "#datepicker2" ).datepicker();
  });
</script>
 <script>

	function checkSubmit()
	{
		document.getElementById("toattorney1error").innerHTML=" ";
		
		if(document.getElementById("toattorney1").value=="")
		{
		document.getElementById("toattorney1error").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("toattorney1error").innerHTML="";
	    if(document.getElementById("toattorney1").value.length<4 || document.getElementById("toattorney1").value.length>=32)
	    {
	    	
	    	document.getElementById("toattorney1error").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("toattorney2error").innerHTML="";
	if(document.getElementById("toattorney2").value=="")
		{
		document.getElementById("toattorney2error").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	document.getElementById("toattorney2error").innerHTML="";
	    if(document.getElementById("toattorney2").value.length<4 || document.getElementById("toattorney2").value.length>=32)
	    {
	    	
	    	document.getElementById("toattorney2error").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	document.getElementById("toattorney3error").innerHTML="";
	if(document.getElementById("toattorney3").value=="")
	{
	document.getElementById("toattorney3error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("toattorney3error").innerHTML="";
	    if(document.getElementById("toattorney3").value.length<4 || document.getElementById("toattorney3").value.length>=32)
	    {
	    	
	    	document.getElementById("toattorney3error").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	     document.getElementById("regerror").innerHTML="";
	if(document.getElementById("reg").value!="")
	{
	if(document.getElementById("reg").value.length<4 || document.getElementById("reg").value.length>=32)
	    {
	    	
	    	document.getElementById("regerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	}
	/* document.getElementById("regerror").innerHTML="";
	if(document.getElementById("reg").value!="")
	{
	if(document.getElementById("reg").value.length<4 || document.getElementById("reg").value.length>=32)
	    {
	    	
	    	document.getElementById("regerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	} */
	document.getElementById("datepicker2error").innerHTML="";
	if(document.getElementById("datepicker2").value=="")
	{
	document.getElementById("datepicker2error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("datepicker2error").innerHTML="";
	 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker2").value.match(datechk)==null)
    {
    	document.getElementById("datepicker2error").innerHTML="Invalid Date Format";
    	
        return false;
    }	
	document.getElementById("datepicker1error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
	}

	</script>
</head>
 <body>
<div id="right_content">
<form action="updateupdateletter" method="POST">

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
        	<c:set value="${updateletterform.updateletterdetails[0]}" var="updateletterdetails"> </c:set>
	            <div class="headings altheading">
	             <h2 align="center">UPDATE  LETTER</h2> 
	            </div>
	            <div class="contentbox">
	           
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">* </span>To Attorney:</td>
              <td width="50%"><input type="hidden" name="updateid" value="${updateletterdetails.updateid }"><input type="text" class="input_txtbx1" name="toattorney1" id="toattorney1"  value="${updateletterdetails.toattorney1}" onInput="return validatename(id)";/><br/><font size="+1" color="red"><span  id="toattorney1error" ><form:errors path="Hardshipagreement.date"></form:errors></span></font></td>
              </tr>
              </table>
              <br>
               
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">&nbsp;&nbsp;</span></td>
              <td  width="50%"><input type="text" class="input_txtbx1" name="toattorney2" id="toattorney2"  value="${updateletterdetails.toattorney2}" onInput="return validatename(id)";/><br/><font size="+1" color="red"><span  id="toattorney2error"  style="color: red;font-style:italic;"></span><form:errors path="Hardshipagreement.date"></form:errors></font></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">&nbsp;&nbsp;</span></td>
              <td width="50%"><input type="text" class="input_txtbx1" name="toattorney3" id="toattorney3"  value="${updateletterdetails.toattorney2}" onInput="return validatename(id)";/><br/><font size="+1" color="red"><span  id="toattorney3error"  style="color: red;font-style:italic;"></span></font><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <br>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">&nbsp;&nbsp;</span>
In Regards to : 
              </td>
              <td width="50%"><input type="text" class="input_txtbx1" name="reg" id="reg"  value="${updateletterdetails.reg}" onInput="return validatename(id)";/><br/><span class="err" id="regerror"></span><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <br>
              
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">&nbsp;&nbsp;&nbsp;</span>Date of Injury:

              </td>
              <td width="50%"><input type="text" class="input_txtbx1" name="injury" id="datepicker1" readonly="readonly"  value="${updateletterdetails.injury}"><br/><span class="err" id="datepicker1error"></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">* </span>Todays date:    
              </td>
              <td width="50%"><input type="text" class="input_txtbx1" name="todaydate" id="datepicker2" readonly="readonly"      value="${updateletterdetails.todaydate}"/><br/><font size="+1" color="red"><span id="datepicker2error"></span></font></td>
              </tr>
              </table>
              <br>
             
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr>
        	  <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In order to update our records, we are asking that you provide an update on the status 
        	  on  the following account.</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please fax back to us at (440) 934-3099</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank-you</p>
              </tr>
              </table>
              <br>
              
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="update" onclick="return checkSubmit('this');">
				</td>
				<td><a href="deleteupdateletter?updateid=${updateletterdetails.updateid }" style="color:white" class="submit_btn" onclick="return confirmation() ">Delete</a></td>
				<td></td>
              <td><a href="viewallpatientdetails" style="color:white" class="submit_btn">Cancel</a></td>
              <td>&nbsp;&nbsp;</td>
        	  </tr>
        	  </table>
        	  <script type="text/javascript">
	function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete?")
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