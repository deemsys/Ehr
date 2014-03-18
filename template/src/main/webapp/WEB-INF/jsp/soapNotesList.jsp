<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

   </head>
 <body>
 <br><br>
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
<td></td><td></td><td></td><td></td> <td></td>					                   
<td>patient: ${soapnotes.pname}</td>

</tr>
<tr class="row1">
<td>Chief Complaint:</td>
<td>  <c:choose>
	            <c:when test="${soapnotes.headache=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.headache}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.neckpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.neckpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightshoulderpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightshoulderpain}</c:otherwise>
	          
	            </c:choose></td>
<td><c:choose>
	            <c:when test="${soapnotes.leftshoulderpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftshoulderpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.chestpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.chestpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightarmpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightarmpain}</c:otherwise>
	          
	            </c:choose></td>
<td><c:choose>
	            <c:when test="${soapnotes.leftarmpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftarmpain}</c:otherwise>
	          
	            </c:choose> </td>
</tr>
<tr class="row1">
<td></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightelbowpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightelbowpain}</c:otherwise>
	          
	            </c:choose></td>
<td><c:choose>
	            <c:when test="${soapnotes.leftelbowpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftelbowpain}</c:otherwise>
	          
	            </c:choose></td>
<td><c:choose>
	            <c:when test="${soapnotes.rightwristpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightwristpain}</c:otherwise>
	          
	            </c:choose> </td>
<td> <c:choose>
	            <c:when test="${soapnotes.leftwristpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftwristpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.righthandpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.righthandpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.lefthandpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.lefthandpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.mbp=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.mbp}</c:otherwise>
	          
	            </c:choose></td>
</tr>
<tr class="row1">
<td></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightribpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightribpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.leftribpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftribpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.lbp=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.lbp}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightsipain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightsipain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.leftsipain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftsipain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.righthippain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.righthippain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.lefthippain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.lefthippain}</c:otherwise>
	          
	            </c:choose></td>
</tr>
<tr class="row1">
<td></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightgluteulpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightgluteulpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.leftgluteulpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftgluteulpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightlegpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightlegpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.leftlegpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftlegpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightkneepain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightkneepain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.leftkneepain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftkneepain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightanklepain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightanklepain}</c:otherwise>
	          
	            </c:choose></td>
</tr>
<tr class="row1">
<td></td>
<td> <c:choose>
	            <c:when test="${soapnotes.leftanklepain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftanklepain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.rightfootpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.rightfootpain}</c:otherwise>
	          
	            </c:choose></td>
<td> <c:choose>
	            <c:when test="${soapnotes.leftfootpain=='null'}"><c:out value=""></c:out></c:when>
	            <c:otherwise> ${soapnotes.leftfootpain}</c:otherwise>
	          
	            </c:choose></td>
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
 <td> &nbsp;&nbsp;${soapnotes.date1}</td>
 <td></td>
 <td></td>
 <td>Diagnosis: &nbsp;&nbsp;${soapnotes.diagnosis1}<br/><br/>
 &nbsp;&nbsp;${soapnotes.diagnosis2}<br/><br/>
 &nbsp;&nbsp;${soapnotes.diagnosis3}<br/><br/>
 &nbsp;&nbsp;${soapnotes.diagnosis4}<br/><br/></td>
 <td>E1E2 X rays:${soapnotes.e1e2}</td>
 </tr>
 <tr>
 <td>&nbsp;&nbsp;${soapnotes.date2}</td>
 <td>Improved:&nbsp;&nbsp;${soapnotes.improved1}<br/>
  Worsened:&nbsp;&nbsp;${soapnotes.worsened1}</td>
 <td>&nbsp;&nbsp;${soapnotes.fixation1}</td>
  <td>&nbsp;&nbsp;${soapnotes.notimproved1}</td>
  <td>&nbsp;&nbsp;${soapnotes.scsm1}</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;${soapnotes.date3}</td>
 <td>Improved:&nbsp;&nbsp;${soapnotes.improved2}<br/>
 Worsened:&nbsp;&nbsp;${soapnotes.worsened2}</td>
 <td>&nbsp;&nbsp;${soapnotes.fixation2}</td>
  <td>&nbsp;&nbsp;${soapnotes.notimproved2}</td>
  <td>&nbsp;&nbsp;${soapnotes.scsm2}</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;${soapnotes.date4}</td>
 <td>Improved:&nbsp;&nbsp;${soapnotes.improved3}<br/>
 Worsened:&nbsp;&nbsp;${soapnotes.worsened3}
</td>
 <td>&nbsp;&nbsp;${soapnotes.fixation3}</td>
  <td>&nbsp;&nbsp;${soapnotes.notimproved3}</td>
  <td>&nbsp;&nbsp;${soapnotes.scsm3}</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;${soapnotes.date5}</td>
 <td>Improved:&nbsp;&nbsp;${soapnotes.improved4}<br/>
 Worsened:&nbsp;&nbsp;${soapnotes.worsened4}</td>
 <td>&nbsp;&nbsp;${soapnotes.fixation4}</td>
  <td>&nbsp;&nbsp;${soapnotes.notimproved4}</td>
  <td>&nbsp;&nbsp;${soapnotes.scsm4}</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;${soapnotes.date6}</td>
 <td>Improved:&nbsp;&nbsp;${soapnotes.improved5}<br/>
 Worsened:&nbsp;&nbsp;${soapnotes.worsened5}</td>
 <td>&nbsp;&nbsp;${soapnotes.fixation5}</td>
  <td>&nbsp;&nbsp;${soapnotes.notimproved5}</td>
  <td>&nbsp;&nbsp;${soapnotes.scsm5}</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;${soapnotes.date7}</td>
 <td>Improved:&nbsp;&nbsp;${soapnotes.improved6}<br/>
 Worsened:&nbsp;&nbsp;${soapnotes.worsened6}</td>
 <td>&nbsp;&nbsp;${soapnotes.fixation6}</td>
  <td>&nbsp;&nbsp;${soapnotes.notimproved6}</td>
  <td>&nbsp;&nbsp;${soapnotes.scsm6}</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;${soapnotes.date8}</td>
 <td>Improved:&nbsp;&nbsp;${soapnotes.improved7}<br/>
 Worsened:&nbsp;&nbsp;${soapnotes.worsened7}</td>
 <td>&nbsp;&nbsp;${soapnotes.fixation7}</td>
  <td>&nbsp;&nbsp;${soapnotes.notimproved7}</td>
  <td>&nbsp;&nbsp;${soapnotes.scsm7}</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;${soapnotes.date9}</td>
 <td>Improved:&nbsp;&nbsp;${soapnotes.improved8}<br/>
 Worsened:&nbsp;&nbsp;${soapnotes.worsened8}</td>
 <td>&nbsp;&nbsp;${soapnotes.fixation8}</td>
  <td>&nbsp;&nbsp;${soapnotes.notimproved8}</td>
  <td>&nbsp;&nbsp;${soapnotes.scsm8}</td>
  </tr>
</c:forEach>


</div>
</div>
</td>
</tr>
</table>
</form>
</div>
<table align="right">
<tr>
<td>
<input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='viewsoapnotes'">
</td></tr>
</table>
</body>
</html>