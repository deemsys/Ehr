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
 

<script type="text/javascript">
	function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Participant ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
	</script>
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
<script>
function valid()
{
document.getElementById("datepicker1error").innerHTML="";
var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
			  return false;
		  }
		} 
		document.getElementById("datepicker2error").innerHTML="";
		var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker2").value !="") {
		  if (re.test(document.getElementById("datepicker2").value) == false) {
			  document.getElementById("datepicker2error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}   
	document.getElementById("nameofinserror").innerHTML="";
if(document.getElementById("nameofins").value=="")
        {
	document.getElementById("nameofinserror").innerHTML="Required Field Should not be Empty";
            
            return false;
        }
document.getElementById("nameofattorneyerror").innerHTML="";
      if(document.getElementById("nameofattorney").value=="")
        {
    	  document.getElementById("nameofattorneyerror").innerHTML="Required Field Should not be Empty";
            return false;
        }  
        
      document.getElementById("patientnameerror").innerHTML="";
        if(document.getElementById("patientname").value=="")
        {
        	 document.getElementById("patientnameerror").innerHTML="Required Field Should not be Empty";
            return false;
        }  
        document.getElementById("lettererror").innerHTML="";
        if(document.getElementById("letter").value=="")
        {
        	 document.getElementById("lettererror").innerHTML="Required Field Should not be Empty";
            return false;
        }  
        document.getElementById("treatingphysicianerror").innerHTML="";
        if(document.getElementById("treatingphysician").value=="")
        {
        	 document.getElementById("treatingphysicianerror").innerHTML="Required Field Should not be Empty";
            return false;
        }   
        }

</script>
</head>
 <body>
<div id="right_content">
<form action="updatenoticeassignment" method="POST">
<c:set value="${noticeassignmentform.noticeassignmentdetails[0]}" var="noticeassignmentdetails"> </c:set>
<table cellpadding="0" cellspacing="0" border="0" height="100" width="70%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
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
             </table>
              <table> <tr>
              <td width="90"></td><br>
              <td><p><b>PLEASE READ:THIS IS NOTICE TO YOU OF AN ASSIGNMENT</b></p>
              </td></tr></table>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td height="20" width="180"><span class="err">*</span>Name Of Insurance Company:</td>.
              
              <td ><input type="hidden" name="noticeid" value="${noticeassignmentdetails.noticeid }"><input type="text" class="input_txtbx1" name="nameofins" value="${noticeassignmentdetails.nameofins }" id="nameofins" /><span class="err" id="nameofinserror"><form:errors path="Noticeassignment.nameofins"></form:errors></td>
              <td height="40" width="118" ><span class="err">&nbsp;&nbsp;*</span>Name Of Attorney:</td>
              <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="nameofattorney" value="${noticeassignmentdetails.nameofattorney }" id="nameofattorney" /><span class="err" id="nameofattorneyerror"><form:errors path="Noticeassignment.nameofattorney"></form:errors></span></td>
              </tr>
              </table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="180"><span class="err"></span>Address</td>
              <td  ><textarea rows="" cols="" name="address1"  class="input_txtarea" style="width: 175px; height: 64px" >${noticeassignmentdetails.address1 }</textarea>
            </td>  <td height="40" width="90" style="width: 138px; "><span class="err"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:</td>
              <td ><textarea rows="" cols="" name="address2"  class="input_txtarea"style="width: 175px; height: 64px">${noticeassignmentdetails.address2 }</textarea></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="180"><span class="err"></span>Regarding:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" value="${noticeassignmentdetails.regarding }" id="regarding" /><span class="err"><form:errors path="noticeofassignment.regarding"></form:errors></span></td>                   
          </tr> 
          <tr>
            <td height="40" width="180"><span class="err">*</span>PatientName:</td>
              <td ><input type="text" class="input_txtbx1" name="patientname" value= "${noticeassignmentdetails.patientname }" id="patientname" /><span class="err" id="patientnameerror"><form:errors path="Noticeassignment.patientname"></form:errors></span></td>                      
          </tr> 
          <tr>
            <td height="30" width="180">Date Of Accident:</td>
              <td ><input type="text" class="input_txtbx1" name="dateofaccident" value= "${noticeassignmentdetails.dateofaccident }" id="datepicker1" /><span class="err" id="datepicker1error"><form:errors path="noticeofassignment.dateofaccident"></form:errors></span></td>                      
          </tr> 
          <tr>
            <td height="20" width="180">Today'sDate:</td>
              <td ><input type="text" class="input_txtbx1" name="todaysdate"value="${noticeassignmentdetails.todaysdate }" id="datepicker2" /><span class="err" id="datepicker2error"><form:errors path="noticeofassignment.todaysdate"></form:errors></span></td>                      
          </tr> <br>  
            </table>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td hight="20" width="250"><br><br><p align="left" id="mypar"><b><h4>Dear Madam/Sir:</h4></b></p></td></tr>
       		  </table>
       		
       		<table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span><input type="text" class="input_txtbx1" name="letter" value="${noticeassignmentdetails.letter }" id="letter" /><span class="err" id="lettererror"></span><form:errors path="noticeofassignment.letter"></form:errors>has sought medical treatment from this clinic.  This patient has been injured to an
extent where the patient has determined that they cannot afford to pay for treatment on a fee for service basis.
We would definitely prefer to simply render the required treatment on a fee for service basis. However, because
 fees for service presents a hardship to this patient, we have agreed to postpone payment for treatment pursuant to the attached agreement assignment.
 </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The assignment is being used solely to accommodate this patient. Our financial interest has not been 
increased from a fee for service basis by our agreement to postpone collection of treatment fees; in fact, this method is less desirable to us than fee for service.
       		   </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; However, we cannot agree to postpone our fees and extend unsecured credit over the entire treatment 
period or longer. On some prior occasions, patients have received settlement proceeds directly from an insurer or
 from legal counsel, and have immediately claimed to be unable to pay for postponed treatment fees, or have filed 
for protection of creditors.
       		 </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The patient has provided specific instructions that direct payment for outstanding treatment fees should be
 made to this clinic. In the unlikely event that a person distributing proceeds from this patient's claim disregards the assignment, in whole or in part, and pays the patient directly, we would be forced to look for payment from that
 person, if payment is not immediately received from the patient. However, we do not expect this type of problem.
 We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which limit the patient's ability to pay for treatment when received.
       		  
       		 </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Upon completion of treatment, all exam sheets, doctor's notes, x-ray reports, and billing statements for our patient will be submitted to your office
       		  </p>
       		 </td></tr>
       		
        	 
               <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise us in writing by <input type="text" class="input_txtbx1" name="letter1" value="${noticeassignmentdetails.letter1 }" id="letter1" /><form:errors path="noticeofassignment.letter1"></form:errors> if you will not honor our Assignment. If we 
do not receive a response, we will act in reliance that you will comply with it's instructions.
       		 </p></td></tr></table>
             <table>   <tr > <br>  <td width="400"></td> 
             <td>
              <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sincerly,</b></td><br>
              </tr>
            <tr >
            <td ></td>
            <td>
           <p> <b>
               Dr. Darrin A. Pordash, D.C., B.A.C. 
            </b></p>
            </td></tr>
             <tr >
            <td ></td>
            <td>
           <p> <b>
               Chiropractic Therapy Center
            </b></p>
            </td></tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		 
              </tr><br>
              </table>
              
               <table><tr> <td><input type="submit" class="submit_btn" value="Update"  OnClick ="return valid();"></td>
           
               
               <td><a href="deletenoticeassignment?noticeid=${noticeassignmentdetails.noticeid}"style="color:white" class="submit_btn" onclick="return confirmation()" >Delete</a></td> 
               <td><a href="viewallpatientdetails"style="color:white" class="submit_btn">Cancel</a></td>
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