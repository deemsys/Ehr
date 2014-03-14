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
 <script type="text/javascript">
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
        	<c:set value="${updateletterform.updateletterdetails[0]}" var="updateletterdetails"> </c:set>
	            <div class="headings altheading">
	             <h2 align="center">UPDATE  LETTER</h2> 
	            </div>
	            <div class="contentbox">
	           
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>To Attorney:</td>
              <td width="50%"><input type="hidden" name="updateid" value="${updateletterdetails.updateid }"><c:out value="${updateletterdetails.toattorney1}"/></td>
              </tr>
              </table>
              <br>
               
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span></td>
              <td  width="50%"><c:out value="${updateletterdetails.toattorney2}"/></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span></td>
              <td width="50%"><c:out value="${updateletterdetails.toattorney3}"/></td>
              </tr>
              </table>
              <br>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>
In Regards to : 
              </td>
              <td width="50%"><c:out value="${updateletterdetails.reg}"/></td>
              </tr>
              </table>
              <br>
              
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>Date of Injury:

              </td>
              <td width="50%"><c:out value="${updateletterdetails.injury}"/></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>Todays date:    
              </td>
              <td width="50%"><c:out value="${updateletterdetails.todaydate}"/></td>
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
              <td><input type="submit" class="submit_btn" value="update">
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