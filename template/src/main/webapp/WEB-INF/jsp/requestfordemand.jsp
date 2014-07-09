<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquery-1.9.1.js"></script>
 
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
	$("#tonum").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validatetonum(){
    var textInput = document.getElementById("tonum").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("tonum").value = textInput;
}
$(function() {
	$("#copymedpay").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validatecopymedpay(){
    var textInput = document.getElementById("copymedpay").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("copymedpay").value = textInput;
}
$(function() {
	$("#copyform").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validatecopyform(){
    var textInput = document.getElementById("copyform").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("copyform").value = textInput;
}
$(function() {
	$("#copyassign").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validatecopyassign(){
    var textInput = document.getElementById("copyassign").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("copyassign").value = textInput;
}
$(function() {
	$("#greencard").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validategreencard(){
    var textInput = document.getElementById("greencard").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("greencard").value = textInput;
}
$(function() {
	$("#defaultattorney").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validatedefaultattorney(){
    var textInput = document.getElementById("defaultattorney").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("defaultattorney").value = textInput;
}
$(function() {
	$("#txtare").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
function validateclinicrep(){
    var textInput = document.getElementById("clinicrep").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("clinicrep").value = textInput;
}
i=0;
$(document).ready(function(){
  $("#fax").keypress(function(){
var phone=document.getElementById("fax").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/,'$1-$2-$3');
document.getElementById("fax").value=phone;
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
		alert("Please Enter Patient UserName");
		return false;
		}
	
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/requestdemand_ajax",  
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
		    	 var url="editrequestdemand?username="+response.substring(sub1,response.length);
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
<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
<div class='popup'>
<div class='cnt223'>
<c:if test="${success==true}">
<table width="400"><tr><td align="center">Success!!!</td></tr></table>

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
 
</script>
<script>

	function checkSubmit()
	{
		var error="";
		if(document.getElementById("tonum").value!='')
			{
			if(document.getElementById("tonum").value.substring(0,1)==' ')
					{
				document.getElementById("tonumerror").innerHTML="Invalid Data";
				error="true";
					}
			if(document.getElementById("tonum").value.length<4)
				{
				document.getElementById("tonumerror").innerHTML="Required & must be of length 4 to 32.";
				error="true";
				}
			
			}
		document.getElementById("faxerror").innerHTML="";
		if(document.getElementById("fax").value!='')
			{	
			
		if(document.getElementById("fax").value.length<12)
		{
		document.getElementById("faxerror").innerHTML="Invalid phone number format";
		 error="true";
		
		}}
		var phoneno = /^\(?[(]??([0-9]{3})\)?[)]?([0-9]{3})[-]?([0-9]{4})$/;  
		if(document.getElementById("fax").value!='')
		{	
		
	    if(document.getElementById("fax").value.match(phoneno)==null)
	    {
	    	document.getElementById("faxerror").innerHTML="Invalid phone Format";
	    	// document.getElementById('tblbtn').innerHTML="<input type='button' style='visibility: visible;' id='btnvisible1' class='submit_btn' value='Next' onmouseover='checkValid(event);'>";
	        return false;
	    }}
		document.getElementById("faxerror").innerHTML="";
		if(document.getElementById("fax").value!="")
		{
		
	    var txt1=document.getElementById("fax").value;
	   var txt2=txt1.substring(0,3);
	 
	  
	   var txt3=txt1.substring(4,7);
	   
	 
	     if(txt2==000 && txt3==000){
	   document.getElementById("faxerror").innerHTML="Invalid phone number format";
	   error="true";
		}
		
		}
		
		if(document.getElementById("txtare").value!="")
		{
			if(document.getElementById("txtare").value.substring(0,1)==' ')
				{
		document.getElementById("txtareerror").innerHTML="Invalid Data";
				error="true";
				}			
		}
		
		document.getElementById("copymedpayerror").innerHTML=" ";
		
		if(document.getElementById("copymedpay").value=="")
		{
		document.getElementById("copymedpayerror").innerHTML="Invalid Data";
		
		error="true";
		}
		if(document.getElementById("copymedpay").value!="")
		{
			if(document.getElementById("copymedpay").value.substring(0,1)==' ')
				{
		document.getElementById("copymedpayerror").innerHTML="Invalid Data";
				error="true";
				}
			if(document.getElementById("copymedpay").value.length<4)
			{
	   document.getElementById("copymedpayerror").innerHTML="Required & must be of length 4 to 32.";
			error="true";
			}	
	
		}
		
		document.getElementById("copyformerror").innerHTML="";
	if(document.getElementById("copyform").value=="")
		{
		document.getElementById("copyformerror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
	if(document.getElementById("copyform").value!="")
	{
		if(document.getElementById("copyform").value.substring(0,1)==' ')
			{
	document.getElementById("copyformerror").innerHTML="Invalid Data";
			error="true";
			}
		if(document.getElementById("copyform").value.length<4)
		{
   document.getElementById("copyformerror").innerHTML="Required & must be of length 4 to 32.";
		error="true";
		}	

	}
	
	document.getElementById("copyassignerror").innerHTML="";
	if(document.getElementById("copyassign").value=="")
	{
	document.getElementById("copyassignerror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	if(document.getElementById("copyassign").value!="")
	{
		if(document.getElementById("copyassign").value.substring(0,1)==' ')
			{
	document.getElementById("copyassignerror").innerHTML="Invalid Data";
			error="true";
			}
		if(document.getElementById("copyassign").value.length<4)
		{
   document.getElementById("copyassignerror").innerHTML="Required & must be of length 4 to 32.";
		error="true";
		}	

	}
	document.getElementById("greencarderror").innerHTML="";
	if(document.getElementById("greencard").value=="")
	{
	document.getElementById("greencarderror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	if(document.getElementById("greencard").value!="")
	{
		if(document.getElementById("greencard").value.substring(0,1)==' ')
			{
	document.getElementById("greencarderror").innerHTML="Invalid Data";
			error="true";
			}
		if(document.getElementById("greencard").value.length<4)
		{
   document.getElementById("greencarderror").innerHTML="Required & must be of length 4 to 32.";
		error="true";
		}	

	}
	document.getElementById("defaultattorneyerror").innerHTML="";
	if(document.getElementById("defaultattorney").value=="")
	{
	document.getElementById("defaultattorneyerror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	if(document.getElementById("defaultattorney").value!="")
	{
		if(document.getElementById("defaultattorney").value.substring(0,1)==' ')
			{
	document.getElementById("defaultattorneyerror").innerHTML="Invalid Data";
			error="true";
			}
		if(document.getElementById("defaultattorney").value.length<4)
		{
   document.getElementById("defaultattorneyerror").innerHTML="Required & must be of length 4 to 32.";
		error="true";
		}	

	}
	document.getElementById("clinicreperror").innerHTML="";
	if(document.getElementById("clinicrep").value=="")
	{
	document.getElementById("clinicreperror").innerHTML="Required Field Should not be Empty";
	
	error="true";
	}
	if(document.getElementById("clinicrep").value!="")
	{
		if(document.getElementById("clinicrep").value.substring(0,1)==' ')
			{
	document.getElementById("clinicreperror").innerHTML="Invalid Data";
			error="true";
			}
		if(document.getElementById("clinicrep").value.length<4)
		{
   document.getElementById("clinicreperror").innerHTML="Required & must be of length 4 to 32.";
		error="true";
		}	

	}
	if(error=="true")
		{
		return false;
		}
	
	
	
	}

	</script>
	
          
        
                    
  
                    
  <!-- <script>
i=0;
$(document).ready(function(){
  $("#:").keypress(function(){
var phone=document.getElementById("fax").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("fax").value=phone;
 });  

});
</script>     -->                     
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
<form action="insertrequestfordemand" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="65%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="left">
        	<div id="block1">
	            <div class="headings altheading">
	             <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	             <h2>Request For Demand</h2>
	        </div>
	         <c:choose>
<c:when test="${empty requestfor}">
	            <div class="contentbox">
	           
	           <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="20">
             <td width="470"><b>TO:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="input_txtbx1" placeholder="John P"  onInput="validatetonum()" maxlength="32" name="tonum" id="tonum"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1" color="red"><span id="tonumerror"></span></font></td>
             <td><b>FROM:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perry Chiropractic & Therapy Center	 of Canton, Inc.</td>
            
              </tr>
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
              
              <tr height="20">
              <td><b>Fax:</b>&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1"  placeholder="(513)421-2764" name="fax" id="fax" maxlength="12" onkeypress="return validate(event)";><br>&nbsp;&nbsp;&nbsp;<font size="+1" color="red"><span  id="faxerror"></span></font></td>
              <td>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4933 West Tuscarawas Street
              </td>
              </tr>
              <tr height="20">
              <td width="430">
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Canton, Ohio 44718	
              </td>
              </tr>
              </table>
              
              
              <br>
               <input type="text" name="user" id="user"  style="visibility:hidden">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <p><b>Check every box that applies:</b></p>
              </table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td><input type="checkbox" class="input_ckbx1" name="faultinsurer" value="faultinsurer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The At-Fault Insurer has already paid the attorney and/or patient full settlement and has failed to comply with the Assignment.    </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1"  name="medpayinsurer" value="medpayinsurer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The At-Fault Insurer or The Med Pay Insurer has stated orally or in writing to us that it will not comply with the Assignment.
     </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1"  name="paidbenefits" value="paidbenefits">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Med Pay Insurer has already paid benefits to the patient and/or the attorney.  </td></tr>
        <tr height="30"><td><input type="checkbox" class="input_ckbx1" name="bankrupt"  value="bankrupt">	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our patient filed bankruptcy.  In addition to the document below, we are faxing every letter or document, which references the bankruptcy filing.
     </td></tr> 
     <tr height="30"><td><input type="checkbox" class="input_ckbx1"  name="treatment"value="treatment">&nbsp;&nbsp;&nbsp;	If treatment is completed in addition to the document below we attach a copy of our itemized charges and a copy of the patient intake information form.
     </td></tr>  
     </table>
      <table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr height="30"><td style="width: 148px; "><input type="checkbox" class="input_ckbx1"  name="other" value="other">&nbsp;&nbsp;&nbsp;Other:&nbsp;&nbsp;(Describe)&nbsp;&nbsp;&nbsp;
     <td> <textarea  class ="input_txtarea"  rows="" cols="" id="txtare" name="txtare" style="height: 75px; width: 348px"></textarea><br><font color="red"  size="+1"><span id="txtareerror"></span></font><span class="err"><form:errors path="Requestfordemand.txtare"></form:errors></span></td>
     </td>
   </tr>
       </table> 
       <table cellpadding="0" cellspacing="0" border="0" width="100%">
       <tr height="30">
       <td><input type="checkbox" name="pleasesend" value="pleasesend">&nbsp;&nbsp;	Please send the appropriate Demand Letter and copy to us.  The cost will be $181.50 plus postage and copy charges at .10/page.</td>
       
       
       </tr>
       
       
       </table>   
       <table>
       <tr>
       <td>
       <p><b>We attach the following:</b></p>
       </td>
       </tr>
       <tr height="25"><td><input type="text"  class="input_txtbx1" class="input_ckbx1" maxlength="32" name="copymedpay" onInput="validatecopymedpay()" id="copymedpay"><br><font size="+1" color="red" ><span id="copymedpayerror"></font><form:errors path="Requestfordemand.copymedpay"></form:errors></span></td><td>&nbsp;<span class="err">*</span>&nbsp;&nbsp;Copy of Med Pay and At Fault Form Cover Letter
     </td></tr>
      <tr height="25"><td><input type="text"  class="input_txtbx1" class="input_ckbx1" maxlength="32" name="copyform" onInput="validatecopyform()" id="copyform"><br><font size="+1" color="red" ><span id="copyformerror"></font><form:errors path="Requestfordemand.copyform"></form:errors></span></td><td>&nbsp;<span class="err">*</span>&nbsp;&nbsp;Copy of Form Cover Letter sent to the Attorney
     </td></tr>
     <tr height="25"><td><input type="text"   class="input_txtbx1" class="input_ckbx1" maxlength="32" name="copyassign" onInput="validatecopyassign()"  id="copyassign"><br><font size="+1" color="red" ><span  id="copyassignerror"></font><form:errors path="Requestfordemand.copyassign"></form:errors></span></td><td>&nbsp;<span class="err">*</span>&nbsp;&nbsp;Copy of Assignment
     </td></tr>
     <tr height="25"><td><input type="text"  class="input_txtbx1" class="input_ckbx1" maxlength="32" name="greencard" onInput="validategreencard()"  id="greencard"><br><font size="+1" color="red" ><span id="greencarderror"></font><form:errors path="Requestfordemand.greencard"></form:errors></span></td><td>&nbsp;<span class="err">*</span>&nbsp;&nbsp;Front and back of Certified Mail: "Green Card"
     </td></tr>
     <tr height="25"><td><input type="text"  class="input_txtbx1" class="input_ckbx1" maxlength="32" name="defaultattorney" onInput="validatedefaultattorney()"  id="defaultattorney"><br><font size="+1" color="red" ><span id="defaultattorneyerror"></font><form:errors path="Requestfordemand.defaultattorney"></form:errors></span></td><td>&nbsp;<span class="err">*</span>&nbsp;&nbsp;Any correspondence from the defaulting Adjuster or Defaulting Attorney
     </td></tr>
       </table> <br>     
       <table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table" ><tr height="35">
       <td width="30" ></td>
       <td  valign="right" align="right" >
       
       <input type="text"  class="input_txtbx1" class="input_ckbx1" maxlength="32"  name="clinicrep" onInput="validateclinicrep()"  id="clinicrep"><br><span id="clinicreperror" style="color: red;font-style:italic;"><form:errors path="Requestfordemand.clinicrep"></form:errors></span></td></tr>
       <tr><td></td><td align="right" ><span class="err">*</span>&nbsp;&nbsp;Clinic Representative&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table>
       <br> 
       </c:when>
       <c:otherwise>
        <div class="contentbox">
	           
	           <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="20">
             <td width="430"><b>TO:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;John P. Lowry, Esq. </td>
             <td><b>FROM:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perry Chiropractic & Therapy Center	 of Canton, Inc.</td>
            
              </tr>
              
              <tr height="20">
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Fax:</b>  513-421-2764</td>
              <td>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4933 West Tuscarawas Street
              </td>
              </tr>
              <tr height="20">
              <td width="430">
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Canton, Ohio 44718	
              </td>
              </tr>
              </table>
              
              
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <p><b>Check every box that applies:</b></p>
              </table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr height="30"><td><input type="hidden" name="requestid" value="${requestfor.requestid }"><input type="checkbox" class="input_ckbx1" value="${requestfor.faultinsurer}" name="faultinsurer" id="faultinsurer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The At-Fault Insurer has already paid the attorney and/or patient full settlement and has failed to comply with the Assignment.
     </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="${requestfor.medpayinsurer}" name="medpayinsurer" id="medpayinsurer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The At-Fault Insurer or The Med Pay Insurer has stated orally or in writing to us that it will not comply with the Assignment.
     </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="${requestfor.paidbenefits}" name="paidbenefits" id="paidbenefits">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Med Pay Insurer has already paid benefits to the patient and/or the attorney.  </td></tr>
        <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="${requestfor.bankrupt}" name="bankrupt" id="bankrupt">	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our patient filed bankruptcy.  In addition to the document below, we are faxing every letter or document, which references the bankruptcy filing.
     </td></tr> 
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="${requestfor.treatment}" name="treatment" id="treatment">&nbsp;&nbsp;&nbsp;	If treatment is completed in addition to the document below we attach a copy of our itemized charges and a copy of the patient intake information form.
     </td></tr>  
     </table>
      <table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr height="30"><td style="width: 148px; "><input type="checkbox" class="input_ckbx1" value="${requestfor.other}" name="other" id="other">&nbsp;&nbsp;&nbsp;Other:&nbsp;&nbsp;(Describe)&nbsp;&nbsp;&nbsp;
     <td> <textarea rows="4" cols="28" name="txtare">${requestfor.txtare}</textarea><span class="err"><form:errors path="Requestfordemand.txtare"></form:errors></span></td>
     </td>
   </tr>
       </table> <br><br>    
       <table>
       <tr>
       <td>
       <p><b>We attach the following:</b></p>
       </td>
       </tr>
       <tr height="25"><td><input type="text" class="input_ckbx1" value="${requestfor.copymedpay}" name="copymedpay" id="copymedpay"><span class="err" id="copymedpayerror"><form:errors path="Requestfordemand.copymedpay"></form:errors></span></td><td><span class="err">*</span>&nbsp;Copy of Med Pay and At Fault Form Cover Letter
     </td></tr>
      <tr height="25"><td><input type="text"    class="input_ckbx1" value="${requestfor.copyform}" name="copyform" id="copyform"><span class="err" id="copyformerror"><form:errors path="Requestfordemand.copyform"></form:errors></span></td><td><span class="err">*</span>&nbsp;Copy of Form Cover Letter sent to the Attorney
     </td></tr>
     <tr height="25"><td><input type="text"      class="input_txtbx1" class="input_ckbx1" value="${requestfor.copyassign}" name="copyassign" id="copyassign"><span class="err" id="copyassignerror"><form:errors path="Requestfordemand.copyassign"></form:errors></span></td><td><span class="err">*</span>&nbsp;Copy of Assignment
     </td></tr>
     <tr height="25"><td><input type="text"  class="input_txtbx1" class="input_ckbx1" value="${requestfor.greencard}" name="greencard" id="greencard"><span class="err" id="greencarderror"><form:errors path="Requestfordemand.greencard"></form:errors></span></td><td><span class="err">*</span>&nbsp;Front and back of Certified Mail: "Green Card"
     </td></tr>
     <tr height="25"><td><input type="text"  class="input_txtbx1" class="input_ckbx1" value="${requestfor.defaultattorney}" name="defaultattorney" id="defaultattorney"><span class="err" id="defaultattorneyerror"><form:errors path="Requestfordemand.defaultattorney"></form:errors></span></td><td><span class="err">*</span>&nbsp;Any correspondence from the defaulting Adjuster or Defaulting Attorney
     </td></tr>
       </table> <br>     
       <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" ><tr height="35">
       <td width="30" ></td>
       <td  valign="right" align="right" >
       
       <input type="text"  class="input_txtbx1"  value="${requestfor.clinicrep}" name="clinicrep" id="clinicrep"><span class="err" id="clinicreperror" style="color: red;font-style:italic;"><form:errors path="Requestfordemand.clinicrep"></form:errors></span></td></tr>
       <tr><td></td><td align="right" ><span class="err" id="clinicreperror">*</span>&nbsp;Clinic Representative</td></tr> 
       
       
       
       
       </c:otherwise>
       </c:choose>
            
         <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');"></td>
              <td>&nbsp;&nbsp;</td>
               <td><a href="viewallpatientdetails"style="color:white" id="cancelid" class="submit_btn">Cancel</a></td>
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
             