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
 $(function() {
           $( "#datepicker1" ).datepicker();
         });
         $(function() {
           $( "#datepicker2" ).datepicker();
         });
         
          $("#amount").keyup(function() {
			
			 $("#number").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#number").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
         
         
         
         
         
         
         
         
</script>
</head>
 <body>
<div id="right_content">
<form action="insertformbill" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr><td width="150"></td>
        <td valign="top" align="center">
        	<div>
	            <div class="headings altheading">
	             <h2>FORM NOTICE OF FINAL  BILL</h2> 
	            </div>
	             <c:choose>
<c:when test="${empty form}">
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="30" >
              <td ><b>CERTIFIED MAIL</b></td>
              </tr>
              <tr height="30">
              <td ><b>Return Receipt Requested</b></td>
              </tr>
               
              </table><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="400"></td>
              <td height="25" width="50"><span class="err">*</span>Date:</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker"  /><span class="err"><form:errors path="Formbill.date"></form:errors></span></td>
              </tr>
              </table><br>
            
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span>Insurance Company:</td>
              <td ><input type="text" class="input_txtbx1" name="insurance" id="insurance"/><span class="err"><form:errors path="Formbill.insurance"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="3" cols="28" name="address1" id="address1"/></textarea><span class="err"><form:errors path="Formbill.address1"></form:errors></span></td>
             </tr>
              </table>
             
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr ><br>
             <td height="25" width="120"><span class="err">*</span>Name Of Attorney:</td>
              <td ><input type="text" class="input_txtbx1" name="name" id="name"/><span class="err"><form:errors path="Formbill.name"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="3" cols="28"  name="address3" id="address3"/></textarea><span class="err"><form:errors path="Formbill.address3"></form:errors></span></td>
             </tr>
              </table>
              
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span>Patient Name</td>
              <td ><input type="text" class="input_txtbx1" name="patientsname" id="patientsname"/><span class="err"><form:errors path="Formbill.patientsname"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="3" cols="28"  name="address5" id="address5"/></textarea><span class="err"><form:errors path="Formbill.address5"></form:errors></span></td>
             </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"><b><h4>RE:</b>&nbsp;&nbsp;&nbsp;&nbsp; Notice of Final Outstanding Amount Owed;Medical Fees of $ <input type="text" class="input_txtbx1" name="medicalfee" id="medicalfee">
	<span class="err"><form:errors path="Formbill.medicalfee"></form:errors></span>
				  <span class="err"></span></h4></p></td>
        	  <td>
        	  </td>
        	  </tr>
       		  </table>
       		 <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"> <b>Notice is made of final outstanding amounts owed for medical fees rendered by the above of $ <input type="text" class="input_txtbx1" name="amount" id="amount">
	<span class="err"><form:errors path="Formbill.amount"></form:errors></span>
				  <span class="err"><div id="number"></span></b></p></td>
        	  <td>
        	  </td>
        	  </tr>        	 
       		  </table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td>
       		<b>Notice has been previously provided to you of a Treatment Fee Agreement and Instructions to Attorney and an assignment of coverage proceeds.</b>
       		</td>
       		</tr>
       		</table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td><br>	
	<p align="right"><b>Very truly yours,</b>
	</p>
	
<p align="right">Perry Chiropractic & Therapy Center of Canton, Inc
	</p>

<p align="right">&Dr. Charles T. Yang D.C.
	</p>
	
<br>				</td></tr></table>

</c:when>
<c:otherwise>
 <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="30" >
              <td ><b>CERTIFIED MAIL</b></td>
              </tr>
              <tr height="30">
              <td ><b>Return Receipt Requested</b></td>
              </tr>
               
              </table><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="400"></td>
              <td height="25" width="50"><span class="err">*</span>Date:</td>
              <td ><input type="hidden" name="formid" value="${form.formid }"><input type="text" class="input_txtbx1" name="date" id="datepicker"  value="${form.date }" /><span class="err"><form:errors path="Formbill.date"></form:errors></span></td>
              </tr>
              </table><br>
            
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span>Insurance Company:</td>
              <td ><input type="text" class="input_txtbx1" name="insurance" id="insurance" value="${form.insurance }" /><span class="err"><form:errors path="Formbill.insurance"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="" cols="" name="address1" id="address1" style="width: 162px; height: 62px" >${form.address1}</textarea><span class="err"><form:errors path="Formbill.address1"></form:errors></span></td>
             </tr>
              </table>
             
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr ><br>
             <td height="25" width="120"><span class="err">*</span>Name Of Attorney:</td>
              <td ><input type="text" class="input_txtbx1" name="name" id="name" value="${form.name}"/><span class="err"><form:errors path="Formbill.name"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="" cols="" name="address3" id="address3" style="width: 162px; height: 62px" >${form.address3}</textarea><span class="err"><form:errors path="Formbill.address3"></form:errors></span></td>
             </tr>
              </table>
             
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span>Patient Name</td>
              <td ><input type="text" class="input_txtbx1" name="patientsname" id="patientsname" value="${form.patientsname}"/><span class="err"><form:errors path="Formbill.patientsname"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="" cols="" name="address5" id="address5" style="width: 162px; height: 62px" >${form.address5}</textarea><span class="err"><form:errors path="Formbill.address5"></form:errors></span></td>
             </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"><b><h4>RE:</b>&nbsp;&nbsp;&nbsp;&nbsp; Notice of Final Outstanding Amount Owed;Medical Fees of $ <input type="text" class="input_txtbx1" name="medicalfee" id="medicalfee" value="${form.medicalfee}">
	<span class="err"><form:errors path="Formbill.medicalfee"></form:errors></span>
				  <span class="err"></span></h4></p></td>
        	  <td>
        	  </td>
        	  </tr>
       		  </table>
       		 <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"> <b>Notice is made of final outstanding amounts owed for medical fees rendered by the above of $ <input type="text" class="input_txtbx1" name="amount" id="amount" value="${form.amount}">
	<span class="err"><form:errors path="Formbill.amount"></form:errors></span>
				  <span class="err"><div id="number"></span></b></p></td>
        	  <td>
        	  </td>
        	  </tr>        	 
       		  </table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td>
       		<b>Notice has been previously provided to you of a Treatment Fee Agreement and Instructions to Attorney and an assignment of coverage proceeds.</b>
       		</td>
       		</tr>
       		</table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td><br>	
	<p align="right"><b>Very truly yours,</b>
	</p>
	
<p align="right">Perry Chiropractic & Therapy Center of Canton, Inc
	</p>

<p align="right">&Dr. Charles T. Yang D.C.
	</p>
	
<br>				</td></tr></table>
</c:otherwise>
</c:choose>
       		   <table><tr> <td><input type="submit" class="submit_btn" value="Save"></td>
               <td><a href="viewformbill"style="color:white" class="submit_btn">Cancel</a></td>
              </tr></table>
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