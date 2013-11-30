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
<td></td><td></td><td></td><td></td> <td></td>					                   
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
<tr class="row1">
<td></td>
<td> ${soapnotes.rightelbowpain}</td>
<td> ${soapnotes.leftelbowpain}</td>
<td> ${soapnotes.rightwristpain}</td>
<td> ${soapnotes.leftwristpain}</td>
<td> ${soapnotes.righthandpain}</td>
<td> ${soapnotes.lefthandpain}</td>
<td> ${soapnotes.mbp}</td>
</tr>
<tr class="row1">
<td></td>
<td> ${soapnotes.rightribpain}</td>
<td> ${soapnotes.leftribpain}</td>
<td> ${soapnotes.lbp}</td>
<td> ${soapnotes.rightsipain}</td>
<td> ${soapnotes.leftsipain}</td>
<td> ${soapnotes.righthippain}</td>
<td> ${soapnotes.lefthippain}</td>
</tr>
<tr class="row1">
<td></td>
<td> ${soapnotes.rightgluteulpain}</td>
<td> ${soapnotes.leftgluteulpain}</td>
<td> ${soapnotes.rightlegpain}</td>
<td> ${soapnotes.leftlegpain}</td>
<td> ${soapnotes.rightkneepain}</td>
<td> ${soapnotes.leftkneepain}</td>
<td> ${soapnotes.rightanklepain}</td>
</tr>
<tr class="row1">
<td></td>
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