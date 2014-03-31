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




<script>
 $(window).load(function(){
	 	  $("#faxno").keyup(function() {
			
			 $("#faxerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			/*var intRegex = /^\d+$/;*/
			var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
			if(a.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#faxerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		
		</script>
<script>
i=0;
$(document).ready(function(){
  $("#faxno").keypress(function(){
var phone=document.getElementById("faxno").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("faxno").value=phone;
 });  

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
	              <c:choose>
<c:when test="${empty fax}">
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
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err"><form:errors path="Faxcover.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>To:</td>
              <td ><input type="text" class="input_txtbx1" name="tos" id="datepicker" /><span class="err"><form:errors path="Faxcover.tos"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Fax#:</td>
              <td ><input type="text" class="input_txtbx1" name="faxno" id="faxno" maxlength=11/><span class="err"><form:errors path="Faxcover.faxno"></form:errors>
              </span><span class="err" id="faxerror"></span>
              </td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>From:</td>
              <td ><input type="text" class="input_txtbx1" name="froms" id="datepicker" /><span class="err"><form:errors path="Faxcover.froms"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Fax:</td>
              <td> (330) 477-3037	</td>
       	</tr></table><br><br>
     <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="120">
     	<input type="radio" name="reply" value="URGENT" class="input_txt" checked="true">Urgent&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="FOR REVIEW" class="input_txt">For Review&nbsp;&nbsp;
     	<input type="radio" name="reply" value="PLEASE COMMENT" class="input_txt" checked="true">Please Comment&nbsp;&nbsp;<input type="radio" name="reply" value="PLEASE REPLY" class="input_txt">Please Reply&nbsp;&nbsp;
     	</td>
     	</tr>
     	</table><br><br>
     	<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>RE:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" id="datepicker" /><span class="err"><form:errors path="Faxcover.regarding"></form:errors></td>
              <td ><span class="err"></span>Number Of Pages Sent:</td>
              <td ><input type="text" class="input_txtbx1" name="pages" id="datepicker" /><span class="err"><form:errors path="Faxcover.pages"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Message:</td>
              <td ><input type="text" class="input_txtbx1" name="msg" id="datepicker" /><span class="err"><form:errors path="Faxcover.msg"></form:errors></td>
            <td ><span class="err">*</span>Claim No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="text" class="input_txtbx1" name="claimno" id="claimno" /><span class="err"><form:errors path="Faxcover.claimno"></form:errors>
              </span><span class="err" id="number"></span></td>
             <tr>
              <td height="25" width="120"><span class="err">*</span>DOI</td>
              <td ><input type="text" class="input_txtbx1" name="doi" id="datepicker1" /><span class="err"><form:errors path="Faxcover.doi"></form:errors></td>
             </tr>
              </tr>
              
              </table><br><br>
       	<table>
       	<tr>
       	<td>
       	<p>
       	<h2>
     If we donot hear from you within 7 business days, We will assume you will honour our assignment.</h2></p>
  <p><h2>If you have any questions or concerns,please feel free to contact.</h2> </p>	


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
            </c:when>
            <c:otherwise>
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
              <td ><td><input type="hidden" name="faxid" value="${fax.faxid }"><input type="text" class="input_txtbx1" name="date" value="${fax.date }" id="datepicker" /><span class="err"><form:errors path="Faxcover.date"></form:errors></td>
             </td> </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>TO:</td>
              <td ><input type="text" class="input_txtbx1" name="tos" value="${fax.tos }" id="datepicker" /><span class="err"><form:errors path="Faxcover.tos"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">
             </span>FAX#:</td>
              <td ><input type="text" class="input_txtbx1" name="faxno" value="${fax.faxno }" id="faxno" maxlength=11/><span class="err"><form:errors path="Faxcover.faxno"></form:errors>
              </span><span class="err" id="faxerror"></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>FROM:</td>
              <td ><input type="text" class="input_txtbx1" name="froms" value="${fax.froms }" id="datepicker" /><span class="err"><form:errors path="Faxcover.froms"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>FAX:</td>
              <td> (330) 477-3037	</td>
       	</tr></table><br><br>
     <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="120">
     	<input type="radio" name="reply" value="URGENT" class="input_txt" <c:if test="${fax.reply=='URGENT'}"><c:out value="checked=checked"/></c:if> checked="true">URGENT&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="FOR REVIEW"<c:if test="${fax.reply=='FOR REVIEW'}"><c:out value="checked=checked"/></c:if> class="input_txt">FOR REVIEW&nbsp;&nbsp;&nbsp;
     	<input type="radio" name="reply" value="PLEASE COMMENT" class="input_txt" <c:if test="${fax.reply=='PLEASE COMMENT'}"><c:out value="checked=checked"/></c:if> >PLEASE COMMENT&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="PLEASE REPLY" <c:if test="${fax.reply=='PLEASE REPLY'}"><c:out value="checked=checked"/></c:if> class="input_txt">PLEASE REPLY&nbsp;&nbsp;&nbsp;
     	</td>
     	</tr>
     	</table><br><br>
     	<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>RE:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" value="${fax.regarding }" id="datepicker" /><span class="err"><form:errors path="Faxcover.regarding"></form:errors></td>
              <td ><span class="err"></span>Number Of Pages Sent:</td>
              <td ><input type="text" class="input_txtbx1" name="pages" value="${fax.pages }" id="datepicker" /><span class="err"><form:errors path="Faxcover.pages"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Message:</td>
              <td ><input type="text" class="input_txtbx1" name="msg" value="${fax.msg }" id="datepicker" /><span class="err"><form:errors path="Faxcover.msg"></form:errors></td>
            <td ><span class="err">*</span>Claim No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="text" class="input_txtbx1" name="claimno"value="${fax.claimno }" id="claimno" /><span class="err"><form:errors path="Faxcover.claimno"></form:errors>
              </span><span class="err" id="number"></span></td>
             <tr>
              <td height="25" width="120"><span class="err">*</span>DOI</td>
              <td ><input type="text" class="input_txtbx1" name="doi" value="${fax.doi }" id="datepicker1" /><span class="err"><form:errors path="Faxcover.doi"></form:errors></td>
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
            </c:otherwise>
            </c:choose>
            <table><tr> <td><input type="submit" class="submit_btn" value="Save"></td>
               <td><a href="viewfaxcover"style="color:white" class="submit_btn">Cancel</a></td>
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
        	 