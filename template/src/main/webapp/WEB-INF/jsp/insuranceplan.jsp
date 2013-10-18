<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery-1.9.1.js"></script>
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
<form action="insuranceplan" method="POST">

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
	             <h2>Health Insurance Plan</h2> 
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <td ><input type="text" class="input_txtbx1" name="insure_comp" id="insure_comp" placeholder="Name of Insurance Company" /><span class="err"><form:errors path="Insuranceplan.insure_comp"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>
              <input type="text" class="input_txtbx1" name="addr" id="addr" placeholder="Address"/><span class="err"><form:errors path="Insuranceplan.addr"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><br>
              <p id="mypar" align="center">Re:	SUBSCRIBER/ENROLLEE'S DECISION TO NOT USE INSURANCE 
		BENEFITS FOR ACCIDENT</p></tr></table>
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="pat_name" id="pat_name" placeholder="Patient's Name" /><span class="err"><form:errors path="Insuranceplan.pat_name"></form:errors></td>
        </tr>
        <tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="accident_date" id="datepicker" placeholder="Date of Accident" /><span class="err"><form:errors path="Insuranceplan.accident_date"></form:errors></td>
        </tr>
        <tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="enrollee" id="enrollee" placeholder="Subscriber/Enrollee No" /><span class="err"><form:errors path="Insuranceplan.enrollee"></form:errors></td>
        </tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr><br><p id="mypar">To Whom It May Concern:</p></tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I have been injured in an accident.  I am a subscriber/enrollee in your company's health insurance plan.</p>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I have decided that I do not want to use available coverage benefits to which I may be entitled for my medical treatment with [Name of Clinic] for my above accident.  I have chosen to pay for treatment from any liability settlement and/or my own liability insurer, if available.</p>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise if your company has no objection:</p>
        </tr>
        <tr class="row1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="checkbox" name="no_objection" value="no_objection">No Objection
        </tr>
        <tr class="row1">
        <td>By</td>
        <td><input type="text" class="input_txtbx1" name="by" id="by" />&nbsp;&nbsp;&nbsp;(Authorized Company Representative)</td>
        </tr>
        <tr class="row1">
        <td>Please fax this back to</td>
        <td><input type="text" class="input_txtbx1" name="fax" id="fax" />&nbsp;&nbsp;&nbsp;(Clinic's Fax No)</td>
        </tr>
        <tr >
        <td></td>
        <td align="center ">Sincerly,</td>
        </tr>
        <tr class="row1">
        <td></td>
        <td align="center"><input type="text" class="input_txtbx1" name="name_of_clinic" id="name_of_clinic" placeholder="Name of clinic"/><br><span class="err"><form:errors path="Insuranceplan.name_of_clinic"></form:errors></td>
        </tr>
        <tr class="row1">
        <td><input type="text" class="input_txtbx1" name="pat" id="pat" placeholder="Patient"/><br><span class="err"><form:errors path="Insuranceplan.pat"></form:errors></td>
        <td align="center"><input type="text" class="input_txtbx1" name="authorized" id="authorized" placeholder="Authorized Clinic Representative"/><br><span class="err"><form:errors path="Insuranceplan.authorized"></form:errors></td>
        </tr>
       <!--  <tr>
        <td>Patient</td>
        <td align="center">Authorized Clinic Representative</td>
        </tr>
        </table>
        <br>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">  -->
        <tr>
       <!-- <td valign="top" align="center">&nbsp;</td>  -->
        <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save"></td>
        <td valign="top" align="center"><br><input type="reset" class="submit_btn" value="Cancel"></td>
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