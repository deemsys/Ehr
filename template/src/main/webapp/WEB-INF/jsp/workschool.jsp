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
<form action="insertworkschool" method="POST">

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
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table><br>
              <table>
              <tr>
              <td>
              This is to certify that&nbsp;&nbsp;&nbsp; <input type="text" class="input_txtbx1" name="letter" id="datepicker" /><form:errors path="Hardshipagreement.date"></form:errors> is under my care.  In order to avoid aggravation of his/her condition, I recommend that he/she...

              
              </td>
              </tr>
              </table><br><br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60"><input type="text" class="input_txtbx1" name="beexcused" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="150" >
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Be Excused From:
        	  </b>
        	  </td>
        	  <td>
        	&nbsp;&nbsp;&nbsp;&nbsp;  <input type="radio" name="excused" value="work">WORK&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="excused" value="school">SCHOOL&nbsp;&nbsp;&nbsp;	
        	    <input type="radio" name="excused" value="P.E">P.E&nbsp;&nbsp;&nbsp;
        	  </td>
        	  </tr>
       		  </table><br>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td width="60"><input type="text" class="input_txtbx1" name="beconfined" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="150">
        	  <b>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Be Confined To:
        	  </b>
        	  </td>
        	  <td>
        	&nbsp;&nbsp;&nbsp;&nbsp;  <input type="radio" name="confined" value="lightduty">LIGHT DUTY&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="confined" value="modifiedduty">MODIFIED DUTY&nbsp;&nbsp;&nbsp;	
        	   
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
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="lifting" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Maximum lifting capability:
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="lift" value="10lbs">10LBS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="lift" value="20lbs">20LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="30lbs">30LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="40lbs">40LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="lift" value="50lbs">50LBS&nbsp;&nbsp;&nbsp;
        	   
        	  </td>
        	  </tr>
       		  </table>
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="pushing" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Low force pushing/pulling:  
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="push" value="10lbs">10LBS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="push" value="20lbs">20LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="30lbs">30LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="40lbs">40LBS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="push" value="50lbs">50LBS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="drive" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unable to drive long distances (MAX ONE HOUR)  
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="sitting" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sitting excessive periods of time:   
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="sit" value="1hrs">1HRS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="sit" value="2hrs">2HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="3hrs">3HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="4hrs">4HRS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="sit" value="5hrs">5HRS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="standing" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td width="250">
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Standing excessive periods of time:   
        	  </b>
        	  </td>
        	  <td>
        	  <input type="radio" name="stand" value="1hrs">1HRS&nbsp;&nbsp;&nbsp;
        	  <input type="radio" name="stand" value="2hrs">2HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="3hrs">3HRSS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="4hrs">4HRS&nbsp;&nbsp;&nbsp;
        	   <input type="radio" name="stand" value="5hrs">5HRS&nbsp;&nbsp;&nbsp;
        	   </td>
        	  </tr>
       		  </table>
       		   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="bend" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td>
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  No repetitive bending
        	  </b>
        	  </td>
        	  </tr></table>
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="entry" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td >
        	  <b>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	 Use caution while entering/exiting vehicles
        	  </b>
        	  </td>
        	  </tr></table>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td width="60"><input type="text" class="input_txtbx1" name="light" id="datepicker" style="width: 126px; "/><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td >
        	  <b>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Light recreation only
        	  </b>
        	  </td>
        	  </tr></table><br>
        	   <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>From(Date):</td>
              <td ><input type="text" class="input_txtbx1" name="froms" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              <td height="25" width="120"><span class="err">*</span>To(Date):</td>
              <td ><input type="text" class="input_txtbx1" name="tos" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td ><input type="text" class="input_txtbx1" name="returns" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  <td ><span class="err">*</span>Return to Regular Duty/School/P.E. on: (Date) </td>
        	  <td ><input type="text" class="input_txtbx1" name="returndate" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
        	  </tr></table><br>
        	
        	  <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Diagnosis:</td>
              <td ><input type="text" class="input_txtbx1" name="Diagnosis" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
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