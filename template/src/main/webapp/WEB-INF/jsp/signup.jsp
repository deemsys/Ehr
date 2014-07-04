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
document.getElementById("usernameerror").innerHTML=" ";
		
		if(document.getElementById("username").value=="")
		{
		document.getElementById("usernameerror").innerHTML="Required Field Should not be Empty.";
		
		return false;
		}
		document.getElementById("usernameerror").innerHTML="";
	    if(document.getElementById("username").value.length<4 || document.getElementById("username").value.length>=32)
	    {
	    	
	    	document.getElementById("usernameerror").innerHTML="Username Should be of length 4 to 32.";
	    	
	        return false;
	    }
		
		/* var uname = /^[A-Za-z0-9_]{4,32}$/;
		 if(document.getElementById("username").value.match(uname)==null)
	        {
	        	document.getElementById("usernameerror").innerHTML="Invalid Format";
	            return false;
	        }  */
document.getElementById("passworderror").innerHTML=" ";
		
		if(document.getElementById("password").value=="")
		{
		document.getElementById("passworderror").innerHTML="Required Field Should not be Empty.";
		
		return false;
		}
		
		document.getElementById("passworderror").innerHTML="";
	    if(document.getElementById("password").value.length<4 || document.getElementById("password").value.length>=32)
	    {
	    	
	    	document.getElementById("passworderror").innerHTML="Password should be length 4 to 32";
	    	
	        return false;
	    }
       /*  var pass = /^[a-zA-Z0-9]{3,32}$/;
        
        if(document.getElementById("password").value.match(pass)==null)
        {
        	document.getElementById("passworderror").innerHTML="Invalid Format";
            return false;
        } */
document.getElementById("confirmerror").innerHTML=" ";
		
		if(document.getElementById("confirm").value=="")
		{
		document.getElementById("confirmerror").innerHTML="Required Field Should not be Empty.";
		
		return false;
		}
        if(document.getElementById("password").value!=document.getElementById("confirm").value)
        {
        	document.getElementById("confirmerror").innerHTML="Password Should be of length.";
            return false;
        }
        
     /*    document.getElementById("confirmerror").innerHTML="";
	    if(document.getElementById("confirm").value.length<3 || document.getElementById("confirm").value.length>=32)
	    {
	    	
	    	document.getElementById("confirmerror").innerHTML="Password should be min 3 and max 32";
	    	
	        return false;
	    } */
document.getElementById("emailerror").innerHTML=" ";
		
		if(document.getElementById("email").value=="")
		{
		document.getElementById("emailerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
        
        var mail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        
        if(document.getElementById("email").value.match(mail)==null)
        {
        	document.getElementById("emailerror").innerHTML="Enter ur proper E-Mail";
        	
            return false;
        }

        

	}
	</script>
</head>
<div id="right_content">
<form action="signup" method="POST">

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
	             <h2>Register your account<h2> 
	            </div>
	            <div class="contentbox">
	             <c:choose>
                 <c:when test="${empty signup}">
	            <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">

	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>UserName</td>

				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="username" name="username" min="4" maxlength="32" onInput="return validateusername()"; />
				 </br><font color="red" size="+1"> <span id="usernameerror" ></font><form:errors path="Signup.username"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Password:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="password" name="password" onInput="return validateusername1()"; min="3" maxlength="32"/><br><font color="red" size="+1"><span  id="passworderror"></font><form:errors path="Signup.password"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Confirm Password:</td>
				  <td valign="top" align="left" class="input_txt">

				  <input type="password" class="input_txtbx1" id="confirm" name="confirm" /><br><font color="red" size="+1"><span id="confirmerror"></font><form:errors path="Signup.confirm"></form:errors></span>

	  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">* </span>E-mail Id:</td>
				  <td valign="top" align="left" class="input_txt">

				  <input type="text" class="input_txtbx1" id="email" name="email" /><br><font color="red" size="+1"><span  id="emailerror"></font><form:errors path="Signup.email"></form:errors></span>

				  </td>
				  </tr>
				  </table>
				  </c:when>
				  <c:otherwise>
				   <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Username:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="username" name="username" value="${signup.username}" onInput="return validateusername()";/><br/><span class="err"><form:errors path="Signup.username"></form:errors><font color="Red" size="+1"><c:if test="${usernames=='exist'}"><c:out value="Username Already Exists"></c:out></c:if></font></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Password:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="password"  onInput="return validateusername1()"; min="3" maxlength="32" name="password" value="${signup.password}"/><br><font color="red" size="+1"><span  id="passworderror"></font><span class="err"><form:errors path="Signup.password"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">* </span>Confirm Password:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="confirm" name="confirm" value="${signup.confirm}"/><br><font color="red" size="+1"><span id="confirmerror"></font><span class="err"><form:errors path="Signup.confirm"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">* </span>E-mail Id:</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="email" name="email" value="${signup.email}"/><br/><font color="red" size="+1"><span  id="emailerror"></font><font color="Red" size="+1"><c:if test="${emailerror=='exists'}"><c:out value="E-mail Id Already Exists"></c:out></c:if></font><span class="err"><form:errors path="Signup.email"></form:errors></span>
				  </td>
				  </tr>
				  </table>
				  </c:otherwise>
				  </c:choose>
				  <br>
				   <!-- <script>
        	  function checkvalidation()
        	  {
        		  if(document.getElementById("password").value!=document.getElementById("confirm").value)
        			  {
        			  alert("Password Must Be Same");
        			  return false;
        			  }
        	  } -->
        	  
        	  </script>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td valign="top" align="center"><input type="submit" class="submit_btn" value="Submit" onclick="return checkSubmit('this');"></td>
              <td valign="top" align="center"><input type="button" class="submit_btn1" value="Back to Login" onclick="window.location.href='login'"></td>
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
        







