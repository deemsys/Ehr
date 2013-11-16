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
	            <center> <h2>VIEW SOAP NOTES</h2> </center><br/>
	            
	            </div>
	            
	    <div class="contentbox">
          <table cellpadding="0" cellspacing="0" border="0" width="98%">
           
          
         
 					<c:forEach items="${soapnotesForm.soapnotes}" var="soapnotes" varStatus="status">
 					 <tr class="row1">
<td></td><td></td>
<td></td><td></td><td></td><td></td> 					                   
<td>patient: ${soapnotes.pname}</td>

</tr>
<tr class="row1">
<td>Chief Complaint:</td>
<td> ${soapnotes.headache}</td>
<td> ${soapnotes.neckpain}</td>
<td> ${soapnotes.rightshoulderpain}</td>
<td> ${soapnotes.leftshoulderpain}</td>
<td> ${soapnotes.chestpain}</td>
<td> ${soapnotes.rightarmpain}</td>
<td> ${soapnotes.leftarmpain}</td>
</tr>
<tr class="row2">
<td> ${soapnotes.rightelbowpain}</td>
<td> ${soapnotes.leftelbowpain}</td>
<td> ${soapnotes.rightwristpain}</td>
<td> ${soapnotes.leftwristpain}</td>
<td> ${soapnotes.righthandpain}</td>
<td> ${soapnotes.lefthandpain}</td>
<td> ${soapnotes.mbp}</td>
</tr>
<tr class="row2">
<td> ${soapnotes.rightribpain}</td>
<td> ${soapnotes.leftribpain}</td>
<td> ${soapnotes.lbp}</td>
<td> ${soapnotes.rightsipain}</td>
<td> ${soapnotes.leftsipain}</td>
<td> ${soapnotes.righthippain}</td>
<td> ${soapnotes.lefthippain}</td>
</tr>
<tr class="row2">
<td> ${soapnotes.rightgluteulpain}</td>
<td> ${soapnotes.leftgluteulpain}</td>
<td> ${soapnotes.rightlegpain}</td>
<td> ${soapnotes.leftlegpain}</td>
<td> ${soapnotes.rightkneepain}</td>
<td> ${soapnotes.leftkneepain}</td>
<td> ${soapnotes.rightanklepain}</td>
</tr>
<tr class="row2">
<td> ${soapnotes.leftanklepain}</td>
<td> ${soapnotes.rightfootpain}</td>
<td> ${soapnotes.leftfootpain}</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="1" width="98%">
 <tr>
  <td>
<bold><center> Date </center> </bold>
  </td>
 <td>
<bold><center> S</center></bold>
 </td>
 <td>
 <bold><center>O</center></bold>
 </td>
 <td>
 <bold><center>A</center></bold>
 </td>
 <td>
 <bold><center>P</center></bold>
 </td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;${soapnotes.date1}</td>
 
</c:forEach>


</div>
</div>
</td>
</tr>
</table>
</form>
</div>
</body>
</html>