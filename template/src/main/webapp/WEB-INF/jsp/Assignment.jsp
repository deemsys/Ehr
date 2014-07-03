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
	/*   $(function() {
		    $( "#datepicker1" ).datepicker();
		  }); */
	  $(function() {
		    $( "#datepicker2" ).datepicker();
		  });
		   $(function() {
		    $( "#datepicker3" ).datepicker();
		  });
		    $(function() {
		    $( "#datepicker4" ).datepicker();
		  });
		    $(function() {
			    $( "#datepicker5" ).datepicker();
			  });
		    $(function() {
			    $( "#datepicker6" ).datepicker();
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
  <script>

  
  $(function() {
		$("#printpname").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});	

	</script>
<script>
$(function() {
$("#patientname").on("keypress", function(e) {
	if (e.which === 32 && !this.value.length)
        e.preventDefault();
});
});	

</script>
<script>
$(function() {
$("#patientsign").on("keypress", function(e) {
	if (e.which === 32 && !this.value.length)
        e.preventDefault();
});
});	

</script>
<script>
$(function() {
$("#parentname").on("keypress", function(e) {
	if (e.which === 32 && !this.value.length)
        e.preventDefault();
});
});	

</script>
<script>
$(function() {
$("#parentsign").on("keypress", function(e) {
	if (e.which === 32 && !this.value.length)
        e.preventDefault();
});
});	

</script>
<script>
$(function() {
$("#representative").on("keypress", function(e) {
	if (e.which === 32 && !this.value.length)
        e.preventDefault();
});
});	

</script>
<script>
$(function() {
$("#day").on("keypress", function(e) {
	if (e.which === 32 && !this.value.length)
        e.preventDefault();
});
});	

</script>
<script>
$(function() {
$("#month").on("keypress", function(e) {
	if (e.which === 32 && !this.value.length)
        e.preventDefault();
});
});	

</script>
<script>
$(function() {
$("#year").on("keypress", function(e) {
	if (e.which === 32 && !this.value.length)
        e.preventDefault();
});
});	

</script>
<script>
function validatename(id)
{
	var textInput = document.getElementById(id).value;
	textInput = textInput.replace(/[^A-Za-z ]/g, "");
	document.getElementById(id).value = textInput;
}

function validatesign(id)
{
	var textInput = document.getElementById(id).value;
	textInput = textInput.replace(/[^A-Za-z. ]/g, "");
	document.getElementById(id).value = textInput;
}
</script>

  <script>
function checkSubmit()

{   

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


 	if(document.getElementById("patientname").value.substring(0,1)==" ")
	{
	document.getElementById("patientnameerror").innerHTML="Initial space not allowed";
	
	return false;
	}
 	
	 document.getElementById("datepickererror").innerHTML="";
	if(document.getElementById("datepicker").value=="")
	{
	document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
	
	return false;
	} 
	document.getElementById("patientsignerror").innerHTML="";
	if(document.getElementById("patientsign").value=="")
	{
	document.getElementById("patientsignerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("patientsignerror").innerHTML="";
    if(document.getElementById("patientsign").value.length<4 || document.getElementById("patientsign").value.length>=32)
    {
    	
    	document.getElementById("patientsignerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    } 


 	if(document.getElementById("printpname").value.substring(0,1)==" ")
	{
	document.getElementById("patientsignerror").innerHTML="Initial space not allowed";
	
	return false;
	}
	 document.getElementById("datepicker2error").innerHTML="";
	if(document.getElementById("datepicker2").value=="")
	{
	document.getElementById("datepicker2error").innerHTML="Required Field Should not be Empty";
	
	return false;
	} 
document.getElementById("datepicker2error").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker2").value.match(datechk)==null)
	    {
	    	document.getElementById("datepicker2error").innerHTML="Invalid Date Format";
	    	
	        return false;
	    }
	document.getElementById("parentnameerror").innerHTML="";
	if(document.getElementById("parentname").value=="")
	{
	document.getElementById("parentnameerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("parentnameerror").innerHTML="";
    if(document.getElementById("parentname").value.length<4 || document.getElementById("parentname").value.length>=32)
    {
    	
    	document.getElementById("parentnameerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    } 


 	if(document.getElementById("parentname").value.substring(0,1)==" ")
	{
	document.getElementById("parentnameerror").innerHTML="Initial space not allowed";
	
	return false;
	}

	
	document.getElementById("parentsignerror").innerHTML="";
	if(document.getElementById("parentsign").value=="")
	{
	document.getElementById("parentsignerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("parentsignerror").innerHTML="";
    if(document.getElementById("parentsign").value.length<4 || document.getElementById("parentsign").value.length>=32)
    {
    	
    	document.getElementById("parentsignerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    } 


 	if(document.getElementById("parentsign").value.substring(0,1)==" ")
	{
	document.getElementById("parentsignerror").innerHTML="Initial space not allowed";
	
	return false;
	}

	document.getElementById("datepicker3error").innerHTML="";
	if(document.getElementById("datepicker3").value=="")
	{
	document.getElementById("datepicker3error").innerHTML="Required Field Should not be Empty";
	return false;
	} 
document.getElementById("datepicker3error").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker3").value.match(datechk)==null)
	    {
	    	document.getElementById("datepicker3error").innerHTML="Invalid Date Format";
	    	
	        return false;
	    }
	document.getElementById("representativeerror").innerHTML="";
	if(document.getElementById("representative").value=="")
	{
	document.getElementById("representativeerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("representativeerror").innerHTML="";
    if(document.getElementById("representative").value.length<4 || document.getElementById("representative").value.length>=32)
    {
    	
    	document.getElementById("representativeerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    } 


 	if(document.getElementById("representative").value.substring(0,1)==" ")
	{
	document.getElementById("representativeerror").innerHTML="Initial space not allowed";
	
	return false;
	}
	document.getElementById("datepicker4error").innerHTML="";
	if(document.getElementById("datepicker4").value=="")
	{
	document.getElementById("datepicker4error").innerHTML="Required Field Should not be Empty";
	return false;
	} 
	document.getElementById("datepicker4error").innerHTML="";
	var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		if(document.getElementById("datepicker4").value.match(datechk)==null)
	    {
	    	document.getElementById("datepicker4error").innerHTML="Invalid Date Format";
	    	
	        return false;
	    }
		
		if(document.getElementById("representative").value.substring(0,1)==" ")
		{
		document.getElementById("representativeerror").innerHTML="Initial space not allowed";
		
		return false;
		}
		document.getElementById("datepicker5error").innerHTML="";
		if(document.getElementById("datepicker4").value=="")
		{
		document.getElementById("datepicker5error").innerHTML="Required Field Should not be Empty";
		return false;
		} 
		document.getElementById("datepicker5error").innerHTML="";
		var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
			if(document.getElementById("datepicker5").value.match(datechk)==null)
		    {
		    	document.getElementById("datepicker5error").innerHTML="Invalid Date Format";
		    	
		        return false;
		    }
			
			if(document.getElementById("representative").value.substring(0,1)==" ")
			{
			document.getElementById("representativeerror").innerHTML="Initial space not allowed";
			
			return false;
			}
			document.getElementById("datepicker6error").innerHTML="";
			if(document.getElementById("datepicker6").value=="")
			{
			document.getElementById("datepicker6error").innerHTML="Required Field Should not be Empty";
			return false;
			} 
			document.getElementById("datepicker6error").innerHTML="";
			var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
				if(document.getElementById("datepicker6").value.match(datechk)==null)
			    {
			    	document.getElementById("datepicker6error").innerHTML="Invalid Date Format";
			    	
			        return false;
			    }
	}
  </script>
</head>
<body>
<div id="right_content">
<form action="Assignment" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
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
	              <h2>Authorization To Release Records/Assignment Of Benefits</h2>
	            </div>
            <div class="contentbox">
            <c:choose>
            <c:when test="${empty assignment}">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="70%">
                        <tr>
                        <div align="justify">
				                <p id="mypar">&nbsp;This agreement made this the:<input type="text" class="input_txtbx1" id="day" name="day" /><span class="err"><form:errors path="Assignment.day"></form:errors></span> day of <input type="text" class="input_txtbx1" id="inp_id" name="month" /><span class="err"><form:errors path="Assignment.month"></form:errors></span>
				                  	2013 between <input type="text" class="input_txtbx1" id="year" name="year" /><span class="err"><form:errors path="Assignment.year"></form:errors></span>
				                  	(claimant) and Perry Chiropractic and Therapy Center constitutes an irrevocable and binding agreement between the parties as follows:
Claimant was involved in an accident on or about the <input type="text" class="input_txtbx1" id="day" name="day" /><span class="err"><form:errors path="Assignment.day1"></form:errors></span>
day of <input type="text" class="input_txtbx1" id="month" name="month1" /> <span class="err"><form:errors path="Assignment.month1"></form:errors></span>and I therein incurred injuries for which I have sought medical treatment from PCTC.</p>

<P id="mypar"> Claimant herby directs any and all insurance carriers, attorneys, 
agencies, companies, individuals, and/or other legal entities (payers), 
which may elect to pay or be obligated o pay benefits to me regardless of the issue of liability, 
for any medical conditions, accidents, injuries, or illnesses, past or future (conditions), to pay directly to, 
and exclusively in the name of Perry Chiropractic and Therapy Center, such sums as may be owing to PCTC, for charges
 incurred by me. These charges include but are not limited to the following: charges for treatment, narrative reports, depositions, 
 testimony, and any other charges incurred by me at PCTC.
                       </p>
  <p id="mypar"> Claimant grants a contractual lien to Perry Chiropractic and Therapy Center with respect to my charges. Compliance herewith is requisite with notice by facsimile, letter, or telephone contact. 
                       This Agreement shall not be construed as an election by PCTC to claim protection under any statutory lien law. </p>
                       
                       <p id="mypar">For the purposes of the Agreement, benefits include, but are not limited to any of the following: proceeds from any settlement, judgment, of verdict; any proceeds from commercial health or group insurance; disability benefits; workers compensation benefits; medical payments befits; personal injury protection; lost wage benefits; lost service benefits; no-fault coverage; uninsured and underinsured motorist coverage; third-party liability distributions; malpractice proceeds; attorney retainer agreements; and any other benefits or proceeds payable to me for the purposes stated  herein, regardless of whether such proceeds are related to my accident.</justify></p>
                       <p id="mypar">In the event that claimant retains one or successive attorneys to represent them in this matter, claimant directs each attorney to issue a letter of protection to this office regarding their charges. Such letter shall be written to protect the full amount due and owing PCTC. Further, such letter shall indicate without reservation that any and all sums received by said attorney shall be subject to this agreement regardless of the source of such funds. Claimant agrees that the letter issued by said attorney cannot be revoked or modified without the express, written consent of this office. Claimant further directs each and every of my attorneys to provide immediate notice PCTC upon request any and all information regarding their personal injury case. Claimant directs his attorney(s) to provide to this office upon written or oral request any and all information regarding their personal injury case. Also agree that Claimant's attorney shall provide to PCTC upon request a full accounting of any and all funds their attorney may receive. In the event that claimants attorney fail to provide any information as required herein or as requested, the attorney did not follow claimant's explicit instructions. Claimant's attorney(s) obligation hereunder is valid upon the receipt of a copy of this agreement.</justify></p>
                       <p id="mypar">Claimant directs all payers to release any information regarding my treatment pertinent to my case(s)to all payers as defined above to facilitate collection under this Agreement.</p>
                       <p id="mypar">PCTC and Claimant agree that PCTC may file a copy of this Agreement; together with any applicable charges, with any or all payers, regardless of whether a claim has been established with said payers. Claimant authorizes PCTC to endorse/sign my name on any and all checks listing me as a payee which are presented to this Office for payment of an account relating to me, my spouse, or any of my dependents. Claimant authorizes PCTC to apply any credit balance or charges incurred by me to any other outstanding charges still owed by me, my spouse, or my dependents, regardless of whether these other charged are related to my condition.</p>
                       <p id="mypar">Agreement does not prevent PCTC form making an immediate demand for payment or forestall collection efforts. Claimant hereby identifies PCTC for any costs or fees incurred as a result of the effort to collect on claimant's outstanding balance due. Claimant remains responsible for payment for and reimbursement of all costs of such collection efforts, including but not limited to, court costs and attorney fees. </p>
                       <p id="mypar">This Agreement shall not be modified or revoked without the mutual written consent of PCTC and claimant. </p>
                       <p id="mypar">Claimant agrees that each and every provision of this Agreement is reasonable necessary for the protection of the rights and interests of PCTC and claimant. Should any provision of this Agreement be found to be invalid, illegal or unenforceable, or for any reason cease to be binding on any party hereto, all other portions and provisions of this Agreement shall, nevertheless, remain in full force and effect.</p>
                       
                       <p id="mypar"><b>*NOTE TO ALL PAYERS HEREUNDER, FAILURE TO FOLLOW THE EXPRESS WRITTEN INSTRUCTION OF THE CLAIMANT HEREUNDER MAY RESULT IN A BREACH OF THIS AGREEMENT. A BREACH OF THIS AGREEMENT BY THE CLAIMANT HEREUNDER BY AND THROUGH YOUR ACTIONS IS AN INTENTIONAL INTERFERENCE WITH THIS CONTRACT AND PCTC WILL PURSUE ANY PAYER FOR THAT INTERFERENCE.</b></p>
                       
                       </tr></table>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                       <tr width="500"class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Name: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientname" name="patientname" value="${name}" onInput="return validatename(id);"/><br><span id="patientnameerror" style="color: red;font-style:italic;"><form:errors path="Assignment.patientname"></form:errors></td>
				                  	<%-- <td valign="middle" width="50%"><span class="err">*</span>Date</td>
				                  	<td valign="top"><input type="text" class="input_txtbx1" id="datepicker" name="patientdate" /><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Assignment.patientdate"></form:errors></span></td> --%>
				                  	</tr>
				                  	<tr width="500" class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientsign" name="patientsign" onInput="return validatesign(id);"/><span id="patientsignerror" style="color: red;font-style:italic;"><form:errors path="Assignment.patientsign"></form:errors></span>
				                  	<td valign="middle" align="left" class="input_txt" style="width: 65px; "><span class="err">*</span>Date</td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker2" name="patientdate" /><br><span id="datepicker2error" style="color: red;font-style:italic;"><form:errors path="Assignment.parentdate"></form:errors></span>
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Custodial Parent or Legal Guardian :  </td>
				                  <td valign="top" align="left" class="input_txt"><input type="text" class="input_txtbx1" id="parentname" onInput="return validatename(id);" name="parentname" /><br><span id="parentnameerror" style="color: red;font-style:italic;"></span><form:errors path="Assignment.parentname"></form:errors>
				                  </td>
				                  	</tr> 
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Parent/Guardian Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="parentsign" name="parentsign" onInput="return validatesign(id);"/><span id="parentsignerror" style="color: red;font-style:italic;"></span><form:errors path="Assignment.parentsign"></form:errors>
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker3" name="parentdate" /><br><span id="datepicker3error" style="color: red;font-style:italic;"></span><form:errors path="Assignment.parentdate"></form:errors>
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Perry Chiropractic and Therapy Center Representative:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="representative" name="representative" onInput="return validatename(id);"/><span id="representativeerror" style="color: red;font-style:italic;"> </span><form:errors path="Assignment.representative"></form:errors>
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="middle" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker4" name="representativedate" /><br><span id="datepicker4error" style="color: red;font-style:italic;"></span>
				                  	<form:errors path="Assignment.representativedate"></form:errors></span>
				                  	</tr>
				                  	</table>
				                  	</c:when>
				                  	<c:otherwise>
				                  	 <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
				                <p id="mypar">&nbsp;This agreement made this the: <input type="text" class="input_txtbx1" id="datepicker6" name="day" value="${assignment.day }"/><span class="err"><form:errors path="Assignment.day"></form:errors></span>
				                  	  
				                  	day of <input type="text" class="input_txtbx1" id="datepicker5" name="month" value="${assignment.month}"/><span class="err"><form:errors path="Assignment.month"></form:errors></span>
				                  	2013 between <input type="text" class="input_txtbx1" id="year" name="year" value="${assignment.year}"/><span class="err"><form:errors path="Assignment.year"></form:errors></span>
				                  	(claimant) and Perry Chiropractic and Therapy Center constitutes an irrevocable and binding agreement between the parties as follows:
Claimant was involved in an accident on or about the <input type="text" class="input_txtbx1" id="day1" name="day1" value="${assignment.day1}"/><span class="err"><form:errors path="Assignment.day1"></form:errors></span>
day of <input type="text" class="input_txtbx1" id="month1" name="month1" value="${assignment.month1}"/> <span class="err"><form:errors path="Assignment.month1"></form:errors></span>and I therein incurred injuries for which I have sought medical treatment from PCTC.</p>

<P id="mypar"> Claimant herby directs any and all insurance carriers, attorneys, 
agencies, companies, individuals, and/or other legal entities (payers), 
which may elect to pay or be obligated o pay benefits to me regardless of the issue of liability, 
for any medical conditions, accidents, injuries, or illnesses, past or future (€œcondition), to pay directly to, 
and exclusively in the name of Perry Chiropractic and Therapy Center, such sums as may be owing to PCTC, for charges
 incurred by me. These charges include but are not limited to the following: charges for treatment, narrative reports, depositions, 
 testimony, and any other charges incurred by me at PCTC.
                       </p>
  <p id="mypar"> Claimant grants a contractual lien to Perry Chiropractic and Therapy Center with respect to my charges. Compliance herewith is requisite with notice by facsimile, letter, or telephone contact. 
                       This Agreement shall not be construed as an election by PCTC to claim protection under any statutory lien law. </p>
                       
                       <p id="mypar">For the purposes of the Agreement, benefits include, but are not limited to any of the following: proceeds from any settlement, judgment, of verdict; any proceeds from commercial health or group insurance; disability benefits; workers compensation benefits; medical payments befits; personal injury protection; lost wage benefits; lost service benefits; no-fault coverage; uninsured and underinsured motorist coverage; third-party liability distributions; malpractice proceeds; attorney retainer agreements; and any other benefits or proceeds payable to me for the purposes stated  herein, regardless of whether such proceeds are related to my accident.</justify></p>
                       <p id="mypar">In the event that claimant retains one or successive attorneys to represent them in this matter, claimant directs each attorney to issue a letter of protection to this office regarding their charges. Such letter shall be written to protect the full amount due and owing PCTC. Further, such letter shall indicate without reservation that any and all sums received by said attorney shall be subject to this agreement regardless of the source of such funds. Claimant agrees that the letter issued by said attorney cannot be revoked or modified without the express, written consent of this office. Claimant further directs each and every of my attorneys to provide immediate notice PCTC upon request any and all information regarding their personal injury case. Claimant directs his attorney(s) to provide to this office upon written or oral request any and all information regarding their personal injury case. Also agree that Claimant's attorney shall provide to PCTC upon request a full accounting of any and all funds their attorney may receive. In the event that claimants attorney fail to provide any information as required herein or as requested, the attorney did not follow claimant's explicit instructions. Claimant'€™s attorney(s) obligation hereunder is valid upon the receipt of a copy of this agreement.</justify></p>
                       <p id="mypar">Claimant directs all payers to release any information regarding my treatment pertinent to my case(s)to all payers as defined above to facilitate collection under this Agreement.</p>
                       <p id="mypar">PCTC and Claimant agree that PCTC may file a copy of this Agreement; together with any applicable charges, with any or all payers, regardless of whether a claim has been established with said payers. Claimant authorizes PCTC to endorse/sign my name on any and all checks listing me as a payee which are presented to this Office for payment of an account relating to me, my spouse, or any of my dependents. Claimant authorizes PCTC to apply any credit balance or charges incurred by me to any other outstanding charges still owed by me, my spouse, or my dependents, regardless of whether these other charged are related to my condition.</p>
                       <p id="mypar">Agreement does not prevent PCTC form making an immediate demand for payment or forestall collection efforts. Claimant hereby identifies PCTC for any costs or fees incurred as a result of the effort to collect on claimant's outstanding balance due. Claimant remains responsible for payment for and reimbursement of all costs of such collection efforts, including but not limited to, court costs and attorney fees. </p>
                       <p id="mypar">This Agreement shall not be modified or revoked without the mutual written consent of PCTC and claimant. </p>
                       <p id="mypar">Claimant agrees that each and every provision of this Agreement is reasonable necessary for the protection of the rights and interests of PCTC and claimant. Should any provision of this Agreement be found to be invalid, illegal or unenforceable, or for any reason cease to be binding on any party hereto, all other portions and provisions of this Agreement shall, nevertheless, remain in full force and effect.</p>
                       
                       <p id="mypar"><b>*NOTE TO ALL PAYERS HEREUNDER, FAILURE TO FOLLOW THE EXPRESS WRITTEN INSTRUCTION OF THE CLAIMANT HEREUNDER MAY RESULT IN A BREACH OF THIS AGREEMENT. A BREACH OF THIS AGREEMENT BY THE CLAIMANT HEREUNDER BY AND THROUGH YOUR ACTIONS IS AN INTENTIONAL INTERFERENCE WITH THIS CONTRACT AND PCTC WILL PURSUE ANY PAYER FOR THAT INTERFERENCE.</b></p>
                       
                       </tr>
                       <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span id="nameerr">*</span>PatientName: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientname" name="patientname" value="${assignment.patientname}"/><br><span id="patientnameerror" style="color: red;font-style:italic;"><form:errors path="Assignment.patientname"></form:errors>
				                  	</tr>
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="patientsign" name="patientsign" value="${assignment.patientsign}"/><span id="patientsignerror" style="color: red;font-style:italic;"><form:errors path="Assignment.patientsign"></form:errors>
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker2" name="patientdate" value="${assignment.patientdate}"/><br><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Assignment.patientdate"></form:errors>
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Custodial Parent or Legal Guardian :  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="parentname" name="parentname" value="${assignment.parentname}"/><br><span id="parentnameerror" style="color: red;font-style:italic;"><form:errors path="Assignment.parentname"></form:errors>
				                  	</tr> 
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt" id="parentsign"><span id="parentsignerror" style="color: red;font-style:italic;">*</span>Parent/Guardian Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="parentsign" name="parentsign" value="${assignment.parentsign}"/><span id="parentsignerror" style="color: red;font-style:italic;"><form:errors path="Assignment.parentsign"></form:errors>
				                  	<td valign="middle" align="left" class="input_txt"><span id="parentdateerr">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker3" name="parentdate" value="${assignment.parentdate}"/><br><span id="pdatepickererr"><form:errors path="Assignment.parentdate"></form:errors>
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Perry Chiropractic and Therapy Center Representative:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="representative" name="representative" value="${assignment.representative}"/><span id="representativeerr"></span><form:errors path="Assignment.representative"></form:errors>
				                  	<td valign="middle" align="left" class="input_txt"><span id="representativeerr">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker4" name="representativedate" value="${assignment.representativedate}"/><br><span id="representativedateerr"> </span><form:errors path="Assignment.representativedate"></form:errors>
				                  	</tr>
				                  	</table>
				                  	</c:otherwise>
				                  	</c:choose>
				                  	<table>
				                  	 <tr>
				  <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save" id="saveid" onclick ="return checkSubmit('this');"></td>
				                <td>&nbsp;&nbsp;</td>
				                 <td><br><a href="viewpatient"style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
				                <!-- <td valign="top" align="right"><br> <input type="button"   class="submit_btn" value=" Print" onclick="window.print();return false;" /></td> -->
				   <td valign="top" align="center"><!-- <br><a href="assignmentlist" style="color:white" class="submit_btn">Cancel</a> --></td>
				   <td>&nbsp;&nbsp;</td>
				   
				  </tr>
				  </div>
                        </table>
                       
                        </td>
                      
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