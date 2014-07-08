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
$(function() {
	$("#datepicker").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#tos").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#faxno").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#froms").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#re").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#nos").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#msg").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#claimno").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#datepicker1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
</script>
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
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
<script>
function validateusername(){
    var textInput = document.getElementById("faxno").value;
    textInput = textInput.replace(/[^0-9()-]/g, "");
    document.getElementById("faxno").value = textInput;
}

</script>
<script>
function validateusername1(){
    var textInput = document.getElementById("claimno").value;
    textInput = textInput.replace(/[^A-Z0-9]/g, "");
    document.getElementById("claimno").value = textInput;
}

</script>
 <script>

	function checkSubmit()
	{
		var error="";
		document.getElementById("datepickererror").innerHTML=" ";
		
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		document.getElementById("datepickererror").innerHTML="";
		 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker").value.match(datechk)==null)
    	{
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
        error="true";
    	}	

  

		document.getElementById("toserror").innerHTML="";
		if(document.getElementById("tos").value=="")
		{
		document.getElementById("toserror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		document.getElementById("faxnoerror").innerHTML="";
		var phoneno = /^\(?[(]??([0-9]{3})\)?[)]?([0-9]{3})[-]?([0-9]{4})$/;  
    if(document.getElementById("faxno").value!=""){
	    if(document.getElementById("faxno").value.match(phoneno)==null)
	    {
	    	document.getElementById("faxnoerror").innerHTML="Invalid phone Format";
	    	
	        error="true";
	    }
		}
	   if(document.getElementById("faxno").value!="")
	   {
		if(document.getElementById("faxno").value.length<13)
		{
		document.getElementById("faxnoerror").innerHTML="Invalid phone number format";
		error="true";
		
		}
	   }
		
		if(document.getElementById("faxno").value!="")
		{
		
	    var txt1=document.getElementById("faxno").value;
	   var txt2=txt1.substring(1,4);
	   var txt3=txt1.substring(5,8);
	     if(txt2==000 && txt3==000){
	   document.getElementById("faxnoerror").innerHTML="Invalid phone number format";
		error="true";
		}
		
		}
	document.getElementById("fromerror").innerHTML="";
	if(document.getElementById("froms").value=="")
	{
	document.getElementById("fromerror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	
	document.getElementById("msgerror").innerHTML="";
	if(document.getElementById("msg").value=="")
	{
	document.getElementById("msgerror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	document.getElementById("claimnoerror").innerHTML="";
	if(document.getElementById("claimno").value=="")
	{
	document.getElementById("claimnoerror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	
	document.getElementById("datepicker1error").innerHTML="";
	if(document.getElementById("datepicker1").value=="")
	{
	document.getElementById("datepicker1error").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
  document.getElementById("datepicker1error").innerHTML="";
	 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker1").value.match(datechk)==null)
    {
    	document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
    	
        error="true";
    }	

	if(error=="true")

		{
		return false;
		}
	}

	</script>
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
	
	<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
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
		    url: "/EhrApp/faxcover_ajax",  
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
		    	 var url="editfaxcoverdetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			   /*   alert(response.indexOf("|"));
			   alert(response.substring(0,cal)); */
			  // document.getElementById("patientname").value=response.substring(0,cal);
			   
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
	             <td valign="middle" align="left" class="input_txt" width="250"><span class="err">*</span>&nbsp;&nbsp;Please Enter Patient UserName</td>
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




<script>
 $(window).load(function(){
	 	  $("#faxno").keyup(function() {
			
			 $("#faxerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			/*var intRegex = /^\d+$/;*/
			var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
			if(a.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#faxerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		
		</script>
<script>
i=0;
$(document).ready(function(){
  $("#faxno").keypress(function(){
var phone=document.getElementById("faxno").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("faxno").value=phone;
 });  

});
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
<form action="insertfaxcover" method="POST" >

<table cellpadding="0" cellspacing="0" border="0" height="100" width="50%" class="margin_table">
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
	              <c:choose>
<c:when test="${empty fax}">
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road </b></td>
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
              <td height="25" width="120"><span class="err">*</span>&nbsp;Today's Date:</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" style="width: 164px; "/><br><font size="+1" color="red"><span id="datepickererror"></font><form:errors path="Faxcover.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>&nbsp;To:</td>
              <td ><input type="text" class="input_txtbx1" name="tos" id="tos" style="width: 164px; " onInput="return validatename(id)";/><br><font size="+1" color="red"><span  id="toserror"><form:errors path="Faxcover.tos"></form:errors></span></font></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Fax#:</td>
              <td ><input type="text" class="input_txtbx1" name="faxno" placeholder="(000)000-0000" id="faxno" maxlength=13 onInput="return validateusername()"; onkeypress="return validate(event)"; style="width: 164px; "/><br><font size="+1" color="red"><span  id="faxnoerror"></span></font><form:errors path="Faxcover.faxno"></form:errors>
              </span><span class="err" id="faxerror"></span>
              </td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>&nbsp;From:</td>
              <td ><input type="text" class="input_txtbx1" name="froms" id="froms" style="width: 164px; " onInput="return validatename(id)";/><br><font size="+1" color="red"><span  id="fromerror"></span></font><form:errors path="Faxcover.froms"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Fax:</td>
              <td> (330) 477-3037	</td>
       	</tr></table><br><br>
       	<input type="hidden" name="user" id="user">
     <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="120">
     	<input type="radio" name="reply" value="URGENT" class="input_txt" checked="true" id="urgent">Urgent&nbsp;&nbsp;&nbsp;<span class="err" id="urgenterror"></span><input type="radio" name="reply" value="FOR REVIEW" class="input_txt" id="forreview">For Review&nbsp;&nbsp;
     	<span class="err" id="forreviewerror"></span><input type="radio" name="reply" value="PLEASE COMMENT" class="input_txt" checked="true">Please Comment&nbsp;&nbsp;<input type="radio" name="reply" value="PLEASE REPLY" class="input_txt">Please Reply&nbsp;&nbsp;
     	</td>
     	</tr>
     	</table><br><br>
     	<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="20%"><span class="err"></span>RE:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" id="re" style="width: 164px; " onInput="return validatename(id)";/><span class="err" id="reerror"><form:errors path="Faxcover.regarding"></form:errors></td>
              <td align="left" style="width: 159px; "><span class="err"></span>Number Of Pages Sent:</td>
              <td ><input type="text" class="input_txtbx1" name="pages" id="nos" onkeypress="return validate(event)"; /><span class="err" id="noserror"><form:errors path="Faxcover.pages"></form:errors></td>
              </tr>
             
              <tr>
              <td height="25" width="20%"><span class="err">*</span>&nbsp;Message:</td>
              <td style="width: 215px; "><input type="text" class="input_txtbx1" name="msg" id="msg" style="width: 164px; " onInput="return validatename(id)";/><br><font size="+1" color="red"><span  id="msgerror"><form:errors path="Faxcover.msg"></form:errors></span></font></td>
            <td align="left" style="width: 132px; "><span class="err">*</span>&nbsp;Claim Number:</td>
              <td ><input type="text" class="input_txtbx1" name="claimno" id="claimno" onInput="return validateusername1()"; style="width: 163px; "/><br><font size="+1" color="red"><span id="claimnoerror"></span></font><form:errors path="Faxcover.claimno"></form:errors>
              </span><span class="err" id="number"></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="20%"><span class="err">*</span> DOI</td>
              <td height="25" width="45%"><input type="text" class="input_txtbx1" name="doi" id="datepicker1" style="width: 164px; "/><br><font size="+1" color="red"><span  id="datepicker1error"></font><form:errors path="Faxcover.msg"></form:errors></td>
            <td align="left"><span class="err"></span></td>
              <td style="width: 188px; " align="right"></td>
              </tr>
              </table>
       	<table>
       	<tr>
       	<td>
       	<p>
       	<h4>
     If we donot hear from you within 7 business days, We will assume you will honour our assignment.</h4></p>
  <p><h4>If you have any questions or concerns,please feel free to contact.</h4> </p>	


       </td>
       	
       	</tr>
       		
       		 <tr><td>
       		 <p align="right"><b>
       		 THANK YOU		
       		 </b></p>
       		 </td></tr>
       		 </table>
       		  
        	  
            <div>
            <p align="justify">	*The information contained in this transmission is privileged and confidential.  It is intended only for the use of the individual or entity named above.  If the reader of this message is not the intended recipient, you are hereby notified that any dissemination, distribution, or copy of this communication is prohibited.  If you have received this communication in error, please notify me immediately. </p>	
            </div>
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
              <td ><b>(330) 477-3037 Fax  </b></td>
              </tr>
              </table><br><br>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Today's Date:</td>
              <td ><td><input type="hidden" name="faxid" value="${fax.faxid }"><input type="text" class="input_txtbx1" name="date" value="${fax.date }" id="datepicker" /><span class="err"><form:errors path="Faxcover.date"></form:errors></td>
             </td> </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>TO:</td>
              <td ><input type="text" class="input_txtbx1" name="tos" value="${fax.tos }" id="datepicker" /><span class="err"><form:errors path="Faxcover.tos"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">
             </span>FAX#:</td>
              <td ><input type="text" class="input_txtbx1" name="faxno" value="${fax.faxno }" id="faxno" maxlength=11/><span class="err"><form:errors path="Faxcover.faxno"></form:errors>
              </span><span class="err" id="faxerror"></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>FROM:</td>
              <td ><input type="text" class="input_txtbx1" name="froms" value="${fax.froms }" id="datepicker" /><span class="err"><form:errors path="Faxcover.froms"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>FAX:</td>
              <td> (330) 477-3037	</td>
       	</tr></table><br><br>
     <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="120">
     	<input type="radio" name="reply" value="URGENT" class="input_txt" <c:if test="${fax.reply=='URGENT'}"><c:out value="checked=checked"/></c:if> checked="true">URGENT&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="FOR REVIEW"<c:if test="${fax.reply=='FOR REVIEW'}"><c:out value="checked=checked"/></c:if> class="input_txt">FOR REVIEW&nbsp;&nbsp;&nbsp;
     	<input type="radio" name="reply" value="PLEASE COMMENT" class="input_txt" <c:if test="${fax.reply=='PLEASE COMMENT'}"><c:out value="checked=checked"/></c:if> >PLEASE COMMENT&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="PLEASE REPLY" <c:if test="${fax.reply=='PLEASE REPLY'}"><c:out value="checked=checked"/></c:if> class="input_txt">PLEASE REPLY&nbsp;&nbsp;&nbsp;
     	</td>
     	</tr>
     	</table><br><br>
     	<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>RE:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" value="${fax.regarding }" id="datepicker" /><span class="err"><form:errors path="Faxcover.regarding"></form:errors></td>
              <td ><span class="err"></span>Number Of Pages Sent:</td>
              <td ><input type="text" class="input_txtbx1" name="pages" value="${fax.pages }" id="datepicker" /><span class="err"><form:errors path="Faxcover.pages"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>Message:</td>
              <td ><input type="text" class="input_txtbx1" name="msg" value="${fax.msg }" id="datepicker" /><span class="err"><form:errors path="Faxcover.msg"></form:errors></td>
            <td ><span class="err">*</span>Claim No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="text" class="input_txtbx1" name="claimno"value="${fax.claimno }" id="claimno" /><span class="err"><form:errors path="Faxcover.claimno"></form:errors>
              </span><span class="err" id="number"></span></td>
             <tr>
              <td height="25" width="120"><span class="err">*</span>DOI</td>
              <td ><input type="text" class="input_txtbx1" name="doi" value="${fax.doi }" id="datepicker1" /><span class="err"><form:errors path="Faxcover.doi"></form:errors></td>
             </tr>
              </tr>
              
              </table><br><br>
       	<table>
       	
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	IF WE DO NOT HEAR FROM YOU WITHIN 7 BUSINESS DAYS, WE WILL ASSUME	

	YOU WILL HONOR OUR ASSIGNMENT.
  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IF YOU HAVE ANY QUESTIONS OR CONCERNS, PLEASE FEEL FREE TO CONTACT	

	ME AT YOUR EARLIEST CONVENIENCE.
  </p>
       		 </td>
       		 </tr>
       		
       		 <tr><td>
       		 <p align="right"><b>
       		 THANK YOU		
       		 </b></p>
       		 </td></tr>
       		 </table>
       		  
        	   <div>
            <p align="justify">	*The information contained in this transmission is privileged and confidential.  It is intended only for the use of the individual or entity named above.  If the reader of this message is not the intended recipient, you are hereby notified that any dissemination, distribution, or copy of this communication is prohibited.  If you have received this communication in error, please notify me immediately. </p>	
            </div>
            </c:otherwise>
            </c:choose>
            <table><tr> <td><input type="submit" class="submit_btn" id="saveid" value="Save" onclick="return checkSubmit('this');"></td>
               <td><a href="viewallpatientdetails"style="color:white" id="cancelid" class="submit_btn">Cancel</a></td>
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
        	 