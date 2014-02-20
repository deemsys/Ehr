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
<form action="insertletterofprotection" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
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
              <td ><b>(330) 477-3037 Fax  </b></td></tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="center">  <h2>Letter Of Protection-Drafted For Patient's Attorney</h2> </td>
              </tr>
 </table><br><br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="180"><span class="err">*</span>Date</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
               <br><br><br>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="180"><span class="err">*</span>IN RE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Client:</td>
               <td ><input type="text" class="input_txtbx1" name="myclient" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25"  width="180"><span class="err"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date Of Accident:</td>
               <td ><input type="text" class="input_txtbx1" name="dateofaccident" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
             </table><br><br><br><br>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="70"><span class="err"></span>Dear Dr</td>
              <td  height="20" ><input type="text" class="input_txtbx1" name="dear" id="address" /><span class="err"><form:errors path="noticeofassignment.address"></form:errors>
           </span></td></tr>	
             </table>
            
             <table>
             <tr><td><br><br><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	It is my understanding that my above-named client has an outstanding balance with your above clinic for treatment rendered as a result of this accident.
             
             </p>
             </td></tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please let this letter serve as my professional representation that I will pay your clinic's outstanding treatment fee out of and only to the extent of any settlement of judgment proceeds, after deduction of our firm's fees and costs advanced.  
             
             </p>
             </td>
             </tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If my client objects to any such payment over to your clinic, in whole or in part, I will hold any disputed amount in our firm's trust account until resolution. </p>
             </td>
             </tr>
             </table>
             <table>
             <tr><td width="450"></td>
             <td ><p><h1> <b>Very truly yours,</b></h1><p></td></tr>
             <tr><td width="450"></td>
            <td ><input type="text" class="input_txtbx1" name="truly" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td></tr>
            <tr><td width="450"></td><td ><p><h1> <b>	Attorney for above client</b></h1><p></td></tr>
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