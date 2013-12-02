<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<form action="doctorsearch" method="POST">

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
        	<div id="login_div">
	            <div class="headings altheading">
	             <h2>Checking for a Patient<h2> 
	            </div>
	            <div class="contentbox">
	           <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr class="row1">
	             <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Please enter a Patient name</td>
				  <td valign="top" align="left" class="input_txt">
				   <input type="text" class="input_txtbx1" id="inp_id" name="patname" /><br/><span class="err"><form:errors path="Signup.username"></form:errors></span>
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
              </html>
              <jsp:include page="footer.jsp"></jsp:include>
              