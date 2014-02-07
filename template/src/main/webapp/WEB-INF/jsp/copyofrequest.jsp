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
<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });
$(function() {
    $( "#datepicker1" ).datepicker();
  });
</script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
</head>
 
 <body>
 <form action="copyofrequest" method="POST"> 
 <div id="right_content">

<table cellpadding="0" cellspacing="0" border="0" width="80%" class="margin_table">
<tr>
<td valign="top" align="left">
 <div>
	            <div class="headings altheading">
	            <center> <h2>PERRY CHIROPRACTIC & THERAPY CENTER OF CANTON, INC.</h2> </center><br/>
	            </div>
	            <div class="contentbox"><center> Dr. Charles T. Yang, DC, DABFP </center><br/>
	            <center> 4933 West Tuscarawas Street </center><br/>
	            <center> Canton, Ohio 44708 </center><br/>
	            <center> Phone (330) 477-3036    Fax  (330) 477-3037 </center><br/>
	            <center> Tax ID#:  26-0101968 </center><br/>
	            <center> <B style="font-size:18px">Requesting Fee Reduction from Attorney/Adjuster</B> </center><br/>
          <table cellpadding="0" cellspacing="0" border="0" width="70%" align="center">
          <tr height="30">
          <td>Patients Attorney or Insurance Adjuster: </td>
          <td><input type="text" name="patient" size="40"></td>
          </tr>   
          <tr height="30">
          <td>Address: </td>
          <td><textarea rows="4" cols="43" name="address"></textarea></td>
          </tr>
          <tr height="30">
          <td>Regarding: </td>
          <td><input type="text" name="regarding" size="40"></td>
          </tr>
          <tr height="30">
          <td>Date of Accident: </td>
          <td><input type="text" name="dateofaccident" id="datepicker" size="40"></td>
          </tr>
          <tr height="30">
          <td>Claim Number: </td>
          <td><input type="text" name="claimnumber"  size="40"></td>
          </tr>
          <tr height="30">
          <td>Today's Date:  </td>
          <td><input type="text" name="todaydate" id="datepicker1" size="40"></td>
          </tr>
          </table>
          <table width="85">
          <tr height="30">
          <td width="40">Dear  </td>
          <td><input type="text" name="dear"  size="40"></td>
          </tr>
          </table>
          <br/>
          <div><p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have requested that this Clinic accept less than our total outstanding treatment fees for our above patient, as payment in full.  You have been provided notice of a written proceeds assignment ("Assignment") made by our above patient to us, regarding any proceeds you receive whatsoever for the above patient's claim.  <b>This Assignment will not be modified except by our specific subsequent written consent.  No Conversations with staff will modify this Assignment.</b>
          </p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We will consider accepting a reduction in our outstanding treatment fees. Our acceptance will only be valid if we provide it to you in writing.  We cannot consider any offer unless and until:</p>
          </div>
          <div>
          <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. It is presented to us in writing.</p>
          <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. You attach a itemization with:</p>
              
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a. The total offer.</p>
               <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b. A breakdown of all the costs and expense, including all other outstanding obligations to other medical providers.</p>
               <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c. Please indicate the reduced amount (if any) that others have agreed to accept in compromise.</p>
          <p>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Our patient can provide a written consent to you for release of the above information, in order to enable you to remain in compliance with any privacy obligation or legal requirements limiting distribution of this information.
          </p>
          </div>
          <div align="right">
          <p><B style="font-size:13px">Very truly yours,</B></p>
          <p><input type="text" name="sign" size="30"></p>
          <p>Perry Chiropractic and Therapy Center of Canton, Inc.</p>
          <p>Dr. Charles T. Yang DC, DABFP</p>
          </div>
 <table align="right">
<tr>
<td><input type="submit" class="submit_btn" value="Save"></td>
<td><input type="reset" class="submit_btn" value="Cancel"></td>
</tr>
</table>
</div>
</div>
</td>
</tr>
</table>
</div>
</form>
</body>
</html>

