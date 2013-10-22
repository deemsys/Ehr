<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="/resources/css/style.css" />
 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
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
<form action="treatminor" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
      <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	              <h2>Consent To Treat A minor</h2>
	            </div>
            <div class="contentbox">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
                        <p id="mypar">I (We) being the parent or guardian of <input type="text" class="input_txtbx1" id="inp_id" name="guardian" /><span class="err"><form:errors path="TreatMinor.guardian"></form:errors></span>, a minor, being the age of <input type="text" class="input_txtbx1" id="inp_id" name="age" /><span class="err"><form:errors path="TreatMinor.age"></form:errors></span> do hereby consent, authorize and request</p>
                        <p id="mypar">Dr.<input type="text" class="input_txtbx1" id="inp_id" name="Drname" /><span class="err"><form:errors path="TreatMinor.Drname"></form:errors></span>to administer such treatment deemed advisable, necessary or requested on the above minor.</p>
                        <p id="mypar">I (We) agree to hold him free and harmless from any claims, suits for damages or complications which may result from such treatment.
                        
                        </p>
                        </div>
                        </tr>
                 
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err"></span>Signed:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="signed"></td><br><span class="err"><form:errors path="TreatMinor.signed"></form:errors></span>
				                  <tr> <td></td></tr>
                        
                        </tr>
                        <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="pdate" /><br><span class="err"><form:errors path="TreatMinor.pdate"></form:errors></span>
                        </td>
                        </tr>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Witness: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="pwitness" /><br><span class="err"><form:errors path="TreatMinor.pwitness"></form:errors></span>
				                  	</tr>
                        <tr>
                        </table>
                        <table>
				  <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				  <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save"></td>
				  <td>&nbsp;&nbsp;</td>
				    <td valign="top" align="center"><br><input type="reset" class="submit_btn" value="Cancel"></td>
				    <td>&nbsp;&nbsp;</td>
				     <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='viewtreatminor'"></td>
				  </tr>
                        </table>
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
                       