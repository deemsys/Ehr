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
  <style type="text/css">
#overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.cnt223 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.cnt223{
min-width: 400px;
width: 400px;
min-height: 150px;
margin: 100px auto;
background: #f3f3f3;
position: relative;
z-index: 103;
padding: 10px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
}
.cnt223 p{
clear: both;
color: #555555;
text-align: justify;
}
.cnt223 p a{
color: #d91900;
font-weight: bold;
}
.cnt223 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.cnt223 .x:hover{
cursor: pointer;
}
</style>
 <script type='text/javascript'>
$(function(){
var overlay = $('<div id="overlay"></div>');
overlay.show();
overlay.appendTo(document.body);

$('.popup').show();
$('.close').click(function(){
$('.popup').hide();
overlay.appendTo(document.body).remove();
return false;
});

$('.x').click(function(){
$('.popup').hide();

overlay.appendTo(document.body).remove();
return false;
});
});
</script>
<script type="text/javascript">
function doAjaxPost() {  
	
	var username = $('#username').val();
	if(username=="")
		{
		alert("Please Enter Patient Username");
		return false;
		}
	
	 $.ajax({  
		    type: "POST",  
		    url: "/EhrApp/insuranceverification_ajax",  
		    data: "pusername=" + username,
		    success: function(response){  
		    	
		      // we have the response
		      //alert("response"+response);
		     //alert(response.substring(0,4));
		     //alert(response.substring(4,response.length));
		     
		     if(response=='error')
		    	 {
		    	 alert("The Patient UserId does not exist Please check the UserId");
		    	 }
		     else if(response.substring(0,4)=='edit')
		    	  {
		    	 var sub1=response.indexOf("|")+1;		    	 
		    	 var url="editinsuranceverificationdetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    // alert(response.indexOf("|"));
			   //alert(response.substring(0,cal));
			 document.getElementById("verify_name").value=response.substring(0,cal);
			   
		    document.getElementById("user").value=response.substring(calculate,response.length);
		    	
		    	 $('.popup').hide();
		    	 $('#overlay').remove();
		    	
		      // $('#info').html(response);
		       
		     /*   
		       $('div#overlay').RemoveAttr('id','none');
		       alert("hi");
		       var overlay = $('<div id="overlay"></div>');
		   	   overlay.show();		      	
		     
		        
		       overlay.appendTo(document.body).remove();
		       
		      return false; */
		    	  }	   
		      
		    
		    },  
		    error: function(e){  
		      alert('Error: ' + e);  
		    }  
		  });  
		}  
	

</script> 


<script>
$(function() {
		$("#spoke_with").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
		$(function() {
		$("#mail_claims").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
function validatenum(){
    var textInput = document.getElementById("deductible").value;
    textInput = textInput.replace(/[^0-9.]/g, "");
    document.getElementById("deductible").value = textInput;
}


function validateusername(){
    var textInput = document.getElementById("fax").value;
    textInput = textInput.replace(/[^0-9()-]/g, "");
    document.getElementById("fax").value = textInput;
}

</script>
<div class='popup'>
<div class='cnt223'>
<br><br>
<c:if test="${success==true}">
<table width="400"><tr><td align="center"><b>Success!!!</b></td></tr></table>

</c:if>
<br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr >
	             <td valign="middle" align="left" class="input_txt" width="250"><span class="err">*</span>Please enter Patient User Name</td>
				 <td width="20"></td> <td valign="top" align="left" class="input_txt" width="200">
				   <input type="text" class="input_txtbx1" id="username" name="pusername" /><br/>
				  </td>
				  </tr>
				  <tr height="50"></tr>
				<tr><td align="right"><input type="submit" value="Submit" class="submit_btn" onclick="doAjaxPost()" ></td>
				<td></td><td align="left"><a href="viewallpatientdetails" class="submit_btn" >Cancel</a></td>
				</tr>
				  </table>
				  <br><br>



</div>
</div>
  
<!--  <script>
 $(window).load(function(){
	 	  $("#fax").keyup(function() {
			
			 $("#faxerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			/*var intRegex = /^\d+$/;*/
			var a= /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
			if(a.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#faxerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		 $("#amountdeduct").keyup(function() {
			
			 $("#amountdeducterror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#amountdeducterror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		 $("#amountdeductmet").keyup(function() {
			
			 $("#amountdeductmeterror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#amountdeductmeterror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		 $("#atwhat").keyup(function() {
			
			 $("#atwhaterror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#atwhaterror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		 $("#atwhat1").keyup(function() {
			
			 $("#atwhat1error").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#atwhat1error").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		 $("#subjectdeduct").keyup(function() {
			
			 $("#subjecterror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#subjectdeducterror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		 $("#deductible").keyup(function() {
			
			 $("#deductibleerror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#deductibleerror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
		$("#covered").keyup(function() {
			
			 $("#coverederror").html(''); 
			/* var regex=/(^\d{5}$)|(^\d{5}-\d{4}$)/; */
			var intRegex = /^\d+$/;
			if(intRegex.test($(this).val())||$(this).val()=='') 
			{
				var $in = $(this).val();		 
			}
			else if($(this).val()!='')
				{
				
				$("#coverederror").html('Kindly enter a number!!!!');
				}
		}).keydown(function() {
		    oldValue = $(this).val();
		})
 });
 
 </script>
 
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>

<script>
i=0;
$(document).ready(function(){
  $("#fax").keypress(function(){
var phone=document.getElementById("fax").value;
phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
document.getElementById("fax").value=phone;
 });  

});
</script> -->
<script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
</script>
 

<script>	
		function checkvalidation()
		{
		document.getElementById("faxerror").innerHTML="";
		
		var error="";
				document.getElementById("verify_nameerror").innerHTML=" ";
			
			if(document.getElementById("verify_name").value.substring(0,1)==' ')
			{
			document.getElementById("verify_nameerror").innerHTML="Invalid Name";
		    return false;
			}
			
			if(document.getElementById("verify_name").value=="")
			{
			document.getElementById("verify_nameerror").innerHTML="Required Field Should not be Empty";
				error="true";
			}
			
	if(document.getElementById("verify_name").value!="")
			{
	    if(document.getElementById("verify_name").value.length<4)
	    {    	
	    	document.getElementById("verify_nameerror").innerHTML="Name should be min 4 and max 32";
	       error="true";
	    }
	    }
			
			document.getElementById("spoke_witherror").innerHTML="";
		if(document.getElementById("spoke_with").value=="")
			{
			document.getElementById("spoke_witherror").innerHTML="Required Field Should not be Empty";
			
			error="true";
			}
		
			if(document.getElementById("spoke_with").value.substring(0,1)==" ")
			{
			document.getElementById("spoke_witherror").innerHTML="Invalid Name";
			
			error="true";
			}
		if(document.getElementById("spoke_with").value!="")
			{
			if(document.getElementById("spoke_with").value.length<4)
			{
			
			document.getElementById("spoke_witherror").innerHTML="Name should be min 4 and max 32";
			
			error="true";
			}
		}
				document.getElementById("datepickererror").innerHTML="";
		if(document.getElementById("datepicker").value=="")
	{
	  document.getElementById("datepickererror").innerHTML="Required Field Should not be Empty";
	error="true";
	}
		
		 var datechk = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
	
		if(document.getElementById("datepicker").value!="")
	{
	if(document.getElementById("datepicker").value.match(datechk)==null)
    {
    	document.getElementById("datepickererror").innerHTML="Invalid Date Format";
    	
        error="true";
    }
    }	
		
		if(document.getElementById("fax").value=="")
		{
		document.getElementById("faxerror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		} 
		
    var txt1=document.getElementById("fax").value;
   var txt2=txt1.substring(1,4);
   var txt3=txt1.substring(5,8);
   // alert(txt2);
   // alert(txt3);
   if(txt1!='')
   {
   if(txt2==000 && txt3==000){
   document.getElementById("faxerror").innerHTML="Invalid phone number format";
   error="true";
   }
   }
   
		
		document.getElementById("amountdeducterror").innerHTML="";
		if(document.getElementById("amountdeduct").value=="")
		{
		document.getElementById("amountdeducterror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}

       /*   document.getElementById("amountdeducterror").innerHTML="";
		if(isNaN(document.getElementById("amountdeduct").value))
		{
		document.getElementById("amountdeducterror").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		
		} */
				
		document.getElementById("amountdeductmeterror").innerHTML="";
		if(document.getElementById("amountdeductmet").value=="")
		{
		document.getElementById("amountdeductmeterror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		
		/* document.getElementById("amountdeductmeterror").innerHTML="";
		if(isNaN(document.getElementById("amountdeductmet").value))
		{
		document.getElementById("amountdeductmeterror").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		
		} */
		
		
		document.getElementById("max_visiterror").innerHTML="";
		if(document.getElementById("max_visit").value=="")
		{
		document.getElementById("max_visiterror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		
		/* document.getElementById("max_visiterror").innerHTML="";
		if(isNaN(document.getElementById("max_visit").value))
		{
		document.getElementById("max_visiterror").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
		 */
		document.getElementById("atwhaterror").innerHTML="";
		if(document.getElementById("atwhat").value=="")
		{
		document.getElementById("atwhaterror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		
		/* document.getElementById("atwhaterror").innerHTML="";
		if(isNaN(document.getElementById("atwhat").value))
		{
		document.getElementById("atwhaterror").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		} */
		document.getElementById("atwhat1error").innerHTML="";
		if(document.getElementById("atwhat1").value=="")
		{
		document.getElementById("atwhat1error").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		
		/* document.getElementById("atwhat1error").innerHTML="";
		if(isNaN(document.getElementById("atwhat1").value))
		{
		document.getElementById("atwhat1error").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		} */
		
		document.getElementById("yeserror").innerHTML="";
      if( ( document.getElementById("yes").checked == false ) && ( document.getElementById("no").checked == false ) )

{
document.getElementById("yeserror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
			         document.getElementById("deductibleerr").innerHTML="";
		if(document.getElementById("deductible").value=="")
		{
		document.getElementById("deductibleerr").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		
		document.getElementById("coverederr").innerHTML="";
		if(document.getElementById("covered").value=="")
		{
		document.getElementById("coverederr").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		/* document.getElementById("coverederr").innerHTML="";
		if(isNaN(document.getElementById("covered").value))
		{
		document.getElementById("coverederr").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		} */
		
		
		
		
		
		document.getElementById("mail_claimserror").innerHTML="";
		if(document.getElementById("mail_claims").value=="")
		{
		document.getElementById("mail_claimserror").innerHTML="Required Field Should not be Empty";
		
		error="true";
		}
		var mail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    
    if(document.getElementById("mail_claims").value!='')
    {
    if(document.getElementById("mail_claims").value.match(mail)==null)
    {
    	document.getElementById("mail_claimserror").innerHTML="Invalid E-Mail Format";
    	
        error="true";
    }
    }
    if(document.getElementById("mail_claims").value.substring(0,1)==' ')
    {
    document.getElementById("mail_claimserror").innerHTML="Invalid address";
    }
 
 if(error=="true")
 {
 return false;
 }
		}

	</script>
	<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
    
    <script type="text/javascript">
    function validatealpha(){
    var textInput = document.getElementById("spoke_with").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("spoke_with").value = textInput;
}
       function validate1(event) {
          
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
	function check(e,value){
    //Check Charater
        var unicode=e.charCode? e.charCode : e.keyCode;
        if (value.indexOf(".") != -1)if( unicode == 46 )return false;
        if (unicode!=8)if((unicode<48||unicode>57)&&unicode!=46)return false;
    }
    function checkLength(){
    var fieldVal = document.getElementById('atwhat').value;
    //Suppose u want 3 number of character
    if(fieldVal <=100){
        return true;
    }
    else
    {
        var str = document.getElementById('atwhat').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('atwhat').value = str;
    }
     
    }
	</script>
	<script>
	function checklen()
	{
	
	var field = document.getElementById('atwhat1').value;
    //Suppose u want 3 number of character
    if(field <=100){
        return true;
    }
    else
    {
        var str = document.getElementById('atwhat1').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('atwhat1').value = str;
    }
	
	}
	
	</script>
	<script>
	
    function checkLength1(){
    var fieldVal = document.getElementById('covered').value;
    //Suppose u want 3 number of character
    if(fieldVal <=100){
        return true;
    }
    else
    {
        var str = document.getElementById('covered').value;
        str = str.substring(0, str.length - 1);
    document.getElementById('covered').value = str;
    }
     
    }
	</script>
	<script type="text/javascript">
       function validate(event) {
          
           var regex = new RegExp("^[0-9.]+$");
           var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
           if (!regex.test(key)) {
             // document.getElementById("cmaerr").innerHTML="enter numerics or decimals only";
               event.preventDefault();
               return false;
           }
       }       
    </script>
    <script>
function validatename(){
    var textInput = document.getElementById("verify_name").value;
    textInput = textInput.replace(/[^A-Za-z ]/g, "");
    document.getElementById("verify_name").value = textInput;
}
</script>
</head>
 <body>
<div id="right_content">
<form action="insuranceverification" method="POST">

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
        	<div id="block1">
	            <div class="headings altheading">
	             <img  src="resources/images/print.png" id="print" width = "46px" height = "46px" style="float:right ;" onclick="printPage('block1');" >
	             <h2>Health Insurance Verification</h2> 
	            </div>
	            <script>
	            $(function() {
		$("#verify_name").on("keypress", function(e) {
			if (e.which === 32 && !this.value.length)
		        e.preventDefault();
		});
		});
	            
	            </script>
	            <div class="contentbox">
	            <input type="hidden" name="user" id="user"/>

              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <u><h6>Benefits and Limitation's (staff completes)</h6></u>
              </tr>
              <br>
              <tr><p>Hi, I'm calling to verify chiropractic benefits for<span class="err">*</span>  Mr./ Mrs.<input type="text" maxlength="32" class="input_txtbx1" name="verify_name" id="verify_name" onInput="return validatename()";/><span id="verify_nameerror" style="color: red;font-style:italic;"><form:errors path="Insuranceverification.verify_name"></form:errors></p></tr>
              <tr class="row1">
              <td><span class="err">*</span>&nbsp;Spoke with</td>
              <td><input type="text" class="input_txtbx1" maxlength="32" name="spoke_with" id="spoke_with" onInput="validatealpha();" /><br><span  id="spoke_witherror" style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.spoke_with"></form:errors></td>
              <td><span class="err">*</span>&nbsp;Date</td>
              <td><input type="text" class="input_txtbx1" name="date" id="datepicker" /><br><span id="datepickererror" style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.date"></form:errors></td>
              <td><span class="err">*</span>&nbsp;Fax#</td>
              <script>
              $(document).ready(function(){
               $("#fax").keypress(function(){
                     var phone=document.getElementById("fax").value;
                     phone = phone.replace(/(\d{3})(\d{3})(\d+)/, '($1)$2-$3');
                     document.getElementById("fax").value=phone;
                      });  

                      });
                    </script>          
    <td><input type="text" class="input_txtbx1" name="fax" id="fax" onInput="return validateusername()"; onkeypress="return validate(event)"; maxlength=13 /><br><span id="faxerror" style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.fax"></form:errors>
              <span class="err" id="faxerror"></span>
              </td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <h6>Provider Benefits</h6>
              </tr>
              <br>
              <tr class="row1">
              <td width="300"><span class="err">*</span> &nbsp;Amount of deductible</td>
              <td ><input type="text" class="input_txtbx1" name="amount_deduct" id="amountdeduct" maxlength="10" onkeypress="return validate(event)"; /><br><span id="amountdeducterror" style="color: red;font-style:italic;"><form:errors path="Insuranceverification.amount_deduct"></form:errors></span>
              <span class="err" id="amountdeducterror"></span>
              </td>
              <td width="300"><span class="err">*</span> &nbsp;Amount of deductible met</td>
              <td><input type="text" class="input_txtbx1" maxlength="10" name="amount_deduct_met" id="amountdeductmet" onkeypress="return validate(event)";/><br><span id="amountdeductmeterror" style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.amount_deduct_met"></form:errors>
              <span class="err" id="amountdeductmeterror"></span>
              </td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1"> 
              <td><span class="err">*</span>&nbsp;&nbsp;Maximum visits/year?</td>
              <td><input type="text" class="input_txtbx1" name="max_visit" maxlength="3"  id="max_visit" onkeypress="return validate1(event)";/><span id="max_visiterror" style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.max_visit"></form:errors></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is chiropractic manipulation covered? </td>
              <td><input type="radio" name="is_chiropractic" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="is_chiropractic" value="No" class="input_txt">No</td>
              <td><span class="err">*</span>&nbsp; At what%?</td>
              <td><input type="text" class="input_txtbx1" name="at_what" id="atwhat" onKeyPress="return check(event,value)" onInput="checkLength()" maxlength="5"/><span id="atwhaterror" style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.at_what"></form:errors></span>
              <!-- <span class="err" id="atwhaterror"></span> -->
              </td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <td>Are x-rays covered?</td>
              <td><input type="radio" name="xray_cover" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="xray_cover" value="No" class="input_txt">No</td>
              <td><span class="err">*</span>&nbsp; At what%?</td>
              <td><input type="text" class="input_txtbx1" name="atwhat" id="atwhat1" onKeyPress="return check(event,value)" onInput="checklen()" maxlength="5"/><br><span id="atwhat1error"  style="color: red;font-style:italic;"><form:errors path="Insuranceverification.atwhat"></form:errors></span>
              <span class="err" id="atwhat1error"></span>
              </td>
              <td width="300"><span class="err">*</span>&nbsp;Subject to deductible</td>
              <td><input type="radio" name="subject_deduct" id="yes" value="Yes" />Yes&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="subject_deduct" id="no" value="No" />No<br><span id="yeserror"  style="color: red;font-style:italic;"  > </span><form:errors path="Insuranceverification.subject_deduct"></form:errors>
              <span class="err" id="subjectdeducterror"></span>
              </td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td><input type="radio" name="benefits_honored" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="benefits_honored" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <h6>Non-Provider Benefits</h6>
              </tr>
              <br>
              <tr class="row1">
              <td>Are there out of network benefits?</td>
             <td><input type="radio" name="network_benefits" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="network_benefits" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td><span class="err">*</span> &nbsp;Deductible</td>
              <td><input type="text" class="input_txtbx1" name="deductible" id="deductible" maxlength="10" onInput="validatenum();" /><br><span id="deductibleerr" style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.deductible"></form:errors>
              <span class="err" id="deductibleerror"></span>
              </td>
              <td><span class="err">*</span> &nbsp;%covered</td>
              <td><input type="text" class="input_txtbx1" name="covered" id="covered" maxlength="5" onKeyPress="return check(event,value)" onInput="checkLength1()"  /><br><span id="coverederr" style="color: red;font-style:italic;"><form:errors path="Insuranceverification.covered"></form:errors></span>
              <span class="err" id="coverederror"></span>
              </td>
              </tr>
              <tr class="row1">
              <td>Therapies covered</td>
              <td> <input type="checkbox" name="cm" value="cm">CM&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="checkbox" name="pt" value="pt">PT&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="ov" value="ov">OV&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td></td>
              <td></td>
              </tr>
               <tr class="row1">
              <td>Are x-rays subject to deductible?</td>
              <td><input type="radio" name="xray_deduct" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="xray_deduct" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td><input type="radio" name="doctors_assign" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="doctors_assign" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>What address do we mail claims to?</td>
              <td><input type="text"  value="" name="mail_claims" class="input_txtbx1" id="mail_claims"><br><span id="mail_claimserror"  style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.mail_claims"></form:errors></td>
              <td></td>
			  <td></td>              
              </tr>
              </table>
             <%--  </c:when>
              <c:otherwise>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <u><h6>Benefits and Limitation's (staff completes)</h6></u>
              </tr>
              <br>
              <tr><p>Hi, I'm calling to verify chiropractic benefits for <span class="err">*</span> Mr./ Mrs.<input type="text" class="input_txtbx1" name="verify_name" id="verify_name" value="${veri.verify_name}"/><span class="err"><form:errors path="Insuranceverification.verify_name"></form:errors></p></tr>
              <tr class="row1">
              <td><span class="err">*</span>Spoke with</td>
              <td><input type="text" class="input_txtbx1" name="spoke_with" id="spoke_with" value="${veri.spoke_with}"/><br><span id="spoke_witherror"></span><form:errors path="Insuranceverification.spoke_with"></form:errors></td>
              <td><span class="err">*</span>Date</td>
              <td><input type="text" class="input_txtbx1" name="date" id="datepicker" value="${veri.date}"/><br><span id="datepickererror"  style="color: red;font-style:italic > </span><form:errors path="Insuranceverification.date"></form:errors></td>
              <td><span class="err">*</span>Fax#</td>
              <td><input type="text" class="input_txtbx1" name="fax" id="fax" value="${veri.fax}"/><br><span id="faxerror"  style="color: red;font-style:italic"> </span><form:errors path="Insuranceverification.fax"></form:errors>
              <span> class="err" id="faxerror"></span>
              </td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <h6>Provider Benefits</h6>
              </tr>
              <br>
              <tr class="row1">
              <td><span class="err">*</span>Amount of deductible</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct" id="amountdeduct" value="${veri.amount_deduct}"/><br><span id="amountdeducterror"  style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.amount_deduct"></form:errors>
              <br><span class="err" id="amountdeducterror"></span>
              </td>
              <td><span class="err">*</span>Amount of deductible met</td>
              <td><input type="text" class="input_txtbx1" name="amount_deduct_met" id="amountdeductmet" value="${veri.amount_deduct_met}"/><br><span id="amountdeductmeterror"  style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.amount_deduct_met"></form:errors>
              <span class="err" id="amountdeductmeterror"></span>
              </td>
             
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1"> 
              <td><span class="err">*</span>Maximum visits/year?</td>
              <td><input type="text" class="input_txtbx1" name="max_visit" id="max_visit" value="${veri.max_visit}"/><span id="max_visiterror" style="color: red;font-style:italic;"></span><form:errors path="Insuranceverification.max_visit"></form:errors></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is chiropractic manipulation covered? </td>
              <td><input type="radio" name="is_chiropractic" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="is_chiropractic" value="No" class="input_txt">No</td>
              <td><span class="err">*</span>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="at_what" id="atwhat" value="${veri.at_what}"/><span id="atwhaterror"  style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.at_what"></form:errors>
              <span class="err" id="atwhaterror"></span>
              </td>
             <td></td>
             <td></td>
              </tr>
              <tr class="row1">
              <td>Are x-rays covered?</td>
              <td><input type="radio" name="xray_cover" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="xray_cover" value="No" class="input_txt">No</td>
              <td><span class="err">*</span>At what%?</td>
              <td><input type="text" class="input_txtbx1" name="atwhat" id="atwhat1" value="${veri.atwhat}"/><br><span id="atwhat1error"  style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.atwhat"></form:errors>
              <span class="err" id="atwhat1error"></span>
              </td>
              <td><span class="err">*</span>Subject to deductible</td>
              <td>
              <input type="radio" name="subject_deduct" id="yes" value="Yes" <c:if test="${veri.subject_deduct=='Yes'}"><c:out value="checked=checked"/></c:if> />Yes&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="subject_deduct" value="No" id="no" <c:if test="${veri.subject_deduct=='No'}"><c:out value="checked=checked"/></c:if> />No
              
              
              
             <input type="text" class="input_txtbx1" name="subject_deduct" id="subjectdeduct" value="${veri.subject_deduct}"/><br><span class="err"><form:errors path="Insuranceverification.subject_deduct"></form:errors></span>
               <span class="err" id="subjectdeduct"></span>
              </td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td><input type="radio" name="benefits_honored" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="benefits_honored" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr class="row1">
              <h6>Non-Provider Benefits</h6>
              </tr>
              <br>
              <tr class="row1">
              <td>Are there out of network benefits?</td>
             <td><input type="radio" name="network_benefits" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="network_benefits" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <!-- </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%"> -->
              <tr class="row1">
              <td><span class="err">*</span>Deuctible</td>
              <td><input type="text" class="input_txtbx1" name="deductible" id="deductible" value="${veri.deductible}"/><br><span id="deductibleerr"> </span><form:errors path="Insuranceverification.deductible"></form:errors>
              <span class="err" id="deductibleerror"></span>
              </td>
              <td><span class="err">*</span>%covered</td>
              <td><input type="text" class="input_txtbx1" name="covered" id="covered" value="${veri.covered}"/><br><span id="coverederr"> </span><form:errors path="Insuranceverification.covered"></form:errors></td>
              </tr>
              <tr class="row1">
              <td>Therapies covered</td>
              <td> <input type="checkbox" name="cm" value="cm">CM&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="checkbox" name="pt" value="pt">PT&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="ov" value="ov">OV&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td></td>
              <td></td>
              </tr>
               <tr class="row1">
              <td>Are x-rays subject to deductible?</td>
              <td><input type="radio" name="xray_deduct" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="xray_deduct" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td>Is the Doctor's assignment of benefits honored?</td>
             <td><input type="radio" name="doctors_assign" value="Yes" class="input_txt" checked="true">Yes&nbsp;&nbsp;&nbsp;<input type="radio" name="doctors_assign" value="No" class="input_txt">No</td>
              <td></td>
              <td></td>
              </tr>
              <tr class="row1">
              <td><span class="err">*</span>What address do we mail claims to?</td>
              <td><textarea rows="3" cols="35" name="mail_claims"  class="input_txtarea" id="mail_claims" >${Insuranceverification.mail_claims}</textarea><br><span id="mail_claimserror" style="color: red;font-style:italic;"> </span><form:errors path="Insuranceverification.mail_claims"></form:errors></td>
              <td></td>
			  <td></td>              
              </tr>
              </table>
              </c:otherwise>
              </c:choose> --%>
              <table>
               <tr>
	        <td valign="top" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
              <td valign="top" align="center"><br><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkvalidation('this');"></td>
              <td>&nbsp;&nbsp;</td>
              <td valign="top" align="center"><br><a href="insuranceverifylist" class="submit_btn" id="cancelid" style="color:white">Cancel</a></td>
	     	  <td>&nbsp;&nbsp;</td>
	     	  <!-- <td valign="top" align="center"><br><input type="button" class="submit_btn" value="View" onclick="window.location.href='insuranceverifylist'"></td> -->
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
              
              
              
              
              