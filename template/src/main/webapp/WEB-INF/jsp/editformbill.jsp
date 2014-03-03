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
 
</script>
</head>
 <body>
<div id="right_content" >
<form action="updateformbill" method="POST">

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
	            <c:set value="${formbillform.formbilldetails[0]}" var="formbilldetails"> </c:set> 
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
	            <div class="contentbox">
	            
				 <p align="left"><h2><center>Certified Mail</h2></p> <br>
				  <p align="left"><h2><center>Return Receipt Requested</h2></p> <br>
				  
				  <table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span> Date: </td>
              <td><input type="hidden" name="formid" value=" ${formbilldetails.formid}"><input type="text" value="${formbilldetails.date }"  class="input_txtbx1" name="date" id="datepicker"><span class="err"><form:errors path="Formbill.date"></form:errors></span></td>
              </tr>
              </table>
              <br>
				  
				  
				  
				 
              <table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span> Insurance Company </td>
              <td><input type="text" value="${formbilldetails.insurance }"  class="input_txtbx1" name="insurance" id="insurance"><span class="err"><form:errors path="Formbill.insurance"></form:errors></span></td>
              </tr>
              </table>
              <br>
              <table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Address  </td>
              <td><input type="text"  value="${formbilldetails.address1 }" class="input_txtbx1" name="address1" id="address1"><span class="err"><form:errors path="Formbill.address1"></form:errors></span></td>
              </tr>
              </table>
              <br>
              
				<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>  </td>
              <td><input type="text" value="${formbilldetails.address2 }"  class="input_txtbx1" name="address2" id="address2"><span class="err"><form:errors path="Formbill.address2"></form:errors></span></td>
              </tr>
              </table>
              <br>  
              	<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span> Name of Attorney </td>
              <td><input type="text"  value="${formbilldetails.name}" class="input_txtbx1" name="name" id="name"><span class="err"><form:errors path="Formbill.name"></form:errors></span></td>
              </tr>
              </table>
              <br> 
               
              	<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Address   </td>
              <td><input type="text"  value="${formbilldetails.address3 }"  class="input_txtbx1" name="address3" id="address3"><span class="err"><form:errors path="Formbill.address3"></form:errors></span></td>
              </tr>
              </table>
              <br> 
				  
					<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>  </td>
              <td><input type="text"  value="${formbilldetails.address4 }" class="input_txtbx1" name="address4" id="address4"><span class="err"><form:errors path="Formbill.address4"></form:errors></span></td>
              </tr>
              </table>
              <br>  
              	  
					<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Patients Name  </td>
              <td><input type="text"  value="${formbilldetails.patientsname }" class="input_txtbx1" name="patientsname" id="patientsname"><span class="err"><form:errors path="Formbill.patientsname"></form:errors></span></td>
              </tr>
              </table>
              <br>    
				  
				 		<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Address </td>
              <td><input type="text"  value="${formbilldetails.address5}" class="input_txtbx1" name="address5" id="address5"><span class="err"><form:errors path="Formbill.address5"></form:errors></span></td>
              </tr>
              </table>
              <br> 
               		<table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span></td>
              <td><input type="text"  value="${formbilldetails.address6 }" class="input_txtbx1" name="address6" id="address6"><span class="err"><form:errors path="Formbill.address6"></form:errors></span></td>
              </tr>
              </table>
              <br>        
				  
			<p align="left">Re:&nbsp;&nbsp;&nbsp;	Notice of Final Outstanding Amount Owed;</p>
	<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Medical Fees of $<input type="text" value="${formbilldetails.medicalfee }"  class="input_txtbx1" name="medicalfee" id="medicalfee"><span class="err"><form:errors path="Formbill.medicalfee"></form:errors></span></p>
	
<br>

		<p align="center">Notice is made of final outstanding amounts owed for medical fees rendered by the above of $<input type="text" value="${formbilldetails.amount }"  class="input_txtbx1" name="amount" id="amount">.  This notice is not an attempt at this time to collect a debt directly from the patient.
	</p>
	
<br>		  
				  
	<p align="center">Notice has been previously provided to you of a Treatment Fee Agreement and Instructions to Attorney and an assignment of coverage proceeds.
	</p>
	
<br>	
	<p align="right" >Very truly yours,
	</p>
	

<p align="right">Perry Chiropractic & Therapy Center of Canton, Inc
	</p>
	

<p align="right">Dr. Charles T. Yang D.C.
	</p>
	
<br>						  
				  
	<table align="center" cellpadding="0" cellspacing="0" border="0" width="70%">
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><input type="reset" class="submit_btn" value="Cancel"></td>
              <td>&nbsp;&nbsp;</td>
        	  </tr>
        	  </table>			  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  </tr></td>
        	</table>
        	  </div>
        	  </div>
        	  </td>
        	  </form>
        	  </div>
        	  </body>
        	  </html>
        	  <jsp:include page="footer.jsp"></jsp:include>
				  