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
		    url: "/EhrApp/lettertopatients_ajax",  
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
		    	 var url="editlettertopatients?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    /*  alert(response.indexOf("|"));
			   alert(response.substring(0,cal)); */
			 //  document.getElementById("patientname").value=response.substring(0,cal);
			   
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

 <c:if test="${success==true}">
<table width="400"><tr><td align="center">Success!!!</td></tr></table>

</c:if>
 
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
  <script>298-70-2433
i=0;
$(document).ready(function(){
  $("#ssn").keypress(function(){
var phone=document.getElementById("ssn").value;
phone = phone.replace(/(\d{3})(\d{2})(\d+)/, '$1-$2-$3');
document.getElementById("phone").value=phone;
 });  
</script>

<script>

  $(window).load(function(){
	  
	
$("#ssn").keyup(function() {
	
	 $("#ssn").html(''); 
	/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
	var a= /^[0-9]{3}[-\s\.]{0,1}[0-9]{2}[-\s\.]{0,1}[0-9]{4}$/;
	//var intRegex = /^\d+$/;
	if(a.test($(this).val())||$(this).val()=='') 
	{
		var $in = $(this).val();		 
	}
	else if($(this).val()!='')
		{
		
		$("#ssn").html('Kindly enter a number ');
		}
}).keydown(function() {
   oldValue = $(this).val();
})

});
</script>



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
<script>
function checkSubmit()
	{
		
	document.getElementById("reerror").innerHTML="";
	if(document.getElementById("re").value=="")
	{
	document.getElementById("reerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("ssnerror").innerHTML="";
	if(document.getElementById("ssn").value=="")
	{
	document.getElementById("ssnerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	} 
	document.getElementById("claimerror").innerHTML="";
	
	if(document.getElementById("claim").value=="")
	{
	document.getElementById("claimerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
	{
	document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	}

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
	                <c:choose>
<c:when test="${empty letterto}">
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
              <td height="25" width="120"><span class="err">*</span>RE:</td>
              <td ><input type="text" class="input_txtbx1" name="re" id="re" placeholder="Medical bill" /><span class="reerr" id="reerror"><form:errors path="Lettertopatients.re"></form:errors></span></td>
              </tr>
              </table>
            
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>SSN:</td>
              <td ><input type="text" class="input_txtbx1" name="ssn" id="ssn" placeholder="298-70-2433" maxlength="11" /><span class="err" id="ssnerror"><form:errors path="Lettertopatients.ssn"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Claim:</td>
              <td ><input type="text" class="input_txtbx1" name="claim" id="claim" placeholder="35W899112"  /><span class="err" id="claimerror"><form:errors path="Lettertopatients.claim"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>DOI:</td>
              <td ><input type="text" class="input_txtbx1" name="doi" id="datepicker" placeholder="05-26-02" /><span class="err" id="datepickererror"><form:errors path="Lettertopatients.doi"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Adjuster:</td>
              <td ><input type="text" class="input_txtbx1" name="adjuster" id="adjuster" placeholder="Kathy Porcella" /></td>
              </tr>
              </table>
              
             	<input type="text" name="user" id="user"  style="visibility:hidden">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td hight="20" width="250"><br><br><p align="left" id="mypar"><b><h4>Dear Ms Barbara Wilmoth:</h4></b></p></td></tr>
       		  </table>
       		
       		 <table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;On <input type="text" class="input_txtbx1" name="date1" id="datepicker1" /> you received a check for compensation, sent to you by State Farm Insurance, your check included medical payment from the at fault insurance company which was to be paid to our office upon receipt.  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Condition of your treatment based upon the signed lien, dictate that upon payments received from the insurance company, which includes a portion for medical compensation, shall be paid in full to Chiropractic Therapy Center for services rendered. Violation of the signed lien will constitute insurance fraud. Criminal charges and a civil lawsuit will be filed if payment is not received within 3 days. <input type="text" class="input_txtbx1" name="date2" id="datepicker2" /></td>  </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Furthermore, it will also be turned over to collections and your credit will be reported to the Credit Bureau.</p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         Attached you will find itemized charges for your care. To avoid legal action, please submit payment. To avoid legal action, please submit payment in full to Chiropractic Therapy Center. Your total bill to be paid to Chiropractic Therapy Center is <input type="text" class="input_txtbx1" name="letter" id="letter" />.
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
              <b><span class="err">*</span>Darrin A. Pordash D.C.</b></td></tr>
              <tr> <td width="600"></td>  <td><input type="text" class="input_txtbx1" name="sign" id="sign" /><span class="err" id="signerror"><form:errors path="Lettertopatients.sign"></form:errors> </span>
       		 </td></tr>
       		 </table>
       		 </c:when>
       		 <c:otherwise>
       		 
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
              <td height="25" width="120"><span class="err">*</span>RE:</td>
              <td ><input type="hidden" name="letterid" id="letterid" value="${letterto.letterid }" /><input type="text" class="input_txtbx1" name="re" value="${letterto.re }" id="re" /><span class="err" id="reerror"><form:errors path="Lettertopatients.re"></form:errors></td>
              </tr>
              </table>
            
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>SSN:</td>
              <td ><input type="text" class="input_txtbx1" name="ssn" id="ssn" value="${letterto.ssn }"/><span class="err" id="ssnerror"><form:errors path="Lettertopatients.ssn"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>CLAIM:</td>
              <td ><input type="text" class="input_txtbx1" name="claim" id="claim" value="${letterto.claim }" /><span class="err" id="claimerror"><form:errors path="Lettertopatients.claim"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>DOI:</td>
              <td ><input type="text" class="input_txtbx1" name="doi" id="datepicker" value="${letterto.doi }" /><span class="err" id="datepickererror"><form:errors path="Lettertopatients.doi"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>ADJUSTER:</td>
              <td ><input type="text" class="input_txtbx1" name="adjuster" id="adjuster" value="${letterto.adjuster }" /><span class="err"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
              
             
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td hight="20" width="250"><br><br><p align="left" id="mypar"><b><h4>Dear Ms Barbara Wilmoth:</h4></b></p></td></tr>
       		  </table>
       		
       		 <table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;On <input type="text" class="input_txtbx1" name="date1" id="datepicker1" value="${letterto.date1 }" />you received a check for compensation, sent to you by State Farm Insurance, your check included medical payment from the at fault insurance company which was to be paid to our office upon receipt.  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Condition of your treatment based upon the signed lien, dictate that upon payments received from the insurance company, which includes a portion for medical compensation, shall be paid in full to Chiropractic Therapy Center for services rendered. Violation of the signed lien will constitute insurance fraud. Criminal charges and a civil lawsuit will be filed if payment is not received within 3 days. <input type="text" class="input_txtbx1" name="date2" id="datepicker2" value="${letterto.date2 }"  /></td>  </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Furthermore, it will also be turned over to collections and your credit will be reported to the Credit Bureau.</p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         Attached you will find itemized charges for your care. To avoid legal action, please submit payment. To avoid legal action, please submit payment in full to Chiropractic Therapy Center. Your total bill to be paid to Chiropractic Therapy Center is <input type="text" class="input_txtbx1" name="letter" id="letter" value="${lettertopatientsdetails.letter }" />.
       		 </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If there are any questions, please feel free to contact my office. </p>
       		 </td></tr>
       		 </table>
        	 
              
             <table>   <tr>   <td width="600"></td> 
             <td>
              <b>Sincerly,</b></td>
              
              <tr> <td width="600"></td> <td>
              <b><span class="err">*</span>Darrin A. Pordash D.C.</b></td></tr>
              <tr> <td width="600"></td>  <td><input type="text" class="input_txtbx1" name="sign" id="sign" value="${letterto.sign }"/>.<span class="err" id="signerror"><form:errors path="Lettertopatients.sign"></form:errors> </span>
       		</td></tr>
       		 </table>
       		 
       		 
       		 
       		 
       		 </c:otherwise>
       		 </c:choose>
       		   <table><tr> <td><input type="submit" class="submit_btn" value="Save" onclick="return checkSubmit('this');"></td>
               <td><a href="viewlettertopatients"style="color:white" class="submit_btn">Cancel</a></td>
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