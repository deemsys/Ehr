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

<form action="updateupdateletter" method="POST">
<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr> <td>
 <table cellpadding="0" cellspacing="0" border="0"  width="70%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        
        	  </tr>
        	  </table>
 
 
 
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
 <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        
        	  </tr>
        	  </table>

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>  </table>
      
      <div>
      
      <c:set value="${updateletterform.updateletterdetails[0]}" var="updateletterdetails"> </c:set>
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
 <td valign="middle" width="200"align="left" class="input_txt"><span class="err"></span>To Attorney </td>
 <td valign="top" align="left" class="input_txt">
				                  <input type="hidden" name="updateid" value="${updateletterdetails.updateid }">	<input type="text" class="input_txtbx1" id="inp_id"  value="${updateletterdetails.toattorney1}" name="toattorney1"/><span class="err"><form:errors path="Treatform.patientsname"></form:errors></span></td>
 </tr></table>
 
<br>
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
 <td valign="middle"  width="200" align="left" class="input_txt"><span class="err"></span> </td>
 <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" value="${updateletterdetails.toattorney2}"  name="toattorney2"/><span class="err"><form:errors path="Treatform.patientsname"></form:errors></span></td>
 </tr></table>
   <br>
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
 <td valign="middle"  width="200"align="left" class="input_txt"><span class="err"></span> </td>
 <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id"  value="${updateletterdetails.toattorney3}" name="toattorney3"/><span class="err"><form:errors path="Treatform.patientsname"></form:errors></span></td>
 </tr></table>
 <br>
  
  
   <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
 <td valign="middle"  width="200"align="left" class="input_txt"><span class="err"> </span>In Regards to : </td>
 <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id"  value="${updateletterdetails.reg}"  name="reg"/><span class="err"><form:errors path="Treatform.patientsname"></form:errors></span></td>
 </tr></table>
  <br>
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
 <td valign="middle"  width="200"align="left" class="input_txt"><span class="err"></span> Date of Injury:</td>
 <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id"  value="${updateletterdetails.injury}" name="injury"/><span class="err"><form:errors path="Treatform.patientsname"></form:errors></span></td>
 </tr></table>
 <br>
 
  <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
 <td valign="middle"  width="200"align="left" class="input_txt"><span class="err"> </span>Todays date: </td>
 <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" value="${updateletterdetails.todaydate}"  name="todaydate"/><span class="err"><form:errors path="Treatform.patientsname"></form:errors></span></td>
 </tr></table>
 <br>
 
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
 <td valign="middle"  width="400"align="left" class="input_txt"><span class="err"> </span>
 <p align="left">In order to update our records, we are asking that you provide an update on the status on <br>the following account.</p>
<br>
<p align="left">Please fax back to us at (440) 934-3099</p><br>
<p align="left">Thank-you</p>
</td></tr>
 </table>
 
<table align="center" cellpadding="0" cellspacing="0" border="0" width="70%">
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><input type="reset" class="submit_btn" value="Cancel"></td>
              <td>&nbsp;&nbsp;</td>
        	  </tr>
        	  </table>



   
</div>   
</tr>
</table>


</td>
</tr>
</table>







</form>

</div>
</body>
</html>





