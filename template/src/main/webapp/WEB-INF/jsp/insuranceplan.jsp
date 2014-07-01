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
 <!-- <script>
 $(window).load(function(){
	 
	  $("#enrollee").keyup(function() {
			
			 $("#enrolleeerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#enrolleeerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})

 });
 </script> -->
<!--  <script>
 $(function() {

		$("#datepicker").datepicker({ changeMonth: true,changeYear: true,showOn: "button",
			buttonImage: "resources/images/calendar.gif",
			buttonImageOnly: true,dateFormat: 'dd-mm-yy' });
		
         });
 
</script> -->
<script>
  $(function() {
	    $( "#datepicker" ).datepicker();
	  });
 
  </script>
  
  <script>
function validatename(){
    var textInput = document.getElementById("insure_comp").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("insure_comp").value = textInput;
}
</script>

<script>
function validateusername1(){
    var textInput = document.getElementById("enrollee").value;
    textInput = textInput.replace(/[^A-Z0-9]/g, "");
    document.getElementById("enrollee").value = textInput;
}

</script>

<script>
function validateusername2(){
    var textInput = document.getElementById("pat_name").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("pat_name").value = textInput;
}

</script>

<script>
function validateusername3(){
    var textInput = document.getElementById("agentname").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("agentname").value = textInput;
}

</script>


<script>
function validateusername4(){
    var textInput = document.getElementById("name_of_clinic").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("name_of_clinic").value = textInput;
}

</script>


<script>
function validateusername5(){
    var textInput = document.getElementById("authorized").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("authorized").value = textInput;
}

</script>

<script>
function validateusername6(){
    var textInput = document.getElementById("pat").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("pat").value = textInput;
}

</script>
 <script>

	function checkSubmit()
	{
		document.getElementById("insure_comperror").innerHTML=" ";
		
		if(document.getElementById("insure_comp").value=="")
		{
		document.getElementById("insure_comperror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		
		document.getElementById("insure_comperror").innerHTML="";
	    if(document.getElementById("insure_comp").value.length<4 || document.getElementById("insure_comp").value.length>=32)
	    {
	    	
	    	document.getElementById("insure_comperror").innerHTML="Name should be min 4 and max 32";
	    	
	        return false;
	    }
		document.getElementById("addrerror").innerHTML="";
	if(document.getElementById("addr").value=="")
		{
		document.getElementById("addrerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	document.getElementById("pat_nameerror").innerHTML="";
	if(document.getElementById("pat_name").value=="")
		{
		document.getElementById("pat_nameerror").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	document.getElementById("pat_nameerror").innerHTML="";
    if(document.getElementById("pat_name").value.length<4 || document.getElementById("pat_name").value.length>=32)
    {
    	
    	document.getElementById("pat_nameerror").innerHTML="Name should be min 4 and max 32";
    	
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
	document.getElementById("enrolleeerror").innerHTML="";
	if(document.getElementById("enrollee").value=="")
	{
	document.getElementById("enrolleeerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	/* document.getElementById("enrolleeerror").innerHTML="";
	if(isNaN(document.getElementById("enrollee").value))
	{
	document.getElementById("enrolleeerror").innerHTML="Enter Only Numbers";
	return false;
	} */
	document.getElementById("agentnameerror").innerHTML="";
	if(document.getElementById("agentname").value=="")
	{
	document.getElementById("agentnameerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("agentnameerror").innerHTML="";
    if(document.getElementById("agentname").value.length<4 || document.getElementById("agentname").value.length>=32)
    {
    	
    	document.getElementById("agentnameerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
	document.getElementById("faxerror").innerHTML="";
	if(document.getElementById("fax").value=="")
	{
	document.getElementById("faxerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
var mail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    
    if(document.getElementById("fax").value.match(mail)==null)
    {
    	document.getElementById("faxerror").innerHTML="Invalid email format";
    	
        return false;
    }
	document.getElementById("name_of_clinicerror").innerHTML="";
	if(document.getElementById("name_of_clinic").value=="")
	{
	document.getElementById("name_of_clinicerror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("name_of_clinicerror").innerHTML="";
    if(document.getElementById("name_of_clinic").value.length<4 || document.getElementById("name_of_clinic").value.length>=32)
    {
    	
    	document.getElementById("name_of_clinicerror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
	document.getElementById("paterror").innerHTML="";
	if(document.getElementById("pat").value=="")
	{
	document.getElementById("paterror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	
	document.getElementById("paterror").innerHTML="";
    if(document.getElementById("pat").value.length<4 || document.getElementById("pat").value.length>=32)
    {
    	
    	document.getElementById("paterror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
	document.getElementById("authorizederror").innerHTML="";
	if(document.getElementById("authorized").value=="")
	{
	document.getElementById("authorizederror").innerHTML="Required Field Should not be Empty";
	
	return false;
	}
	document.getElementById("authorizederror").innerHTML="";
    if(document.getElementById("authorized").value.length<4 || document.getElementById("authorized").value.length>=32)
    {
    	
    	document.getElementById("authorizederror").innerHTML="Name should be min 4 and max 32";
    	
        return false;
    }
	}

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
<form action="insuranceplan" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="55%" class="margin_table">
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
	             <h2>Insurance Waiver</h2> 
	            </div>
	            <div class="contentbox">
	            <c:choose>
	            <c:when test="${empty waiver}">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <td width="100%"><span class="err">*</span><input type="text" class="input_txtbx1" onInput="return validatename()"; name="insure_comp" id="insure_comp" placeholder="Name of Insurance Company" style="width: 215px; "/> <span id="insure_comperror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.insure_comp"></form:errors></span> </td>
              </tr>
              <tr class="row1"> 
              <td width="100%">
              <span class="err">*</span><input type="text" class="input_txtbx1" name="addr" id="addr" placeholder="Address" style="width: 212px; "/> <span id="addrerror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.addr"></form:errors> </span></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><br>
              <p id="mypar" align="center">Re:	SUBSCRIBER/ENROLLEE'S DECISION TO NOT USE INSURANCE 
		BENEFITS FOR ACCIDENT</p></tr></table>
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr class="row1">
        <td ><span class="err">*</span><input type="text" class="input_txtbx1" name="pat_name" onInput="return validateusername2()"; value="${name}" id="pat_name" placeholder="Patient's Name" style="width: 215px; "/> <span id="pat_nameerror" style="color: red;font-style:italic;" ><form:errors path="Insuranceplan.pat_name"></form:errors></span></td>
        </tr>
        <tr class="row1">
        <td ><span class="err">*</span><input type="text" class="input_txtbx1" name="accident_date"  id="datepicker" placeholder="Date of Accident" style="width: 213px; "/> <span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.accident_date"></form:errors> </span></td>
        </tr>
        <tr class="row1">
        <td ><span class="err">*</span><input type="text" class="input_txtbx1" name="enrollee" id="enrollee" onInput="return validateusername1()"; placeholder="Subscriber/Enrollee No" style="width: 214px; "/> <span id="enrolleeerror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.enrollee"></form:errors> </span>
        <br><span class="err" id="enrolleeerror"></span>
        </td>
        </tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr><br><p id="mypar">To Whomsoever It May Concern:</p></tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I have been injured in an accident.  I am a subscriber/enrollee in your company's health insurance plan.</p>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I have decided that I do not want to use available coverage benefits to which I may be entitled for my medical treatment with [Name of Clinic] for my above accident.  I have chosen to pay for treatment from any liability settlement and/or my own liability insurer, if available.</p>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise if your company has no objection:</p>
        </tr>
        <tr class="row1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="checkbox" name="no_objection" value="no_objection">No Objection
        </tr>
        <tr>
        <td style="width: 295px; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>By&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="input_txtbx1" name="agentname" onInput="return validateusername3()"; id="agentname"  placeholder="Authorized Company Representative" style="width: 216px; "/> <span id="agentnameerror" style="color: red;font-style:italic;"></span><form:errors path="Insuranceplan.agentname"></form:errors>  </td>
        </tr> 
         <tr class="row1">
       
        <td></td>
        <td></td>
        </tr>
        <tr class="row1">
        <td width="100%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="err">*</span>Please eMail this back to&nbsp;&nbsp;
        <input type="text" class="input_txtbx1" name="fax" id="fax" placeholder="Clinic's EMail Id" style="width: 246px; "/><span id="faxerror" style="color: red;font-style:italic;"> <form:errors path="Insuranceplan.fax"></form:errors> </td>
        <td width="100%"></td>
        <td></td>
        </tr>
        <tr >
        <td></td>
        <td align="center ">&nbsp;Sincerely,</td>
        </tr>
        <tr class="row1">
        <td></td>
        
        <td align="center"><span class="err">*</span><input type="text" class="input_txtbx1" onInput="return validateusername4()"; name="name_of_clinic" id="name_of_clinic"  placeholder="Name of clinic" style="width: 202px; "/><br> <span id="name_of_clinicerror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.name_of_clinic"></form:errors> </td>
        <td></td>
        </tr>
        <tr class="row1">
        <td><span class="err">*</span><input type="text" class="input_txtbx1" onInput="return validateusername6()"; name="pat" id="pat" placeholder="Patient"/><span id="paterror" style="color: red;font-style:italic;"> <form:errors path="Insuranceplan.pat"></form:errors></span> </td>
        <td align="center"><span class="err">*</span><input type="text" class="input_txtbx1" onInput="return validateusername5()"; name="authorized" id="authorized" placeholder="Authorized Clinic Representative" style="width: 204px; "/><br> <span id="authorizederror" style="color: red;font-style:italic;"> <form:errors path="Insuranceplan.authorized"></form:errors></span> </td>
        <td></td>
        </tr>
       </table>
      </c:when>
      <c:otherwise>
       <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <td width="100%"><input type="text" class="input_txtbx1" name="insure_comp" id="insure_comp" placeholder="Name of Insurance Company" value="${waiver.insure_comp}"/> <span id="insure_comperror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.insure_comp"></form:errors></span> </td>
              </tr>
              <tr class="row1"> 
              <td width="100%">
              <input type="text" class="input_txtbx1" name="addr" id="addr" placeholder="Address" value="${waiver.addr}"/> <span id="addrerror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.addr"></form:errors></span> </td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><br>
              <p id="mypar" align="center">Re:	SUBSCRIBER/ENROLLEE'S DECISION TO NOT USE INSURANCE 
		BENEFITS FOR ACCIDENT</p></tr></table>
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="pat_name" id="pat_name" placeholder="Patient's Name" value="${waiver.pat_name}"/> <span class="err"><form:errors path="Insuranceplan.pat_name"></form:errors></span> </td>
        </tr>
        <tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="accident_date" id="datepicker" placeholder="Date of Accident" value="${waiver.accident_date}"/> <span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.accident_date"></form:errors></span> </td>
        </tr>
        <tr class="row1">
        <td ><input type="text" class="input_txtbx1" name="enrollee" id="enrollee" placeholder="Subscriber/Enrollee No" value="${waiver.enrollee}"/> <span id="enrolleeerror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.enrollee"></form:errors> </span>
        <br>
        <span class="err" id="enrolleeerror"></span>
        </td>
        </tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr><br><p id="mypar">To Whomsover It May Concern:</p></tr>
        </table>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I have been injured in an accident.  I am a subscriber/enrollee in your company's health insurance plan.</p>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I have decided that I do not want to use available coverage benefits to which I may be entitled for my medical treatment with [Name of Clinic] for my above accident.  I have chosen to pay for treatment from any liability settlement and/or my own liability insurer, if available.</p>
        <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise if your company has no objection:</p>
        </tr>
        <tr class="row1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="checkbox" name="no_objection" value="no_objection">No Objection
        </tr>
        <tr>
        <td>By</td>
        </tr> 
         <tr class="row1">
        <td><input type="text" class="input_txtbx1" name="agentname" id="agentname" placeholder="Authorized Company Representative" value="${waiver.agentname}"/> <span id="agentnameerror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.agentname"></form:errors>  </td>
        <td></td>
        <td></td>
        </tr>
        <tr class="row1">
        <td width="100%">Please fax this back to&nbsp;&nbsp;
        <input type="text" class="input_txtbx1" name="fax" id="fax" placeholder="Clinic's Fax No" value="${waiver.fax}"/><span id="faxerror" style="color: red;font-style:italic;"> <form:errors path="Insuranceplan.fax"></form:errors> </td>
        <td width="100%"></td>
        <td></td>
        </tr>
        <tr >
        <td></td>
        <td align="center ">Sincerely,</td>
        </tr>
        <tr class="row1">
        <td></td>
        
        <td align="center"><input type="text" class="input_txtbx1" name="name_of_clinic" id="name_of_clinic" placeholder="Name of clinic" value="${waiver.name_of_clinic}"/><br> <span id="name_of_clinicerror" style="color: red;font-style:italic;"><form:errors path="Insuranceplan.name_of_clinic"></form:errors> </td>
        <td></td>
        </tr>
        <tr class="row1">
        <td><input type="text" class="input_txtbx1" name="pat" id="pat" placeholder="Patient" value="${waiver.pat}"/><span id="paterror" style="color: red;font-style:italic;"> <form:errors path="Insuranceplan.pat"></form:errors> </td>
        <td align="center"><input type="text" class="input_txtbx1" name="authorized" id="authorized" placeholder="Authorized Clinic Representative" value="${waiver.authorized }"/><br> <span id="authorizederror" style="color: red;font-style:italic;"> <form:errors path="Insuranceplan.authorized"></form:errors> </td>
        <td></td>
        </tr>
       </table>
      </c:otherwise>
       </c:choose>
       <br>
        <table>
        <tr>
     	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
        <td align="center"><br><input type="submit" class="submit_btn" id="saveid" value="Save" onclick="return checkSubmit('this');"></td>
        <td>&nbsp;&nbsp;</td>
         <td><br><a href="viewpatient"style="color:white" id="cancelid" class="submit_btn">Cancel</a></td>
          <!-- <td valign="top" align="right"><br> <input type="button"   class="submit_btn" value=" Print" onclick="window.print();return false;" /></td> -->
        <td><br><!-- <a href="insuranceplanlist"  class="submit_btn" style="color:white">Cancel</a> --></td>
        <td>&nbsp;&nbsp;</td>
       <!--  <td><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='insuranceplanlist'"></td> -->
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