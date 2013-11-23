<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
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
<form action="updatescreeningauthz" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="55%" class="margin_table">
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
	              <h2>Editing Screening Disclosure:</h2>
	            </div>
  <table cellpadding="0" cellspacing="0" border="0" width="100%">
      <c:set value="${ScreeningAuthzForm.screeningDetails[0]}" var="ScreeningDetails"> </c:set>
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
                       <p id="mypar"> This confirms my understanding that a representative of the clinic contacted me regarding the availability of a consultation and spinal examination. I understand and acknowledge that no representations were made to me that this service is in any way affiliated with any insurance company or governmental agency. </p>
	<p id="mypar">The consultation and examination were offered without obligation to accept the appointment, without obligation to respond immediately and was accepted by me willingly with regard to seeking treatment for injuries I sustained in an automobile accident or work related accident.</p>
                        </div>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date: </td>
				                  <input type="hidden" class="input_txtbx1" id="inp_id" value="${ScreeningDetails.screen_no}" name="screen_no" />
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="date" value="${ScreeningDetails.date}"/><br><span class="err"><form:errors path="screeningAuthz.date"></form:errors></span>
				                  	</tr>
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="name" value="${ScreeningDetails.name}"/><br><span class="err"><form:errors path="screeningAuthz.name"></form:errors></span>
				                  	</tr>
				                  	</table>
				                  	<table>
              <tr >
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="submit" class="submit_btn" value="Update"></td>
              <td>&nbsp;&nbsp;</td>
              <td><input type="reset" class="submit_btn" value="Cancel"></td>
        	  </tr>
        	  </table>
				    </td>
				    </tr>
				    </table>
				    </div>
				    </td>
				    </tr>
				    </table>
				    </form>
				    </div>
				    </body>
				    </html>
				    <jsp:include page="footer.jsp"></jsp:include> 