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
	             <h2>Letter Of Protection-Drafted For Patient's Attorney</h2> 
	            </div>
	            
	              <c:choose>
<c:when test="${empty letter}">
	            <div class="contentbox">
	                    
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="375"></td>
              <td><span class="err">*</span>Date</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err"><form:errors path="Letterofprotection.date"></form:errors></td>
              </tr>
              </table>
               <br><br><br>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err">*</span>D.C:</td>
               <td ><input type="text" class="input_txtbx1" name="dc" id="dcr" /><span class="err"><form:errors path="Letterofprotection.dc"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25" width="160"><span class="err">*</span>Clinic Name:</td>
               <td ><input type="text" class="input_txtbx1" name="clinicname" id="clinicname" /><span class="err"><form:errors path="Letterofprotection.clinicname"></form:errors></td>
             
              </tr>
             </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="160"><span class="err"></span>Address:</td>
              <td><textarea rows="4" cols="28" name="address1" style="width: 170px; height: 62px"></textarea><span class="err"><form:errors path="Letterofprotection.address1"></form:errors></span>
            </td></tr>
              </table>
             
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err"></span>IN RE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Client:</td>
               <td ><input type="text" class="input_txtbx1" name="myclient" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25"  width="160"><span class="err">*</span>Date of Accident</td>
               <td ><input type="text" class="input_txtbx1" name="dateofaccident" id="datepicker1" /><span class="err"><form:errors path="Letterofprotection.dateofaccident"></form:errors></td>
             
              </tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="70"><span class="err">*</span>Dear Dr</td>
              <td  height="20" ><input type="text" class="input_txtbx1" name="dearsir" id="dearsir" /><span class="err"><form:errors path="Letterofprotection.dearsir"></form:errors>
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
            <td ><span class="err">*</span><input type="text" class="input_txtbx1" name="esq" id="esq" /><span class="err"><form:errors path="Letterofprotection.esq"></form:errors></td></tr>
            <tr><td width="450"></td><td ><p><h1> <b>	Attorney for above client</b></h1><p></td></tr>
             </table>
             </c:when>
             <c:otherwise>
               <div class="contentbox">
	                
            
          
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="375"></td>
              <td><span class="err">*</span>Date</td>
              <td ><input type="hidden" name="letterid" value="${letter.letterid }"><input type="text" class="input_txtbx1" name="date" value="${letter.date }" id="datepicker" /><span class="err"><form:errors path="Letterofprotection.date"></form:errors></td>
              </tr>
              </table>
               <br><br><br>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err">*</span>D.C:</td>
               <td ><input type="text" class="input_txtbx1" name="dc" value="${letter.dc}" id="dcr" /><span class="err"><form:errors path="Letterofprotection.dc"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25" width="160"><span class="err">*</span>Clinic Name:</td>
               <td ><input type="text" class="input_txtbx1" name="clinicname" value="${letter.clinicname}" id="clinicname" /><span class="err"><form:errors path="Letterofprotection.clinicname"></form:errors></td>
             
              </tr>
             </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="160"><span class="err"></span>Address:</td>
              <td><textarea rows="4" cols="28" name="address1">${letter.address1}</textarea><span class="err"><form:errors path="Letterofprotection.address1"></form:errors></span>
            </td></tr>
              </table>
             
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err"></span>IN RE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Client:</td>
               <td ><input type="text" class="input_txtbx1" name="myclient" value="${letter.myclient}" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25"  width="160"><span class="err">*</span>Date Of Accident:</td>
               <td ><input type="text" class="input_txtbx1" name="dateofaccident" value="${letter.dateofaccident}"  id="datepicker1" /><span class="err"><form:errors path="Letterofprotection.dateofaccident"></form:errors></td>
             
              </tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="70"><span class="err">*</span>Dear Dr</td>
              <td  height="20" ><input type="text" class="input_txtbx1" name="dearsir" value="${letter.dearsir}"  id="dearsir" /><span class="err"><form:errors path="Letterofprotection.dearsir"></form:errors>
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
            <td ><span class="err">*</span><input type="text" class="input_txtbx1" name="esq" value="${letter.esq}"    id="esq" /><span class="err"><form:errors path="Letterofprotection.esq"></form:errors></td></tr>
            <tr><td width="450"></td><td ><p><h1> <b>	Attorney for above client</b></h1><p></td></tr>
             </table>
             </c:otherwise>
             </c:choose>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="viewletterofprotection" style="color:white" class="submit_btn">Cancel</a></td>
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