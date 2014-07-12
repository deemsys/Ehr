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
	$("#insurance").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
  $(function() {
		$("#address").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});	 
  $(function() {
		$("#reg").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});	
  $(function() {
		$("#nameofperson").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});	
  $(function() {
		$("#datepicker").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
  $(function() {
		$("#subject").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
  </script>
   <script>

	function checkSubmit()

	{
	var error="";
		
		document.getElementById("error").innerHTML="";
		
		if(document.getElementById("insurance").value=="")
		{		
		document.getElementById("error").innerHTML="Required Field Should not be Empty";
		error="true";
		}
		document.getElementById("error").innerHTML="";
	    if(document.getElementById("insurance").value.length<4 || document.getElementById("insurance").value.length>=32)
	    {
	    	
	    	document.getElementById("error").innerHTML="Name should be min 4 and max 32";
	    	
	        error="true";
	    }
		document.getElementById("regerror").innerHTML="";
	if(document.getElementById("reg").value=="")
		{
		document.getElementById("regerror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
	document.getElementById("regerror").innerHTML="";
	    if(document.getElementById("reg").value.length<4 || document.getElementById("reg").value.length>=32)
	    {
	    	
	    	document.getElementById("regerror").innerHTML="Name should be min 4 and max 32";
	    	
	        error="true";
	    }
	document.getElementById("nameofpersonerror").innerHTML="";
	if(document.getElementById("nameofperson").value=="")
	{
	document.getElementById("nameofpersonerror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	document.getElementById("nameofpersonerror").innerHTML="";
	    if(document.getElementById("nameofperson").value.length<4 || document.getElementById("nameofperson").value.length>=32)
	    {
	    	
	    	document.getElementById("nameofpersonerror").innerHTML="Name should be min 4 and max 32";
	    	
	        error="true";
	    }

	
	
	document.getElementById("subjecterror").innerHTML="";
	if(document.getElementById("subject").value=="")
	{
	document.getElementById("subjecterror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	document.getElementById("subjecterror").innerHTML="";
	    if(document.getElementById("subject").value.length<4 || document.getElementById("subject").value.length>=32)
	    {
	    	
	    	document.getElementById("subjecterror").innerHTML="Name should be min 4 and max 32";
	    	
	        error="true";
	    }
	    document.getElementById("datepickererror").innerHTML="";
	    if (document.getElementById("datepicker").value=="") {
	    	document.getElementById("datepickererror").innerHTML="Required Field Should be not empty";
	    	error="true";
	    }
	
	var re = /^[mdy0-9]{2}\/[mdy0-9]{2}\/[mdy0-9]{4}$/;
		//Allow blank space in field
		if (document.getElementById("datepicker").value !="") {
		  if (re.test(document.getElementById("datepicker").value) == false) {
			  document.getElementById("datepickererror").innerHTML="Invalid Date Format";
			  error="true";
		  }
		}
		if(error=="true")
		{
		return false;
		}
	
	}

	</script>
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 $(function() {
           $( "#datepicker1" ).datepicker();
         });
</script>
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
</head>
 <body>
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
		alert("Please Enter Patient UserName");
		return false;
		}
	
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/perrychiropractic_ajax",  
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
		    	 var url="editperrychiropracticdetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    // alert(response.indexOf("|"));
			   //alert(response.substring(0,cal));
			 document.getElementById("nameofperson").value=response.substring(0,cal);
			   
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
<script>
i=0;
$(document).ready(function(){
  $("#datepicker").keypress(function(){
var phone=document.getElementById("datepicker").value;
phone = phone.replace(/^([\d]{2})([\d]{2})([\d]{4})$/,"$1/$2/$3"); 
document.getElementById("datepicker").value=phone;
 });  

});
</script>
//<script>
//function validatename(){
   // var textInput = document.getElementById("nameofperson").value;
    //textInput = textInput.replace(/[^A-Za-z ]/g, "");
    //document.getElementById("nameofperson").value = textInput;
//}
</script>
<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9/\]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
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
  <script>
  function dtval(d,e) {
var pK = e ? e.which : window.event.keyCode;
if (pK == 8) {d.value = substr(0,d.value.length-1); return;}
var dt = d.value;
var da = dt.split('/');
for (var a = 0; a < da.length; a++) {if (da[a] != +da[a]) da[a] = da[a].substr(0,da[a].length-1);}
if (da[0] > 31) {da[1] = da[0].substr(da[0].length-1,1);da[0] = '0'+da[0].substr(0,da[0].length-1);}
if (da[1] > 12) {da[2] = da[1].substr(da[1].length-1,1);da[1] = '0'+da[1].substr(0,da[1].length-1);}
if (da[2] > 9999) da[1] = da[2].substr(0,da[2].length-1);
dt = da.join('/');
if (dt.length == 2 || dt.length == 5) dt += '/';
d.value = dt;
}</script>
<div class='popup'>
<div class='cnt223'>
<br><br>
<c:if test="${success==true}">
<table width="400"><tr><td align="center"><b>Success!!!</b></td></tr></table>

</c:if>
<br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr >
	             <td valign="middle" align="left" class="input_txt" width="250"><span class="err">*</span>&nbsp;&nbsp;Please Enter Patient UserName:</td>
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
 
<div id="right_content">
<form action="insertperrychiropractic" method="POST">
<input type="hidden" name="user" id="user">
<table cellpadding="0" cellspacing="0" border="0" height="100" width="60%" class="margin_table">
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
	             <h2>PERRY CHIROPRACTIC & THERAPY CENTER OF CANTON, INC.</h2> 
	            </div>

	            <div class="contentbox">
	           
	            	                      <c:choose>
<c:when test="${empty peri}">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="290"></td>
              <td ><b>
Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="290"></td>
              <td ><b>5190 Detroit Road </b></td>
              </tr>
               <tr ><td width="290"></td>
              <td ><b> 
The Sheffield Village Plaza
</b></td>
              </tr>
              <tr ><td width="290"></td>
              <td ><b>Sheffield Village, OH 44035</b></td>
              </tr>
             
              <tr ><td width="290"></td>
              <td ><b>Phone (440) 934-3099 Fax (440) 934-3107 </b></td>
              </tr>
               </table>
                 <br>
                 <br>       
              
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><p align="center"><b>Form Cover Letter For Insurance Company, Copy To Attorney</b>
              </p>
              </tr>
               <tr ><td width="50%"></td>
              <td ><b>SENT BY CERTIFIED MAIL</b></td>
              </tr>
              <tr ><td width="50%"></td>
              <td ><b>PLEASE READ:  THIS IS NOTICE TO YOU OF</b></td>
              </tr>
              <tr ><td width="50%"></td>
              <td ><b>AN ATTACHED ASSIGNMENT OF </b></td>
              </tr>
               <tr ><td width="50%"></td>
              <td ><b>INSURANCE COVERAGE  FOR AN EXISTING </b></td>
              </tr>
               <tr ><td width="50%"></td>
              <td ><b> LOSS </b></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="50%"></td>
              <td ><b> PLEASE OPEN CLAIM IN ACCORD WITH  </b></td>
              </tr>
               <tr ><td width="50%"></td>
              <td ><b> BELOW.  </b></td>
              </tr>
              </table>
              <br>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              
               <tr ><td width="50%"></td>
              <td ><b>COPY TO PATIENT'S ATTORNEY.

 </b></td>
              </tr>
              </table>
              
              <br>
              <br>
              		<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err">*</span> Name of Insurance Company:</td>
              <td ><input type="text" class="input_txtbx1" name="insurance" id="insurance" onInput="return validatename(id)";/><br><span id="error"  style="color: red;font-style:italic;"></span><span class="err" id="insuranceerror"><form:errors path="Perrychiropractic.insurance"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span>&nbsp;&nbsp;Address:</td>
              <td ><textarea rows="" cols="" name="address"  id="address" class ="input_txtarea" style="width: 162px; height: 62px"></textarea><span class="err"><form:errors path="Perrychiropractic.address"></form:errors></td>
              </tr>
              </table>
             
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err">*</span> Regarding:</td>
              <td ><input type="text" class="input_txtbx1" name="reg" id="reg" onInput="return validatename(id)";/><br><font size="+1" color="red"><span id="regerror"  style="color: red;font-style:italic;" ><form:errors path="Perrychiropractic.reg"></form:errors></font></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err">*</span> Patient's Name/ Name of Person Entitled To Coverage: </td>
              <td ><input type="text" class="input_txtbx1" name="nameofperson" id="nameofperson" onInput="return validatename(id)";/><br><font size="+1" color="red"><span  id="nameofpersonerror" style="color: red;font-style:italic;" ><form:errors path="Perrychiropractic.nameofperson"></form:errors></span></font></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err">*&nbsp;</span>Date of Accident: </td>
              <td ><input type="text" class="input_txtbx1" name="dateofaccident" id="datepicker" maxlength="10" onkeypress="return validate(event)"; /><br><font size="+1" color="red"><span  id="datepickererror"><form:errors path="Perrychiropractic.dateofaccident"></form:errors></span></font></td>
              </tr>
              </table>
              
              <br>
              <br>       
              
                          
         	
              
       	<table cellpadding="0" cellspacing="0" border="0" width="100%">
       	<tr>
       	<td>
       	<p align="left">&nbsp;
       	Dear Madam or Sir:
     </p>
     <br>
     
  <p><span class="err">*</span>&nbsp;<input type="text" class="input_txtbx1" name="subject" id="subject" onInput="return validatename(id)";/><font size="+1" color="red"><span  id="subjecterror" style="color: red;font-style:italic;"><form:errors path="Perrychiropractic.subject"></form:errors></span></font> has sought medical treatment from this clinic.  This patient has been injured to an extent where the patient has determined that they cannot afford to pay for treatment on a fee for service basis.  We would definitely prefer to simply render the required treatment on a fee for service basis.  However, because fees for service presents a hardship to this patient, we have agreed to postpone payment for treatment pursuant to the attached medical proceeds assignment. </p>	
 <br>
     

<p>You are most likely aware of West Broad Chiropractic v. American Family Insurance, (2009) 122 Ohio St.3d 497, 2009-Ohio-3506.  In this recent case, the Ohio Supreme Court held that a medical provider could not bring a civil action against a third party insurer for ignoring a patient's assignment of a portion of expected proceeds from a tort claim, because at the time the patient made the assignment, the patient could not yet transfer the right to sue for settlement proceeds. 

</p>
 <br>
     
<p>
However, a different recent Ohio Supreme Court case confirms the validity of the attached assignment. Pilkington North America, Inc. v. Travelers Casualty & Surety Company (2005) 112 Ohio St. 3d 482, 861 N.E.2d 121  held that someone who is entitled to insurance coverage under a policy can assign future coverage payments from that insurance company, after a specific loss event has already occurred.  In the Pilkington case, the insurance company argued against this assignment, saying that its policy did not permit an assignment of any rights in the policy. The Ohio Supreme Court disagreed, and held that the anti-assignment provision in the policy did not apply to an assignment of coverage amounts for a loss that the insured person had already experienced.  Because of this decision, a person entitled to coverage under your policy with your insured can assign the right to pursue coverage amounts for an accident that has already occurred, over to someone he or she owes money.



</p>
 <br>
   <p align="center">In accord with the direct language of Pilkington, we are entitled, by written consent from the above patient:
   
   
   
   </p>  
     <br>
   <p align="left">  
     
     1. 	To open a claim with your company.

     
   </p>  
     <br>
<p align="left"> 2. 	To communicate with your company, and obtain information from your company about the status of this claim.



</p>  
     <br>
     
  <p align="left">   
     
     
    3. 	The patient cannot cancel this claim or receive payment for the claim, and neither can counsel for the patient. Any attempt to do this by the patient or counsel will be regarded as tortious or illegal interference.
 </p>  
     <br>
     
   <p>  
     The Pilkington case is not in conflict with the West Broad case:  As the Ohio Supreme Court makes clear in Pilkington, when a person entitled to coverage assigns over coverage for an auto accident that has already occurred, the patient is assigning a current contract right (called a 'chose in action') over to his or medical provider -that is, the current contract right to sue the insurance company for coverage amounts for an auto accident that has already occurred.
     
     </p>  
     <br>
     
     <p>
     
     We want to stress that we are not providing this information to you in advance for provocation; much to the contrary, we are trying to do everything possible at this point to reduce the possibility of any later disagreement. 
     
     </p>
     <br>
     <p>
     We hope that you understand that we are covering these issues in advance, so that our Clinic can provide the care that responds to our patient's medical complaints and symptoms.  We do not want to do this, and yet end up with nothing in the end.  The legal detail which we have provided in this letter reflects our advance consultation with our own legal counsel.  
     
     </p>
     <br>
     <p>
     
     The patient has provided specific instructions that direct payment for outstanding treatment fees should be made to this clinic. Please again note that the patient cannot cancel the claim for coverage from your company-and neither can the attorney for the patient. If you disregard this Assignment, in whole or in part, we will seek recovery of our outstanding treatment fees directly from your company, even if it requires commencement of suit.  However, we do not expect this type of problem.  We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which limit the patient's ability to pay for treatment when received.
     </p>
     <br>
     
     <p>
     
     <b>
     Please advise us in writing if you will not honor this Assignment.  Please note that this does not mean or imply that your obligation to pay us is subject to your consent.  It is not.  We are simply seeking to determine your intentions now so that we may protect ourselves before a default in our treatment fees.  If we do not receive a response, we will act in reliance that you will comply with its instructions.
    </b> </p>
     <br>
     
     
     
     
     
       </td>
       	
       	</tr>
       		
       		
       		 </table>
       		 <br>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%"><tr> 
       		 <td height="25" width="70%"><span class="err"></span></td>
       		  <td height="10" width="50%" align="center"><span class="err"></span>Sincerely,</td></tr>
        	  </table>
          
           <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr> 
       		 <td ><p align="right"> Perry Chiropractic & Therapy Center of Canton, Inc       
       		 <br><br>	  		
       	  
Dr. Darrin A. Pordash, D.C. 
       		   </p>
       		 </td>
       		<tr>
       		<td>
       	</td></tr>     		         		  
        	  </table>
           </c:when>
           <c:otherwise>
           
           <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="290"></td>
              <td ><b>Dr. Charles T. Yang, DC, DABFP</b></td>
              </tr>
              <tr ><td width="290"></td>
              <td ><b>4933 West Tuscarawas Street </b></td>
              </tr>
               <tr ><td width="290"></td>
              <td ><b> 
Canton, Ohio 44708
</b></td>
              </tr>
              <tr ><td width="290"></td>
              <td ><b>(330) 477-3036 Phone</b></td>
              </tr>
             
              <tr ><td width="290"></td>
              <td ><b>(330) 477-3037 Fax  </b></td>
              </tr>
               </table>
                 <br>
                 <br>       
              
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><p align="center"><b>Form Cover Letter For Insurance Company, Copy To Attorney</b>
              </p>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b>SENT BY CERTIFIED MAIL</b></td>
              </tr>
              <tr ><td width="70%"></td>
              <td ><b>PLEASE READ:  THIS IS NOTICE TO YOU OF</b></td>
              </tr>
              <tr ><td width="70%"></td>
              <td ><b>AN ATTACHED ASSIGNMENT OF </b></td>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b>INSURANCE COVERAGE  FOR AN EXISTING </b></td>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b> LOSS </b></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="70%"></td>
              <td ><b> PLEASE OPEN CLAIM IN ACCORD WITH  </b></td>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b> BELOW.  </b></td>
              </tr>
              </table>
              <br>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              
               <tr ><td width="70%"></td>
              <td ><b>COPY TO PATIENT'S ATTORNEY.

 </b></td>
              </tr>
              </table>
              
              <br>
              <br>
           
           
           
           	<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err">*</span>Name of Insurance Company:</td>
              <td ><input type="hidden" name="perryid" value="${peri.perryid }"><input type="text" class="input_txtbx1" name="insurance"  value="${peri.insurance}" id="insurance" /><span class="err" id="insuranceerror"><form:errors path="Perrychiropractic.insurance"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span>Address:</td>
              <td ><textarea rows="" cols="" name="address" id="address" style="width: 162px; height: 62px" >${peri.address }</textarea><span class="err"><form:errors path="Perrychiropractic.address"></form:errors></td>
              </tr>
              </table>
               
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err">*</span>Regarding:</td>
              <td ><input type="text" class="input_txtbx1" name="reg"  value="${peri.reg}"  id="reg" /><span class="err" id="regerror"  style="color: red;font-style:italic;"><form:errors path="Perrychiropractic.reg"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err">*</span>Patient's Name/ Name of Person Entitled To Coverage: </td>
              <td ><input type="text" class="input_txtbx1" name="nameofperson" value="${peri.nameofperson}"   id="nameofperson" /><span class="err" id="nameofpersonerror"><form:errors path="Perrychiropractic.nameofperson"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span>Date of Accident: </td>
              <td ><input type="text" class="input_txtbx1" name="dateofaccident"  value="${peri.dateofaccident}" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              
              <br>
              <br>       
              
                          
         	
              
       	<table cellpadding="0" cellspacing="0" border="0" width="100%">
       	<tr>
       	<td>
       	<p align="left">
       	Dear Madam or Sir:
     </p>
     <br>
     
  <p><span class="err">*</span><input type="text" class="input_txtbx1" name="subject" value="${peri.subject}"   id="subject" /><span class="err" id="subjecterror"  style="color: red;font-style:italic;"><form:errors path="Perrychiropractic.subject"></form:errors></span>has sought medical treatment from this clinic.  This patient has been injured to an extent where the patient has determined that they cannot afford to pay for treatment on a fee for service basis.  We would definitely prefer to simply render the required treatment on a fee for service basis.  However, because fees for service presents a hardship to this patient, we have agreed to postpone payment for treatment pursuant to the attached medical proceeds assignment. </p>	
 <br>
     

<p>You are most likely aware of West Broad Chiropractic v. American Family Insurance, (2009) 122 Ohio St.3d 497, 2009-Ohio-3506.  In this recent case, the Ohio Supreme Court held that a medical provider could not bring a civil action against a third party insurer for ignoring a patient's assignment of a portion of expected proceeds from a tort claim, because at the time the patient made the assignment, the patient could not yet transfer the right to sue for settlement proceeds. 

</p>
 <br>
     
<p>
However, a different recent Ohio Supreme Court case confirms the validity of the attached assignment. Pilkington North America, Inc. v. Travelers Casualty & Surety Company (2005) 112 Ohio St. 3d 482, 861 N.E.2d 121  held that someone who is entitled to insurance coverage under a policy can assign future coverage payments from that insurance company, after a specific loss event has already occurred.  In the Pilkington case, the insurance company argued against this assignment, saying that its policy did not permit an assignment of any rights in the policy. The Ohio Supreme Court disagreed, and held that the anti-assignment provision in the policy did not apply to an assignment of coverage amounts for a loss that the insured person had already experienced.  Because of this decision, a person entitled to coverage under your policy with your insured can assign the right to pursue coverage amounts for an accident that has already occurred, over to someone he or she owes money.



</p>
 <br>
   <p align="center">In accord with the direct language of Pilkington, we are entitled, by written consent from the above patient:
   
   
   
   </p>  
     <br>
   <p align="left">  
     
     1. 	To open a claim with your company.

     
   </p>  
     <br>
<p align="left"> 2. 	To communicate with your company, and obtain information from your company about the status of this claim.



</p>  
     <br>
     
  <p align="left">   
     
     
    3. 	The patient cannot cancel this claim or receive payment for the claim, and neither can counsel for the patient. Any attempt to do this by the patient or counsel will be regarded as tortious or illegal interference.
 </p>  
     <br>
     
   <p>  
     The Pilkington case is not in conflict with the West Broad case:  As the Ohio Supreme Court makes clear in Pilkington, when a person entitled to coverage assigns over coverage for an auto accident that has already occurred, the patient is assigning a current contract right (called a 'chose in action') over to his or medical provider -that is, the current contract right to sue the insurance company for coverage amounts for an auto accident that has already occurred.
     
     </p>  
     <br>
     
     <p>
     
     We want to stress that we are not providing this information to you in advance for provocation; much to the contrary, we are trying to do everything possible at this point to reduce the possibility of any later disagreement. 
     
     </p>
     <br>
     <p>
     We hope that you understand that we are covering these issues in advance, so that our Clinic can provide the care that responds to our patient's medical complaints and symptoms.  We do not want to do this, and yet end up with nothing in the end.  The legal detail which we have provided in this letter reflects our advance consultation with our own legal counsel.  
     
     </p>
     <br>
     <p>
     
     The patient has provided specific instructions that direct payment for outstanding treatment fees should be made to this clinic. Please again note that the patient cannot cancel the claim for coverage from your company-and neither can the attorney for the patient. If you disregard this Assignment, in whole or in part, we will seek recovery of our outstanding treatment fees directly from your company, even if it requires commencement of suit.  However, we do not expect this type of problem.  We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which limit the patient's ability to pay for treatment when received.
     </p>
     <br>
     
     <p>
     
     <b>
     Please advise us in writing if you will not honor this Assignment.  Please note that this does not mean or imply that your obligation to pay us is subject to your consent.  It is not.  We are simply seeking to determine your intentions now so that we may protect ourselves before a default in our treatment fees.  If we do not receive a response, we will act in reliance that you will comply with its instructions.
    </b> </p>
     <br>
     
     
     
     
     
       </td>
       	
       	</tr>
       		
       		
       		 </table>
       		 <br>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%"><tr> 
       		 <td height="25" width="70%"><span class="err"></span></td>
       		  <td height="25" width="50%"><span class="err"></span>Sincerely,</td></tr>
        	  </table>
           <br>
           <br>
           <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr> 
       		 <td ><p align="right"> Perry Chiropractic & Therapy Center of Canton, Inc       </p></td>
       		<tr>
       		<td>
       		<p align="right">
       		
       		  
       		  
       		    Dr. Charles T. Yang D.C. 
       		    </p></td></tr>     		         		  
        	  </table>
           
           
           
           </c:otherwise>
           </c:choose> 
            <table><tr> <td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
               <td><a href="viewallpatientdetails"style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
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
        	 