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
 
</script>
<script type="text/javascript">
	function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
	</script>
	<script>
	function validatename(){
	    var textInput = document.getElementById("name").value;
	    textInput = textInput.replace(/[^A-Za-z ]/g, "");
	    document.getElementById("name").value = textInput;
	}
	function validateregarding(){
	    var textInput = document.getElementById("regarding").value;
	    textInput = textInput.replace(/[^A-Za-z ]/g, "");
	    document.getElementById("regarding").value = textInput;
	}
	function validatepatname(){
	    var textInput = document.getElementById("patientname").value;
	    textInput = textInput.replace(/[^A-Za-z ]/g, "");
	    document.getElementById("patientname").value = textInput;
	}

	function validatedear(){
	    var textInput = document.getElementById("dearname").value;
	    textInput = textInput.replace(/[^A-Za-z ]/g, "");
	    document.getElementById("dearname").value = textInput;
	}
	function validateclinic(){
	    var textInput = document.getElementById("nameofclinic").value;
	    textInput = textInput.replace(/[^A-Za-z ]/g, "");
	    document.getElementById("nameofclinic").value = textInput;
	}
	function validatephysician(){
	    var textInput = document.getElementById("treatingphysician").value;
	    textInput = textInput.replace(/[^A-Za-z ]/g, "");
	    document.getElementById("treatingphysician").value = textInput;
	}


</script>
	<script>
	function valid()
	{   
		
		
		document.getElementById("nameerror").innerHTML="";
	if(document.getElementById("name").value=="")
	        {
		document.getElementById("nameerror").innerHTML="Required Field Should not be Empty";
	            
	            return false;
	        }
	if(document.getElementById("name").value!=""){       
	if(document.getElementById("name").value.substring(0,1)==' '){
		document.getElementById("nameerror").innerHTML="Invalid Name!";
		 return false;
	}
	if(document.getElementById("name").value.length<4)
	{
		document.getElementById("nameerror").innerHTML="Name should be min 4 and max 32";
		return false;
	}

	}

	document.getElementById("addrerror").innerHTML="";
	if(document.getElementById("addr").value!=""){  
	if(document.getElementById("addr").value.substring(0,1)==' '){
		document.getElementById("addrerror").innerHTML="Invalid Address!";
		 return false;
	}
	}

	document.getElementById("regardingerror").innerHTML="";
	if(document.getElementById("regarding").value!=""){  
	if(document.getElementById("regarding").value.substring(0,1)==' '){
		document.getElementById("regardingerror").innerHTML="Invalid Data!";
		 return false;
	}

	if(document.getElementById("regarding").value.length<4)
	{
		document.getElementById("regardingerror").innerHTML="Data should be min 4 and max 32";
		return false;
	}
	}
	        
	document.getElementById("patientnameerror").innerHTML="";
	      if(document.getElementById("patientname").value=="")
	        {
	    	  document.getElementById("patientnameerror").innerHTML="Required Field Should not be Empty";
	            return false;
	        }  
	        document.getElementById("patientnameerror").innerHTML="";
		    if(document.getElementById("patientname").value.length<4 || document.getElementById("patientname").value.length>=32)
		    {
		    	
		    	document.getElementById("patientnameerror").innerHTML="Name should be min 4 and max 32";
		    	
		        return false;
		    }
		    if(document.getElementById("patientname").value!=""){  
		    if(document.getElementById("patientname").value.substring(0,1)==' '){
		    	document.getElementById("patientnameerror").innerHTML="Invalid Name!";
		    	 return false;
		    }
		    }
	        
	      document.getElementById("datepickererror").innerHTML="";
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
	         document.getElementById("dearnameerr").innerHTML="";
	        if(document.getElementById("dearname").value=="")
	        {
	        	 document.getElementById("dearnameerr").innerHTML="Required Field Should not be Empty";
	            return false;
	        }
	        if(document.getElementById("dearname").value!=""){  
	        if(document.getElementById("dearname").value.substring(0,1)==' '){
	        	document.getElementById("dearnameerr").innerHTML="Invalid Name!";
	        	 return false;
	        }
	        if(document.getElementById("dearname").value.length<4)
	        {
	        	document.getElementById("dearnameerr").innerHTML="Name should be min 4 and max 32";
	        	return false;
	        }
	        }
	        
	        document.getElementById("nameofclinicerror").innerHTML="";
	        if(document.getElementById("nameofclinic").value=="")
	        {
	        	 document.getElementById("nameofclinicerror").innerHTML="Required Field Should not be Empty";
	            return false;
	        }
	        if(document.getElementById("nameofclinic").value!=""){  
	        if(document.getElementById("nameofclinic").value.substring(0,1)==' '){
	        	document.getElementById("nameofclinicerror").innerHTML="Invalid Name!";
	        	 return false;
	        }
	        if(document.getElementById("nameofclinic").value.length<4)
	        {
	        	document.getElementById("nameofclinicerror").innerHTML="Name should be min 4 and max 32";
	        	return false;
	        }
	        }
	       
	        document.getElementById("treatingphysicianerror").innerHTML="";
	        if(document.getElementById("treatingphysician").value=="")
	        {
	        	 document.getElementById("treatingphysicianerror").innerHTML="Required Field Should not be Empty";
	            return false;
	        }
	        if(document.getElementById("treatingphysician").value!=""){  
	        if(document.getElementById("treatingphysician").value.substring(0,1)==' '){
	        	document.getElementById("treatingphysicianerror").innerHTML="Invalid Name!";
	        	 return false;
	        }
	        if(document.getElementById("treatingphysician").value.length<4)
	        {
	        	document.getElementById("treatingphysicianerror").innerHTML="Name should be min 4 and max 32";
	        	return false;
	        }
	        }
	         
	        }

</script>
</head>
 <body>
<div id="right_content">
<form action="updateresponseattorney" method="POST">
 <c:set value="${responseattorneyform.responseattorneydetail[0]}" var="responseattorneydetail"> </c:set>
<table cellpadding="0" cellspacing="0" border="0" width="70%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	             <h2>Form Letter - Response to Attorney</h2>
	        </div>
	            <div class="contentbox">
	            <p align="right"><b> SENT BY CERTIFIED MAIL</b></p>
	           <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="50" width="120"><span class="err">*</span> Name Of Attorney:</td>
              <td ><input type="hidden" name="responseid" value="${responseattorneydetail.responseid }" ><input type="text" class="input_txtbx1" name="name" value="${responseattorneydetail.name }" id="name" onInput="validatename();"  style="width: 156px; " /><span style="color: red;font-style:italic;"  id="nameerror"><form:errors path="Responseattorney.name"></form:errors></td>
              </tr>
              <tr>
              <td height="20" width="120"><span class="err">&nbsp;</span> Address:</td>
              <td><textarea rows="" cols="" name="address" id="addr"   class="input_txtarea" style="width: 156px; " > ${responseattorneydetail.address }</textarea><span style="color: red;font-style:italic;" id="addrerror">
            </td></tr>
              </tr>
             
              <tr>
              <td height="30" width="120"><span class="err">&nbsp;</span> Regarding:</td>
              <td ><input type="text" class="input_txtbx1" name="regarding" value="${responseattorneydetail.regarding }" id="regarding" onInput="validateregarding();"  style="width: 156px; "/><span style="color: red;font-style:italic;" id="regardingerror"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
                <tr>
              <td height="30" width="120"><span class="err">*</span> Patients's Name:</td>
              <td ><input type="text" class="input_txtbx1" name="patientname" value="${responseattorneydetail.patientname }" id="patientname"  style="width: 156px; " onInput="validatepatname();"/><span style="color: red;font-style:italic;"  id="patientnameerror"><form:errors path="Responseattorney.patientname"></form:errors></td>
              </tr>
                <tr>
              <td height="30" width="120"><span class="err">*</span> Date Of Accident:</td>
              <td ><input type="text" class="input_txtbx1" readonly="readonly" name="dateofaccident" value="${responseattorneydetail.dateofaccident }" id="datepicker"  style="width: 156px; "/><span style="color: red;font-style:italic;"  id="datepickererror"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              
              
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td height="30" width="120"><br><p id="mypar"><span class="err">*</span> Dear</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><input type="text" class="input_txtbx1" name="dearname" value="${responseattorneydetail.dearname }"  onInput="validatedear();" id="dearname" style="width: 156px; "><span style="color: red;font-style:italic;"  id="dearnameerr"></span></p></td></tr>
       		  </table>
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr>
        	  <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We have previously provided you with a Treatment Fee Agreement and Instructions to Attorney signed by our patient and a detailed cover letter which explained the legal basis for it. You have communicated to us that we are required to bill our patient's health insurance.  </p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We are not required to bill our patient's health insurance.  R.C. 1751.60 does not apply to a medical provider who is not under contract with a patient's health care insurer.  We do not have a provider agreement with our patient's health care insurer.  </p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have stated that Ohio Revised Code Chapter 3902 contains sections that still would require us to bill our patient's health care insurer, despite the fact that we have no provider agreement with that insurer.  R.C. §3902.13 does provide for an order of benefits, including a patient's health insurance coverage, for those types of insurance that are covered by Chapter 3902.  We have used the Treatment Fee Agreement and Instructions to Attorney to secure eventual payment from the proceeds of the alleged tortfeasor's motor vehicle liability insurer and an assignment of our patient's right to payment from the patient's motor vehicle liability insurer.  Motor vehicle insurance is regulated under Chapter 3937, and it is not regulated by or included in Chapter 3902.  Chapter 3902 regulates "life insurance and annuities, credit life insurance and credit disability insurance, and sickness and accident insurance, and subscriber policies or certificates of health insuring corporations".  Sickness and accident insurance is regulated under Chapter 3923, and Chapter 3923 specifically excludes motor vehicle liability insurance.</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;After receiving advice from our own legal counsel, we are satisfied that there is no statutory, regulatory, or case law authority for the position that we are required to bill our patient's health insurance, where we have no provider agreement with that heath insurer. </p>
               <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please provide a reference to any specific legal authority which you believe demonstrates otherwise, and we will be happy to review it.</p>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr >
       		  <td valign="right" align="right" class="input_txt"><span class="err">&nbsp</span> Sincerly,</td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="right" align="right" class="input_txt"><span class="err">*</span> Name of Clinic:
              <input type="text" class="input_txtbx1" onInput="validateclinic();" name="nameofclinic" value="${responseattorneydetail.nameofclinic }" id="nameofclinic" /><br/><span style="color: red;font-style:italic;"  id="nameofclinicerror"><form:errors path="Responseattorney.nameofclinic"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="right" align="right" class="input_txt"><span class="err">*</span> Treating Physician:
              <input type="text" class="input_txtbx1" name="treatingphysician" onInput="validatephysician();" value="${responseattorneydetail.treatingphysician }" id="treatingphysician" /><br/><span style="color: red;font-style:italic;"  id="treatingphysicianerror"><form:errors path="Responseattorney.treatingphysician"></form:errors></span></td>
              </tr>
              </table>
              
              <br>
             
        	  <table><tr> <td><input type="submit" class="submit_btn" value="Update" OnClick ="return valid();"></td>
           
                <td><a href="deleteresponseattorney?responseid=${responseattorneydetail.responseid}"style="color:white" class="submit_btn" onclick="return confirmation()" >Delete</a></td>
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
        	   <script>
        	  $(function() {
        			$("#name").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        			});	
        	  $(function() {
        			$("#addr").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        			});	
        	  $(function() {
        			$("#regarding").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        			});	
        	  $(function() {
        			$("#patientname").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        			});	
        	  $(function() {
        			$("#dearname").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        			});	
        	  $(function() {
        			$("#nameofclinic").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        			});	
        	  $(function() {
        			$("#treatingphysician").on("keypress", function(e) {
        				if (e.which === 32 && !this.value.length)
        			        e.preventDefault();
        			});
        	  });
        	  
        	  </script>