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
	<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      		
			<tr>
			<c:if test="${success==true}">
        <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
            <div id="success_statusbar" class="status success">
            <p class="closestatus"><a title="Close" href="viewautoaccident">x</a></p>
            <p><img alt="Success" src="resources/images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>
    </c:if>
    </tr></table>
    <c:if test="${not empty sessionerror}">
		<script>
		alert("Session Timedout Please login again.");
		
		</script>
	</c:if>

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
		     <table><tr><td>
		     <li><a style="text-decoration: underline;" href="doctorsignup"><font color="white">Doctor Registration</font></a></li></td>
		    <td width="100"></td>
		     <td align="right"> <li><a  style="text-decoration: underline;" href="signup"><font color="white">Patient Registration</font></a></li>
		     </td></tr>
		     </table>
		      <!-- <li><a href="signup" style="color:ffffff">Register</a></li> --> 
		    </ul>
		  </div>
		 <!--  <div class="login-bottom"></div>  -->
		 </div>
		 <br>
		 <div id="role_div">
		
		</div>   
		
	</form>
</body>
</html>