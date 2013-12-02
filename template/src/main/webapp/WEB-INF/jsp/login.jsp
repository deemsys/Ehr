<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Login Page</title> 
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
<body onload='document.f.j_username.focus();'>
	

	<c:if test="${not empty error}">
		<div class="errorblock">
			Your login attempt was not successful, try again.<br /> Caused :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>

	<form name='f' action="<c:url value='j_spring_security_check' />" method='POST'>
		<div id="login_div">
		  <div class="login-top"></div>
		  <div class="login-center">
		    <ul class="login-list">
		      <li>
		        <p>Username</p>
		      </li>
		      <li>
		        <input type="text" class="inputbx" name="j_username" value=''>
				<p><font color="Red"></font></p>
		      </li>
		      <li>
		        <p>Password</p>
		      </li>
		      <li>
		        <input type="password" class="inputbx" name="j_password">
				<!-- <p><font color="Red">Required Field Cannot Be Blank</font></p>	 -->
		      </li>
		      <li><a href="#">
		        <input type="submit" class="submit-btn" value=" " name="submit">
		        </a></li>
		      <!-- <li><a href="#" class="forgot-password"></a></li -->
		      <li><input name="reset" type="reset" /></li>
		      <!-- <li><a href="signup" style="color:ffffff">Register</a></li> --> 
		    </ul>
		  </div>
		 <!--  <div class="login-bottom"></div>  -->
		 </div>
		 <br>
		 <div id="role_div">
		<table>
		<tr>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><input type="button" id="btnNext" class="submit_btn2" value="Doctor Registration" onclick="window.location.href='doctorsignup'" /></td>
        <td>&nbsp;&nbsp;</td>
		<td><input type="button" id="btnNext" class="submit_btn2" value="Patient Registration" onclick="window.location.href='signup'"/></td>
		</tr>
		</table>
		</div>   
		
	</form>
</body>
</html>