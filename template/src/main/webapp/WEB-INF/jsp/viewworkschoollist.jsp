<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquery-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
</head>
 <body>
<div id="right_content">
<form action="viewworklist" method="POST">
<c:forEach items="${workschoolform.workschooldetails}" var="workschooldetails" varStatus="status">
<table cellpadding="0" cellspacing="0" border="0" height="100" width="60%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="center">
        	<div>
	            <div class="headings altheading">
	             <h2>CHIROPRACTIC THERAPY CENTER</h2> 
	            </div>
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road</b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>Sheffield Village, Ohio 44035</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>(440) 934-3099  Fax: (440) 934-3107</b></td>
              </tr>
              </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Date:</td>
              <td ><input type="hidden" name="workid" value="${workschooldetails.workid }"><c:out value="${workschooldetails.date}"/></td>
              </tr>
              </table><br>
              <table>
              <tr>
              <td>
              This is to certify that&nbsp;&nbsp;&nbsp; <c:out value="${workschooldetails.letter}"/> is under my care.  In order to avoid aggravation of his/her condition, I recommend that he/she...

              
              </td>
              </tr>
              </table><br><br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60"><c:out value="${workschooldetails.beexcused}"/></td>
        	  <td width="150" >
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Be Excused From:
        	  </b>
        	  </td>
        	  <td>
        	  
        	<td>${workschooldetails.excused}</td>
        	  </td>
        	  </tr>
       		  </table><br>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60"><c:out value="${workschooldetails.beconfined}"/></td>
        	  <td width="150">
        	  <b>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Be Confined To:
        	  </b>
        	  </td>
        	  <td>
        	<td><c:if test="${workschooldetails.confined!='null'}"><c:out value="${workschooldetails.confined}"></c:out></c:if></td>
        	   
        	  </td>
        	  </tr>
       		  </table><br><br>
       		  <table>
       		  <tr>
       		  <td align="left">
       		  <p>
       		  <b>
       		  With the following restrictions:
       		  </b>
       		  </p>
       		  </td>
       		  </tr>
       		  </table>
       		  
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><c:out value="${workschooldetails.lifting}"/></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Maximum lifting capability:
        	  </b>
        	  </td>
        	  <td>
        	<td><c:choose>
	            <c:when test="${workschooldetails.lift=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${workschooldetails.lift}</c:otherwise>
	          
	            </c:choose>
        	</td>
        	   
        	  </td>
        	  </tr>
       		  </table>
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><c:out value="${workschooldetails.pushing}"/></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Low force pushing/pulling:  
        	  </b>
        	  </td>
        	
        	<td><c:if test="${workschooldetails.push!='null'}"><c:out value="${workschooldetails.push}"></c:out></c:if></td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><c:out value="${workschooldetails.drive}"/></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unable to drive long distances (MAX ONE HOUR)  
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><c:out value="${workschooldetails.sitting}"/></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sitting excessive periods of time:   
        	  </b>
        	  </td>
        	<td><c:if test="${workschooldetails.sit!='null'}"><c:out value="${workschooldetails.sit}"></c:out></c:if></td>
        	 
        	  
				         	
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><c:out value="${workschooldetails.standing}"/></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Standing excessive periods of time:   
        	  </b>
        	  </td>
        <td>	<c:if test="${workschooldetails.stand!='null'}"><c:out value="${workschooldetails.stand}"></c:out></c:if> </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><c:out value="${workschooldetails.bend}"/></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  No repetitive bending
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><c:out value="${workschooldetails.entry}"/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td >
        	  <b>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	 Use caution while entering/exiting vehicles
        	  </b>
        	  </td>
        	  </tr></table>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><c:out value="${workschooldetails.light}"/></td>
        	  <td >
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Light recreation only
        	  </b>
        	  </td>
        	  </tr></table><br>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>From(Date):</td>
              <td ><c:out value="${workschooldetails.froms}"/></td>
              <td height="25" width="120"><span class="err">*</span>To(Date):</td>
              <td ><c:out value="${workschooldetails.tos}"/></td>
              </tr>
              </table><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td ><c:out value="${workschooldetails.returns}"/></td>
        	  <td ><span class="err">*</span>Return to Regular Duty/School/P.E. on: (Date) </td>
        	  <td ><c:out value="${workschooldetails.returndate}"/></td>
        	  </tr></table><br>
        	
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Diagnosis:</td>
              <td ><c:out value="${workschooldetails.diagnosis}"/></td>
              </tr>
              </table><br>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr>
        	  <td><p><b>
        	  Please feel free to contact me at the above number if you have any questions.

Yours in Health,</b>
        	  </p>
        	  </td>
        	  </tr>
 </table>
 
<table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr>
 <td align="right"><b>Dr. Darrin A. Pordash</b></td>
 </tr>
 </table>
  <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="hardshiplist" style="color:white" class="submit_btn">Cancel</a></td>
              <td>&nbsp;&nbsp;</td>
        	  </tr>
        	  </table>
        	 
        	  </div>
        	  </div>
        	
        	  </td>
        	  </tr>
        	  </table>
        	  </c:forEach>
        	  </form>
        	  </div>
        	  </body>
        	  </html>
        	  <jsp:include page="footer.jsp"></jsp:include>