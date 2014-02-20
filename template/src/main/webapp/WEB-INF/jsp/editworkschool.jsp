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
<form action="updateworkschool" method="POST">
<c:set value="${workschoolform.workschooldetails[0]}" var="workschooldetails"> </c:set>
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
              <td ><input type="hidden" name="workid" value="${workschooldetails.workid }"><input type="text" class="input_txtbx1" name="date"  value="${workschooldetails.date }"  id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table><br>
              <table>
              <tr>
              <td>
              This is to certify that&nbsp;&nbsp;&nbsp; <input type="text" class="input_txtbx1" name="letter" value="${workschooldetails.letter }"  id="datepicker" /><form:errors path="Hardshipagreement.date"></form:errors> is under my care.  In order to avoid aggravation of his/her condition, I recommend that he/she...

              
              </td>
              </tr>
              </table><br><br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60"><input type="text" class="input_txtbx1" name="beexcused" value="${workschooldetails.beexcused }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="150" >
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Be Excused From:
        	  </b>
        	  </td>
        	  <td>
        	&nbsp;&nbsp;&nbsp;&nbsp;  <input type="radio" name="excused" value="work" <c:if test="${workschooldetails.excused=='work'}"><c:out value="checked=checked"/></c:if>>WORK&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="excused" value="school"<c:if test="${workschooldetails.excused=='school'}"><c:out value="checked=checked"/></c:if>>SCHOOL&nbsp;&nbsp;&nbsp;	
        	    <input type="radio" name="excused" value="P.E" <c:if test="${workschooldetails.excused=='P.E'}"><c:out value="checked=checked"/></c:if>>P.E&nbsp;&nbsp;&nbsp;
        	  </td>
        	  </tr>
       		  </table><br>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60"><input type="text" class="input_txtbx1" name="beconfined" value="${workschooldetails.beconfined }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="150">
        	  <b>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Be Confined To:
        	  </b>
        	  </td>
        	  <td>
        	&nbsp;&nbsp;&nbsp;&nbsp;  <input type="radio" name="confined" value="lightduty"<c:if test="${workschooldetails.confined=='lightduty'}"><c:out value="checked=checked"/></c:if>>LIGHT DUTY&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="confined" value="modifiedduty"<c:if test="${workschooldetails.confined=='modifiedduty'}"><c:out value="checked=checked"/></c:if>>MODIFIED DUTY&nbsp;&nbsp;&nbsp;	
        	   
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
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="lifting" value="${workschooldetails.lifting }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Maximum lifting capability:
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="lift" value="10lbs"<c:if test="${workschooldetails.lift=='10lbs'}"><c:out value="checked=checked"/></c:if>>10LBS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="lift" value="20lbs"<c:if test="${workschooldetails.lift=='20lbs'}"><c:out value="checked=checked"/></c:if>>20LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="30lbs"<c:if test="${workschooldetails.lift=='30lbs'}"><c:out value="checked=checked"/></c:if>>30LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="40lbs"<c:if test="${workschooldetails.lift=='40lbs'}"><c:out value="checked=checked"/></c:if>>40LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="50lbs"<c:if test="${workschooldetails.lift=='50lbs'}"><c:out value="checked=checked"/></c:if>>50LBS&nbsp;&nbsp;&nbsp;
        	   
        	  </td>
        	  </tr>
       		  </table>
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="pushing" value="${workschooldetails.pushing }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Low force pushing/pulling:  
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="push" value="10lbs"<c:if test="${workschooldetails.push=='10lbs'}"><c:out value="checked=checked"/></c:if>>10LBS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="push" value="20lbs"<c:if test="${workschooldetails.push=='20lbs'}"><c:out value="checked=checked"/></c:if>>20LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="30lbs"<c:if test="${workschooldetails.push=='30lbs'}"><c:out value="checked=checked"/></c:if>>30LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="40lbs"<c:if test="${workschooldetails.push=='40lbs'}"><c:out value="checked=checked"/></c:if>>40LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="50lbs"<c:if test="${workschooldetails.push=='50lbs'}"><c:out value="checked=checked"/></c:if>>50LBS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="drive" value="${workschooldetails.drive }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unable to drive long distances (MAX ONE HOUR)  
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="sitting" value="${workschooldetails.sitting }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sitting excessive periods of time:   
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="sit" value="1hrs"<c:if test="${workschooldetails.sit=='1hrs'}"><c:out value="checked=checked"/></c:if>>1HRS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="sit" value="2hrs"<c:if test="${workschooldetails.sit=='2hrs'}"><c:out value="checked=checked"/></c:if>>2HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="3hrs"<c:if test="${workschooldetails.sit=='3hrs'}"><c:out value="checked=checked"/></c:if>>3HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="4hrs"<c:if test="${workschooldetails.sit=='4hrs'}"><c:out value="checked=checked"/></c:if>>4HRS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="5hrs"<c:if test="${workschooldetails.sit=='5hrs'}"><c:out value="checked=checked"/></c:if>>5HRS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="standing" value="${workschooldetails.standing }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Standing excessive periods of time:   
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="stand" value="1hrs"<c:if test="${workschooldetails.stand=='1hrs'}"><c:out value="checked=checked"/></c:if>>1HRS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="stand" value="2hrs"<c:if test="${workschooldetails.stand=='2hrs'}"><c:out value="checked=checked"/></c:if>>2HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="3hrs"<c:if test="${workschooldetails.stand=='3hrs'}"><c:out value="checked=checked"/></c:if>>3HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="4hrs"<c:if test="${workschooldetails.stand=='4hrs'}"><c:out value="checked=checked"/></c:if>>4HRS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="5hrs"<c:if test="${workschooldetails.stand=='5hrs'}"><c:out value="checked=checked"/></c:if>>5HRS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="bend" value="${workschooldetails.bend }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  No repetitive bending
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="entry" value="${workschooldetails.entry }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td >
        	  <b>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	 Use caution while entering/exiting vehicles
        	  </b>
        	  </td>
        	  </tr></table>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="light" value="${workschooldetails.light }" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td >
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Light recreation only
        	  </b>
        	  </td>
        	  </tr></table><br>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>From(Date):</td>
              <td ><input type="text" class="input_txtbx1" name="froms" value="${workschooldetails.froms }" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              <td height="25" width="120"><span class="err">*</span>To(Date):</td>
              <td ><input type="text" class="input_txtbx1" name="tos" value="${workschooldetails.tos }" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td ><input type="text" class="input_txtbx1" name="returns" value="${workschooldetails.returns }" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td ><span class="err">*</span>Return to Regular Duty/School/P.E. on: (Date) </td>
        	  <td ><input type="text" class="input_txtbx1" name="returndate" value="${workschooldetails.returndate }" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  </tr></table><br>
        	
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Diagnosis:</td>
              <td ><input type="text" class="input_txtbx1" name="Diagnosis" value="${workschooldetails.diagnosis }" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
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
        	  </form>
        	  </div>
        	  </body>
        	  </html>
        	  <jsp:include page="footer.jsp"></jsp:include>