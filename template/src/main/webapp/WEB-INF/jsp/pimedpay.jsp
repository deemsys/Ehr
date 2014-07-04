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
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}


</script>
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
	$("#dearsir").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});		
</script>
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
		    url: "/EhrApp/pimedpay_ajax",  
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
		    	 var url="editpimedpaydetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			   /*  alert(response.indexOf("|"));
			   alert(response.substring(0,cal));*/
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
<div class='popup'>
<div class='cnt223'>
<br><br>
<c:if test="${success==true}">
<table width="400"><tr><td align="center"><b>Success!!!</b></td></tr></table>

</c:if>
<br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr >
	             <td valign="middle" align="left" class="input_txt" width="250"><span class="err">*</span> Please enter Patient UserName:	</td>
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
           $( "#datepicker" ).datepicker();
         });
  $(function() {
           $( "#datepicker1" ).datepicker();
         });
</script>
<!-- <script>
function validatename(){
    var textInput = document.getElementById("nameofperson").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("nameofperson").value = textInput;
}
</script> -->
<script>

	function checkSubmit()
	{
		document.getElementById("inserror").innerHTML="";
		if(document.getElementById("insurance").value=="")
		{
		document.getElementById("inserror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("inserror").innerHTML="";
	    if(document.getElementById("insurance").value.length<4 || document.getElementById("insurance").value.length>=32)
	    {
	    	
	    	document.getElementById("inserror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	     document.getElementById("regerror").innerHTML="";
	if(document.getElementById("reg").value!="")
	{
	if(document.getElementById("reg").value.length<4 || document.getElementById("reg").value.length>=32)
	    {
	    	
	    	document.getElementById("regerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	}    
		document.getElementById("nameerror").innerHTML="";
		
		if(document.getElementById("nameofperson").value=="")
		{
		document.getElementById("nameerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("nameerror").innerHTML="";
	    if(document.getElementById("nameofperson").value.length<4 || document.getElementById("nameofperson").value.length>=32)
	    {
	    	
	    	document.getElementById("nameerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		
		document.getElementById("dateerror").innerHTML="";
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("dateerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("dateerror").innerHTML="Invalid Date Format";
    	
        return false;
    }	
		document.getElementById("suberror").innerHTML="";
		
		if(document.getElementById("dearsir").value=="")
		{
		document.getElementById("suberror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("suberror").innerHTML="";
	    if(document.getElementById("dearsir").value.length<4 || document.getElementById("dearsir").value.length>=32)
	    {
	    	
	    	document.getElementById("suberror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		/* document.getElementById("datepickererror").innerHTML="";
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required field should not be empty";
		
		return false;
		} */
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
<form action="insertpimedpay" method="POST">
<input type="hidden" name="user" id="user" value="${username}">
<table cellpadding="0" cellspacing="0" border="0" width="70%" class="margin_table">
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
	            
	             <form target="popup" action="perrychiropracticsearch" onsubmit="window.open('', this.target,    'width=300,height=300,resizable,scrollbars=yes'); return true;">

</form>    
	            <script>
function openWindow(h, w, url) {
  leftOffset = (screen.width/2) - w/2;
  topOffset = (screen.height/2) - h/2;
  window.open(url, this.target, 'left=' + leftOffset + ',top=' + topOffset + ',width=' + w + ',height=' + h + ',resizable,scrollbars=yes');

}
</script>
	            
	             <c:choose>
<c:when test="${empty medpay}">
	            <div class="contentbox">
	                
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Charles T. Yang, DC, DABFP</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>4933 West Tuscarawas Street </b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>Canton, Ohio 44708</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>(330) 477-3036 Phone</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>(330) 477-3037 Fax  </b></td></tr>
             </table><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="center">  <h2><b>MED PAY WARNING LETTER</b></h2> </td>
              </tr>
 </table><br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="right"><b><u>SENT BY CERTIFIED MAIL</u></b> </td>
              </tr>
               <tr> <td align="right"><b>PLEASE READ:  THIS IS NOTICE TO YOU OF


</b> </td>
              </tr>
               <tr> <td align="right"><b>AN ATTACHED ASSIGNMENT OF INSURANCE


</b> </td>
              </tr>
              </tr>
               <tr> <td align="right"><b>COVERAGE  FOR AN EXISTING LOSS





</b> </td>
              </tr>
 </table><br>
 
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="40%"><span class="err">*</span> Name of Insurance Company</td>
              <td ><input type="text" class="input_txtbx1" name="insurance" id="insurance" onInput="return validatename(id)";/><span class="err" id="inserror"><form:errors path="Pimedpay.insurance"></form:errors></td>
              </tr>
              </table>
              
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="40%"><span class="err">&nbsp;</span>Address </td>
              <td><textarea rows="" cols="" name="address"  class="input_txtbx1" id="address"style="width: 169px; height: 62px"></textarea><span class="err"><form:errors path="Pimedpay.address"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="40%"><span class="err">&nbsp;</span>Regarding: </td>
              <td><input type="text" class="input_txtbx1" name="reg" id="reg" onInput="return validatename(id)";><span class="err" id="regerror"></span></td>
              </tr>
              </table>
          
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="40%"><span class="err">*</span> Patient's Name</td>
              <td><input type="text" class="input_txtbx1" name="nameofperson" id="nameofperson" onInput="return validatename(id)";><span class="err" id="nameerror"><form:errors path="Pimedpay.nameofperson"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="40%"><span class="err">*</span> Date of Accident: </td>
              <td><input type="text" class="input_txtbx1" name="dateofaccident" id="datepicker"><span class="err" id="dateerror"><form:errors path="Pimedpay.dateofaccident"></form:errors></span></td>
              </tr>
              </table><br><br>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="70"><span class="err">&nbsp;</span><b>Dear Madam or Sir:</b></td>
              
           </td></tr>	
             </table>
            
             <table>
             <tr><td><br><br><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <span class="err">*</span><input type="text" class="input_txtbx1" name="subject" id="dearsir" onInput="return validatename(id)";><span class="err" id="suberror"><form:errors path="Pimedpay.subject"></form:errors></span> has sought and received medical treatment from this clinic.  Our patient made an assignment over to us of med pay proceeds to which we are entitled to receive from your company. You have received notice of this assignment by certified mail.
             
             </p>
             </td></tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You are most likely aware of West Broad Chiropractic v. American Family Insurance, (2009) 122 Ohio St.3d 497, 2009-Ohio-3506.  In this recent case, the Ohio Supreme Court held that a medical provider could not bring a civil action against a third party insurer for ignoring a patient's assignment of a portion of expected proceeds from a tort claim, because at the time the patient made the assignment, the patient could not yet transfer the right to sue for settlement proceeds. 
             </p> 
             </td>
             </tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;However, a different recent Ohio Supreme Court case confirms the validity of the attached assignment. Pilkington North America, Inc. v. Travelers Casualty & Surety Company (2005) 112 Ohio St. 3d 482, 861 N.E.2d 121  held that someone who is entitled to insurance coverage under a policy can assign future coverage payments from that insurance company, after a specific loss event has already occurred.  In the Pilkington case, the insurance company argued against this assignment, saying that its policy did not permit an assignment of any rights in the policy. The Ohio Supreme Court disagreed, and held that the anti-assignment provision in the policy did not apply to an assignment of coverage amounts for a loss that the insured person had already experienced.  Because of this decision, a person entitled to coverage under your policy with your insured can assign the right to pursue coverage amounts for an accident that has already occurred, over to someone he or she owes money.
             </td>
             </tr>
               <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The patient cannot cancel this claim or receive payment for the claim, and neither can counsel for the patient. Any attempt to do this by the patient or counsel will be regarded as tortious or illegal interference.
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Pilkington case is not in conflict with the West Broad case:  As the Ohio Supreme Court makes clear in Pilkington, when a person entitled to coverage assigns over coverage for an auto accident that has already occurred, the patient is assigning a current contract right (called a 'chose in action') over to his or medical provider - that is, the current contract right to sue the insurance company for coverage amounts for an auto accident that has already occurred.
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We want to stress that we are not providing this information to you in advance for provocation; much to the contrary, we are trying to do everything possible at this point to reduce the possibility of any later disagreement. 
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We hope that you understand that we are covering these issues in advance, so that our Clinic can provide the care that responds to our patient's medical complaints and symptoms.  We do not want to do this, and yet end up with nothing in the end.  The legal detail which we have provided in this letter reflects our advance consultation with our own legal counsel.  
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The patient has provided specific instructions that direct payment for outstanding treatment fees should be made to this clinic. Please again note that the patient cannot cancel the claim for coverage from your company-and neither can the attorney for the patient. 
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If you disregard this Assignment, in whole or in part, we will seek recovery of our outstanding treatment fees directly from your company, even if it requires commencement of suit.  However, we do not expect this type of problem.  We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which limit the patient's ability to pay for treatment when received.
             </td>
             </tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise us in writing if you will not honor this Assignment.  Please note that this does not mean or imply that your obligation to pay us is subject to your consent.  It is not.  We are simply seeking to determine your intentions now so that we may protect ourselves before a default in our treatment fees.  If we do not receive a response, we will act in reliance that you will comply with its instructions.
             </td>
             </tr>
             </table>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td><br>	
	<p align="right"><b>Sincerly,</b>
	</p>
	
<p align="right">Perry Chiropractic & Therapy Center of Canton, Inc
	</p>
<br>		</td></tr></table>

<!-- 		
             <table>
             <tr>
             <td ><p><h1> <b>Sincerly,</b></h1><p></td></tr>
           
            <tr><td ><h1><b>Perry Chiropractic & Therapy Center of Canton, Inc.</b></h1></td></tr>
             </table><br> -->
             </c:when>
             <c:otherwise>
              <div class="contentbox">
	                
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Charles T. Yang, DC, DABFP</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>4933 West Tuscarawas Street </b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>Canton, Ohio 44708</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>(330) 477-3036 Phone</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>(330) 477-3037 Fax  </b></td></tr>
             </table><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="center">  <h2><b>MED PAY WARNING LETTER</b></h2> </td>
              </tr>
 </table><br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr> <td align="right"><b><u>SENT BY CERTIFIED MAIL</u></b> </td>
              </tr>
               <tr> <td align="right"><b>PLEASE READ:  THIS IS NOTICE TO YOU OF


</b> </td>
              </tr>
               <tr> <td align="right"><b>AN ATTACHED ASSIGNMENT OF INSURANCE


</b> </td>
              </tr>
              </tr>
               <tr> <td align="right"><b>COVERAGE  FOR AN EXISTING LOSS





</b> </td>
              </tr>
 </table><br>
 
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="180"><span class="err">*</span>Name of Insurance Company</td>
              <td ><input type="hidden" name="medpayid" value="${medpay.medpayid }"><input type="text" class="input_txtbx1" name="insurance" value="${medpay.insurance }"  id="insurance" /><span class="err"><form:errors path="Pimedpay.insurance"></form:errors></td>
              </tr>
              </table>
              
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="180"><span class="err"></span>Address </td>
              <td><textarea rows="" cols="" name="address" id="address"style="width: 162px; height: 62px">${medpay.address }</textarea><span class="err"><form:errors path="Pimedpay.address"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="180"><span class="err"></span>Regarding: </td>
              <td><input type="text" class="input_txtbx1" name="reg" value="${medpay.reg }" ></td>
              </tr>
              </table>
          
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="180"><span class="err">*</span>Patient's Name</td>
              <td><input type="text" class="input_txtbx1" name="nameofperson" value="${medpay.nameofperson }"  id="nameofperson"><span class="err"><form:errors path="Pimedpay.nameofperson"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="180"><span class="err">*</span>Date of Accident: </td>
              <td><input type="text" class="input_txtbx1" name="dateofaccident" value="${medpay.dateofaccident }"  id="datepicker"><span class="err"><form:errors path="Pimedpay.dateofaccident"></form:errors></span></td>
              </tr>
              </table><br><br>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="70"><span class="err"></span><b>Dear Madam or Sir:</b></td>
              
           </td></tr>	
             </table>
            
             <table>
             <tr><td><br><br><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	       <span class="err">*</span> <input type="text" class="input_txtbx1" name="subject" value="${medpay.subject }" id="dearsir"><span class="err"><form:errors path="Pimedpay.subject"></form:errors></span> has sought and received medical treatment from this clinic.  Our patient made an assignment over to us of med pay proceeds to which we are entitled to receive from your company. You have received notice of this assignment by certified mail.
             
             </p>
             </td></tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You are most likely aware of West Broad Chiropractic v. American Family Insurance, (2009) 122 Ohio St.3d 497, 2009-Ohio-3506.  In this recent case, the Ohio Supreme Court held that a medical provider could not bring a civil action against a third party insurer for ignoring a patient's assignment of a portion of expected proceeds from a tort claim, because at the time the patient made the assignment, the patient could not yet transfer the right to sue for settlement proceeds. 
             </p> 
             </td>
             </tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;However, a different recent Ohio Supreme Court case confirms the validity of the attached assignment. Pilkington North America, Inc. v. Travelers Casualty & Surety Company (2005) 112 Ohio St. 3d 482, 861 N.E.2d 121  held that someone who is entitled to insurance coverage under a policy can assign future coverage payments from that insurance company, after a specific loss event has already occurred.  In the Pilkington case, the insurance company argued against this assignment, saying that its policy did not permit an assignment of any rights in the policy. The Ohio Supreme Court disagreed, and held that the anti-assignment provision in the policy did not apply to an assignment of coverage amounts for a loss that the insured person had already experienced.  Because of this decision, a person entitled to coverage under your policy with your insured can assign the right to pursue coverage amounts for an accident that has already occurred, over to someone he or she owes money.
             </td>
             </tr>
               <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The patient cannot cancel this claim or receive payment for the claim, and neither can counsel for the patient. Any attempt to do this by the patient or counsel will be regarded as tortious or illegal interference.
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Pilkington case is not in conflict with the West Broad case:  As the Ohio Supreme Court makes clear in Pilkington, when a person entitled to coverage assigns over coverage for an auto accident that has already occurred, the patient is assigning a current contract right (called a 'chose in action') over to his or medical provider - that is, the current contract right to sue the insurance company for coverage amounts for an auto accident that has already occurred.
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We want to stress that we are not providing this information to you in advance for provocation; much to the contrary, we are trying to do everything possible at this point to reduce the possibility of any later disagreement. 
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We hope that you understand that we are covering these issues in advance, so that our Clinic can provide the care that responds to our patient's medical complaints and symptoms.  We do not want to do this, and yet end up with nothing in the end.  The legal detail which we have provided in this letter reflects our advance consultation with our own legal counsel.  
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The patient has provided specific instructions that direct payment for outstanding treatment fees should be made to this clinic. Please again note that the patient cannot cancel the claim for coverage from your company-and neither can the attorney for the patient. 
             </td>
             </tr>
              <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If you disregard this Assignment, in whole or in part, we will seek recovery of our outstanding treatment fees directly from your company, even if it requires commencement of suit.  However, we do not expect this type of problem.  We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which limit the patient's ability to pay for treatment when received.
             </td>
             </tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise us in writing if you will not honor this Assignment.  Please note that this does not mean or imply that your obligation to pay us is subject to your consent.  It is not.  We are simply seeking to determine your intentions now so that we may protect ourselves before a default in our treatment fees.  If we do not receive a response, we will act in reliance that you will comply with its instructions.
             </td>
             </tr>
             </table>
             <table>
             <tr><td></td>
             <td ><p><h1> <b>Sincerly,</b></h1><p></td></tr>
           
            <tr><td width="410"></td><td ><h1><b>Perry Chiropractic & Therapy Center of Canton, Inc.</b></h1></td></tr>
             </table><br>
             
             </c:otherwise>
             </c:choose>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
              <td>&nbsp;&nbsp;</td>
             <td><a href="viewpimedpay" style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
              <td>&nbsp;&nbsp;</td>
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