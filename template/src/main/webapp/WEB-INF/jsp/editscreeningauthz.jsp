<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
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
	var answer = confirm("Are you Sure You Want to Delete Participant ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
  </script>
   <script>
  $(function() {
	$("#name").on("keypress", function(e) {
		if (e.which === 32 && !this.value.length)
	        e.preventDefault();
	});
	});	

</script>
<script>
function validatename()
{
	var textInput = document.getElementById("name").value;
	textInput = textInput.replace(/[^A-Za-z ]/g, "");
	document.getElementById("name").value = textInput;
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
		
			document.getElementById("nameerror").innerHTML="";
		    if(document.getElementById("name").value.length<4 || document.getElementById("name").value.length>=32)
		    {
		    	
		    	document.getElementById("nameerror").innerHTML="Name should be min 4 and max 32";
		    	
		        return false;
		    } 
		
		
		 	if(document.getElementById("name").value.substring(0,1)==" ")
			{
			document.getElementById("nameerror").innerHTML="Initial space not allowed";
			
			return false;
			}
			    			
	}
	</script>
</head>
   <body>

<form action="updatescreeningauthz" method="POST">

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
        	<div>
	            <div class="headings altheading">
	              <h2>Editing Screening Disclosure:</h2>
	            </div>
	            <div class="contentbox">
  <table cellpadding="0" cellspacing="0" border="0" width="100%">
      <c:set value="${ScreeningAuthzForm.screeningDetails[0]}" var="ScreeningDetails"> </c:set>
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
                       <p id="mypar"> This confirms my understanding that a representative of the clinic contacted me regarding the availability of a consultation and spinal examination. I understand and acknowledge that no representations were made to me that this service is in any way affiliated with any insurance company or governmental agency. </p>
	<p id="mypar">The consultation and examination were offered without obligation to accept the appointment, without obligation to respond immediately and was accepted by me willingly with regard to seeking treatment for injuries I sustained in an automobile accident or work related accident.</p>
                        </div>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"> * </span>Date: </td>
				                  <input type="hidden" class="input_txtbx1" id="inp_id" value="${ScreeningDetails.screen_no}" name="screen_no" />
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="date" value="${ScreeningDetails.date}"/><br><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="screeningAuthz.date"></form:errors></span>
				                  	</tr>
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"> * </span>Name:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="name" name="name" onInput="return validatename();" value="${ScreeningDetails.name}"/><br>
				                  	<span id="nameerror" style="color: red;font-style:italic;"><form:errors path="screeningAuthz.name"></form:errors></span>
				                  	</tr>
				                  	</table>
				                  
				                  <table>
				                  <tr >
				                  <td>
				                  </td>
				                  </tr>
				                  </table>
				                  
				                  	<table>
              <tr >
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td ><input type="submit" class="submit_btn" value="Update" onclick="return checkSubmit('this');"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href= "deletescreenauthz?screen_no=${ScreeningDetails.screen_no}"class="submit_btn" style="text-decoration: none;color:white" onclick="return confirmation() ">Delete</a></td>
        	  </tr>
        	  </table>
        	  
				    </td>
				    </tr>
				    </table>
				    </div>
				    </td>
				    </tr>
				    </table>
				    </form>
				    </div>
				    </body>
				    </html>
				    <jsp:include page="footer.jsp"></jsp:include> 