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
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
<script>
$(function() {
	$("#datepicker").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#dcr").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

$(function() {
	$("#clinicname").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#address1").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	
$(function() {
	$("#myclient").on("keypress", function(e) {
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
$(function() {
	$("#dearsir").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#esq").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
</script>
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

	function checkSubmit()
	{
		document.getElementById("derr").innerHTML="";
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("derr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("derr").innerHTML=" ";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("derr").innerHTML="Invalid Date Format";
    	
        return false;
    }	
		document.getElementById("dcerr").innerHTML="";
		if(document.getElementById("dcr").value=="")
		{
		document.getElementById("dcerr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("dcerr").innerHTML="";
	    if(document.getElementById("dcr").value.length<4 || document.getElementById("dcr").value.length>=32)
	    {
	    	
	    	document.getElementById("dcerr").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("clerr").innerHTML="";
		if(document.getElementById("clinicname").value=="")
		{
		document.getElementById("clerr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("clerr").innerHTML="";
	    if(document.getElementById("clinicname").value.length<4 || document.getElementById("clinicname").value.length>=32)
	    {
	    	
	    	document.getElementById("clerr").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	    document.getElementById("myclienterror").innerHTML="";
		if(document.getElementById("myclient").value!="")
		{
		if(document.getElementById("myclient").value.length<4 || document.getElementById("myclient").value.length>=32)
		    {
		    	
		    	document.getElementById("myclienterror").innerHTML="Name should be min 4 and max 32";
		    	
		        return false;
		    }
		}    
		document.getElementById("daerr").innerHTML="";
		if(document.getElementById("datepicker1").value=="")
		{
		document.getElementById("daerr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("daerr").innerHTML=" ";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker1").value.match(datechk)==null)
    {
    	document.getElementById("daerr").innerHTML="Invalid Date Format";
    	
        return false;
    }	
		document.getElementById("suberr").innerHTML="";
		if(document.getElementById("dearsir").value=="")
		{
		document.getElementById("suberr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("suberr").innerHTML="";
	    if(document.getElementById("dearsir").value.length<4 || document.getElementById("dearsir").value.length>=32)
	    {
	    	
	    	document.getElementById("suberr").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("esqerr").innerHTML="";
		if(document.getElementById("esq").value=="")
		{
		document.getElementById("esqerr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("esqerr").innerHTML="";
	    if(document.getElementById("esq").value.length<4 || document.getElementById("esq").value.length>=32)
	    {
	    	
	    	document.getElementById("esqerr").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		}
		</script>

</head>
 <body>
<div id="right_content">
<form action="updateletterofprotection" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
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
        	<c:set value="${letterofprotectionform.letterofprotectiondetails[0]}" var="letterofprotectiondetails"> </c:set>
	            <div class="headings altheading">
	             <h2>Letter Of Protection-Drafted For Patient's Attorney</h2> 
	            </div>
	            <div class="contentbox">
	                
            
          
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="375"></td>
              <td><span class="err">*</span> Date</td>
              <td ><input type="hidden" name="letterid" value="${letterofprotectiondetails.letterid }"><input type="text" class="input_txtbx1" name="date" value="${letterofprotectiondetails.date }" id="datepicker" /><br><font size="+1" color="red"><span  id="derr"></font><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
               <br><br><br>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err">*</span> D.C:</td>
               <td ><input type="text" class="input_txtbx1" name="dc" value="${letterofprotectiondetails.dc}" id="dcr" onInput="return validatename(id)";/><br><font size="+1" color="red"><span  id="dcerr"></span></font><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25" width="160"><span class="err">*</span> Clinic Name:</td>
               <td ><input type="text" class="input_txtbx1" name="clinicname" value="${letterofprotectiondetails.clinicname}" id="clinicname" onInput="return validatename(id)";/><br><font size="+1" color="red"><span  id="clerr"></span></font><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
             </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="160"><span class="err">&nbsp;</span>Address:</td>
              <td><textarea rows="" cols=""   class="input_txtarea"  name="address1" id="address1" style="width: 162px; height: 62px">${letterofprotectiondetails.address1}</textarea>
            </td></tr>
              </table>
             
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err">&nbsp;</span>IN RE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Client:</td>
               <td ><input type="text" class="input_txtbx1" name="myclient" value="${letterofprotectiondetails.myclient}" id="myclient" onInput="return validatename(id)";/><span class="err" id="myclienterror"><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25"  width="160"><span class="err">*</span>&nbsp;&nbsp;Date Of Accident:</td>
               <td ><input type="text" class="input_txtbx1" name="dateofaccident" value="${letterofprotectiondetails.dateofaccident}"  id="datepicker1" /><br><font size="+1" color="red"><span id="daerr"></span></font><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="56"><span class="err">*</span> Dear Dr</td>
              <td  height="25" width="160" ><input type="text" class="input_txtbx1" name="dearsir" value="${letterofprotectiondetails.dearsir}"  id="dearsir" onInput="return validatename(id)";/><br><font size="+1" color="red"><span  id="suberr"></font><form:errors path="noticeofassignment.address"></form:errors>
           </span></td></tr>	
             </table>
             <table>
             <tr><td><br><br><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	It is my understanding that my above-named client has an outstanding balance with your above clinic for treatment rendered as a result of this accident.
             
             </p>
             </td></tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please let this letter serve as my professional representation that I will pay your clinic's outstanding treatment fee out of and only to the extent of any settlement of judgment proceeds, after deduction of our firm's fees and costs advanced.  
             
             </p>
             </td>
             </tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If my client objects to any such payment over to your clinic, in whole or in part, I will hold any disputed amount in our firm's trust account until resolution. </p>
             </td>
             </tr>
             </table>
             <table>
             <tr><td width="450"></td>
             <td ><p><h1> <b>Very truly yours,</b></h1><p></td></tr>
             <tr><td width="450"></td>
            <td ><span class="err">*</span><input type="text" class="input_txtbx1" name="esq" value="${letterofprotectiondetails.esq}"    id="esq" onInput="return validatename(id)";/><br><font size="+1" color="red"><span  id="esqerr"></span></font><form:errors path="Hardshipagreement.date"></form:errors></td></tr>
            <tr><td width="450"></td><td ><p><h1> <b>	Attorney for above client</b></h1><p></td></tr>
             </table>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="update" onclick="return checkSubmit('this');"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="deleteletterofprotection?letterid=${letterofprotectiondetails.letterid }"style="color:white" class="submit_btn" onclick="return confirmation()" >Delete</a></td>
              <td><a href="viewallpatientdetails" style="color:white" class="submit_btn">Cancel</a></td>
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