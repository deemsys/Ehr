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
<form action="insertrequestfordemand" method="POST">
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
	             
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "><tr><td>
	            <div class="contentbox">
	           <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "><tr><td>   	  
     <p ><h2><center>   REQUEST FOR DEMAND LETTER	</center></h2></td></tr></table><br>
     
     <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 680px; "><tr><td width="40%">   	  
     <p >To:&nbsp;&nbsp;&nbsp;John P. Lowry, Esq</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fax:  513-421-2764</td>
     <td>From: &nbsp;&nbsp;&nbsp;&nbsp;	Perry Chiropractic & Therapy Center	 of Canton, Inc.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4933 West Tuscarawas Street<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Canton, Ohio 44718</td></tr></table>
     <br>
     
    <p> Check every box that applies:</p> <br>
     
     <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "> 
    
     <tr><td><input type="checkbox" class="input_ckbx1" name="c1" id="c1">&nbsp;&nbsp;&nbsp;The At-Fault Insurer has already paid the attorney and/or patient full settlement and has failed to comply with the Assignment.<br><br>
     </td></tr>
     
     <tr><td><input type="checkbox" class="input_ckbx1" name="c2" id="c2">&nbsp;&nbsp;&nbsp;The At-Fault Insurer or The Med Pay Insurer has stated orally or in writing to us that it will not comply with the Assignment.<br><br>
     </td></tr>
     
     <tr><td><input type="checkbox" class="input_ckbx1" name="c3" id="c3">&nbsp;&nbsp;&nbsp;The Med Pay Insurer has already paid benefits to the patient and/or the attorney.<br><br>  </td></tr>
     
     <tr><td><input type="checkbox" class="input_ckbx1" name="c4" id="c4">	&nbsp;&nbsp;&nbsp;Our patient filed bankruptcy.  In addition to the document below, we are faxing every letter or document, which references the bankruptcy filing.
    <br><br> </td></tr>
     
     <tr><td><input type="checkbox" class="input_ckbx1" name="c5" id="c5">&nbsp;&nbsp;&nbsp;	If treatment is completed in addition to the document below we attach a copy of our itemized charges and a copy of the patient intake information form.
    <br><br> </td></tr>
     
     <tr><td><input type="checkbox" class="input_ckbx1" name="c6" id="c6">&nbsp;&nbsp;&nbsp;Other: (Describe)<input type="text" class="input_txtbx1" name="other1" id="other1" style="width: 483px; "><span class="err"><form:errors path="Requestfordemand.other1"></form:errors></span>
     <br><br></td></tr>
      <tr><td><input type="text" class="input_txtbx1" name="other2" id="other2" style="width: 593px; "><span class="err"><form:errors path="Requestfordemand.other2"></form:errors></span>
     <br><br></td></tr>
      <tr><td><input type="text" class="input_txtbx1" name="other3" id="other3" style="width: 593px; "><span class="err"><form:errors path="Requestfordemand.other3"></form:errors></span><br><br>
     </td></tr>
      <tr><td><input type="text" class="input_txtbx1" name="other4" id="other4" style="width: 593px; "><span class="err"><form:errors path="Requestfordemand.other4"></form:errors></span>
     <br><br></td></tr>
     
         
     <tr><td><input type="checkbox" class="input_ckbx1" name="c7" id="c7">&nbsp;&nbsp;&nbsp;	Please send the appropriate Demand Letter and copy to us.  The cost will be $181.50 plus postage and copy charges at .10/page.
     <br><br></td></tr>
     
     
     </table><br>
     
     We attach the following:<br>
     
     <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "> 
    
     <tr><td><input type="inputtype" class="input_ckbx1" name="copymedpay" id="copymedpay"><span class="err"><form:errors path="Requestfordemand.copymedpay"></form:errors></span></td><td>Copy of Med Pay and At Fault Form Cover Letter<br><br>
     </td></tr>
     
     <tr><td><input type="inputtype" class="input_ckbx1" name="copyform" id="copyform"><span class="err"><form:errors path="Requestfordemand.copyform"></form:errors></span></td><td>Copy of Form Cover Letter sent to the Attorney
     <br><br></td></tr>
     
      <tr><td><input type="inputtype" class="input_ckbx1" name="copyassign" id="copyassign"><span class="err"><form:errors path="Requestfordemand.copyassign"></form:errors></span></td><td>Copy of Assignment
     <br><br></td></tr>
     
      <tr><td><input type="inputtype" class="input_ckbx1" name="greencard" id="greencard"><span class="err"><form:errors path="Requestfordemand.greencard"></form:errors></span></td><td>Front and back of Certified Mail: "Green Card"ù
     <br><br></td></tr>
     
      <tr><td><input type="inputtype" class="input_ckbx1" name="defaultattorney" id="default"><span class="err"><form:errors path="Requestfordemand.defaultattorney"></form:errors></span></td><td>Any correspondence from the defaulting Adjuster or Defaulting Attorney
    <br><br> </td></tr>
     
     </table>
     
     <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "> 
    
     <tr><td style="width: 400px; "></td><td align="right" ><input type="inputtype" class="input_ckbx1" name="clinicrep" id="clinicrep" style="width: 250px; "><span class="err"><form:errors path="Requestfordemand.clinicrep"></form:errors></span></td></tr>
     
<tr><td style="width: 400px; "></td><td align="right" >Clinic Representative</td></tr>
     
     
    
     </td></tr></table>
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
     
     </form>
     </div>
     </body>
     </html>
     
        	  