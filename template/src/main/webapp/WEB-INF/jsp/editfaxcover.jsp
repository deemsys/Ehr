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

</script>
<script type="text/javascript">
	function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
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
		document.getElementById("datepickererror").innerHTML=" ";
		
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("datepickererror").innerHTML="";
		 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker").value.match(datechk)==null)
    	{
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
        return false;
    	}	

  

		document.getElementById("toserror").innerHTML="";
		if(document.getElementById("tos").value=="")
		{
		document.getElementById("toserror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
		document.getElementById("faxnoerror").innerHTML="";
	   if(document.getElementById("faxno").value!="")
	   {
		if(document.getElementById("faxno").value.length<13)
		{
		document.getElementById("faxnoerror").innerHTML="Invalid phone number format";
		return false;
		
		}
	   }
		document.getElementById("faxnoerror").innerHTML="";
		if(document.getElementById("faxno").value!="")
		{
		
	    var txt1=document.getElementById("faxno").value;
	   var txt2=txt1.substring(1,4);
	   var txt3=txt1.substring(5,8);
	     if(txt2==000 && txt3==000){
	   document.getElementById("faxnoerror").innerHTML="Invalid phone number format";
		return false;
		}
		
		}
	document.getElementById("fromerror").innerHTML="";
	if(document.getElementById("froms").value=="")
	{
	document.getElementById("fromerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("msgerror").innerHTML="";
	if(document.getElementById("msg").value=="")
	{
	document.getElementById("msgerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("claimnoerror").innerHTML="";
	if(document.getElementById("claimno").value=="")
	{
	document.getElementById("claimnoerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("datepicker1error").innerHTML="";
	if(document.getElementById("datepicker1").value=="")
	{
	document.getElementById("datepicker1error").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
  document.getElementById("datepicker1error").innerHTML="";
	 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker1").value.match(datechk)==null)
    {
    	document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
    	
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
    <script type="text/javascript">
       function validate5(event) {
          
           var regex = new RegExp("^[0-9]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
</head>
 <body>
<div id="right_content">
<form action="updatefaxcover" method="POST">
<c:set value="${faxcoverform.faxcoverdetails[0]}" var="faxcoverdetails"> </c:set>
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
        	<div>
	            <div class="headings altheading">
	             <h2>PERRY CHIROPRACTIC & THERAPY CENTER OF CANTON, INC.</h2> 
	            </div>
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
              <td ><td><input type="hidden" name="faxid" value="${faxcoverdetails.faxid }"><input type="text" class="input_txtbx1" name="date" value="${faxcoverdetails.date }" id="datepicker" /><span class="err" id="datepickererror"><form:errors path="Hardshipagreement.date"></form:errors></td>
             </td> </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>TO:</td>
              <td ><input type="text" class="input_txtbx1" name="tos" value="${faxcoverdetails.tos }" id="tos" /><span class="err" id="toserror"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120">FAX#:</td>
              <td ><input type="text" class="input_txtbx1" name="faxno" onInput="return validateusername()"; onkeypress="return validate5(event)";  maxlength=13 value="${faxcoverdetails.faxno }" id="faxno"/><span class="err" id="faxerror"><form:errors path="Faxcover.faxno"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>FROM:</td>
              <td ><input type="text" class="input_txtbx1" name="froms" value="${faxcoverdetails.froms }" id="froms" /><span id="fromerror" style="color: red;font-style:italic;"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>FAX:</td>
              <td> (330) 477-3037	</td>
       	</tr></table><br><br>
     <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="120">
     	<input type="radio" name="reply" value="URGENT" class="input_txt" <c:if test="${faxcoverdetails.reply=='URGENT'}"><c:out value="checked=checked"/></c:if> checked="true">URGENT&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="FOR REVIEW"<c:if test="${faxcoverdetails.reply=='FOR REVIEW'}"><c:out value="checked=checked"/></c:if> class="input_txt">FOR REVIEW&nbsp;&nbsp;&nbsp;
     	<input type="radio" name="reply" value="PLEASE COMMENT" class="input_txt" <c:if test="${faxcoverdetails.reply=='PLEASE COMMENT'}"><c:out value="checked=checked"/></c:if> >PLEASE COMMENT&nbsp;&nbsp;&nbsp;<input type="radio" name="reply" value="PLEASE REPLY" <c:if test="${faxcoverdetails.reply=='PLEASE REPLY'}"><c:out value="checked=checked"/></c:if> class="input_txt">PLEASE REPLY&nbsp;&nbsp;&nbsp;
     	</td>
     	</tr>
     	</table><br><br>
     	<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="20%"><span class="err"></span>RE:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" id="re" style="width: 164px; " value="${faxcoverdetails.regarding }"/><span class="err" id="reerror"><form:errors path="Faxcover.regarding"></form:errors></td>
              <td align="left" style="width: 188px; "><span class="err"></span>Number Of Pages Sent:</td>
              <td ><input type="text" class="input_txtbx1" name="pages" id="nos" onkeypress="return validate(event)"; value="${faxcoverdetails.pages }"/><span class="err" id="noserror"><form:errors path="Faxcover.pages"></form:errors></td>
              </tr>
             
              <tr>
              <td height="25" width="20%" style="width: 98px; "><span class="err">*</span>Message:</td>
              <td style="width: 178px; "><input type="text" class="input_txtbx1" name="msg" id="msg" style="width: 164px; " value="${faxcoverdetails.msg }"/><span class="err" id="msgerror"><form:errors path="Faxcover.msg"></form:errors></td>
            <td align="left" style="width: 147px; "><span class="err">*</span>Claim No:</td>
              <td ><input type="text" class="input_txtbx1" name="claimno" id="claimno" onInput="return validateusername1()"; value="${faxcoverdetails.claimno }"/><span class="err" id="claimnoerror"><form:errors path="Faxcover.claimno"></form:errors>
              </span><span class="err" id="number"></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="20%"><span class="err">*</span> DOI</td>
              <td height="25" width="45%"><input type="text" class="input_txtbx1" name="doi" id="datepicker1" style="width: 164px; " value="${faxcoverdetails.doi }"/><span class="err" id="datepicker1error"><form:errors path="Faxcover.msg"></form:errors></td>
            <td align="left"><span class="err"></span></td>
              <td style="width: 188px; " align="right"></td>
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
            
            <table><tr> <td><input type="submit" class="submit_btn" value="update" onclick="return checkSubmit('this');"></td>
           
              
               <td><a href="deletefaxcover?faxid=${faxcoverdetails.faxid}"style="color:white" class="submit_btn" onclick="return confirmation()" >Delete</a></td> 
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
        	 