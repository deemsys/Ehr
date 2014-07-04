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

	<c:if test="${not empty nsearch}">
		<div class="errorblock" align="center">
		 The user was not registered.....Please check the details.
		</div>
	</c:if>
<div id="right_content">
<form action="checklistsearch" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
  <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Error" src="resources/images/Close.png"><span>User was not registered in a patient interface.Please register in patient interface!!!</span>.</p>
          </div>
      </tr> 
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
	           <div class="headings altheading"><h2 align="center">Message</h2>
	           </div>
	            <div class="contentbox">
	           <table cellpadding="0" cellspacing="0" border="0" width="100%">
	           <br>
			<span style="color:red;" ><center ><b>The Record was deleted</b></center></span>
				  </table>
				   <br>
				  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center><input type="button" class="submit_btn" onclick="close123()" value="Close"></center>
				
				   <script>
				   function close123()
				   {
					   
					   window.close();
				   }
				   </script>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              
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
              