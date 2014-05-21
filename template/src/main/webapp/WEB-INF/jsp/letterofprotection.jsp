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
		    url: "/EhrApp/letterofprotection_ajax",  
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
		    	 var url="editletterofprotectiondetails?username="+response.substring(sub1,response.length);
		    	  window.location.href=url;
		    	 // $('#info').html(response.substring(4,response.length));
		    	  }
		     else if(response!='error')
		    	  {
		    	 var cal=response.indexOf("|");
		    	 var calculate=cal+1;
			    /* alert(response.indexOf("|"));
			   alert(response.substring(0,cal));*/
			   document.getElementById("myclient").value=response.substring(0,cal);
			   
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
<c:if test="${success==true}">
<table width="400"><tr><td align="center"><b>Success!!!</b></td></tr></table>
</c:if>
<br><br><br>
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
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 $(function() {
     $( "#datepicker1" ).datepicker();
   });
</script>
 <script>

	function checkSubmit()
	{
		document.getElementById("derr").innerHTML="";
		if(document.getElementById("datepicker").value=="")
		{
		document.getElementById("derr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("dcerr").innerHTML="";
		if(document.getElementById("dcr").value=="")
		{
		document.getElementById("dcerr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("clerr").innerHTML="";
		if(document.getElementById("clinicname").value=="")
		{
		document.getElementById("clerr").innerHTML="Required field should not be empty";
		
		return false;
		}
		
		if(document.getElementById("datepicker1").value=="")
		{
		document.getElementById("daerr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("suberr").innerHTML="";
		if(document.getElementById("dearsir").value=="")
		{
		document.getElementById("suberr").innerHTML="Required field should not be empty";
		
		return false;
		}
		document.getElementById("esqerr").innerHTML="";
		if(document.getElementById("esq").value=="")
		{
		document.getElementById("esqerr").innerHTML="Required field should not be empty";
		
		return false;
		}
		}
		</script>
</head>
 <body>
<div id="right_content">
<form action="insertletterofprotection" method="POST">
<input type="hidden" name="user" id="user" value="${username}">
<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
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
	             <h2>Letter Of Protection-Drafted For Patient's Attorney</h2> 
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
<c:when test="${empty letter}">
	            <div class="contentbox">
	                    
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="375"></td>
              <td><span class="err">*</span>Date</td>
              <td ><input type="text" class="input_txtbx1" name="date" id="datepicker" /><span class="err" id="derr"><form:errors path="Letterofprotection.date"></form:errors></td>
              </tr>
              </table>
               <br><br><br>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err">*</span>D.C:</td>
               <td ><input type="text" class="input_txtbx1" name="dc" id="dcr" /><span class="err" id="dcerr"><form:errors path="Letterofprotection.dc"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25" width="160"><span class="err">*</span>Clinic Name:</td>
               <td ><input type="text" class="input_txtbx1" name="clinicname" id="clinicname" /><span class="err" id="clerr"><form:errors path="Letterofprotection.clinicname"></form:errors></td>
             
              </tr>
             </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="160"><span class="err"></span>Address:</td>
              <td><textarea rows="4" cols="28"  class="input_txtarea" name="address1" style="width: 170px; height: 62px"></textarea><span class="err"><form:errors path="Letterofprotection.address1"></form:errors></span>
            </td></tr>
              </table>
             
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err"></span>IN RE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Client:</td>
               <td ><input type="text" class="input_txtbx1" name="myclient" id="myclient" /><span class="err"><form:errors path="Letterofprotection.myclient"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25"  width="160"><span class="err">*</span>Date of Accident</td>
               <td ><input type="text" class="input_txtbx1" name="dateofaccident" id="datepicker1" /><span class="err" id="daerr"><form:errors path="Letterofprotection.dateofaccident"></form:errors></td>
             
              </tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="62"><span class="err">*</span>Dear Dr</td>
              <td  height="25" width="160" ><input type="text" class="input_txtbx1" name="dearsir" id="dearsir" /><span class="err" id="suberr"><form:errors path="Letterofprotection.dearsir"></form:errors>
           </span></td></tr>	
             </table>
             <table>
             <tr><td><br><br><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	It is my understanding that my above-named client has an outstanding balance with your above clinic for treatment rendered as a result of this accident.
             
             </p>
             </td></tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please let this letter serve as my professional representation that I will pay your clinic's outstanding treatment fee out of and only to the extent of any settlement of judgment proceeds, after deduction of our firm's fees and costs advanced.  
             
             </p>
             </td>
             </tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If my client objects to any such payment over to your clinic, in whole or in part, I will hold any disputed amount in our firm's trust account until resolution. </p>
             </td>
             </tr>
             </table>
             <table>
             <tr><td width="450"></td>
             <td ><p><h1> <b>Very truly yours,</b></h1><p></td></tr>
             <tr><td width="450"></td>
            <td ><span class="err">*</span><input type="text" class="input_txtbx1" name="esq" id="esq" /><span class="err" id="esqerr"><form:errors path="Letterofprotection.esq"></form:errors></td></tr>
            <tr><td width="450"></td><td ><p><h1> <b>	Attorney for above client</b></h1><p></td></tr>
             </table>
             </c:when>
             <c:otherwise>
               <div class="contentbox">
	                
            
          
 
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><td width="375"></td>
              <td><span class="err">*</span>Date</td>
              <td ><input type="hidden" name="letterid" value="${letter.letterid }"><input type="text" class="input_txtbx1" name="date" value="${letter.date }" id="datepicker" /><span class="err"><form:errors path="Letterofprotection.date"></form:errors></td>
              </tr>
              </table>
               <br><br><br>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err">*</span>D.C:</td>
               <td ><input type="text" class="input_txtbx1" name="dc" value="${letter.dc}" id="dcr" /><span class="err"><form:errors path="Letterofprotection.dc"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25" width="160"><span class="err">*</span>Clinic Name:</td>
               <td ><input type="text" class="input_txtbx1" name="clinicname" value="${letter.clinicname}" id="clinicname" /><span class="err"><form:errors path="Letterofprotection.clinicname"></form:errors></td>
             
              </tr>
             </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="160"><span class="err"></span>Address:</td>
              <td><textarea rows="4" cols="28" name="address1">${letter.address1}</textarea><span class="err"><form:errors path="Letterofprotection.address1"></form:errors></span>
            </td></tr>
              </table>
             
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25"  width="160"><span class="err"></span>IN RE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My Client:</td>
               <td ><input type="text" class="input_txtbx1" name="myclient" value="${letter.myclient}" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
             
              </tr>
              <tr>
              <td height="25"  width="160"><span class="err">*</span>Date Of Accident:</td>
               <td ><input type="text" class="input_txtbx1" name="dateofaccident" value="${letter.dateofaccident}"  id="datepicker1" /><span class="err"><form:errors path="Letterofprotection.dateofaccident"></form:errors></td>
             
              </tr>
             </table><br><br>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="70"><span class="err">*</span>Dear Dr</td>
              <td  height="20" ><input type="text" class="input_txtbx1" name="dearsir" value="${letter.dearsir}"  id="dearsir" /><span class="err"><form:errors path="Letterofprotection.dearsir"></form:errors>
           </span></td></tr>	
             </table>
             <table>
             <tr><td><br><br><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	It is my understanding that my above-named client has an outstanding balance with your above clinic for treatment rendered as a result of this accident.
             
             </p>
             </td></tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please let this letter serve as my professional representation that I will pay your clinic's outstanding treatment fee out of and only to the extent of any settlement of judgment proceeds, after deduction of our firm's fees and costs advanced.  
             
             </p>
             </td>
             </tr>
             <tr>
             <td>
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If my client objects to any such payment over to your clinic, in whole or in part, I will hold any disputed amount in our firm's trust account until resolution. </p>
             </td>
             </tr>
             </table>
             <table>
             <tr><td width="450"></td>
             <td ><p><h1> <b>Very truly yours,</b></h1><p></td></tr>
             <tr><td width="450"></td>
            <td ><span class="err">*</span><input type="text" class="input_txtbx1" name="esq" value="${letter.esq}"    id="esq" /><span class="err"><form:errors path="Letterofprotection.esq"></form:errors></td></tr>
            <tr><td width="450"></td><td ><p><h1> <b>	Attorney for above client</b></h1><p></td></tr>
             </table>
             </c:otherwise>
             </c:choose>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save" onclick="return checkSubmit('this');"></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="viewletterofprotection" style="color:white" class="submit_btn">Cancel</a></td>
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