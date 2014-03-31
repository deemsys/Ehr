<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
  $(function() {
           $( "#datepicker1" ).datepicker();
         });
  $(function() {
      $( "#datepicker2" ).datepicker();
    });
</script>
</head>
 <body>
<div id="right_content">
<form action="insertxray" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
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
	             
	             <c:choose>
<c:when test="${empty xray}">
	            <div class="contentbox">
	                
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road </b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>The Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village, OH 44035</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>Tax Identification Number 34-1931730  </b></td></tr>
               <tr ><td width="260"></td>
              <td ><b>Phone (440) 934-3099 Fax (440) 934-3107</b></td></tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="center"><u>  <h2>X-Ray Release Form</h2></u> </td>
              </tr>
 </table><br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr><td>
 <span class="err">*</span>I <input type="text" class="input_txtbx1" name="name" id="name"><span class="err"><form:errors path="Xray.name"></form:errors></span> do hereby agree to return X-rays that I have borrowed from the Chiropractic Therapy Center, I understand that I have fourteen (14) days to do so.I fully agree that in the event that I do not return X-rays, I will be billed $50.00.  	  
       </td></tr></table><br><br>
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err"></span>Date Borrowed</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err"><form:errors path="Xray.date"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err"></span>Date Due</td>
              <td ><input type="text" class="input_txtbx1" name="date1" id="datepicker1" /><span class="err"><form:errors path="Xray.date1"></form:errors></td>
              </tr>
              </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err">*</span>Date </td>
              <td width="70"><input type="text" class="input_txtbx1" name="date2" id="datepicker2" /><span class="err"><form:errors path="Xray.date2"></form:errors></td>
              <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Signature:</td>
             <td width="50"> <input type="text" class="input_txtbx1" name="sign" id="" /><span class="err"><form:errors path="Xray.sign"></form:errors></td>
              
              </tr>
              </table><br><br>
              </c:when>
              <c:otherwise>
                <div class="contentbox">
	                
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road </b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>The Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village, OH 44035</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>Tax Identification Number 34-1931730  </b></td></tr>
               <tr ><td width="260"></td>
              <td ><b>Phone (440) 934-3099 Fax (440) 934-3107</b></td></tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="center"><u>  <h2>X-Ray Release Form</h2></u> </td>
              </tr>
 </table><br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr><td><span class="err">*</span>
 I<input type="hidden" name="xrayid" value="${xray.xrayid }"> <input type="text" class="input_txtbx1" name="name" id="name" value="${xray.name}"><span class="err"><form:errors path="Xray.name"></form:errors></span> do hereby agree to return X-rays that I have borrowed from the Chiropractic Therapy Center, I understand that I have fourteen (14) days to do so.I fully agree that in the event that I do not return X-rays, I will be billed $50.00.  	  
       </td></tr></table><br><br>
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err"></span>Date Borrowed</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker"  value="${xray.date}"/><span class="err"><form:errors path="Xray.date"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err"></span>Date Due</td>
              <td ><input type="text" class="input_txtbx1" name="date1" id="datepicker1"  value="${xray.date1}"/><span class="err"><form:errors path="Xray.date1"></form:errors></td>
              </tr>
              </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="100"><span class="err">*</span>Date </td>
              <td width="70"><input type="text" class="input_txtbx1" name="date2" id="datepicker2"  value="${xray.date2}"/><span class="err"><form:errors path="Xray.date2"></form:errors></td>
              <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Signature:</td>
             <td width="50"> <input type="text" class="input_txtbx1" name="sign" id=""  value="${xray.sign}"/><span class="err"><form:errors path="Xray.sign"></form:errors></td>
              
              </tr>
              </table><br><br>
              
              
              </c:otherwise>
              </c:choose>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="viewxray" style="color:white" class="submit_btn">Cancel</a></td>
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