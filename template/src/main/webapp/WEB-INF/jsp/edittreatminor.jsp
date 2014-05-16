<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <link rel="stylesheet" href="/resources/css/style.css" />
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
  <script>

	function checkSubmit()


	

	{
		document.getElementById("datepickererror").innerHTML=" ";
		
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("pwitnesserror").innerHTML="";
	if(document.getElementById("pwitness").value=="")
		{
		document.getElementById("pwitnesserror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	}
			</script>
 </head>
<body>
<div id="right_content">
<form action="updatetreatminor" method="POST">

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
	            <div class="headings altheading">
	              <h2>Consent To Treat A minor</h2>
	            </div>
            <div class="contentbox">
           
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <c:set value="${treatminordetailsform.minorDetails[0]}" var="Minordetails"> </c:set>
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
                        <input type="hidden" class="input_txtbx1" id="inp_id" value="${Minordetails.minor_no}" name="minor_no" />
                        <p id="mypar">I (We) being the parent or guardian of <input type="text" class="input_txtbx1" id="inp_id" name="guardian" value="${Minordetails.guardian}"/><span class="err"><form:errors path="TreatMinor.guardian"></form:errors></span>, a minor, being the age of <input type="text" class="input_txtbx1" id="inp_id" name="age" value="${Minordetails.age}"/><span class="err"><form:errors path="TreatMinor.age"></form:errors></span> do hereby consent, authorize and request</p>
                        <p id="mypar">Dr.<input type="text" class="input_txtbx1" id="inp_id" name="drname" value="${Minordetails.drname}"/><span class="err"><form:errors path="TreatMinor.drname"></form:errors></span>to administer such treatment deemed advisable, necessary or requested on the above minor.</p>
                        <p id="mypar">I (We) agree to hold him free and harmless from any claims, suits for damages or complications which may result from such treatment.
                        
                        </p>
                        </div>
                        </tr>
                 
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err"></span>Signed:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="signed" value="${Minordetails.signed}"></td><span class="err"><form:errors path="TreatMinor.signed"></form:errors></span>
				                  <tr> <td></td></tr>
                        
                        </tr>
                        <tr class="row1">
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="pdate" value="${Minordetails.pdate}"/><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="TreatMinor.pdate"></form:errors></span>
                        </td>
                        </tr>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Witness: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="pwitness" name="pwitness" value="${Minordetails.pwitness}"/><span id="pwitnesserror" style="color: red;font-style:italic;" ><form:errors path="TreatMinor.pwitness"></form:errors></span>
				                  	</tr>
                        <tr>
                        </table>
                      
                         <table>
        <tr>
     	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
        <td><br><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
        <td>&nbsp;&nbsp;</td>
        <td><br><input type="button" class="submit_btn" value="Delete" onclick="window.location.href='deleteminor'"></td>
        </tr>
        </table>
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
                       