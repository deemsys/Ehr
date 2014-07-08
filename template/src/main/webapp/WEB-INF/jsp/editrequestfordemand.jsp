<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquery-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
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
	$("#clinicrep").on("keypress", function(e) {
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
  
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
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
</head>
 <body>
<div id="right_content">
<form action="updaterequestfordemand" method="POST">



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
        	<c:set value="${requestfordemandform.requestfordemanddetails[0]}" var="requestfordemanddetails"> </c:set>
        	<div>
	            <div class="headings altheading">
	             <h2>Request For Demand</h2>
	        </div>
	            <div class="contentbox">
	           
	           <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="20">
             <td width="430"><b>TO:</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="textbox" class="input_txtbx1" maxlength="32" placeholder="John P"  onInput="validatetonum()" maxlength="32"  name="tonum" id="tonum" value="${requestfordemanddetails.tonum}"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1" color="red"><span id="tonumerror"></span></font> </td>
             <td><b>FROM:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perry Chiropractic & Therapy Center	 of Canton, Inc.</td>
            
              </tr>
              
              <tr height="20">
              <td><b>Fax:</b>&nbsp;&nbsp;&nbsp;<input type="text"  class="input_txtbx1" placeholder="(513)421-2764" name="fax" id="fax" value="${requestfordemanddetails.fax}" maxlength="12" onkeypress="return validate(event)";><span class="err" id="faxerror"></span></td>
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
        	  <tr height="30"><td><input type="hidden" name="requestid" value="${requestfordemanddetails.requestid }"><input type="checkbox" class="input_ckbx1" value="faultinsurer" name="faultinsurer" id="faultinsurer" <c:if test="${requestfordemanddetails.faultinsurer=='faultinsurer'}"><c:out value="Checked"/></c:if> />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The At-Fault Insurer has already paid the attorney and/or patient full settlement and has failed to comply with the Assignment.
     </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="medpayinsurer" name="medpayinsurer" id="medpayinsurer" <c:if test="${requestfordemanddetails.medpayinsurer=='medpayinsurer'}"><c:out value="Checked"/></c:if> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The At-Fault Insurer or The Med Pay Insurer has stated orally or in writing to us that it will not comply with the Assignment.
     </td></tr>
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="paidbenefits" name="paidbenefits" id="paidbenefits" <c:if test="${requestfordemanddetails.paidbenefits=='paidbenefits'}"><c:out value="Checked"/></c:if> >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Med Pay Insurer has already paid benefits to the patient and/or the attorney.  </td></tr>
        <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="bankrupt" name="bankrupt" id="bankrupt" <c:if test="${requestfordemanddetails.bankrupt=='bankrupt'}"><c:out value="Checked"/></c:if>  >	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our patient filed bankruptcy.  In addition to the document below, we are faxing every letter or document, which references the bankruptcy filing.
     </td></tr> 
     <tr height="30"><td><input type="checkbox" class="input_ckbx1" value="treatment" name="treatment" id="treatment" <c:if test="${requestfordemanddetails.treatment=='treatment'}"><c:out value="Checked"/></c:if>  >&nbsp;&nbsp;&nbsp;	If treatment is completed in addition to the document below we attach a copy of our itemized charges and a copy of the patient intake information form.
     </td></tr>  
     </table>
      <table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr height="30"><td style="width: 148px; "><input type="checkbox" class="input_ckbx1" value="other" name="other" id="other" <c:if test="${requestfordemanddetails.other=='other'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;&nbsp;Other:&nbsp;&nbsp;(Describe)&nbsp;&nbsp;&nbsp;
     <td> <textarea rows="" cols=""  class="input_txtarea"  name="txtare"  id="txtare"   style="height: 75px; width: 348px">${requestfordemanddetails.txtare}</textarea><br><font size="+1" color="red"><span id="txtareerror"></span></font></td>
     </td>
   </tr>
       </table> <br><br> 
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
       <tr height="30">
       <td><input type="checkbox" name="pleasesend" value="pleasesend"  <c:if test="${requestfordemanddetails.pleasesend=='pleasesend'}"><c:out value="Checked"/></c:if>>&nbsp;&nbsp;	Please send the appropriate Demand Letter and copy to us.  The cost will be $181.50 plus postage and copy charges at .10/page.</td>
       
       
       </tr>
       
       
       </table>  
       
       
          
       <table>
       <tr>
       <td>
       <p><b>We attach the following:</b></p>
       </td>
       </tr>
       <tr height="25"><td><input type="text"  class="input_txtbx1" maxlength="32" onInput="validatecopymedpay()" class="input_ckbx1" value="${requestfordemanddetails.copymedpay}" name="copymedpay" onInput="validatecopymedpay()" id="copymedpay"><br><font size="+1" color="red" ><span  id="copymedpayerror"></font><form:errors path="Requestfordemand.copymedpay"></form:errors></span></td><td><span class="err">*</span>Copy of Med Pay and At Fault Form Cover Letter
     </td></tr>
      <tr height="25"><td><input type="text"   class="input_txtbx1"  maxlength="32" class="input_ckbx1" value="${requestfordemanddetails.copyform}" name="copyform" onInput="validatecopyform()" id="copyform"><br><font size="+1" color="red" ><span id="copyformerror"></font><form:errors path="Requestfordemand.copyform"></form:errors></span></td><td><span class="err">*</span>Copy of Form Cover Letter sent to the Attorney
     </td></tr>
     <tr height="25"><td><input type="text"   class="input_txtbx1"  maxlength="32" class="input_ckbx1" value="${requestfordemanddetails.copyassign}" name="copyassign" onInput="validatecopyassign()" id="copyassign"><br><font size="+1" color="red" ><span id="copyassignerror"></font><form:errors path="Requestfordemand.copyassign"></form:errors></span></td><td><span class="err">*</span>Copy of Assignment
     </td></tr>
     <tr height="25"><td><input type="text"   class="input_txtbx1" maxlength="32"  class="input_ckbx1" value="${requestfordemanddetails.greencard}" name="greencard" onInput="validategreencard()" id="greencard"><br><font size="+1" color="red" ><span id="greencarderror"></font><form:errors path="Requestfordemand.greencard"></form:errors></span></td><td><span class="err">*</span>Front and back of Certified Mail: "Green Card"ù
     </td></tr>
     <tr height="25"><td><input type="text"   class="input_txtbx1" maxlength="32"  class="input_ckbx1" value="${requestfordemanddetails.defaultattorney}"  onInput="validatedefaultattorney()" name="defaultattorney" id="defaultattorney"><br><font size="+1" color="red" ><span id="defaultattorneyerror"></font><form:errors path="Requestfordemand.defaultattorney"></form:errors></span></td><td><span class="err">*</span>Any correspondence from the defaulting Adjuster or Defaulting Attorney
     </td></tr>
       </table> <br>     
       <table cellpadding="0" cellspacing="0" border="0" width="100%" class="margin_table" ><tr height="35">
       <td width="30" ></td>
       <td  valign="right" align="right" >
       
       <input type="text"  class="input_txtbx1" class="input_ckbx1"  maxlength="32"  value="${requestfordemanddetails.clinicrep}"  name="clinicrep" id="clinicrep" onInput="validateclinicrep()"><br><font size="+1" color="red" ><span id="clinicreperror" style="color: red;font-style:italic;"></font><form:errors path="Requestfordemand.clinicrep"></form:errors></span></td></tr>
       <tr><td></td><td align="right" ><span class="err">*</span>Clinic Representative</td></tr>      
         
        	   <table align="center"><tr> <td width="250"></td><td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
           
               
               <td><a href="deleterequestfordemand?requestid=${requestfordemanddetails.requestid}"style="color:white" class="submit_btn" onclick="return confirmation()" onInput="validateclinicrep()" >Delete</a></td> 
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
             