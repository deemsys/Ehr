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
		<div id="login_div" style="border:solid 5px grey;border-radius:3px;">
		  <div class="login-top"></div>
		  <div class="login-center">
		    <ul class="login-list">
		      <li>
		        <p>UserName</p>
		      </li>
		      <li>
		        <input type="text" class="inputbx" name="j_username" id="uname" value=''>
				<p><font color="Red"><span id="urequires"></span></font></p>
		      </li>
		      <li>
		        <p>Password</p>
		      </li>
		      <li>
		        <input type="password" class="inputbx" name="j_password" id="pswd">
				<p><font color="Red"><span id="prequires"></span></font></p>
		      </li>
		      <li><a href="#">
		        <input type="submit" class="submit-btn" value=" " name="submit" onclick="return require();">
		        </a></li>
		      <!-- <li><a href="#" class="forgot-password"></a></li -->
		     <li style="padding-left: 12px;"><table><tr><td>
		     <a style="text-decoration: underline;" href="doctorsignup"><font color="white">Doctor Registration</font></a></td>
		    <td width="110"></td>
		     <td align="right"><a  style="text-decoration: underline;" href="signup"><font color="white">Patient Registration</font></a>
		     </td></tr>
		     </table></li>
		      <!-- <li><a href="signup" style="color:ffffff">Register</a></li> --> 
		    </ul>
		  </div>
		 <!--  <div class="login-bottom"></div>  -->
		 </div>
		 <br>
		 <div id="role_div">
		
		</div>   
		
	</form>
	<script type="text/javascript">
	function require(){
	document.getElementById("urequires").innerHTML="";
	document.getElementById("prequires").innerHTML="";
	if(document.getElementById("uname").value=="" && document.getElementById("pswd").value==""){
		document.getElementById("urequires").innerHTML="Field should not be Empty";
		document.getElementById("prequires").innerHTML="Field should not be Empty";
		return false;
	}
	else if(document.getElementById("uname").value==""){
		document.getElementById("urequires").innerHTML="Field should not be Empty";
		return false;
	}
	else if(document.getElementById("pswd").value==""){
		document.getElementById("prequires").innerHTML="Field should not be Empty";
		return false;
	}
}
	</script>
</body>
</html>