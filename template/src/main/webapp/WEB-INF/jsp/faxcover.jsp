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
</script>
</head>
 <body>
<div id="right_content">
<form action="insertfaxcover" method="POST">

<table cellpadding="0" cellspacing="0" border="0" height="100" width="50%" class="margin_table">
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
	             <h2>PERRY CHIROPRACTIC & THERAPY CENTER OF CANTON, INC.</h2> 
	            </div>
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Charles T. Yang, DC, DABFP</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>4933 West Tuscarawas Street </b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>Canton, Ohio 44708</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>(330) 477-3036 Phone</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>(330) 477-3037 Fax  </b></td>
              </tr>
              </table><br><br>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Today's Date:</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>TO:</td>
              <td ><input type="text" class="input_txtbx1" name="tos" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>FAX#:</td>
              <td ><input type="text" class="input_txtbx1" name="faxno" id="datepicker" /><span class="err"><form:errors path="Faxcover.faxno"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>FROM:</td>
              <td ><input type="text" class="input_txtbx1" name="froms" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>FAX:</td>
              <td> (330) 477-3037	</td>
       	</tr></table><br><br>
     <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="120">
     	<input type="radio" name="reply" value="URGENT" class="input_txt" checked="true">URGENT&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="FOR REVIEW" class="input_txt">FOR REVIEW&nbsp;&nbsp;&nbsp;
     	<input type="radio" name="reply" value="PLEASE COMMENT" class="input_txt" checked="true">PLEASE COMMENT&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="PLEASE REPLY" class="input_txt">PLEASE REPLY&nbsp;&nbsp;&nbsp;
     	</td>
     	</tr>
     	</table><br><br>
     	<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>RE:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              <td ><span class="err">*</span>Number Of Pages Sent:</td>
              <td ><input type="text" class="input_txtbx1" name="pages" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Message:</td>
              <td ><input type="text" class="input_txtbx1" name="msg" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
            <td ><span class="err">*</span>Claim No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="text" class="input_txtbx1" name="claimno" id="datepicker" /><span class="err"><form:errors path="Faxcover.claimno"></form:errors></td>
             <tr>
              <td height="25" width="120"><span class="err">*</span>DOI</td>
              <td ><input type="text" class="input_txtbx1" name="doi" id="datepicker1" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
             </tr>
              </tr>
              
              </table><br><br>
       	<table>
       	
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	IF WE DO NOT HEAR FROM YOU WITHIN 7 BUSINESS DAYS, WE WILL ASSUME	

	YOU WILL HONOR OUR ASSIGNMENT.
  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IF YOU HAVE ANY QUESTIONS OR CONCERNS, PLEASE FEEL FREE TO CONTACT	

	ME AT YOUR EARLIEST CONVENIENCE.
  </p>
       		 </td>
       		 </tr>
       		
       		 <tr><td>
       		 <p align="right"><b>
       		 THANK YOU		
       		 </b></p>
       		 </td></tr>
       		 </table>
       		  
        	  
            <div>
            <p align="justify">	*The information contained in this transmission is privileged and confidential.  It is intended only for the use of the individual or entity named above.  If the reader of this message is not the intended recipient, you are hereby notified that any dissemination, distribution, or copy of this communication is prohibited.  If you have received this communication in error, please notify me immediately. </p>	
            </div>
            
            <table><tr> <td><input type="submit" class="submit_btn" value="Save"></td>
               <td><a href="responseattorney"style="color:white" class="submit_btn">Cancel</a></td>
              </tr></table>
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
        	 