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
        	<c:set value="${letterofprotectionform.letterofprotectiondetails[0]}" var="letterofprotectiondetails"> </c:set>
	            <div class="headings altheading">
	             <h2>Letter Of Protection-Drafted For Patient's Attorney</h2> 
	            </div>
	            <div class="contentbox">
	                
            
          
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="375"></td>
              <td><span class="err">*</span>Date</td>
              <td ><input type="hidden" name="letterid" value="${letterofprotectiondetails.letterid }"><c:out value="${letterofprotectiondetails.date}"/></td>
              </tr>
              </table>
               <br><br><br>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err">*</span>D.C:</td>
               <td ><c:out value="${letterofprotectiondetails.dc}"/></td>
             
              </tr>
              <tr>
              <td height="25" width="160"><span class="err"></span>Clinic Name:</td>
               <td ><c:out value="${letterofprotectiondetails.clinicname}"/></td>
             
              </tr>
             </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="160"><span class="err"></span>Address:</td>
              <td><c:out value="${letterofprotectiondetails.address1}"/>
            </td></tr>
              </table>
             
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err">*</span>IN RE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Client:</td>
               <td ><c:out value="${letterofprotectiondetails.myclient}"/></td>
             
              </tr>
              <tr>
              <td height="25"  width="160"><span class="err"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date Of Accident:</td>
               <td ><c:out value="${letterofprotectiondetails.dateofaccident}"/></td>
             
              </tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="70"><span class="err"></span>Dear Dr</td>
              <td  height="20" ><c:out value="${letterofprotectiondetails.dearsir}"/></td></tr>	
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
            <td ><c:out value="${letterofprotectiondetails.esq}"/></td></tr>
            <tr><td width="450"></td><td ><p><h1> <b>	Attorney for above client</b></h1><p></td></tr>
             </table>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="update"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="insertletterofprotection" style="color:white" class="submit_btn">Cancel</a></td>
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