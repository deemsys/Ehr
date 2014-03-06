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
<div id="right_content" >
<form action="updateletterofprotection" method="POST">

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
	              <c:set value="${letterofprotectionform.letterofprotectiondetails[0]}" var="letterofprotectiondetails"> </c:set>
	             
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "><tr><td>
	            <div class="contentbox">
	            
				 <p align="left"><h2><center>I.-g.    Letter Of Protection-Drafted For Patient's Attorney</h2></center></p><br>
				 
		<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "><tr><td>	</td><td align="right"><input type="hidden" name="letterid" value="${letterofprotectiondetails.letterid }">Date:&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="date"  value="${letterofprotectiondetails.date}"  id="datepicker1"><span class="err"><form:errors path="Letterofprotection.date"></form:errors></span>	 
				 
			</td></tr></table><br>
			
	
		<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "><tr><td><input type="text" class="input_txtbx1" name="dc" value="${letterofprotectiondetails.dc}" id="dc">, D. C.<span class="err"><form:errors path="Letterofprotection.dc"></form:errors></span>	 
				 
			</td></tr></table><br><br>
			
			<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
			<tr><td width="10%">Clinic Name</td><td><input type="text" class="input_txtbx1" name="clinicname" value="${letterofprotectiondetails.clinicname}" id="clinicname"><span class="err"><form:errors path="Letterofprotection.clinicname"></form:errors></span>	 
			</td></tr>
			</table>	<br><br>
				
				 
			<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
			
			<tr><td width="10%">Address</td><td><input type="text" class="input_txtbx1" name="address1" value="${letterofprotectiondetails.address1}" id="address1"><span class="err"><form:errors path="Letterofprotection.address1"></form:errors></span>	 
				 </td></tr>
			</table><br>
			
			
			<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
						<tr><td width="10%"></td><td><input type="text" class="input_txtbx1" name="address2" value="${letterofprotectiondetails.address2}" id="address2"><span class="err"><form:errors path="Letterofprotection.address2"></form:errors></span>	 
				 
			</td></tr>
			</table>		 
			
				 <br><br>
				 <table align="center"  cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
			
			<tr><td align="center">In Re:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Client -</td><td><input type="text" class="input_txtbx1" value="${letterofprotectiondetails.myclient}" name="myclient" id="myclient">	<form:errors path="Letterofprotection.myclient"></form:errors>	 </td></tr>
			</table>
				 <br><br>
				  <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
			
			<tr><td align="center" >Date of Accident -</td><td><input type="text" class="input_txtbx1" name="dateofaccident" value="${letterofprotectiondetails.dateofaccident}" id="datepicker2">	<form:errors path="Letterofprotection.dateofaccident"></form:errors>	 </td></tr>
			</table>
				 <br><br>
		 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
			
			<tr><td>Dear Dr.</td><td width="90%"><input type="text" class="input_txtbx1" name="dearsir" value="${letterofprotectiondetails.dearsir}" id="dearsir">	<form:errors path="Letterofprotection.dearsir"></form:errors> 
				 </td></tr>
			</table>
				 <br><br>
				<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
			
			<tr><td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It is my understanding that my above-named client has an outstanding balance with your above clinic for treatment rendered as a result of this accident.
				</p></td></tr></table>
				<br><br>
				
					<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
			
			<tr><td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please let this letter serve as my professional representation that I will pay your clinic's outstanding treatment fee out of and only to the extent of any settlement of judgment proceeds, after deduction of our firm's fees and costs advanced.
				</p></td></tr></table>
				<br><br>
				 
			<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; ">
			
			<tr><td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If my client objects to any such payment over to your clinic, in whole or in part, I will hold any disputed amount in our firm's trust account until resolution.	
				</p></td></tr></table>
				<br><br>
				
			<p align="center">	Very truly yours,</p>
			
			<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 683px; "><tr><td>	</td><td align="right"><input type="text" class="input_txtbx1" name="esq" value="${letterofprotectiondetails.esq}" id="esq">, Esq.<br><br>Attorney for above client <span class="err"><form:errors path="Letterofprotection.esq"></form:errors></span>
				 
			</td></tr></table>	
				
				
				<table align="center" cellpadding="0" cellspacing="0" border="0" width="70%">
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="update"></td>
              <td>&nbsp;&nbsp;</td>
                 <td><a href="viewletterofprotection" style="color:white" class="submit_btn">Cancel</a></td>
              <td>&nbsp;&nbsp;</td>
        	  </tr>
        	  </table>
				
				 </div>
				 </td>
				 </tr>
				 </table>
				 </div>
				 </form>
				 </div>
				 </body>
				 </html>
				 