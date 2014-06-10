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
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Username</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="username" />
				 </br> <span><form:errors path="Signup.username"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="password" name="password" /><br><span class="err"><form:errors path="Signup.password"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Confirm Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="confirm" name="confirm" /><br><span class="err"><form:errors path="Signup.confirm"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="email" /><br><span class="err"><form:errors path="Signup.email"></form:errors></span>
				  </td>
				  </tr>
				  </table>
				  </c:when>
				  <c:otherwise>
				   <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Username</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="username" value="${signup.username}"/></br><span class="err"><form:errors path="Signup.username"></form:errors><font color="Red" size="+1"><c:if test="${usernames=='exist'}"><c:out value="Username Already Exists"></c:out></c:if></font></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="password" name="password" value="${signup.password}"/></br><span class="err"><form:errors path="Signup.password"></form:errors></span>
				  </td>
				  </tr>
				   <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Confirm Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="confirm" name="confirm" value="${signup.confirm}"/></br><span class="err"><form:errors path="Signup.confirm"></form:errors></span>
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="email" value="${signup.email}"/></br><span class="err"><form:errors path="Signup.email"></form:errors></span>
				  </td>
				  </tr>
				  </table>
				  </c:otherwise>
				  </c:choose>
				  <br>
				   <script>
        	  function checkvalidation()
        	  {
        		  if(document.getElementById("password").value!=document.getElementById("confirm").value)
        			  {
        			  alert("Password Must Be Same");
        			  return false;
        			  }
        	  }
        	  
        	  </script>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td valign="top" align="center"><input type="submit" class="submit_btn" value="Submit" onclick="return checkvalidation('this')"></td>
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
        







