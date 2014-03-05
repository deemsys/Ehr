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
<form action="insertformbill" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr><td width="150"></td>
        <td valign="top" align="center">
        	<div>
        	          <c:set value="${formbillform.formbilldetails[0]}" var="formbilldetails"> </c:set>
	            <div class="headings altheading">
	             <h2>FORM BILL</h2> 
	            </div>
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="30" >
              <td ><b>CERTIFIED MAIL</b></td>
              </tr>
              <tr height="30">
              <td ><b>Return Receipt Requested</b></td>
              </tr>
               
              </table><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="400"></td>
              <td height="25" width="50"><span class="err"></span>Date:</td>
              <td ><input type="hidden" name="formid" value="${formbilldetails.formid }"><input type="text" class="input_txtbx1" name="date" id="datepicker"  value="${formbilldetails.date }" /><span class="err"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table><br>
            
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err"></span>Insurance Company:</td>
              <td ><input type="text" class="input_txtbx1" name="insurance" id="insurance" value="${formbilldetails.insurance }" /><span class="err"><form:errors path="Formbill.insurance"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><input type="text" class="input_txtbx1" name="address1" id="address1" value="${formbilldetails.address1}"/><span class="err"><form:errors path="Formbill.address1"></form:errors></span></td>
             </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span></td>
              <td ><input type="text" class="input_txtbx1" name="address2" id="address2" value="${formbilldetails.address2}"/><span class="err"><form:errors path="Formbill.address2"></form:errors></span></td>
             </tr>
              </table>
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr ><br>
             <td height="25" width="120"><span class="err"></span>Name Of Attorney:</td>
              <td ><input type="text" class="input_txtbx1" name="name" id="name" value="${formbilldetails.name}"/><span class="err"><form:errors path="Formbill.name"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><input type="text" class="input_txtbx1" name="address3" id="address3" value="${formbilldetails.address3}"/><span class="err"><form:errors path="Formbill.address3"></form:errors></span></td>
             </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span></td>
              <td ><input type="text" class="input_txtbx1" name="address4" id="address4" value="${formbilldetails.address4}"/><span class="err"><form:errors path="Formbill.address4"></form:errors></span></td>
             </tr>
              </table><br>
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err"></span>Patient Name</td>
              <td ><input type="text" class="input_txtbx1" name="patientsname" id="patientsname" value="${formbilldetails.patientsname}"/><span class="err"><form:errors path="Formbill.patientsname"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><input type="text" class="input_txtbx1" name="address5" id="address5" value="${formbilldetails.address5}"/><span class="err"><form:errors path="Formbill.address5"></form:errors></span></td>
             </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span></td>
              <td ><input type="text" class="input_txtbx1" name="address6" id="address6" value="${formbilldetails.address6}"/><span class="err"><form:errors path="Formbill.address6"></form:errors></span></td>
             </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"><b><h4>RE:</b>&nbsp;&nbsp;&nbsp;&nbsp; Notice of Final Outstanding Amount Owed;Medical Fees of $ <input type="text" class="input_txtbx1" name="medicalfee" id="medicalfee" value="${formbilldetails.medicalfee}">
	<span class="err"><form:errors path="Formbill.medicalfee"></form:errors></span>
				  <span class="err"></span></h4></p></td>
        	  <td>
        	  </td>
        	  </tr>
       		  </table>
       		 <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"> <b>Notice is made of final outstanding amounts owed for medical fees rendered by the above of $ <input type="text" class="input_txtbx1" name="amount" id="amount" value="${formbilldetails.amount}">
	<span class="err"><form:errors path="Formbill.amount"></form:errors></span>
				  <span class="err"><div id="number"></span></b></p></td>
        	  <td>
        	  </td>
        	  </tr>        	 
       		  </table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td>
       		<b>Notice has been previously provided to you of a Treatment Fee Agreement and Instructions to Attorney and an assignment of coverage proceeds.</b>
       		</td>
       		</tr>
       		</table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td><br>	
	<p align="right"><b>Very truly yours,</b>
	</p>
	
<p align="right">Perry Chiropractic & Therapy Center of Canton, Inc
	</p>

<p align="right">&Dr. Charles T. Yang D.C.
	</p>
	
<br>				</td></tr></table>
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