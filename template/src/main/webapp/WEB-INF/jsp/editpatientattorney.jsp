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
	$("#name").on("keypress", function(e) {
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
	$("#patientname").on("keypress", function(e) {
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
$(function() {
	$("#nameofclinic").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});
$(function() {
	$("#treat").on("keypress", function(e) {
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
<script>
function validatename(id){
    var textInput = document.getElementById(id).value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById(id).value = textInput;
}
</script>
<script>
//function validatename(){
   // var textInput = document.getElementById("patientname").value;
   // textInput = textInput.replace(/[^A-Za-z ]/g, "");
   // document.getElementById("patientname").value = textInput;
//}
</script>
<script>

	function checkSubmit()
	{
	    //alert("hai");
		document.getElementById("nameerror").innerHTML=" ";
		
		if(document.getElementById("name").value=="")
		{
		document.getElementById("nameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("nameerror").innerHTML="";
	    if(document.getElementById("name").value.length<4 || document.getElementById("name").value.length>=32)
	    {
	    	
	    	document.getElementById("nameerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		 document.getElementById("regerror").innerHTML="";
	  
	    if(document.getElementById("reg").value.length<4)
	    {
	    document.getElementById("regerror").innerHTML="Name should be min 4 and max 32";
	    return false;
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
	
	document.getElementById("dearsirerror").innerHTML="";
	if(document.getElementById("dearsir").value=="")
	{
	document.getElementById("dearsirerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("dearsirerror").innerHTML="";
	    if(document.getElementById("dearsir").value.length<4 || document.getElementById("dearsir").value.length>=32)
	    {
	    	
	    	document.getElementById("dearsirerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	document.getElementById("nameofclinicerror").innerHTML="";
	if(document.getElementById("nameofclinic").value=="")
	{
	document.getElementById("nameofclinicerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("nameofclinicerror").innerHTML="";
	    if(document.getElementById("nameofclinic").value.length<4 || document.getElementById("nameofclinic").value.length>=32)
	    {
	    	
	    	document.getElementById("nameofclinicerror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	document.getElementById("treaterror").innerHTML="";
	if(document.getElementById("treat").value=="")
	{
	document.getElementById("treaterror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("treaterror").innerHTML="";
	    if(document.getElementById("treat").value.length<4 || document.getElementById("treat").value.length>=32)
	    {
	    	
	    	document.getElementById("treaterror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
	
	}

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
</head>
 <body>
<div id="right_content">
<form action="updatepatientattorney" method="POST">

<table cellpadding="0" cellspacing="0" border="0" height="100" width="70%" class="margin_table">
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
        	<c:set value="${patientattorneyform.patientattorneydetails[0]}" var="patientattorneydetails"> </c:set>
	            <div class="headings altheading">
	             <h2>Form Cover Letter For Patient's Attorney</h2> 
	            </div>
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="70%"></td>
              <td ><b>			SENT BY CERTIFIED MAIL</b></td>
              </tr>
              <tr ><td width="70%"></td>
              <td ><b>Notice of Clinic's claim of an interest subject to </b></td>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b>safekeeping in trust account.</b></td>
              </tr>
              <tr ><td width="70%"></td>
              <td ><b>Ohio Rules of Professional Conduct.  Rule 1.15.</b></td>
              </tr>
             
              <tr ><td width="70%"></td>
              <td ><b>(330) 477-3037 Fax  </b></td>
              </tr>
              </table><br><br>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span> Name of Patient's Attorney</td>
              <td ><input type="hidden" name="patientid" value="${patientattorneydetails.patientid }"><input type="text" class="input_txtbx1" name="name" value="${patientattorneydetails.name }"  id="name" onInput="return validatename(id)";><br><font size="+1" color="red"><span  id="nameerror"  style="color: red;font-style:italic;"></font><form:errors path="Patientattorney.name"></form:errors></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">&nbsp;</span>Address</td>
              <td ><textarea rows="" cols="" name="address" class="input_txtarea" id="address"style="width: 169px; height: 62px">${patientattorneydetails.address }</textarea><span class="err"><form:errors path="Patientattorney.address"></form:errors></span></td>
              </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span>&nbsp;&nbsp;Regarding</td>
              <td ><input type="text" class="input_txtbx1" name="reg" value="${patientattorneydetails.reg}"   id="reg" onInput="return validatename(id)";><br><font size="+1" color="red"><span  id="regerror"></span></font><form:errors path="Patientattorney.address"></form:errors></td>
              </tr>
              </table>
              
              
              
              
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span> Patient's name</td>
              <td ><input type="text" class="input_txtbx1" name="patientname" value="${patientattorneydetails.patientname}"    id="patientname" onInput="return validatename(id)";><br><font size="+1" color="red"><span id="patientnameerror"  style="color: red;font-style:italic;"></font><form:errors path="Patientattorney.patientname"></form:errors></span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err">*</span> Date of Accident</td>
              <td ><input type="text" class="input_txtbx1" name="date" value="${patientattorneydetails.date}"  id="datepicker"><br><font size="+1" color="red"><span  id="datepickererror"  style="color: red;font-style:italic;"><form:errors path="Patientattorney.date"></form:errors></span></font></td>
              </tr>
              </table>
              
     <br><br>
     	
              
       	<table>
       	<tr>
       	<td>
       	<p>
       	<h3>
     
Dear Madam or Sir:
</h3></p>
  <p><span class="err">*</span>&nbsp;<input type="text" class="input_txtbx1" name="dearsir" value="${patientattorneydetails.dearsir}"  id="dearsir" onInput="return validatename(id)";><font size="+1" color="red"><span  id="dearsirerror"  style="color: red;font-style:italic;"></span> </font>has sought medical treatment from this clinic.  This patient (your client) has been injured to an extent where the patient has determined that they cannot afford to pay for treatment on a fee for service basis.  We would definitely prefer to simply render the required treatment on a fee for service basis.  However, because fees for service presents a hardship to this patient, we have agreed to postpone payment for treatment, but in direct reliance on the continuing commitment the patient has made to us in the attached Treatment Fee Agreement and Instructions to Attorney. </p>	


       </td>
       	
       	</tr>
       		
       		 <tr><td>
       		 <p>
       		In the unlikely event that your client later refuses to permit you to pay our treatment fees out of settlement or judgment proceeds, please hold any disputed proceeds in your trust account, and bring the matter to our attention.		
       		 </p>
       		 </td></tr>
       		  <tr><td>
       		 <p>
       		 You are most likely aware of West Broad Chiropractic v. American Family Insurance, (2009) 122 Ohio St.3d 497, 2009-Ohio-3506.  In this recent case, the Ohio Supreme Court held that a medical provider could not bring a civil action against a third party insurer for ignoring a patient's assignment of a portion of expected proceeds from a tort claim, because at the time the patient made the assignment, the patient could not then transfer the right to sue for settlement proceeds. 
       		  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>
       		  The West Broad case may lead some counsel to believe that, if a client later demands all net proceeds on settlement, then counsel is required to disregard any advance instruction or directive that their client provides to them regarding payment to a medical provider. As is covered in detail below, this is not true. Existing ethics rules independently require counsel to hold funds for safekeeping, where a patient promised to make payment to a medical provider or specifically instructed counsel to pay a medical provider out of proceeds at the conclusion of a tort case. 
       		       		      		 
       		  </p>
       		 </td></tr>
       		  <tr><td>
       		 <p>
       		 Rule 1.15 "Safekeeping Funds and Property" of the Ohio Rules of Professional Conduct prohibits a lawyer from distributing property to his or her client which he or she knows or has reason to know a third person has an interest.  Rule 1.15, Ohio Rules of Professional Conduct, effective February 1, 2007.  
       		 
       		  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>
       		 The Supreme Court of Ohio, Board of Commissioners on Grievances and Discipline issued Opinion 2007-7, which interprets Rule 1.15 and states in part:  
       		 </p>
       		 </td></tr>
       		 <tr><td>
       		 <p><b>"Examples of lawful claims of third persons subject to safekeeping by a lawyer are as follows:</b> 
       		  </p>
       		 </td></tr>
       		 <tr><td>
       		 <p><b>A lawful claim includes a written agreement signed by a client promising payment or authorizing the lawyer to make payment to the medical provider from the proceeds of a settlement or judgment."  Opinion  2007-7, pg. 4. 
       		  <b></p>
       		 </td></tr>
       		 <tr><td><p>
       		 The attached Treatment Fee Agreement and Instructions to Attorney that our patient signed is very specifically  1."...a written agreement signed by a client promising payment…from the proceeds of a settlement or judgment; and, 2."...a written agreement signed by a client…authorizing the lawyer to make payment to the medical provider from the proceeds of a settlement or judgment."
       		 </p>
       		 </td></tr>
       		 <tr><td><p>
       		 
       		 Please be assured that the Clinic does not expect you to pay the Clinic's outstanding treatment fees out of a settlement of judgment if the patient objects to that, in whole or in part.  Please hold that amount in your trust account while the Clinic and patient discuss any dispute. This simply follows the requirements of Rule 1.15 and Opinion 2007-7.
       		 </p>
       		 </td></tr>
       		 <tr><td><p><h3>
       		 
       		 
Opinion 2007-7 provides the following further ethical directions: 
       		 
       		 </h3>
       		      		      		        		 
       		 </p>
       		 </td></tr>
       		 <tr><td><p>
       		 
       		 
       		 "Under Rule 1.15(d) and (e), when a dispute arises, what are a lawyer's safekeeping duties to a client and a third person claiming interest in funds in the lawyer's possession and how should a dispute be resolved?"   Opinion  2007-7 at pg. 2.
       		 </p>
       		 </td></tr> 
       		 <tr><td><p>
       		 
       		 "When there is no dispute as to funds in a lawyer's possession, the lawyer's ethical duty under Rule 1.15(d) is to promptly notify and deliver the funds to which a client or third person is entitled.
       		 </p>
       		 </td></tr>
       		 <tr><td><p>
       		 When a lawyer knows there is a dispute between a client and a third person who has a lawful claim under applicable law to the funds in the lawyer's possession, the lawyer's ethical duty under Rule 1.15(e) is to notify both the client and the third person and to hold the disputed funds in a trust account until the dispute is resolved.  The lawyer must promptly deliver all portions of funds that are not disputed.
       		 </p>
       		 </td></tr>
       		 <tr><td><p>
       		 
       		 When a lawyer is unclear as to whether a third person has a lawful claim and the client is disputing the third person's claim, the lawyer's ethical duty is to notify both the client and the third person and hold the disputed funds in a trust account until the dispute is resolved.  The lawyer must promptly deliver all portions of funds that are not disputed."  Opinion  2007-7 at pg. 9.
       		 </p>
       		 </td></tr>
       		 <tr><td><p>
       		 At a minimum, you are only required to hold disputed funds until the patient and the Clinic resolve any dispute; nothing more:
       		 
       		 </p>
       		 </td></tr>
       		 
       		 <tr><td><p>
       		 
       		 "Ideally, a lawyer will try to resolve any known disputes between a client and a third person before disputed funds come into the lawyer's possession.  But, when a dispute arises as to funds in a lawyer's possession, a lawyer should encourage the client and the third person to resolve the dispute through discussion.  If appropriate, a lawyer may suggest to the client and the third person that they mediate or arbitrate the dispute.  A lawyer should not unilaterally assume to arbitrate a dispute between a client and a third person."   Opinion 2007-7 at pg. 10
       		 
       		 </p>
       		 </td></tr>
       		  <tr><td><p>
       		 
       		 We hope that you understand that we are covering these issues in advance, whether they will ever apply or not, so that our Clinic can provide the care that responds to our patient's medical complaints and symptoms.  We do not want to do this, and yet end up with nothing in the end.  The legal detail which we have provided in this letter reflects our advance consultation with our own legal counsel.  
       		 </p>
       		 </td></tr>
       		 <tr><td><p>
       		 
       		 We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which prevent the patient's ability to pay for treatment when received.	Please let us know if you will not,  at a minimum,  hold the funds at the conclusion of this case, as set out above? 
       		 
       		 </p>
       		  </td></tr>
       		   <tr><td><p><b>
       		  We are simply seeking to determine your intentions now so that we may protect ourselves before a default in our treatment fees.  
       		  </b></p>
       		  </td></tr>
       		 <tr><td><p><b>
       		 
       		 We attach a short letter of protection which has been reviewed and authorized by our patient.  If you will sign it and return it to us in the enclosed return envelope, this would also adequately confirm our request above.
       		  </b></p>
       		  </td></tr>
       		 </table>
       		 
       		<div> 
       		 <table cellpadding="0" cellspacing="0" border="0" width="100%">
             <tr ><td width="70%"></td>
              <td >Sincerely,</td>
              </tr>
              </table>
             <br>
             <br>
             <br>
             
             
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
             
              <tr ><td width="70%"></td><td><input type="text" class="input_txtbx1" name="nameofclinic"  value="${patientattorneydetails.nameofclinic}"    id="nameofclinic" onInput="return validatename(id)";><br><font size="+1" color="red"><span  id="nameofclinicerror"  style="color: red;font-style:italic;"></font></span></td></tr>
              <tr><td></td><td><span class="err">*</span> Name of Clinic</td>
              </tr>
              
               <tr ><td width="70%"></td><td><input type="text" class="input_txtbx1" name="treat"  value="${patientattorneydetails.treat}"  id="treat" onInput="return validatename(id)";><br><font size="+1" color="red"><span id="treaterror" ></span></font></td></tr>
              <tr><td ></td><td><span class="err"  style="color: red;font-style:italic;">*</span> Treating Physician</td>
              </tr>
              
              
              </table>
       		  
        	  </div>
          
            <br>
            <br>
            <table><tr> <td><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
               <td><a href="deletepatientattorney?patientid=${patientattorneydetails.patientid}"style="color:white" class="submit_btn" onclick="return confirmation() ">Delete</a></td>
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
        	 