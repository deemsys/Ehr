<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 $(window).load(function(){
	  $("#enrollee").keyup(function() {
			
			 $("#enrolleeerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#enrolleeerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})

});
</script>
<script>

 $(function() {
	 $("#datepicker").datepicker({ changeMonth: true,changeYear: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'dd-mm-yy' });
		
      });
       
 
</script>
</head>
 <body>
<div id="right_content">
<form action="updateinsuranceplan" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="55%" class="margin_table">
       
      <tr>
        <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	             <h2>Editing Health Insurance Plan</h2> 
	            </div>
	            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              
               
              <tr class="row1">
              <c:set value="${insuranceplanform.insuranceplan[0]}" var="Insuranceplan"> </c:set>
              <td width="100%"><input type="text" class="input_txtbx1" name="insure_comp" id="insure_comp" placeholder="Name of Insurance Company" value="${Insuranceplan.insure_comp}" /><%-- <span class="err"><form:errors path="Insuranceplan.insure_comp"></form:errors> --%></td>
            	 <input type="hidden" class="input_txtbx1" id="inp_id" value="${Insuranceplan.no}" name="no" />
              </tr>
              <tr class="row1"> 
              <td width="100%">
              <input type="text" class="input_txtbx1" name="addr" id="addr" placeholder="Address" value="${Insuranceplan.addr}"/><%-- <span class="err"><form:errors path="Insuranceplan.addr"></form:errors> --%></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><br>
              <p id="mypar" align="center">Re:	SUBSCRIBER/ENROLLEE'S DECISION TO NOT USE INSURANCE 
		BENEFITS FOR ACCIDENT</p></tr></table>
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="pat_name" id="pat_name" placeholder="Patient's Name" value="${Insuranceplan.pat_name}"/><%-- <span class="err"><form:errors path="Insuranceplan.pat_name"></form:errors> --%></td>
        </tr>
        <tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="accident_date" id="datepicker" placeholder="Date of Accident" value="${Insuranceplan.accident_date}"/><%-- <span class="err"><form:errors path="Insuranceplan.accident_date"></form:errors> --%></td>
        </tr>
        <tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="enrollee" id="enrollee" placeholder="Subscriber/Enrollee No" value="${Insuranceplan.enrollee}" /><%-- <span class="err"><form:errors path="Insuranceplan.enrollee"></form:errors> --%>
        <br><span class="err" id="enrolleeerror"></span>
        </td>
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
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="checkbox" name="no_objection" value="no_objection" <c:if test="${Insuranceplan.no_objection=='no_objection'}"><c:out value="Checked"/></c:if>   />No Objection
        </td>
        </tr>
        <tr>
        <td>By</td>
        </tr> 
         <tr class="row1">
        <td><input type="text" class="input_txtbx1" name="agentname" id="agentname" placeholder="Authorized Company Representative" value="${Insuranceplan.agentname}"/><%-- <span class="err"><form:errors path="Insuranceplan.by"></form:errors> --%></td>
        <td></td>
        <td></td>
        </tr>
        <tr class="row1">
        <td width="100%">Please fax this back to&nbsp;&nbsp;
        <input type="text" class="input_txtbx1" name="fax" id="fax" placeholder="Clinic's Fax No" value="${Insuranceplan.fax}"/><br><%-- <span class="err"><form:errors path="Insuranceplan.fax"></form:errors> --%></td>
        <td width="100%"></td>
        <td></td>
        </tr>
        <tr >
        <td></td>
        <td align="center ">Sincerely,</td>
        </tr>
        <tr class="row1">
        <td></td>
        
        <td align="center"><input type="text" class="input_txtbx1" name="name_of_clinic" id="name_of_clinic" placeholder="Name of clinic" value="${Insuranceplan.name_of_clinic}"/><br><%-- <span class="err"><form:errors path="Insuranceplan.name_of_clinic"></form:errors> --%></td>
        <td></td>
        </tr>
        <tr class="row1">
        <td><input type="text" class="input_txtbx1" name="pat" id="pat" placeholder="Patient" value="${Insuranceplan.pat}"/><%-- <span class="err"><form:errors path="Insuranceplan.pat"></form:errors> --%></td>
        <td align="center"><input type="text" class="input_txtbx1" name="authorized" id="authorized" placeholder="Authorized Clinic Representative" value="${Insuranceplan.authorized}"/><br><%-- <span class="err"><form:errors path="Insuranceplan.authorized"></form:errors> --%></td>
        <td></td>
        </tr>
       </table>
       <br>
        <table>
        <tr>
     	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
        <td><br><input type="submit" class="submit_btn" value="Update"></td>
        <td>&nbsp;&nbsp;</td>
        <td><br><a href="deleteinsuranceplan" class="submit_btn" style="text-decoration: none;color:white">Delete</a></td>
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