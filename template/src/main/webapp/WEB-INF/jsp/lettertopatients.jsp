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
</script>
</head>
 <body>
<div id="right_content">
<form action="insertlettertopatient" method="POST">

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
	             <h2>CHIROPRACTIC THERAPY CENTER</h2> 
	            </div>
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road</b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>The Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village, OH 44035</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>Phone (440) 934-3099 Fax (440) 934-3107 </b></td>
              </tr>
              </table><br><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>RE:</td>
              <td ><input type="text" class="input_txtbx1" name="re" id="re" placeholder="Medical bill" /><span class="err"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
            
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>SSN:</td>
              <td ><input type="text" class="input_txtbx1" name="ssn" id="re" placeholder="298-70-2433" /><span class="err"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Claim:</td>
              <td ><input type="text" class="input_txtbx1" name="claim" id="claim" placeholder="35W899112" /><span class="err"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>DOI:</td>
              <td ><input type="text" class="input_txtbx1" name="doi" id="datepicker" placeholder="05-26-02" /><span class="err"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Adjuster:</td>
              <td ><input type="text" class="input_txtbx1" name="adjuster" id="adjuster" placeholder="Kathy Porcella" /><span class="err"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
              
             
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td hight="20" width="250"><br><br><p align="left" id="mypar"><b><h4>Dear Ms Barbara Wilmoth:</h4></b></p></td></tr>
       		  </table>
       		
       		 <table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;On <input type="text" class="input_txtbx1" name="date1" id="datepicker1" /><form:errors path="Workschool.returndate"></form:errors> you received a check for compensation, sent to you by State Farm Insurance, your check included medical payment from the at fault insurance company which was to be paid to our office upon receipt.  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Condition of your treatment based upon the signed lien, dictate that upon payments received from the insurance company, which includes a portion for medical compensation, shall be paid in full to Chiropractic Therapy Center for services rendered. Violation of the signed lien will constitute insurance fraud. Criminal charges and a civil lawsuit will be filed if payment is not received within 3 days. <input type="text" class="input_txtbx1" name="date2" id="datepicker2" /><span class="err"><form:errors path="Workschool.returndate"></form:errors></td>  </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Furthermore, it will also be turned over to collections and your credit will be reported to the Credit Bureau.</p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         Attached you will find itemized charges for your care. To avoid legal action, please submit payment. To avoid legal action, please submit payment in full to Chiropractic Therapy Center. Your total bill to be paid to Chiropractic Therapy Center is <input type="text" class="input_txtbx1" name="letter" id="letter" />.<span class="err"><form:errors path="Lettertopatients.letter"></form:errors> </span>
       		 </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If there are any questions, please feel free to contact my office. </p>
       		 </td></tr>
       		 </table>
        	 
              
             <table>   <tr>   <td width="600"></td> 
             <td>
              <p align="right"><b>Sincerly,</b></p></td>
              
              <tr> <td width="600"></td> <td>
              <b>Darrin A. Pordash D.C.</b></td></tr>
              <tr> <td width="600"></td>  <td><input type="text" class="input_txtbx1" name="sign" id="sign" /><span class="err"><form:errors path="Lettertopatients.letter"></form:errors> </span>
       		 </td></tr>
       		 </table>
       		   <table><tr> <td><input type="submit" class="submit_btn" value="Save"></td>
               <td><a href="responseattorney"style="color:white" class="submit_btn">Cancel</a></td>
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