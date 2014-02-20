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
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
</head>
 <body>
 <div id="right_content" >
<form action="insertxray" method="POST">
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
 <div>
	             
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
	            <div class="contentbox">
	           <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>   	  
        <p ><h2><center>CHIROPRACTIC THERAPY CENTER</h2></p>
        <p ><h4><center>Dr. Darrin A. Pordash, D.C.<br>5190 Detroit Road<br>
       The Sheffield Village Plaza<br>
        Sheffield Village, OH 44035<br>
      Tax Identification Number 34-1931730<br>
        Phone (440) 934-3099 Fax (440) 934-3107</h4></p>	</td></tr></table>
        
         <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
        <p ><h3><center><i>X-RAY RELEASE FORM</i></h3></p>	</td></tr></table>
       <div class="contentbox">    
      <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>  	  
       <p style="line-height:26px">I <input type="text" class="input_txtbx1" name="name" id="name"> do hereby agree to return X-rays that I have borrowed from the Chiropractic Therapy Center, I understand that I have   fourteen (14) days to do so.  I fully agree that in the event that I do not return      X-rays, I will be billed $50.00. </p> 	  
       </td></tr></table></div>
       <br>
        	   <div class="contentbox">
<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err">*</span>Date Borrowed </td>
              <td><input type="text" class="input_txtbx1" name="date" id="date"><span class="err"><form:errors path="Xray.date"></form:errors></span></td>
              </tr>
              </table><br>
</div>


 <div class="contentbox">
<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err">*</span>Date Due </td>
              <td><input type="text" class="input_txtbx1" name="date1" id="date1"><span class="err"><form:errors path="Xray.date1"></form:errors></span></td>
              </tr>
              </table></div>
         <br>     
 <div class="contentbox">             
<table align="center"   cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr>
              
              <td><span class="err">*</span>Signature &nbsp;&nbsp;<input type="text" class="input_txtbx1" name="sign" id="sign"><span class="err"><form:errors path="Xray.sign"></form:errors></span></td>
              <td><span class="err">*</span>Date &nbsp;&nbsp;<input type="text" class="input_txtbx1" name="date2" id="date2"><span class="err"><form:errors path="Xray.date2"></form:errors></span></td>
              
              
              </tr>
              </table>              
              </div>
              
              
              
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
 </table>
 </div>
 
 
 </form>
 
 </div>
 </body>
        	  </html>
        	 
 
 