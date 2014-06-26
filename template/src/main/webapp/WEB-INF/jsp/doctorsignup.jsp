<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<title>Registration Page</title> 
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"  type="text/css" />
<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet"  type="text/css" />
<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<script>
function validateusername(){
    var textInput = document.getElementById("username").value;
    textInput = textInput.replace(/[^A-Za-z0-9_]/g, "");
    document.getElementById("username").value = textInput;
}

</script>

<script>
function validateusername1(){
    var textInput = document.getElementById("password").value;
    textInput = textInput.replace(/[^A-Za-z0-9_@!#$%&*()?]/g, "");
    document.getElementById("password").value = textInput;
}

</script>
<script>

	function checkSubmit()
	{
document.getElementById("doctorusernameerror").innerHTML=" ";
		
		if(document.getElementById("doctorusername").value=="")
		{
		document.getElementById("doctorusernameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
		
		
document.getElementById("doctorpassworderror").innerHTML=" ";
		
		if(document.getElementById("doctorpassword").value=="")
		{
		document.getElementById("doctorpassworderror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
		
        
document.getElementById("doctorconfirmerror").innerHTML=" ";
		
		if(document.getElementById("doctorconfirm").value=="")
		{
		document.getElementById("doctorconfirmerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
        if(document.getElementById("doctorpassword").value!=document.getElementById("doctorconfirm").value)
        {
        	document.getElementById("doctorconfirmerror").innerHTML="password Must Be Same";
            return false;
        }

        
document.getElementById("doctoremailerror").innerHTML=" ";
		
		if(document.getElementById("doctoremail").value=="")
		{
		document.getElementById("doctoremailerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
        
        var mail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        
        if(document.getElementById("doctoremail").value.match(mail)==null)
        {
        	document.getElementById("doctoremailerror").innerHTML="Enter ur proper E-Mail";
        	
            return false;
        }

	}
	</script>

</head>
<div id="right_content">
<form action="doctorsignup" method="POST">

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
        	<div id="search_div">
	            <div class="headings altheading">
	             <h2>Registration For Doctor<h2> 
	            </div>
	            <div class="contentbox">
	            <c:choose>
	            <c:when test="${empty doctorsignup}">
	            <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Username</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="doctorusername" name="doctorusername" min="4" maxlength="32"  onInput="return validateusername()"; /><span class="err" id="doctorusernameerror"><form:errors path="Doctorsignup.doctorusername"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="doctorpassword" name="doctorpassword" onInput="return validateusername1()";  min="3" maxlength="32"/><span class="err" id="doctorpassworderror"><form:errors path="Doctorsignup.doctorpassword"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Confirm Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="doctorconfirm" name="doctorconfirm" /><span class="err" id="doctorconfirmerror"><form:errors path="Doctorsignup.doctorconfirm"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="doctoremail" name="doctoremail" /><span class="err" id="doctoremailerror"><form:errors path="Doctorsignup.doctoremail"></form:errors></span>
				  </td>
				  </tr>
				  </table>
				  </c:when>
				  <c:otherwise>
				  <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Username</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="doctorusername" value="${doctorsignup.doctorusername}"/></br><span class="err"><form:errors path="Doctorsignup.doctorusername"></form:errors><font color="Red" size="+1"><c:if test="${usernames=='exists'}"><c:out value="Username Already Exists"></c:out></c:if></font></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="doctorpassword" name="doctorpassword" value="${doctorsignup.doctorpassword}"/></br><span class="err"><form:errors path="Doctorsignup.doctorpassword"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Confirm Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="doctorconfirm" name="doctorconfirm" value="${doctorsignup.doctorconfirm }"/></br><span class="err"><form:errors path="Doctorsignup.doctorconfirm"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="doctoremail" value="${doctorsignup.doctoremail}"/></br><span class="err"><form:errors path="Doctorsignup.doctoremail"></form:errors></span>
				  </td>
				  </tr>
				  </table>
				  </c:otherwise>
				  </c:choose>
				  <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td valign="top" align="center"><input type="submit" class="submit_btn" value="Submit" onclick="return checkvalidation('this')"></td>
              <td valign="top" align="center"><input type="button" class="submit_btn1" value="Back to Login" onclick="window.location.href='login'"></td>
        	  </tr>
        	  </table>
        	  <script>
        	  function checkvalidation()
        	  {
        		  if(document.getElementById("doctorpassword").value!=document.getElementById("doctorconfirm").value)
        			  {
        			  alert("Password Must Be Same");
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
        







