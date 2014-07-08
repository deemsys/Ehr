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
 $(function() {
     $( "#datepicker2" ).datepicker();
   });
  $(function() {
     $( "#datepicker3" ).datepicker();
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
    var textInput = document.getElementById("claim").value;
    textInput = textInput.replace(/[^A-Za-z0-9]/g, "");
    document.getElementById("claim").value = textInput;
}

</script>
	<script>
function checkSubmit()
	{
		
	document.getElementById("reerror").innerHTML="";
	if(document.getElementById("re").value=="")
	{
	document.getElementById("reerror").innerHTML="Required & must be of length 4 to 32.";
	
	return false;
	}
	document.getElementById("ssnerror").innerHTML="";
	if(document.getElementById("ssn").value=="")
	{
	document.getElementById("ssnerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	} 
	document.getElementById("ssnerror").innerHTML="";
	if(document.getElementById("ssn").value.length<11)
	{
	document.getElementById("ssnerror").innerHTML="Invalid social security number format";
	return false;
	}
	var phoneno = /^\(?([0-9]{3})\)?[-]?([0-9]{2})[-]?([0-9]{4})$/;      
    if(document.getElementById("ssn").value.match(phoneno)==null)
    {
    	document.getElementById("ssnerror").innerHTML="Invalid SSN Format";
    	
        return false;
    }
	document.getElementById("claimerror").innerHTML="";
	
	if(document.getElementById("claim").value=="")
	{
	document.getElementById("claimerror").innerHTML="Required & must be of length 9 to 10.";
	
	return false;
	}
	
	 document.getElementById("adjustererror").innerHTML="";	
	    if(document.getElementById("adjuster").value!="")
	    {
	    if(document.getElementById("adjuster").value.length<4 || document.getElementById("adjuster").value.length>=32)
		    {
		    	
		    	document.getElementById("adjustererror").innerHTML="must be of length 4 to 32.";
		    	
		        return false;
		    }
	    
	    
	    }
	   document.getElementById("dearerror").innerHTML="";	
	    if(document.getElementById("dear").value!="")
	    {
	    if(document.getElementById("dear").value.length<4 || document.getElementById("dear").value.length>=32)
		    {
		    	
		    	document.getElementById("dearerror").innerHTML="must be of length 4 to 32.";
		    	
		        return false;
		    }
	    
	    
	    } 
	    document.getElementById("reerror").innerHTML="";	
	    if(document.getElementById("re").value!="")
	    {
	    if(document.getElementById("re").value.length<4 || document.getElementById("dear").value.length>=32)
		    {
		    	
		    	document.getElementById("reerror").innerHTML="Required & must be of length 4 to 32.";
		    	
		        return false;
		    }
	    
	    
	    } 
	    document.getElementById("claimerror").innerHTML="";	
	    if(document.getElementById("claim").value!="")
	    {
	    if(document.getElementById("claim").value.length<9 || document.getElementById("claim").value.length>10)
		    {
		    	
		    	document.getElementById("claimerror").innerHTML="Required & must be of length 9 to 10.";
		    	
		        return false;
		    }
	    
	    
	    } 
	    
	document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
	{
	document.getElementById("datepickererror").innerHTML="Required & must be date ";
	
	return false;
	}
	
	document.getElementById("datepickererror").innerHTML="";
	 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
        return false;
    }
    document.getElementById("datepicker3error").innerHTML="";
     var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker3").value !="") {
		  if (re.test(document.getElementById("datepicker3").value) == false) {
			  document.getElementById("datepicker3error").innerHTML="Invalid Date Format";
			  return false;
		  }
		}
		document.getElementById("datepicker1error").innerHTML="";
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
	document.getElementById("signerror").innerHTML="";
	if(document.getElementById("sign").value=="")
	{
	document.getElementById("signerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("lettererror").innerHTML="";	
    if(document.getElementById("letter").value!="")
    {
    if(document.getElementById("letter").value.length<1 || document.getElementById("letter").value.length>10)
	    {
	    	
	    	document.getElementById("lettererror").innerHTML="Must be of length 1 to 10";
	    	
	        return false;
	    }
    
    
    }  
    
	
	}

	</script>
	<script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script>
          <script>
$(document).ready(function(){
  $("#ssn").keypress(function(){ 

  
var phone=document.getElementById("ssn").value;
phone = phone.replace(/(\d{3})(\d{2})(\d+)/, '$1-$2-$3');
document.getElementById("ssn").value=phone;
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
 <script>
        	  $(function() {
        			$("#re").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        			});
        	  $(function() {
      			$("#adjuster").on("keypress", function(e) {
      				if (e.which === 32 && !this.value.length)
      			        e.preventDefault();
      			});
      			});
        	  $(function() {
        			$("#dear").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        			});
        	  </script>
        	 <script>
        	  function validateamount(){
        		    var textInput = document.getElementById("letter").value;
        		    textInput = textInput.replace(/[^0-9.]/g, "");
        		    document.getElementById("letter").value = textInput;
        		}
        	 
        	  function validatere(){
        		    var textInput = document.getElementById("re").value;
        		    textInput = textInput.replace(/[^A-Za-z ]/g, "");
        		    document.getElementById("re").value = textInput;
        		}
        	  </script>
</head>
 <body>
<div id="right_content">
<form action="updatelettertopatients" method="POST">
<c:set value="${lettertopatientsform.lettertopatientsdetails[0]}" var="lettertopatientsdetails"> </c:set>
<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
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
              </table><br><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>&nbsp;RE:</td>
              <td ><input type="hidden" name="letterid" id="letterid" value="${lettertopatientsdetails.letterid }" /><input type="text" class="input_txtbx1" name="re" value="${lettertopatientsdetails.re }" id="re"  oninput="validatere()"/><br><span class="err" id="reerror"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
            
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>&nbsp;SSN:</td>
              <td ><input type="text" class="input_txtbx1" name="ssn" id="ssn" maxlength="11" value="${lettertopatientsdetails.ssn }" onkeypress="return isNumberKey(event);"/><br><span class="err" id="ssnerror"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>&nbsp;CLAIM:</td>
              <td ><input type="text" class="input_txtbx1" name="claim" id="claim" min="9" maxlength="10" onInput="return validateusername()"; value="${lettertopatientsdetails.claim }" /><br><span class="err" id="claimerror"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>&nbsp;DOI:</td>
              <td ><input type="text" class="input_txtbx1" name="doi" id="datepicker" value="${lettertopatientsdetails.doi }" readonly="readonly"/><br><span class="err" id="datepickererror"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120">&nbsp;&nbsp;ADJUSTER:</td>
              <td ><input type="text" class="input_txtbx1" name="adjuster" min="4" maxlength="32" id="adjuster" oninput="return validatename(id);" value="${lettertopatientsdetails.adjuster }" /><br><span class="err" id="adjustererror"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120">&nbsp;&nbsp;Date:</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker3" value="${lettertopatientsdetails.date }" readonly="readonly"/><br><span class="err" id="datepicker3error"></span><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120">&nbsp;&nbsp;Dear:</td>
              <td ><input type="text" class="input_txtbx1" name="dear" min="4" maxlength="32" id="dear" oninput="return validatename(id);" value="${lettertopatientsdetails.dear }" /><br><span class="err" id="dearerror"><form:errors path="Workschool.date"></form:errors></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td hight="20" width="250"><br><br><p align="left" id="mypar"><b><h4>Dear Ms Barbara Wilmoth:</h4></b></p></td></tr>
       		  </table>
       		
       		 <table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;On <input type="text" class="input_txtbx1" name="date1" id="datepicker1" value="${lettertopatientsdetails.date1 }" readonly="readonly"/>&nbsp;<span class="err" id="datepicker1error"></span><form:errors path="Workschool.returndate"></form:errors> you received a check for compensation, sent to you by State Farm Insurance, your check included medical payment from the at fault insurance company which was to be paid to our office upon receipt.  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Condition of your treatment based upon the signed lien, dictate that upon payments received from the insurance company, which includes a portion for medical compensation, shall be paid in full to Chiropractic Therapy Center for services rendered. Violation of the signed lien will constitute insurance fraud. Criminal charges and a civil lawsuit will be filed if payment is not received within 3 days <input type="text" class="input_txtbx1" name="date2" id="datepicker2" value="${lettertopatientsdetails.date2 }" readonly="readonly" />.<br><span class="err" id="datepicker2error"></span><form:errors path="Workschool.returndate"></form:errors></td>  </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Furthermore, it will also be turned over to collections and your credit will be reported to the Credit Bureau.</p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         Attached you will find itemized charges for your care. To avoid legal action, please submit payment. To avoid legal action, please submit payment in full to Chiropractic Therapy Center. Your total bill to be paid to Chiropractic Therapy Center is <input type="text" class="input_txtbx1" name="letter" id="letter" value="${lettertopatientsdetails.letter }" oninput="validateamount()" />.<br><span class="err" id="lettererror"><form:errors path="Lettertopatients.letter"></form:errors> </span>
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
              <b>Darrin A. Pordash D.C.</b></td></tr>
              <tr> <td width="600"></td>  <td>
       		</td></tr>
       		 </table>
       		
        	 
        	   <table><tr> <td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
           
               
               <td><a href="deletelettertopatients?letterid=${lettertopatientsdetails.letterid}"style="color:white" class="submit_btn" onclick="return confirmation()" >Delete</a></td>
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