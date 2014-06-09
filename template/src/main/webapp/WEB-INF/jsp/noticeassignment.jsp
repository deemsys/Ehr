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
 <style type="text/css">
#overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.cnt223 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.cnt223{
min-width: 400px;
width: 400px;
min-height: 150px;
margin: 100px auto;
background: #f3f3f3;
position: relative;
z-index: 103;
padding: 10px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
}
.cnt223 p{
clear: both;
color: #555555;
text-align: justify;
}
.cnt223 p a{
color: #d91900;
font-weight: bold;
}
.cnt223 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.cnt223 .x:hover{
cursor: pointer;
}
</style>
<script type='text/javascript'>
$(function(){
var overlay = $('<div id="overlay"></div>');
overlay.show();
overlay.appendTo(document.body);

$('.popup').show();
$('.close').click(function(){
$('.popup').hide();
overlay.appendTo(document.body).remove();
return false;
});

$('.x').click(function(){
$('.popup').hide();

overlay.appendTo(document.body).remove();
return false;
});
});
</script>
<script type="text/javascript">
function doAjaxPost() {  
	
	var username = $('#username').val();
	if(username=="")
		{
		alert("Please Enter Patient Username");
		return false;
		}
	
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/notice_ajax",  
		    data: "username=" + username,
		    success: function(response){  
		    	
		      // we have the response
		      //alert("response"+response);
		     //alert(response.substring(0,4));
		     //alert(response.substring(4,response.length));
		     
		     if(response=='error')
		    	 {
		    	 alert("The Patient UserId does not exist Please check the UserId");
		    	 }
		     else if(response.substring(0,4)=='edit')
		    	  {
		    	 var sub1=response.indexOf("|")+1;		    	 
		    	 var url="editnoticeassignment?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    /*  alert(response.indexOf("|"));
			   alert(response.substring(0,cal)); */
			   //document.getElementById("patientname").value=response.substring(0,cal);
			   
		    	 document.getElementById("user").value=response.substring(calculate,response.length);
		    	
		    	 $('.popup').hide();
		    	 $('#overlay').remove();
		    	
		      // $('#info').html(response);
		       
		     /*   
		       $('div#overlay').RemoveAttr('id','none');
		       alert("hi");
		       var overlay = $('<div id="overlay"></div>');
		   	   overlay.show();		      	
		     
		        
		       overlay.appendTo(document.body).remove();
		       
		      return false; */
		    	  }	   
		      
		    
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });  
		}  
	

</script>
<div class='popup'>
<div class='cnt223'>
<c:if test="${success==true}">
<table width="400"><tr><td align="center"><b>Success!!!</b></td></tr></table>
</c:if>
<br><br><br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
	            <tr >
	             <td valign="middle" align="left" class="input_txt" width="250"><span class="err">*</span>Please enter a Patient User Name</td>
				 <td width="20"></td> <td valign="top" align="left" class="input_txt" width="200">
				   <input type="text" class="input_txtbx1" id="username" name="username" /><br/>
				  </td>
				  </tr>
				  <tr height="50"></tr>
				<tr><td align="right"><input type="submit" value="Submit" class="submit_btn" onclick="doAjaxPost()" ></td>
				<td></td><td align="left"><a href="viewallpatientdetails" class="submit_btn" >Cancel</a></td>
				</tr>
				  </table>
				  <br><br>



</div>
</div>

 
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
<script>
  function printPage(id)
  {
	
	        document.getElementById('print').style.visibility = 'hidden';
	        document.getElementById('saveid').style.visibility = 'hidden';
	        document.getElementById('cancelid').style.visibility = 'hidden';
		 
		  
     var html="<html>";
     html+= document.getElementById(id).innerHTML;

     html+="</html>";

     var printWin = window.open('','','left=0,top=0,width=1400,height=1000,toolbar=0,scrollbars=0,status  =0');
     printWin.document.write(html);
     printWin.document.close();
     printWin.focus();
     printWin.print();
     printWin.close();
     document.getElementById('print').style.visibility = 'visible';
     document.getElementById('saveid').style.visibility = 'visible';
     document.getElementById('cancelid').style.visibility = 'visible';
  }
  </script>
</head>
 <body>
<div id="right_content">
<form action="insertnoticeofassignment" method="POST">

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
        	<div id="block1">
	            <div class="headings altheading">
	              <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
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
             <c:choose>
             <c:when test="${empty notice}">
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td width="25%" ><span class="err">*</span>Name Of Insurance Company:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="text" class="input_txtbx1" name="nameofins" id="nameofins" /><span class="err" id="nameofinserror"><form:errors path="noticeerror.nameofins"></form:errors></td>
              <td ><span class="err">*</span>Name Of Attorney:</td>
              <td ><input type="text" class="input_txtbx1" name="nameofattorney" id="nameofattorney" /><span class="err" id="nameofattorneyerror"><form:errors path="noticeerror.nameofattorney"></form:errors></span></td>
              </tr>
              </table><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="25%" ><span class="err"></span>Address</td>
              <td  ><textarea rows="" cols="" name="address1" style="width: 174px; height: 64px" class="input_txtarea" id="addr"></textarea>
            </td>  <td  ><span class="err"></span>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="" cols="" name="address2"  class="input_txtarea"style="width: 176px; height: 64px"></textarea></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              
              <td ><span class="err"></span>Regarding:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" id="regarding" /><span class="err"><form:errors path="noticeofassignment.regarding"></form:errors></span><br></td>                   
          </tr> 
          <tr>
            <td width="25%"><span class="err">*</span>PatientName:</td>
              <td ><input type="text" class="input_txtbx1" name="patientname" id="patientname" value="${username}"/><span class="err" id="patientnameerror"><form:errors path="noticeerror.patientname"></form:errors></span><br></td>                      
          </tr> 
          <tr>
            <td width="25%">Date Of Accident:</td>
              <td ><input type="text" class="input_txtbx1" name="dateofaccident" id="datepicker1" /><span class="err"><form:errors path="noticeerror.dateofaccident"></form:errors></span><br></td>                      
          </tr> 
          <tr>
            <td width="25%">Today'sDate:</td>
              <td ><input type="text" class="input_txtbx1" name="todaysdate" id="datepicker2" /><span class="err"><form:errors path="noticeerror.todaysdate"></form:errors></span><br></td>                      
          </tr> <br>  
            </table>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td ><br><br><p align="left" id="mypar"><b><h4>Dear Madam/Sir:</h4></b></p></td></tr>
       		  </table>
       		
       		<table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span><input type="text" class="input_txtbx1" name="letter" id="letter" /><span class="err" id="lettererror"><form:errors path="noticeerror.letter"></form:errors></span>has sought medical treatment from this clinic.  This patient has been injured to an
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
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise us in writing by <input type="text" class="input_txtbx1" name="letter1" id="letter1" /><form:errors path="noticeofassignment.letter1"></form:errors> if you will not honor our Assignment. If we 
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
             </c:when>
             <c:otherwise>
             
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td height="20" width="180"><span class="err">*</span>Name Of Insurance Company:</td>.
              
              <td ><input type="hidden" name="noticeid" value="${notice.noticeid }"><input type="text" class="input_txtbx1" name="nameofins" value="${notice.nameofins }" id="name" /><span class="err"><form:errors path="noticeerror.nameofins"></form:errors></td>
              <td height="40" width="110" ><span class="err">&nbsp;&nbsp;*</span>Name Of Attorney:</td>
              <td >&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="nameofattorney" value="${notice.nameofattorney }" id="name" /><span class="err"><form:errors path="noticeerror.nameofattorney"></form:errors></span></td>
              </tr>
              </table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="180"><span class="err"></span>Address</td>
              <td  ><textarea rows="" cols="" name="address1" style="width: 175px; height: 64px" >${notice.address1 }</textarea>
            </td>  <td height="40" width="90" style="width: 138px; "><span class="err"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:</td>
              <td ><textarea rows="" cols="" name="address2" style="width: 175px; height: 64px">${notice.address2 }</textarea></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="180"><span class="err"></span>Regarding:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" value="${notice.regarding }" id="regarding" /><span class="err"><form:errors path="noticeerror.regarding"></form:errors></span></td>                   
          </tr> 
          <tr>
            <td height="40" width="180"><span class="err">*</span>PatientName:</td>
              <td ><input type="text" class="input_txtbx1" name="patientname"value= "${notice.patientname }" id="patientname" /><span class="err"><form:errors path="noticeerror.patientname"></form:errors></span></td>                      
          </tr> 
          <tr>
            <td height="30" width="180">Date Of Accident:</td>
              <td ><input type="text" class="input_txtbx1" name="dateofaccident" value= "${notice.dateofaccident }" id="datepicker1" /><span class="err"><form:errors path="noticeerror.dateofaccident"></form:errors></span></td>                      
          </tr> 
          <tr>
            <td height="20" width="180">Today'sDate:</td>
              <td ><input type="text" class="input_txtbx1" name="todaysdate"value="${notice.todaysdate }" id="datepicker2" /><span class="err"><form:errors path="noticeerror.todaysdate"></form:errors></span></td>                      
          </tr> <br>  
            </table>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td hight="20" width="250"><br><br><p align="left" id="mypar"><b><h4>Dear Madam/Sir:</h4></b></p></td></tr>
       		  </table>
       		
       		<table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span><input type="text" class="input_txtbx1" name="letter" value="${notice.letter }" id="letter" /><span class="err"><form:errors path="noticeerror.letter"></form:errors></span>has sought medical treatment from this clinic.  This patient has been injured to an
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
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise us in writing by <input type="text" class="input_txtbx1" name="letter1" value="${notice.letter1 }" id="letter1" /><form:errors path="noticeerror.letter1"></form:errors> if you will not honor our Assignment. If we 
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
             
             
             
             
             </c:otherwise>
                        
             </c:choose>
              
              
              <input type="text" name="user" id="user"  style="visibility:hidden">
              
             
              <table><tr> <td><input type="submit" class="submit_btn" id="saveid" value="Save" OnClick ="return valid();"></td>
               <td><a href="viewnoticeassignment"style="color:white" id="cancelid" class="submit_btn">Cancel</a></td>
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