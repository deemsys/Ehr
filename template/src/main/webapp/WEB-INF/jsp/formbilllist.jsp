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
              <td ><input type="hidden" name="formid" value="${formbilldetails.formid }"><c:out value="${formbilldetails.date}"/></td>
              </tr>
              </table><br>
            
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err"></span>Insurance Company:</td>
              <td ><c:out value="${formbilldetails.insurance}"/></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><c:out value="${formbilldetails.address1}"/></td>
             </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span></td>
              <td ><c:out value="${formbilldetails.address2}"/></td>
             </tr>
              </table>
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr ><br>
             <td height="25" width="120"><span class="err"></span>Name Of Attorney:</td>
              <td ><c:out value="${formbilldetails.name}"/></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><c:out value="${formbilldetails.address3}"/></td>
             </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span></td>
              <td ><c:out value="${formbilldetails.address4}"/></td>
             </tr>
              </table><br>
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err"></span>Patient Name</td>
              <td ><c:out value="${formbilldetails.patientsname}"/></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><c:out value="${formbilldetails.address5}"/></td>
             </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span></td>
              <td ><c:out value="${formbilldetails.address6}"/></td>
             </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"><b><h4>RE:</b>&nbsp;&nbsp;&nbsp;&nbsp; Notice of Final Outstanding Amount Owed;Medical Fees of $<c:out value="${formbilldetails.medicalfee}"/> </h4></p></td>
        	  <td>
        	  </td>
        	  </tr>
       		  </table>
       		 <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"> <b>Notice is made of final outstanding amounts owed for medical fees rendered by the above of $ <c:out value="${formbilldetails.amount}"/></b></p></td>
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
       		   <table><tr> <td><input type="submit" class="submit_btn" value="update"></td>
               <td><a href="viewformbill"style="color:white" class="submit_btn">Cancel</a></td>
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