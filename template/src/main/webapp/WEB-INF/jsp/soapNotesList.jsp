<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

   </head>
 <body>
 <div id="right_content">
<form method="post" action="">
<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>View SOAP NOTES</h2> </center><br/>
	            
	            </div>
	            
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
          
          <tr class="row1">
             <c:forEach items="${soapnotesForm.soapnotes}" var="soapnotes" varStatus="status">
<td></td><td></td>
<td></td><td></td><td></td><td></td>
<td><h2>patient</h2></td>
   <td>${soapnotes.pname}</td>
   
   </c:forEach>
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
   