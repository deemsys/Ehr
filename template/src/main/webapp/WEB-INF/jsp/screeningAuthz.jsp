<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
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
  <script>
  $(function() {
		$("#name").on("keypress", function(e) {
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
	
			document.getElementById("nameerror").innerHTML=" ";
			
			if(document.getElementById("name").value=="")
			{
			document.getElementById("nameerror").innerHTML="Required Field Should not be Empty";
			
			return false;
			} 
	
		document.getElementById("nameerror").innerHTML="";
	    if(document.getElementById("name").value.length<4 || document.getElementById("name").value.length>=32)
	    {
	    	
	    	document.getElementById("nameerror").innerHTML="Should be of length 4 to 32";
	    	
	        return false;
	    } 
	
	
	 	if(document.getElementById("name").value.substring(0,1)==" ")
		{
		document.getElementById("nameerror").innerHTML="Initial space not allowed";
		
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
</head>
<body>
<div id="right_content">
<form action="screeningAuthz" method="POST">

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
	              <h2>Screening Disclosure:</h2>
	            </div>
            <div class="contentbox">
            <c:choose>
            <c:when test="${empty screen}">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
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
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="date" /><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="screeningAuthz.date"></form:errors></span>
				                  	</tr>
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err"> * </span>Name:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="name" name="name" onInput="return validatename(id);" value="${name}"/><span id="nameerror" style="color: red;font-style:italic;"><form:errors path="screeningAuthz.name"></form:errors></span>
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
                       <p id="mypar"> This confirms my understanding that a representative of the clinic contacted me regarding the availability of a consultation and spinal examination. I understand and acknowledge that no representations were made to me that this service is in any way affiliated with any insurance company or governmental agency. </p>
	<p id="mypar">The consultation and examination were offered without obligation to accept the appointment, without obligation to respond immediately and was accepted by me willingly with regard to seeking treatment for injuries I sustained in an automobile accident or work related accident.</p>
                        </div>
                        <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="date" value="${screen.date}"/><br><span id="datepickererror" style="color: red;font-style:italic;"><form:errors path="screeningAuthz.date"></form:errors></span>
				                  	</tr>
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="name" name="name" value="${screen.name}"/><br><span id="nameerror" style="color: red;font-style:italic;"><form:errors path="screeningAuthz.name"></form:errors></span>
				                  	</tr>
				                  	</table>
				                  	</c:otherwise>
				                  	</c:choose>
				                  	<table>
                        <tr>
				  <td valign="top" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				                <td valign="top" align="center"><br><input type="submit" class="submit_btn" id="saveid" value="Save" onclick="return checkSubmit('this');"></td>
				                <td>&nbsp;&nbsp;
				                 <td><br><a href="viewpatient"style="color:white" id="cancelid"class="submit_btn">Cancel</a></td>
				                <!--  <td valign="top" align="right"><br> <input type="button"   class="submit_btn" value=" Print" onclick="window.print();return false;" /></td> -->
				                <!-- <a href="screeninglist" class="submit_btn" style="color: white">Cancel</a> --></td>
				 <!-- <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='screeninglist'"></td> -->
				  </tr>
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
                        