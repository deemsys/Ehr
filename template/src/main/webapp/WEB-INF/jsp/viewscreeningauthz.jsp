<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <script src="resources/js/jquery-1.9.1.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
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
<form action="screeningAuthz" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="screeningauthzlist">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
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
	              <h2>Viewing Screening Disclosure:</h2>
	            </div>
            <div class="contentbox">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                         <c:set value="${ScreeningAuthzForm.screeningDetails[0]}" var="ScreeningDetails"> </c:set>
                        <tr>
                        <div align="justify">
                       <p id="mypar"> This confirms my understanding that a representative of the clinic contacted me regarding the availability of a consultation and spinal examination. I understand and acknowledge that no representations were made to me that this service is in any way affiliated with any insurance company or governmental agency. </p>
	<p id="mypar">The consultation and examination were offered without obligation to accept the appointment, without obligation to respond immediately and was accepted by me willingly with regard to seeking treatment for injuries I sustained in an automobile accident or work related accident.</p>
                        </div>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date: </td>
				                  <td valign="top" align="left" class="input_txt">${ScreeningDetails.date}</td>
				                  </tr>
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name:  </td>
				                  <td valign="top" align="left" class="input_txt">${ScreeningDetails.name }
				                  	
				                  	</tr>
				                  	</table>
				                   <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="button" class="submit_btn" value="Cancel" onclick="window.location.href='screeninglist'"></td>
             </tr>
              </table>
                        </td>
                        </tr>
                        </table>
                        </div>
                        </div>
                        </td>
                        </tr>
                        </table>
                        </form>
                        </div>
                         <script language="javascript">
        function confirmation() {
	var answer = confirm("Are you Sure You Want to Delete patient screening disclosure ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
        </script>
                       </body>
                        </html>
                       
                       <jsp:include page="footer.jsp"></jsp:include>  
                        