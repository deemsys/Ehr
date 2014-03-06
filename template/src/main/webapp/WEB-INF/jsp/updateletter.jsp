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
	    $( "#datepicker1" ).datepicker();
	  });
	  
	$(function() {
	    $( "#datepicker2" ).datepicker();
	  });  
	  
 </script>
</head>
 <body>
<div id="right_content">
<form action="insertupdateletter" method="POST">

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
	             <h2 align="center">UPDATE  LETTER</h2> 
	            </div>
	            <div class="contentbox">
	           
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>To Attorney:</td>
              <td width="50%"><input type="text" class="input_txtbx1" name="toattorney1" id="toattorney1" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <br>
               
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span></td>
              <td  width="50%"><input type="text" class="input_txtbx1" name="toattorney2" id="toattorney2" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span></td>
              <td width="50%"><input type="text" class="input_txtbx1" name="toattorney3" id="toattorney3" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <br>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>
In Regards to : 
              </td>
              <td width="50%"><input type="text" class="input_txtbx1" name=" reg" id=" reg" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <br>
              
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>Date of Injury:

              </td>
              <td width="50%"><input type="text" class="input_txtbx1" id="datepicker1" name="injury"/><span class="err"><form:errors path="Updateletter.injury"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>Todays date:    
              </td>
              <td width="50%"><input type="text" class="input_txtbx1" id="datepicker2" name="todaydate"/><span class="err"><form:errors path="Updateletter.todaydate"></form:errors></span></td>
              </tr>
              </table>
              <br>
             
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr>
        	  <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In order to update our records, we are asking that you provide an update on the status 
        	  on  the following account.</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please fax back to us at (440) 934-3099</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank-you</p>
              </tr>
              </table>
              <br>
              
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save">
				</td>
				<td>&nbsp;&nbsp;</td>
              <td><a href="viewupdateletter" style="color:white" class="submit_btn">Cancel</a></td>
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