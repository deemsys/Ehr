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
	    $( "#datepicker1" ).datepicker();
	  });
	  
	$(function() {
	    $( "#datepicker2" ).datepicker();
	  });  
	  
 </script>
 <script>

	function checkSubmit()
	{
		document.getElementById("toattorney1error").innerHTML=" ";
		
		if(document.getElementById("toattorney1").value=="")
		{
		document.getElementById("toattorney1error").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
		document.getElementById("toattorney2error").innerHTML="";
	if(document.getElementById("toattorney2").value=="")
		{
		document.getElementById("toattorney2error").innerHTML="Required Field Should not be Empty";
		
		return false;
		}
	
	document.getElementById("toattorney3error").innerHTML="";
	if(document.getElementById("toattorney3").value=="")
	{
	document.getElementById("toattorney3error").innerHTML="Required Field Should not be Empty";
	
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
	document.getElementById("datepicker1error").innerHTML="";
	var re = /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/ ;
		
		
		if (document.getElementById("datepicker1").value !="") {
		  if (re.test(document.getElementById("datepicker1").value) == false) {
			  document.getElementById("datepicker1error").innerHTML="Invalid Date Format";
			  return false;
		  }
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
		    url: "/EhrApp/updateletter_ajax",  
		    data: "username=" + username,
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
		    	 var url="editupdateletterdetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    // alert(response.indexOf("|"));
			   //alert(response.substring(0,cal));
			 //  document.getElementById("patientname").value=response.substring(0,cal);
			   
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
<div class='popup'>
<div class='cnt223'>
<br><br>
<c:if test="${success==true}">
<table width="400"><tr><td align="center"><b>Success!!!</b></td></tr></table>

</c:if>
<br>
 <table cellpadding="0" cellspacing="0" border="0" width="100%">
 <tr >
	             <td valign="middle" align="left" class="input_txt" width="250"><span class="err">*</span>Please enter a Patient User Name</td>
				 <td width="20"></td> <td valign="top" align="left" class="input_txt" width="200">
				   <input type="text" class="input_txtbx1" id="username" name="username" /><br/>
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
 
 
<div id="right_content">
<form action="insertupdateletter" method="POST">
<input type="hidden" name="user" id="user">
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
	             <h2 align="center">UPDATE  LETTER</h2> 
	            </div>
	            
	            
	 <c:choose>
<c:when test="${empty update}">
	            <div class="contentbox">
	           
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">*</span>To Attorney:</td>
              <td width="50%"><input type="text" class="input_txtbx1" name="toattorney1" id="toattorney1" /><span class="err" id="toattorney1error"  style="color: red;font-style:italic;" style="color: red;font-style:italic;"><form:errors path="Updateletter.toattorney1"></form:errors></td>
              </tr>
              </table>
              <br>
               
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span></td>
              <td  width="50%"><input type="text" class="input_txtbx1" name="toattorney2" id="toattorney2" /><span class="err" id="toattorney2error"  style="color: red;font-style:italic;"><form:errors path="Updateletter.toattorney2"></form:errors></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span></td>
              <td width="50%"><input type="text" class="input_txtbx1" name="toattorney3" id="toattorney3" /><span class="err" id="toattorney3error"  style="color: red;font-style:italic;"><form:errors path="Updateletter.toattorney3"></form:errors></td>
              </tr>
              </table>
              <br>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>
In Regards to : 
              </td>
              <td width="50%"><input type="text" class="input_txtbx1" name="reg" id="reg" /><span class="err"><form:errors path="Updateletter.reg"></form:errors></td>
              </tr>
              </table>
              <br>
              
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>Date of Injury:

              </td>
              <td width="50%"><input type="text" class="input_txtbx1" id="datepicker1" name="injury"/><span class="err" id="datepicker1error"><form:errors path="Updateletter.injury"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">*</span>Todays date:    
              </td>
              <td width="50%"><input type="text" class="input_txtbx1" id="datepicker2" name="todaydate"/><span class="err" id="datepicker2error"  style="color: red;font-style:italic;"><form:errors path="Updateletter.todaydate"></form:errors></span></td>
              </tr>
              </table>
              <br>
             
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr>
        	  <p id="mypar">In order to update our records, we are asking that you provide an update on the status 
        	  on  the following account.</p>
              <p id="mypar">Please fax back to us at (440) 934-3099</p>
              <p id="mypar">Thank-you</p>
              </tr>
              </table>
              <br>
              </c:when>
              <c:otherwise>
               <div class="contentbox">
	           
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">*</span>To Attorney:</td>
              <td width="50%"><input type="hidden" name="updateid" value="${update.updateid }"><input type="text" class="input_txtbx1" name="toattorney1" id="toattorney1"  value="${update.toattorney1}" /><span class="err" id="toattorney1error" ><form:errors path="Updateletter.toattorney1"></form:errors></td>
              </tr>
              </table>
              <br>
               
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">*</span></td>
              <td  width="50%"><input type="text" class="input_txtbx1" name="toattorney2" id="toattorney2"  value="${update.toattorney2}" /><span class="err" id="toattorney2error"  style="color: red;font-style:italic;"><form:errors path="Updateletter.toattorney2"></form:errors></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">*</span></td>
              <td width="50%"><input type="text" class="input_txtbx1" name="toattorney3" id="toattorney3"  value="${update.toattorney3}" /><span class="err" id="toattorney3error"  style="color: red;font-style:italic;"><form:errors path="Updateletter.toattorney3"></form:errors></td>
              </tr>
              </table>
              <br>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>
In Regards to : 
              </td>
              <td width="50%"><input type="text" class="input_txtbx1" name=" reg" id=" reg"  value="${update.reg}"/><span class="err"><form:errors path="Updateletter.reg"></form:errors></td>
              </tr>
              </table>
              <br>
              
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err"></span>Date of Injury:

              </td>
              <td width="50%"><input type="text" class="input_txtbx1" name="injury" id="datepicker" value="${update.injury}"></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td width="50%"><span class="err">*</span>Todays date:    
              </td>
              <td width="50%"><input type="text" class="input_txtbx1" name="todaydate" id="datepicker2" value="${update.todaydate}"/><span class="err" id="datepicker2error"  style="color: red;font-style:italic;"><form:errors path="Updateletter.todaydate"></form:errors></span></td>
              </tr>
              </table>
              <br>
             
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr>
        	  <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In order to update our records, we are asking that you provide an update on the status 
        	  on  the following account.</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please fax back to us at (440) 934-3099</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank-you</p>
              </tr>
              </table>
              <br>
              
              </c:otherwise>
              </c:choose>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save" id="saveid" onclick="return checkSubmit('this');">
				</td>
				<td>&nbsp;&nbsp;</td>
              <td><a href="viewupdateletter" style="color:white" class="submit_btn" id="cancelid">Cancel</a></td>
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