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
function validatename(){
    var textInput = document.getElementById("patientname").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("patientname").value = textInput;
}
</script>
<script>
$(function() {
	$("#nameofins").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validatenameofins(){
    var textInput = document.getElementById("nameofins").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("nameofins").value = textInput;
}
$(function() {
	$("#nameofattorney").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validatenameofattorney(){
    var textInput = document.getElementById("nameofattorney").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("nameofattorney").value = textInput;
}
$(function() {
	$("#addr").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#address2").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#regarding").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validateregarding(){
    var textInput = document.getElementById("regarding").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("regarding").value = textInput;
}
$(function() {
	$("#patientname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validatepatientname(){
    var textInput = document.getElementById("patientname").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("patientname").value = textInput;
}
$(function() {
	$("#letter").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validateletter(){
    var textInput = document.getElementById("letter").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("letter").value = textInput;
}
$(function() {
	$("#letter1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validateletter1(){
    var textInput = document.getElementById("letter1").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("letter1").value = textInput;
}
function valid()
{
	var error="";
	document.getElementById("nameofinserror").innerHTML="";
	document.getElementById("datepicker1error").innerHTML="";
	document.getElementById("nameofattorneyerror").innerHTML="";
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

if(document.getElementById("nameofins").value=="")
        {
	document.getElementById("nameofinserror").innerHTML="Required Field Should not be Empty";
            
            error="true";
        }
        if(document.getElementById("nameofins").value.substring(0,1)==" ")
        {
	document.getElementById("nameofinserror").innerHTML="Invalid Name Of Insurance Company";
            
       error="true";
        }
        if(document.getElementById("nameofins").value!="")
        {
        
        if(document.getElementById("nameofins").value.length<4)
        {
	document.getElementById("nameofinserror").innerHTML="Required & must be of length 4 to 32.";
            
            error="true";
        }}

      if(document.getElementById("nameofattorney").value=="")
        {
    	  document.getElementById("nameofattorneyerror").innerHTML="Required Field Should not be Empty";
            error="true";
        }  
         if(document.getElementById("nameofattorney").value.substring(0,1)==" ")
        {
    	  document.getElementById("nameofattorneyerror").innerHTML="Invalid Name Of Attorney";
            error="true";
        }  
         if(document.getElementById("nameofattorney").value!="")
        {
        if(document.getElementById("nameofattorney").value.length<4)
        {
        
    	  document.getElementById("nameofattorneyerror").innerHTML="Required & must be of length 4 to 32.";
            error="true";
        }  }
         
         if(document.getElementById("addr").value!='')
        	 {
        	 if(document.getElementById("addr").value.substring(0,1)==' ')
        		 {
        		 document.getElementById("addrerror").innerHTML="Invalid Address";
        		error="true";
        		 }
        	 
        	 }
         
         if(document.getElementById("address2").value!='')
        	 {
        	 if(document.getElementById("address2").value.substring(0,1)==' ')
        		 {
        		 document.getElementById("address2error").innerHTML="Invalid Address";
        		error="true";
        		 }
        	 
        	 }
         document.getElementById("regerror").innerHTML="";
         if(document.getElementById("regarding").value!='')
        	 {
        	 
        	 if(document.getElementById("regarding").value.substring(0,1)==' ')
        		 {
        		 document.getElementById("regerror").innerHTML="Invalid Address";
        		error="true";
        		 }
        	 if(document.getElementById("regarding").value.length<4)
    		 {
    		 document.getElementById("regerror").innerHTML="Required & must be of length 4 to 32.";
    		error="true";
    		 }
        	 
        	 }
        	 
        
      document.getElementById("patientnameerror").innerHTML="";
        if(document.getElementById("patientname").value=="")
        {
        	 document.getElementById("patientnameerror").innerHTML="Required Field Should not be Empty";
            error="true";
        }  
         if(document.getElementById("patientname").value.substring(0,1)==" ")
        {
        	 document.getElementById("patientnameerror").innerHTML="Invalid PatientName";
            error="true";
        }  
	    if(document.getElementById("patientname").value.length<4)
	    {
	    	
	    	document.getElementById("patientnameerror").innerHTML="Required & must be of length 4 to 32.";
	    	
	        error="true";
	    }
        
        document.getElementById("lettererror").innerHTML="";
        if(document.getElementById("letter").value=="")
        {
        	 document.getElementById("lettererror").innerHTML="Required Field Should not be Empty";
            error="true";
        }  
         if(document.getElementById("letter").value.substring(0,1)==" ")
        {
        	 document.getElementById("lettererror").innerHTML="Invalid Data";
            error="true";
        }  
       
          if(document.getElementById("letter").value!="")          
        {
        if(document.getElementById("letter").value.length<4)
        {
         document.getElementById("lettererror").innerHTML="Required & must be of length 4 to 32.";
            error="true";
        }        	
        }  
          document.getElementById("letter1error").innerHTML="";
          if(document.getElementById("letter1").value!='')
     	 {
     	 
     	 if(document.getElementById("letter1").value.substring(0,1)==' ')
     		 {
     		 document.getElementById("letter1error").innerHTML="Invalid Data";
     		error="true";
     		 }
     	 if(document.getElementById("letter1").value.length<4)
 		 {
 		 document.getElementById("letter1error").innerHTML="Required & must be of length 4 to 32.";
 		error="true";
 		 }
     	 
     	 }
      
          if(error=="true")
        	  {
        	 
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
              <table width="100%"> <tr>
              <td width="257"></td><br>
              <td><p><b>PLEASE READ:THIS IS NOTICE TO YOU OF AN ASSIGNMENT</b></p>
              </td></tr></table>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td height="20" width="180"><span class="err">*</span>&nbsp;Name Of Insurance Company:</td>.
              
              <td ><input type="hidden" name="noticeid" value="${noticeassignmentdetails.noticeid }"><input type="text" class="input_txtbx1" name="nameofins" onInput="validatenameofins()" maxlength="32" value="${noticeassignmentdetails.nameofins }" id="nameofins" /><br><font color="red" size="+1"><span  id="nameofinserror"></span></font><form:errors path="Noticeassignment.nameofins"></form:errors></td>
              <td height="40" width="118" ><span class="err">&nbsp;&nbsp;*</span>&nbsp;Name Of Attorney:</td>
              <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="nameofattorney" onInput="validatenameofattorney()" maxlength="32" value="${noticeassignmentdetails.nameofattorney }" id="nameofattorney" /><font color="red" size="+1"><span id="nameofattorneyerror"></span></font><form:errors path="Noticeassignment.nameofattorney"></form:errors></span></td>
              </tr>
              </table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="180"><span class="err"></span>&nbsp;&nbsp;Address</td>
              <td  width="250"><textarea rows="" cols="" name="address1"  id="addr" class="input_txtarea" style="width: 175px; height: 64px" >${noticeassignmentdetails.address1 }</textarea>
           <br><font color="red" size="+1"><span id="addrerror"></span></font>
            </td>  <td height="40" width="85" style="width: 138px; " align="left"><span class="err"></span>&nbsp;Address:</td>
              <td >&nbsp;<textarea rows="" cols="" name="address2" id="address2" class="input_txtarea"style="width: 175px; height: 64px">${noticeassignmentdetails.address2 }</textarea><br><font color="red" size="+1"><span id="address2error"></span></font></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="180"><span class="err"></span>&nbsp;&nbsp;Regarding:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" maxlength="32" onInput="validateregarding()" value="${noticeassignmentdetails.regarding }" id="regarding" /><br><font color="red" size="+1"><span id="regerror"></font><form:errors path="noticeofassignment.regarding"></form:errors></span></td>                   
          </tr> 
          <tr>
            <td height="40" width="180"><span class="err">*</span>&nbsp;PatientName:</td>
              <td ><input type="text" class="input_txtbx1" name="patientname" maxlength="32" value= "${noticeassignmentdetails.patientname }" id="patientname" onInput="validatepatientname()";/><br><font color="red" size="+1"><span id="patientnameerror"></font><form:errors path="Noticeassignment.patientname"></form:errors></span></td>                      
          </tr> 
          <tr>
            <td height="30" width="180">&nbsp;&nbsp;Date Of Accident:</td>
              <td ><input type="text" class="input_txtbx1" name="dateofaccident" value= "${noticeassignmentdetails.dateofaccident }" id="datepicker1" /><br><font color="red" size="+1"><span id="datepicker1error"><form:errors path="noticeofassignment.dateofaccident"></font></form:errors></span></td>                      
          </tr> 
          <tr>
            <td height="20" width="180">&nbsp;&nbsp;Date:</td>
              <td ><input type="text" class="input_txtbx1" name="todaysdate"value="${noticeassignmentdetails.todaysdate }" id="datepicker2" /><br><font color="red" size="+1"><span id="datepicker2error"><form:errors path="noticeofassignment.todaysdate"></form:errors></span></font></td>                      
          </tr> <br>  
            </table>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td hight="20" width="250"><br><br><p align="left" id="mypar"><b><h4>Dear Madam/Sir:</h4></b></p></td></tr>
       		  </table>
       		
       		<table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="letter" onInput="validateletter()" maxlength="32" value="${noticeassignmentdetails.letter }" id="letter" /><font color="red" size="+1"><span id="lettererror"></span></font><form:errors path="noticeofassignment.letter"></form:errors>has sought medical treatment from this clinic.  This patient has been injured to an
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
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise us in writing by <input type="text" class="input_txtbx1" name="letter1"  onInput="validateletter1()" maxlength="32" value="${noticeassignmentdetails.letter1 }" id="letter1" /><font color="red" size="+1"><span id="letter1error"></span></font><form:errors path="noticeofassignment.letter1"></form:errors> if you will not honor our Assignment. If we 
do not receive a response, we will act in reliance that you will comply with it's instructions.
       		 </p></td></tr></table>
           <table border="0" width="100%">   <tr > <br> <td width="50"></td> <td width="400"></td> 
             <td align="center">
              <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sincerly,</b></td><br>
              </tr>
            <tr >
           <td ></td> <td ></td>
            <td height="10px" align="right">
           <p> <b>
               Dr. Darrin A. Pordash, D.C., B.A.C.<br> 
               Chiropractic Therapy Center
            </b></p>
            </td></tr>
             <tr >
            <td ></td>
            <td>
           <p> <b>
              
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