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
 $(function() {
           $( "#datepicker3" ).datepicker();
         });
$(function() {
           $( "#datepicker4" ).datepicker();
         });
         
        $(function() {
           $( "#datepicker5" ).datepicker();
         });


</script>
</head>
 <body>
 <div id="right_content" >
<form action="insertreturntoschool" method="POST">
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
        <p ><h2><center> CHIROPRACTIC THERAPY CENTER</h2></p>
        <p ><h4><center>Dr. Darrin A. Pordash D.C.<br>1590 Detroit Rd.<br>
       Sheffield Village, Ohio 44035<br>
        (440) 934-3099  FAX (440) 93403107</h4></p>	</td></tr></table>
        ___________________________________________________________________________________________________________________
          <div class="contentbox"><table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
        Date: <input type="text" class="input_txtbx1" name="date" id="datepicker1"><span class="err"><form:errors path="Returntoschool.date"></form:errors></span></td></tr></table>
</div>
        
        <div class="contentbox"> <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
This is to certify that
              <input type="text" class="input_txtbx1" name="name" id="name">
             is under my care. In order to avoid aggravation of his/her condition. I recommend that he/she…
              </td></tr></table><br>
</div>
        
        
   <div class="contentbox"> <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
              <input type="text" class="input_txtbx1" name="from" id="from">
             Be excused from:   WORK      SCHOOL      P.E.</td></tr>
             
             <tr><td> <input type="text" class="input_txtbx1" name="to" id="to">
             Be confined to:     LIGHT DUTY               MODIFIED DUTY<br>
              </td></tr></table>     
        
        
     <div class="contentbox"> <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
  <p><b>With the following restrictions:</b></p></td></tr></table>
  
  <div class="contentbox"> <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
             <tr><td> <select name="capability"><option value="10lbs">10lbs</option><option value="20lbs">20lbs</option><option value="30lbs">30lbs</option><option value="40lbs">40lbs</option><option value="50lbs">50lbs</option></select>
            Maximum lifting capability: 10 lbs.  20 lbs.  30 lbs. 40 lbs.  50 lbs.</td></tr>
                         <tr><td> <select name="force"><option value="10lbs">10lbs</option><option value="20lbs">20lbs</option><option value="30lbs">30lbs</option><option value="40lbs">40lbs</option><option value="50lbs">50lbs</option></select>
             Low force pushing/pulling   10 lbs.  20 lbs.  30 lbs. 40 lbs.  50 lbs.
              </td></tr>
              
              <tr><td>
              <input type="text" class="input_txtbx1" name="distance" id="distance">
           Unable to drive long distances (one hour maximum)</td></tr>
                         <tr><td> <select name="sittime"><option value="">1hrs</option><option value="">2hrs</option><option value="">3hrs</option><option value="">4hrs</option><option value="">5hrs</option></select>
             Sitting excessive periods of time:      1 hr.  2hrs.  3 hrs.  4hrs.  5hrs.
              </td></tr>
              
              <tr><td>
              <select name="standtime"><option value="">1hrs</option><option value="">2hrs</option><option value="">3hrs</option><option value="">4hrs</option><option value="">50lbs</option></select>
            Standing excessive periods of time:   1 hr.  2hrs.  3 hrs.  4hrs.  5hrs.</td></tr>
                         <tr><td> <input type="text" class="input_txtbx1" name="repetitive" id="repetitive">
             No repetitive bending
              </td></tr>
              
              <tr><td>
              <input type="text" class="input_txtbx1" name="cause" id="cause">
            Use caution while entering/exiting vehicles</td></tr>
                         <tr><td> <input type="text" class="input_txtbx1" name="recreate" id="recreate">
            Light recreation only
              </td></tr>
              
              </td></tr></table>
      
         <div class="contentbox"><table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
        From: (date) <input type="text" class="input_txtbx1" name="fromdate" id="datepicker2">to (date) <input type="text" class="input_txtbx1" name="todate" id="datepicker3"><span class="err"><form:errors path="Returntoschool.fromdate"></form:errors></span></td></tr></table>
        </div>
        
        <div class="contentbox"><table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 633px; "><tr><td>
        <input type="text" class="input_txtbx1" name="returnto" id="datepicker4">Return to Return Duty/School/P.E. on (date)<input type="text" class="input_txtbx1" name="ondate" id="datepicker5"><span class="err"><form:errors path="Returntoschool.ondate"></form:errors></span></td></tr></table>
        </div>
    <div class="contentbox"><table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
       Diagnosis <input type="text" class="input_txtbx1" name="diagnosis" id="diagnosis"></td></tr></table>
        </div>
        
        <div class="contentbox"><table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
       Please feel free to contact me at the above address/number if you have any questions.
</td></tr>
<tr><td>
Yours in health,
</tr></td><br>
 <tr><td><tr><td><input type="text" class="input_txtbx1" name="dr" id="dr">
Dr. Darrin A. Pordash</tr></td><br> 
</td></tr></table>
        </div>
        
   <table align="left" cellpadding="0" cellspacing="0" border="0" width="70%">
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><input type="reset" class="submit_btn" value="Cancel"></td>
              <td>&nbsp;&nbsp;</td>
        	  </tr>
        	  </table>      
        
        
  </div>
  </td></tr>
  </table>
  </div>
  </form>
  </div>
  </body>
  </html>
        
        
        
        