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
		    url: "/EhrApp/formbill_ajax",  
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
		    	 var url="editformbilldetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    /* alert(response.indexOf("|"));
			   alert(response.substring(0,cal));*/
			   document.getElementById("patientsname").value=response.substring(0,cal);
			   
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
  
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
 <script>
  $(window).load(function(){
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 $(function() {
           $( "#datepicker1" ).datepicker();
         });
         $(function() {
           $( "#datepicker2" ).datepicker();
         });
         
        
         
         
       
         
    });      
           
</script>



<script>

	function checkSubmit()
	{
		document.getElementById("datepickererror").innerHTML="";
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("datepickererror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("insuranceerror").innerHTML="";
		if(document.getElementById("insurance").value=="")
		{
		document.getElementById("insuranceerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("nameerror").innerHTML="";
		if(document.getElementById("name").value=="")
		{
		document.getElementById("nameerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("pnameerror").innerHTML="";
		if(document.getElementById("patientsname").value=="")
		{
		document.getElementById("pnameerror").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("amountdeducterror").innerHTML="";
		if(isNaN(document.getElementById("medicalfee").value))
		{
		document.getElementById("amountdeducterror").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
		document.getElementById("number").innerHTML="";
		if(isNaN(document.getElementById("amount").value))
		{
		document.getElementById("number").innerHTML="Invalid character. Please enter numbers only.";
		return false;
		}
		
		
		}
		</script>
		

</head>
 <body>
<div id="right_content">
<form action="insertformbill" method="POST">
<input type="hidden" name="user" id="user" value="${username}">
<table cellpadding="0" cellspacing="0" border="0" width="60%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr><td width="150"></td>
        <td valign="top" align="center">
        	<div>
	            <div class="headings altheading">
	             <h2>FORM NOTICE OF FINAL  BILL</h2> 
	            </div>
	             <form target="popup" action="perrychiropracticsearch" onsubmit="window.open('', this.target,    'width=300,height=300,resizable,scrollbars=yes'); return true;">

</form>    
	            <script>
function openWindow(h, w, url) {
  leftOffset = (screen.width/2) - w/2;
  topOffset = (screen.height/2) - h/2;
  window.open(url, this.target, 'left=' + leftOffset + ',top=' + topOffset + ',width=' + w + ',height=' + h + ',resizable,scrollbars=yes');

}
</script>
	            
	             <c:choose>
<c:when test="${empty form}">
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="30" >
              <td ><b>CERTIFIED MAIL</b></td>
              </tr>
              <tr height="30">
              <td ><b>Return Receipt Requested</b></td>
              </tr>
               
              </table><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="400"></td>
              <td height="25" width="50"><span class="err">*</span>Date:</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker"  /><span class="err" id="datepickererror"><form:errors path="Formbill.date"></form:errors></span></td>
              </tr>
              </table><br>
            
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span>Insurance Company:</td>
              <td ><input type="text" class="input_txtbx1" name="insurance" id="insurance"/><span class="err" id="insuranceerror"><form:errors path="Formbill.insurance"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="3" cols="28"  name="address1" class="input_txtarea" id="address1"/></textarea><span class="err"><form:errors path="Formbill.address1"></form:errors></span></td>
             </tr>
              </table>
             
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr ><br>
             <td height="25" width="120"><span class="err">*</span>Name Of Attorney:</td>
              <td ><input type="text" class="input_txtbx1" name="name" id="name"/><span class="err" id="nameerror"><form:errors path="Formbill.name"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="3" cols="28" class= "input_txtarea" name="address3" id="address3"/></textarea><span class="err"><form:errors path="Formbill.address3"></form:errors></span></td>
             </tr>
              </table>
              
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span>Patient Name</td>
              <td ><input type="text" class="input_txtbx1" name="patientsname" id="patientsname"/><span class="err" id="pnameerror"><form:errors path="Formbill.patientsname"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="3" cols="28"   class="input_txtarea" name="address5" id="address5"/></textarea><span class="err"><form:errors path="Formbill.address5"></form:errors></span></td>
             </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"><b><h4>RE:</b>&nbsp;&nbsp;&nbsp;&nbsp; Notice of Final Outstanding Amount Owed;Medical Fees of $ <input type="text" class="input_txtbx1" name="medicalfee" id="medicalfee">
	<span class="err"><form:errors path="Formbill.medicalfee"></form:errors></span>
				  <span class="err" id="amountdeducterror"></span></h4></p></td>
        	  <td>
        	  </td>
        	  </tr>
       		  </table>
       		 <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"> <b>Notice is made of final outstanding amounts owed for medical fees rendered by the above of $ <input type="text" class="input_txtbx1" name="amount" id="amount">
	<span class="err"><form:errors path="Formbill.amount"></form:errors></span>
				  <span class="err" id="number"></span></b></p></td>
        	  <td>
        	  </td>
        	  </tr>        	 
       		  </table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td>
       		<b>Notice has been previously provided to you of a Treatment Fee Agreement and Instructions to Attorney and an assignment of coverage proceeds.</b>
       		</td>
       		</tr>
       		</table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td><br>	
	<p align="right"><b>Very truly yours,</b>
	</p>
	
<p align="right">Perry Chiropractic & Therapy Center of Canton, Inc
	</p>

<p align="right">&Dr. Charles T. Yang D.C.
	</p>
	
<br>				</td></tr></table>

</c:when>
<c:otherwise>
 <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr height="30" >
              <td ><b>CERTIFIED MAIL</b></td>
              </tr>
              <tr height="30">
              <td ><b>Return Receipt Requested</b></td>
              </tr>
               
              </table><br>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="400"></td>
              <td height="25" width="50"><span class="err">*</span>Date:</td>
              <td ><input type="hidden" name="formid" value="${form.formid }"><input type="text" class="input_txtbx1" name="date" id="datepicker"  value="${form.date }" /><span class="err"><form:errors path="Formbill.date"></form:errors></span></td>
              </tr>
              </table><br>
            
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span>Insurance Company:</td>
              <td ><input type="text" class="input_txtbx1" name="insurance" id="insurance" value="${form.insurance }" /><span class="err"><form:errors path="Formbill.insurance"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="" cols="" name="address1" id="address1" style="width: 162px; height: 62px" >${form.address1}</textarea><span class="err"><form:errors path="Formbill.address1"></form:errors></span></td>
             </tr>
              </table>
             
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr ><br>
             <td height="25" width="120"><span class="err">*</span>Name Of Attorney:</td>
              <td ><input type="text" class="input_txtbx1" name="name" id="name" value="${form.name}"/><span class="err"><form:errors path="Formbill.name"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="" cols="" name="address3" id="address3" style="width: 162px; height: 62px" >${form.address3}</textarea><span class="err"><form:errors path="Formbill.address3"></form:errors></span></td>
             </tr>
              </table>
             
                <table align="center" cellpadding="0" cellspacing="0" border="0"   width="100%"  ">
              <tr >
             <td height="25" width="120"><span class="err">*</span>Patient Name</td>
              <td ><input type="text" class="input_txtbx1" name="patientsname" id="patientsname" value="${form.patientsname}"/><span class="err"><form:errors path="Formbill.patientsname"></form:errors></span></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="120"><span class="err"></span>Address:</td>
              <td ><textarea rows="" cols="" name="address5" id="address5" style="width: 162px; height: 62px" >${form.address5}</textarea><span class="err"><form:errors path="Formbill.address5"></form:errors></span></td>
             </tr>
              </table>
              
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"><b><h4>RE:</b>&nbsp;&nbsp;&nbsp;&nbsp; Notice of Final Outstanding Amount Owed;Medical Fees of $ <input type="text" class="input_txtbx1" name="medicalfee" id="medicalfee" value="${form.medicalfee}">
	<span class="err"><form:errors path="Formbill.medicalfee"></form:errors></span>
				  <span class="err"></span></h4></p></td>
        	  <td>
        	  </td>
        	  </tr>
       		  </table>
       		 <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td><p align="left" id="mypar"> <b>Notice is made of final outstanding amounts owed for medical fees rendered by the above of $ <input type="text" class="input_txtbx1" name="amount" id="amount" value="${form.amount}">
	<span class="err"><form:errors path="Formbill.amount"></form:errors></span>
				  <span class="err"><div id="number"></span></b></p></td>
        	  <td>
        	  </td>
        	  </tr>        	 
       		  </table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td>
       		<b>Notice has been previously provided to you of a Treatment Fee Agreement and Instructions to Attorney and an assignment of coverage proceeds.</b>
       		</td>
       		</tr>
       		</table>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
       		<tr>
       		<td><br>	
	<p align="right"><b>Very truly yours,</b>
	</p>
	
<p align="right">Perry Chiropractic & Therapy Center of Canton, Inc
	</p>

<p align="right">&Dr. Charles T. Yang D.C.
	</p>
	
<br>				</td></tr></table>
</c:otherwise>
</c:choose>
       		   <table><tr> <td><input type="submit" class="submit_btn" value="Save" onclick="return checkSubmit('this');"></td>
               <td><a href="viewformbill"style="color:white" class="submit_btn">Cancel</a></td>
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