<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
<html>
<head>

<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}

body{background:#e5e5e5 url(../images/login-bg.gif) repeat-x;}
</style>
</head>
 <body>
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
        	<div>
	            <div class="headings altheading">
	             <h2>Register your account<h2> 
	            </div>
	            <div class="contentbox">
	            <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Username</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="username" />
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="inp_id" name="password" />
				  </td>
				  </tr>
				   <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Confirm Password</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="password" class="input_txtbx1" id="inp_id" name="confirm" />
				  </td>
				  </tr>
				  <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>E-mail Id</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="email" />
				  </td>
				  </tr>
				  </table>
				  <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td valign="top" align="center"><input type="submit" class="submit_btn" value="Submit"></td>
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
        	  
				  